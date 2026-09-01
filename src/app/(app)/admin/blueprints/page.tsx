import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";

export const dynamic = "force-dynamic";

type Row = {
  id: number;
  first_name: string;
  last_name: string;
  grade_level: string;
  parent_email: string | null;
  // parent (family) blueprint
  pb_learning_style: string | null;
  pb_interests: string | null;
  pb_strengths: string | null;
  pb_growth_areas: string | null;
  pb_favorite_subjects: string | null;
  pb_challenging_subjects: string | null;
  pb_motivation: string | null;
  pb_tech_access: string | null;
  pb_best_learning_time: string | null;
  pb_prior_schooling: string | null;
  pb_goals_this_year: string | null;
  pb_additional_notes: string | null;
  pb_completed_at: string | null;
  // student self-reported blueprint
  sb_learning_style: string | null;
  sb_interests: string | null;
  sb_strengths: string | null;
  sb_growth_areas: string | null;
  sb_favorite_subjects: string | null;
  sb_challenging_subjects: string | null;
  sb_motivation: string | null;
  sb_best_learning_time: string | null;
  sb_show_what_i_know: string | null;
  sb_goals_this_year: string | null;
  sb_additional_notes: string | null;
  sb_completed_at: string | null;
};

function Field({ label, value }: { label: string; value: string | null }) {
  if (!value) return null;
  return (
    <div className="mb-2">
      <div className="text-xs font-semibold uppercase tracking-wide text-warm-gray-light">{label}</div>
      <div className="text-charcoal text-sm whitespace-pre-wrap">{value}</div>
    </div>
  );
}

function formatDate(d: string | null) {
  if (!d) return null;
  return new Date(d).toLocaleDateString("en-US", { month: "short", day: "numeric", year: "numeric" });
}

