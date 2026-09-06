"use client";

import { useState } from "react";

export function PlpResendVerificationButton() {
  const [status, setStatus] = useState<"idle" | "sending" | "sent">("idle");

  async function handleClick() {
    setStatus("sending");
    await fetch("/api/plp-auth/resend-verification", { method: "POST" });
    setStatus("sent");
  }

  return (
    <button
      onClick={handleClick}
      disabled={status !== "idle"}
      className="text-sm font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-4 py-2 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition disabled:opacity-60"
    >
      {status === "idle" && "Resend verification email"}
      {status === "sending" && "Sending…"}
      {status === "sent" && "Sent! Check your inbox."}
    </button>
  );
}
