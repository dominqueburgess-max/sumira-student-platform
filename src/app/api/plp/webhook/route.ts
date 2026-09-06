import { NextRequest, NextResponse } from "next/server";
import Stripe from "stripe";
import { db } from "@/lib/db";
import { stripe } from "@/lib/stripe";
import { sendEmail } from "@/lib/email";
import { emailShell, emailHeading } from "@/lib/emailTemplates";

// Stripe webhooks need the raw request body for signature verification, so
// this route must not run through any body-parsing middleware.
export async function POST(req: NextRequest) {
  const client = stripe();
  const webhookSecret = process.env.STRIPE_WEBHOOK_SECRET;
  if (!client || !webhookSecret) {
    console.warn("Stripe webhook received but Stripe isn't fully configured yet.");
    return NextResponse.json({ received: true, skipped: true });
  }

  const sig = req.headers.get("stripe-signature");
  const rawBody = await req.text();

  let event: Stripe.Event;
  try {
    if (!sig) throw new Error("Missing stripe-signature header");
    event = client.webhooks.constructEvent(rawBody, sig, webhookSecret);
  } catch (err) {
    console.error("Stripe webhook signature verification failed", err);
    return NextResponse.json({ error: "Invalid signature." }, { status: 400 });
  }

  try {
    switch (event.type) {
      case "checkout.session.completed": {
        const session = event.data.object as Stripe.Checkout.Session;
        const planId = session.metadata?.plp_plan_id ? Number(session.metadata.plp_plan_id) : null;
        if (!planId) break;

        const customerId = typeof session.customer === "string" ? session.customer : session.customer?.id || null;
        const subscriptionId = typeof session.subscription === "string" ? session.subscription : session.subscription?.id || null;

        await db().sql`
          UPDATE plp_plans
          SET status = 'active', purchased_at = NOW(), stripe_subscription_id = ${subscriptionId}, amount_cents = ${session.amount_total || null}, updated_at = NOW()
          WHERE id = ${planId}
        `;

        if (customerId) {
          const parentId = session.metadata?.plp_parent_id ? Number(session.metadata.plp_parent_id) : null;
          if (parentId) {
            await db().sql`UPDATE plp_parents SET stripe_customer_id = ${customerId} WHERE id = ${parentId} AND stripe_customer_id IS NULL`;
          }
        }

        const planRows = await db().sql`
          SELECT p.id, pp.email, c.first_name AS child_first_name
          FROM plp_plans p
          JOIN plp_parents pp ON pp.id = p.plp_parent_id
          JOIN plp_children c ON c.id = p.plp_child_id
          WHERE p.id = ${planId}
        `;
        if (planRows.length) {
          const siteUrl = process.env.URL || process.env.DEPLOY_PRIME_URL || "https://sumirastudio.com";
          await sendEmail({
            to: planRows[0].email,
            subject: "Payment received — let's build your Learning Blueprint",
            html: emailShell(
              `${emailHeading("Payment received!")}
              <p>Thanks for your payment for ${planRows[0].child_first_name}'s Personalized Learning Blueprint. The last step is a short questionnaire so Mira AI can build a plan made just for ${planRows[0].child_first_name}.</p>
              <div style="text-align:center; margin: 24px 0;">
                <a href="${siteUrl}/plp/dashboard" style="background:#E2916E; color:#ffffff; text-decoration:none; font-family: Arial, Helvetica, sans-serif; font-weight:700; font-size:14px; padding: 12px 28px; border-radius: 999px; display:inline-block;">Complete the Questionnaire</a>
              </div>`,
              { previewText: "Payment received — complete your questionnaire to build the Blueprint." }
            ),
          });
        }
        break;
      }

      case "customer.subscription.updated":
      case "customer.subscription.deleted": {
        const sub = event.data.object as Stripe.Subscription;
        const status = event.type === "customer.subscription.deleted"
          ? "canceled"
          : sub.status === "past_due" ? "past_due" : sub.status === "active" ? "active" : null;
        if (status) {
          await db().sql`
            UPDATE plp_plans SET status = ${status}, updated_at = NOW() WHERE stripe_subscription_id = ${sub.id}
          `;
        }
        break;
      }

      default:
        break;
    }
  } catch (err) {
    console.error("Error handling Stripe webhook event", event.type, err);
    return NextResponse.json({ error: "Webhook handler failed." }, { status: 500 });
  }

  return NextResponse.json({ received: true });
}
