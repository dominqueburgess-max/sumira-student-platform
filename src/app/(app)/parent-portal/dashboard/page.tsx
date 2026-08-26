import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { ParentLogoutButton } from "@/components/ParentLogoutButton";
import { db } from "@/lib/db";

export default async function ParentDashboardPage() {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (!parent.enrollment_completed) redirect("/parent-portal/enroll");

  const studioLearners = (await db().sql`
    SELECT id, first_name, last_name FROM students
    WHERE parent_id = ${parent.id} AND enrollment_type IN ('learning_studio', 'both')
    ORDER BY id ASC
  `) as unknown as { id: number; first_name: string; last_name: string }[];

  const hasChecklist = studioLearners.length > 0;
  const checklistDone = parent.orientation_watched && parent.learning_blueprint_completed;

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-3xl mx-auto">
        <div className="flex items-center justify-between mb-8 flex-wrap gap-4">
          <div>
            <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
            <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
          </div>
          <ParentLogoutButton />
        </div>

        <div className="bg-ivory rounded-3xl border border-border card-shadow p-10 text-center">
          <div className="w-14 h-14 rounded-full bg-terracotta/10 text-terracotta-dark flex items-center justify-center text-2xl mx-auto mb-4">✓</div>
          <h1 className="text-xl text-plum mb-2">Thanks, {parent.email}!</h1>
          <p className="text-warm-gray max-w-md mx-auto">
            Your family&rsquo;s enrollment information has been received, and your student&rsquo;s Su Mira
            account has been created using the login you set up. Your parent dashboard with your
            child&rsquo;s progress, standards mastery and updates is coming soon — a Su Mira team member
            will also follow up by email with next steps.
          </p>
          <p className="text-sm text-warm-gray-light max-w-md mx-auto mt-4">
            Your student can log in any time at <span className="font-semibold text-plum">sumirastudio.com/login</span> with
            the email and password you just created for them.
          </p>
          {!parent.email_verified && (
            <div className="mt-6 bg-cream border border-border rounded-xl px-5 py-3 inline-block">
              <p className="text-sm text-warm-gray">
                We&rsquo;ve also sent a verification email to {parent.email} — no rush, but it helps confirm this account is really yours.
              </p>
            </div>
          )}
          <div className="mt-8 pt-6 border-t border-border">
            <a
              href="/parent-portal/enroll"
              className="inline-block rounded-full bg-terracotta text-white font-semibold text-sm px-6 py-3 hover:bg-terracotta-dark transition"
            >
              + Add another learner
            </a>
          </div>
        </div>

        {hasChecklist && (
          <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10 mt-8">
            <div className="flex items-center justify-between flex-wrap gap-2 mb-2">
              <h2 className="text-lg text-plum font-semibold">Getting Started Checklist</h2>
              {checklistDone && (
                <span className="text-xs font-semibold text-sage-dark bg-sage/10 rounded-full px-3 py-1">All done!</span>
              )}
            </div>
            <p className="text-warm-gray text-sm mb-6">
              Two quick steps to complete before your learner&rsquo;s Learning Studio experience begins.
            </p>

            <div className="space-y-4">
              <a
                href="/parent-portal/orientation"
                className="flex items-center justify-between gap-4 rounded-2xl border border-border px-5 py-4 hover:border-terracotta transition"
              >
                <div className="flex items-center gap-4">
                  <span
                    className={`w-8 h-8 rounded-full flex items-center justify-center text-sm font-bold shrink-0 ${
                      parent.orientation_watched ? "bg-sage/20 text-sage-dark" : "bg-terracotta/10 text-terracotta-dark"
                    }`}
                  >
                    {parent.orientation_watched ? "✓" : "1"}
                  </span>
                  <div className="text-left">
                    <div className="font-semibold text-charcoal text-sm">Watch the Parent Orientation Video</div>
                    <div className="text-xs text-warm-gray">
                      How Su Mira works: self-paced learning, Live Studios, Gatherings, and who to contact.
                    </div>
                  </div>
                </div>
                <span className="text-terracotta-dark text-sm font-semibold shrink-0">
                  {parent.orientation_watched ? "Watch again" : "Watch now"} →
                </span>
              </a>

              <a
                href="/parent-portal/learning-blueprint"
                className="flex items-center justify-between gap-4 rounded-2xl border border-border px-5 py-4 hover:border-terracotta transition"
              >
                <div className="flex items-center gap-4">
                  <span
                    className={`w-8 h-8 rounded-full flex items-center justify-center text-sm font-bold shrink-0 ${
                      parent.learning_blueprint_completed ? "bg-sage/20 text-sage-dark" : "bg-terracotta/10 text-terracotta-dark"
                    }`}
                  >
                    {parent.learning_blueprint_completed ? "✓" : "2"}
                  </span>
                  <div className="text-left">
                    <div className="font-semibold text-charcoal text-sm">Complete Your Family Profile &amp; Learning Blueprint</div>
                    <div className="text-xs text-warm-gray">
                      Your mailing address and a few questions about {studioLearners.length > 1 ? "each learner" : "your learner"} so we can build their personalized plan.
                    </div>
                  </div>
                </div>
                <span className="text-terracotta-dark text-sm font-semibold shrink-0">
                  {parent.learning_blueprint_completed ? "Review" : "Start now"} →
                </span>
              </a>
            </div>
          </div>
        )}
      </div>
    </main>
  );
}
