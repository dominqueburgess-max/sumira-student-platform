import { redirect } from "next/navigation";
import Link from "next/link";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { checkAndAwardAchievements, getAchievements } from "@/lib/achievements";
import { getOrCreateParentToken } from "@/lib/parentAccess";

async function ensureEnrollments(studentId: number, studio: string, gradeLevel: string) {
  const courseCount = await db().sql`SELECT COUNT(*)::int AS n FROM enrollments WHERE student_id = ${studentId}`;
  if (courseCount[0].n === 0) {
    const courses = await db().sql`SELECT id FROM courses WHERE studio = ${studio} AND grade_level = ${gradeLevel}`;
    for (const c of courses) {
      await db().sql`INSERT INTO enrollments (student_id, course_id) VALUES (${studentId}, ${c.id}) ON CONFLICT DO NOTHING`;
    }
  }
  const liveCount = await db().sql`SELECT COUNT(*)::int AS n FROM live_class_enrollments WHERE student_id = ${studentId}`;
  if (liveCount[0].n === 0) {
    const liveClasses = await db().sql`SELECT id FROM live_classes WHERE studio = ${studio}`;
    for (const lc of liveClasses) {
      await db().sql`INSERT INTO live_class_enrollments (student_id, live_class_id) VALUES (${studentId}, ${lc.id}) ON CONFLICT DO NOTHING`;
    }
  }
}

export default async function DashboardPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  await ensureEnrollments(student.id, student.studio, student.grade_level);
  await checkAndAwardAchievements(student.id);
  const achievements = await getAchievements(student.id);
  const parentToken = await getOrCreateParentToken(student.id);

  const courses = await db().sql`
    SELECT c.id, c.slug, c.title, c.subject, c.description, c.color,
      COUNT(l.id)::int AS total_lessons,
      COUNT(lp.id) FILTER (WHERE lp.status = 'completed')::int AS completed_lessons
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    LEFT JOIN units u ON u.course_id = c.id
    LEFT JOIN lessons l ON l.unit_id = u.id
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${student.id}
    WHERE e.student_id = ${student.id}
    GROUP BY c.id
    ORDER BY c.position
  `;

  const liveClasses = await db().sql`
    SELECT lc.id, lc.title, lc.description, lc.schedule_text, lc.teacher_name, lc.color
    FROM live_class_enrollments lce
    JOIN live_classes lc ON lc.id = lce.live_class_id
    WHERE lce.student_id = ${student.id}
  `;

  const colorMap: Record<string, string> = {
    terracotta: "border-t-terracotta",
    sage: "border-t-sage",
    amber: "border-t-amber",
    plum: "border-t-plum-light",
  };

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-5xl mx-auto w-full px-6 py-10">
        <h1 className="text-3xl mb-1">Hi, {student.first_name}! 👋</h1>
        <p className="text-warm-gray mb-6">Here's what's on your learning path today.</p>

        <div className="bg-plum/5 border border-plum/20 rounded-xl px-5 py-3 mb-8 flex items-center justify-between gap-4 flex-wrap">
          <p className="text-sm text-plum">
            <span className="font-semibold">Parent / Family View:</span> share this link so a parent can see progress and a standards report.
          </p>
          <a href={`/parent/${parentToken}`} target="_blank" className="text-sm font-semibold text-terracotta-dark underline shrink-0">
            Open Parent View →
          </a>
        </div>

        <section className="mb-10">
          <h2 className="text-xl mb-4">Self-Paced Classes</h2>
          <div className="grid sm:grid-cols-2 gap-5">
            {courses.map((c) => {
              const pct = c.total_lessons > 0 ? Math.round((c.completed_lessons / c.total_lessons) * 100) : 0;
              return (
                <Link
                  key={c.id}
                  href={`/courses/${c.slug}`}
                  className={`block bg-ivory rounded-2xl card-shadow p-6 border border-border border-t-4 ${colorMap[c.color] || "border-t-terracotta"} hover:-translate-y-0.5 transition`}
                >
                  <span className="text-xs uppercase tracking-wider font-bold text-terracotta-dark">{c.subject}</span>
                  <h3 className="text-lg mt-1 mb-2">{c.title}</h3>
                  <p className="text-sm text-warm-gray mb-4">{c.description}</p>
                  <div className="w-full bg-cream rounded-full h-2 mb-1">
                    <div className="bg-terracotta h-2 rounded-full" style={{ width: `${pct}%` }} />
                  </div>
                  <span className="text-xs text-warm-gray-light">{c.completed_lessons}/{c.total_lessons} lessons complete</span>
                </Link>
              );
            })}
          </div>
        </section>

        {achievements.length > 0 && (
          <section className="mb-10">
            <h2 className="text-xl mb-4">My Achievements</h2>
            <div className="flex flex-wrap gap-3">
              {achievements.map((a) => (
                <div key={a.id} title={a.description} className="flex items-center gap-2 bg-amber/15 border border-amber/30 rounded-full pl-2 pr-4 py-2">
                  <span className="text-2xl">{a.icon}</span>
                  <span className="text-sm font-semibold text-plum">{a.title}</span>
                </div>
              ))}
            </div>
          </section>
        )}

        <section>
          <h2 className="text-xl mb-4">Live Classes</h2>
          <div className="grid sm:grid-cols-3 gap-5">
            {liveClasses.map((lc) => (
              <div key={lc.id} className="bg-ivory rounded-2xl card-shadow p-6 border border-border">
                <h3 className="text-base mb-1">{lc.title}</h3>
                <p className="text-xs text-warm-gray mb-3">{lc.description}</p>
                <p className="text-sm font-semibold text-plum">{lc.schedule_text}</p>
                <p className="text-xs text-warm-gray-light mt-1">with {lc.teacher_name}</p>
              </div>
            ))}
          </div>
        </section>
      </main>
    </div>
  );
}
