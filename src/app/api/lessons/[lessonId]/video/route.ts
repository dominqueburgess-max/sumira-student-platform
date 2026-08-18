import { NextRequest, NextResponse } from "next/server";
import { getStore } from "@netlify/blobs";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";
import { synthesizeSpeech, stripMarkdownForSpeech } from "@/lib/tts";
import { promises as fs } from "fs";
import path from "path";
import os from "os";
import { execFile } from "child_process";
import { promisify } from "util";

const execFileAsync = promisify(execFile);
export const dynamic = "force-dynamic";
export const maxDuration = 60;

function escapeDrawtext(text: string): string {
  return text
    .replace(/\\/g, "\\\\\\\\")
    .replace(/:/g, "\\:")
    .replace(/'/g, "’")
    .slice(0, 60);
}

export async function GET(req: NextRequest, { params }: { params: Promise<{ lessonId: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { lessonId } = await params;
  const key = `lesson-${lessonId}.mp4`;
  const store = getStore("lesson-video");

  const cached = await store.get(key, { type: "arrayBuffer" });
  if (cached) {
    return new NextResponse(cached, { headers: { "Content-Type": "video/mp4", "Cache-Control": "public, max-age=31536000" } });
  }

  const rows = await db().sql`SELECT title, content_body FROM lessons WHERE id = ${Number(lessonId)}`;
  if (!rows.length) return NextResponse.json({ error: "Lesson not found." }, { status: 404 });
  const lesson = rows[0];

  const narrationText = `${lesson.title}. ${stripMarkdownForSpeech(lesson.content_body)}`;
  const audioBuffer = await synthesizeSpeech(narrationText);
  if (!audioBuffer) {
    return NextResponse.json({ error: "Narration audio isn't available, so video can't be built right now." }, { status: 503 });
  }

  const workDir = await fs.mkdtemp(path.join(os.tmpdir(), "sumira-video-"));
  const audioPath = path.join(workDir, "audio.mp3");
  const videoPath = path.join(workDir, "output.mp4");

  try {
    await fs.writeFile(audioPath, Buffer.from(audioBuffer));

    const ffmpegPath = (await import("ffmpeg-static")).default as unknown as string;
    const fontPath = path.join(process.cwd(), "src/assets/fraunces-bold.ttf");
    const titleText = escapeDrawtext(lesson.title);

    const drawtext = `drawtext=fontfile='${fontPath}':text='${titleText}':fontcolor=white:fontsize=56:x=(w-text_w)/2:y=(h-text_h)/2`;

    await execFileAsync(
      ffmpegPath,
      [
        "-y",
        "-f", "lavfi", "-i", "color=c=0x3B1F3D:s=1280x720:d=600",
        "-i", audioPath,
        "-vf", drawtext,
        "-c:v", "libx264", "-tune", "stillimage",
        "-c:a", "aac", "-pix_fmt", "yuv420p",
        "-shortest",
        videoPath,
      ],
      { timeout: 45000, maxBuffer: 1024 * 1024 * 20 }
    );

    const videoNodeBuffer = await fs.readFile(videoPath);
    const videoArrayBuffer = videoNodeBuffer.buffer.slice(
      videoNodeBuffer.byteOffset,
      videoNodeBuffer.byteOffset + videoNodeBuffer.byteLength
    ) as ArrayBuffer;
    await store.set(key, videoArrayBuffer);

    return new NextResponse(videoArrayBuffer, { headers: { "Content-Type": "video/mp4", "Cache-Control": "public, max-age=31536000" } });
  } catch (err) {
    console.error("Video generation failed:", err);
    return NextResponse.json({ error: "Video couldn't be generated right now." }, { status: 503 });
  } finally {
    await fs.rm(workDir, { recursive: true, force: true }).catch(() => {});
  }
}
