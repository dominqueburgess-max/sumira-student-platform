import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { ResendVerificationButton } from "@/components/ResendVerificationButton";
import { ParentLogoutButton } from "@/components/ParentLogoutButton";

export default async function VerifyEmailPage({
  searchParams,
}: {
  searchParams: Promise<{ error?: string }>;
}) {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (parent.email_verified) redirect(parent.enrollment_completed ? "/parent-portal/dashboard" : "/parent-portal/enroll");

  const { error } = await searchParams;

  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center text-center">
        <div className="mb-6">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
        </div>
        <h1 className="text-xl text-plum mb-2">Verify your email</h1>
        {error && (
          <p className="text-sm text-terracotta-dark font-semibold mb-3">
            {error === "expired" ? "That verification link expired." : "That verification link wasn't valid."}
          </p>
        )}
        <p className="text-warm-gray text-sm mb-6">
          We sent a verification link to <span className="font-semibold text-plum">{parent.email}</span>.
          Click the link in that email to continue.
        </p>
        <div className="flex flex-col gap-3 items-center">
          <ResendVerificationButton />
          <ParentLogoutButton />
        </div>
      </div>
    </main>
  );
}
