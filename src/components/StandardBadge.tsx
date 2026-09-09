import { DisplayStandard } from "@/lib/standardsCrosswalk";

export function StandardBadge({ standard, className }: { standard: DisplayStandard | null; className?: string }) {
  if (!standard) return null;
  return (
    <span className={className ?? "inline-block text-xs font-semibold bg-cream text-warm-gray rounded-full px-3 py-1"}>
      {standard.code}
      {standard.description ? ` · ${standard.description}` : ""}
      {!standard.isHomeState && standard.homeState !== "NC" && (
        <span className="text-warm-gray-light"> (NC standard shown — {standard.homeState} mapping coming soon)</span>
      )}
    </span>
  );
}
