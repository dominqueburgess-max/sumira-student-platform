import { redirect } from "next/navigation";
import { getCurrentParent } from "@/lib/parentAuth";
import { OrientationVideo } from "@/components/OrientationVideo";

export default async function ParentOrientationPage() {
  const parent = await getCurrentParent();
  if (!parent) redirect("/parent-portal/login");
  if (!parent.enrollment_completed) redirect("/parent-portal/enroll");

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-12">
      <div className="max-w-2xl mx-auto">
        <div className="text-center mb-8">
          <div className="font-serif font-bold text-2xl text-plum">SU MIRA</div>
          <div className="text-xs tracking-[0.3em] text-terracotta-dark font-semibold mt-1">PARENT PORTAL</div>
        </div>
        <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
          <h1 className="text-xl text-plum mb-2">Parent Orientation</h1>
          <p className="text-warm-gray text-sm mb-6">
            This short video walks you through how Su Mira works — self-paced learning, Live Studios, our Gatherings,
            and exactly who to contact when you need support. Please watch the whole thing before diving in.
          </p>
          <OrientationVideo alreadyWatched={parent.orientation_watched} />
          <div className="mt-6 text-center">
            <a href="/parent-portal/dashboard" className="text-sm text-warm-gray hover:text-terracotta-dark underline">
              ← Back to dashboard
            </a>
          </div>
        </div>
      </div>
    </main>
  );
}
