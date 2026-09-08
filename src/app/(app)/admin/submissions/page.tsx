import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";
import { SubmissionReviewForm } from "@/components/SubmissionReviewForm";

export const dynamic = "force-dynamic";

type SubmissionRow = {
  id: number;
  first_name: string;
  last_name: string;
  title: string;
  notes: string | null;
  file_name: string;
  status: string;
  submitted_at: string;
  ai_grade: string | null;
  ai_score: number | null;
  ai_feedback: string | null;
  ai_strengths: string | null;
  ai_growth_areas: string | null;
  staff_grade: string | null;
  staff_feedback: string | null;
  reviewed_at: string | null;
  lesson_title: string | null;
  course_title: string | null;
};

const STATUS_LABEL: Record<string, string> = {
  grading: "Grading…",
  pending_review: "Needs your review",
  grading_failed: "AI grading failed — needs manual review",
  released: "Released",
  needs_revision: "Sent back for revision",
};

export default async function AdminSubmissionsPage() {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const submissions = (await db().sql`
    SELECT s.id, st.first_name, st.last_name, s.title, s.notes, s.file_name, s.status, s.submitted_at,
           s.ai_grade, s.ai_score, s.ai_feedback, s.ai_strengths, s.ai_growth_areas,
           s.staff_grade, s.staff_feedback, s.reviewed_at,
           l.title AS lesson_title, c.title AS course_title
    FROM assignment_submissions s
    JOIN students st ON st.id = s.student_id
    LEFT JOIN lessons l ON l.id = s.lesson_id
    LEFT JOIN courses c ON c.id = s.course_id
    ORDER BY CASE WHEN s.status IN ('pending_review', 'grading_failed') THEN 0 ELSE 1 END, s.submitted_at DESC
  `) as unknown as SubmissionRow[];

  const needsReview = submissions.filter((s) => s.status === "pending_review" || s.status === "grading_failed");
  const reviewed = submissions.filter((s) => s.status === "released" || s.status === "needs_revision");
  const stillGrading = submissions.filter((s) => s.status === "grading");

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-5xl mx-auto">
        <div className="flex items-center justify-between mb-4 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">Homework & Project Submissions</h1>
            <p className="text-warm-gray text-sm">
              <span className="font-semibold text-plum">{needsReview.length}</span> waiting on your review &middot;{" "}
              <span className="font-semibold text-plum">{reviewed.length}</span> already reviewed
            </p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="flex gap-4 mb-8 text-sm font-semibold flex-wrap">
          <Link href="/admin/enrollments" className="text-warm-gray hover:text-plum">Enrollment inquiries</Link>
          <Link href="/admin/students" className="text-warm-gray hover:text-plum">Venture Studio students</Link>
          <Link href="/admin/classes" className="text-warm-gray hover:text-plum">Classes &amp; electives</Link>
          <Link href="/admin/blueprints" className="text-warm-gray hover:text-plum">Learning Blueprints</Link>
          <span className="text-plum border-b-2 border-terracotta pb-1">Submissions</span>
          <Link href="/admin/parents" className="text-warm-gray hover:text-plum">Parent accounts</Link>
        </div>

        {submissions.length === 0 && (
          <div className="bg-ivory rounded-2xl border border-border p-10 text-center text-warm-gray">
            No homework or projects have been turned in yet.
          </div>
        )}

        {needsReview.length > 0 && (
          <div className="mb-10">
            <h2 className="text-lg text-plum font-semibold mb-3">Needs Your Review</h2>
            <div className="flex flex-col gap-4">
              {needsReview.map((s) => (
                <div key={s.id} className="bg-ivory border border-terracotta/40 rounded-2xl px-5 py-4">
                  <div className="flex items-start justify-between flex-wrap gap-3">
                    <div>
                      <p className="font-semibold text-plum text-sm">{s.first_name} {s.last_name} — {s.title}</p>
                      <p className="text-xs text-warm-gray-light">
                        {[s.course_title, s.lesson_title].filter(Boolean).join(" · ") || "General submission"}
                        {" · "}
                        {new Date(s.submitted_at).toLocaleDateString()}
                      </p>
                    </div>
                    <span className="text-xs font-semibold rounded-full px-3 py-1 bg-amber/20 text-terracotta-dark shrink-0">
                      {STATUS_LABEL[s.status]}
                    </span>
                  </div>
                  {s.notes && <p className="text-xs text-warm-gray mt-2 italic">Student note: {s.notes}</p>}
                  <a href={`/api/portfolio/submissions/${s.id}/file`} target="_blank" rel="noreferrer" className="text-xs text-terracotta-dark font-semibold mt-2 inline-block">
                    View submitted file ({s.file_name}) →
                  </a>

                  {s.status === "pending_review" && (
                    <div className="mt-3 bg-cream rounded-xl px-4 py-3">
                      <p className="text-xs font-bold uppercase tracking-wide text-warm-gray-light mb-1">AI Draft</p>
                      {s.ai_grade && <p className="text-sm font-semibold text-plum">{s.ai_grade}{s.ai_score !== null ? ` (${s.ai_score}/100)` : ""}</p>}
                      {s.ai_feedback && <p className="text-sm text-charcoal mt-1">{s.ai_feedback}</p>}
                      {s.ai_strengths && <p className="text-xs text-sage-dark mt-1"><strong>Strengths:</strong> {s.ai_strengths}</p>}
                      {s.ai_growth_areas && <p className="text-xs text-terracotta-dark mt-1"><strong>Growth areas:</strong> {s.ai_growth_areas}</p>}
                    </div>
                  )}
                  {s.status === "grading_failed" && (
                    <div className="mt-3 bg-red-50 rounded-xl px-4 py-3 text-sm text-red-700">
                      {s.ai_feedback || "AI grading failed — please review and grade manually."}
                    </div>
                  )}

                  <SubmissionReviewForm
                    submissionId={s.id}
                    defaultGrade={s.ai_grade || ""}
                    defaultFeedback={s.ai_feedback || ""}
                  />
                </div>
              ))}
            </div>
          </div>
        )}

        {stillGrading.length > 0 && (
          <div className="mb-10">
            <h2 className="text-lg text-plum font-semibold mb-3">Currently Grading</h2>
            <div className="flex flex-col gap-2">
              {stillGrading.map((s) => (
                <div key={s.id} className="bg-ivory border border-border rounded-2xl px-5 py-3 text-sm text-warm-gray">
                  {s.first_name} {s.last_name} — {s.title} (submitted {new Date(s.submitted_at).toLocaleTimeString()})
                </div>
              ))}
            </div>
          </div>
        )}

        {reviewed.length > 0 && (
          <div>
            <h2 className="text-lg text-plum font-semibold mb-3">Already Reviewed</h2>
            <div className="flex flex-col gap-3">
              {reviewed.map((s) => (
                <div key={s.id} className="bg-ivory border border-border rounded-2xl px-5 py-3">
                  <div className="flex items-start justify-between flex-wrap gap-3">
                    <div>
                      <p className="font-semibold text-plum text-sm">{s.first_name} {s.last_name} — {s.title}</p>
                      <p className="text-xs text-warm-gray-light">
                        {[s.course_title, s.lesson_title].filter(Boolean).join(" · ") || "General submission"}
                        {s.reviewed_at ? ` · Reviewed ${new Date(s.reviewed_at).toLocaleDateString()}` : ""}
                      </p>
                    </div>
                    <span className={`text-xs font-semibold rounded-full px-3 py-1 shrink-0 ${s.status === "released" ? "bg-sage/20 text-sage-dark" : "bg-red-100 text-red-700"}`}>
                      {STATUS_LABEL[s.status]}
                    </span>
                  </div>
                  {s.staff_grade && <p className="text-sm text-plum mt-2 font-semibold">{s.staff_grade}</p>}
                  {s.staff_feedback && <p className="text-sm text-charcoal">{s.staff_feedback}</p>}
                </div>
              ))}
            </div>
          </div>
        )}
      </div>
    </main>
  );
}
