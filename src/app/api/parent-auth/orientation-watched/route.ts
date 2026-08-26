import { NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentParent } from "@/lib/parentAuth";

export async function POST() {
  const parent = await getCurrentParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  await db().sql`
    UPDATE parents SET orientation_watched = TRUE, orientation_watched_at = NOW() WHERE id = ${parent.id}
  `;

  return NextResponse.json({ ok: true });
}
