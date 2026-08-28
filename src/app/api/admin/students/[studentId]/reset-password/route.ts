import { NextRequest, NextResponse } from "next/server";
import crypto from "crypto";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { hashPassword } from "@/lib/auth";
import { db } from "@/lib/db";

const WORDS = ["Sunny", "Bright", "Bold", "Rising", "Swift", "Golden", "Brave", "Clever", "Cosmic", "Vivid"];

function generateTempPassword(): string {
  const word = WORDS[crypto.randomInt(0, WORDS.length)];
  const num = crypto.randomInt(1000, 9999);
  return `${word}${num}!`;
}

export async function POST(req: NextRequest, { params }: { params: Promise<{ studentId: string }> }) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const { studentId } = await params;
  const id = Number(studentId);
  if (!id || Number.isNaN(id)) return NextResponse.json({ error: "Missing student." }, { status: 400 });

  const rows = await db().sql`SELECT id, email FROM students WHERE id = ${id}`;
  if (rows.length === 0) return NextResponse.json({ error: "Student not found." }, { status: 404 });
  const student = rows[0] as { id: number; email: string };

  const tempPassword = generateTempPassword();
  const hash = await hashPassword(tempPassword);

  await db().sql`UPDATE students SET password_hash = ${hash} WHERE id = ${id}`;
  // Invalidate any existing sessions so the old password can't keep a stale login alive.
  await db().sql`DELETE FROM sessions WHERE student_id = ${id}`;

  return NextResponse.json({ ok: true, email: student.email, tempPassword });
}
