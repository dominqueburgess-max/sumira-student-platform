import Stripe from "stripe";

let stripeClient: Stripe | null = null;

/**
 * Lazily-constructed Stripe client. Returns null (rather than throwing) when
 * STRIPE_SECRET_KEY isn't configured yet, so the PLP flow can be built,
 * deployed, and demoed before Stripe is fully connected — callers should
 * check for null and show a friendly "payments aren't connected yet" state.
 */
export function stripe(): Stripe | null {
  const key = process.env.STRIPE_SECRET_KEY;
  if (!key) return null;
  if (!stripeClient) {
    stripeClient = new Stripe(key);
  }
  return stripeClient;
}

export type PlpPlanTier = "essentials" | "growing" | "guided";

export const PLP_PLAN_DETAILS: Record<PlpPlanTier, {
  label: string;
  mode: "payment" | "subscription";
  priceEnvVar: string;
  revisionCadence: "one_time" | "quarterly" | "anytime";
  displayPrice: string;
}> = {
  essentials: {
    label: "Essentials Plan",
    mode: "payment",
    priceEnvVar: "STRIPE_PRICE_ESSENTIALS",
    revisionCadence: "one_time",
    displayPrice: "$299 one-time",
  },
  growing: {
    label: "Growing Plan",
    mode: "subscription",
    priceEnvVar: "STRIPE_PRICE_GROWING",
    revisionCadence: "quarterly",
    displayPrice: "$599/year",
  },
  guided: {
    label: "Guided Plan",
    mode: "subscription",
    priceEnvVar: "STRIPE_PRICE_GUIDED",
    revisionCadence: "anytime",
    displayPrice: "$125/month",
  },
};

export function nextRevisionDate(cadence: "one_time" | "quarterly" | "anytime", from: Date = new Date()): Date | null {
  if (cadence === "quarterly") {
    const d = new Date(from);
    d.setMonth(d.getMonth() + 3);
    return d;
  }
  return null; // one_time: no future revision; anytime: no gate
}