export default async function AdminBlueprintsPage() {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const rows = (await db().sql`
    SELECT s.id, s.first_name, s.last_name, s.grade_level, s.parent_email,
      lb.learning_style AS pb_learning_style, lb.interests AS pb_interests, lb.strengths AS pb_strengths,
      lb.growth_areas AS pb_growth_areas, lb.favorite_subjects AS pb_favorite_subjects,
      lb.challenging_subjects AS pb_challenging_subjects, lb.motivation AS pb_motivation,
      lb.tech_access AS pb_tech_access, lb.best_learning_time AS pb_best_learning_time,
      lb.prior_schooling AS pb_prior_schooling, lb.goals_this_year AS pb_goals_this_year,
      lb.additional_notes AS pb_additional_notes, lb.completed_at AS pb_completed_at,
      sbs.learning_style AS sb_learning_style, sbs.interests AS sb_interests, sbs.strengths AS sb_strengths,
      sbs.growth_areas AS sb_growth_areas, sbs.favorite_subjects AS sb_favorite_subjects,
      sbs.challenging_subjects AS sb_challenging_subjects, sbs.motivation AS sb_motivation,
      sbs.best_learning_time AS sb_best_learning_time, sbs.show_what_i_know AS sb_show_what_i_know,
      sbs.goals_this_year AS sb_goals_this_year, sbs.additional_notes AS sb_additional_notes,
      sbs.completed_at AS sb_completed_at
    FROM students s
    LEFT JOIN learning_blueprints lb ON lb.student_id = s.id
    LEFT JOIN student_blueprint_surveys sbs ON sbs.student_id = s.id
    WHERE s.studio = 'venture'
    ORDER BY s.grade_level, s.last_name, s.first_name
  `) as unknown as Row[];

  const parentDone = rows.filter((r) => r.pb_completed_at).length;
  const studentDone = rows.filter((r) => r.sb_completed_at).length;

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-6xl mx-auto">
        <div className="flex items-center justify-between mb-4 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">Learning Blueprint results</h1>
            <p className="text-warm-gray text-sm">
              Family (parent) and student-completed Learning Blueprint surveys, side by side, for every Venture Studio student.
              {" "}
              <span className="font-semibold text-plum">{parentDone}</span> of <span className="font-semibold text-plum">{rows.length}</span> parent blueprints submitted &middot;{" "}
              <span className="font-semibold text-plum">{studentDone}</span> of <span className="font-semibold text-plum">{rows.length}</span> student blueprints submitted.
            </p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="flex gap-4 mb-8 text-sm font-semibold flex-wrap">
          <Link href="/admin/enrollments" className="text-warm-gray hover:text-plum">Enrollment inquiries</Link>
          <Link href="/admin/students" className="text-warm-gray hover:text-plum">Venture Studio students</Link>
          <Link href="/admin/classes" className="text-warm-gray hover:text-plum">Classes &amp; electives</Link>
          <span className="text-plum border-b-2 border-terracotta pb-1">Learning Blueprints</span>
          <Link href="/admin/parents" className="text-warm-gray hover:text-plum">Parent accounts</Link>
        </div>

        {rows.length === 0 ? (
          <div className="bg-ivory rounded-2xl border border-border p-10 text-center text-warm-gray">
            No Venture Studio (grades 6&ndash;12) students yet.
          </div>
        ) : (
          <div className="space-y-3">
            {rows.map((r) => (
              <details key={r.id} className="bg-ivory rounded-2xl border border-border overflow-hidden group">
                <summary className="cursor-pointer list-none px-5 py-4 flex items-center justify-between gap-4 flex-wrap">
                  <div>
                    <span className="font-semibold text-plum">{r.first_name} {r.last_name}</span>
                    <span className="text-warm-gray text-sm ml-2">Grade {r.grade_level}{r.parent_email ? ` · Parent: ${r.parent_email}` : ""}</span>
                  </div>
                  <div className="flex gap-2 items-center">
                    <span className={`inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 ${r.pb_completed_at ? "bg-sage/20 text-sage-dark" : "bg-terracotta/15 text-terracotta-dark"}`}>
                      Parent: {r.pb_completed_at ? `Submitted ${formatDate(r.pb_completed_at)}` : "Not submitted"}
                    </span>
                    <span className={`inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 ${r.sb_completed_at ? "bg-sage/20 text-sage-dark" : "bg-terracotta/15 text-terracotta-dark"}`}>
                      Student: {r.sb_completed_at ? `Submitted ${formatDate(r.sb_completed_at)}` : "Not submitted"}
                    </span>
                    <span className="text-warm-gray-light text-xs group-open:hidden">Show details ▾</span>
                    <span className="text-warm-gray-light text-xs hidden group-open:inline">Hide details ▴</span>
                  </div>
                </summary>

                <div className="border-t border-border px-5 py-5 grid grid-cols-1 md:grid-cols-2 gap-8">
                  <div>
                    <h3 className="text-sm font-serif text-plum mb-3">Family (parent) Learning Blueprint</h3>
                    {r.pb_completed_at ? (
                      <>
                        <Field label="Learning style" value={r.pb_learning_style} />
                        <Field label="Interests" value={r.pb_interests} />
                        <Field label="Strengths" value={r.pb_strengths} />
                        <Field label="Growth areas" value={r.pb_growth_areas} />
                        <Field label="Favorite subjects" value={r.pb_favorite_subjects} />
                        <Field label="Challenging subjects" value={r.pb_challenging_subjects} />
                        <Field label="Motivation" value={r.pb_motivation} />
                        <Field label="Tech access" value={r.pb_tech_access} />
                        <Field label="Best learning time" value={r.pb_best_learning_time} />
                        <Field label="Prior schooling" value={r.pb_prior_schooling} />
                        <Field label="Goals this year" value={r.pb_goals_this_year} />
                        <Field label="Additional notes" value={r.pb_additional_notes} />
                      </>
                    ) : (
                      <p className="text-warm-gray text-sm italic">Not submitted yet.</p>
                    )}
                  </div>

                  <div>
                    <h3 className="text-sm font-serif text-plum mb-3">Student-completed Learning Blueprint</h3>
                    {r.sb_completed_at ? (
                      <>
                        <Field label="Learning style" value={r.sb_learning_style} />
                        <Field label="Interests" value={r.sb_interests} />
                        <Field label="Strengths" value={r.sb_strengths} />
                        <Field label="Growth areas" value={r.sb_growth_areas} />
                        <Field label="Favorite subjects" value={r.sb_favorite_subjects} />
                        <Field label="Challenging subjects" value={r.sb_challenging_subjects} />
                        <Field label="Motivation" value={r.sb_motivation} />
                        <Field label="Best learning time" value={r.sb_best_learning_time} />
                        <Field label="How I show what I know" value={r.sb_show_what_i_know} />
                        <Field label="Goals this year" value={r.sb_goals_this_year} />
                        <Field label="Additional notes" value={r.sb_additional_notes} />
                      </>
                    ) : (
                      <p className="text-warm-gray text-sm italic">Not submitted yet.</p>
                    )}
                  </div>
                </div>
              </details>
            ))}
          </div>
        )}
      </div>
    </main>
  );
}
