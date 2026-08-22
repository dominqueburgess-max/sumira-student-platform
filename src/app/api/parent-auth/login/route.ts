import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { verifyParentPassword, createParentSession, setParentSessionCookie } from "@/lib/parentAuth";

export async function POST(req: NextRequest) {
  try {
    const { email, password } = await req.json();
    if (!email || !password) {
      return NextResponse.json({ error: "Missing email or password." }, { status: 400 });
    }

    const rows = await db().sql`SELECT id, password_hash FROM parents WHERE email = ${email.toLowerCase()}`;
    if (!rows.length) {
      return NextResponse.json({ error: "Incorrect email or password." }, { status: 401 });
    }

    const valid = await verifyParentPassword(password, rows[0].password_hash);
    if (!valid) {
      return NextResponse.json({ error: "Incorrect email or password." }, { status: 401 });
    }

    const token = await createParentSession(rows[0].id);
    await setParentSessionCookie(token);

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: "Something went wrong logging in." }, { status: 500 });
  }
}
