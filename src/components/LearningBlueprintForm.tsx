"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

const inputClass = "rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";
const textareaClass = inputClass + " min-h-[70px]";

type ExistingBlueprint = {
  learning_style: string | null;
  interests: string | null;
  strengths: string | null;
  growth_areas: string | null;
  favorite_subjects: string | null;
  challenging_subjects: string | null;
  motivation: string | null;
  tech_access: string | null;
  best_learning_time: string | null;
  prior_schooling: string | null;
  goals_this_year: string | null;
  additional_notes: string | null;
} | null;

type LearnerProp = { id: number; name: string; existing: ExistingBlueprint };

type LearnerAnswers = {
  student_id: number;
  learning_style: string;
  interests: string;
  strengths: string;
  growth_areas: string;
  favorite_subjects: string;
  challenging_subjects: string;
  motivation: string;
  tech_access: string;
  best_learning_time: string;
  prior_schooling: string;
  goals_this_year: string;
  additional_notes: string;
};

function fromExisting(id: number, e: ExistingBlueprint): LearnerAnswers {
  return {
    student_id: id,
    learning_style: e?.learning_style || "",
    interests: e?.interests || "",
    strengths: e?.strengths || "",
    growth_areas: e?.growth_areas || "",
    favorite_subjects: e?.favorite_subjects || "",
    challenging_subjects: e?.challenging_subjects || "",
    motivation: e?.motivation || "",
    tech_access: e?.tech_access || "",
    best_learning_time: e?.best_learning_time || "",
    prior_schooling: e?.prior_schooling || "",
    goals_this_year: e?.goals_this_year || "",
    additional_notes: e?.additional_notes || "",
  };
}

