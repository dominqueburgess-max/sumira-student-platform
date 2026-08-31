import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentBlueprintForm } from "@/components/StudentBlueprintForm";
import { StudentNav } from "@/components/StudentNav";

type Row = {
  learning_style: string | null;
  interests: string | null;
  strengths: string | null;
  growth_areas: string | null;
  favorite_subjects: string | null;
  challenging_subjects: string | null;
  motivation: string | null;
  best_learning_time: string | null;
  show_what_i_know: string | null;
  goals_this_year: string | null;
  additional_notes: string | null;
};

export default async function BlueprintSurveyPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const rows = (await db().sql`
    SELECT * FROM student_blueprint_surveys WHERE student_id = ${student.id}
  `) as unknown as Row[];
  const existing = rows[0] || null;

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 bg-cream px-6 py-12">
        <div className="max-w-2xl mx-auto">
          <div className="bg-ivory rounded-3xl border border-border card-shadow p-8 md:p-10">
            <div className="flex items-center justify-between flex-wrap gap-2 mb-2">
              <h1 className="text-xl text-plum">My Learning Blueprint</h1>
              <span className="text-xs font-semibold text-terracotta-dark bg-terracotta/10 rounded-full px-3 py-1">
                Due Wednesday, September 2
              </span>
            </div>
            <p className="text-warm-gray text-sm mb-6">
              Your answers help Mira and your Learning Ambassador build a plan made just for you. There are no wrong
              answers here — just tell us about yourself!
            </p>
            <StudentBlueprintForm firstName={student.first_name} existing={existing} />
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
