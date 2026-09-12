import type { StudentReport } from "@/lib/studentReport";

const SUBMISSION_BADGE: Record<string, { label: string; classes: string }> = {
  grading: { label: "Grading…", classes: "bg-amber/20 text-terracotta-dark" },
  pending_review: { label: "Submitted — awaiting teacher review", classes: "bg-amber/20 text-terracotta-dark" },
  released: { label: "Reviewed", classes: "bg-sage/20 text-sage-dark" },
  needs_revision: { label: "Needs revision", classes: "bg-red-100 text-red-700" },
  grading_failed: { label: "Submitted — awaiting teacher review", classes: "bg-amber/20 text-terracotta-dark" },
};

const PACING_BADGE: Record<string, { label: (weeksBehind: number) => string; classes: string }> = {
  ahead: { label: () => "🚀 Ahead of pace", classes: "bg-sage/20 text-sage-dark" },
  on_pace: { label: () => "✓ On pace", classes: "bg-sage/20 text-sage-dark" },
  behind: {
    label: (w) => `${w} week${w === 1 ? "" : "s"} behind`,
    classes: "bg-terracotta/15 text-terracotta-dark",
  },
  not_started: { label: () => "Not started yet", classes: "bg-cream text-warm-gray" },
};

/**
 * Read-only rollup of one learner's course progress, live pacing check,
 * standards mastery, achievements, and portfolio/homework submissions. Used
 * on the parent portal dashboard (one per enrolled child) and the
 * magic-link parent view.
 */
