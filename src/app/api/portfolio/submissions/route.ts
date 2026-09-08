import { NextRequest, NextResponse } from "next/server";
import { getStore } from "@netlify/blobs";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";
import { gradeSubmission, SubmissionFileType, LessonContext } from "@/lib/assignmentGrading";

export const dynamic = "force-dynamic";

const MAX_BYTES = 15 * 1024 * 1024; // 15MB

function fileTypeFor(mimeType: string): SubmissionFileType | null {
  if (mimeType.startsWith("image/")) return "image";
  if (mimeType === "application/pdf") return "pdf";
  if (mimeType === "application/vnd.openxmlformats-officedocument.wordprocessingml.document") return "docx";
  return null;
}

export async function GET() {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const rows = await db().sql`
    SELECT s.id, s.title, s.notes, s.file_name, s.file_type, s.status, s.submitted_at,
           s.staff_grade, s.staff_feedback,
           l.title AS lesson_title, c.title AS course_title
    FROM assignment_submissions s
    LEFT JOIN lessons l ON l.id = s.lesson_id
    LEFT JOIN courses c ON c.id = s.course_id
    WHERE s.student_id = ${student.id}
    ORDER BY s.submitted_at DESC
  `;

  return NextResponse.json({ submissions: rows });
}

export async function POST(req: NextRequest) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  try {
    const formData = await req.formData();
    const title = String(formData.get("title") || "").trim();
    const notes = formData.get("notes") ? String(formData.get("notes")) : null;
    const lessonIdRaw = formData.get("lessonId");
    const pastedText = formData.get("pastedText") ? String(formData.get("pastedText")) : null;
    const file = formData.get("file") as File | null;

    if (!title) {
      return NextResponse.json({ error: "Please give this submission a title." }, { status: 400 });
    }
    if (!file && !pastedText?.trim()) {
      return NextResponse.json({ error: "Please upload a file or paste your work as text." }, { status: 400 });
    }

    let fileBuffer: Buffer;
    let fileType: SubmissionFileType;
    let mimeType: string;
    let fileName: string;
    let fileKey: string;

    if (file) {
      if (file.size > MAX_BYTES) {
        return NextResponse.json({ error: "That file is too large (15MB max)." }, { status: 400 });
      }
      const resolvedType = fileTypeFor(file.type);
      if (!resolvedType) {
        return NextResponse.json({ error: "Please upload an image, PDF, or Word (.docx) file." }, { status: 400 });
      }
      fileType = resolvedType;
      mimeType = file.type;
      fileName = file.name;
      fileBuffer = Buffer.from(await file.arrayBuffer());
    } else {
      fileType = "text";
      mimeType = "text/plain";
      fileName = "submission.txt";
      fileBuffer = Buffer.from(pastedText || "", "utf-8");
    }

    fileKey = `${student.id}/${Date.now()}-${fileName.replace(/[^a-zA-Z0-9._-]+/g, "-")}`;
    const store = getStore("assignment-submissions");
    const arrayBuffer = fileBuffer.buffer.slice(fileBuffer.byteOffset, fileBuffer.byteOffset + fileBuffer.byteLength) as ArrayBuffer;
    await store.set(fileKey, arrayBuffer);

    let lessonContext: LessonContext = null;
    let lessonId: number | null = null;
    let courseId: number | null = null;

    if (lessonIdRaw) {
      const lessonRows = await db().sql`
        SELECT l.id, l.title, l.content_body, l.standards_code, l.standards_description, u.course_id
        FROM lessons l
        JOIN units u ON u.id = l.unit_id
        JOIN enrollments e ON e.course_id = u.course_id AND e.student_id = ${student.id}
        WHERE l.id = ${Number(lessonIdRaw)}
      `;
      if (lessonRows.length) {
        const l = lessonRows[0];
        lessonId = l.id;
        courseId = l.course_id;
        lessonContext = {
          title: l.title,
          contentBody: l.content_body,
          standardsCode: l.standards_code,
          standardsDescription: l.standards_description,
        };
      }
    }

    const [submission] = await db().sql`
      INSERT INTO assignment_submissions (student_id, lesson_id, course_id, title, notes, file_key, file_name, file_type, status)
      VALUES (${student.id}, ${lessonId}, ${courseId}, ${title}, ${notes}, ${fileKey}, ${fileName}, ${fileType}, 'grading')
      RETURNING id
    `;

    const result = await gradeSubmission({ fileBuffer, fileType, mimeType, title, notes, lessonContext });

    await db().sql`
      UPDATE assignment_submissions
      SET status = ${result.status}, ai_grade = ${result.grade}, ai_score = ${result.score},
          ai_feedback = ${result.feedback}, ai_strengths = ${result.strengths}, ai_growth_areas = ${result.growthAreas},
          updated_at = NOW()
      WHERE id = ${submission.id}
    `;

    return NextResponse.json({ ok: true, submissionId: submission.id });
  } catch (err) {
    console.error("Submission upload failed", err);
    return NextResponse.json({ error: "Something went wrong submitting your work. Please try again." }, { status: 500 });
  }
}
