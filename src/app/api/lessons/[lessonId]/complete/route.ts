import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";
import { getLessonSequenceEntry } from "@/lib/lessonSequence";

export async function POST(req: NextRequest, { params }: { params: Promise<{ lessonId: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { lessonId } = await params;
  const id = Number(lessonId);

  // Sequential gating: the previous lesson in this course must already be completed.
  const { entry } = await getLessonSequenceEntry(id, student.id);
  if (!entry) {
    return NextResponse.json({ error: "Lesson not found." }, { status: 404 });
  }
  if (entry.locked) {
    return NextResponse.json({ error: "Complete the previous lesson first before moving on." }, { status: 403 });
  }

  // Require every question on this lesson to have a submitted answer.
  const counts = (await db().sql`
    SELECT
      (SELECT COUNT(*)::int FROM questions WHERE lesson_id = ${id}) AS total,
      (SELECT COUNT(*)::int FROM question_responses qr JOIN questions q ON q.id = qr.question_id
        WHERE q.lesson_id = ${id} AND qr.student_id = ${student.id}) AS answered
  `) as unknown as { total: number; answered: number }[];
  const { total, answered } = counts[0];

  if (total > 0 && answered < total) {
    return NextResponse.json(
      { error: `Please answer all ${total} question${total === 1 ? "" : "s"} before marking this lesson complete. You've answered ${answered} so far.` },
      { status: 400 }
    );
  }

  await db().sql`
    INSERT INTO lesson_progress (student_id, lesson_id, status, completed_at)
    VALUES (${student.id}, ${id}, 'completed', NOW())
    ON CONFLICT (student_id, lesson_id)
    DO UPDATE SET status = 'completed', completed_at = NOW()
  `;

  return NextResponse.json({ ok: true });
}
