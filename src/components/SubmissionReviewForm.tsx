"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function SubmissionReviewForm({ submissionId, defaultGrade, defaultFeedback }: {
  submissionId: number;
  defaultGrade: string;
  defaultFeedback: string;
}) {
  const router = useRouter();
  const [grade, setGrade] = useState(defaultGrade);
  const [feedback, setFeedback] = useState(defaultFeedback);
  const [loading, setLoading] = useState<"release" | "revision" | null>(null);
  const [error, setError] = useState("");

  async function submit(action: "release" | "revision") {
    setLoading(action);
    setError("");
    const res = await fetch(`/api/admin/submissions/${submissionId}/review`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ action, grade, feedback }),
    });
    setLoading(null);
    if (!res.ok) {
      const data = await res.json().catch(() => ({}));
      setError(data.error || "Something went wrong.");
      return;
    }
    router.refresh();
  }

  return (
    <div className="mt-3 border-t border-border pt-3 flex flex-col gap-2">
      {error && <div className="bg-red-50 text-red-700 text-xs rounded-lg px-3 py-2 border border-red-200">{error}</div>}
      <label className="flex flex-col gap-1 text-xs font-semibold text-plum">
        Final grade
        <input value={grade} onChange={(e) => setGrade(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-1.5 text-sm text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-xs font-semibold text-plum">
        Final feedback (shown to student & family)
        <textarea value={feedback} onChange={(e) => setFeedback(e.target.value)} rows={3}
          className="rounded-lg border border-border bg-ivory px-3 py-1.5 text-sm text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <div className="flex gap-2 mt-1">
        <button onClick={() => submit("release")} disabled={loading !== null}
          className="bg-sage-dark hover:bg-sage text-ivory text-xs font-semibold rounded-full px-4 py-2 transition disabled:opacity-60">
          {loading === "release" ? "Releasing…" : "Approve & Release"}
        </button>
        <button onClick={() => submit("revision")} disabled={loading !== null}
          className="bg-terracotta hover:bg-terracotta-dark text-ivory text-xs font-semibold rounded-full px-4 py-2 transition disabled:opacity-60">
          {loading === "revision" ? "Sending back…" : "Send Back for Revision"}
        </button>
      </div>
    </div>
  );
}
