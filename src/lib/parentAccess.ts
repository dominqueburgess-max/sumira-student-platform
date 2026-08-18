import crypto from "crypto";
import { db } from "@/lib/db";

export async function getOrCreateParentToken(studentId: number): Promise<string> {
  const existing = await db().sql`SELECT token FROM parent_access_tokens WHERE student_id = ${studentId}`;
  if (existing.length) return existing[0].token;

  const token = crypto.randomBytes(24).toString("hex");
  await db().sql`
    INSERT INTO parent_access_tokens (student_id, token) VALUES (${studentId}, ${token})
    ON CONFLICT (student_id) DO UPDATE SET token = parent_access_tokens.token
    RETURNING token
  `;
  return token;
}
