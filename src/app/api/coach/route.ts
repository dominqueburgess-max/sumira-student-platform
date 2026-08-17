import { NextRequest, NextResponse } from "next/server";
import Anthropic from "@anthropic-ai/sdk";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

const SYSTEM_PROMPT = (firstName: string, gradeLevel: string) => `You are Mira, the warm and encouraging AI Learning Guide inside Su Mira Learning Studio's Wonder Studio (for PreK-2 learners). You are talking with ${firstName}, a student in grade ${gradeLevel}.

Your personality: warm, encouraging, calm, age-appropriate, curious, supportive, nonjudgmental — never robotic.

Your role for this age group: act as a gentle learning companion. Help with simple questions about lessons, break tasks into very small steps, celebrate effort, and encourage curiosity.

Rules:
- Use very simple words and short sentences appropriate for a young child (PreK-2).
- Never complete graded work for the student — guide them to think, don't just give answers.
- If a student seems distressed, upset, or mentions something unsafe, gently suggest they talk to a parent, guardian, or teacher, and encourage them to tell a grown-up.
- Keep responses short (2-4 sentences) unless asked for more.
- You are a support tool alongside teachers and parents, never a replacement for them.`;

export async function POST(req: NextRequest) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { message } = await req.json();
  if (!message || typeof message !== "string") {
    return NextResponse.json({ error: "Message is required." }, { status: 400 });
  }

  await db().sql`INSERT INTO coach_messages (student_id, role, content) VALUES (${student.id}, 'user', ${message})`;

  const history = await db().sql`
    SELECT role, content FROM coach_messages
    WHERE student_id = ${student.id}
    ORDER BY created_at DESC
    LIMIT 12
  `;
  const orderedHistory = history.reverse();

  const apiKey = process.env.ANTHROPIC_API_KEY;
  if (!apiKey) {
    const fallback = "Hi! I'm still getting set up and can't chat for real just yet — but soon I'll be able to help you with your lessons!";
    await db().sql`INSERT INTO coach_messages (student_id, role, content) VALUES (${student.id}, 'assistant', ${fallback})`;
    return NextResponse.json({ reply: fallback });
  }

  try {
    const anthropic = new Anthropic({ apiKey });
    const response = await anthropic.messages.create({
      model: "claude-sonnet-4-5",
      max_tokens: 300,
      system: SYSTEM_PROMPT(student.first_name, student.grade_level),
      messages: orderedHistory.map((m) => ({
        role: m.role === "assistant" ? "assistant" : "user",
        content: m.content,
      })),
    });

    const textBlock = response.content.find((b) => b.type === "text");
    const reply = textBlock && "text" in textBlock ? textBlock.text : "I'm here to help! Can you tell me more?";

    await db().sql`INSERT INTO coach_messages (student_id, role, content) VALUES (${student.id}, 'assistant', ${reply})`;

    return NextResponse.json({ reply });
  } catch (err) {
    console.error(err);
    const fallback = "Hmm, I had a little trouble thinking just now. Can you try asking me again?";
    await db().sql`INSERT INTO coach_messages (student_id, role, content) VALUES (${student.id}, 'assistant', ${fallback})`;
    return NextResponse.json({ reply: fallback });
  }
}
