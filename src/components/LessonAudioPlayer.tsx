"use client";

import { useRef, useState } from "react";

export function LessonAudioPlayer({ lessonId }: { lessonId: number }) {
  const audioRef = useRef<HTMLAudioElement | null>(null);
  const [loaded, setLoaded] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(false);

  function handlePlay() {
    if (loaded) return;
    setLoading(true);
    setError(false);
    if (audioRef.current) {
      audioRef.current.src = `/api/lessons/${lessonId}/audio`;
      audioRef.current.load();
    }
  }

  return (
    <div className="mb-6 rounded-xl border border-border bg-plum/5 p-4 flex items-center gap-4">
      <button
        type="button"
        onClick={() => {
          if (!loaded) {
            handlePlay();
          } else {
            audioRef.current?.paused ? audioRef.current?.play() : audioRef.current?.pause();
          }
        }}
        className="w-12 h-12 rounded-full bg-plum hover:bg-plum-dark text-ivory flex items-center justify-center text-xl shrink-0 transition disabled:opacity-60"
        disabled={loading}
        aria-label="Listen to this lesson"
      >
        {loading ? "…" : "🔊"}
      </button>
      <div className="flex-1">
        <p className="font-semibold text-plum text-sm">
          {loading ? "Getting your narrator ready..." : error ? "Narration isn't available right now." : "Listen to this lesson"}
        </p>
        <p className="text-xs text-warm-gray mt-0.5">Tap the speaker — a friendly voice will read this lesson out loud.</p>
        <audio
          ref={audioRef}
          onCanPlay={() => {
            setLoading(false);
            setLoaded(true);
            audioRef.current?.play();
          }}
          onError={() => {
            setLoading(false);
            setError(true);
          }}
          controls
          className={loaded ? "mt-2 w-full h-9" : "hidden"}
        />
      </div>
    </div>
  );
}
