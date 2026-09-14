import { NextRequest, NextResponse } from "next/server";
import { getCurrentStudent } from "@/lib/auth";
import { submitDiagnostic } from "@/lib/diagnostics";

export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { id } = await params;
  const diagnosticId = Number(id);
  if (!diagnosticId) return NextResponse.json({ error: "Missing diagnostic." }, { status: 400 });

  const body = await req.json().catch(() => ({}));
  const answers = Array.isArray(body.answers) ? body.answers : [];

  const result = await submitDiagnostic(diagnosticId, student.id, answers);
  if (!result.ok) return NextResponse.json({ error: result.error }, { status: 422 });

  return NextResponse.json(result);
}
