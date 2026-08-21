"use client";

import { useState, FormEvent } from "react";

export function EnrollForm() {
  const [status, setStatus] = useState<"idle" | "submitting" | "success" | "error">("idle");
  const [errorMessage, setErrorMessage] = useState("");

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const form = e.currentTarget;
    const data = new FormData(form);

    const parent_name = String(data.get("parent_name") || "").trim();
    const email = String(data.get("email") || "").trim();
    const student_name = String(data.get("student_name") || "").trim();

    if (!parent_name || !email || !student_name) {
      setStatus("error");
      setErrorMessage("Please fill in your name, email, and your student's name.");
      return;
    }

    setStatus("submitting");
    setErrorMessage("");

    try {
      const res = await fetch("/api/enroll", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          parent_name,
          email,
          phone: data.get("phone"),
          state: data.get("state"),
          student_name,
          student_age: data.get("student_age"),
          current_grade: data.get("current_grade"),
          upcoming_grade: data.get("upcoming_grade"),
          studio: data.get("studio"),
          plan: data.get("plan"),
          start_date: data.get("start_date"),
          homeschool: data.get("homeschool"),
          other_school: data.get("other_school"),
          esa: data.get("esa"),
          looking_for: data.get("looking_for"),
          accommodations: data.get("accommodations"),
        }),
      });

      if (!res.ok) {
        const body = await res.json().catch(() => ({}));
        throw new Error(body.error || "Something went wrong. Please try again.");
      }

      setStatus("success");
      form.reset();
    } catch (err) {
      setStatus("error");
      setErrorMessage(err instanceof Error ? err.message : "Something went wrong. Please try again.");
    }
  }

  if (status === "success") {
    return (
      <div className="pillow" style={{ textAlign: "center" }}>
        <h3 style={{ marginTop: 0 }}>Thank you!</h3>
        <p style={{ marginBottom: 0 }}>
          We&rsquo;ve received your family&rsquo;s information. A Su Mira team member will follow up
          by email within one to two business days with a recommended Learning Studio, plan and
          next steps.
        </p>
      </div>
    );
  }

  return (
    <form className="enroll" onSubmit={handleSubmit}>
      <h3 style={{ marginBottom: 24 }}>Family &amp; Learner Information</h3>
      <div className="form-grid">
        <div className="field"><label>Parent or guardian name</label><input type="text" name="parent_name" required /></div>
        <div className="field"><label>Email</label><input type="email" name="email" required /></div>
        <div className="field"><label>Phone</label><input type="tel" name="phone" /></div>
        <div className="field"><label>State</label><input type="text" name="state" required /></div>
        <div className="field"><label>Student name</label><input type="text" name="student_name" required /></div>
        <div className="field"><label>Student age</label><input type="number" name="student_age" min={3} max={19} /></div>
        <div className="field"><label>Current grade</label><input type="text" name="current_grade" /></div>
        <div className="field"><label>Grade for upcoming year</label><input type="text" name="upcoming_grade" /></div>
        <div className="field">
          <label>Preferred Learning Studio</label>
          <select name="studio" defaultValue="Wonder Studio (PreK–2)">
            <option>Wonder Studio (PreK–2)</option>
            <option>Discovery Studio (Grades 3–5)</option>
            <option>Venture Studio (Grades 6–12)</option>
            <option>Not sure yet</option>
          </select>
        </div>
        <div className="field">
          <label>Enrollment plan of interest</label>
          <select name="plan" defaultValue="Foundations">
            <option>Foundations</option>
            <option>Flex (Most Popular)</option>
            <option>Signature</option>
            <option>Not sure yet</option>
          </select>
        </div>
        <div className="field"><label>Preferred start date</label><input type="date" name="start_date" /></div>
        <div className="field">
          <label>Does the learner currently homeschool?</label>
          <div className="radio-row">
            <label><input type="radio" name="homeschool" value="yes" /> Yes</label>
            <label><input type="radio" name="homeschool" value="no" /> No</label>
          </div>
        </div>
        <div className="field">
          <label>Is the learner currently enrolled in another school?</label>
          <div className="radio-row">
            <label><input type="radio" name="other_school" value="yes" /> Yes</label>
            <label><input type="radio" name="other_school" value="no" /> No</label>
          </div>
        </div>
        <div className="field">
          <label>Is the family using or applying for ESA funding?</label>
          <div className="radio-row">
            <label><input type="radio" name="esa" value="yes" /> Yes</label>
            <label><input type="radio" name="esa" value="no" /> No</label>
            <label><input type="radio" name="esa" value="unsure" /> Not sure</label>
          </div>
        </div>
        <div className="field full"><label>What are you looking for in a learning program?</label><textarea name="looking_for" /></div>
        <div className="field full"><label>Does the learner require specific accommodations?</label><textarea name="accommodations" /></div>
      </div>

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
