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
  grade_level: string;
  first_choice: string | null;
  second_choice: string | null;
  other_studio_idea: string | null;
};

type CourseAssignmentRow = {
  student_id: number;
  title: string;
  subject: string;
  status: string;
};

export default async function AdminClassesPage() {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const students = (await db().sql`
    SELECT s.id, s.first_name, s.last_name, s.grade_level,
      lse.first_choice, lse.second_choice, lse.other_studio_idea
    FROM students s
    LEFT JOIN live_studio_elective_surveys lse ON lse.student_id = s.id
    WHERE s.studio = 'venture'
    ORDER BY s.grade_level, s.last_name, s.first_name
  `) as unknown as StudentRow[];

  const assignments = (await db().sql`
    SELECT e.student_id, c.title, c.subject, c.status
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    WHERE c.studio = 'venture'
    ORDER BY c.subject, c.position
  `) as unknown as CourseAssignmentRow[];

  const coursesByStudent = new Map<number, CourseAssignmentRow[]>();
  for (const a of assignments) {
    if (!coursesByStudent.has(a.student_id)) coursesByStudent.set(a.student_id, []);
    coursesByStudent.get(a.student_id)!.push(a);
  }

  const surveyedCount = students.filter((s) => s.first_choice).length;

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-6xl mx-auto">
        <div className="flex items-center justify-between mb-4 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">Classes: electives &amp; assigned courses</h1>
            <p className="text-warm-gray text-sm">
              Every Venture Studio (6&ndash;12) student, their Live Studio elective picks, and every course currently assigned to them.
              {" "}
              <span className="font-semibold text-plum">{surveyedCount}</span> of <span className="font-semibold text-plum">{students.length}</span> have submitted their elective survey.
            </p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="flex gap-4 mb-8 text-sm font-semibold flex-wrap">
          <Link href="/admin/enrollments" className="text-warm-gray hover:text-plum">Enrollment inquiries</Link>
          <Link href="/admin/students" className="text-warm-gray hover:text-plum">Venture Studio students</Link>
          <span className="text-plum border-b-2 border-terracotta pb-1">Classes &amp; electives</span>
          <Link href="/admin/parents" className="text-warm-gray hover:text-plum">Parent accounts</Link>
        </div>

        {students.length === 0 ? (
          <div className="bg-ivory rounded-2xl border border-border p-10 text-center text-warm-gray">
            No Venture Studio (grades 6&ndash;12) students yet.
          </div>
        ) : (
          <div className="bg-ivory rounded-2xl border border-border overflow-hidden">
            <table className="w-full text-sm">
              <thead>
                <tr className="bg-plum/5 text-left text-xs uppercase tracking-wide text-warm-gray">
                  <th className="px-5 py-3">Student</th>
                  <th className="px-5 py-3">Grade</th>
                  <th className="px-5 py-3">Live Studio elective (1st choice)</th>
                  <th className="px-5 py-3">Backup choice</th>
                  <th className="px-5 py-3">Courses assigned</th>
                  <th className="px-5 py-3"></th>
                </tr>
              </thead>
              <tbody>
                {students.map((s) => {
                  const courses = coursesByStudent.get(s.id) || [];
                  return (
                    <tr key={s.id} className="border-t border-border align-top">
                      <td className="px-5 py-4">
                        <div className="font-semibold text-plum">{s.first_name} {s.last_name}</div>
                      </td>
                      <td className="px-5 py-4">{s.grade_level}</td>
                      <td className="px-5 py-4">
                        {s.first_choice ? (
                          <div>
                            <div className="text-charcoal">{s.first_choice}</div>
                            {s.first_choice.startsWith("Other") && s.other_studio_idea && (
                              <div className="text-xs text-warm-gray-light italic mt-1">&ldquo;{s.other_studio_idea}&rdquo;</div>
                            )}
                          </div>
                        ) : (
                          <span className="inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 bg-terracotta/15 text-terracotta-dark">Not submitted</span>
                        )}
                      </td>
                      <td className="px-5 py-4 text-warm-gray">
                        {s.second_choice || "—"}
                        {s.second_choice?.startsWith("Other") && s.other_studio_idea && !s.first_choice?.startsWith("Other") && (
                          <div className="text-xs text-warm-gray-light italic mt-1">&ldquo;{s.other_studio_idea}&rdquo;</div>
                        )}
                      </td>
                      <td className="px-5 py-4">
                        {courses.length === 0 ? (
                          <span className="inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 bg-terracotta/15 text-terracotta-dark">Not assigned</span>
                        ) : (
                          <ul className="space-y-1">
                            {courses.map((c, i) => (
                              <li key={i} className="text-charcoal">
                                {c.title}
                                {c.status === "coming_soon" && (
                                  <span className="ml-2 text-xs text-warm-gray-light">(coming soon)</span>
                                )}
                              </li>
                            ))}
                          </ul>
                        )}
                      </td>
                      <td className="px-5 py-4 text-right">
                        <Link
                          href={`/admin/students/${s.id}`}
                          className="text-sm font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-4 py-1.5 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition whitespace-nowrap"
                        >
                          Manage
                        </Link>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </main>
  );
}
