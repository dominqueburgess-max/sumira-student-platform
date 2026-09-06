import { redirect } from "next/navigation";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { db } from "@/lib/db";
import { PlpLogoutButton } from "@/components/PlpLogoutButton";
import { PlpBillingPortalButton } from "@/components/PlpBillingPortalButton";
import { PlpResumeCheckoutButton } from "@/components/PlpResumeCheckoutButton";

const TIER_LABELS: Record<string, { name: string; price: string }> = {
  essentials: { name: "Essentials Plan", price: "$299 one-time" },
  growing: { name: "Growing Plan", price: "$599/year" },
  guided: { name: "Guided Plan", price: "$125/month" },
};

const STATUS_BADGE: Record<string, string> = {
  pending_payment: "bg-amber/20 text-terracotta-dark",
  active: "bg-sage/20 text-sage-dark",
  past_due: "bg-red-100 text-red-700",
  canceled: "bg-red-100 text-red-700",
};

type PlanRow = {
  plan_id: number;
  plan_tier: string;
  status: string;
  revision_cadence: string;
  purchased_at: string | null;
  next_revision_available_at: string | null;
  last_blueprint_at: string | null;
  child_first_name: string;
  child_last_name: string | null;
  child_grade_level: string | null;
  blueprint_version: number | null;
  blueprint_generated_at: string | null;
};

