import Link from "next/link";

export default function AccountChooserPage() {
  return (
    <main className="flex-1 flex items-center justify-center bg-gradient-to-br from-plum to-plum-dark px-6 py-16">
      <div className="w-full max-w-2xl">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-ivory">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-amber font-semibold mt-1">LEARNING</div>
        </div>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="bg-ivory rounded-3xl card-shadow p-8 flex flex-col items-center text-center">
            <div className="w-12 h-12 rounded-full bg-terracotta/10 text-terracotta-dark flex items-center justify-center text-xl mb-4">🎓</div>
            <h2 className="text-lg text-plum mb-2">I&rsquo;m a student</h2>
            <p className="text-warm-gray text-sm mb-6">See your classes, your AI coach Mira, and your portfolio.</p>
            <Link href="/login" className="w-full bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition mb-3">
              Student login
            </Link>
            <Link href="/signup" className="text-sm text-terracotta-dark font-semibold">
              New student? Create an account
            </Link>
          </div>
          <div className="bg-ivory rounded-3xl card-shadow p-8 flex flex-col items-center text-center">
            <div className="w-12 h-12 rounded-full bg-sage/20 text-sage-dark flex items-center justify-center text-xl mb-4">👪</div>
            <h2 className="text-lg text-plum mb-2">I&rsquo;m a parent</h2>
            <p className="text-warm-gray text-sm mb-6">Submit your family&rsquo;s enrollment info and manage your child&rsquo;s account.</p>
            <Link href="/parent-portal/login" className="w-full bg-terracotta hover:bg-terracotta-dark text-ivory font-semibold rounded-full py-3 transition mb-3">
              Parent login
            </Link>
            <Link href="/parent-portal/signup" className="text-sm text-terracotta-dark font-semibold">
              New parent? Create an account
            </Link>
          </div>
        </div>
      </div>
    </main>
  );
}
