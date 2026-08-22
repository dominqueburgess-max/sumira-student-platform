"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

export function ParentSignupForm() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setError("");
    setLoading(true);
    const res = await fetch("/api/parent-auth/signup", {
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
    router.push("/parent-portal");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-4 w-full max-w-sm">
      {error && <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>}
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Email
        <input type="email" required value={email} onChange={(e) => setEmail(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Password
        <input type="password" required value={password} onChange={(e) => setPassword(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <button type="submit" disabled={loading}
        className="mt-2 bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {loading ? "Creating account…" : "Create Parent Account"}
      </button>
    </form>
  );
}

export function ParentLoginForm() {
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    setError("");
    setLoading(true);
    const res = await fetch("/api/parent-auth/login", {
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
    router.push("/parent-portal");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="flex flex-col gap-4 w-full max-w-sm">
      {error && <div className="bg-red-50 text-red-700 text-sm rounded-lg px-4 py-3 border border-red-200">{error}</div>}
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Email
        <input type="email" required value={email} onChange={(e) => setEmail(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <label className="flex flex-col gap-1 text-sm font-semibold text-plum">
        Password
        <input type="password" required value={password} onChange={(e) => setPassword(e.target.value)}
          className="rounded-lg border border-border bg-ivory px-3 py-2 text-charcoal font-normal focus:outline-none focus:ring-2 focus:ring-terracotta" />
      </label>
      <button type="submit" disabled={loading}
        className="mt-2 bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition disabled:opacity-60">
        {loading ? "Logging in…" : "Log In"}
      </button>
    </form>
  );
}
