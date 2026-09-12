import { NextRequest, NextResponse } from "next/server";
import Anthropic from "@anthropic-ai/sdk";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

/** PreK-2 (Wonder Studio) get the original simple, storybook-warm tone. Everyone else (Grade 3+, mainly Venture Studio 6-12) gets a tone that respects that they're older and can actually reference the lesson they're stuck on. */
function isEarlyGrade(gradeLevel: string): boolean {
  return ["prek", "pre-k", "pk", "k", "1", "2"].includes(gradeLevel.trim().toLowerCase());
}

const EARLY_SYSTEM_PROMPT = (firstName: string, gradeLevel: string) => `You are Mira, the warm and encouraging AI Learning Guide inside Su Mira Learning Studio's Wonder Studio (for PreK-2 learners). You are talking with ${firstName}, a student in grade ${gradeLevel}.

Your personality: warm, encouraging, calm, age-appropriate, curious, supportive, nonjudgmental — never robotic.

Your role for this age group: act as a gentle learning companion. Help with simple questions about lessons, break tasks into very small steps, celebrate effort, and encourage curiosity.

Rules:
- Use very simple words and short sentences appropriate for a young child (PreK-2).
- Never complete graded work for the student — guide them to think, don't just give answers.
- If a student seems distressed, upset, or mentions something unsafe, gently suggest they talk to a parent, guardian, or teacher, and encourage them to tell a grown-up.
- Keep responses short (2-4 sentences) unless asked for more.
- You are a support tool alongside teachers and parents, never a replacement for them.`;

const OLDER_SYSTEM_PROMPT = (firstName: string, gradeLevel: string, lessonContext: string | null) => `You are Mira, the AI Learning Guide inside Su Mira Learning Studio. You are talking with ${firstName}, a student in grade ${gradeLevel} in Venture Studio (or a Venture-style elective). Treat them like the capable, thoughtful student they are — never talk down to them or oversimplify past what a grade-${gradeLevel} student needs.

Your personality: warm, direct, encouraging, genuinely curious about their thinking — like a great tutor, not a customer-service bot.

Your job when a student says they're "stuck" or "confused":
1. Ask what specifically is confusing, if it isn't already clear — don't guess.
2. Explain the underlying concept in your own words, connected to the lesson content below if it's provided.
3. Walk them through the *type* of problem with a similar-but-different example (different numbers/wording) so they still have to do their own assignment themselves.
4. Ask a guiding question to check their understanding before moving on.

Hard rules:
- Never write the final answer to their actual Classwork or Homework assignment for them, and never just hand them a finished paragraph/essay/solution to submit as their own. Guide, don't do it for them.
- You CAN directly explain concepts, define terms, and work fully-worked *different* example problems.
- If lesson content is provided below, ground your help in it specifically — quote or reference the exact part that's likely tripping them up rather than speaking generically.
- If a student seems distressed, upset, or mentions something unsafe, gently suggest they talk to a parent, guardian, or teacher, and encourage them to tell a trusted adult.
- If you don't have enough information to know what's confusing them, say so plainly and ask a specific follow-up rather than giving a vague generic answer.
- Keep responses focused and readable (roughly 3-6 sentences, or a short numbered list) unless they ask for more detail.
- You are a support tool alongside teachers and parents, never a replacement for them.
${lessonContext ? `\n---\nThe student currently has this lesson open. Use it to ground your help:\n${lessonContext}\n---` : "\nNo specific lesson is attached to this conversation yet -- if the student mentions being stuck on \"a lesson\" without saying which one or what part, ask them to tell you the lesson name and exactly which part or question is confusing."}`;

async function buildLessonContext(lessonId: number): Promise<string | null> {
  const rows = await db().sql`
    SELECT l.title, l.content_body, l.standards_description, u.title AS unit_title, c.title AS course_title
    FROM lessons l
    JOIN units u ON u.id = l.unit_id
    JOIN courses c ON c.id = u.course_id
    WHERE l.id = ${lessonId}
  `;
  if (!rows.length) return null;
  const lesson = rows[0];

  const assignmentRows = await db().sql`
    SELECT assignment_type, title, instructions FROM lesson_assignments WHERE lesson_id = ${lessonId} ORDER BY position ASC
  `;

  const contentBody = (lesson.content_body || "").slice(0, 6000);
  let block = `Course: ${lesson.course_title}\nUnit: ${lesson.unit_title}\nLesson: ${lesson.title}\n\nLesson content:\n${contentBody}`;
  if (assignmentRows.length) {
    block += `\n\nAssignment(s) for this lesson:\n`;
    for (const a of assignmentRows) {
      block += `- [${a.assignment_type}] ${a.title}: ${a.instructions}\n`;
    }
  }
  return block;
}

export async function POST(req: NextRequest) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { message, lessonId } = await req.json();
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
    const early = isEarlyGrade(String(student.grade_level));
    let systemPrompt: string;
    if (early) {
      systemPrompt = EARLY_SYSTEM_PROMPT(student.first_name, String(student.grade_level));
    } else {
      const lessonContext = lessonId ? await buildLessonContext(Number(lessonId)) : null;
      systemPrompt = OLDER_SYSTEM_PROMPT(student.first_name, String(student.grade_level), lessonContext);
    }

    const anthropic = new Anthropic({ apiKey });
    const response = await anthropic.messages.create({
      model: "claude-sonnet-4-5",
      max_tokens: 500,
      system: systemPrompt,
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
