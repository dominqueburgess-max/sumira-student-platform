"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

const inputClass = "rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta w-full";
const labelClass = "flex flex-col gap-1 text-sm font-semibold text-plum";

export function ParentEnrollForm() {
  const router = useRouter();
  const [status, setStatus] = useState<"idle" | "submitting" | "error">("idle");
  const [errorMessage, setErrorMessage] = useState("");

  async function handleSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const form = e.currentTarget;
    const data = new FormData(form);

    const parent_name = String(data.get("parent_name") || "").trim();
    const student_name = String(data.get("student_name") || "").trim();
    const student_login_email = String(data.get("student_login_email") || "").trim();
    const student_login_password = String(data.get("student_login_password") || "").trim();

    if (!parent_name || !student_name) {
      setStatus("error");
      setErrorMessage("Please fill in your name and your student's name.");
      return;
    }
    if (!student_login_email || !student_login_password) {
      setStatus("error");
      setErrorMessage("Please set up a login email and password for your student.");
      return;
    }
    if (student_login_password.length < 8) {
      setStatus("error");
      setErrorMessage("Your student's password must be at least 8 characters.");
      return;
    }

    setStatus("submitting");
    setErrorMessage("");

    try {
      const res = await fetch("/api/parent-auth/enroll", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          parent_name,
          student_login_email,
          student_login_password,
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

      router.push("/parent-portal/dashboard");
      router.refresh();
    } catch (err) {
      setStatus("error");
      setErrorMessage(err instanceof Error ? err.message : "Something went wrong. Please try again.");
    }
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-5 w-full max-w-2xl">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <label className={labelClass}>Parent or guardian name
          <input type="text" name="parent_name" required className={inputClass} />
        </label>
        <label className={labelClass}>Phone
          <input type="tel" name="phone" className={inputClass} />
        </label>
        <label className={labelClass}>State
          <input type="text" name="state" className={inputClass} />
        </label>
        <label className={labelClass}>Student name
          <input type="text" name="student_name" required className={inputClass} />
        </label>
        <label className={labelClass}>Student login email
          <input type="email" name="student_login_email" required className={inputClass} />
        </label>
        <label className={labelClass}>Student login password
          <input type="password" name="student_login_password" required minLength={8} className={inputClass} />
        </label>
        <label className={labelClass}>Student age
          <input type="number" name="student_age" min={3} max={19} className={inputClass} />
        </label>
        <label className={labelClass}>Current grade
          <input type="text" name="current_grade" className={inputClass} />
        </label>
        <label className={labelClass}>Grade for upcoming year
          <input type="text" name="upcoming_grade" className={inputClass} />
        </label>
        <label className={labelClass}>Preferred Learning Studio
          <select name="studio" defaultValue="Wonder Studio (PreK–2)" className={inputClass}>
            <option>Wonder Studio (PreK–2)</option>
            <option>Discovery Studio (Grades 3–5)</option>
            <option>Venture Studio (Grades 6–12)</option>
            <option>Not sure yet</option>
          </select>
        </label>
        <label className={labelClass}>Enrollment plan of interest
          <select name="plan" defaultValue="Foundations" className={inputClass}>
            <option>Foundations</option>
            <option>Flex (Most Popular)</option>
            <option>Signature</option>
            <option>Not sure yet</option>
          </select>
        </label>
        <label className={labelClass}>Preferred start date
          <input type="date" name="start_date" className={inputClass} />
        </label>
      </div>

      <div>
        <p className="text-sm font-semibold text-plum mb-2">Does the learner currently homeschool?</p>
        <div className="flex gap-4 text-sm text-charcoal">
          <label className="flex items-center gap-1"><input type="radio" name="homeschool" value="yes" /> Yes</label>
          <label className="flex items-center gap-1"><input type="radio" name="homeschool" value="no" /> No</label>
        </div>
      </div>
      <div>
        <p className="text-sm font-semibold text-plum mb-2">Is the learner currently enrolled in another school?</p>
        <div className="flex gap-4 text-sm text-charcoal">
          <label className="flex items-center gap-1"><input type="radio" name="other_school" value="yes" /> Yes</label>
          <label className="flex items-center gap-1"><input type="radio" name="other_school" value="no" /> No</label>
        </div>
      </div>
      <div>
        <p className="text-sm font-semibold text-plum mb-2">Is the family using or applying for ESA funding?</p>
        <div className="flex gap-4 text-sm text-charcoal">
          <label className="flex items-center gap-1"><input type="radio" name="esa" value="yes" /> Yes</label>
          <label className="flex items-center gap-1"><input type="radio" name="esa" value="no" /> No</label>
          <label className="flex items-center gap-1"><input type="radio" name="esa" value="unsure" /> Not sure</label>
        </div>
      </div>
      <label className={labelClass}>What are you looking for in a learning program?
        <textarea name="looking_for" className={inputClass} rows={3} />
      </label>
      <label className={labelClass}>Does the learner require specific accommodations?
        <textarea name="accommodations" className={inputClass} rows={3} />
      </label>

      {status === "error" && <p className="text-sm text-terracotta-dark font-semibold">{errorMessage}</p>}

      <button type="submit" disabled={status === "submitting"}
        className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {status === "submitting" ? "Submitting…" : "Submit Enrollment Information"}
      </button>
    </form>
  );
}
