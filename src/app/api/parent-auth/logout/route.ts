import { NextResponse } from "next/server";
import { destroyParentSession } from "@/lib/parentAuth";

export async function POST() {
  await destroyParentSession();
  return NextResponse.json({ ok: true });
}
