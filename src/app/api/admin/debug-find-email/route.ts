import { NextRequest, NextResponse } from "next/server";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";

export async function GET(req: NextRequest) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const email = req.nextUrl.searchParams.get("email");
  if (!email) return NextResponse.json({ error: "Provide ?email=" }, { status: 400 });

  const rows = await db().sql`
    SELECT id, first_name, last_name, email, studio, grade_level, parent_id, created_at
    FROM students WHERE email ILIKE ${"%" + email + "%"}
  `;
  return NextResponse.json({ rows });
}
