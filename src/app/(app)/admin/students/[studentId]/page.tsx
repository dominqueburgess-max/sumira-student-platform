import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";
import { AssignCoursesForm } from "@/components/AssignCoursesForm";
import { ResetPasswordButton } from "@/components/ResetPasswordButton";

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

        <div className="mb-6">
          <ResetPasswordButton studentId={student.id} studentEmail={student.email} />
        </div>

        <AssignCoursesForm
          studentId={student.id}
          bySubject={Array.from(bySubject.entries()).map(([subject, list]) => ({ subject, courses: list }))}
          assignedIds={assignedIds}
        />
      </div>
    </main>
  );
}
