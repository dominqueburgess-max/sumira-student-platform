"use client";

import { useEffect, useRef, useState } from "react";

export function VoiceInputButton({ onResult }: { onResult: (text: string) => void }) {
  const recognitionRef = useRef<any>(null);
  const [supported, setSupported] = useState(false);
  const [listening, setListening] = useState(false);

  useEffect(() => {
    const SpeechRecognition = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition;
    if (!SpeechRecognition) return;
    setSupported(true);

    const recognition = new SpeechRecognition();
    recognition.continuous = false;
    recognition.interimResults = false;
    recognition.lang = "en-US";

    recognition.onresult = (event: any) => {
      const transcript = event.results[0][0].transcript;
      onResult(transcript);
    };
    recognition.onend = () => setListening(false);
    recognition.onerror = () => setListening(false);

    recognitionRef.current = recognition;
  }, [onResult]);

  if (!supported) return null;

  function handleClick() {
    if (listening) {
      recognitionRef.current?.stop();
      setListening(false);
    } else {
      setListening(true);
      recognitionRef.current?.start();
    }
  }

  return (
    <button
      type="button"
      onClick={handleClick}
      className={`inline-flex items-center gap-2 rounded-full px-4 py-2 text-sm font-semibold transition shrink-0 ${
        listening ? "bg-terracotta text-ivory animate-pulse" : "bg-sage/15 text-sage-dark hover:bg-sage/25"
      }`}
      aria-label="Answer by talking"
    >
      🎤 {listening ? "Listening..." : "Talk Instead"}
    </button>
  );
}
