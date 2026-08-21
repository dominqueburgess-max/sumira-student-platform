"use client";

import { useState, FormEvent } from "react";
import { useRouter } from "next/navigation";

export function AdminLoginForm() {
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);
  const router = useRouter();

  async function handleSubmit(e: FormEvent) {
    e.preventDefault();
    if (!password) {
      setError("Enter the admin password.");
      return;
    }
    setLoading(true);
    setError("");
    const res = await fetch("/api/admin/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ password }),
    });
    setLoading(false);
    if (!res.ok) {
      setError("Incorrect password.");
      return;
    }
    router.push("/admin/enrollments");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="w-full flex flex-col gap-4">
      <div>
        <label className="text-sm font-semibold text-plum block mb-1">Admin password</label>
        <input
          type="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          className="w-full rounded-xl border border-border px-4 py-3 text-sm"
          autoFocus
        />
      </div>
      {error && <p className="text-sm text-terracotta-dark font-semibold">{error}</p>}
      <button
        type="submit"
        disabled={loading}
        className="w-full rounded-full bg-terracotta text-ivory font-semibold py-3 hover:bg-terracotta-dark transition"
      >
        {loading ? "Checking…" : "Log in"}
      </button>
    </form>
  );
}
