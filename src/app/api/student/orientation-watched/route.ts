import { NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST() {
  const student = await getCurrentStudent();
  if (!student) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  await db().sql`
    UPDATE students SET orientation_watched = TRUE, orientation_watched_at = NOW() WHERE id = ${student.id}
  `;

  return NextResponse.json({ ok: true });
}
