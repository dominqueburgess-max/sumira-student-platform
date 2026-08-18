"use client";

import { useState } from "react";

type Practice = {
  explanation: string;
  question: string;
  options: string[];
  correctIndex: number;
};

export function PracticeWithMira({ questionId }: { questionId: number }) {
  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);
  const [practice, setPractice] = useState<Practice | null>(null);
  const [picked, setPicked] = useState<number | null>(null);
  const [error, setError] = useState<string | null>(null);

  async function handleOpen() {
    setOpen(true);
    if (practice) return;
    setLoading(true);
    setError(null);
    const res = await fetch("/api/practice", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ questionId }),
    });
    setLoading(false);
    if (res.ok) {
      setPractice(await res.json());
    } else {
      const data = await res.json().catch(() => ({}));
      setError(data.error || "Mira couldn't come up with a practice question right now.");
    }
  }

  if (!open) {
    return (
      <button
        type="button"
        onClick={handleOpen}
        className="mt-2 text-sm font-semibold text-plum underline decoration-dotted hover:text-plum-dark"
      >
        🪄 Practice this with Mira
      </button>
    );
  }

  return (
    <div className="mt-3 bg-plum/5 border border-plum/20 rounded-xl p-4">
      {loading && <p className="text-sm text-warm-gray">Mira is thinking of a practice question for you...</p>}
      {error && <p className="text-sm text-terracotta-dark">{error}</p>}
      {practice && (
        <div>
          <p className="text-sm text-charcoal mb-3">{practice.explanation}</p>
          <p className="font-semibold text-charcoal mb-2">{practice.question}</p>
          <div className="flex flex-col gap-2">
            {practice.options.map((opt, i) => {
              const isPicked = picked === i;
              const showResult = picked !== null;
              return (
                <button
                  key={i}
                  type="button"
                  onClick={() => setPicked(i)}
                  disabled={showResult}
                  className={`text-left rounded-lg border px-4 py-2 transition ${
                    showResult && i === practice.correctIndex
                      ? "border-sage bg-sage/15"
                      : showResult && isPicked
                      ? "border-terracotta bg-terracotta/10"
                      : "border-border bg-ivory hover:border-plum/40"
                  }`}
                >
                  {opt}
                </button>
              );
            })}
          </div>
          {picked !== null && (
            <p className={`mt-3 text-sm font-semibold ${picked === practice.correctIndex ? "text-sage-dark" : "text-terracotta-dark"}`}>
              {picked === practice.correctIndex ? "✓ Great job! You've got it." : "Close — take a look at the highlighted answer above."}
            </p>
          )}
        </div>
      )}
    </div>
  );
}
