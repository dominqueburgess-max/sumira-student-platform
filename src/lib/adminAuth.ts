import crypto from "crypto";
import { cookies } from "next/headers";
import { db } from "./db";

const ADMIN_SESSION_COOKIE = "sumira_admin_session";
const ADMIN_SESSION_DAYS = 14;

function hashToken(token: string): string {
  return crypto.createHash("sha256").update(token).digest("hex");
}

export async function verifyAdminPassword(password: string): Promise<boolean> {
  const expected = process.env.ADMIN_PASSWORD;
  if (!expected) return false;
  return password === expected;
}

export async function createAdminSession(): Promise<string> {
  const token = crypto.randomBytes(32).toString("hex");
  const tokenHash = hashToken(token);
  const expiresAt = new Date(Date.now() + ADMIN_SESSION_DAYS * 24 * 60 * 60 * 1000);

  await db().sql`
    INSERT INTO admin_sessions (token_hash, expires_at)
    VALUES (${tokenHash}, ${expiresAt.toISOString()})
  `;

  return token;
}

export async function setAdminSessionCookie(token: string) {
  const store = await cookies();
  store.set(ADMIN_SESSION_COOKIE, token, {
    httpOnly: true,
    secure: true,
    sameSite: "lax",
    path: "/",
    maxAge: ADMIN_SESSION_DAYS * 24 * 60 * 60,
  });
}

export async function clearAdminSessionCookie() {
  const store = await cookies();
  store.delete(ADMIN_SESSION_COOKIE);
}

export async function isAdminAuthenticated(): Promise<boolean> {
  const store = await cookies();
  const token = store.get(ADMIN_SESSION_COOKIE)?.value;
  if (!token) return false;

  const tokenHash = hashToken(token);
  const rows = await db().sql`
    SELECT id FROM admin_sessions WHERE token_hash = ${tokenHash} AND expires_at > NOW() LIMIT 1
  `;
  return rows.length > 0;
}

export async function destroyAdminSession() {
  const store = await cookies();
  const token = store.get(ADMIN_SESSION_COOKIE)?.value;
  if (token) {
    const tokenHash = hashToken(token);
    await db().sql`DELETE FROM admin_sessions WHERE token_hash = ${tokenHash}`;
  }
  await clearAdminSessionCookie();
}
