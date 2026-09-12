import { redirect } from "next/navigation";
import Link from "next/link";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { CoachChat } from "@/components/CoachChat";

export default async function CoachPage({ searchParams }: { searchParams: Promise<{ lessonId?: string }> }) {
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const { lessonId } = await searchParams;

  let lessonTitle: string | null = null;
  let lessonCourseSlug: string | null = null;
  if (lessonId) {
    const rows = await db().sql`
      SELECT l.title, c.slug AS course_slug
      FROM lessons l
      JOIN units u ON u.id = l.unit_id
      JOIN courses c ON c.id = u.course_id
      WHERE l.id = ${Number(lessonId)}
    `;
    if (rows.length) {
      lessonTitle = rows[0].title;
      lessonCourseSlug = rows[0].course_slug;
    }
  }

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
        <p className="text-warm-gray mb-2 text-sm">Your friendly learning guide — here to help, not to grade.</p>
        {lessonTitle && lessonCourseSlug && (
          <div className="bg-plum/5 border border-plum/20 rounded-xl px-4 py-2.5 mb-4 flex items-center justify-between gap-3 flex-wrap">
            <p className="text-xs text-plum">
              <span className="font-semibold">Talking about:</span> {lessonTitle}
            </p>
            <Link href={`/courses/${lessonCourseSlug}/lessons/${lessonId}`} className="text-xs font-semibold text-terracotta-dark underline shrink-0">
              &larr; Back to lesson
            </Link>
          </div>
        )}
        <CoachChat
          firstName={student.first_name}
          initialMessages={history as { role: "user" | "assistant"; content: string }[]}
          lessonId={lessonId ?? null}
          lessonTitle={lessonTitle}
        />
      </main>
    </div>
  );
}
