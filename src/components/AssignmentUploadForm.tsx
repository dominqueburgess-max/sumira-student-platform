"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

type LessonOption = { lessonId: number; lessonTitle: string };
type CourseGroup = { courseId: number; courseTitle: string; lessons: LessonOption[] };

const inputClass = "rounded-lg border border-border bg-cream px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";

export function AssignmentUploadForm({ courseGroups }: { courseGroups: CourseGroup[] }) {
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [courseId, setCourseId] = useState("");
  const [lessonId, setLessonId] = useState("");
  const [title, setTitle] = useState("");
  const [notes, setNotes] = useState("");
  const [mode, setMode] = useState<"file" | "text">("file");
  const [pastedText, setPastedText] = useState("");
  const [file, setFile] = useState<File | null>(null);
  const [status, setStatus] = useState<"idle" | "submitting" | "error">("idle");
  const [error, setError] = useState("");

  const lessonsForCourse = courseGroups.find((g) => String(g.courseId) === courseId)?.lessons || [];

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setError("");
    setStatus("submitting");

    const formData = new FormData();
    formData.set("title", title);
    if (notes) formData.set("notes", notes);
    if (lessonId) formData.set("lessonId", lessonId);
    if (mode === "file" && file) formData.set("file", file);
    if (mode === "text" && pastedText) formData.set("pastedText", pastedText);

    const res = await fetch("/api/portfolio/submissions", { method: "POST", body: formData });
    const data = await res.json().catch(() => ({}));
    setStatus("idle");

    if (!res.ok) {
      setError(data.error || "Something went wrong submitting your work.");
      return;
    }

    setCourseId("");
    setLessonId("");
    setTitle("");
    setNotes("");
    setPastedText("");
    setFile(null);
    setOpen(false);
    router.refresh();
  }

  if (!open) {
    return (
      <button
        onClick={() => setOpen(true)}
        className="bg-plum hover:bg-plum-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition"
      >
        + Turn In Homework or a Project
      </button>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="bg-ivory border border-border rounded-2xl p-6 flex flex-col gap-3 max-w-lg">
      {error && <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>}

      {courseGroups.length > 0 && (
        <label className={labelClass}>
          Which class is this for? <span className="font-normal text-warm-gray">(optional)</span>
          <select className={inputClass} value={courseId} onChange={(e) => { setCourseId(e.target.value); setLessonId(""); }}>
            <option value="">Not tied to a specific class</option>
            {courseGroups.map((g) => (
              <option key={g.courseId} value={g.courseId}>{g.courseTitle}</option>
            ))}
          </select>
        </label>
      )}

      {lessonsForCourse.length > 0 && (
        <label className={labelClass}>
          Which assignment/project?
          <select className={inputClass} value={lessonId} onChange={(e) => setLessonId(e.target.value)}>
            <option value="">General submission for this class</option>
            {lessonsForCourse.map((l) => (
              <option key={l.lessonId} value={l.lessonId}>{l.lessonTitle}</option>
            ))}
          </select>
        </label>
      )}

      <label className={labelClass}>
        Title
        <input required className={inputClass} value={title} onChange={(e) => setTitle(e.target.value)} placeholder="e.g. Week 3 Math Practice" />
      </label>

      <label className={labelClass}>
        Notes for your teacher <span className="font-normal text-warm-gray">(optional)</span>
        <textarea className={inputClass} rows={2} value={notes} onChange={(e) => setNotes(e.target.value)} />
      </label>

      <div className="flex gap-2 text-xs font-semibold">
        <button type="button" onClick={() => setMode("file")}
          className={`rounded-full px-4 py-1.5 transition ${mode === "file" ? "bg-terracotta text-ivory" : "bg-cream text-warm-gray"}`}>
          Upload a file
        </button>
        <button type="button" onClick={() => setMode("text")}
          className={`rounded-full px-4 py-1.5 transition ${mode === "text" ? "bg-terracotta text-ivory" : "bg-cream text-warm-gray"}`}>
          Type it in
        </button>
      </div>

      {mode === "file" ? (
        <label className={labelClass}>
          File <span className="font-normal text-warm-gray">(photo, PDF, or Word doc — 15MB max)</span>
          <input
            type="file"
            accept="image/*,application/pdf,application/vnd.openxmlformats-officedocument.wordprocessingml.document"
            onChange={(e) => setFile(e.target.files?.[0] || null)}
            className={inputClass}
          />
        </label>
      ) : (
        <label className={labelClass}>
          Your work
          <textarea className={inputClass} rows={6} value={pastedText} onChange={(e) => setPastedText(e.target.value)} />
        </label>
      )}

      <div className="flex gap-3 mt-2">
        <button type="submit" disabled={status === "submitting"}
          className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition disabled:opacity-60">
          {status === "submitting" ? "Submitting & grading…" : "Turn It In"}
        </button>
        <button type="button" onClick={() => setOpen(false)} className="text-warm-gray text-sm font-semibold">
          Cancel
        </button>
      </div>
    </form>
  );
}
