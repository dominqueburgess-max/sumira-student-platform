import bcrypt from "bcryptjs";
import crypto from "crypto";
import { cookies } from "next/headers";
import { db } from "./db";

const PLP_SESSION_COOKIE = "sumira_plp_session";
const PLP_SESSION_DAYS = 30;

export async function hashPlpPassword(password: string): Promise<string> {
  return bcrypt.hash(password, 10);
}

export async function verifyPlpPassword(password: string, hash: string): Promise<boolean> {
  return bcrypt.compare(password, hash);
}

function hashToken(token: string): string {
  return crypto.createHash("sha256").update(token).digest("hex");
}

export async function createPlpSession(plpParentId: number): Promise<string> {
  const token = crypto.randomBytes(32).toString("hex");
  const tokenHash = hashToken(token);
  const expiresAt = new Date(Date.now() + PLP_SESSION_DAYS * 24 * 60 * 60 * 1000);

  await db().sql`
    INSERT INTO plp_parent_sessions (plp_parent_id, token_hash, expires_at)
    VALUES (${plpParentId}, ${tokenHash}, ${expiresAt.toISOString()})
  `;

  return token;
}

export async function setPlpSessionCookie(token: string) {
  const store = await cookies();
  store.set(PLP_SESSION_COOKIE, token, {
    httpOnly: true,
    secure: true,
    sameSite: "lax",
    path: "/",
    maxAge: PLP_SESSION_DAYS * 24 * 60 * 60,
  });
}

export async function clearPlpSessionCookie() {
  const store = await cookies();
  store.delete(PLP_SESSION_COOKIE);
}

export type CurrentPlpParent = {
  id: number;
  email: string;
  first_name: string;
  last_name: string;
  phone: string | null;
  email_verified: boolean;
  stripe_customer_id: string | null;
};

export async function getCurrentPlpParent(): Promise<CurrentPlpParent | null> {
  const store = await cookies();
  const token = store.get(PLP_SESSION_COOKIE)?.value;
  if (!token) return null;

  const tokenHash = hashToken(token);
  const rows = await db().sql`
    SELECT p.id, p.email, p.first_name, p.last_name, p.phone, p.email_verified, p.stripe_customer_id
    FROM plp_parent_sessions ps
    JOIN plp_parents p ON p.id = ps.plp_parent_id
    WHERE ps.token_hash = ${tokenHash} AND ps.expires_at > NOW()
    LIMIT 1
  `;

  if (!rows.length) return null;
  return rows[0] as CurrentPlpParent;
}

export function generateVerificationToken(): { token: string; tokenHash: string } {
  const token = crypto.randomBytes(24).toString("hex");
  return { token, tokenHash: hashToken(token) };
}

export function hashVerificationToken(token: string): string {
  return hashToken(token);
}

export async function destroyPlpSession() {
  const store = await cookies();
  const token = store.get(PLP_SESSION_COOKIE)?.value;
  if (token) {
    const tokenHash = hashToken(token);
    await db().sql`DELETE FROM plp_parent_sessions WHERE token_hash = ${tokenHash}`;
  }
  await clearPlpSessionCookie();
}
