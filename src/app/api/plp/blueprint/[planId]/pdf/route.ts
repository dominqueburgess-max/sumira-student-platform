import { NextRequest, NextResponse } from "next/server";
import { renderToBuffer } from "@react-pdf/renderer";
import { db } from "@/lib/db";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { PLP_PLAN_DETAILS, PlpPlanTier } from "@/lib/stripe";
import { PlpBlueprintContent } from "@/lib/plpBlueprint";
import { PlpBlueprintDocument } from "@/lib/pdf/PlpBlueprintDocument";

export async function GET(req: NextRequest, { params }: { params: Promise<{ planId: string }> }) {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  const { planId } = await params;

  const rows = await db().sql`
    SELECT p.id, p.plan_tier, c.first_name AS child_first_name, c.grade_level AS child_grade_level,
           b.content_json, b.generated_at
    FROM plp_plans p
    JOIN plp_children c ON c.id = p.plp_child_id
    LEFT JOIN plp_blueprints b ON b.plp_plan_id = p.id
    WHERE p.id = ${planId} AND p.plp_parent_id = ${parent.id}
    ORDER BY b.version DESC
    LIMIT 1
  `;

  if (!rows.length || !rows[0].content_json) {
    return NextResponse.json({ error: "No Blueprint found for this plan yet." }, { status: 404 });
  }

  const row = rows[0];
  const content = row.content_json as PlpBlueprintContent;
  const tier = row.plan_tier as PlpPlanTier;
  const planLabel = PLP_PLAN_DETAILS[tier]?.label || "Personalized Learning Plan";
  const childName = row.child_first_name as string;
  const generatedDate = new Date(row.generated_at).toLocaleDateString("en-US", { year: "numeric", month: "long", day: "numeric" });

  const buffer = await renderToBuffer(
    PlpBlueprintDocument({
      childName,
      gradeLevel: row.child_grade_level || "Not specified",
      planLabel,
      generatedDate,
      content,
    })
  );

  const fileName = `${childName.replace(/[^a-z0-9]+/gi, "-")}-Su-Mira-Learning-Blueprint.pdf`;

  return new NextResponse(new Uint8Array(buffer), {
    status: 200,
    headers: {
      "Content-Type": "application/pdf",
      "Content-Disposition": `attachment; filename="${fileName}"`,
      "Cache-Control": "no-store",
    },
  });
}
