import { db } from "@/lib/db";
import { loadCrosswalkMap, resolveDisplayStandard, type DisplayStandard } from "@/lib/standardsCrosswalk";

export const STATE_STANDARD_NAMES: Record<string, string> = {
  NC: "the NC Standard Course of Study / NC Early Learning and Development Standards",
  GA: "the Georgia Standards of Excellence (GSE)",
};

// The Tuesday Fall term instruction began (the Monday after Labor Day was
// Sept 7, 2026). This is the one place that date lives -- everything below
// treats "week 1" as the 7-day window starting here, matching the
// course-relative week_number counter set in the weekly_topics_assignments
// migration (1 lesson per subject = 1 week, purely a display/pacing label,
// not a lock). Update this constant if a future school year's start date
// changes.
const SCHOOL_YEAR_START = "2026-09-08";

/** Which week of the term "today" falls in, 1-indexed, never below 1. */
export function expectedWeekNumber(today: Date = new Date()): number {
  const start = new Date(SCHOOL_YEAR_START + "T00:00:00Z");
  const days = Math.floor((today.getTime() - start.getTime()) / (1000 * 60 * 60 * 24));
  return Math.max(1, Math.floor(days / 7) + 1);
}

export type StudentReport = {
  student: {
    id: number;
    first_name: string;
    last_name: string;
    studio: string | null;
    grade_level: string | number | null;
    home_state: string;
  };
  courses: {
    id: number;
    title: string;
    subject: string | null;
    color: string | null;
    total_lessons: number;
    completed_lessons: number;
  }[];
  pacing: {
    courseId: number;
    courseTitle: string;
    subject: string | null;
    color: string | null;
    expectedWeek: number;
    currentWeek: number | null;
    currentLessonTitle: string | null;
    allCompleted: boolean;
    status: "ahead" | "on_pace" | "behind" | "not_started";
    weeksBehind: number;
  }[];
  standards: {
    subject: string | null;
    display: DisplayStandard | null;
  }[];
  standardsLabel: string;
  homeState: string;
  achievements: { id: number; icon: string; title: string }[];
  portfolioItems: { id: number; title: string; description: string | null; media_url: string | null }[];
  submissions: {
    id: number;
    title: string;
    status: string;
    submitted_at: string;
    staff_grade: string | null;
    staff_feedback: string | null;
    course_title: string | null;
    lesson_title: string | null;
  }[];
};

/**
 * Loads everything a parent (or the student) needs to see for one learner:
 * course progress, a live pacing check (are they on the week they should be
 * in each subject, based on lesson completion vs. today's date), standards
 * mastery (state-crosswalked), achievements, self-added portfolio pieces,
 * and reviewed/pending Classwork & Homework submissions. Shared by the
 * student-facing /portfolio page's data needs, the magic-link
 * /parent/[token] view, and the parent-portal dashboard.
 */
