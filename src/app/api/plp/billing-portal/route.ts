import { NextResponse } from "next/server";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { stripe } from "@/lib/stripe";

export async function POST() {
  const parent = await getCurrentPlpParent();
  if (!parent) {
    return NextResponse.json({ error: "Please log in first." }, { status: 401 });
  }
  if (!parent.stripe_customer_id) {
    return NextResponse.json({ error: "No billing account on file yet." }, { status: 400 });
  }

  const client = stripe();
  if (!client) {
    return NextResponse.json({ error: "Billing isn't connected yet." }, { status: 503 });
  }

  const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";

  try {
    const session = await client.billingPortal.sessions.create({
      customer: parent.stripe_customer_id,
      return_url: `${siteUrl}/plp/dashboard`,
    });
    return NextResponse.json({ ok: true, url: session.url });
  } catch (err) {
    console.error("Billing portal session failed", err);
    return NextResponse.json({ error: "Something went wrong opening billing." }, { status: 500 });
  }
}
