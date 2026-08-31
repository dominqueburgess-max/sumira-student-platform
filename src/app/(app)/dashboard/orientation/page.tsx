import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentOrientationVideo } from "@/components/StudentOrientationVideo";

export default async function StudentOrientationPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");
  if (student.studio !== "venture") redirect("/dashboard");

  const rows = await db().sql`
    SELECT orientation_watched FROM students WHERE id = ${student.id}
  `;
  const alreadyWatched: boolean = rows[0]?.orientation_watched ?? false;

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-2xl mx-auto">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">STUDENT ORIENTATION</div>
        </div>
        <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
          <h1 className="text-xl text-plum mb-2">Your Student Orientation</h1>
          <p className="text-warm-gray text-sm mb-6">
            A quick walkthrough of your dashboard, Mira, and how self-paced classes and Live Studios work.
            Please watch the whole thing before Quarter 1 starts.
          </p>
          <StudentOrientationVideo alreadyWatched={alreadyWatched} />
          <div className="mt-6 text-center">
            <a href="/dashboard" className="text-sm text-warm-gray hover:text-terracotta-dark underline">
              ← Back to dashboard
            </a>
          </div>
        </div>
      </div>
    </main>
  );
}
