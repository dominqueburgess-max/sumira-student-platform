import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST(req: NextRequest, { params }: { params: Promise<{ lessonId: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { lessonId } = await params;

  await db().sql`
    INSERT INTO lesson_progress (student_id, lesson_id, status, completed_at)
    VALUES (${student.id}, ${Number(lessonId)}, 'completed', NOW())
    ON CONFLICT (student_id, lesson_id)
    DO UPDATE SET status = 'completed', completed_at = NOW()
  `;

  return NextResponse.json({ ok: true });
}
