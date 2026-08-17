"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function PortfolioForm() {
  const router = useRouter();
  const [open, setOpen] = useState(false);
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [mediaUrl, setMediaUrl] = useState("");
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);
    const res = await fetch("/api/portfolio", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ title, description, mediaUrl }),
    });
    setLoading(false);
    if (res.ok) {
      setTitle("");
      setDescription("");
      setMediaUrl("");
      setOpen(false);
      router.refresh();
    }
  }

  if (!open) {
    return (
      <button
        onClick={() => setOpen(true)}
        className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition"
      >
        + Add to My Portfolio
      </button>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="bg-ivory border border-border rounded-2xl p-6 flex flex-col gap-3 max-w-md">
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        What did you create?
        <input required value={title} onChange={(e) => setTitle(e.target.value)}
          className="rounded-lg border border-border bg-cream px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Tell us about it
        <textarea value={description} onChange={(e) => setDescription(e.target.value)} rows={3}
          className="rounded-lg border border-border bg-cream px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Picture link (optional)
        <input value={mediaUrl} onChange={(e) => setMediaUrl(e.target.value)} placeholder="https://..."
          className="rounded-lg border border-border bg-cream px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <div className="flex gap-3 mt-2">
        <button type="submit" disabled={loading}
          className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition disabled:opacity-60">
          {loading ? "Saving..." : "Save"}
        </button>
        <button type="button" onClick={() => setOpen(false)}
          className="text-warm-gray text-sm font-semibold">
          Cancel
        </button>
      </div>
    </form>
  );
}
