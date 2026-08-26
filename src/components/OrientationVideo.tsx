"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

export function OrientationVideo({ alreadyWatched }: { alreadyWatched: boolean }) {
  const router = useRouter();
  const [saving, setSaving] = useState(false);
  const [watched, setWatched] = useState(alreadyWatched);
  const [error, setError] = useState("");

  async function markWatched() {
    if (saving || watched) return;
    setSaving(true);
    setError("");
    try {
      const res = await fetch("/api/parent-auth/orientation-watched", { method: "POST" });
      if (!res.ok) throw new Error();
      setWatched(true);
      router.refresh();
    } catch {
      setError("Couldn't save that you watched the video. Please try again.");
    } finally {
      setSaving(false);
    }
  }

  return (
    <div>
      <div className="rounded-2xl overflow-hidden border border-border bg-charcoal">
        <video
          controls
          className="w-full aspect-video bg-black"
          onEnded={markWatched}
        >
          <source src="/videos/parent-orientation.mp4" type="video/mp4" />
          Your browser does not support embedded video.
        </video>
      </div>

      {error && <p className="text-sm text-terracotta-dark font-semibold mt-3">{error}</p>}

      <div className="flex items-center justify-between flex-wrap gap-3 mt-5">
        <p className="text-xs text-warm-gray">
          {watched ? "Marked as watched — thank you!" : "This will be marked complete automatically when the video ends."}
        </p>
        <button
          type="button"
          onClick={markWatched}
          disabled={saving || watched}
          className="rounded-full bg-terracotta text-white font-semibold text-sm px-5 py-2 hover:bg-terracotta-dark transition disabled:opacity-50"
        >
          {watched ? "✓ Watched" : saving ? "Saving…" : "I've watched this video"}
        </button>
      </div>
    </div>
  );
}
