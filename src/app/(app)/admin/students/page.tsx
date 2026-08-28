import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";

export const dynamic = "force-dynamic";

type StudentRow = {
  id: number;
  first_name: string;
  last_name: string;
  email: string;
  grade_level: string;
  studio: string;
  parent_email: string | null;
  assigned_count: number;
};

export default async function AdminStudentsPage() {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const students = (await db().sql`
    SELECT s.id, s.first_name, s.last_name, s.email, s.grade_level, s.studio, s.parent_email,
      COUNT(e.id)::int AS assigned_count
    FROM students s
    LEFT JOIN enrollments e ON e.student_id = s.id
    WHERE s.studio = 'venture'
    GROUP BY s.id
    ORDER BY s.grade_level, s.last_name, s.first_name
  `) as unknown as StudentRow[];

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-6xl mx-auto">
        <div className="flex items-center justify-between mb-4 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">Venture Studio students</h1>
            <p className="text-warm-gray text-sm">Grades 6&ndash;12. Assign each student the specific courses they should take &mdash; course level isn&rsquo;t auto-matched by grade for this studio.</p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="flex gap-4 mb-8 text-sm font-semibold">
          <Link href="/admin/enrollments" className="text-warm-gray hover:text-plum">Enrollment inquiries</Link>
          <span className="text-plum border-b-2 border-terracotta pb-1">Venture Studio students</span>
          <Link href="/admin/parents" className="text-warm-gray hover:text-plum">Parent accounts</Link>
        </div>

        {students.length === 0 ? (
          <div className="bg-ivory rounded-2xl border border-border p-10 text-center text-warm-gray">
            No Venture Studio (grades 6&ndash;12) students yet. They&rsquo;ll show up here once a parent completes enrollment with a 6th&ndash;12th grade student.
          </div>
        ) : (
          <div className="bg-ivory rounded-2xl border border-border overflow-hidden">
            <table className="w-full text-sm">
              <thead>
                <tr className="bg-plum/5 text-left text-xs uppercase tracking-wide text-warm-gray">
                  <th className="px-5 py-3">Student</th>
                  <th className="px-5 py-3">Grade</th>
                  <th className="px-5 py-3">Parent email</th>
                  <th className="px-5 py-3">Courses assigned</th>
                  <th className="px-5 py-3"></th>
                </tr>
              </thead>
              <tbody>
                {students.map((s) => (
                  <tr key={s.id} className="border-t border-border">
                    <td className="px-5 py-4">
                      <div className="font-semibold text-plum">{s.first_name} {s.last_name}</div>
                      <div className="text-xs text-warm-gray-light">{s.email}</div>
                    </td>
                    <td className="px-5 py-4">{s.grade_level}</td>
                    <td className="px-5 py-4 text-warm-gray">{s.parent_email || "—"}</td>
                    <td className="px-5 py-4">
                      {s.assigned_count === 0 ? (
                        <span className="inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 bg-terracotta/15 text-terracotta-dark">Not assigned</span>
                      ) : (
                        <span className="inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 bg-sage/20 text-sage-dark">{s.assigned_count} course{s.assigned_count === 1 ? "" : "s"}</span>
                      )}
                    </td>
                    <td className="px-5 py-4 text-right">
                      <Link
                        href={`/admin/students/${s.id}`}
                        className="text-sm font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-4 py-1.5 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition"
                      >
                        Assign courses
                      </Link>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </main>
  );
}