export function StudentReportView({ report }: { report: StudentReport }) {
  const { student, courses, pacing, standards, standardsLabel, homeState, achievements, portfolioItems, submissions } = report;

  return (
    <div>
      {pacing.length > 0 && (
        <section className="mb-8">
          <h3 className="text-lg text-plum font-semibold mb-1">Pacing Check</h3>
          <p className="text-sm text-warm-gray mb-3">
            Most students complete one lesson per subject each week. Here&rsquo;s the week {student.first_name} should be on
            versus the week they&rsquo;re actually on, subject by subject.
          </p>
          <div className="grid sm:grid-cols-2 gap-4">
            {pacing.map((p) => {
              const badge = PACING_BADGE[p.status];
              return (
                <div key={p.courseId} className="bg-cream rounded-xl border border-border p-5">
                  {p.subject && <span className="text-xs uppercase tracking-wider font-bold text-terracotta-dark">{p.subject}</span>}
                  <h4 className="text-base text-charcoal mb-2">{p.courseTitle}</h4>
                  <p className="text-xs text-warm-gray-light mb-1">Should be on: Week {p.expectedWeek}</p>
                  <p className="text-xs text-warm-gray-light mb-3">
                    {p.allCompleted
                      ? "Currently on: all lessons complete"
                      : p.currentWeek !== null
                      ? `Currently on: Week ${p.currentWeek}${p.currentLessonTitle ? ` — ${p.currentLessonTitle}` : ""}`
                      : "Currently on: not started"}
                  </p>
                  <span className={`inline-block text-xs font-semibold rounded-full px-3 py-1 ${badge.classes}`}>
                    {badge.label(p.weeksBehind)}
                  </span>
                </div>
              );
            })}
          </div>
        </section>
      )}

      <section className="mb-8">
        <h3 className="text-lg text-plum font-semibold mb-3">Course Progress</h3>
        {courses.length === 0 ? (
          <p className="text-sm text-warm-gray-light italic">No courses assigned yet.</p>
        ) : (
          <div className="grid sm:grid-cols-2 gap-4">
            {courses.map((c) => {
              const pct = c.total_lessons > 0 ? Math.round((c.completed_lessons / c.total_lessons) * 100) : 0;
              return (
                <div key={c.id} className="bg-cream rounded-xl border border-border p-5">
                  {c.subject && <span className="text-xs uppercase tracking-wider font-bold text-terracotta-dark">{c.subject}</span>}
                  <h4 className="text-base text-charcoal mb-2">{c.title}</h4>
                  <div className="w-full bg-ivory rounded-full h-2 mb-1">
                    <div className="bg-terracotta h-2 rounded-full" style={{ width: `${pct}%` }} />
                  </div>
                  <span className="text-xs text-warm-gray-light">{c.completed_lessons}/{c.total_lessons} lessons complete ({pct}%)</span>
                </div>
              );
            })}
          </div>
        )}
      </section>

      <section className="mb-8">
        <h3 className="text-lg text-plum font-semibold mb-1">{homeState} Standards Mastery Report</h3>
        <p className="text-sm text-warm-gray mb-3">Standards below reflect completed lessons, tagged to {standardsLabel}.</p>
        {standards.length === 0 ? (
          <p className="text-sm text-warm-gray-light italic">No standards recorded yet — check back after a few lessons are complete.</p>
        ) : (
          <div className="bg-cream rounded-xl border border-border overflow-hidden">
            <table className="w-full text-sm">
              <thead className="bg-ivory text-left">
                <tr>
                  <th className="px-4 py-2 font-semibold text-plum">Subject</th>
                  <th className="px-4 py-2 font-semibold text-plum">Standard</th>
                  <th className="px-4 py-2 font-semibold text-plum">Description</th>
                </tr>
              </thead>
              <tbody>
                {standards.map((s, i) => (
                  <tr key={i} className="border-t border-border">
                    <td className="px-4 py-2 text-warm-gray">{s.subject}</td>
                    <td className="px-4 py-2 font-semibold text-terracotta-dark whitespace-nowrap">{s.display?.code}</td>
                    <td className="px-4 py-2 text-charcoal">
                      {s.display?.description}
                      {s.display && !s.display.isHomeState && homeState !== "NC" && (
                        <span className="block text-xs text-warm-gray-light mt-0.5">(NC standard shown — {homeState} mapping coming soon)</span>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </section>

      {achievements.length > 0 && (
        <section className="mb-8">
          <h3 className="text-lg text-plum font-semibold mb-3">Achievements</h3>
          <div className="flex flex-wrap gap-3">
            {achievements.map((a) => (
              <div key={a.id} className="flex items-center gap-2 bg-amber/15 border border-amber/30 rounded-full pl-2 pr-4 py-2">
                <span className="text-xl">{a.icon}</span>
                <span className="text-sm font-semibold text-plum">{a.title}</span>
              </div>
            ))}
          </div>
        </section>
      )}

      <section className="mb-2">
        <h3 className="text-lg text-plum font-semibold mb-1">Homework, Classwork &amp; Portfolio</h3>
        <p className="text-sm text-warm-gray mb-3">Everything {student.first_name} has turned in or added to their portfolio.</p>

        {submissions.length === 0 && portfolioItems.length === 0 ? (
          <p className="text-sm text-warm-gray-light italic">Nothing submitted yet.</p>
        ) : (
          <div className="flex flex-col gap-3">
            {submissions.map((s) => {
              const badge = SUBMISSION_BADGE[s.status] || SUBMISSION_BADGE.pending_review;
              return (
                <div key={`sub-${s.id}`} className="bg-cream border border-border rounded-xl px-4 py-3">
                  <div className="flex items-start justify-between flex-wrap gap-2">
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
                  {s.status === "released" && (s.staff_grade || s.staff_feedback) && (
                    <div className="mt-2 bg-sage/10 border border-sage/30 rounded-lg px-3 py-2">
                      {s.staff_grade && <p className="text-sm font-semibold text-sage-dark mb-0.5">Grade: {s.staff_grade}</p>}
                      {s.staff_feedback && <p className="text-sm text-charcoal">{s.staff_feedback}</p>}
                    </div>
                  )}
                  {s.status === "needs_revision" && s.staff_feedback && (
                    <div className="mt-2 bg-red-50 border border-red-200 rounded-lg px-3 py-2">
                      <p className="text-sm text-red-700">{s.staff_feedback}</p>
                    </div>
                  )}
                </div>
              );
            })}
            {portfolioItems.map((p) => (
              <div key={`pf-${p.id}`} className="bg-cream border border-border rounded-xl px-4 py-3">
                <p className="font-semibold text-plum text-sm">{p.title}</p>
                {p.description && <p className="text-xs text-warm-gray mt-0.5">{p.description}</p>}
              </div>
            ))}
          </div>
        )}
      </section>
    </div>
  );
}
