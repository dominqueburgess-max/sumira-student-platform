"use client";

import { useState } from "react";

export function PlpResumeCheckoutButton({ planId }: { planId: number }) {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  async function handleClick() {
    setLoading(true);
    setError("");
    const res = await fetch("/api/plp/checkout", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ planId }),
    });
    const data = await res.json().catch(() => ({}));
    setLoading(false);
    if (!res.ok) {
      setError(data.error || "Something went wrong.");
      return;
    }
    window.location.href = data.url;
  }

  return (
    <div className="flex flex-col items-start gap-1">
      <button onClick={handleClick} disabled={loading}
        className="text-terracotta-dark text-sm font-semibold shrink-0">
        {loading ? "Redirecting…" : "Finish payment →"}
      </button>
      {error && <span className="text-xs text-red-600">{error}</span>}
    </div>
  );
}
