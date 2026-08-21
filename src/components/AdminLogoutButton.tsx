"use client";

import { useRouter } from "next/navigation";

export function AdminLogoutButton() {
  const router = useRouter();

  async function handleLogout() {
    await fetch("/api/admin/logout", { method: "POST" });
    router.push("/admin/login");
    router.refresh();
  }

  return (
    <button
      onClick={handleLogout}
      className="text-sm font-semibold text-terracotta-dark border border-terracotta-dark rounded-full px-4 py-2 hover:bg-terracotta hover:text-ivory hover:border-terracotta transition"
    >
      Log out
    </button>
  );
}
