"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

const STATES = [
  "AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA",
  "ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK",
  "OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
];

export function HomeStateSelect({ studentId, currentState }: { studentId: number; currentState: string }) {
  const router = useRouter();
  const [value, setValue] = useState(currentState || "NC");
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState("");

  async function handleChange(newState: string) {
    const prev = value;
    setValue(newState);
    setSaving(true);
    setError("");
    try {
      const res = await fetch(`/api/admin/students/${studentId}/update-home-state`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ homeState: newState }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Couldn't update home state.");
      router.refresh();
    } catch (e) {
      setValue(prev);
      setError(e instanceof Error ? e.message : "Couldn't update home state.");
    } finally {
      setSaving(false);
    }
  }

  return (
    <div className="flex flex-col gap-1">
      <select
        value={value}
        disabled={saving}
        onChange={(e) => handleChange(e.target.value)}
        className="text-sm rounded-lg border border-border bg-ivory px-2 py-1.5 text-charcoal focus:outline-none focus:ring-2 focus:ring-terracotta disabled:opacity-60"
      >
        {STATES.map((s) => (
          <option key={s} value={s}>{s}</option>
        ))}
      </select>
      {error && <span className="text-xs text-terracotta-dark font-semibold">{error}</span>}
    </div>
  );
}
