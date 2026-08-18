"use client";

export function PrintButton() {
  return (
    <button
      type="button"
      onClick={() => window.print()}
      className="bg-plum hover:bg-plum-dark text-ivory font-semibold rounded-full px-5 py-2.5 text-sm transition"
    >
      Print / Save as PDF
    </button>
  );
}
