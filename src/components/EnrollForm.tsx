"use client";

import { useState, FormEvent } from "react";

type EnrollmentType = "learning_studio" | "personalized_plan" | "both";

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
    studio: "Discovery Studio (Grades 3–5)",
    plan: "Foundations",
    start_date: "",
    homeschool: "",
    other_school: "",
    accommodations: "",
  };
}

const typeLabels: Record<EnrollmentType, string> = {
  learning_studio: "Full Learning Studio",
  personalized_plan: "Personalized Learning Plan only",
  both: "Both",
};

export function EnrollForm() {
  const [status, setStatus] = useState<"idle" | "submitting" | "success" | "error">("idle");
  const [errorMessage, setErrorMessage] = useState("");
  const [parentName, setParentName] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [state, setState] = useState("");
  const [esa, setEsa] = useState("");
  const [lookingFor, setLookingFor] = useState("");
  const [learners, setLearners] = useState<Learner[]>([newLearner()]);
  const [submittedCount, setSubmittedCount] = useState(1);

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

    if (!parentName.trim() || !email.trim()) {
      setStatus("error");
      setErrorMessage("Please fill in your name and email.");
      return;
    }
    for (const l of learners) {
      if (!l.student_name.trim()) {
        setStatus("error");
        setErrorMessage("Please fill in a name for each learner.");
        return;
      }
    }

    setStatus("submitting");
    setErrorMessage("");

    try {
      const res = await fetch("/api/enroll", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          parent_name: parentName,
          email,
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
            studio: l.enrollment_type === "personalized_plan" ? "Personalized Learning Plan only" : l.studio,
            plan: l.enrollment_type === "personalized_plan" ? "Personalized Learning Plan only" : l.plan,
            start_date: l.start_date,
            homeschool: l.homeschool,
            other_school: l.other_school,
            accommodations: l.accommodations,
          })),
        }),
      });

      if (!res.ok) {
        const body = await res.json().catch(() => ({}));
        throw new Error(body.error || "Something went wrong. Please try again.");
      }

      setSubmittedCount(learners.length);
      setStatus("success");
    } catch (err) {
      setStatus("error");
      setErrorMessage(err instanceof Error ? err.message : "Something went wrong. Please try again.");
    }
  }

  if (status === "success") {
    return (
      <div className="pillow" style={{ textAlign: "center" }}>
        <h3 style={{ marginTop: 0 }}>Welcome to the Su Mira family!</h3>
        <p style={{ marginBottom: 0 }}>
          We&rsquo;ve received your family&rsquo;s information{submittedCount > 1 ? ` for all ${submittedCount} learners` : ""}.
          A Su Mira team member will follow up by email within one to two business days with next steps and a recommended plan for {submittedCount > 1 ? "each learner" : "your learner"}.
        </p>
      </div>
    );
  }

  return (
    <form className="enroll" onSubmit={handleSubmit}>
      <h3 style={{ marginBottom: 24 }}>Family Information</h3>
      <div className="form-grid">
        <div className="field"><label>Parent or guardian name</label><input type="text" value={parentName} onChange={(e) => setParentName(e.target.value)} required /></div>
        <div className="field"><label>Email</label><input type="email" value={email} onChange={(e) => setEmail(e.target.value)} required /></div>
        <div className="field"><label>Phone</label><input type="tel" value={phone} onChange={(e) => setPhone(e.target.value)} /></div>
        <div className="field"><label>State</label><input type="text" value={state} onChange={(e) => setState(e.target.value)} required /></div>
        <div className="field">
          <label>Is the family using or applying for ESA funding?</label>
          <div className="radio-row">
            <label><input type="radio" name="esa" value="yes" checked={esa === "yes"} onChange={() => setEsa("yes")} /> Yes</label>
            <label><input type="radio" name="esa" value="no" checked={esa === "no"} onChange={() => setEsa("no")} /> No</label>
            <label><input type="radio" name="esa" value="unsure" checked={esa === "unsure"} onChange={() => setEsa("unsure")} /> Not sure</label>
          </div>
        </div>
        <div className="field full"><label>What are you looking for in a learning program?</label><textarea value={lookingFor} onChange={(e) => setLookingFor(e.target.value)} /></div>
      </div>

      <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", marginTop: 36, marginBottom: 4 }}>
        <h3 style={{ margin: 0 }}>Your Learner{learners.length > 1 ? "s" : ""}</h3>
        <span style={{ fontSize: "0.82rem", color: "var(--warm-gray)" }}>{learners.length} learner{learners.length > 1 ? "s" : ""} on this enrollment</span>
      </div>
      <p style={{ marginTop: 4, marginBottom: 20, color: "var(--warm-gray)" }}>
        Enrolling more than one child? Add each learner below and choose what fits them &mdash; you can always add the other option later.
      </p>

      {learners.map((l, idx) => (
        <div
          key={l.key}
          style={{
            border: "1px solid var(--border)",
            borderRadius: "var(--radius-md)",
            padding: "22px 24px",
            marginBottom: 20,
            background: "var(--cream)",
          }}
        >
          <div style={{ display: "flex", alignItems: "center", justifyContent: "space-between", marginBottom: 16 }}>
            <strong style={{ color: "var(--plum)", textTransform: "uppercase", fontSize: "0.8rem", letterSpacing: "0.05em" }}>Learner {idx + 1}</strong>
            {learners.length > 1 && (
              <button
                type="button"
                onClick={() => removeLearner(l.key)}
                style={{ background: "none", border: "none", color: "var(--terracotta-dark)", fontWeight: 600, fontSize: "0.82rem", cursor: "pointer", padding: 0 }}
              >
                Remove this learner
              </button>
            )}
          </div>

          <p style={{ margin: "0 0 10px", fontWeight: 700, color: "var(--plum)" }}>What is this learner enrolling in?</p>
          <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr 1fr", gap: 12, marginBottom: 22 }}>
            {(["learning_studio", "personalized_plan", "both"] as EnrollmentType[]).map((val) => (
              <label
                key={val}
                style={{
                  display: "block",
                  cursor: "pointer",
                  textAlign: "center",
                  border: `2px solid ${l.enrollment_type === val ? "var(--terracotta)" : "var(--border)"}`,
                  borderRadius: "var(--radius-md)",
                  padding: "10px 8px",
                  fontSize: "0.85rem",
                  fontWeight: 700,
                  color: l.enrollment_type === val ? "var(--terracotta-dark)" : "var(--charcoal)",
                  background: l.enrollment_type === val ? "rgba(226,145,110,0.08)" : "var(--ivory)",
                }}
              >
                <input
                  type="radio"
                  name={`enrollment_type-${l.key}`}
                  checked={l.enrollment_type === val}
                  onChange={() => updateLearner(l.key, { enrollment_type: val })}
                  style={{ display: "none" }}
                />
                {typeLabels[val]}
              </label>
            ))}
          </div>

          <div className="form-grid">
            <div className="field"><label>Student name</label><input type="text" value={l.student_name} onChange={(e) => updateLearner(l.key, { student_name: e.target.value })} required /></div>
            <div className="field"><label>Student age</label><input type="number" min={3} max={19} value={l.student_age} onChange={(e) => updateLearner(l.key, { student_age: e.target.value })} /></div>
            <div className="field"><label>Current grade</label><input type="text" value={l.current_grade} onChange={(e) => updateLearner(l.key, { current_grade: e.target.value })} /></div>
            <div className="field"><label>Grade for upcoming year</label><input type="text" value={l.upcoming_grade} onChange={(e) => updateLearner(l.key, { upcoming_grade: e.target.value })} /></div>

            {(l.enrollment_type === "learning_studio" || l.enrollment_type === "both") && (
              <>
                <div className="field">
                  <label>Preferred Learning Studio</label>
                  <select value={l.studio} onChange={(e) => updateLearner(l.key, { studio: e.target.value })}>
                    <option>Discovery Studio (Grades 3–5)</option>
                    <option>Venture Studio (Grades 6–12)</option>
                    <option>Wonder Studio (PreK–2) — Coming Oct 2026, waitlist only</option>
                    <option>Not sure yet</option>
                  </select>
                  <p style={{ fontSize: "0.8rem", color: "var(--warm-gray)", marginTop: 6 }}>
                    Wonder Studio (PreK&ndash;2) launches October 2026. PreK&ndash;2 families can enroll now for a Personalized Learning Plan and join the waitlist.
                  </p>
                </div>
                <div className="field">
                  <label>Enrollment plan of interest</label>
                  <select value={l.plan} onChange={(e) => updateLearner(l.key, { plan: e.target.value })}>
                    <option>Foundations</option>
                    <option>Flex (Most Popular)</option>
                    <option>Signature</option>
                    <option>Not sure yet</option>
                  </select>
                </div>
              </>
            )}

            <div className="field"><label>Preferred start date</label><input type="date" value={l.start_date} onChange={(e) => updateLearner(l.key, { start_date: e.target.value })} /></div>
            <div className="field">
              <label>Does the learner currently homeschool?</label>
              <div className="radio-row">
                <label><input type="radio" name={`homeschool-${l.key}`} checked={l.homeschool === "yes"} onChange={() => updateLearner(l.key, { homeschool: "yes" })} /> Yes</label>
                <label><input type="radio" name={`homeschool-${l.key}`} checked={l.homeschool === "no"} onChange={() => updateLearner(l.key, { homeschool: "no" })} /> No</label>
              </div>
            </div>
            <div className="field">
              <label>Is the learner currently enrolled in another school?</label>
              <div className="radio-row">
                <label><input type="radio" name={`other_school-${l.key}`} checked={l.other_school === "yes"} onChange={() => updateLearner(l.key, { other_school: "yes" })} /> Yes</label>
                <label><input type="radio" name={`other_school-${l.key}`} checked={l.other_school === "no"} onChange={() => updateLearner(l.key, { other_school: "no" })} /> No</label>
              </div>
            </div>
            <div className="field full"><label>Does the learner require specific accommodations?</label><textarea value={l.accommodations} onChange={(e) => updateLearner(l.key, { accommodations: e.target.value })} /></div>
          </div>
        </div>
      ))}

      <button
        type="button"
        onClick={addLearner}
        className="btn btn-outline"
        style={{ marginBottom: 28 }}
      >
        + Add another learner
      </button>

      {status === "error" && (
        <p style={{ color: "var(--terracotta-dark)", fontWeight: 600, marginTop: 12 }}>{errorMessage}</p>
      )}

      <button
        type="submit"
        className="btn btn-primary"
        style={{ width: "100%", border: "none", marginTop: 8 }}
        disabled={status === "submitting"}
      >
        {status === "submitting" ? "Submitting…" : "Start Our Su Mira Journey"}
      </button>
      <p style={{ fontSize: "0.8rem", color: "var(--warm-gray-light)", textAlign: "center", marginTop: 14 }}>
        A Su Mira team member will follow up by email.
      </p>
    </form>
  );
}
