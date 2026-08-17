import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { hashPassword, createSession, setSessionCookie } from "@/lib/auth";

export async function POST(req: NextRequest) {
  try {
    const { firstName, lastName, email, password, studio, gradeLevel, parentEmail } = await req.json();

    if (!firstName || !lastName || !email || !password) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }
    if (password.length < 8) {
      return NextResponse.json({ error: "Password must be at least 8 characters." }, { status: 400 });
    }

    const existing = await db().sql`SELECT id FROM students WHERE email = ${email.toLowerCase()}`;
    if (existing.length) {
      return NextResponse.json({ error: "An account with this email already exists." }, { status: 409 });
    }

    const passwordHash = await hashPassword(password);
    const colors = ["terracotta", "sage", "amber", "plum"];
    const avatarColor = colors[Math.floor(Math.random() * colors.length)];

    const [student] = await db().sql`
      INSERT INTO students (first_name, last_name, email, password_hash, studio, grade_level, parent_email, avatar_color)
      VALUES (${firstName}, ${lastName}, ${email.toLowerCase()}, ${passwordHash}, ${studio || "wonder"}, ${gradeLevel || "K"}, ${parentEmail || null}, ${avatarColor})
      RETURNING id
    `;

    const token = await createSession(student.id);
    await setSessionCookie(token);

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: "Something went wrong creating the account." }, { status: 500 });
  }
}
