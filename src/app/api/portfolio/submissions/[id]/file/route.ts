import { NextRequest, NextResponse } from "next/server";
import { getStore } from "@netlify/blobs";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";
import { isAdminAuthenticated } from "@/lib/adminAuth";

export const dynamic = "force-dynamic";

const MIME_BY_TYPE: Record<string, string> = {
  pdf: "application/pdf",
  docx: "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
  text: "text/plain",
};

export async function GET(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;

  const rows = await db().sql`
    SELECT student_id, file_key, file_name, file_type FROM assignment_submissions WHERE id = ${Number(id)}
  `;
  if (!rows.length) return NextResponse.json({ error: "Not found." }, { status: 404 });
  const submission = rows[0];

  const admin = await isAdminAuthenticated();
  if (!admin) {
    const student = await getCurrentStudent();
    if (!student || student.id !== submission.student_id) {
      return NextResponse.json({ error: "Not authorized." }, { status: 403 });
    }
  }

  const store = getStore("assignment-submissions");
  const data = await store.get(submission.file_key, { type: "arrayBuffer" });
  if (!data) return NextResponse.json({ error: "File not found." }, { status: 404 });

  const contentType = submission.file_type === "image"
    ? (submission.file_name.match(/\.png$/i) ? "image/png" : "image/jpeg")
    : MIME_BY_TYPE[submission.file_type] || "application/octet-stream";

  return new NextResponse(data, {
    headers: {
      "Content-Type": contentType,
      "Content-Disposition": `inline; filename="${submission.file_name}"`,
      "Cache-Control": "private, no-store",
    },
  });
}
