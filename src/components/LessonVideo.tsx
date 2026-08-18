"use client";

import { useRef, useState } from "react";

export function LessonVideo({ lessonId, videoCaption }: { lessonId: number; videoCaption: string | null }) {
  const videoRef = useRef<HTMLVideoElement | null>(null);
  const [state, setState] = useState<"idle" | "loading" | "ready" | "error">("idle");

  function handleWatch() {
    setState("loading");
    if (videoRef.current) {
      videoRef.current.src = `/api/lessons/${lessonId}/video`;
      videoRef.current.load();
    }
  }

  if (state === "error") {
    return (
      <div className="mb-6 rounded-xl border border-dashed border-border bg-cream p-6 flex items-center gap-4">
        <div className="w-12 h-12 rounded-full bg-plum/10 flex items-center justify-center text-plum text-xl shrink-0">▶</div>
        <div>
          <p className="font-semibold text-plum text-sm">Video isn&rsquo;t ready yet</p>
          <p className="text-sm text-warm-gray mt-1">Use the audio narration above in the meantime — video is still being rolled out lesson by lesson.</p>
        </div>
      </div>
    );
  }

  return (
    <div className="mb-6 rounded-xl overflow-hidden border border-border bg-charcoal">
      {state !== "ready" && (
        <button
          type="button"
          onClick={handleWatch}
          disabled={state === "loading"}
          className="w-full flex items-center gap-4 p-6 hover:bg-white/5 transition disabled:opacity-70"
        >
          <div className="w-12 h-12 rounded-full bg-terracotta flex items-center justify-center text-ivory text-xl shrink-0">
            {state === "loading" ? "…" : "▶"}
          </div>
          <div className="text-left">
            <p className="font-semibold text-ivory text-sm">
              {state === "loading" ? "Building your video (this can take a little while the first time)..." : "Watch this lesson"}
            </p>
            {videoCaption && <p className="text-xs text-ivory/60 mt-1">{videoCaption}</p>}
          </div>
        </button>
      )}
      <video
        ref={videoRef}
        controls
        onCanPlay={() => {
          setState("ready");
          videoRef.current?.play();
        }}
        onError={() => setState("error")}
        className={state === "ready" ? "w-full max-h-[420px]" : "hidden"}
      />
    </div>
  );
}
