import { NextRequest, NextResponse } from "next/server";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";

const VALID_STATES = new Set([
  "AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA",
  "ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK",
  "OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
]);

export async function POST(req: NextRequest, { params }: { params: Promise<{ studentId: string }> }) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const { studentId } = await params;
  const id = Number(studentId);
  if (!id || Number.isNaN(id)) return NextResponse.json({ error: "Missing student." }, { status: 400 });

  const body = await req.json().catch(() => ({}));
  const homeState = String(body.homeState || "").trim().toUpperCase();
  if (!VALID_STATES.has(homeState)) {
    return NextResponse.json({ error: "Not a valid US state code." }, { status: 400 });
  }

  const existing = await db().sql`SELECT id FROM students WHERE id = ${id}`;
  if (existing.length === 0) return NextResponse.json({ error: "Student not found." }, { status: 404 });

  await db().sql`UPDATE students SET home_state = ${homeState} WHERE id = ${id}`;

  return NextResponse.json({ ok: true, homeState });
}
