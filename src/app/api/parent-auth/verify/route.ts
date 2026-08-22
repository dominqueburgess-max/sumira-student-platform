import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { hashVerificationToken } from "@/lib/parentAuth";

export async function GET(req: NextRequest) {
  const token = req.nextUrl.searchParams.get("token");
  const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";

  if (!token) {
    return NextResponse.redirect(`${siteUrl}/parent-portal/verify-email?error=missing`);
  }

  const tokenHash = hashVerificationToken(token);
  const rows = await db().sql`
    SELECT id FROM parents
    WHERE verification_token_hash = ${tokenHash} AND verification_expires_at > NOW()
    LIMIT 1
  `;

  if (!rows.length) {
    return NextResponse.redirect(`${siteUrl}/parent-portal/verify-email?error=expired`);
  }

  await db().sql`
    UPDATE parents
    SET email_verified = TRUE, verification_token_hash = NULL, verification_expires_at = NULL
    WHERE id = ${rows[0].id}
  `;

  return NextResponse.redirect(`${siteUrl}/parent-portal`);
}
