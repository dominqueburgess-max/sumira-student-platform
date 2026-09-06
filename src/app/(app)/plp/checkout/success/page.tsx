import { redirect } from "next/navigation";
import { getCurrentPlpParent } from "@/lib/plpAuth";
import { PlpCheckoutSuccessClient } from "@/components/PlpCheckoutSuccessClient";

export default async function PlpCheckoutSuccessPage({
  searchParams,
}: {
  searchParams: Promise<{ session_id?: string }>;
}) {
  const parent = await getCurrentPlpParent();
  if (!parent) redirect("/plp/login");

  const { session_id } = await searchParams;
  if (!session_id) redirect("/plp/dashboard");

  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center text-center">
        <div className="font-serif font-bold text-2xl text-plum mb-6">SU MIRA</div>
        <PlpCheckoutSuccessClient sessionId={session_id} />
      </div>
    </main>
  );
}
