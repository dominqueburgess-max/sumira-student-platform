import { redirect } from "next/navigation";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { PlpNewPlanForm } from "@/components/PlpNewPlanForm";

export default async function PlpNewPlanPage({
  searchParams,
}: {
  searchParams: Promise<{ plan?: string }>;
}) {
  const parent = await getCurrentPlpParent();
  if (!parent) redirect("/plp/login");
  if (!parent.email_verified) redirect("/plp/verify-email");

  const { plan } = await searchParams;

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-3xl mx-auto">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">LEARNING BLUEPRINT</div>
        </div>
        <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
          <h1 className="text-xl text-plum mb-2">Add a learner &amp; choose a plan</h1>
          <p className="text-warm-gray text-sm mb-6">
            Tell us a bit about your learner, choose a plan, and you&rsquo;ll be taken straight to secure checkout.
            Once payment is complete, you&rsquo;ll fill out a short questionnaire and Mira AI will build the Blueprint.
          </p>
          <PlpNewPlanForm defaultTier={plan} />
          <div className="mt-6 text-center">
            <a href="/plp/dashboard" className="text-sm text-warm-gray hover:text-terracotta-dark underline">← Back to dashboard</a>
          </div>
        </div>
      </div>
    </main>
  );
}
