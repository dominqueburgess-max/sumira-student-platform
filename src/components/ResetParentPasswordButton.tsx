"use client";

import { useState } from "react";

export function ResetParentPasswordButton({ parentId, parentEmail }: { parentId: number; parentEmail: string }) {
  const [loading, setLoading] = useState(false);
  const [result, setResult] = useState<{ email: string; tempPassword: string } | null>(null);
  const [error, setError] = useState("");
  const [confirming, setConfirming] = useState(false);

  async function handleReset() {
    setLoading(true);
    setError("");
    try {
      const res = await fetch(`/api/admin/parents/${parentId}/reset-password`, { method: "POST" });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || "Couldn't reset the password.");
      setResult({ email: data.email, tempPassword: data.tempPassword });
      setConfirming(false);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Couldn't reset the password.");
    } finally {
      setLoading(false);
    }
  }

  if (result) {
    return (
      <div className="bg-sage/10 border border-sage/30 rounded-xl px-4 py-3 text-sm">
        <p className="font-semibold text-sage-dark mb-1">New login ready to share with the parent:</p>
        <p className="text-charcoal">Email: <span className="font-mono">{result.email}</span></p>
        <p className="text-charcoal">Password: <span className="font-mono">{result.tempPassword}</span></p>
        <p className="text-xs text-warm-gray-light mt-2">This is shown once — copy it now. The old password no longer works.</p>
      </div>
    );
  }

  if (confirming) {
    return (
      <div className="flex items-center gap-2 text-sm flex-wrap">
        <span className="text-warm-gray">Reset password for {parentEmail}?</span>
        <button
          onClick={handleReset}
          disabled={loading}
          className="text-terracotta-dark font-semibold border border-terracotta-dark rounded-full px-3 py-1 hover:bg-terracotta hover:text-ivory transition disabled:opacity-60"
        >
          {loading ? "Resetting…" : "Yes, reset it"}
        </button>
        <button onClick={() => setConfirming(false)} className="text-warm-gray-light font-semibold px-2">Cancel</button>
      </div>
    );
  }

  return (
    <div>
      <button
        onClick={() => setConfirming(true)}
        className="text-sm font-semibold text-warm-gray border border-border rounded-full px-4 py-1.5 hover:border-terracotta-dark hover:text-terracotta-dark transition"
      >
        Reset password
      </button>
      {error && <p className="text-xs text-terracotta-dark font-semibold mt-2">{error}</p>}
    </div>
  );
}
