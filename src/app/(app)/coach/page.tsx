import { redirect } from "next/navigation";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { CoachChat } from "@/components/CoachChat";

export default async function CoachPage() {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const history = await db().sql`
    SELECT role, content FROM coach_messages
    WHERE student_id = ${student.id}
    ORDER BY created_at ASC
    LIMIT 30
  `;

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-2xl mx-auto w-full px-6 py-10">
        <h1 className="text-2xl mb-1">Meet Mira</h1>
        <p className="text-warm-gray mb-6 text-sm">Your friendly learning guide — here to help, not to grade.</p>
        <CoachChat firstName={student.first_name} initialMessages={history as { role: "user" | "assistant"; content: string }[]} />
      </main>
    </div>
  );
}
