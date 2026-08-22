import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { ParentEnrollForm } from "@/components/ParentEnrollForm";

export default async function ParentEnrollPage() {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (!parent.email_verified) redirect("/parent-portal/verify-email");
  if (parent.enrollment_completed) redirect("/parent-portal/dashboard");

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-2xl mx-auto">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
        </div>
        <div className="bg-ivory rounded-3xl card-shadow p-8 md:p-10">
          <h1 className="text-xl text-plum mb-2">Tell us about your family</h1>
          <p className="text-warm-gray text-sm mb-6">
            Before you can access your parent dashboard, share a little about your learner. Our team will
            follow up with a recommended Learning Studio, plan and next steps.
          </p>
          <ParentEnrollForm />
        </div>
      </div>
    </main>
  );
}
