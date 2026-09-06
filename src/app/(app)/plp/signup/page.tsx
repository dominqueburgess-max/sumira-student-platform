import Link from "next/link";
import { redirect } from "next/navigation";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { PlpSignupForm } from "@/components/PlpAuthForms";

export default async function PlpSignupPage() {
  const parent = await getCurrentPlpParent();
  if (parent) redirect("/plp");

  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center">
        <div className="text-center mb-6">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">LEARNING BLUEPRINT</div>
        </div>
        <h1 className="text-xl mb-1 text-center">Create your account</h1>
        <p className="text-warm-gray text-sm mb-6 text-center">
          Start here to build your learner&rsquo;s Personalized Learning Blueprint &mdash; no full Learning Studio enrollment required.
        </p>
        <PlpSignupForm />
        <p className="text-sm text-warm-gray mt-6">
          Already have an account?{" "}
          <Link href="/plp/login" className="text-terracotta-dark font-semibold">Log in</Link>
        </p>
        <p className="text-sm text-warm-gray mt-2">
          Enrolling in full Learning Studio?{" "}
          <Link href="/parent-portal/signup" className="text-terracotta-dark font-semibold">Go here instead</Link>
        </p>
      </div>
    </main>
  );
}
