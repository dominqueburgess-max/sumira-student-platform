"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

const inputClass = "rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";
const textareaClass = inputClass + " min-h-[70px]";

type Existing = {
  learning_style: string | null;
  interests: string | null;
  strengths: string | null;
  growth_areas: string | null;
  favorite_subjects: string | null;
  challenging_subjects: string | null;
  motivation: string | null;
  best_learning_time: string | null;
  prior_schooling: string | null;
  goals_this_year: string | null;
  additional_notes: string | null;
} | null;

export function PlpQuestionnaireForm({ planId, childName, existing }: { planId: number; childName: string; existing: Existing }) {
  const router = useRouter();
  const [answers, setAnswers] = useState({
    learning_style: existing?.learning_style || "",
    interests: existing?.interests || "",
    strengths: existing?.strengths || "",
    growth_areas: existing?.growth_areas || "",
    favorite_subjects: existing?.favorite_subjects || "",
    challenging_subjects: existing?.challenging_subjects || "",
    motivation: existing?.motivation || "",
    best_learning_time: existing?.best_learning_time || "",
    prior_schooling: existing?.prior_schooling || "",
    goals_this_year: existing?.goals_this_year || "",
    additional_notes: existing?.additional_notes || "",
  });
  const [status, setStatus] = useState<"idle" | "submitting" | "error" | "success">("idle");
  const [error, setError] = useState("");

  function set(field: keyof typeof answers, value: string) {
    setAnswers((a) => ({ ...a, [field]: value }));
  }

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setStatus("submitting");
    setError("");

    const res = await fetch("/api/plp/questionnaire", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ planId, ...answers }),
    });

    if (!res.ok) {
      const data = await res.json().catch(() => ({}));
      setError(data.error || "Something went wrong. Please try again.");
      setStatus("error");
      return;
    }

    setStatus("success");

    // Auto-download the finished Blueprint PDF.
    const link = document.createElement("a");
    link.href = `/api/plp/blueprint/${planId}/pdf`;
    link.download = "";
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);

    setTimeout(() => {
      router.push("/plp/dashboard");
      router.refresh();
    }, 1500);
  }

  if (status === "success") {
    return (
      <div className="text-center py-10">
        <div className="text-4xl mb-3">🎉</div>
        <h2 className="text-lg text-plum font-semibold mb-2">{childName}&rsquo;s Blueprint is ready!</h2>
        <p className="text-warm-gray text-sm">Your download should begin automatically — taking you to your dashboard…</p>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-5">
      {error && <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>}

      <label className={labelClass}>
        How does {childName} learn best? (visually, hands-on, listening, reading, moving, etc.)
        <textarea className={textareaClass} value={answers.learning_style} onChange={(e) => set("learning_style", e.target.value)} />
      </label>
      <label className={labelClass}>
        What is {childName} interested in or curious about right now?
        <textarea className={textareaClass} value={answers.interests} onChange={(e) => set("interests", e.target.value)} />
      </label>
      <label className={labelClass}>
        What are {childName}&rsquo;s strengths?
        <textarea className={textareaClass} value={answers.strengths} onChange={(e) => set("strengths", e.target.value)} />
      </label>
      <label className={labelClass}>
        What areas would you like to see {childName} grow in?
        <textarea className={textareaClass} value={answers.growth_areas} onChange={(e) => set("growth_areas", e.target.value)} />
      </label>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <label className={labelClass}>
          Favorite subjects
          <input className={inputClass} value={answers.favorite_subjects} onChange={(e) => set("favorite_subjects", e.target.value)} />
        </label>
        <label className={labelClass}>
          Most challenging subjects
          <input className={inputClass} value={answers.challenging_subjects} onChange={(e) => set("challenging_subjects", e.target.value)} />
        </label>
      </div>
      <label className={labelClass}>
        What motivates {childName} to keep going when something is hard?
        <textarea className={textareaClass} value={answers.motivation} onChange={(e) => set("motivation", e.target.value)} />
      </label>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
        <label className={labelClass}>
          Best time of day for focused learning
          <input className={inputClass} value={answers.best_learning_time} onChange={(e) => set("best_learning_time", e.target.value)} />
        </label>
        <label className={labelClass}>
          Prior schooling background
          <input className={inputClass} value={answers.prior_schooling} onChange={(e) => set("prior_schooling", e.target.value)} />
        </label>
      </div>
      <label className={labelClass}>
        What are your family&rsquo;s goals for {childName} this year?
        <textarea className={textareaClass} value={answers.goals_this_year} onChange={(e) => set("goals_this_year", e.target.value)} />
      </label>
      <label className={labelClass}>
        Anything else Mira should know?
        <textarea className={textareaClass} value={answers.additional_notes} onChange={(e) => set("additional_notes", e.target.value)} />
      </label>

      <button type="submit" disabled={status === "submitting"}
        className="mt-2 bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {status === "submitting" ? "Building your Blueprint…" : "Build My Blueprint"}
      </button>
    </form>
  );
}
