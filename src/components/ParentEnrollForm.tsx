"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

const inputClass = "rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";

type EnrollmentType = "personalized_plan" | "learning_studio" | "both";

type Learner = {
  key: string;
  student_name: string;
  student_age: string;
  current_grade: string;
  upcoming_grade: string;
  enrollment_type: EnrollmentType;
  studio: string;
  plan: string;
  start_date: string;
  homeschool: string;
  other_school: string;
  accommodations: string;
  student_login_email: string;
  student_login_password: string;
};

let keyCounter = 0;
function newLearner(): Learner {
  keyCounter += 1;
  return {
    key: `learner-${Date.now()}-${keyCounter}`,
    student_name: "",
    student_age: "",
    current_grade: "",
    upcoming_grade: "",
    enrollment_type: "learning_studio",
    studio: "Wonder Studio (PreK–2)",
    plan: "Foundations",
    start_date: "",
    homeschool: "",
    other_school: "",
    accommodations: "",
    student_login_email: "",
    student_login_password: "",
  };
}

export function ParentEnrollForm() {
  const router = useRouter();
  const [status, setStatus] = useState<"idle" | "submitting" | "error">("idle");
  const [errorMessage, setErrorMessage] = useState("");
  const [parentName, setParentName] = useState("");
  const [phone, setPhone] = useState("");
  const [state, setState] = useState("");
  const [esa, setEsa] = useState("");
  const [lookingFor, setLookingFor] = useState("");
  const [learners, setLearners] = useState<Learner[]>([newLearner()]);

  function updateLearner(key: string, patch: Partial<Learner>) {
    setLearners((prev) => prev.map((l) => (l.key === key ? { ...l, ...patch } : l)));
  }

  function addLearner() {
    setLearners((prev) => [...prev, newLearner()]);
  }

  function removeLearner(key: string) {
    setLearners((prev) => (prev.length > 1 ? prev.filter((l) => l.key !== key) : prev));
  }

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();

    if (!parentName.trim()) {
      setStatus("error");
      setErrorMessage("Please fill in your name.");
      return;
    }

    for (const l of learners) {
      if (!l.student_name.trim()) {
        setStatus("error");
        setErrorMessage("Please fill in a name for each learner.");
        return;
      }
      if (!l.student_login_email.trim() || !l.student_login_password.trim()) {
        setStatus("error");
        setErrorMessage(`Please set up a login email and password for ${l.student_name}.`);
        return;
      }
      if (l.student_login_password.length < 8) {
        setStatus("error");
        setErrorMessage(`${l.student_name}'s password must be at least 8 characters.`);
        return;
      }
    }

    const emails = learners.map((l) => l.student_login_email.trim().toLowerCase());
    const duplicate = emails.find((e2, i) => emails.indexOf(e2) !== i);
    if (duplicate) {
      setStatus("error");
      setErrorMessage("Each learner needs their own unique login email — two learners are using the same one.");
      return;
    }

    setStatus("submitting");
    setErrorMessage("");

    try {
      const res = await fetch("/api/parent-auth/enroll", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          parent_name: parentName,
          phone,
          state,
          esa,
          looking_for: lookingFor,
          learners: learners.map((l) => ({
            student_name: l.student_name,
            student_age: l.student_age,
            current_grade: l.current_grade,
            upcoming_grade: l.upcoming_grade,
            enrollment_type: l.enrollment_type,
            studio: l.studio,
            plan: l.plan,
            start_date: l.start_date,
            homeschool: l.homeschool,
            other_school: l.other_school,
            accommodations: l.accommodations,
            student_login_email: l.student_login_email,
            student_login_password: l.student_login_password,
          })),
        }),
      });

      if (!res.ok) {
        const body = await res.json().catch(() => ({}));
        throw new Error(body.error || "Something went wrong. Please try again.");
      }

      router.push("/parent-portal/dashboard");
      router.refresh();
    } catch (err) {
      setStatus("error");
      setErrorMessage(err instanceof Error ? err.message : "Something went wrong. Please try again.");
    }
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-6 w-full max-w-2xl">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <label className={labelClass}>Parent or guardian name
          <input type="text" value={parentName} onChange={(e) => setParentName(e.target.value)} required className={inputClass} />
        </label>
        <label className={labelClass}>Phone
          <input type="tel" value={phone} onChange={(e) => setPhone(e.target.value)} className={inputClass} />
        </label>
        <label className={labelClass}>State
          <input type="text" value={state} onChange={(e) => setState(e.target.value)} className={inputClass} />
        </label>
        <div>
          <p className="text-sm font-semibold text-plum mb-2">Is the family using or applying for ESA funding?</p>
          <div className="flex gap-4 text-sm text-charcoal">
            <label className="flex items-center gap-1"><input type="radio" name="esa" value="yes" checked={esa === "yes"} onChange={() => setEsa("yes")} /> Yes</label>
            <label className="flex items-center gap-1"><input type="radio" name="esa" value="no" checked={esa === "no"} onChange={() => setEsa("no")} /> No</label>
            <label className="flex items-center gap-1"><input type="radio" name="esa" value="unsure" checked={esa === "unsure"} onChange={() => setEsa("unsure")} /> Not sure</label>
          </div>
        </div>
      </div>

      <label className={labelClass}>What are you looking for in a learning program?
        <textarea value={lookingFor} onChange={(e) => setLookingFor(e.target.value)} className={inputClass} rows={3} />
      </label>

      <div className="flex flex-col gap-5">
        <div className="flex items-center justify-between">
          <h2 className="text-lg text-plum font-semibold">Your learner{learners.length > 1 ? "s" : ""}</h2>
          <span className="text-xs text-warm-gray">{learners.length} learner{learners.length > 1 ? "s" : ""} on this enrollment</span>
        </div>

        {learners.map((l, idx) => (
          <div key={l.key} className="rounded-2xl border border-border bg-cream/40 p-5 flex flex-col gap-4">
            <div className="flex items-center justify-between">
              <p className="text-sm font-bold text-plum uppercase tracking-wide">Learner {idx + 1}</p>
              {learners.length > 1 && (
                <button
                  type="button"
                  onClick={() => removeLearner(l.key)}
                  className="text-xs font-semibold text-terracotta-dark hover:underline"
                >
                  Remove this learner
                </button>
              )}
            </div>

            <div>
              <p className="text-sm font-semibold text-plum mb-2">What is this learner enrolling for?</p>
              <div className="grid grid-cols-1 md:grid-cols-3 gap-2">
                {([
                  { value: "personalized_plan", label: "Personalized Learning Plan only" },
                  { value: "learning_studio", label: "Full Learning Studio" },
                  { value: "both", label: "Both" },
                ] as { value: EnrollmentType; label: string }[]).map((opt) => (
                  <label
                    key={opt.value}
                    className={`cursor-pointer rounded-xl border px-3 py-2 text-sm text-center font-semibold transition ${
                      l.enrollment_type === opt.value
                        ? "border-terracotta bg-terracotta/10 text-terracotta-dark"
                        : "border-border text-charcoal"
                    }`}
                  >
                    <input
                      type="radio"
                      className="sr-only"
                      name={`enrollment_type-${l.key}`}
                      checked={l.enrollment_type === opt.value}
                      onChange={() => updateLearner(l.key, { enrollment_type: opt.value })}
                    />
                    {opt.label}
                  </label>
                ))}
              </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <label className={labelClass}>Student name
                <input type="text" value={l.student_name} onChange={(e) => updateLearner(l.key, { student_name: e.target.value })} required className={inputClass} />
              </label>
              <label className={labelClass}>Student age
                <input type="number" min={3} max={19} value={l.student_age} onChange={(e) => updateLearner(l.key, { student_age: e.target.value })} className={inputClass} />
              </label>
              <label className={labelClass}>Current grade
                <input type="text" value={l.current_grade} onChange={(e) => updateLearner(l.key, { current_grade: e.target.value })} className={inputClass} />
              </label>
              <label className={labelClass}>Grade for upcoming year
                <input type="text" value={l.upcoming_grade} onChange={(e) => updateLearner(l.key, { upcoming_grade: e.target.value })} className={inputClass} />
              </label>

              {(l.enrollment_type === "learning_studio" || l.enrollment_type === "both") && (
                <>
                  <label className={labelClass}>Preferred Learning Studio
                    <select value={l.studio} onChange={(e) => updateLearner(l.key, { studio: e.target.value })} className={inputClass}>
                      <option>Discovery Studio (Grades 3–5)</option>
                      <option>Venture Studio (Grades 6–12)</option>
                      <option>Wonder Studio (PreK–2) — Coming Oct 2026, waitlist only</option>
                      <option>Not sure yet</option>
                    </select>
                  </label>
                  <label className={labelClass}>Enrollment plan of interest
                    <select value={l.plan} onChange={(e) => updateLearner(l.key, { plan: e.target.value })} className={inputClass}>
                      <option>Foundations</option>
                      <option>Flex (Most Popular)</option>
                      <option>Signature</option>
                      <option>Not sure yet</option>
                    </select>
                  </label>
                </>
              )}

              <label className={labelClass}>Preferred start date
                <input type="date" value={l.start_date} onChange={(e) => updateLearner(l.key, { start_date: e.target.value })} className={inputClass} />
              </label>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <p className="text-sm font-semibold text-plum mb-2">Currently homeschools?</p>
                <div className="flex gap-4 text-sm text-charcoal">
                  <label className="flex items-center gap-1"><input type="radio" name={`homeschool-${l.key}`} checked={l.homeschool === "yes"} onChange={() => updateLearner(l.key, { homeschool: "yes" })} /> Yes</label>
                  <label className="flex items-center gap-1"><input type="radio" name={`homeschool-${l.key}`} checked={l.homeschool === "no"} onChange={() => updateLearner(l.key, { homeschool: "no" })} /> No</label>
                </div>
              </div>
              <div>
                <p className="text-sm font-semibold text-plum mb-2">Enrolled in another school?</p>
                <div className="flex gap-4 text-sm text-charcoal">
                  <label className="flex items-center gap-1"><input type="radio" name={`other_school-${l.key}`} checked={l.other_school === "yes"} onChange={() => updateLearner(l.key, { other_school: "yes" })} /> Yes</label>
                  <label className="flex items-center gap-1"><input type="radio" name={`other_school-${l.key}`} checked={l.other_school === "no"} onChange={() => updateLearner(l.key, { other_school: "no" })} /> No</label>
                </div>
              </div>
            </div>

            <label className={labelClass}>Does this learner require specific accommodations?
              <textarea value={l.accommodations} onChange={(e) => updateLearner(l.key, { accommodations: e.target.value })} className={inputClass} rows={2} />
            </label>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 pt-2 border-t border-border">
              <label className={labelClass}>Student login email
                <input type="email" value={l.student_login_email} onChange={(e) => updateLearner(l.key, { student_login_email: e.target.value })} required className={inputClass} />
              </label>
              <label className={labelClass}>Student login password
                <input type="password" minLength={8} value={l.student_login_password} onChange={(e) => updateLearner(l.key, { student_login_password: e.target.value })} required className={inputClass} />
              </label>
            </div>
          </div>
        ))}

        <button
          type="button"
          onClick={addLearner}
          className="self-start text-sm font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-4 py-2 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition"
        >
          + Add another learner
        </button>
      </div>

      {status === "error" && <p className="text-sm text-terracotta-dark font-semibold">{errorMessage}</p>}

      <button type="submit" disabled={status === "submitting"}
        className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {status === "submitting" ? "Submitting…" : "Submit Enrollment Information"}
      </button>
    </form>
  );
}
