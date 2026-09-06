import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { PLP_PLAN_DETAILS, PlpPlanTier } from "@/lib/stripe";

export async function POST(req: NextRequest) {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  try {
    const { first_name, last_name, grade_level, notes, plan_tier } = await req.json();

    if (!first_name || !String(first_name).trim()) {
      return NextResponse.json({ error: "Your learner's first name is required." }, { status: 400 });
    }
    if (!plan_tier || !(plan_tier in PLP_PLAN_DETAILS)) {
      return NextResponse.json({ error: "Please choose a plan." }, { status: 400 });
    }

    const tier = plan_tier as PlpPlanTier;
    const details = PLP_PLAN_DETAILS[tier];

    const [child] = await db().sql`
      INSERT INTO plp_children (plp_parent_id, first_name, last_name, grade_level, notes)
      VALUES (${parent.id}, ${String(first_name).trim()}, ${last_name || null}, ${grade_level || null}, ${notes || null})
      RETURNING id
    `;

    const [plan] = await db().sql`
      INSERT INTO plp_plans (plp_parent_id, plp_child_id, plan_tier, revision_cadence, status)
      VALUES (${parent.id}, ${child.id}, ${tier}, ${details.revisionCadence}, 'pending_payment')
      RETURNING id
    `;

    return NextResponse.json({ ok: true, planId: plan.id });
  } catch (err) {
    console.error("Create PLP plan failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
