"use client";

import { useState, useRef, useEffect } from "react";

type Message = { role: "user" | "assistant"; content: string };

export function CoachChat({ firstName, initialMessages }: { firstName: string; initialMessages: Message[] }) {
  const [messages, setMessages] = useState<Message[]>(
    initialMessages.length
      ? initialMessages
      : [{ role: "assistant", content: `Hi, ${firstName}! I'm Mira. I can help you understand your lessons, plan what to do next, or just chat about what you're learning. What would you like to talk about today?` }]
  );
  const [input, setInput] = useState("");
  const [loading, setLoading] = useState(false);
  const bottomRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages]);

  async function sendMessage() {
    const text = input.trim();
    if (!text || loading) return;
    setInput("");
    setMessages((m) => [...m, { role: "user", content: text }]);
    setLoading(true);

    const res = await fetch("/api/coach", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ message: text }),
    });
    const data = await res.json();
    setLoading(false);
    setMessages((m) => [...m, { role: "assistant", content: data.reply || "..." }]);
  }

  return (
    <div className="flex flex-col bg-ivory rounded-2xl card-shadow border border-border overflow-hidden h-[70vh]">
      <div className="flex-1 overflow-y-auto p-6 flex flex-col gap-3">
        {messages.map((m, i) => (
          <div
            key={i}
            className={`max-w-[80%] rounded-2xl px-4 py-3 text-sm ${
              m.role === "assistant"
                ? "bg-plum text-ivory self-start rounded-bl-sm"
                : "bg-cream text-charcoal self-end rounded-br-sm"
            }`}
          >
            {m.content}
          </div>
        ))}
        {loading && (
          <div className="bg-plum text-ivory self-start rounded-2xl rounded-bl-sm px-4 py-3 text-sm opacity-70">
            Mira is thinking...
          </div>
        )}
        <div ref={bottomRef} />
      </div>
      <div className="border-t border-border p-4 flex gap-3">
        <input
          value={input}
          onChange={(e) => setInput(e.target.value)}
          onKeyDown={(e) => e.key === "Enter" && sendMessage()}
          placeholder="Ask Mira something..."
          className="flex-1 rounded-full border border-border bg-cream px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:ring-terracotta"
        />
        <button
          onClick={sendMessage}
          disabled={loading}
          className="bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full px-6 py-3 text-sm transition disabled:opacity-60"
        >
          Send
        </button>
      </div>
    </div>
  );
}
