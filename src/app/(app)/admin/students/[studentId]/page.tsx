import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";
import { AssignCoursesForm } from "@/components/AssignCoursesForm";
import { ResetPasswordButton } from "@/components/ResetPasswordButton";
import { EditStudentEmailButton } from "@/components/EditStudentEmailButton";
import { DiagnosticsPanel, type DiagnosticCourseRow } from "@/components/DiagnosticsPanel";
import { currentSchoolYearLabel } from "@/lib/diagnostics";

export const dynamic = "force-dynamic";

type CourseRow = {
  id: number;
  slug: string;
  title: string;
  subject: string;
  grade_level: string;
  status: string;
};

export default async function AdminStudentDetailPage({
  params,
}: {
  params: Promise<{ studentId: string }>;
}) {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const { studentId } = await params;
  const id = Number(studentId);

  const studentRows = await db().sql`
    SELECT id, first_name, last_name, email, grade_level, studio, parent_email
    FROM students WHERE id = ${id} AND studio = 'venture'
  `;
  if (studentRows.length === 0) redirect("/admin/students");
  const student = studentRows[0] as {
    id: number; first_name: string; last_name: string; email: string;
    grade_level: string; studio: string; parent_email: string | null;
  };

  const courses = (await db().sql`
    SELECT id, slug, title, subject, grade_level, status
    FROM courses WHERE studio = 'venture'
    ORDER BY subject, position
  `) as unknown as CourseRow[];

  const assignedRows = (await db().sql`
    SELECT course_id FROM enrollments WHERE student_id = ${id}
  `) as unknown as { course_id: number }[];
  const assignedIds = assignedRows.map((r) => r.course_id);

  const bySubject = new Map<string, CourseRow[]>();
  for (const c of courses) {
    if (!bySubject.has(c.subject)) bySubject.set(c.subject, []);
    bySubject.get(c.subject)!.push(c);
  }

  // Beginning/Middle-of-Year diagnostics only apply to the student's
  // enrolled Math + English courses (end-of-year stays external/standardized).
  const diagnosticCourses = (await db().sql`
    SELECT c.id, c.title, c.subject
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    WHERE e.student_id = ${id} AND c.subject IN ('Math', 'ELA')
    ORDER BY c.subject, c.position
  `) as unknown as { id: number; title: string; subject: string }[];

  const diagnosticRows = (await db().sql`
    SELECT id, course_id, period, status, correct_count, total_questions
    FROM diagnostics
    WHERE student_id = ${id} AND school_year = ${currentSchoolYearLabel()}
  `) as unknown as { id: number; course_id: number; period: "BOY" | "MOY"; status: string; correct_count: number | null; total_questions: number }[];

  const diagnosticPanelRows: DiagnosticCourseRow[] = diagnosticCourses.map((c) => {
    const boyRow = diagnosticRows.find((d) => d.course_id === c.id && d.period === "BOY");
    const moyRow = diagnosticRows.find((d) => d.course_id === c.id && d.period === "MOY");
    return {
      courseId: c.id,
      courseTitle: c.title,
      subject: c.subject,
      boy: boyRow ? { id: boyRow.id, status: boyRow.status, correctCount: boyRow.correct_count, totalQuestions: boyRow.total_questions } : null,
      moy: moyRow ? { id: moyRow.id, status: moyRow.status, correctCount: moyRow.correct_count, totalQuestions: moyRow.total_questions } : null,
    };
  });

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-3xl mx-auto">
        <Link href="/admin/students" className="text-sm font-semibold text-warm-gray hover:text-plum mb-4 inline-block">← All Venture Studio students</Link>
        <div className="flex items-center justify-between mb-8 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">{student.first_name} {student.last_name}</h1>
            <p className="text-warm-gray text-sm">Grade {student.grade_level} &middot; {student.email}{student.parent_email ? ` · Parent: ${student.parent_email}` : ""}</p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="mb-6 flex flex-wrap gap-3">
          <EditStudentEmailButton studentId={student.id} currentEmail={student.email} />
          <ResetPasswordButton studentId={student.id} studentEmail={student.email} />
        </div>

        <AssignCoursesForm
          studentId={student.id}
          bySubject={Array.from(bySubject.entries()).map(([subject, list]) => ({ subject, courses: list }))}
          assignedIds={assignedIds}
        />

        <div className="mt-10">
          <h2 className="text-lg font-serif text-plum mb-1">Beginning / Middle of Year Check-Ins</h2>
          <p className="text-sm text-warm-gray mb-3">
            In-house diagnostics for Math + English, standards- and grade-level-based. End-of-year stays standardized/external.
          </p>
          <DiagnosticsPanel studentId={student.id} rows={diagnosticPanelRows} />
        </div>
      </div>
    </main>
  );
}
