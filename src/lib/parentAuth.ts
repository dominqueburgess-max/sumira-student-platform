import bcrypt from "bcryptjs";
import crypto from "crypto";
import { cookies } from "next/headers";
import { db } from "./db";

const PARENT_SESSION_COOKIE = "sumira_parent_session";
const PARENT_SESSION_DAYS = 30;

export async function hashParentPassword(password: string): Promise<string> {
  return bcrypt.hash(password, 10);
}

export async function verifyParentPassword(password: string, hash: string): Promise<boolean> {
  return bcrypt.compare(password, hash);
}

function hashToken(token: string): string {
  return crypto.createHash("sha256").update(token).digest("hex");
}

export async function createParentSession(parentId: number): Promise<string> {
  const token = crypto.randomBytes(32).toString("hex");
  const tokenHash = hashToken(token);
  const expiresAt = new Date(Date.now() + PARENT_SESSION_DAYS * 24 * 60 * 60 * 1000);

  await db().sql`
    INSERT INTO parent_sessions (parent_id, token_hash, expires_at)
    VALUES (${parentId}, ${tokenHash}, ${expiresAt.toISOString()})
  `;

  return token;
}

export async function setParentSessionCookie(token: string) {
  const store = await cookies();
  store.set(PARENT_SESSION_COOKIE, token, {
    httpOnly: true,
    secure: true,
    sameSite: "lax",
    path: "/",
    maxAge: PARENT_SESSION_DAYS * 24 * 60 * 60,
  });
}

export async function clearParentSessionCookie() {
  const store = await cookies();
  store.delete(PARENT_SESSION_COOKIE);
}

export type CurrentParent = {
  id: number;
  email: string;
  enrollment_completed: boolean;
};

export async function getCurrentParent(): Promise<CurrentParent | null> {
  const store = await cookies();
  const token = store.get(PARENT_SESSION_COOKIE)?.value;
  if (!token) return null;

  const tokenHash = hashToken(token);
  const rows = await db().sql`
    SELECT p.id, p.email, p.enrollment_completed
    FROM parent_sessions ps
    JOIN parents p ON p.id = ps.parent_id
    WHERE ps.token_hash = ${tokenHash} AND ps.expires_at > NOW()
    LIMIT 1
  `;

  if (!rows.length) return null;
  return rows[0] as CurrentParent;
}

export async function destroyParentSession() {
  const store = await cookies();
  const token = store.get(PARENT_SESSION_COOKIE)?.value;
  if (token) {
    const tokenHash = hashToken(token);
    await db().sql`DELETE FROM parent_sessions WHERE token_hash = ${tokenHash}`;
  }
  await clearParentSessionCookie();
}
