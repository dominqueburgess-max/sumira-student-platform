import { NextRequest, NextResponse } from "next/server";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";

export async function POST(req: NextRequest) {
  const authed = await isAdminAuthenticated();
  if (!authed) {
    return NextResponse.json({ error: "Not authorized." }, { status: 401 });
  }

  const body = await req.json();
  const studentId = Number(body.studentId);
  const courseIds: number[] = Array.isArray(body.courseIds) ? body.courseIds.map(Number) : [];

  if (!studentId || Number.isNaN(studentId)) {
    return NextResponse.json({ error: "Missing student." }, { status: 400 });
  }

  const studentRows = await db().sql`SELECT id FROM students WHERE id = ${studentId} AND studio = 'venture'`;
  if (studentRows.length === 0) {
    return NextResponse.json({ error: "Student not found." }, { status: 404 });
  }

  // Only touch this student's Venture Studio enrollments — never their
  // live class enrollments or any other studio's courses.
  await db().sql`
    DELETE FROM enrollments
    WHERE student_id = ${studentId}
      AND course_id IN (SELECT id FROM courses WHERE studio = 'venture')
  `;

  for (const courseId of courseIds) {
    if (!courseId || Number.isNaN(courseId)) continue;
    await db().sql`
      INSERT INTO enrollments (student_id, course_id)
      SELECT ${studentId}, ${courseId}
      WHERE EXISTS (SELECT 1 FROM courses WHERE id = ${courseId} AND studio = 'venture')
      ON CONFLICT DO NOTHING
    `;
  }

  return NextResponse.json({ ok: true });
}
