"use client";

import { useState, FormEvent } from "react";

const inputClass = "rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";

const GRADE_OPTIONS = ["Pre-K", "K", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];

const PLANS: { tier: string; name: string; price: string; note: string; features: string[] }[] = [
  { tier: "essentials", name: "Essentials", price: "$299 one-time", note: "One Blueprint for the full school year", features: ["One AI-generated Blueprint", "Recommended courses & weekly schedule", "Standards-aligned suggestions"] },
  { tier: "growing", name: "Growing", price: "$599/year", note: "Refreshed every quarter", features: ["Everything in Essentials", "A revised Blueprint every quarter", "Updated schedule each revision", "Priority email support"] },
  { tier: "guided", name: "Guided", price: "$125/month", note: "Unlimited revisions + live coaching", features: ["Everything in Growing", "Unlimited Blueprint revisions", "Monthly 1:1 coaching session", "Priority Su Mira Gatherings access"] },
];

export function PlpNewPlanForm({ defaultTier }: { defaultTier?: string }) {
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [gradeLevel, setGradeLevel] = useState("");
  const [notes, setNotes] = useState("");
  const [tier, setTier] = useState(defaultTier && PLANS.some((p) => p.tier === defaultTier) ? defaultTier : "growing");
  const [status, setStatus] = useState<"idle" | "submitting" | "error">("idle");
  const [error, setError] = useState("");

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setStatus("submitting");
    setError("");

    const createRes = await fetch("/api/plp/create-plan", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ first_name: firstName, last_name: lastName, grade_level: gradeLevel, notes, plan_tier: tier }),
    });
    const createData = await createRes.json().catch(() => ({}));
    if (!createRes.ok) {
      setError(createData.error || "Something went wrong.");
      setStatus("error");
      return;
    }

    const checkoutRes = await fetch("/api/plp/checkout", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ planId: createData.planId }),
    });
    const checkoutData = await checkoutRes.json().catch(() => ({}));
    if (!checkoutRes.ok) {
      setError(checkoutData.error || "Something went wrong starting checkout.");
      setStatus("error");
      return;
    }

    window.location.href = checkoutData.url;
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-6">
      {error && <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>}

      <div>
        <h2 className="text-plum font-semibold mb-3">Tell us about your learner</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <label className={labelClass}>
            First name
            <input required className={inputClass} value={firstName} onChange={(e) => setFirstName(e.target.value)} />
          </label>
          <label className={labelClass}>
            Last name <span className="font-normal text-warm-gray">(optional)</span>
            <input className={inputClass} value={lastName} onChange={(e) => setLastName(e.target.value)} />
          </label>
        </div>
        <label className={labelClass + " mt-4"}>
          Grade level
          <select required className={inputClass} value={gradeLevel} onChange={(e) => setGradeLevel(e.target.value)}>
            <option value="" disabled>Select a grade</option>
            {GRADE_OPTIONS.map((g) => <option key={g} value={g}>{g}</option>)}
          </select>
        </label>
        <label className={labelClass + " mt-4"}>
          Anything we should know? <span className="font-normal text-warm-gray">(optional)</span>
          <textarea className={inputClass + " min-h-[70px]"} value={notes} onChange={(e) => setNotes(e.target.value)} />
        </label>
      </div>

      <div>
        <h2 className="text-plum font-semibold mb-3">Choose a plan</h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {PLANS.map((p) => (
            <label key={p.tier}
              className={`rounded-2xl border-2 p-4 cursor-pointer transition ${tier === p.tier ? "border-terracotta bg-cream" : "border-border bg-ivory"}`}>
              <input type="radio" name="tier" value={p.tier} checked={tier === p.tier} onChange={() => setTier(p.tier)} className="sr-only" />
              <div className="font-serif font-bold text-plum">{p.name}</div>
              <div className="text-terracotta-dark font-semibold text-sm mb-1">{p.price}</div>
              <div className="text-xs text-warm-gray mb-2">{p.note}</div>
              <ul className="text-xs text-charcoal flex flex-col gap-1">
                {p.features.map((f) => <li key={f}>• {f}</li>)}
              </ul>
            </label>
          ))}
        </div>
      </div>

      <button type="submit" disabled={status === "submitting"}
        className="mt-2 bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {status === "submitting" ? "Redirecting to payment…" : "Continue to Payment"}
      </button>
    </form>
  );
}
