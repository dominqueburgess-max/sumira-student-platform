import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { generatePlpBlueprint } from "@/lib/plpBlueprint";
import { nextRevisionDate } from "@/lib/stripe";
import { sendEmail } from "@/lib/email";
import { emailShell, emailHeading } from "@/lib/emailTemplates";

export async function POST(req: NextRequest) {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  try {
    const body = await req.json();
    const { planId } = body;
    if (!planId) {
      return NextResponse.json({ error: "Missing plan." }, { status: 400 });
    }

    const planRows = await db().sql`
      SELECT p.id, p.status, p.revision_cadence, p.next_revision_available_at,
             c.first_name AS child_first_name, c.grade_level AS child_grade_level
      FROM plp_plans p
      JOIN plp_children c ON c.id = p.plp_child_id
      WHERE p.id = ${planId} AND p.plp_parent_id = ${parent.id}
    `;
    if (!planRows.length) {
      return NextResponse.json({ error: "Plan not found." }, { status: 404 });
    }
    const plan = planRows[0];

    if (plan.status !== "active") {
      return NextResponse.json({ error: "This plan isn't active yet. Please complete payment first." }, { status: 403 });
    }
    if (plan.next_revision_available_at && new Date(plan.next_revision_available_at) > new Date()) {
      return NextResponse.json({
        error: `Your next Blueprint revision unlocks on ${new Date(plan.next_revision_available_at).toLocaleDateString()}.`,
      }, { status: 403 });
    }

    const {
      learning_style, interests, strengths, growth_areas, favorite_subjects,
      challenging_subjects, motivation, best_learning_time, prior_schooling,
      goals_this_year, additional_notes,
    } = body;

    const [response] = await db().sql`
      INSERT INTO plp_questionnaire_responses (
        plp_plan_id, learning_style, interests, strengths, growth_areas, favorite_subjects,
        challenging_subjects, motivation, best_learning_time, prior_schooling, goals_this_year, additional_notes
      ) VALUES (
        ${planId}, ${learning_style || null}, ${interests || null}, ${strengths || null}, ${growth_areas || null},
        ${favorite_subjects || null}, ${challenging_subjects || null}, ${motivation || null},
        ${best_learning_time || null}, ${prior_schooling || null}, ${goals_this_year || null}, ${additional_notes || null}
      )
      RETURNING id
    `;

    const content = await generatePlpBlueprint(
      plan.child_first_name,
      plan.child_grade_level || "Not specified",
      { learning_style, interests, strengths, growth_areas, favorite_subjects, challenging_subjects, motivation, best_learning_time, prior_schooling, goals_this_year, additional_notes }
    );

    const versionRows = await db().sql`SELECT COALESCE(MAX(version), 0) AS max_version FROM plp_blueprints WHERE plp_plan_id = ${planId}`;
    const nextVersion = Number(versionRows[0].max_version) + 1;

    const [blueprint] = await db().sql`
      INSERT INTO plp_blueprints (plp_plan_id, plp_questionnaire_response_id, version, content_json)
      VALUES (${planId}, ${response.id}, ${nextVersion}, ${JSON.stringify(content)})
      RETURNING id
    `;

    const nextDate = nextRevisionDate(plan.revision_cadence, new Date());
    await db().sql`
      UPDATE plp_plans
      SET last_blueprint_at = NOW(), next_revision_available_at = ${nextDate ? nextDate.toISOString() : null}, updated_at = NOW()
      WHERE id = ${planId}
    `;

    const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";
    await sendEmail({
      to: parent.email,
      subject: `${plan.child_first_name}'s Personalized Learning Blueprint is ready`,
      html: emailShell(
        `${emailHeading("Your Blueprint is ready!")}
        <p>${plan.child_first_name}'s Personalized Learning Blueprint has been built and is ready to download from your dashboard.</p>
        <div style="text-align:center; margin: 24px 0;">
          <a href="${siteUrl}/plp/dashboard" style="background:#E2916E; color:#ffffff; text-decoration:none; font-family: Arial, Helvetica, sans-serif; font-weight:700; font-size:14px; padding: 12px 28px; border-radius: 999px; display:inline-block;">View & Download</a>
        </div>
        ${nextDate ? `<p style="font-size:13px; color:#6B6470;">Your plan includes revisions — you'll be able to build an updated Blueprint starting ${nextDate.toLocaleDateString()}.</p>` : ""}`,
        { previewText: `${plan.child_first_name}'s Learning Blueprint is ready to download.` }
      ),
    });

    return NextResponse.json({ ok: true, blueprintId: blueprint.id });
  } catch (err) {
    console.error("PLP questionnaire submission failed", err);
    return NextResponse.json({ error: "Something went wrong building the Blueprint. Please try again." }, { status: 500 });
  }
}
