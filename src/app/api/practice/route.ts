import { NextRequest, NextResponse } from "next/server";
import Anthropic from "@anthropic-ai/sdk";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST(req: NextRequest) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { questionId } = await req.json();
  if (!questionId) return NextResponse.json({ error: "questionId is required." }, { status: 400 });

  const rows = await db().sql`
    SELECT q.prompt, q.options, q.correct_option_index, l.title AS lesson_title, l.standards_description
    FROM questions q
    JOIN lessons l ON l.id = q.lesson_id
    WHERE q.id = ${Number(questionId)}
  `;
  if (!rows.length) return NextResponse.json({ error: "Question not found." }, { status: 404 });
  const q = rows[0];
  const correctAnswer = q.options ? q.options[q.correct_option_index] : null;

  const apiKey = process.env.ANTHROPIC_API_KEY;
  if (!apiKey) {
    return NextResponse.json({ error: "Practice isn't available right now." }, { status: 503 });
  }

  const prompt = `A student in grade ${student.grade_level} just missed this question from the lesson "${q.lesson_title}" (skill: ${q.standards_description || "n/a"}):

Question: ${q.prompt}
Options: ${(q.options || []).join(", ")}
Correct answer: ${correctAnswer}

Write ONE short, warm, age-appropriate (grade ${student.grade_level}) explanation of the concept in 1-2 simple sentences, then create ONE new multiple-choice practice question testing the exact same skill (not the same numbers/words) with exactly 3 answer options.

Respond with ONLY valid JSON, no other text, in this exact shape:
{"explanation": "...", "question": "...", "options": ["...", "...", "..."], "correctIndex": 0}`;

  try {
    const anthropic = new Anthropic({ apiKey });
    const response = await anthropic.messages.create({
      model: "claude-sonnet-4-5",
      max_tokens: 400,
      messages: [{ role: "user", content: prompt }],
    });

    const textBlock = response.content.find((b) => b.type === "text");
    const raw = textBlock && "text" in textBlock ? textBlock.text : "";
    const jsonMatch = raw.match(/\{[\s\S]*\}/);
    if (!jsonMatch) throw new Error("No JSON found in response");

    const parsed = JSON.parse(jsonMatch[0]);
    if (!parsed.question || !Array.isArray(parsed.options) || typeof parsed.correctIndex !== "number") {
      throw new Error("Malformed practice question");
    }

    return NextResponse.json(parsed);
  } catch (err) {
    console.error("Practice generation failed:", err);
    return NextResponse.json({ error: "Mira couldn't come up with a practice question just now. Try again in a moment." }, { status: 503 });
  }
}