export default async function PlpDashboardPage() {
  const parent = await getCurrentPlpParent();
  if (!parent) redirect("/plp/login");
  if (!parent.email_verified) redirect("/plp/verify-email");

  const plans = (await db().sql`
    SELECT p.id AS plan_id, p.plan_tier, p.status, p.revision_cadence, p.purchased_at,
           p.next_revision_available_at, p.last_blueprint_at,
           c.first_name AS child_first_name, c.last_name AS child_last_name, c.grade_level AS child_grade_level,
           b.version AS blueprint_version, b.generated_at AS blueprint_generated_at
    FROM plp_plans p
    JOIN plp_children c ON c.id = p.plp_child_id
    LEFT JOIN LATERAL (
      SELECT version, generated_at FROM plp_blueprints WHERE plp_blueprints.plp_plan_id = p.id ORDER BY version DESC LIMIT 1
    ) b ON true
    WHERE p.plp_parent_id = ${parent.id}
    ORDER BY p.created_at ASC
  `) as unknown as PlanRow[];

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-3xl mx-auto">
        <div className="flex items-center justify-between mb-8 flex-wrap gap-4">
          <div>
            <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
            <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">LEARNING BLUEPRINT</div>
          </div>
          <div className="flex items-center gap-3">
            {parent.stripe_customer_id && <PlpBillingPortalButton />}
            <PlpLogoutButton />
          </div>
        </div>

        <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10 mb-8">
          <h1 className="text-xl text-plum mb-1">Welcome, {parent.first_name}!</h1>
          <p className="text-warm-gray text-sm">
            Manage your family&rsquo;s Personalized Learning Blueprints below — no full Learning Studio enrollment needed.
          </p>
        </div>

        {plans.length === 0 && (
          <div className="bg-ivory rounded-3xl border border-border card-shadow p-10 text-center">
            <h2 className="text-lg text-plum font-semibold mb-2">Let&rsquo;s build your first Blueprint</h2>
            <p className="text-warm-gray text-sm mb-6 max-w-md mx-auto">
              Add your learner, choose a plan, and you&rsquo;ll be building a Personalized Learning Blueprint in minutes.
            </p>
            <a href="/plp/new-plan" className="inline-block rounded-full bg-terracotta text-white font-semibold text-sm px-6 py-3 hover:bg-terracotta-dark transition">
              Start My Blueprint
            </a>
          </div>
        )}

        <div className="flex flex-col gap-6">
          {plans.map((plan) => {
            const tierInfo = TIER_LABELS[plan.plan_tier] || { name: plan.plan_tier, price: "" };
            const childName = `${plan.child_first_name}${plan.child_last_name ? " " + plan.child_last_name : ""}`;
            const revisionReady = plan.next_revision_available_at ? new Date(plan.next_revision_available_at) <= new Date() : true;

            return (
              <div key={plan.plan_id} className="bg-ivory rounded-3xl border border-border card-shadow p-8">
                <div className="flex items-start justify-between flex-wrap gap-3 mb-3">
                  <div>
                    <h2 className="text-lg text-plum font-semibold">{childName}</h2>
                    <p className="text-xs text-warm-gray">{plan.child_grade_level ? `Grade ${plan.child_grade_level} · ` : ""}{tierInfo.name} &middot; {tierInfo.price}</p>
                  </div>
                  <span className={`text-xs font-semibold rounded-full px-3 py-1 ${STATUS_BADGE[plan.status] || "bg-cream text-warm-gray"}`}>
                    {plan.status === "pending_payment" && "Payment pending"}
                    {plan.status === "active" && "Active"}
                    {plan.status === "past_due" && "Payment past due"}
                    {plan.status === "canceled" && "Canceled"}
                  </span>
                </div>

                {plan.status === "pending_payment" && (
                  <div className="flex items-center justify-between gap-4 rounded-2xl border border-border px-5 py-4 mt-3">
                    <div className="text-sm text-charcoal">Payment wasn&rsquo;t completed for {plan.child_first_name}&rsquo;s plan.</div>
                    <PlpResumeCheckoutButton planId={plan.plan_id} />
                  </div>
                )}

                {(plan.status === "past_due" || plan.status === "canceled") && (
                  <div className="rounded-2xl border border-red-200 bg-red-50 px-5 py-4 mt-3 text-sm text-red-700">
                    There&rsquo;s an issue with billing on this plan. Use &ldquo;Manage billing&rdquo; above to update your payment method.
                  </div>
                )}

                {plan.status === "active" && !plan.blueprint_version && (
                  <a href={`/plp/questionnaire?planId=${plan.plan_id}`}
                    className="flex items-center justify-between gap-4 rounded-2xl border border-border px-5 py-4 mt-3 hover:border-terracotta transition">
                    <div className="text-sm text-charcoal font-semibold">Complete the Blueprint questionnaire for {plan.child_first_name}</div>
                    <span className="text-terracotta-dark text-sm font-semibold shrink-0">Start now →</span>
                  </a>
                )}

                {plan.status === "active" && plan.blueprint_version && (
                  <div className="mt-3">
                    <div className="flex items-center justify-between flex-wrap gap-3 rounded-2xl border border-border px-5 py-4">
                      <div className="text-sm text-charcoal">
                        <div className="font-semibold">Blueprint v{plan.blueprint_version}</div>
                        <div className="text-xs text-warm-gray">
                          Generated {plan.blueprint_generated_at ? new Date(plan.blueprint_generated_at).toLocaleDateString() : ""}
                        </div>
                      </div>
                      <a href={`/api/plp/blueprint/${plan.plan_id}/pdf`}
                        className="rounded-full bg-terracotta text-white font-semibold text-sm px-5 py-2 hover:bg-terracotta-dark transition shrink-0">
                        Download PDF
                      </a>
                    </div>

                    <div className="mt-3 text-sm">
                      {plan.revision_cadence === "one_time" && (
                        <p className="text-warm-gray">
                          Your Essentials plan includes one Blueprint for the year.{" "}
                          <a href="/personalized-learning-plans" className="text-terracotta-dark font-semibold">Upgrade to Growing or Guided</a> for ongoing revisions.
                        </p>
                      )}
                      {plan.revision_cadence === "quarterly" && (
                        revisionReady ? (
                          <a href={`/plp/questionnaire?planId=${plan.plan_id}`} className="text-terracotta-dark font-semibold">
                            A new revision is ready — Update {plan.child_first_name}&rsquo;s Blueprint →
                          </a>
                        ) : (
                          <p className="text-warm-gray">
                            Next revision available {plan.next_revision_available_at ? new Date(plan.next_revision_available_at).toLocaleDateString() : ""}.
                          </p>
                        )
                      )}
                      {plan.revision_cadence === "anytime" && (
                        <div className="flex flex-col gap-1">
                          <a href={`/plp/questionnaire?planId=${plan.plan_id}`} className="text-terracotta-dark font-semibold">
                            Update {plan.child_first_name}&rsquo;s Blueprint anytime →
                          </a>
                          <p className="text-xs text-warm-gray">
                            Your Guided plan includes a monthly 1:1 coaching session — email{" "}
                            <a href="mailto:connect@sumirastudio.com" className="text-terracotta-dark font-semibold">connect@sumirastudio.com</a> to schedule.
                          </p>
                        </div>
                      )}
                    </div>
                  </div>
                )}
              </div>
            );
          })}
        </div>

        {plans.length > 0 && (
          <div className="text-center mt-8">
            <a href="/plp/new-plan" className="inline-block rounded-full border border-terracotta-dark text-terracotta-dark font-semibold text-sm px-6 py-3 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition">
              + Add another learner
            </a>
          </div>
        )}
      </div>
    </main>
  );
}
