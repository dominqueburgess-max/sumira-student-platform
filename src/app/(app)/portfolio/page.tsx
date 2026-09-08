import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { PortfolioForm } from "@/components/PortfolioForm";
import { AssignmentUploadForm } from "@/components/AssignmentUploadForm";

const STATUS_BADGE: Record<string, { label: string; classes: string }> = {
  grading: { label: "Grading…", classes: "bg-amber/20 text-terracotta-dark" },
  pending_review: { label: "Submitted — awaiting teacher review", classes: "bg-amber/20 text-terracotta-dark" },
  released: { label: "Reviewed", classes: "bg-sage/20 text-sage-dark" },
  needs_revision: { label: "Needs revision", classes: "bg-red-100 text-red-700" },
  grading_failed: { label: "Submitted — awaiting teacher review", classes: "bg-amber/20 text-terracotta-dark" },
};

export default async function PortfolioPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const items = await db().sql`
    SELECT * FROM portfolio_items WHERE student_id = ${student.id} ORDER BY created_at DESC
  `;

  const lessonRows = await db().sql`
    SELECT c.id AS course_id, c.title AS course_title, l.id AS lesson_id, l.title AS lesson_title, u.position AS unit_position, l.position AS lesson_position
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    JOIN units u ON u.course_id = c.id
    JOIN lessons l ON l.unit_id = u.id AND l.content_type = 'practice'
    WHERE e.student_id = ${student.id}
    ORDER BY c.title, u.position, l.position
  `;
  const courseGroupsMap = new Map<number, { courseId: number; courseTitle: string; lessons: { lessonId: number; lessonTitle: string }[] }>();
  for (const r of lessonRows) {
    if (!courseGroupsMap.has(r.course_id)) {
      courseGroupsMap.set(r.course_id, { courseId: r.course_id, courseTitle: r.course_title, lessons: [] });
    }
    courseGroupsMap.get(r.course_id)!.lessons.push({ lessonId: r.lesson_id, lessonTitle: r.lesson_title });
  }
  const courseGroups = Array.from(courseGroupsMap.values());

  const submissions = await db().sql`
    SELECT s.id, s.title, s.notes, s.file_name, s.file_type, s.status, s.submitted_at,
           s.staff_grade, s.staff_feedback,
           l.title AS lesson_title, c.title AS course_title
    FROM assignment_submissions s
    LEFT JOIN lessons l ON l.id = s.lesson_id
    LEFT JOIN courses c ON c.id = s.course_id
    WHERE s.student_id = ${student.id}
    ORDER BY s.submitted_at DESC
  `;

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-4xl mx-auto w-full px-6 py-10">
        <h1 className="text-2xl mb-1">My Creations</h1>
        <p className="text-warm-gray mb-6 text-sm">A place to show off everything you've made and learned.</p>

        <div className="mb-8">
          <PortfolioForm />
        </div>

        {items.length === 0 ? (
          <p className="text-warm-gray text-sm">Nothing here yet — add your first creation above!</p>
        ) : (
          <div className="grid sm:grid-cols-3 gap-5">
            {items.map((item) => (
              <div key={item.id} className="bg-ivory rounded-2xl card-shadow border border-border overflow-hidden">
                {item.media_url && (
                  // eslint-disable-next-line @next/next/no-img-element
                  <img src={item.media_url} alt={item.title} className="w-full h-36 object-cover" />
                )}
                <div className="p-4">
                  <h3 className="text-sm font-semibold text-plum">{item.title}</h3>
                  {item.description && <p className="text-xs text-warm-gray mt-1">{item.description}</p>}
                </div>
              </div>
            ))}
          </div>
        )}

        <div className="mt-14 pt-10 border-t border-border">
          <h2 className="text-2xl mb-1">Homework & Projects</h2>
          <p className="text-warm-gray mb-6 text-sm">Turn in homework, class assignments, and projects here — your teacher reviews every submission before a grade is final.</p>

          <div className="mb-8">
            <AssignmentUploadForm courseGroups={courseGroups} />
          </div>

          {submissions.length === 0 ? (
            <p className="text-warm-gray text-sm">Nothing turned in yet.</p>
          ) : (
            <div className="flex flex-col gap-4">
              {submissions.map((s) => {
                const badge = STATUS_BADGE[s.status] || STATUS_BADGE.pending_review;
                return (
                  <div key={s.id} className="bg-ivory border border-border rounded-2xl px-5 py-4">
                    <div className="flex items-start justify-between flex-wrap gap-3">
                      <div>
                        <p className="font-semibold text-plum text-sm">{s.title}</p>
                        <p className="text-xs text-warm-gray-light">
                          {[s.course_title, s.lesson_title].filter(Boolean).join(" · ") || "General submission"}
                          {" · "}
                          {new Date(s.submitted_at).toLocaleDateString()}
                        </p>
                      </div>
                      <span className={`text-xs font-semibold rounded-full px-3 py-1 shrink-0 ${badge.classes}`}>{badge.label}</span>
                    </div>
                    <div className="mt-2">
                      <a href={`/api/portfolio/submissions/${s.id}/file`} target="_blank" rel="noreferrer" className="text-xs text-terracotta-dark font-semibold">
                        View what you submitted →
                      </a>
                    </div>
                    {s.status === "released" && (
                      <div className="mt-3 bg-sage/10 border border-sage/30 rounded-xl px-4 py-3">
                        {s.staff_grade && <p className="text-sm font-semibold text-sage-dark mb-1">Grade: {s.staff_grade}</p>}
                        {s.staff_feedback && <p className="text-sm text-charcoal">{s.staff_feedback}</p>}
                      </div>
                    )}
                    {s.status === "needs_revision" && (
                      <div className="mt-3 bg-red-50 border border-red-200 rounded-xl px-4 py-3">
                        {s.staff_feedback && <p className="text-sm text-red-700">{s.staff_feedback}</p>}
                        <p className="text-xs text-red-600 mt-1">Please make changes and turn in a new submission.</p>
                      </div>
                    )}
                  </div>
                );
              })}
            </div>
          )}
        </div>
      </main>
    </div>
  );
}
