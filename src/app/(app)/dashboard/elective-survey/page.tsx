import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { LiveStudioElectiveForm } from "@/components/LiveStudioElectiveForm";
import { StudentNav } from "@/components/StudentNav";

type Row = {
  first_choice: string | null;
  second_choice: string | null;
  other_studio_idea: string | null;
};

export default async function ElectiveSurveyPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");
  if (student.studio !== "venture") redirect("/dashboard");

  const rows = (await db().sql`
    SELECT * FROM live_studio_elective_surveys WHERE student_id = ${student.id}
  `) as unknown as Row[];
  const existing = rows[0] || null;

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 bg-cream px-6 py-12">
        <div className="max-w-2xl mx-auto">
          <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
            <div className="flex items-center justify-between flex-wrap gap-2 mb-2">
              <h1 className="text-xl text-plum">Choose Your Live Studio Elective</h1>
              <span className="text-xs font-semibold text-terracotta-dark bg-terracotta/10 rounded-full px-3 py-1">
                Due Wednesday, September 2
              </span>
            </div>
            <p className="text-warm-gray text-sm mb-6">
              Live Studios meet live with a teacher and other students. Pick the Quarter 1 elective you&rsquo;d most
              like to join, plus a backup in case your first choice fills up.
            </p>
            <LiveStudioElectiveForm
              firstName={student.first_name}
              existingFirst={existing?.first_choice || null}
              existingSecond={existing?.second_choice || null}
              existingOther={existing?.other_studio_idea || null}
            />
            <div className="mt-6 text-center">
              <a href="/dashboard" className="text-sm text-warm-gray hover:text-terracotta-dark underline">
                ← Back to dashboard
              </a>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
