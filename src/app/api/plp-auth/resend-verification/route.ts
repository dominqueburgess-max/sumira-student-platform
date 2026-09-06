import { NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentPlpParent, generateVerificationToken } from "@/lib/plpAuth";
import { sendEmail } from "@/lib/email";
import { emailShell, emailHeading, emailButton } from "@/lib/emailTemplates";

export async function POST() {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }
  if (parent.email_verified) {
    return NextResponse.json({ ok: true });
  }

  const { token, tokenHash } = generateVerificationToken();
  const expiresAt = new Date(Date.now() + 24 * 60 * 60 * 1000);

  await db().sql`
    UPDATE plp_parents SET verification_token_hash = ${tokenHash}, verification_expires_at = ${expiresAt.toISOString()}
    WHERE id = ${parent.id}
  `;

  const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";
  const verifyUrl = `${siteUrl}/api/plp-auth/verify?token=${token}`;

  await sendEmail({
    to: parent.email,
    subject: "Verify your Su Mira Learning account",
    html: emailShell(
      `${emailHeading("Here's your new verification link")}
      <p>Confirm your email address to continue.</p>
      ${emailButton(verifyUrl, "Verify My Email")}
      <p style="font-size:13px; color:#6B6470;">This link expires in 24 hours.</p>`,
      { previewText: "Confirm your email to continue." }
    ),
  });

  return NextResponse.json({ ok: true });
}
