import Link from "next/link";
import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { ParentSignupForm } from "@/components/ParentAuthForms";

export default async function ParentSignupPage() {
  const parent = await getCurrentParent();
  if (parent) redirect(parent.enrollment_completed ? "/parent-portal/dashboard" : "/parent-portal/enroll");

  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center">
        <div className="text-center mb-6">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
        </div>
        <h1 className="text-xl mb-1">Create your parent account</h1>
        <p className="text-warm-gray text-sm mb-6 text-center">Sign up to submit your family&rsquo;s enrollment information and track your child&rsquo;s journey.</p>
        <ParentSignupForm />
        <p className="text-sm text-warm-gray mt-6">
          Already have an account?{" "}
          <Link href="/parent-portal/login" className="text-terracotta-dark font-semibold">Log in</Link>
        </p>
        <p className="text-sm text-warm-gray mt-2">
          Are you a student?{" "}
          <Link href="/login" className="text-terracotta-dark font-semibold">Student login</Link>
        </p>
      </div>
    </main>
  );
}
