import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { stripe, PLP_PLAN_DETAILS, PlpPlanTier } from "@/lib/stripe";

export async function POST(req: NextRequest) {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }

  const client = stripe();
  if (!client) {
    return NextResponse.json(
      { error: "Payments aren't connected yet. Su Mira Learning is finishing Stripe setup — please check back shortly." },
      { status: 503 }
    );
  }

  try {
    const { planId } = await req.json();
    if (!planId) {
      return NextResponse.json({ error: "Missing plan." }, { status: 400 });
    }

    const rows = await db().sql`
      SELECT id, plan_tier, status FROM plp_plans WHERE id = ${planId} AND plp_parent_id = ${parent.id}
    `;
    if (!rows.length) {
      return NextResponse.json({ error: "Plan not found." }, { status: 404 });
    }
    const plan = rows[0];
    const tier = plan.plan_tier as PlpPlanTier;
    const details = PLP_PLAN_DETAILS[tier];
    const priceId = process.env[details.priceEnvVar];

    if (!priceId) {
      return NextResponse.json(
        { error: `Payments for the ${details.label} aren't connected yet. Please check back shortly.` },
        { status: 503 }
      );
    }

    const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";

    const session = await client.checkout.sessions.create({
      mode: details.mode,
      line_items: [{ price: priceId, quantity: 1 }],
      ...(parent.stripe_customer_id
        ? { customer: parent.stripe_customer_id }
        : { customer_email: parent.email }),
      client_reference_id: String(plan.id),
      metadata: {
        plp_plan_id: String(plan.id),
        plp_parent_id: String(parent.id),
      },
      success_url: `${siteUrl}/plp/checkout/success?session_id={CHECKOUT_SESSION_ID}`,
      cancel_url: `${siteUrl}/plp/checkout/cancel?planId=${plan.id}`,
    });

    await db().sql`
      UPDATE plp_plans SET stripe_checkout_session_id = ${session.id}, stripe_price_id = ${priceId}, updated_at = NOW()
      WHERE id = ${plan.id}
    `;

    return NextResponse.json({ ok: true, url: session.url });
  } catch (err) {
    console.error("PLP checkout session failed", err);
    return NextResponse.json({ error: "Something went wrong starting checkout. Please try again." }, { status: 500 });
  }
}
