import { NextRequest, NextResponse } from "next/server";
import { getStore } from "@netlify/blobs";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";
import { synthesizeSpeech, stripMarkdownForSpeech } from "@/lib/tts";

export const dynamic = "force-dynamic";

export async function GET(req: NextRequest, { params }: { params: Promise<{ lessonId: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { lessonId } = await params;
  const key = `lesson-${lessonId}.mp3`;
  const store = getStore("lesson-narration");

  const cached = await store.get(key, { type: "arrayBuffer" });
  if (cached) {
    return new NextResponse(cached, { headers: { "Content-Type": "audio/mpeg", "Cache-Control": "public, max-age=31536000" } });
  }

  const rows = await db().sql`SELECT title, content_body FROM lessons WHERE id = ${Number(lessonId)}`;
  if (!rows.length) return NextResponse.json({ error: "Lesson not found." }, { status: 404 });

  const text = `${rows[0].title}. ${stripMarkdownForSpeech(rows[0].content_body)}`;
  const audio = await synthesizeSpeech(text);
  if (!audio) return NextResponse.json({ error: "Narration is not available right now." }, { status: 503 });

  await store.set(key, audio);
  return new NextResponse(audio, { headers: { "Content-Type": "audio/mpeg", "Cache-Control": "public, max-age=31536000" } });
}
