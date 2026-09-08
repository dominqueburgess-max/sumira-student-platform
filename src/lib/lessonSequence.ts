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
 * student has completed it.
 *
 * All lesson locking has been disabled (Sept 2026, per explicit request --
 * both the prior calendar-cadence lock and the older daily-completion-cap
 * lock caused students to get stuck out of lessons). Every lesson in every
 * course is always unlocked; `locked`/`lockReason` are kept on the type for
 * backward compatibility with callers but are always false/null.
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

  return rows.map((r, idx) => {
    const completed = r.progress_status === "completed";
    const unlockDate = r.unlock_date ? String(r.unlock_date).slice(0, 10) : null;
    return { id: r.id, order: idx, completed, locked: false, lockReason: null, unlockDate };
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