export function LearningBlueprintForm({
  parentEmail,
  mailingAddressLine1,
  mailingAddressLine2,
  mailingCity,
  mailingState,
  mailingZip,
  learners,
}: {
  parentEmail: string;
  mailingAddressLine1: string;
  mailingAddressLine2: string;
  mailingCity: string;
  mailingState: string;
  mailingZip: string;
  learners: LearnerProp[];
}) {
  const router = useRouter();
  const [email, setEmail] = useState(parentEmail);
  const [line1, setLine1] = useState(mailingAddressLine1);
  const [line2, setLine2] = useState(mailingAddressLine2);
  const [city, setCity] = useState(mailingCity);
  const [stateVal, setStateVal] = useState(mailingState);
  const [zip, setZip] = useState(mailingZip);
  const [answers, setAnswers] = useState<LearnerAnswers[]>(
    learners.map((l) => fromExisting(l.id, l.existing))
  );
  const [status, setStatus] = useState<"idle" | "submitting" | "error" | "success">("idle");
  const [error, setError] = useState("");

  function updateAnswer(studentId: number, patch: Partial<LearnerAnswers>) {
    setAnswers((prev) => prev.map((a) => (a.student_id === studentId ? { ...a, ...patch } : a)));
  }

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!email.trim() || !line1.trim() || !city.trim() || !stateVal.trim() || !zip.trim()) {
      setStatus("error");
      setError("Please fill in your email and complete mailing address.");
      return;
    }

    setStatus("submitting");
    setError("");

    try {
      const res = await fetch("/api/parent-auth/learning-blueprint", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          email,
          mailing_address_line1: line1,
          mailing_address_line2: line2,
          mailing_city: city,
          mailing_state: stateVal,
          mailing_zip: zip,
          learners: answers,
        }),
      });
      if (!res.ok) {
        const body = await res.json().catch(() => ({}));
        throw new Error(body.error || "Something went wrong. Please try again.");
      }
      setStatus("success");
      router.push("/parent-portal/dashboard");
      router.refresh();
    } catch (err) {
      setStatus("error");
      setError(err instanceof Error ? err.message : "Something went wrong. Please try again.");
    }
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-8">
      <div>
        <h2 className="text-plum font-semibold text-sm uppercase tracking-wide mb-4">Family Contact Information</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <label className={labelClass + " md:col-span-2"}>
            Email address
            <input type="email" className={inputClass} value={email} onChange={(e) => setEmail(e.target.value)} required />
          </label>
          <label className={labelClass + " md:col-span-2"}>
            Mailing address
            <input type="text" placeholder="Street address" className={inputClass} value={line1} onChange={(e) => setLine1(e.target.value)} required />
          </label>
          <label className={labelClass + " md:col-span-2"}>
            &nbsp;
            <input type="text" placeholder="Apt, suite, etc. (optional)" className={inputClass} value={line2} onChange={(e) => setLine2(e.target.value)} />
          </label>
          <label className={labelClass}>
            City
            <input type="text" className={inputClass} value={city} onChange={(e) => setCity(e.target.value)} required />
          </label>
          <label className={labelClass}>
            State
            <input type="text" className={inputClass} value={stateVal} onChange={(e) => setStateVal(e.target.value)} required />
          </label>
          <label className={labelClass}>
            ZIP code
            <input type="text" className={inputClass} value={zip} onChange={(e) => setZip(e.target.value)} required />
          </label>
        </div>
      </div>

      {learners.map((l, idx) => {
        const a = answers[idx];
        return (
          <div key={l.id} className="pt-6 border-t border-border">
            <h2 className="text-plum font-semibold text-sm uppercase tracking-wide mb-1">Learning Blueprint — {l.name}</h2>
            <p className="text-xs text-warm-gray mb-4">These answers help Mira and your Learning Ambassador build {l.name.split(" ")[0]}&rsquo;s personalized plan.</p>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <label className={labelClass}>
                How does {l.name.split(" ")[0]} learn best?
                <select className={inputClass} value={a.learning_style} onChange={(e) => updateAnswer(l.id, { learning_style: e.target.value })}>
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
                Best time of day for learning
                <select className={inputClass} value={a.best_learning_time} onChange={(e) => updateAnswer(l.id, { best_learning_time: e.target.value })}>
                  <option value="">Select one</option>
                  <option>Early morning</option>
                  <option>Mid-morning</option>
                  <option>Afternoon</option>
                  <option>Evening</option>
                  <option>Varies day to day</option>
                </select>
              </label>
              <label className={labelClass + " md:col-span-2"}>
                Interests, hobbies, and things they love
                <textarea className={textareaClass} value={a.interests} onChange={(e) => updateAnswer(l.id, { interests: e.target.value })} />
              </label>
              <label className={labelClass}>
                Academic strengths
                <textarea className={textareaClass} value={a.strengths} onChange={(e) => updateAnswer(l.id, { strengths: e.target.value })} />
              </label>
              <label className={labelClass}>
                Areas they'd like to grow in
                <textarea className={textareaClass} value={a.growth_areas} onChange={(e) => updateAnswer(l.id, { growth_areas: e.target.value })} />
              </label>
              <label className={labelClass}>
                Favorite subjects
                <input type="text" className={inputClass} value={a.favorite_subjects} onChange={(e) => updateAnswer(l.id, { favorite_subjects: e.target.value })} />
              </label>
              <label className={labelClass}>
                Subjects that feel challenging
                <input type="text" className={inputClass} value={a.challenging_subjects} onChange={(e) => updateAnswer(l.id, { challenging_subjects: e.target.value })} />
              </label>
              <label className={labelClass}>
                What motivates them to keep going?
                <input type="text" className={inputClass} value={a.motivation} onChange={(e) => updateAnswer(l.id, { motivation: e.target.value })} />
              </label>
              <label className={labelClass}>
                Technology access at home
                <select className={inputClass} value={a.tech_access} onChange={(e) => updateAnswer(l.id, { tech_access: e.target.value })}>
                  <option value="">Select one</option>
                  <option>Dedicated laptop/tablet for learning</option>
                  <option>Shared family device</option>
                  <option>Needs a device</option>
                  <option>Not sure yet</option>
                </select>
              </label>
              <label className={labelClass + " md:col-span-2"}>
                Prior schooling (homeschool, traditional school, other programs)
                <textarea className={textareaClass} value={a.prior_schooling} onChange={(e) => updateAnswer(l.id, { prior_schooling: e.target.value })} />
              </label>
              <label className={labelClass + " md:col-span-2"}>
                What are your goals for {l.name.split(" ")[0]} this year?
                <textarea className={textareaClass} value={a.goals_this_year} onChange={(e) => updateAnswer(l.id, { goals_this_year: e.target.value })} />
              </label>
              <label className={labelClass + " md:col-span-2"}>
                Anything else Su Mira should know?
                <textarea className={textareaClass} value={a.additional_notes} onChange={(e) => updateAnswer(l.id, { additional_notes: e.target.value })} />
              </label>
            </div>
          </div>
        );
      })}

      {status === "error" && <p className="text-sm text-terracotta-dark font-semibold">{error}</p>}

      <button
        type="submit"
        disabled={status === "submitting"}
        className="rounded-full bg-terracotta text-white font-semibold text-sm px-6 py-3 hover:bg-terracotta-dark transition disabled:opacity-50"
      >
        {status === "submitting" ? "Saving…" : "Submit Family Profile & Learning Blueprint"}
      </button>
    </form>
  );
}
