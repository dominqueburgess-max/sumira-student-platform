import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import ReactMarkdown from "react-markdown";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";

export default async function LessonPage({ params }: { params: Promise<{ slug: string; lessonId: string }> }) {
  const { slug, lessonId } = await params;
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const rows = await db().sql`
    SELECT l.*, lp.status AS progress_status
    FROM lessons l
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${student.id}
    WHERE l.id = ${Number(lessonId)}
  `;
  if (!rows.length) notFound();
  const lesson = rows[0];

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-2xl mx-auto w-full px-6 py-10">
        <Link href={`/courses/${slug}`} className="text-sm text-terracotta-dark font-semibold">&larr; Back to Course</Link>

        <div className="bg-ivory rounded-2xl card-shadow border border-border p-8 mt-6">
          {lesson.standards_code && (
            <span className="inline-block text-xs font-semibold bg-cream text-warm-gray rounded-full px-3 py-1 mb-4">
              {lesson.standards_code} &middot; {lesson.standards_description}
            </span>
          )}
          <article className="prose prose-headings:font-serif prose-headings:text-plum prose-p:text-charcoal max-w-none">
            <ReactMarkdown>{lesson.content_body}</ReactMarkdown>
          </article>
          <div className="mt-8">
            <MarkCompleteButton lessonId={lesson.id} initiallyComplete={lesson.progress_status === "completed"} />
          </div>
        </div>
      </main>
    </div>
  );
}
