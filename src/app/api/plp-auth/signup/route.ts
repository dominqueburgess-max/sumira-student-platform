import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { hashPlpPassword, createPlpSession, setPlpSessionCookie, generateVerificationToken } from "@/lib/plpAuth";
import { sendEmail } from "@/lib/email";
import { emailShell, emailHeading, emailButton } from "@/lib/emailTemplates";

export async function POST(req: NextRequest) {
  try {
    const { email, password, first_name, last_name, phone } = await req.json();

    if (!email || !password || !first_name || !last_name) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }
    if (String(password).length < 8) {
      return NextResponse.json({ error: "Password must be at least 8 characters." }, { status: 400 });
    }

    const existing = await db().sql`SELECT id FROM plp_parents WHERE email = ${email.toLowerCase()}`;
    if (existing.length) {
      return NextResponse.json({ error: "An account with this email already exists. Try logging in instead." }, { status: 409 });
    }

    const passwordHash = await hashPlpPassword(password);
    const { token, tokenHash } = generateVerificationToken();
    const expiresAt = new Date(Date.now() + 24 * 60 * 60 * 1000);

    const [parent] = await db().sql`
      INSERT INTO plp_parents (email, password_hash, first_name, last_name, phone, verification_token_hash, verification_expires_at)
      VALUES (${email.toLowerCase()}, ${passwordHash}, ${String(first_name).trim()}, ${String(last_name).trim()}, ${phone || null}, ${tokenHash}, ${expiresAt.toISOString()})
      RETURNING id
    `;

    const sessionToken = await createPlpSession(parent.id);
    await setPlpSessionCookie(sessionToken);

    const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";
    const verifyUrl = `${siteUrl}/api/plp-auth/verify?token=${token}`;

    await sendEmail({
      to: email.toLowerCase(),
      subject: "Verify your Su Mira Learning account",
      html: emailShell(
        `${emailHeading("Welcome to Su Mira Learning")}
        <p>Thanks for starting a Personalized Learning Blueprint account. Please confirm your email address to continue.</p>
        ${emailButton(verifyUrl, "Verify My Email")}
        <p style="font-size:13px; color:#6B6470;">This link expires in 24 hours. If you didn't request this, you can safely ignore this email.</p>`,
        { previewText: "Confirm your email to continue building your Learning Blueprint." }
      ),
    });

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: "Something went wrong creating the account." }, { status: 500 });
  }
}
