import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { getCourseLessonSequence, getEnrichmentForUnit } from "@/lib/lessonSequence";

function formatUnlockDate(dateStr: string | null): string {
  if (!dateStr) return "soon";
  const d = new Date(dateStr + "T00:00:00");
  return d.toLocaleDateString("en-US", { month: "long", day: "numeric" });
}

const LOCKED_BANNER: Record<string, string> = {
  prior_incomplete: "🔒 That lesson isn't unlocked yet — finish the lesson before it first.",
  calendar: "🗓️ That lesson isn't scheduled to open yet — check its unlock date below.",
  daily_cap: "✅ You've completed today's lesson! Come back tomorrow for the next one, or try today's enrichment challenge below.",
};

export default async function CoursePage({ params, searchParams }: { params: Promise<{ slug: string }>; searchParams: Promise<{ locked?: string }> }) {
  const { slug } = await params;
  const { locked: lockedFlag } = await searchParams;
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const courses = await db().sql`SELECT * FROM courses WHERE slug = ${slug}`;
  if (!courses.length) notFound();
  const course = courses[0];

  const units = await db().sql`SELECT * FROM units WHERE course_id = ${course.id} ORDER BY position`;
  const lessons = await db().sql`
    SELECT l.*, lp.status AS progress_status
    FROM lessons l
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${student.id}
    WHERE l.unit_id = ANY(${units.map((u) => u.id)})
    ORDER BY l.position
  `;

  const sequence = await getCourseLessonSequence(course.id, student.id);
  const sequenceById = new Map(sequence.map((s) => [s.id, s]));
  const totalLessons = sequence.length;
  const completedLessons = sequence.filter((s) => s.completed).length;
  const pct = totalLessons > 0 ? Math.round((completedLessons / totalLessons) * 100) : 0;

  // The next lesson that's paced (calendar- or cap-locked, not just behind an
  // incomplete prior lesson) is where a fast finisher currently sits -- surface
  // that unit's enrichment challenge for them right there.
  const pacedEntry = sequence.find((s) => !s.completed && (s.lockReason === "calendar" || s.lockReason === "daily_cap"));
  const pacedLesson = pacedEntry ? lessons.find((l) => l.id === pacedEntry.id) : null;
  const enrichment = pacedLesson ? await getEnrichmentForUnit(pacedLesson.unit_id) : null;

  const roadmap = await db().sql`
    SELECT * FROM curriculum_roadmap WHERE course_id = ${course.id} ORDER BY week_number
  `;
  const titleToLesson = new Map(lessons.map((l) => [l.title, l]));
  const quarters = [1, 2, 3, 4];

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-3xl mx-auto w-full px-6 py-10">
        <Link href="/dashboard" className="text-sm text-terracotta-dark font-semibold">&larr; Back to My Classes</Link>
        <span className="block text-xs uppercase tracking-wider font-bold text-terracotta-dark mt-4">{course.subject}</span>
        <h1 className="text-3xl mb-2">{course.title}</h1>
        <p className="text-warm-gray mb-4">{course.description}</p>

        {lockedFlag && LOCKED_BANNER[lockedFlag] && (
          <div className="bg-terracotta/10 border border-terracotta/30 text-terracotta-dark text-sm font-semibold rounded-xl px-5 py-3 mb-6">
            {LOCKED_BANNER[lockedFlag]}
          </div>
        )}

        {totalLessons > 0 && (
          <div className="bg-ivory border border-border rounded-2xl px-5 py-4 mb-6">
            <div className="flex items-center justify-between mb-2">
              <span className="text-sm font-semibold text-plum">Course Progress</span>
              <span className="text-sm font-semibold text-terracotta-dark">{pct}% complete</span>
            </div>
            <div className="w-full bg-cream rounded-full h-3">
              <div className="bg-terracotta h-3 rounded-full transition-all" style={{ width: `${pct}%` }} />
            </div>
            <span className="text-xs text-warm-gray-light mt-1 block">{completedLessons} of {totalLessons} lessons complete</span>
          </div>
        )}

        {enrichment && (
          <div className="bg-sage/10 border border-sage/30 rounded-2xl px-5 py-4 mb-8">
            <p className="text-xs font-bold uppercase tracking-wider text-sage-dark mb-1">🚀 Go Beyond — while you wait for your next lesson</p>
            <p className="font-semibold text-plum text-sm mb-1">{enrichment.title}</p>
            <p className="text-warm-gray text-sm">{enrichment.prompt}</p>
          </div>
        )}

        {units.map((unit) => (
          <div key={unit.id} className="mb-8">
            <h2 className="text-lg mb-3">{unit.title}</h2>
            <div className="flex flex-col gap-2">
              {lessons.filter((l) => l.unit_id === unit.id).map((lesson) => {
                const seq = sequenceById.get(lesson.id);
                const locked = seq?.locked ?? false;
                const completed = lesson.progress_status === "completed";

                if (locked) {
                  const reason = seq?.lockReason;
                  const subtext =
                    reason === "calendar"
                      ? `Opens ${formatUnlockDate(seq?.unlockDate ?? null)}`
                      : reason === "daily_cap"
                      ? "Opens tomorrow"
                      : `${lesson.estimated_minutes} min · ${lesson.standards_code}`;
                  return (
                    <div
                      key={lesson.id}
                      className="flex items-center justify-between bg-cream/60 border border-dashed border-border rounded-xl px-5 py-4 opacity-70"
                    >
                      <div>
                        <p className="font-semibold text-warm-gray text-sm flex items-center gap-2">
                          <span aria-hidden>🔒</span> {lesson.title}
                        </p>
                        <p className="text-xs text-warm-gray-light">{subtext}</p>
                      </div>
                      <span className="text-xs font-semibold rounded-full px-3 py-1 bg-border/40 text-warm-gray-light">
                        {reason === "calendar" ? "Scheduled" : reason === "daily_cap" ? "Come back tomorrow" : "Locked"}
                      </span>
                    </div>
                  );
                }

                return (
                  <Link
                    key={lesson.id}
                    href={`/courses/${slug}/lessons/${lesson.id}`}
                    className="flex items-center justify-between bg-ivory border border-border rounded-xl px-5 py-4 hover:border-terracotta transition"
                  >
                    <div>
                      <p className="font-semibold text-plum text-sm">{lesson.title}</p>
                      <p className="text-xs text-warm-gray-light">{lesson.estimated_minutes} min &middot; {lesson.standards_code}</p>
                    </div>
                    <span className={`text-xs font-semibold rounded-full px-3 py-1 ${
                      completed
                        ? "bg-sage/20 text-sage-dark"
                        : "bg-cream text-warm-gray-light"
                    }`}>
                      {completed ? "Complete" : "Start"}
                    </span>
                  </Link>
                );
              })}
            </div>
          </div>
        ))}

        {roadmap.length > 0 && (
          <div className="mt-14 border-t border-border pt-10">
            <h2 className="font-serif text-2xl text-plum mb-2">Full Year Roadmap</h2>
            <p className="text-warm-gray text-sm mb-6">
              Here&rsquo;s everywhere {course.title} is headed this year — 36 weeks in all. Weeks already built are ready to explore now; the rest are coming soon.
            </p>

            {quarters.map((q) => {
              const weeks = roadmap.filter((r) => r.quarter === q);
              if (!weeks.length) return null;
              return (
                <div key={q} className="mb-8">
                  <h3 className="text-sm font-bold uppercase tracking-wider text-terracotta-dark mb-3">Quarter {q}</h3>
                  <div className="grid sm:grid-cols-2 gap-2">
                    {weeks.map((w) => {
                      const builtLesson = titleToLesson.get(w.lesson_title);
                      if (builtLesson) {
                        return (
                          <Link
                            key={w.id}
                            href={`/courses/${slug}/lessons/${builtLesson.id}`}
                            className="flex items-center gap-3 bg-ivory border border-border rounded-lg px-4 py-2.5 hover:border-terracotta transition"
                          >
                            <span className="text-xs font-bold text-sage-dark w-14 shrink-0">Week {w.week_number}</span>
                            <span className="text-sm text-charcoal">{w.lesson_title}</span>
                          </Link>
                        );
                      }
                      return (
                        <div key={w.id} className="flex items-center gap-3 bg-cream/60 border border-dashed border-border rounded-lg px-4 py-2.5">
                          <span className="text-xs font-bold text-warm-gray-light w-14 shrink-0">Week {w.week_number}</span>
                          <span className="text-sm text-warm-gray">{w.lesson_title}</span>
                          <span className="ml-auto text-xs text-warm-gray-light shrink-0">Coming soon</span>
                        </div>
                      );
                    })}
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </main>
    </div>
  );
}
