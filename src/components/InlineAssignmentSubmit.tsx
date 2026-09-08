"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

type Props = {
  assignmentId: number;
  alreadySubmitted?: { status: string } | null;
};

const STATUS_LABEL: Record<string, string> = {
  grading: "Submitted — grading now…",
  pending_review: "Submitted — awaiting teacher review",
  released: "Reviewed by your teacher",
  needs_revision: "Sent back — please turn in a new version",
  grading_failed: "Submitted — awaiting teacher review",
};

export function InlineAssignmentSubmit({ assignmentId, alreadySubmitted }: Props) {
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [mode, setMode] = useState<"file" | "text">("file");
  const [pastedText, setPastedText] = useState("");
  const [file, setFile] = useState<File | null>(null);
  const [notes, setNotes] = useState("");
  const [status, setStatus] = useState<"idle" | "submitting" | "error">("idle");
  const [error, setError] = useState("");
  const [done, setDone] = useState(false);

  const showAsDone = done || (alreadySubmitted && alreadySubmitted.status !== "needs_revision");

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setError("");
    if (!file && !pastedText.trim()) {
      setError("Upload a file or paste your work first.");
      return;
    }
    setStatus("submitting");

    const formData = new FormData();
    formData.set("title", "Assignment submission");
    formData.set("assignmentId", String(assignmentId));
    if (notes) formData.set("notes", notes);
    if (mode === "file" && file) formData.set("file", file);
    if (mode === "text" && pastedText) formData.set("pastedText", pastedText);

    const res = await fetch("/api/portfolio/submissions", { method: "POST", body: formData });
    const data = await res.json().catch(() => ({}));
    setStatus("idle");

    if (!res.ok) {
      setError(data.error || "Something went wrong submitting your work.");
      return;
    }
    setDone(true);
    setOpen(false);
    router.refresh();
  }

  if (showAsDone && !open) {
    return (
      <div className="mt-3 bg-sage/10 border border-sage/30 rounded-lg px-4 py-2.5">
        <p className="text-xs font-semibold text-sage-dark">
          ✓ {STATUS_LABEL[alreadySubmitted?.status || "pending_review"]}
        </p>
        {alreadySubmitted?.status === "needs_revision" && (
          <button type="button" onClick={() => setOpen(true)} className="text-xs font-semibold text-terracotta-dark underline mt-1">
            Turn in a new version
          </button>
        )}
      </div>
    );
  }

  if (!open) {
    return (
      <button
        type="button"
        onClick={() => setOpen(true)}
        className="mt-3 bg-plum hover:bg-plum-dark text-ivory font-semibold rounded-full px-5 py-2 text-xs transition"
      >
        Upload My Work
      </button>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="mt-3 bg-cream/60 border border-border rounded-xl p-4 flex flex-col gap-2.5">
      {error && <div className="bg-red-50 text-red-700 text-xs rounded-lg px-3 py-2 border border-red-200">{error}</div>}

      <div className="flex gap-2 text-xs font-semibold">
        <button type="button" onClick={() => setMode("file")}
          className={`rounded-full px-3 py-1 transition ${mode === "file" ? "bg-terracotta text-ivory" : "bg-ivory text-warm-gray border border-border"}`}>
          Upload a file
        </button>
        <button type="button" onClick={() => setMode("text")}
          className={`rounded-full px-3 py-1 transition ${mode === "text" ? "bg-terracotta text-ivory" : "bg-ivory text-warm-gray border border-border"}`}>
          Type it in
        </button>
      </div>

      {mode === "file" ? (
        <input
          type="file"
          accept="image/*,application/pdf,application/vnd.openxmlformats-officedocument.wordprocessingml.document"
          onChange={(e) => setFile(e.target.files?.[0] || null)}
          className="text-xs rounded-lg border border-border bg-ivory px-3 py-2 w-full"
        />
      ) : (
        <textarea
          value={pastedText}
          onChange={(e) => setPastedText(e.target.value)}
          rows={5}
          placeholder="Type your work here..."
          className="text-sm rounded-lg border border-border bg-ivory px-3 py-2 w-full focus:outline-none focus:ring-2 focus:ring-terracotta"
        />
      )}

      <textarea
        value={notes}
        onChange={(e) => setNotes(e.target.value)}
        rows={2}
        placeholder="Note for your teacher (optional)"
        className="text-xs rounded-lg border border-border bg-ivory px-3 py-2 w-full focus:outline-none focus:ring-2 focus:ring-terracotta"
      />

      <div className="flex gap-3">
        <button type="submit" disabled={status === "submitting"}
          className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-5 py-2 text-xs transition disabled:opacity-60">
          {status === "submitting" ? "Submitting & grading…" : "Turn It In"}
        </button>
        <button type="button" onClick={() => setOpen(false)} className="text-warm-gray text-xs font-semibold">
          Cancel
        </button>
      </div>
    </form>
  );
}
