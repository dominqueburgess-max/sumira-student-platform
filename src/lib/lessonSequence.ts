import { db } from "@/lib/db";

export type LockReason = "prior_incomplete" | "calendar" | "daily_cap" | null;

export type SequencedLesson = {
  id: number;
  order: number;
  completed: boolean;
  locked: boolean;
  lockReason: LockReason;
  unlockDate: string | null;
};

/**
 * Returns every lesson in a course, in the order students must complete them
 * (unit position, then lesson position), each flagged with whether this
 * student has completed it and whether/why it's locked:
 *  - prior_incomplete: the previous lesson in the sequence isn't done yet
 *  - calendar: this lesson's scheduled week (per the Fall 2026 pacing
 *    calendar) hasn't arrived yet, even though prior lessons are complete
 *  - daily_cap: the student already used up their new-lesson(s)-per-day
 *    allowance today, so this lesson (though otherwise eligible) waits
 *    until tomorrow -- this is what stops a fast student from blowing
 *    through the whole course in one sitting.
 */
export async function getCourseLessonSequence(courseId: number, studentId: number): Promise<SequencedLesson[]> {
  const rows = (await db().sql`
    SELECT l.id, l.unlock_date, lp.status AS progress_status, lp.completed_at
    FROM lessons l
    JOIN units u ON u.id = l.unit_id
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${studentId}
    WHERE u.course_id = ${courseId}
    ORDER BY u.position ASC, l.position ASC
  `) as unknown as { id: number; unlock_date: string | null; progress_status: string | null; completed_at: string | null }[];

  const studentRows = (await db().sql`
    SELECT daily_lesson_cap FROM students WHERE id = ${studentId}
  `) as unknown as { daily_lesson_cap: number }[];
  const dailyCap = studentRows[0]?.daily_lesson_cap ?? 1;

  // How many lessons (in ANY course) has this student already completed today?
  const todayRows = (await db().sql`
    SELECT COUNT(*)::int AS n
    FROM lesson_progress
    WHERE student_id = ${studentId}
      AND status = 'completed'
      AND completed_at::date = NOW()::date
  `) as unknown as { n: number }[];
  const completedToday = todayRows[0]?.n ?? 0;
  const capReached = completedToday >= dailyCap;

  const todayStr = new Date().toISOString().slice(0, 10);

  let prevCompleted = true;
  return rows.map((r, idx) => {
    const completed = r.progress_status === "completed";
    const unlockDate = r.unlock_date ? String(r.unlock_date).slice(0, 10) : null;

    let locked = false;
    let lockReason: LockReason = null;

    if (!prevCompleted) {
      locked = true;
      lockReason = "prior_incomplete";
    } else if (!completed && unlockDate && unlockDate > todayStr) {
      locked = true;
      lockReason = "calendar";
    } else if (!completed && capReached) {
      locked = true;
      lockReason = "daily_cap";
    }

    prevCompleted = completed;
    return { id: r.id, order: idx, completed, locked, lockReason, unlockDate };
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

/** The active enrichment activity for a unit -- for fast finishers waiting on their next lesson. */
export async function getEnrichmentForUnit(unitId: number) {
  const rows = (await db().sql`
    SELECT id, title, prompt FROM enrichment_activities WHERE unit_id = ${unitId} ORDER BY position ASC LIMIT 1
  `) as unknown as { id: number; title: string; prompt: string }[];
  return rows[0] ?? null;
}
