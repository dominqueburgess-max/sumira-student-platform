"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function MarkCompleteButton({ lessonId, initiallyComplete }: { lessonId: number; initiallyComplete: boolean }) {
  const router = useRouter();
  const [done, setDone] = useState(initiallyComplete);
  const [loading, setLoading] = useState(false);

  async function handleClick() {
    setLoading(true);
    const res = await fetch(`/api/lessons/${lessonId}/complete`, { method: "POST" });
    setLoading(false);
    if (res.ok) {
      setDone(true);
      router.refresh();
    }
  }

  if (done) {
    return (
      <div className="bg-sage/15 text-sage-dark font-semibold rounded-full px-6 py-3 inline-flex items-center gap-2">
        ✓ Lesson Complete
      </div>
    );
  }

  return (
    <button
      onClick={handleClick}
      disabled={loading}
      className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 transition disabled:opacity-60"
    >
      {loading ? "Saving..." : "Mark This Lesson Complete"}
    </button>
  );
}
