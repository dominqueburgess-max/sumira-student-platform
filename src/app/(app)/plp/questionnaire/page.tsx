import { redirect } from "next/navigation";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { db } from "@/lib/db";
import { PlpQuestionnaireForm } from "@/components/PlpQuestionnaireForm";

export default async function PlpQuestionnairePage({
  searchParams,
}: {
  searchParams: Promise<{ planId?: string }>;
}) {
  const parent = await getCurrentPlpParent();
  if (!parent) redirect("/plp/login");
  if (!parent.email_verified) redirect("/plp/verify-email");

  const { planId } = await searchParams;
  if (!planId) redirect("/plp/dashboard");

  const rows = await db().sql`
    SELECT p.id, p.status, p.next_revision_available_at, c.first_name AS child_first_name
    FROM plp_plans p
    JOIN plp_children c ON c.id = p.plp_child_id
    WHERE p.id = ${planId} AND p.plp_parent_id = ${parent.id}
  `;
  if (!rows.length) redirect("/plp/dashboard");
  const plan = rows[0];

  if (plan.status !== "active") redirect("/plp/dashboard");
  if (plan.next_revision_available_at && new Date(plan.next_revision_available_at) > new Date()) {
    redirect("/plp/dashboard");
  }

  const existingRows = await db().sql`
    SELECT learning_style, interests, strengths, growth_areas, favorite_subjects, challenging_subjects,
           motivation, best_learning_time, prior_schooling, goals_this_year, additional_notes
    FROM plp_questionnaire_responses WHERE plp_plan_id = ${planId} ORDER BY submitted_at DESC LIMIT 1
  `;
  const existing = existingRows.length ? (existingRows[0] as unknown as {
    learning_style: string | null; interests: string | null; strengths: string | null; growth_areas: string | null;
    favorite_subjects: string | null; challenging_subjects: string | null; motivation: string | null;
    best_learning_time: string | null; prior_schooling: string | null; goals_this_year: string | null; additional_notes: string | null;
  }) : null;

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-2xl mx-auto">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">LEARNING BLUEPRINT</div>
        </div>
        <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
          <h1 className="text-xl text-plum mb-2">Tell us about {plan.child_first_name}</h1>
          <p className="text-warm-gray text-sm mb-6">
            A few honest, specific answers here make {plan.child_first_name}&rsquo;s Blueprint far more useful. Mira AI uses these
            answers to build a standards-aligned plan, weekly schedule, and activity suggestions made just for {plan.child_first_name}.
          </p>
          <PlpQuestionnaireForm planId={Number(plan.id)} childName={plan.child_first_name} existing={existing} />
        </div>
      </div>
    </main>
  );
}
