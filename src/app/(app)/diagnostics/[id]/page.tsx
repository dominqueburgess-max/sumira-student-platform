import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { DiagnosticQuiz, type DiagnosticQuizQuestion } from "@/components/DiagnosticQuiz";

export const dynamic = "force-dynamic";

const PERIOD_LABEL: Record<string, string> = { BOY: "Beginning of Year", MOY: "Middle of Year" };

export default async function DiagnosticDetailPage({ params }: { params: Promise<{ id: string }> }) {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const { id } = await params;
  const diagnosticId = Number(id);

  const diagRows = await db().sql`
    SELECT d.id, d.student_id, d.period, d.status, d.correct_count, d.total_questions, d.ai_summary, c.title AS course_title, c.subject
    FROM diagnostics d
    JOIN courses c ON c.id = d.course_id
    WHERE d.id = ${diagnosticId}
  `;
  if (!diagRows.length) notFound();
  const diag = diagRows[0] as {
    id: number; student_id: number; period: "BOY" | "MOY"; status: string; correct_count: number | null;
    total_questions: number; ai_summary: string | null; course_title: string; subject: string;
  };
  if (diag.student_id !== student.id) redirect("/diagnostics");

  // Never select correct_option_index into what gets passed to the client.
  const questionRows = await db().sql`
    SELECT id, prompt, options FROM diagnostic_questions WHERE diagnostic_id = ${diagnosticId} ORDER BY position ASC
  `;
  const questions: DiagnosticQuizQuestion[] = questionRows.map((q) => ({ id: q.id, prompt: q.prompt, options: q.options }));

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-2xl mx-auto w-full px-6 py-10">
        <Link href="/diagnostics" className="text-sm text-terracotta-dark font-semibold">&larr; All check-ins</Link>
        <h1 className="text-2xl mt-3 mb-1">{PERIOD_LABEL[diag.period]} Check-In</h1>
        <p className="text-warm-gray mb-6 text-sm">
          {diag.subject} &middot; {diag.course_title}. Just do your best — this helps us see where to focus next, it&rsquo;s not graded like a test.
        </p>

        {diag.status === "completed" ? (
          <div className="bg-sage/10 border border-sage/30 rounded-2xl p-6">
            <h2 className="text-lg font-serif text-sage-dark mb-2">Completed</h2>
            <p className="text-sm text-charcoal mb-3">
              You got {diag.correct_count} of {diag.total_questions} correct.
            </p>
            {diag.ai_summary && <p className="text-sm text-charcoal whitespace-pre-line">{diag.ai_summary}</p>}
          </div>
        ) : (
          <DiagnosticQuiz diagnosticId={diag.id} questions={questions} />
        )}
      </main>
    </div>
  );
}
