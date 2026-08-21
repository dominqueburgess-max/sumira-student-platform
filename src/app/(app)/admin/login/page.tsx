import { AdminLoginForm } from "@/components/AdminLoginForm";

export default function AdminLoginPage() {
  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="bg-ivory rounded-3xl card-shadow p-10 w-full max-w-md flex flex-col items-center">
        <div className="text-center mb-6">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">ADMIN</div>
        </div>
        <h1 className="text-xl mb-1">Enrollment inquiries</h1>
        <p className="text-warm-gray text-sm mb-6 text-center">Enter the admin password to view family submissions.</p>
        <AdminLoginForm />
      </div>
    </main>
  );
}