export async function getStudentReport(studentId: number): Promise<StudentReport | null> {
  const studentRows = (await db().sql`SELECT * FROM students WHERE id = ${studentId}`) as unknown as StudentReport["student"][];
  if (!studentRows.length) return null;
  const student = studentRows[0];
  const homeState = student.home_state || "NC";

  const courses = (await db().sql`
    SELECT c.id, c.title, c.subject, c.color,
      COUNT(l.id)::int AS total_lessons,
      COUNT(lp.id) FILTER (WHERE lp.status = 'completed')::int AS completed_lessons
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    LEFT JOIN units u ON u.course_id = c.id
    LEFT JOIN lessons l ON l.unit_id = u.id
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${studentId}
    WHERE e.student_id = ${studentId}
    GROUP BY c.id
    ORDER BY c.position
  `) as unknown as StudentReport["courses"];

  // Per enrolled course: the first not-yet-completed lesson in teaching
  // order (or the last lesson, if everything is completed), plus its
  // week_number -- this is "the week the student is actually on" for that
  // subject, to compare against the calendar-based "week they should be on."
  const positionRows = (await db().sql`
    WITH ordered AS (
      SELECT c.id AS course_id, l.id AS lesson_id, l.title, l.week_number,
        COALESCE(lp.status, 'not_started') AS status,
        ROW_NUMBER() OVER (PARTITION BY c.id ORDER BY u.position ASC, l.position ASC) AS rn
      FROM enrollments e
      JOIN courses c ON c.id = e.course_id
      JOIN units u ON u.course_id = c.id
      JOIN lessons l ON l.unit_id = u.id
      LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${studentId}
      WHERE e.student_id = ${studentId}
    ),
    first_incomplete AS (
      SELECT DISTINCT ON (course_id) course_id, lesson_id, title, week_number
      FROM ordered
      WHERE status <> 'completed'
      ORDER BY course_id, rn ASC
    ),
    last_lesson AS (
      SELECT DISTINCT ON (course_id) course_id, lesson_id, title, week_number
      FROM ordered
      ORDER BY course_id, rn DESC
    )
    SELECT ll.course_id,
      COALESCE(fi.title, ll.title) AS current_lesson_title,
      COALESCE(fi.week_number, ll.week_number) AS current_week,
      (fi.course_id IS NULL) AS all_completed
    FROM last_lesson ll
    LEFT JOIN first_incomplete fi ON fi.course_id = ll.course_id
  `) as unknown as { course_id: number; current_lesson_title: string | null; current_week: number | null; all_completed: boolean }[];

  const positionByCourse = new Map(positionRows.map((r) => [r.course_id, r]));
  const expectedWeek = expectedWeekNumber();

  const pacing: StudentReport["pacing"] = courses
    .filter((c) => c.total_lessons > 0)
    .map((c) => {
      const pos = positionByCourse.get(c.id);
      const currentWeek = pos?.current_week ?? null;
      const allCompleted = pos?.all_completed ?? false;
      let status: "ahead" | "on_pace" | "behind" | "not_started" = "not_started";
      let weeksBehind = 0;
      if (currentWeek !== null) {
        if (allCompleted || currentWeek >= expectedWeek) {
          status = currentWeek > expectedWeek || allCompleted ? "ahead" : "on_pace";
        } else {
          status = "behind";
          weeksBehind = expectedWeek - currentWeek;
        }
      }
      return {
        courseId: c.id,
        courseTitle: c.title,
        subject: c.subject,
        color: c.color,
        expectedWeek,
        currentWeek,
        currentLessonTitle: pos?.current_lesson_title ?? null,
        allCompleted,
        status,
        weeksBehind,
      };
    });

  const standardRows = (await db().sql`
    SELECT DISTINCT l.standards_code, l.standards_description, c.subject
    FROM lesson_progress lp
    JOIN lessons l ON l.id = lp.lesson_id
    JOIN units u ON u.id = l.unit_id
    JOIN courses c ON c.id = u.course_id
    WHERE lp.student_id = ${studentId} AND lp.status = 'completed' AND l.standards_code IS NOT NULL
    ORDER BY c.subject, l.standards_code
  `) as unknown as { standards_code: string; standards_description: string | null; subject: string | null }[];

  const crosswalkMap = await loadCrosswalkMap(homeState, standardRows.map((s) => s.standards_code));
  const standards = standardRows.map((s) => ({
    subject: s.subject,
    display: resolveDisplayStandard(homeState, s.standards_code, s.standards_description, crosswalkMap),
  }));
  const standardsLabel =
    STATE_STANDARD_NAMES[homeState] ||
    `${homeState}'s official state standards (where a Georgia-style crosswalk isn't authored yet for a code, the North Carolina standard is shown instead)`;

  const achievements = (await db().sql`
    SELECT id, icon, title FROM achievements WHERE student_id = ${studentId} ORDER BY earned_at
  `) as unknown as StudentReport["achievements"];

  const portfolioItems = (await db().sql`
    SELECT id, title, description, media_url FROM portfolio_items WHERE student_id = ${studentId} ORDER BY created_at DESC LIMIT 12
  `) as unknown as StudentReport["portfolioItems"];

  const submissions = (await db().sql`
    SELECT s.id, s.title, s.status, s.submitted_at, s.staff_grade, s.staff_feedback,
           c.title AS course_title, l.title AS lesson_title
    FROM assignment_submissions s
    LEFT JOIN lessons l ON l.id = s.lesson_id
    LEFT JOIN courses c ON c.id = s.course_id
    WHERE s.student_id = ${studentId}
    ORDER BY s.submitted_at DESC
    LIMIT 20
  `) as unknown as StudentReport["submissions"];

  return { student, courses, pacing, standards, standardsLabel, homeState, achievements, portfolioItems, submissions };
}
