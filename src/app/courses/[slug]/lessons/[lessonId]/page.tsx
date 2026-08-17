import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import ReactMarkdown from "react-markdown";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { LessonVideo } from "@/components/LessonVideo";
import { LessonQuestions, LessonQuestion } from "@/components/LessonQuestions";

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

  const questionRows = await db().sql`
    SELECT q.id, q.question_type, q.prompt, q.options, q.position,
           qr.selected_option_index AS prior_selected, qr.response_text AS prior_text, qr.is_correct AS prior_correct
    FROM questions q
    LEFT JOIN question_responses qr ON qr.question_id = q.id AND qr.student_id = ${student.id}
    WHERE q.lesson_id = ${Number(lessonId)}
    ORDER BY q.position ASC
  `;

  const questions: LessonQuestion[] = questionRows.map((q) => ({
    id: q.id,
    question_type: q.question_type,
    prompt: q.prompt,
    options: q.options ?? null,
    priorSelected: q.prior_selected ?? null,
    priorText: q.prior_text ?? null,
    priorCorrect: q.prior_correct ?? null,
  }));

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

          <LessonVideo videoUrl={lesson.video_url ?? null} videoCaption={lesson.video_caption ?? null} />

          <article className="prose prose-headings:font-serif prose-headings:text-plum prose-p:text-charcoal max-w-none">
            <ReactMarkdown>{lesson.content_body}</ReactMarkdown>
          </article>

          <LessonQuestions lessonId={lesson.id} questions={questions} />

          <div className="mt-8">
            <MarkCompleteButton lessonId={lesson.id} initiallyComplete={lesson.progress_status === "completed"} />
          </div>
        </div>
      </main>
    </div>
  );
}
