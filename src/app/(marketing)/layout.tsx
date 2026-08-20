import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Su Mira Learning Studio",
  description: "Learning, designed around every learner.",
};

export default function MarketingLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <link rel="stylesheet" href="/marketing.css" />
      </head>
      <body>{children}</body>
    </html>
  );
}
