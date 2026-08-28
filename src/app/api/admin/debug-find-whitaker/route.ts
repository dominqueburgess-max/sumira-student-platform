import { NextRequest, NextResponse } from "next/server";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";

export async function GET(req: NextRequest) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const q = req.nextUrl.searchParams.get("q") || "whitaker";

  const students = await db().sql`
    SELECT id, first_name, last_name, email, parent_email, parent_id, studio, grade_level
    FROM students WHERE last_name ILIKE ${"%" + q + "%"} OR email ILIKE ${"%" + q + "%"}
  `;
  const parents = await db().sql`
    SELECT id, email, enrollment_completed, created_at
    FROM parents WHERE email ILIKE ${"%" + q + "%"}
  `;
  return NextResponse.json({ students, parents });
}
