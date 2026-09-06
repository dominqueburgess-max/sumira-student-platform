import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentPlpParent } from "@/lib/plpAuth";

export async function GET(req: NextRequest) {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  const sessionId = req.nextUrl.searchParams.get("session_id");
  if (!sessionId) {
    return NextResponse.json({ error: "Missing session_id." }, { status: 400 });
  }

  const rows = await db().sql`
    SELECT id, status FROM plp_plans WHERE stripe_checkout_session_id = ${sessionId} AND plp_parent_id = ${parent.id}
  `;
  if (!rows.length) {
    return NextResponse.json({ error: "Plan not found." }, { status: 404 });
  }

  return NextResponse.json({ ok: true, planId: rows[0].id, status: rows[0].status });
}
