import { db } from "@/lib/db";

export type DailyPlanTask = {
  type: "classwork" | "homework";
  assignmentId: number;
  title: string;
};

export type DailyPlanEntry = {
  courseId: number;
  courseSlug: string;
  courseTitle: string;
  subject: string;
  color: string;
  lessonId: number;
  lessonTitle: string;
  weekNumber: number | null;
  /** null means the student has submitted everything currently authored for this course. */
  task: DailyPlanTask | null;
};

type Row = {
  lesson_id: number;
  lesson_title: string;
  week_number: number | null;
  assignment_id: number;
  assignment_type: "classwork" | "homework";
  assignment_title: string;
  submission_id: number | null;
};

/**
 * Builds each enrolled subject's "next thing to do" for a student: the
 * earliest lesson (in course teaching order) that still has an un-submitted
 * Classwork or Homework assignment, preferring Classwork over Homework
 * within that lesson. This is the data behind the dashboard's "Today's
 * Plan" section -- one card per subject, so a student always knows exactly
 * where they left off in Math, ELA, Science, History, etc.
 *
 * Per product decision (Sept 2026): the underlying pace is "one lesson per
 * subject per week" (see week_number / weekly_topics_assignments migration)
 * -- nothing here re-locks content daily. A student who's ahead in one
 * subject and behind in another will simply see different "current lessons"
 * per card, which is the intended self-paced behavior.
 *
 * Only courses that use the Classwork/Homework model (i.e. have
 * lesson_assignments rows) produce an entry -- Wonder Studio (PreK-2),
 * which is videos-only by design, naturally contributes nothing here.
 */
export async function getDailyPlan(studentId: number): Promise<DailyPlanEntry[]> {
  const courses = (await db().sql`
    SELECT DISTINCT c.id, c.slug, c.title, c.subject, c.color
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    JOIN units u ON u.course_id = c.id
    JOIN lessons l ON l.unit_id = u.id
    JOIN lesson_assignments la ON la.lesson_id = l.id
    WHERE e.student_id = ${studentId}
    ORDER BY c.subject ASC, c.title ASC
  `) as unknown as { id: number; slug: string; title: string; subject: string; color: string }[];

  const entries: DailyPlanEntry[] = [];

  for (const course of courses) {
    const rows = (await db().sql`
      SELECT l.id AS lesson_id, l.title AS lesson_title, l.week_number,
        la.id AS assignment_id, la.assignment_type, la.title AS assignment_title,
        s.id AS submission_id
      FROM lessons l
      JOIN units u ON u.id = l.unit_id
      JOIN lesson_assignments la ON la.lesson_id = l.id
      LEFT JOIN assignment_submissions s ON s.assignment_id = la.id AND s.student_id = ${studentId}
      WHERE u.course_id = ${course.id}
      ORDER BY u.position ASC, l.position ASC, la.position ASC, la.id ASC
    `) as unknown as Row[];

    if (!rows.length) continue;

    const lessonOrder: number[] = [];
    const byLesson = new Map<number, { title: string; week: number | null; tasks: Row[] }>();
    for (const r of rows) {
      if (!byLesson.has(r.lesson_id)) {
        lessonOrder.push(r.lesson_id);
        byLesson.set(r.lesson_id, { title: r.lesson_title, week: r.week_number, tasks: [] });
      }
      byLesson.get(r.lesson_id)!.tasks.push(r);
    }

    let picked: DailyPlanEntry | null = null;
    for (const lessonId of lessonOrder) {
      const lesson = byLesson.get(lessonId)!;
      const openClasswork = lesson.tasks.find((t) => t.assignment_type === "classwork" && !t.submission_id);
      const openHomework = lesson.tasks.find((t) => t.assignment_type === "homework" && !t.submission_id);
      const open = openClasswork ?? openHomework;
      if (open) {
        picked = {
          courseId: course.id,
          courseSlug: course.slug,
          courseTitle: course.title,
          subject: course.subject,
          color: course.color,
          lessonId,
          lessonTitle: lesson.title,
          weekNumber: lesson.week,
          task: { type: open.assignment_type, assignmentId: open.assignment_id, title: open.assignment_title },
        };
        break;
      }
    }

    if (!picked) {
      const lastId = lessonOrder[lessonOrder.length - 1];
      const lesson = byLesson.get(lastId)!;
      picked = {
        courseId: course.id,
        courseSlug: course.slug,
        courseTitle: course.title,
        subject: course.subject,
        color: course.color,
        lessonId: lastId,
        lessonTitle: lesson.title,
        weekNumber: lesson.week,
        task: null,
      };
    }

    entries.push(picked);
  }

  return entries;
}
