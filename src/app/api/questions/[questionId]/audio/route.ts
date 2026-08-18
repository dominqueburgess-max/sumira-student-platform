import { NextRequest, NextResponse } from "next/server";
import { getStore } from "@netlify/blobs";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";
import { synthesizeSpeech } from "@/lib/tts";

export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, { params }: { params: Promise<{ questionId: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { questionId } = await params;
  const key = `question-${questionId}.mp3`;
  const store = getStore("lesson-narration");

  const cached = await store.get(key, { type: "arrayBuffer" });
  if (cached) {
    return new NextResponse(cached, { headers: { "Content-Type": "audio/mpeg", "Cache-Control": "public, max-age=31536000" } });
  }

  const rows = await db().sql`SELECT question_type, prompt, options FROM questions WHERE id = ${Number(questionId)}`;
  if (!rows.length) return NextResponse.json({ error: "Question not found." }, { status: 404 });

  const q = rows[0];
  let text = q.prompt;
  if (q.question_type === "multiple_choice" && q.options) {
    const opts: string[] = q.options;
    text += ". Is it " + opts.map((o, i) => (i === opts.length - 1 ? `or ${o}` : o)).join(", ") + "?";
  }

  const audio = await synthesizeSpeech(text);
  if (!audio) return NextResponse.json({ error: "Narration is not available right now." }, { status: 503 });

  await store.set(key, audio);
  return new NextResponse(audio, { headers: { "Content-Type": "audio/mpeg", "Cache-Control": "public, max-age=31536000" } });
}
