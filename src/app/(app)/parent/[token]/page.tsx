import { notFound } from "next/navigation";
import { db } from "@/lib/db";
import { PrintButton } from "@/components/PrintButton";

export default async function ParentViewPage({ params }: { params: Promise<{ token: string }> }) {
  const { token } = await params;

  const tokenRows = await db().sql`
    SELECT s.* FROM parent_access_tokens pat
    JOIN students s ON s.id = pat.student_id
    WHERE pat.token = ${token}
  `;
  if (!tokenRows.length) notFound();
  const student = tokenRows[0];

  const courses = await db().sql`
    SELECT c.id, c.title, c.subject, c.color,
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

  const standards = await db().sql`
    SELECT DISTINCT l.standards_code, l.standards_description, c.title AS course_title, c.subject
    FROM lesson_progress lp
    JOIN lessons l ON l.id = lp.lesson_id
    JOIN units u ON u.id = l.unit_id
    JOIN courses c ON c.id = u.course_id
    WHERE lp.student_id = ${student.id} AND lp.status = 'completed' AND l.standards_code IS NOT NULL
    ORDER BY c.subject, l.standards_code
  `;

  const achievements = await db().sql`SELECT * FROM achievements WHERE student_id = ${student.id} ORDER BY earned_at`;
  const portfolio = await db().sql`SELECT * FROM portfolio_items WHERE student_id = ${student.id} ORDER BY created_at DESC LIMIT 12`;

  return (
    <div className="min-h-screen bg-cream">
      <div className="max-w-4xl mx-auto px-6 py-10 print:py-0">
        <div className="flex items-center justify-between mb-8 print:hidden">
          <div>
            <div className="font-serif text-xl text-plum">SU MIRA<span className="text-terracotta-dark">LEARNING STUDIO</span></div>
            <p className="text-xs text-warm-gray">Parent / Family View — read only</p>
          </div>
          <PrintButton />
        </div>

        <div className="bg-ivory rounded-2xl border border-border p-8 mb-8">
          <h1 className="text-3xl mb-1">{student.first_name} {student.last_name}</h1>
          <p className="text-warm-gray">{student.studio === "wonder" ? "Wonder Studio" : student.studio} &middot; Grade {student.grade_level}</p>
        </div>

        <section className="mb-8">
          <h2 className="text-xl mb-4">Course Progress</h2>
          <div className="grid sm:grid-cols-2 gap-4">
            {courses.map((c) => {
              const pct = c.total_lessons > 0 ? Math.round((c.completed_lessons / c.total_lessons) * 100) : 0;
              return (
                <div key={c.id} className="bg-ivory rounded-xl border border-border p-5">
                  <span className="text-xs uppercase tracking-wider font-bold text-terracotta-dark">{c.subject}</span>
                  <h3 className="text-base mb-2">{c.title}</h3>
                  <div className="w-full bg-cream rounded-full h-2 mb-1">
                    <div className="bg-terracotta h-2 rounded-full" style={{ width: `${pct}%` }} />
                  </div>
                  <span className="text-xs text-warm-gray-light">{c.completed_lessons}/{c.total_lessons} lessons complete ({pct}%)</span>
                </div>
              );
            })}
          </div>
        </section>

        <section className="mb-8">
          <h2 className="text-xl mb-4">NC Standards Mastery Report</h2>
          <p className="text-sm text-warm-gray mb-4">Standards below reflect lessons {student.first_name} has completed, tagged to the NC Standard Course of Study / NC Early Learning and Development Standards.</p>
          {standards.length === 0 ? (
            <p className="text-sm text-warm-gray-light italic">No standards recorded yet — check back after a few lessons are complete.</p>
          ) : (
            <div className="bg-ivory rounded-xl border border-border overflow-hidden">
              <table className="w-full text-sm">
                <thead className="bg-cream text-left">
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
                      <td className="px-4 py-2 font-semibold text-terracotta-dark whitespace-nowrap">{s.standards_code}</td>
                      <td className="px-4 py-2 text-charcoal">{s.standards_description}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </section>

        {achievements.length > 0 && (
          <section className="mb-8 print:hidden">
            <h2 className="text-xl mb-4">Achievements</h2>
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

        {portfolio.length > 0 && (
          <section className="mb-8 print:hidden">
            <h2 className="text-xl mb-4">Recent Portfolio Pieces</h2>
            <div className="grid sm:grid-cols-3 gap-4">
              {portfolio.map((p) => (
                <div key={p.id} className="bg-ivory rounded-xl border border-border p-4">
                  <p className="font-semibold text-plum text-sm mb-1">{p.title}</p>
                  {p.description && <p className="text-xs text-warm-gray">{p.description}</p>}
                </div>
              ))}
            </div>
          </section>
        )}
      </div>
    </div>
  );
}
