import { NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentParent, generateVerificationToken } from "@/lib/parentAuth";
import { sendEmail } from "@/lib/email";

export async function POST() {
  const parent = await getCurrentParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }
  if (parent.email_verified) {
    return NextResponse.json({ ok: true });
  }

  const { token, tokenHash } = generateVerificationToken();
  const expiresAt = new Date(Date.now() + 24 * 60 * 60 * 1000);

  await db().sql`
    UPDATE parents SET verification_token_hash = ${tokenHash}, verification_expires_at = ${expiresAt.toISOString()}
    WHERE id = ${parent.id}
  `;

  const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";
  const verifyUrl = `${siteUrl}/api/parent-auth/verify?token=${token}`;

  await sendEmail({
    to: parent.email,
    subject: "Verify your Su Mira Learning parent account",
    html: `
      <p>Hi there,</p>
      <p>Here's your new verification link:</p>
      <p><a href="${verifyUrl}">Verify my email</a></p>
      <p>This link expires in 24 hours.</p>
    `,
  });

  return NextResponse.json({ ok: true });
}
