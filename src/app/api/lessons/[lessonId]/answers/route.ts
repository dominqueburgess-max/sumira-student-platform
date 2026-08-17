import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST(req: NextRequest, { params }: { params: Promise<{ lessonId: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { lessonId } = await params;
  const { answers } = await req.json();
  if (!Array.isArray(answers) || answers.length === 0) {
    return NextResponse.json({ error: "No answers provided." }, { status: 400 });
  }

  const results: { questionId: number; isCorrect: boolean | null }[] = [];

  for (const answer of answers) {
    const questionId = Number(answer.questionId);
    if (!questionId) continue;

    const rows = await db().sql`
      SELECT id, lesson_id, question_type, correct_option_index FROM questions
      WHERE id = ${questionId} AND lesson_id = ${Number(lessonId)}
    `;
    if (!rows.length) continue;
    const question = rows[0];

    let isCorrect: boolean | null = null;
    let selectedOptionIndex: number | null = null;
    let responseText: string | null = null;

    if (question.question_type === "multiple_choice") {
      selectedOptionIndex = typeof answer.selectedOptionIndex === "number" ? answer.selectedOptionIndex : null;
      isCorrect = selectedOptionIndex !== null ? selectedOptionIndex === question.correct_option_index : null;
    } else {
      responseText = typeof answer.responseText === "string" ? answer.responseText.slice(0, 4000) : null;
    }

    await db().sql`
      INSERT INTO question_responses (student_id, question_id, response_text, selected_option_index, is_correct)
      VALUES (${student.id}, ${questionId}, ${responseText}, ${selectedOptionIndex}, ${isCorrect})
      ON CONFLICT (student_id, question_id)
      DO UPDATE SET response_text = ${responseText}, selected_option_index = ${selectedOptionIndex}, is_correct = ${isCorrect}, created_at = NOW()
    `;

    results.push({ questionId, isCorrect });
  }

  return NextResponse.json({ ok: true, results });
}
