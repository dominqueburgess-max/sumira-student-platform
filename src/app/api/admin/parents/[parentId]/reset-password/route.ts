import { NextRequest, NextResponse } from "next/server";
import crypto from "crypto";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { hashParentPassword } from "@/lib/parentAuth";
import { db } from "@/lib/db";

const WORDS = ["Sunny", "Bright", "Bold", "Rising", "Swift", "Golden", "Brave", "Clever", "Cosmic", "Vivid"];

function generateTempPassword(): string {
  const word = WORDS[crypto.randomInt(0, WORDS.length)];
  const num = crypto.randomInt(1000, 9999);
  return `${word}${num}!`;
}

export async function POST(req: NextRequest, { params }: { params: Promise<{ parentId: string }> }) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const { parentId } = await params;
  const id = Number(parentId);
  if (!id || Number.isNaN(id)) return NextResponse.json({ error: "Missing parent." }, { status: 400 });

  const rows = await db().sql`SELECT id, email FROM parents WHERE id = ${id}`;
  if (rows.length === 0) return NextResponse.json({ error: "Parent not found." }, { status: 404 });
  const parent = rows[0] as { id: number; email: string };

  const tempPassword = generateTempPassword();
  const hash = await hashParentPassword(tempPassword);

  await db().sql`UPDATE parents SET password_hash = ${hash} WHERE id = ${id}`;
  await db().sql`DELETE FROM parent_sessions WHERE parent_id = ${id}`;

  return NextResponse.json({ ok: true, email: parent.email, tempPassword });
}
