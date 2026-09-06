export default async function PlpCheckoutCancelPage({
  searchParams,
}: {
  searchParams: Promise<{ planId?: string }>;
}) {
  const { planId } = await searchParams;

  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center text-center">
        <div className="font-serif font-bold text-2xl text-plum mb-6">SU MIRA</div>
        <h1 className="text-xl text-plum mb-2">Checkout canceled</h1>
        <p className="text-warm-gray text-sm mb-6">No worries — nothing was charged. You can pick up right where you left off whenever you&rsquo;re ready.</p>
        <a href="/plp/dashboard" className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 transition">
          Back to dashboard
        </a>
        {planId && <p className="text-xs text-warm-gray mt-3">Reference: plan #{planId}</p>}
      </div>
    </main>
  );
}
