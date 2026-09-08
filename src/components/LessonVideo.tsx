function toEmbedUrl(url: string): string | null {
  try {
    const u = new URL(url);
    if (u.hostname.includes("youtube.com")) {
      const id = u.searchParams.get("v");
      if (id) return `https://www.youtube.com/embed/${id}`;
      if (u.pathname.startsWith("/embed/")) return url;
    }
    if (u.hostname === "youtu.be") {
      const id = u.pathname.replace("/", "");
      if (id) return `https://www.youtube.com/embed/${id}`;
    }
    if (u.hostname.includes("vimeo.com")) {
      const id = u.pathname.split("/").filter(Boolean).pop();
      if (id) return `https://player.vimeo.com/video/${id}`;
    }
    return null;
  } catch {
    return null;
  }
}

export function LessonVideo({ videoUrl, videoCaption }: { videoUrl?: string | null; videoCaption: string | null }) {
  const embedUrl = videoUrl ? toEmbedUrl(videoUrl) : null;

  if (embedUrl) {
    return (
      <div className="mb-6">
        <div className="rounded-xl overflow-hidden border border-border" style={{ position: "relative", paddingBottom: "56.25%", height: 0 }}>
          <iframe
            src={embedUrl}
            title={videoCaption || "Lesson video"}
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowFullScreen
            style={{ position: "absolute", top: 0, left: 0, width: "100%", height: "100%", border: 0 }}
          />
        </div>
        {videoCaption && <p className="text-xs text-warm-gray mt-2">{videoCaption}</p>}
      </div>
    );
  }

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
