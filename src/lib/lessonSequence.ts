import { db } from "@/lib/db";

export type SequencedLesson = {
  id: number;
  order: number;
  completed: boolean;
  locked: boolean;
};

/**
 * Returns every lesson in a course, in the order students must complete them
 * (unit position, then lesson position), each flagged with whether this
 * student has completed it and whether it's locked (i.e. the previous
 * lesson in the sequence isn't completed yet).
 */
export async function getCourseLessonSequence(courseId: number, studentId: number): Promise<SequencedLesson[]> {
  const rows = (await db().sql`
    SELECT l.id, lp.status AS progress_status
    FROM lessons l
    JOIN units u ON u.id = l.unit_id
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${studentId}
    WHERE u.course_id = ${courseId}
    ORDER BY u.position ASC, l.position ASC
  `) as unknown as { id: number; progress_status: string | null }[];

  let prevCompleted = true;
  return rows.map((r, idx) => {
    const completed = r.progress_status === "completed";
    const locked = !prevCompleted;
    prevCompleted = completed;
    return { id: r.id, order: idx, completed, locked };
  });
}

/** Finds one lesson's sequence entry, plus the course it belongs to. */
export async function getLessonSequenceEntry(lessonId: number, studentId: number): Promise<{ courseId: number; entry: SequencedLesson | null }> {
  const courseRows = (await db().sql`
    SELECT u.course_id AS course_id
    FROM lessons l
    JOIN units u ON u.id = l.unit_id
    WHERE l.id = ${lessonId}
  `) as unknown as { course_id: number }[];
  if (!courseRows.length) return { courseId: -1, entry: null };
  const courseId = courseRows[0].course_id;
  const sequence = await getCourseLessonSequence(courseId, studentId);
  const entry = sequence.find((s) => s.id === lessonId) || null;
  return { courseId, entry };
}
