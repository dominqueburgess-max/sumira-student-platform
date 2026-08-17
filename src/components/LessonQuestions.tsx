"use client";

import { useState } from "react";

export type LessonQuestion = {
  id: number;
  question_type: "multiple_choice" | "short_answer";
  prompt: string;
  options: string[] | null;
  priorSelected: number | null;
  priorText: string | null;
  priorCorrect: boolean | null;
};

export function LessonQuestions({ lessonId, questions }: { lessonId: number; questions: LessonQuestion[] }) {
  const [selected, setSelected] = useState<Record<number, number>>(() => {
    const init: Record<number, number> = {};
    questions.forEach((q) => {
      if (q.priorSelected !== null) init[q.id] = q.priorSelected;
    });
    return init;
  });
  const [texts, setTexts] = useState<Record<number, string>>(() => {
    const init: Record<number, string> = {};
    questions.forEach((q) => {
      if (q.priorText) init[q.id] = q.priorText;
    });
    return init;
  });
  const [results, setResults] = useState<Record<number, boolean | null>>(() => {
    const init: Record<number, boolean | null> = {};
    questions.forEach((q) => {
      if (q.priorSelected !== null || q.priorText) init[q.id] = q.priorCorrect;
    });
    return init;
  });
  const [submitted, setSubmitted] = useState<Set<number>>(() => {
    const s = new Set<number>();
    questions.forEach((q) => {
      if (q.priorSelected !== null || q.priorText) s.add(q.id);
    });
    return s;
  });
  const [loading, setLoading] = useState(false);
  const [savedAt, setSavedAt] = useState<number | null>(null);

  if (!questions.length) return null;

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);

    const answers = questions.map((q) =>
      q.question_type === "multiple_choice"
        ? { questionId: q.id, selectedOptionIndex: selected[q.id] ?? null }
        : { questionId: q.id, responseText: texts[q.id] ?? "" }
    );

    const res = await fetch(`/api/lessons/${lessonId}/answers`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ answers }),
    });

    setLoading(false);
    if (res.ok) {
      const data = await res.json();
      const newResults: Record<number, boolean | null> = {};
      const newSubmitted = new Set(submitted);
      for (const r of data.results) {
        newResults[r.questionId] = r.isCorrect;
        newSubmitted.add(r.questionId);
      }
      setResults((prev) => ({ ...prev, ...newResults }));
      setSubmitted(newSubmitted);
      setSavedAt(Date.now());
    }
  }

  return (
    <form onSubmit={handleSubmit} className="mt-8 border-t border-border pt-8 flex flex-col gap-6">
      <h3 className="font-serif text-xl text-plum">Show What You Know</h3>

      {questions.map((q, idx) => (
        <div key={q.id} className="bg-cream rounded-xl p-5">
          <p className="font-semibold text-charcoal mb-3">
            {idx + 1}. {q.prompt}
          </p>

          {q.question_type === "multiple_choice" && q.options && (
            <div className="flex flex-col gap-2">
              {q.options.map((opt, i) => (
                <label
                  key={i}
                  className={`flex items-center gap-3 rounded-lg border px-4 py-2 cursor-pointer transition ${
                    selected[q.id] === i ? "border-terracotta bg-terracotta/10" : "border-border bg-ivory"
                  }`}
                >
                  <input
                    type="radio"
                    name={`q-${q.id}`}
                    checked={selected[q.id] === i}
                    onChange={() => setSelected((prev) => ({ ...prev, [q.id]: i }))}
                    className="accent-terracotta"
                  />
                  <span className="text-charcoal">{opt}</span>
                </label>
              ))}
            </div>
          )}

          {q.question_type === "short_answer" && (
            <textarea
              value={texts[q.id] ?? ""}
              onChange={(e) => setTexts((prev) => ({ ...prev, [q.id]: e.target.value }))}
              rows={3}
              placeholder="Type your answer here..."
              className="w-full rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal focus:outline-none focus:ring-2 focus:ring-terracotta"
            />
          )}

          {submitted.has(q.id) && q.question_type === "multiple_choice" && (
            <p className={`mt-2 text-sm font-semibold ${results[q.id] ? "text-sage-dark" : "text-terracotta-dark"}`}>
              {results[q.id] ? "✓ Correct!" : "Not quite — that's okay, keep learning!"}
            </p>
          )}
          {submitted.has(q.id) && q.question_type === "short_answer" && (
            <p className="mt-2 text-sm font-semibold text-sage-dark">✓ Saved</p>
          )}
        </div>
      ))}

      <div className="flex items-center gap-4">
        <button
          type="submit"
          disabled={loading}
          className="bg-plum hover:bg-plum-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition disabled:opacity-60 self-start"
        >
          {loading ? "Saving..." : "Submit Answers"}
        </button>
        {savedAt && <span className="text-sm text-warm-gray">Your answers are saved.</span>}
      </div>
    </form>
  );
}
