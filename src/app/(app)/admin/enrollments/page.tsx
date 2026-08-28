import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";

export const dynamic = "force-dynamic";

type Inquiry = {
  id: number;
  enrollment_type: string;
  parent_name: string;
  email: string;
  phone: string | null;
  state: string | null;
  student_name: string;
  student_age: number | null;
  current_grade: string | null;
  upcoming_grade: string | null;
  studio: string | null;
  plan: string | null;
  start_date: string | null;
  homeschool: string | null;
  other_school: string | null;
  esa: string | null;
  looking_for: string | null;
  accommodations: string | null;
  created_at: string;
};

export default async function AdminEnrollmentsPage() {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const inquiries = (await db().sql`
    SELECT * FROM enrollment_inquiries ORDER BY created_at DESC
  `) as unknown as Inquiry[];

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-6xl mx-auto">
        <div className="flex items-center justify-between mb-8 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">Enrollment inquiries</h1>
            <p className="text-warm-gray text-sm">{inquiries.length} submission{inquiries.length === 1 ? "" : "s"} from the /enroll form.</p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="flex gap-4 mb-8 text-sm font-semibold">
          <span className="text-plum border-b-2 border-terracotta pb-1">Enrollment inquiries</span>
          <Link href="/admin/students" className="text-warm-gray hover:text-plum">Venture Studio students</Link>
          <Link href="/admin/parents" className="text-warm-gray hover:text-plum">Parent accounts</Link>
        </div>

        {inquiries.length === 0 ? (
          <div className="bg-ivory rounded-2xl border border-border p-10 text-center text-warm-gray">
            No enrollment inquiries yet. They&rsquo;ll show up here as soon as a family submits the form at /enroll.
          </div>
        ) : (
          <div className="flex flex-col gap-4">
            {inquiries.map((inq) => (
              <div key={inq.id} className="bg-ivory rounded-2xl border border-border p-6">
                <div className="flex items-start justify-between flex-wrap gap-2 mb-3">
                  <div>
                    <span className={`inline-block text-xs font-semibold uppercase tracking-wide rounded-full px-3 py-1 mb-2 ${
                      inq.enrollment_type === "personalized_plan" ? "bg-sage/20 text-sage-dark"
                      : inq.enrollment_type === "both" ? "bg-plum/15 text-plum"
                      : "bg-terracotta/15 text-terracotta-dark"
                    }`}>
                      {inq.enrollment_type === "personalized_plan" ? "Personalized Learning Plan"
                        : inq.enrollment_type === "both" ? "PLP + Learning Studio"
                        : "Learning Studio"}
                    </span>
                    <p className="font-semibold text-plum">{inq.parent_name}</p>
                    <p className="text-sm text-warm-gray">
                      <a href={`mailto:${inq.email}`} className="text-terracotta-dark font-semibold">{inq.email}</a>
                      {inq.phone ? ` · ${inq.phone}` : ""}
                      {inq.state ? ` · ${inq.state}` : ""}
                    </p>
                  </div>
                  <p className="text-xs text-warm-gray-light">
                    {new Date(inq.created_at).toLocaleString("en-US", { dateStyle: "medium", timeStyle: "short" })}
                  </p>
                </div>
                <div className="grid grid-cols-2 md:grid-cols-4 gap-3 text-sm mb-3">
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Student</span>{inq.student_name}{inq.student_age ? `, age ${inq.student_age}` : ""}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Grade</span>{inq.current_grade || "—"} → {inq.upcoming_grade || "—"}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Studio</span>{inq.studio || "—"}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Plan</span>{inq.plan || "—"}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Start date</span>{inq.start_date || "—"}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Homeschools now</span>{inq.homeschool || "—"}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">Other school</span>{inq.other_school || "—"}</div>
                  <div><span className="text-warm-gray-light block text-xs uppercase tracking-wide">ESA funding</span>{inq.esa || "—"}</div>
                </div>
                {inq.looking_for && (
                  <p className="text-sm text-charcoal mb-1"><span className="font-semibold text-plum">Looking for: </span>{inq.looking_for}</p>
                )}
                {inq.accommodations && (
                  <p className="text-sm text-charcoal"><span className="font-semibold text-plum">Accommodations: </span>{inq.accommodations}</p>
                )}
              </div>
            ))}
          </div>
        )}
      </div>
    </main>
  );
}
