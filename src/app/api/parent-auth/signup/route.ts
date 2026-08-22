import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { hashParentPassword, createParentSession, setParentSessionCookie, generateVerificationToken } from "@/lib/parentAuth";
import { sendEmail } from "@/lib/email";

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
    const { token, tokenHash } = generateVerificationToken();
    const expiresAt = new Date(Date.now() + 24 * 60 * 60 * 1000);

    const [parent] = await db().sql`
      INSERT INTO parents (email, password_hash, verification_token_hash, verification_expires_at)
      VALUES (${email.toLowerCase()}, ${passwordHash}, ${tokenHash}, ${expiresAt.toISOString()})
      RETURNING id
    `;

    const sessionToken = await createParentSession(parent.id);
    await setParentSessionCookie(sessionToken);

    const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";
    const verifyUrl = `${siteUrl}/api/parent-auth/verify?token=${token}`;

    await sendEmail({
      to: email.toLowerCase(),
      subject: "Verify your Su Mira Learning parent account",
      html: `
        <p>Hi there,</p>
        <p>Thanks for creating a Su Mira Learning parent account. Please confirm your email address to continue:</p>
        <p><a href="${verifyUrl}">Verify my email</a></p>
        <p>This link expires in 24 hours. If you didn't request this, you can ignore this email.</p>
      `,
    });

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: "Something went wrong creating the account." }, { status: 500 });
  }
}
