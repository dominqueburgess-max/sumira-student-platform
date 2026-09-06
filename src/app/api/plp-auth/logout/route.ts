import { NextResponse } from "next/server";
import { destroyPlpSession } from "@/lib/plpAuth";

export async function POST() {
  await destroyPlpSession();
  return NextResponse.json({ ok: true });
}
