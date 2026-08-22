import Link from "next/link";
import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { ParentLoginForm } from "@/components/ParentAuthForms";

export default async function ParentLoginPage() {
  const parent = await getCurrentParent();
  if (parent) redirect(parent.enrollment_completed ? "/parent-portal/dashboard" : "/parent-portal/enroll");

  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center">
        <div className="text-center mb-6">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
        </div>
        <h1 className="text-xl mb-1">Welcome back!</h1>
        <p className="text-warm-gray text-sm mb-6 text-center">Log in to your parent account.</p>
        <ParentLoginForm />
        <p className="text-sm text-warm-gray mt-6">
          New here?{" "}
          <Link href="/parent-portal/signup" className="text-terracotta-dark font-semibold">Create a parent account</Link>
        </p>
        <p className="text-sm text-warm-gray mt-2">
          Are you a student?{" "}
          <Link href="/login" className="text-terracotta-dark font-semibold">Student login</Link>
        </p>
      </div>
    </main>
  );
}
