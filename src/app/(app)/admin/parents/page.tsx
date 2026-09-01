import { redirect } from "next/navigation";
import Link from "next/link";
import { isAdminAuthenticated } from "@/lib/adminAuth";
import { db } from "@/lib/db";
import { AdminLogoutButton } from "@/components/AdminLogoutButton";
import { ResetParentPasswordButton } from "@/components/ResetParentPasswordButton";

export const dynamic = "force-dynamic";

type ParentRow = {
  id: number;
  email: string;
  email_verified: boolean;
  enrollment_completed: boolean;
  created_at: string;
};

type StudentRow = {
  id: number;
  parent_id: number | null;
  first_name: string;
  last_name: string;
};

export default async function AdminParentsPage() {
  const authed = await isAdminAuthenticated();
  if (!authed) redirect("/admin/login");

  const parents = (await db().sql`
    SELECT id, email, email_verified, enrollment_completed, created_at
    FROM parents ORDER BY created_at DESC
  `) as unknown as ParentRow[];

  const students = (await db().sql`
    SELECT id, parent_id, first_name, last_name FROM students WHERE parent_id IS NOT NULL
  `) as unknown as StudentRow[];

  const studentsByParent = new Map<number, StudentRow[]>();
  for (const s of students) {
    if (!s.parent_id) continue;
    if (!studentsByParent.has(s.parent_id)) studentsByParent.set(s.parent_id, []);
    studentsByParent.get(s.parent_id)!.push(s);
  }

  return (
    <main className="flex-1 bg-cream min-h-screen px-6 py-10">
      <div className="max-w-5xl mx-auto">
        <div className="flex items-center justify-between mb-4 flex-wrap gap-4">
          <div>
            <h1 className="text-2xl font-serif text-plum">Parent accounts</h1>
            <p className="text-warm-gray text-sm">Every parent login on the platform. Reset a password here if a family gets locked out.</p>
          </div>
          <AdminLogoutButton />
        </div>

        <div className="flex gap-4 mb-8 text-sm font-semibold">
          <Link href="/admin/enrollments" className="text-warm-gray hover:text-plum">Enrollment inquiries</Link>
          <Link href="/admin/students" className="text-warm-gray hover:text-plum">Venture Studio students</Link>
          <Link href="/admin/classes" className="text-warm-gray hover:text-plum">Classes &amp; electives</Link>
          <Link href="/admin/blueprints" className="text-warm-gray hover:text-plum">Learning Blueprints</Link>
          <span className="text-plum border-b-2 border-terracotta pb-1">Parent accounts</span>
        </div>

        {parents.length === 0 ? (
          <div className="bg-ivory rounded-2xl border border-border p-10 text-center text-warm-gray">
            No parent accounts yet.
          </div>
        ) : (
          <div className="flex flex-col gap-4">
            {parents.map((p) => {
              const kids = studentsByParent.get(p.id) || [];
              return (
                <div key={p.id} className="bg-ivory rounded-2xl border border-border p-6 flex flex-col md:flex-row md:items-center md:justify-between gap-4">
                  <div>
                    <p className="font-semibold text-plum">{p.email}</p>
                    <p className="text-xs text-warm-gray-light mt-1">
                      {p.email_verified ? "Verified" : "Not verified"} · {p.enrollment_completed ? "Enrollment complete" : "Enrollment incomplete"}
                      {kids.length > 0 && ` · Learner${kids.length === 1 ? "" : "s"}: ${kids.map((k) => `${k.first_name} ${k.last_name}`).join(", ")}`}
                    </p>
                  </div>
                  <ResetParentPasswordButton parentId={p.id} parentEmail={p.email} />
                </div>
              );
            })}
          </div>
        )}
      </div>
    </main>
  );
}
