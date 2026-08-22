import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { ParentLogoutButton } from "@/components/ParentLogoutButton";

export default async function ParentDashboardPage() {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (!parent.email_verified) redirect("/parent-portal/verify-email");
  if (!parent.enrollment_completed) redirect("/parent-portal/enroll");

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
        <div className="bg-ivory rounded-3xl card-shadow p-10 text-center">
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
        </div>
      </div>
    </main>
  );
}
