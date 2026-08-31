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
  show_what_i_know: string | null;
  goals_this_year: string | null;
  additional_notes: string | null;
} | null;

export function StudentBlueprintForm({ firstName, existing }: { firstName: string; existing: Existing }) {
  const router = useRouter();
  const [learningStyle, setLearningStyle] = useState(existing?.learning_style || "");
  const [interests, setInterests] = useState(existing?.interests || "");
  const [strengths, setStrengths] = useState(existing?.strengths || "");
  const [growthAreas, setGrowthAreas] = useState(existing?.growth_areas || "");
  const [favoriteSubjects, setFavoriteSubjects] = useState(existing?.favorite_subjects || "");
  const [challengingSubjects, setChallengingSubjects] = useState(existing?.challenging_subjects || "");
  const [motivation, setMotivation] = useState(existing?.motivation || "");
  const [bestTime, setBestTime] = useState(existing?.best_learning_time || "");
  const [showWhatIKnow, setShowWhatIKnow] = useState(existing?.show_what_i_know || "");
  const [goals, setGoals] = useState(existing?.goals_this_year || "");
  const [notes, setNotes] = useState(existing?.additional_notes || "");
  const [status, setStatus] = useState<"idle" | "submitting" | "error" | "success">("idle");
  const [error, setError] = useState("");

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setStatus("submitting");
    setError("");
    try {
      const res = await fetch("/api/student/blueprint-survey", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          learning_style: learningStyle,
          interests,
          strengths,
          growth_areas: growthAreas,
          favorite_subjects: favoriteSubjects,
          challenging_subjects: challengingSubjects,
          motivation,
          best_learning_time: bestTime,
          show_what_i_know: showWhatIKnow,
          goals_this_year: goals,
          additional_notes: notes,
        }),
      });
      if (!res.ok) {
        const body = await res.json().catch(() => ({}));
        throw new Error(body.error || "Something went wrong. Please try again.");
      }
      setStatus("success");
      router.push("/dashboard");
      router.refresh();
    } catch (err) {
      setStatus("error");
      setError(err instanceof Error ? err.message : "Something went wrong. Please try again.");
    }
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-6">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <label className={labelClass}>
          How do you learn best?
          <select className={inputClass} value={learningStyle} onChange={(e) => setLearningStyle(e.target.value)}>
            <option value="">Select one</option>
            <option>Hands-on / doing</option>
            <option>Visual (pictures, diagrams, video)</option>
            <option>Listening / discussion</option>
            <option>Reading &amp; writing</option>
            <option>A mix of these</option>
            <option>Not sure yet</option>
          </select>
        </label>
        <label className={labelClass}>
          Best time of day for you to learn
          <select className={inputClass} value={bestTime} onChange={(e) => setBestTime(e.target.value)}>
            <option value="">Select one</option>
            <option>Early morning</option>
            <option>Mid-morning</option>
            <option>Afternoon</option>
            <option>Evening</option>
            <option>Varies day to day</option>
          </select>
        </label>
        <label className={labelClass + " md:col-span-2"}>
          What are you really interested in or curious about right now?
          <textarea className={textareaClass} value={interests} onChange={(e) => setInterests(e.target.value)} />
        </label>
        <label className={labelClass}>
          What do you think you're really good at?
          <textarea className={textareaClass} value={strengths} onChange={(e) => setStrengths(e.target.value)} />
        </label>
        <label className={labelClass}>
          What's something you'd like to get better at this year?
          <textarea className={textareaClass} value={growthAreas} onChange={(e) => setGrowthAreas(e.target.value)} />
        </label>
        <label className={labelClass}>
          Favorite subjects
          <input type="text" className={inputClass} value={favoriteSubjects} onChange={(e) => setFavoriteSubjects(e.target.value)} />
        </label>
        <label className={labelClass}>
          Subjects that feel more challenging
          <input type="text" className={inputClass} value={challengingSubjects} onChange={(e) => setChallengingSubjects(e.target.value)} />
        </label>
        <label className={labelClass + " md:col-span-2"}>
          What motivates you to do your best work?
          <input type="text" className={inputClass} value={motivation} onChange={(e) => setMotivation(e.target.value)} />
        </label>
        <label className={labelClass + " md:col-span-2"}>
          How do you like to show what you've learned?
          <select className={inputClass} value={showWhatIKnow} onChange={(e) => setShowWhatIKnow(e.target.value)}>
            <option value="">Select one</option>
            <option>Writing it out</option>
            <option>Talking it through / presenting</option>
            <option>Building or making something</option>
            <option>Art or design</option>
            <option>A test or quiz</option>
            <option>A mix of these</option>
          </select>
        </label>
        <label className={labelClass + " md:col-span-2"}>
          What are your goals for yourself this year?
          <textarea className={textareaClass} value={goals} onChange={(e) => setGoals(e.target.value)} />
        </label>
        <label className={labelClass + " md:col-span-2"}>
          Anything else you want Su Mira and Mira AI to know about you?
          <textarea className={textareaClass} value={notes} onChange={(e) => setNotes(e.target.value)} />
        </label>
      </div>

      {status === "error" && <p className="text-sm text-terracotta-dark font-semibold">{error}</p>}

      <button
        type="submit"
        disabled={status === "submitting"}
        className="rounded-full bg-terracotta text-white font-semibold text-sm px-6 py-3 hover:bg-terracotta-dark transition disabled:opacity-50"
      >
        {status === "submitting" ? "Saving…" : `Submit My Learning Blueprint`}
      </button>
    </form>
  );
}
