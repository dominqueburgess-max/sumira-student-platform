import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { isAdminAuthenticated } from "@/lib/adminAuth";

export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const { id } = await params;
  const { action, grade, feedback } = await req.json();

  if (action !== "release" && action !== "revision") {
    return NextResponse.json({ error: "Invalid action." }, { status: 400 });
  }

  const status = action === "release" ? "released" : "needs_revision";

  await db().sql`
    UPDATE assignment_submissions
    SET status = ${status}, staff_grade = ${grade || null}, staff_feedback = ${feedback || null},
        reviewed_by = 'Admin', reviewed_at = NOW(), updated_at = NOW()
    WHERE id = ${Number(id)}
  `;

  return NextResponse.json({ ok: true });
}
