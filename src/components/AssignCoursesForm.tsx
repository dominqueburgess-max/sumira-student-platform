"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

type CourseRow = {
  id: number;
  slug: string;
  title: string;
  subject: string;
  grade_level: string;
  status: string;
};

export function AssignCoursesForm({
  studentId,
  bySubject,
  assignedIds,
}: {
  studentId: number;
  bySubject: { subject: string; courses: CourseRow[] }[];
  assignedIds: number[];
}) {
  const router = useRouter();
  const [selected, setSelected] = useState<Set<number>>(new Set(assignedIds));
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState("");

  function toggle(id: number) {
    setSaved(false);
    setSelected((prev) => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  }

  async function handleSave() {
    setSaving(true);
    setError("");
    try {
      const res = await fetch("/api/admin/assign-courses", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ studentId, courseIds: Array.from(selected) }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        throw new Error(data.error || "Couldn't save. Please try again.");
      }
      setSaved(true);
      router.refresh();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Couldn't save. Please try again.");
    } finally {
      setSaving(false);
    }
  }

  return (
    <div>
      {bySubject.map(({ subject, courses }) => (
        <div key={subject} className="bg-ivory rounded-2xl border border-border p-6 mb-5">
          <h2 className="text-lg font-semibold text-plum mb-4">{subject}</h2>
          <div className="flex flex-col gap-2">
            {courses.map((c) => (
              <label
                key={c.id}
                className="flex items-center gap-3 rounded-lg px-3 py-2 hover:bg-cream cursor-pointer"
              >
                <input
                  type="checkbox"
                  checked={selected.has(c.id)}
                  onChange={() => toggle(c.id)}
                  className="w-4 h-4"
                />
                <span className="text-sm text-plum font-medium">{c.title}</span>
                <span className="text-xs text-warm-gray-light">Grades {c.grade_level}</span>
                {c.status === "coming_soon" && (
                  <span className="ml-auto text-xs font-semibold uppercase tracking-wide rounded-full px-2.5 py-0.5 bg-amber/20 text-charcoal">
                    Content coming soon
                  </span>
                )}
              </label>
            ))}
          </div>
        </div>
      ))}

      <div className="flex items-center gap-4 mt-2">
        <button
          onClick={handleSave}
          disabled={saving}
          className="bg-terracotta text-ivory font-semibold rounded-full px-6 py-2.5 hover:bg-terracotta-dark transition disabled:opacity-60"
        >
          {saving ? "Saving…" : "Save assignments"}
        </button>
        {saved && <span className="text-sm text-sage-dark font-semibold">Saved ✓</span>}
        {error && <span className="text-sm text-terracotta-dark font-semibold">{error}</span>}
      </div>
      <p className="text-xs text-warm-gray-light mt-4">
        Courses marked &ldquo;Content coming soon&rdquo; will appear on the student&rsquo;s dashboard now, but lessons aren&rsquo;t written yet &mdash; they&rsquo;ll populate automatically as the content library is built out.
      </p>
    </div>
  );
}
