"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export type DiagnosticQuizQuestion = {
  id: number;
  prompt: string;
  options: string[];
};

export function DiagnosticQuiz({ diagnosticId, questions }: { diagnosticId: number; questions: DiagnosticQuizQuestion[] }) {
  const router = useRouter();
  const [selected, setSelected] = useState<Record<number, number>>({});
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState("");
  const [result, setResult] = useState<{ correctCount: number; totalQuestions: number; summary: string } | null>(null);

  const answeredCount = Object.keys(selected).length;

  async function handleSubmit() {
    setSubmitting(true);
    setError("");
    try {
      const answers = questions
        .filter((q) => selected[q.id] !== undefined)
        .map((q) => ({ questionId: q.id, selectedIndex: selected[q.id] }));
      const res = await fetch(`/api/diagnostics/${diagnosticId}/submit`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ answers }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Couldn't submit — try again.");
      setResult(data);
      router.refresh();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Couldn't submit — try again.");
    } finally {
      setSubmitting(false);
    }
  }

  if (result) {
    return (
      <div className="bg-sage/10 border border-sage/30 rounded-2xl p-6">
        <h2 className="text-lg font-serif text-sage-dark mb-2">Nice work — you're all done!</h2>
        <p className="text-sm text-charcoal mb-3">
          You got {result.correctCount} of {result.totalQuestions} correct.
        </p>
        <p className="text-sm text-charcoal whitespace-pre-line">{result.summary}</p>
      </div>
    );
  }

  return (
    <div className="flex flex-col gap-5">
      {questions.map((q, i) => (
        <div key={q.id} className="bg-ivory rounded-2xl card-shadow border border-border p-6">
          <p className="text-xs font-bold text-terracotta-dark uppercase tracking-wide mb-2">Question {i + 1} of {questions.length}</p>
          <p className="text-charcoal mb-4">{q.prompt}</p>
          <div className="flex flex-col gap-2">
            {q.options.map((opt, idx) => (
              <label
                key={idx}
                className={`flex items-center gap-3 rounded-xl border px-4 py-3 cursor-pointer transition ${
                  selected[q.id] === idx ? "border-terracotta-dark bg-terracotta/10" : "border-border bg-cream hover:border-terracotta-dark/40"
                }`}
              >
                <input
                  type="radio"
                  name={`q-${q.id}`}
                  checked={selected[q.id] === idx}
                  onChange={() => setSelected((s) => ({ ...s, [q.id]: idx }))}
                  className="accent-terracotta-dark"
                />
                <span className="text-sm text-charcoal">{opt}</span>
              </label>
            ))}
          </div>
        </div>
      ))}

      <div className="sticky bottom-4 bg-ivory border border-border rounded-2xl card-shadow px-5 py-4 flex items-center justify-between gap-4">
        <span className="text-sm text-warm-gray">{answeredCount} of {questions.length} answered</span>
        <button
          onClick={handleSubmit}
          disabled={submitting || answeredCount === 0}
          className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition disabled:opacity-60"
        >
          {submitting ? "Submitting…" : "Submit check-in"}
        </button>
      </div>
      {error && <p className="text-sm text-red-600 font-semibold">{error}</p>}
    </div>
  );
}
