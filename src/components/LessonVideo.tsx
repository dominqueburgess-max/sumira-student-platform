export function LessonVideo({ videoUrl, videoCaption }: { videoUrl: string | null; videoCaption: string | null }) {
  if (videoUrl) {
    return (
      <div className="mb-6 rounded-xl overflow-hidden border border-border bg-charcoal">
        <video controls className="w-full max-h-[420px]" poster="">
          <source src={videoUrl} type="video/mp4" />
        </video>
        {videoCaption && <p className="text-xs text-ivory/70 px-3 py-2">{videoCaption}</p>}
      </div>
    );
  }

  return (
    <div className="mb-6 rounded-xl border border-dashed border-border bg-cream p-6 flex items-center gap-4">
      <div className="w-12 h-12 rounded-full bg-plum/10 flex items-center justify-center text-plum text-xl shrink-0">
        ▶
      </div>
      <div>
        <p className="font-semibold text-plum text-sm">Video lesson coming soon</p>
        {videoCaption && <p className="text-sm text-warm-gray mt-1">{videoCaption}</p>}
      </div>
    </div>
  );
}
