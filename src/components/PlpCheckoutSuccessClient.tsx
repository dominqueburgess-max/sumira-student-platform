"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";

export function PlpCheckoutSuccessClient({ sessionId }: { sessionId: string }) {
  const router = useRouter();
  const [attempt, setAttempt] = useState(0);
  const [failed, setFailed] = useState(false);

  useEffect(() => {
    let cancelled = false;

    async function poll() {
      const res = await fetch(`/api/plp/plan-status?session_id=${encodeURIComponent(sessionId)}`);
      const data = await res.json().catch(() => ({}));
      if (cancelled) return;

      if (res.ok && data.status === "active") {
        router.push(`/plp/questionnaire?planId=${data.planId}`);
        return;
      }

      if (attempt >= 9) {
        setFailed(true);
        return;
      }
      setTimeout(() => setAttempt((a) => a + 1), 2000);
    }

    poll();
    return () => { cancelled = true; };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [attempt]);

  if (failed) {
    return (
      <>
        <h1 className="text-xl text-plum mb-2">Payment received</h1>
        <p className="text-warm-gray text-sm mb-6">
          We&rsquo;re still confirming things on our end — this can take a minute. Check your dashboard shortly,
          or refresh this page.
        </p>
        <a href="/plp/dashboard" className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 transition">
          Go to dashboard
        </a>
      </>
    );
  }

  return (
    <>
      <h1 className="text-xl text-plum mb-2">Confirming your payment…</h1>
      <p className="text-warm-gray text-sm">This will just take a moment.</p>
    </>
  );
}
