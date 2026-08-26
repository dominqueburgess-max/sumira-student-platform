import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { db } from "@/lib/db";
import { LearningBlueprintForm } from "@/components/LearningBlueprintForm";

type StudentRow = { id: number; first_name: string; last_name: string };
type BlueprintRow = {
  student_id: number;
  learning_style: string | null;
  interests: string | null;
  strengths: string | null;
  growth_areas: string | null;
  favorite_subjects: string | null;
  challenging_subjects: string | null;
  motivation: string | null;
  tech_access: string | null;
  best_learning_time: string | null;
  prior_schooling: string | null;
  goals_this_year: string | null;
  additional_notes: string | null;
};

export default async function LearningBlueprintPage() {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (!parent.enrollment_completed) redirect("/parent-portal/enroll");

  const students = (await db().sql`
    SELECT id, first_name, last_name FROM students
    WHERE parent_id = ${parent.id} AND enrollment_type IN ('learning_studio', 'both')
    ORDER BY id ASC
  `) as unknown as StudentRow[];

  if (students.length === 0) redirect("/parent-portal/dashboard");

  const blueprints = (await db().sql`
    SELECT * FROM learning_blueprints WHERE parent_id = ${parent.id}
  `) as unknown as BlueprintRow[];

  const blueprintByStudent = new Map(blueprints.map((b) => [b.student_id, b]));

  const learners = students.map((s) => ({
    id: s.id,
    name: `${s.first_name} ${s.last_name}`.trim(),
    existing: blueprintByStudent.get(s.id) || null,
  }));

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-2xl mx-auto">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
        </div>
        <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
          <h1 className="text-xl text-plum mb-2">Family Profile &amp; Learning Blueprint</h1>
          <p className="text-warm-gray text-sm mb-6">
            This is the last step before your learner&rsquo;s personalized plan is ready. First we&rsquo;ll confirm your
            family&rsquo;s contact information, then ask a few questions about {learners.length > 1 ? "each learner" : "your learner"} so
            we can build a Learning Blueprint suited to who they are.
          </p>
          <LearningBlueprintForm
            parentEmail={parent.email}
            mailingAddressLine1={parent.mailing_address_line1 || ""}
            mailingAddressLine2={parent.mailing_address_line2 || ""}
            mailingCity={parent.mailing_city || ""}
            mailingState={parent.mailing_state || ""}
            mailingZip={parent.mailing_zip || ""}
            learners={learners}
          />
          <div className="mt-6 text-center">
            <a href="/parent-portal/dashboard" className="text-sm text-warm-gray hover:text-terracotta-dark underline">
              ← Back to dashboard
            </a>
          </div>
        </div>
      </div>
    </main>
  );
}
