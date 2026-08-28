import { NextRequest, NextResponse } from "next/server";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";

export async function POST(req: NextRequest, { params }: { params: Promise<{ studentId: string }> }) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const { studentId } = await params;
  const id = Number(studentId);
  if (!id || Number.isNaN(id)) return NextResponse.json({ error: "Missing student." }, { status: 400 });

  const body = await req.json().catch(() => ({}));
  const email = String(body.email || "").trim().toLowerCase();
  if (!email || !email.includes("@")) {
    return NextResponse.json({ error: "Enter a valid email address." }, { status: 400 });
  }

  const existing = await db().sql`SELECT id FROM students WHERE id = ${id}`;
  if (existing.length === 0) return NextResponse.json({ error: "Student not found." }, { status: 404 });

  const taken = await db().sql`SELECT id FROM students WHERE email = ${email} AND id != ${id}`;
  if (taken.length > 0) {
    return NextResponse.json({ error: "That email is already used by another student login." }, { status: 409 });
  }

  await db().sql`UPDATE students SET email = ${email} WHERE id = ${id}`;
  // Invalidate existing sessions so nothing is left half-signed-in under the old email.
  await db().sql`DELETE FROM sessions WHERE student_id = ${id}`;

  return NextResponse.json({ ok: true, email });
}
