"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

const inputClass = "rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";

export const LIVE_STUDIO_OPTIONS: { title: string; description: string }[] = [
  { title: "AI Studio", description: "Explore artificial intelligence tools, machine learning basics, prompt engineering, and how AI is changing the world and future careers." },
  { title: "Content Creation Studio", description: "Create videos, podcasts, social media content, and photography, and build your own personal brand or channel." },
  { title: "Girls/Boys Social Club Studio", description: "A community, friendship, and mentorship space to connect, talk through real life, and support each other." },
  { title: "Gaming Studio", description: "Explore video game design, esports, game strategy, streaming, and the business and culture behind gaming." },
  { title: "Student Government Studio", description: "Learn leadership, plan school events, practice public speaking, and represent your peers' voice." },
  { title: "Entrepreneurship & Money Studio", description: "Start a business, create products, explore investing, budgeting, branding, and ways to make money from an idea." },
  { title: "Future Tech & Innovation Studio", description: "Explore emerging technology, robotics, coding, app development, virtual reality, and inventions that could shape the future." },
  { title: "Culinary & Food Culture Studio", description: "Cooking challenges, recipe creation, food science, international foods, restaurant concepts, and culinary entrepreneurship." },
  { title: "Design, Fashion & Creative Arts Studio", description: "Fashion, graphic design, digital art, photography, interior design, merchandise creation, and other creative projects." },
  { title: "Sports & Wellness Studio", description: "Sports, fitness challenges, athlete development, sports media, nutrition, mental wellness, and the business of sports." },
  { title: "Real-World Life Studio", description: "The things you actually want to know for adulthood: getting a job, buying a car, credit, taxes, renting an apartment, college vs. career options, relationships, communication, and independent living." },
  { title: "Other — What studio would YOU create?", description: "Tell us your idea below." },
];

export function LiveStudioElectiveForm({
  firstName,
  existingFirst,
  existingSecond,
  existingOther,
}: {
  firstName: string;
  existingFirst: string | null;
  existingSecond: string | null;
  existingOther: string | null;
}) {
  const router = useRouter();
  const [firstChoice, setFirstChoice] = useState(existingFirst || "");
  const [secondChoice, setSecondChoice] = useState(existingSecond || "");
  const [otherIdea, setOtherIdea] = useState(existingOther || "");
  const [status, setStatus] = useState<"idle" | "submitting" | "error" | "success">("idle");
  const [error, setError] = useState("");

  const showOtherField = firstChoice.startsWith("Other") || secondChoice.startsWith("Other");

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!firstChoice) {
      setStatus("error");
      setError("Please select your first-choice Live Studio.");
      return;
    }
    setStatus("submitting");
    setError("");
    try {
      const res = await fetch("/api/student/elective-survey", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          first_choice: firstChoice,
          second_choice: secondChoice || null,
          other_studio_idea: otherIdea || null,
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
      <div className="space-y-2">
        {LIVE_STUDIO_OPTIONS.map((opt) => (
          <div key={opt.title} className="rounded-xl border border-border px-4 py-3">
            <div className="font-semibold text-charcoal text-sm">{opt.title}</div>
            <div className="text-xs text-warm-gray">{opt.description}</div>
          </div>
        ))}
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <label className={labelClass}>
          My first choice
          <select className={inputClass} value={firstChoice} onChange={(e) => setFirstChoice(e.target.value)} required>
            <option value="">Select one</option>
            {LIVE_STUDIO_OPTIONS.map((opt) => (
              <option key={opt.title} value={opt.title}>{opt.title}</option>
            ))}
          </select>
        </label>
        <label className={labelClass}>
          My backup choice (optional)
          <select className={inputClass} value={secondChoice} onChange={(e) => setSecondChoice(e.target.value)}>
            <option value="">Select one</option>
            {LIVE_STUDIO_OPTIONS.map((opt) => (
              <option key={opt.title} value={opt.title}>{opt.title}</option>
            ))}
          </select>
        </label>
      </div>

      {showOtherField && (
        <label className={labelClass}>
          If you picked &ldquo;Other,&rdquo; what studio would YOU create?
          <textarea className={inputClass + " min-h-[70px]"} value={otherIdea} onChange={(e) => setOtherIdea(e.target.value)} />
        </label>
      )}

      {status === "error" && <p className="text-sm text-terracotta-dark font-semibold">{error}</p>}

      <button
        type="submit"
        disabled={status === "submitting"}
        className="rounded-full bg-terracotta text-white font-semibold text-sm px-6 py-3 hover:bg-terracotta-dark transition disabled:opacity-50"
      >
        {status === "submitting" ? "Saving…" : "Submit My Live Studio Choice"}
      </button>
    </form>
  );
}
