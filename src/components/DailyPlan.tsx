import Link from "next/link";
import type { DailyPlanEntry } from "@/lib/dailyPlan";

const RHYTHM: { day: string; label: string }[] = [
  { day: "Mon", label: "Watch + Classwork" },
  { day: "Tue", label: "Watch + Classwork" },
  { day: "Wed", label: "Classwork due" },
  { day: "Thu", label: "Homework" },
  { day: "Fri", label: "Homework due" },
];

const COLOR_STYLES: Record<string, { border: string; badge: string }> = {
  terracotta: { border: "border-t-terracotta", badge: "bg-terracotta/10 text-terracotta-dark" },
  sage: { border: "border-t-sage", badge: "bg-sage/10 text-sage-dark" },
  amber: { border: "border-t-amber", badge: "bg-amber/15 text-plum" },
  plum: { border: "border-t-plum-light", badge: "bg-plum/10 text-plum" },
};

const TASK_LABEL: Record<string, string> = {
  classwork: "Classwork",
  homework: "Homework",
};

/** Sun=0 and Sat=6 map to null (no highlighted rhythm day on weekends). */
function todayRhythmIndex(): number | null {
  const day = new Date().getDay();
  const map: (number | null)[] = [null, 0, 1, 2, 3, 4, null];
  return map[day];
}

export function DailyPlan({ entries }: { entries: DailyPlanEntry[] }) {
  if (!entries.length) return null;
  const todayIdx = todayRhythmIndex();

  return (
    <section className="mb-10">
      <h2 className="text-xl mb-1">Today&rsquo;s Plan</h2>
      <p className="text-warm-gray text-sm mb-4">
        Most students move through one lesson per subject each week: watch the video and turn in Classwork early in the week, then turn in Homework by Friday. Here&rsquo;s exactly where you are in each subject right now.
      </p>

      <div className="flex gap-2 mb-6">
        {RHYTHM.map((r, i) => (
          <div
            key={r.day}
            className={`flex-1 rounded-lg px-2 py-2 text-center border ${
              i === todayIdx ? "bg-plum text-ivory border-plum" : "bg-ivory border-border text-warm-gray"
            }`}
          >
            <div className="text-xs font-bold uppercase tracking-wide">{r.day}</div>
            <div className="text-[11px] mt-0.5 leading-tight">{r.label}</div>
          </div>
        ))}
      </div>

      <div className="grid sm:grid-cols-2 gap-4">
        {entries.map((e) => {
          const colors = COLOR_STYLES[e.color] || COLOR_STYLES.terracotta;
          return (
            <Link
              key={e.courseId}
              href={`/courses/${e.courseSlug}/lessons/${e.lessonId}`}
              className={`block bg-ivory rounded-2xl card-shadow p-5 border border-border border-t-4 ${colors.border} hover:-translate-y-0.5 transition`}
            >
              <span className="text-xs uppercase tracking-wider font-bold text-terracotta-dark">{e.subject}</span>
              <p className="text-sm font-semibold text-charcoal mt-1 mb-2">
                {e.weekNumber && <span className="text-warm-gray-light">Week {e.weekNumber}: </span>}
                {e.lessonTitle}
              </p>
              {e.task ? (
                <span className={`inline-block text-xs font-bold rounded-full px-3 py-1 ${colors.badge}`}>
                  Do today: {TASK_LABEL[e.task.type]} &mdash; {e.task.title}
                </span>
              ) : (
                <span className="inline-block text-xs font-bold rounded-full px-3 py-1 bg-sage/20 text-sage-dark">
                  ✓ All caught up in {e.subject}
                </span>
              )}
            </Link>
          );
        })}
      </div>
    </section>
  );
}
