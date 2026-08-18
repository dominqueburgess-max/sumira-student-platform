export function LessonVideo({ videoCaption }: { videoCaption: string | null }) {
  return (
    <div className="mb-6 rounded-xl border border-dashed border-border bg-cream p-6 flex items-center gap-4">
      <div className="w-12 h-12 rounded-full bg-plum/10 flex items-center justify-center text-plum text-xl shrink-0">▶</div>
      <div>
        <p className="font-semibold text-plum text-sm">Video lesson coming soon</p>
        {videoCaption && <p className="text-sm text-warm-gray mt-1">{videoCaption}</p>}
        <p className="text-xs text-warm-gray-light mt-1">Use the audio narration above in the meantime.</p>
      </div>
    </div>
  );
}
