import { NextRequest, NextResponse } from "next/server";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { generateDiagnostic, type DiagnosticPeriod } from "@/lib/diagnostics";

export async function POST(req: NextRequest) {
  const authed = await isAdminAuthenticated();
  if (!authed) return NextResponse.json({ error: "Not authorized." }, { status: 401 });

  const body = await req.json().catch(() => ({}));
  const studentId = Number(body.studentId);
  const courseId = Number(body.courseId);
  const period = body.period as DiagnosticPeriod;

  if (!studentId || !courseId || (period !== "BOY" && period !== "MOY")) {
    return NextResponse.json({ error: "studentId, courseId, and a valid period (BOY or MOY) are required." }, { status: 400 });
  }

  const result = await generateDiagnostic(studentId, courseId, period);
  if (!result.ok) return NextResponse.json({ error: result.error }, { status: 422 });

  return NextResponse.json(result);
}
