"use client";

import { useRef, useState } from "react";

export function QuestionAudioButton({ questionId }: { questionId: number }) {
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const [loading, setLoading] = useState(false);

  function handleClick() {
    if (!audioRef.current) return;
    if (!audioRef.current.src) {
      setLoading(true);
      audioRef.current.src = `/api/questions/${questionId}/audio`;
      audioRef.current.load();
    } else {
      audioRef.current.currentTime = 0;
      audioRef.current.play();
    }
  }

  return (
    <>
      <button
        type="button"
        onClick={handleClick}
        disabled={loading}
        className="inline-flex items-center justify-center w-8 h-8 rounded-full bg-plum/10 hover:bg-plum/20 text-plum text-sm shrink-0 transition disabled:opacity-60"
        aria-label="Listen to this question"
        title="Listen to this question"
      >
        {loading ? "…" : "🔊"}
      </button>
      <audio
        ref={audioRef}
        onCanPlay={() => {
          setLoading(false);
          audioRef.current?.play();
        }}
        onError={() => setLoading(false)}
        className="hidden"
      />
    </>
  );
}
