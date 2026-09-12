import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import ReactMarkdown from "react-markdown";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";
import { MarkCompleteButton } from "@/components/MarkCompleteButton";
import { LessonVideo } from "@/components/LessonVideo";
import { LessonAudioPlayer } from "@/components/LessonAudioPlayer";
import { LessonQuestions, LessonQuestion } from "@/components/LessonQuestions";
import { LessonAssignments, LessonAssignment } from "@/components/LessonAssignments";
import { getLessonSequenceEntry } from "@/lib/lessonSequence";
import { loadCrosswalkMap, resolveDisplayStandard } from "@/lib/standardsCrosswalk";
import { StandardBadge } from "@/components/StandardBadge";

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

  // Sequential gating: block direct URL access to a lesson the student hasn't unlocked yet.
  const { entry } = await getLessonSequenceEntry(Number(lessonId), student.id);
  if (entry?.locked) {
    redirect(`/courses/${slug}?locked=${entry.lockReason ?? "1"}`);
  }

  const crosswalkMap = await loadCrosswalkMap(student.home_state, [lesson.standards_code]);
  const displayStandard = resolveDisplayStandard(student.home_state, lesson.standards_code, lesson.standards_description, crosswalkMap);

  const assignmentRows = await db().sql`
    SELECT a.id, a.assignment_type, a.title, a.instructions, a.rubric, a.estimated_minutes,
           s.status AS prior_status
    FROM lesson_assignments a
    LEFT JOIN assignment_submissions s ON s.assignment_id = a.id AND s.student_id = ${student.id}
    WHERE a.lesson_id = ${Number(lessonId)}
    ORDER BY a.position ASC, a.id ASC
  `;
  const assignments: LessonAssignment[] = assignmentRows.map((a) => ({
    id: a.id,
    assignment_type: a.assignment_type,
    title: a.title,
    instructions: a.instructions,
    rubric: a.rubric ?? null,
    estimated_minutes: a.estimated_minutes ?? null,
    priorStatus: a.prior_status ?? null,
  }));

  // Once a lesson has real Classwork/Homework assignments authored, those
  // replace the old quick multiple-choice/short-answer quiz as the lesson's
  // primary work -- rolling out course by course as content is authored.
  const questionRows = assignments.length
    ? []
    : await db().sql`
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
          <div className="flex flex-wrap items-center gap-2 mb-4">
            {lesson.week_number && (
              <span className="inline-block text-xs font-bold uppercase tracking-wide bg-terracotta text-ivory rounded-full px-3 py-1">
                Week {lesson.week_number}
              </span>
            )}
            <StandardBadge standard={displayStandard} />
          </div>

          <LessonAudioPlayer lessonId={lesson.id} />
          <LessonVideo videoUrl={lesson.video_url ?? null} videoCaption={lesson.video_caption ?? null} />

          <article className="prose prose-headings:font-serif prose-headings:text-plum prose-p:text-charcoal max-w-none">
            <ReactMarkdown>{lesson.content_body}</ReactMarkdown>
          </article>

          <Link
            href={`/coach?lessonId=${lesson.id}`}
            className="mt-6 flex items-center justify-between gap-3 bg-plum/5 border border-plum/20 rounded-xl px-5 py-3 hover:border-plum/40 transition"
          >
            <span className="text-sm text-plum">
              <span className="font-semibold">🤔 Stuck or confused?</span> Ask Mira about this exact lesson.
            </span>
            <span className="text-xs font-semibold text-terracotta-dark shrink-0">Ask Mira →</span>
          </Link>

          <LessonAssignments assignments={assignments} />
          <LessonQuestions lessonId={lesson.id} questions={questions} />

          <div className="mt-8">
            <MarkCompleteButton lessonId={lesson.id} initiallyComplete={lesson.progress_status === "completed"} />
          </div>
        </div>
      </main>
    </div>
  );
}
