import { db } from "@/lib/db";

export type DisplayStandard = {
  code: string;
  description: string | null;
  isHomeState: boolean; // true if this IS the student's home-state standard; false if falling back to NC
  homeState: string;
};

/**
 * Batch-loads the crosswalk for a given state and a set of NC source codes,
 * so a course/lesson page can do one query instead of one per lesson.
 * Returns a map of sourceCode -> {code, description}.
 */
export async function loadCrosswalkMap(
  homeState: string,
  sourceCodes: string[]
): Promise<Map<string, { code: string; description: string | null }>> {
  const map = new Map<string, { code: string; description: string | null }>();
  if (homeState === "NC" || sourceCodes.length === 0) return map;

  const uniqueCodes = Array.from(new Set(sourceCodes.filter(Boolean)));
  if (!uniqueCodes.length) return map;

  const rows = (await db().sql`
    SELECT source_code, target_code, target_description
    FROM standards_crosswalk
    WHERE state = ${homeState} AND source_code = ANY(${uniqueCodes})
  `) as unknown as { source_code: string; target_code: string; target_description: string | null }[];

  for (const r of rows) {
    map.set(r.source_code, { code: r.target_code, description: r.target_description });
  }
  return map;
}

/**
 * Resolves the standard to display for one lesson, given the student's home
 * state and a pre-loaded crosswalk map (from loadCrosswalkMap). Falls back
 * to the original NC standard -- clearly flagged via isHomeState -- when no
 * crosswalk entry has been authored yet for that code/state.
 */
export function resolveDisplayStandard(
  homeState: string,
  ncCode: string | null,
  ncDescription: string | null,
  crosswalkMap: Map<string, { code: string; description: string | null }>
): DisplayStandard | null {
  if (!ncCode) return null;
  if (homeState !== "NC") {
    const match = crosswalkMap.get(ncCode);
    if (match) {
      return { code: match.code, description: match.description, isHomeState: true, homeState };
    }
  }
  return { code: ncCode, description: ncDescription, isHomeState: homeState === "NC", homeState };
}
