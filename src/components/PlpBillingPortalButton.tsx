"use client";

import { useState } from "react";

export function PlpBillingPortalButton() {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  async function handleClick() {
    setLoading(true);
    setError("");
    const res = await fetch("/api/plp/billing-portal", { method: "POST" });
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
        className="text-sm font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-4 py-2 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition disabled:opacity-60">
        {loading ? "Opening billing…" : "Manage billing"}
      </button>
      {error && <span className="text-xs text-red-600">{error}</span>}
    </div>
  );
}
