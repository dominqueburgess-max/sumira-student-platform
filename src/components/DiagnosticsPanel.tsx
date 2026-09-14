"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export type DiagnosticCourseRow = {
  courseId: number;
  courseTitle: string;
  subject: string;
  boy: { id: number; status: string; correctCount: number | null; totalQuestions: number } | null;
  moy: { id: number; status: string; correctCount: number | null; totalQuestions: number } | null;
};

const STATUS_LABEL: Record<string, string> = {
  not_started: "Ready to take",
  in_progress: "In progress",
  completed: "Completed",
};

function CellButton({
  studentId,
  courseId,
  period,
  existing,
  onDone,
}: {
  studentId: number;
  courseId: number;
  period: "BOY" | "MOY";
  existing: { id: number; status: string; correctCount: number | null; totalQuestions: number } | null;
  onDone: () => void;
}) {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  async function handleGenerate() {
    setLoading(true);
    setError("");
    try {
      const res = await fetch("/api/admin/diagnostics/generate", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ studentId, courseId, period }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Couldn't generate the diagnostic.");
      onDone();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Couldn't generate the diagnostic.");
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="flex flex-col gap-1">
      {existing ? (
        <div className="flex items-center gap-2 flex-wrap">
          <span
            className={`text-xs font-semibold rounded-full px-3 py-1 ${
              existing.status === "completed" ? "bg-sage/20 text-sage-dark" : "bg-amber/20 text-terracotta-dark"
            }`}
          >
            {STATUS_LABEL[existing.status] || existing.status}
            {existing.status === "completed" && existing.correctCount !== null ? ` — ${existing.correctCount}/${existing.totalQuestions}` : ""}
          </span>
          <button
            onClick={handleGenerate}
            disabled={loading}
            className="text-xs font-semibold text-warm-gray underline hover:text-terracotta-dark disabled:opacity-60"
          >
            {loading ? "Regenerating…" : "Regenerate"}
          </button>
        </div>
      ) : (
        <button
          onClick={handleGenerate}
          disabled={loading}
          className="text-xs font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-3 py-1.5 hover:bg-terracotta hover:text-ivory transition disabled:opacity-60 self-start"
        >
          {loading ? "Generating…" : `Generate ${period} check-in`}
        </button>
      )}
      {error && <p className="text-xs text-red-600">{error}</p>}
    </div>
  );
}

/**
 * Admin panel on a Venture Studio student's detail page: one row per
 * Math/English course they're enrolled in, with a button to generate (or
 * regenerate) a Beginning-of-Year or Middle-of-Year diagnostic for that
 * course. End-of-year assessment stays external/standardized -- this panel
 * only covers the two in-house checkpoints.
 */
export function DiagnosticsPanel({ studentId, rows }: { studentId: number; rows: DiagnosticCourseRow[] }) {
  const router = useRouter();

  if (rows.length === 0) {
    return (
      <p className="text-sm text-warm-gray-light italic">
        This student isn&rsquo;t enrolled in a Math or English course yet, so no diagnostic can be generated.
      </p>
    );
  }

  return (
    <div className="bg-cream rounded-xl border border-border overflow-hidden">
      <table className="w-full text-sm">
        <thead className="bg-ivory text-left">
          <tr>
            <th className="px-4 py-2 font-semibold text-plum">Course</th>
            <th className="px-4 py-2 font-semibold text-plum">Beginning of Year</th>
            <th className="px-4 py-2 font-semibold text-plum">Middle of Year</th>
          </tr>
        </thead>
        <tbody>
          {rows.map((r) => (
            <tr key={r.courseId} className="border-t border-border align-top">
              <td className="px-4 py-3">
                <span className="text-xs uppercase tracking-wide font-bold text-terracotta-dark block">{r.subject}</span>
                <span className="text-charcoal font-medium">{r.courseTitle}</span>
              </td>
              <td className="px-4 py-3">
                <CellButton studentId={studentId} courseId={r.courseId} period="BOY" existing={r.boy} onDone={() => router.refresh()} />
              </td>
              <td className="px-4 py-3">
                <CellButton studentId={studentId} courseId={r.courseId} period="MOY" existing={r.moy} onDone={() => router.refresh()} />
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
