import { NextRequest, NextResponse } from "next/server";
import { verifyAdminCredentials, createAdminSession, setAdminSessionCookie } from "@/lib/adminAuth";

export async function POST(req: NextRequest) {
  const { email, password } = await req.json();
  if (!email || !password) {
    return NextResponse.json({ error: "Enter your email and password." }, { status: 400 });
  }
  const admin = await verifyAdminCredentials(email, password);
  if (!admin) {
    return NextResponse.json({ error: "Incorrect email or password." }, { status: 401 });
  }
  const token = await createAdminSession(admin.id);
  await setAdminSessionCookie(token);
  return NextResponse.json({ ok: true });
}
