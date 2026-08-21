import { NextRequest, NextResponse } from "next/server";
import { verifyAdminPassword, createAdminSession, setAdminSessionCookie } from "@/lib/adminAuth";

export async function POST(req: NextRequest) {
  const { password } = await req.json();
  if (!password || !(await verifyAdminPassword(password))) {
    return NextResponse.json({ error: "Incorrect password." }, { status: 401 });
  }
  const token = await createAdminSession();
  await setAdminSessionCookie(token);
  return NextResponse.json({ ok: true });
}
