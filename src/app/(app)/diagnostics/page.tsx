import { redirect } from "next/navigation";
import Link from "next/link";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";

export const dynamic = "force-dynamic";

const PERIOD_LABEL: Record<string, string> = { BOY: "Beginning of Year", MOY: "Middle of Year" };

export default async function DiagnosticsListPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const rows = (await db().sql`
    SELECT d.id, d.period, d.status, d.correct_count, d.total_questions, d.school_year,
           c.title AS course_title, c.subject
    FROM diagnostics d
    JOIN courses c ON c.id = d.course_id
    WHERE d.student_id = ${student.id}
    ORDER BY d.school_year DESC, c.subject, d.period
  `) as unknown as {
    id: number; period: "BOY" | "MOY"; status: string; correct_count: number | null; total_questions: number;
    school_year: string; course_title: string; subject: string;
  }[];

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-2xl mx-auto w-full px-6 py-10">
        <h1 className="text-2xl mb-1">Check-Ins</h1>
        <p className="text-warm-gray mb-6 text-sm">
          Short beginning- and middle-of-year check-ins in Math and English, so you and your family can see how things are going.
        </p>

        {rows.length === 0 ? (
          <p className="text-sm text-warm-gray-light italic">No check-ins assigned yet.</p>
        ) : (
          <div className="flex flex-col gap-3">
            {rows.map((r) => (
              <Link
                key={r.id}
                href={`/diagnostics/${r.id}`}
                className="bg-ivory rounded-2xl card-shadow border border-border p-5 flex items-center justify-between gap-4 hover:border-terracotta-dark/40 transition"
              >
                <div>
                  <span className="text-xs uppercase tracking-wide font-bold text-terracotta-dark block mb-1">
                    {PERIOD_LABEL[r.period]} &middot; {r.subject}
                  </span>
                  <h2 className="text-base text-charcoal font-medium">{r.course_title}</h2>
                </div>
                <span
                  className={`text-xs font-semibold rounded-full px-3 py-1.5 shrink-0 ${
                    r.status === "completed" ? "bg-sage/20 text-sage-dark" : "bg-amber/20 text-terracotta-dark"
                  }`}
                >
                  {r.status === "completed" ? `Done — ${r.correct_count}/${r.total_questions}` : "Start"}
                </span>
              </Link>
            ))}
          </div>
        )}
      </main>
    </div>
  );
}
