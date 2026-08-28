"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function EditStudentEmailButton({ studentId, currentEmail }: { studentId: number; currentEmail: string }) {
  const router = useRouter();
  const [editing, setEditing] = useState(false);
  const [value, setValue] = useState(currentEmail);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState("");
  const [saved, setSaved] = useState(false);

  async function handleSave() {
    setSaving(true);
    setError("");
    try {
      const res = await fetch(`/api/admin/students/${studentId}/update-email`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email: value }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Couldn't update the email.");
      setSaved(true);
      setEditing(false);
      router.refresh();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Couldn't update the email.");
    } finally {
      setSaving(false);
    }
  }

  if (editing) {
    return (
      <div className="flex items-center gap-2 text-sm flex-wrap">
        <input
          type="email"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-1.5 text-charcoal text-sm focus:outline-none focus:ring-2 focus:ring-terracotta"
          autoFocus
        />
        <button
          onClick={handleSave}
          disabled={saving || !value.includes("@")}
          className="text-terracotta-dark font-semibold border border-terracotta-dark rounded-full px-3 py-1 hover:bg-terracotta hover:text-ivory transition disabled:opacity-60"
        >
          {saving ? "Saving…" : "Save"}
        </button>
        <button onClick={() => { setEditing(false); setValue(currentEmail); setError(""); }} className="text-warm-gray-light font-semibold px-2">
          Cancel
        </button>
        {error && <span className="text-xs text-terracotta-dark font-semibold w-full">{error}</span>}
      </div>
    );
  }

  return (
    <button
      onClick={() => setEditing(true)}
      className="text-sm font-semibold text-warm-gray border border-border rounded-full px-4 py-1.5 hover:border-terracotta-dark hover:text-terracotta-dark transition"
    >
      {saved ? "✓ Login email updated -- edit again" : "Edit login email"}
    </button>
  );
}
