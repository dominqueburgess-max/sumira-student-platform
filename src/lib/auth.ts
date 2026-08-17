import bcrypt from "bcryptjs";
import crypto from "crypto";
import { cookies } from "next/headers";
import { db } from "./db";

const SESSION_COOKIE = "sumira_session";
const SESSION_DAYS = 30;

export async function hashPassword(password: string): Promise<string> {
  return bcrypt.hash(password, 10);
}

export async function verifyPassword(password: string, hash: string): Promise<boolean> {
  return bcrypt.compare(password, hash);
}

function hashToken(token: string): string {
  return crypto.createHash("sha256").update(token).digest("hex");
}

export async function createSession(studentId: number): Promise<string> {
  const token = crypto.randomBytes(32).toString("hex");
  const tokenHash = hashToken(token);
  const expiresAt = new Date(Date.now() + SESSION_DAYS * 24 * 60 * 60 * 1000);

  await db().sql`
    INSERT INTO sessions (student_id, token_hash, expires_at)
    VALUES (${studentId}, ${tokenHash}, ${expiresAt.toISOString()})
  `;

  return token;
}

export async function setSessionCookie(token: string) {
  const store = await cookies();
  store.set(SESSION_COOKIE, token, {
    httpOnly: true,
    secure: true,
    sameSite: "lax",
    path: "/",
    maxAge: SESSION_DAYS * 24 * 60 * 60,
  });
}

export async function clearSessionCookie() {
  const store = await cookies();
  store.delete(SESSION_COOKIE);
}

export type CurrentStudent = {
  id: number;
  first_name: string;
  last_name: string;
  email: string;
  studio: string;
  grade_level: string;
  avatar_color: string;
};

export async function getCurrentStudent(): Promise<CurrentStudent | null> {
  const store = await cookies();
  const token = store.get(SESSION_COOKIE)?.value;
  if (!token) return null;

  const tokenHash = hashToken(token);
  const rows = await db().sql`
    SELECT s.id, s.first_name, s.last_name, s.email, s.studio, s.grade_level, s.avatar_color
    FROM sessions se
    JOIN students s ON s.id = se.student_id
    WHERE se.token_hash = ${tokenHash} AND se.expires_at > NOW()
    LIMIT 1
  `;

  if (!rows.length) return null;
  return rows[0] as CurrentStudent;
}

export async function destroyCurrentSession() {
  const store = await cookies();
  const token = store.get(SESSION_COOKIE)?.value;
  if (token) {
    const tokenHash = hashToken(token);
    await db().sql`DELETE FROM sessions WHERE token_hash = ${tokenHash}`;
  }
  await clearSessionCookie();
}
