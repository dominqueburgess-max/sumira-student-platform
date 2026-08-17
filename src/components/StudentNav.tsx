"use client";

import Link from "next/link";
import { usePathname, useRouter } from "next/navigation";

const links = [
  { href: "/dashboard", label: "My Classes" },
  { href: "/coach", label: "Meet Mira" },
  { href: "/portfolio", label: "My Portfolio" },
];

export function StudentNav({ firstName }: { firstName: string }) {
  const pathname = usePathname();
  const router = useRouter();

  async function handleLogout() {
    await fetch("/api/auth/logout", { method: "POST" });
    router.push("/login");
    router.refresh();
  }

  return (
    <header className="bg-plum text-ivory sticky top-0 z-20">
      <div className="max-w-5xl mx-auto px-6 py-4 flex items-center justify-between">
        <Link href="/dashboard" className="font-serif font-bold text-lg leading-none">
          SU MIRA
          <span className="block text-[9px] tracking-[0.25em] text-amber font-sans font-semibold mt-1">LEARNING STUDIO</span>
        </Link>
        <nav className="hidden sm:flex items-center gap-6 text-sm font-medium">
          {links.map((l) => (
            <Link
              key={l.href}
              href={l.href}
              className={pathname === l.href ? "text-amber" : "text-ivory/80 hover:text-ivory"}
            >
              {l.label}
            </Link>
          ))}
        </nav>
        <div className="flex items-center gap-4">
          <span className="text-sm hidden sm:inline">Hi, {firstName}!</span>
          <button onClick={handleLogout} className="text-xs bg-ivory/10 border border-ivory/30 rounded-full px-4 py-2 hover:bg-ivory/20">
            Log Out
          </button>
        </div>
      </div>
      <nav className="sm:hidden flex items-center justify-around border-t border-ivory/10 text-xs font-medium py-2">
        {links.map((l) => (
          <Link key={l.href} href={l.href} className={pathname === l.href ? "text-amber" : "text-ivory/80"}>
            {l.label}
          </Link>
        ))}
      </nav>
    </header>
  );
}
