import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { hashParentPassword, createParentSession, setParentSessionCookie } from "@/lib/parentAuth";

export async function POST(req: NextRequest) {
  try {
    const { email, password } = await req.json();

    if (!email || !password) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }
    if (password.length < 8) {
      return NextResponse.json({ error: "Password must be at least 8 characters." }, { status: 400 });
    }

    const existing = await db().sql`SELECT id FROM parents WHERE email = ${email.toLowerCase()}`;
    if (existing.length) {
      return NextResponse.json({ error: "An account with this email already exists." }, { status: 409 });
    }

    const passwordHash = await hashParentPassword(password);
    const [parent] = await db().sql`
      INSERT INTO parents (email, password_hash)
      VALUES (${email.toLowerCase()}, ${passwordHash})
      RETURNING id
    `;

    const token = await createParentSession(parent.id);
    await setParentSessionCookie(token);

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: "Something went wrong creating the account." }, { status: 500 });
  }
}
