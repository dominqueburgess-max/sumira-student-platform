"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function LoginForm() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError("");
    setLoading(true);
    const res = await fetch("/api/auth/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ email, password }),
    });
    setLoading(false);
    if (!res.ok) {
      const data = await res.json().catch(() => ({}));
      setError(data.error || "Something went wrong.");
      return;
    }
    router.push("/dashboard");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-4 w-full max-w-sm">
      {error && (
        <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>
      )}
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Email
        <input
          type="email"
          required
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta"
        />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Password
        <input
          type="password"
          required
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta"
        />
      </label>
      <button
        type="submit"
        disabled={loading}
        className="mt-2 bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60"
      >
        {loading ? "Signing in..." : "Log In"}
      </button>
    </form>
  );
}

const STUDIOS = [
  { value: "wonder", label: "Wonder Studio (PreK–2)" },
];
const GRADES = ["PreK", "K", "1", "2"];

export function SignupForm() {
  const router = useRouter();
  const [form, setForm] = useState({
    firstName: "",
    lastName: "",
    email: "",
    password: "",
    parentEmail: "",
    studio: "wonder",
    gradeLevel: "K",
  });
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  function update<K extends keyof typeof form>(key: K, value: string) {
    setForm((f) => ({ ...f, [key]: value }));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError("");
    setLoading(true);
    const res = await fetch("/api/auth/signup", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(form),
    });
    setLoading(false);
    if (!res.ok) {
      const data = await res.json().catch(() => ({}));
      setError(data.error || "Something went wrong.");
      return;
    }
    router.push("/dashboard");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-4 w-full max-w-sm">
      {error && (
        <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>
      )}
      <div className="grid grid-cols-2 gap-3">
        <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
          First name
          <input required value={form.firstName} onChange={(e) => update("firstName", e.target.value)}
            className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
        </label>
        <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
          Last name
          <input required value={form.lastName} onChange={(e) => update("lastName", e.target.value)}
            className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
        </label>
      </div>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Student email (or a family login email)
        <input type="email" required value={form.email} onChange={(e) => update("email", e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Parent/guardian email
        <input type="email" value={form.parentEmail} onChange={(e) => update("parentEmail", e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Password
        <input type="password" required minLength={8} value={form.password} onChange={(e) => update("password", e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <div className="grid grid-cols-2 gap-3">
        <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
          Learning Studio
          <select value={form.studio} onChange={(e) => update("studio", e.target.value)}
            className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta">
            {STUDIOS.map((s) => <option key={s.value} value={s.value}>{s.label}</option>)}
          </select>
        </label>
        <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
          Grade
          <select value={form.gradeLevel} onChange={(e) => update("gradeLevel", e.target.value)}
            className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta">
            {GRADES.map((g) => <option key={g} value={g}>{g}</option>)}
          </select>
        </label>
      </div>
      <button type="submit" disabled={loading}
        className="mt-2 bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {loading ? "Creating account..." : "Create My Account"}
      </button>
    </form>
  );
}
