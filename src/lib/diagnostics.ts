import Anthropic from "@anthropic-ai/sdk";
import { db } from "@/lib/db";
import { SCHOOL_YEAR_START, expectedWeekNumber } from "@/lib/studentReport";

export type DiagnosticPeriod = "BOY" | "MOY";

const QUESTIONS_PER_DIAGNOSTIC = 8;

/** '2026-2027' style label for the school year a given date falls in. */
export function currentSchoolYearLabel(today: Date = new Date()): string {
  const start = new Date(SCHOOL_YEAR_START + "T00:00:00Z");
  const startYear = start.getUTCFullYear();
  // If "today" is before this year's start date, we're still in the prior label.
  const label = today.getTime() >= start.getTime() ? startYear : startYear - 1;
  return `${label}-${label + 1}`;
}

type StandardSample = { standards_code: string | null; standards_description: string | null; lesson_title: string };

/**
 * Pulls a representative spread of standards already tagged on a course's
 * lessons. BOY samples across the WHOLE course (a readiness preview of the
 * year ahead). MOY only samples from lessons up to "today's" expected week,
 * i.e. only material actually taught so far -- a retention check, not a
 * preview of content the student hasn't seen yet.
 */
async function sampleStandards(courseId: number, period: DiagnosticPeriod, count = QUESTIONS_PER_DIAGNOSTIC): Promise<StandardSample[]> {
  const rows = (await db().sql`
    SELECT l.standards_code, l.standards_description, l.title AS lesson_title, l.week_number
    FROM lessons l
    JOIN units u ON u.id = l.unit_id
    WHERE u.course_id = ${courseId} AND l.standards_code IS NOT NULL
    ORDER BY u.position ASC, l.position ASC
  `) as unknown as (StandardSample & { week_number: number | null })[];

  const pool = period === "MOY" ? rows.filter((r) => (r.week_number ?? 0) <= expectedWeekNumber()) : rows;
  if (pool.length === 0) return [];

  // De-dupe by standards_code so we don't ask the same standard twice.
  const seen = new Set<string>();
  const unique: StandardSample[] = [];
  for (const r of pool) {
    const key = r.standards_code || r.lesson_title;
    if (seen.has(key)) continue;
    seen.add(key);
    unique.push(r);
  }

  if (unique.length <= count) return unique;

  // Evenly spaced sample across the (chronologically ordered) unique list,
  // so the diagnostic spans early/mid/late material rather than clustering.
  const sampled: StandardSample[] = [];
  for (let i = 0; i < count; i++) {
    const idx = Math.floor((i * unique.length) / count);
    sampled.push(unique[idx]);
  }
  return sampled;
}

type GeneratedQuestion = {
  standardsCode: string | null;
  standardsDescription: string | null;
  prompt: string;
  options: string[];
  correctIndex: number;
};

async function generateQuestionsForStandards(
  courseTitle: string,
  subject: string,
  gradeLevel: string,
  period: DiagnosticPeriod,
  standards: StandardSample[]
): Promise<GeneratedQuestion[]> {
  const apiKey = process.env.ANTHROPIC_API_KEY;
  if (!apiKey) throw new Error("AI is not configured (missing ANTHROPIC_API_KEY).");

  const periodContext =
    period === "BOY"
      ? "This is a BEGINNING-of-year readiness check, given in the first weeks of school. It previews skills across the full year of this course -- students are not expected to know the later ones well yet, that's the point of the check."
      : "This is a MIDDLE-of-year check, given partway through the year. It only covers material already taught so far -- students SHOULD know these by now, so questions should be fair, on-grade-level checks of retention, not trick questions.";

  const list = standards
    .map((s, i) => `${i + 1}. Standard ${s.standards_code || "(unlabeled)"}: ${s.standards_description || s.lesson_title}`)
    .join("\n");

  const prompt = `You are writing a short diagnostic assessment for "${courseTitle}" (${subject}), for a grade ${gradeLevel} student in a homeschool microschool. ${periodContext}

Write exactly ${standards.length} multiple-choice questions, one per standard below, testing that exact skill at a grade-${gradeLevel}-appropriate level:

${list}

Rules for each question:
- Exactly 4 answer options, only one correct.
- Options should be plausible (no obviously-silly distractors), and if it's a math question use realistic numbers -- don't reuse the same numbers across questions.
- Keep wording clear and grade-appropriate, no trick wording.
- Do not reference "the lesson" or "the reading" -- these are standalone questions, the student has no passage in front of them unless the question itself provides one.

Respond with ONLY a valid JSON array, no other text, in this exact shape (array must have exactly ${standards.length} items, in the same order as the standards above):
[{"standardsCode": "...", "standardsDescription": "...", "prompt": "...", "options": ["...", "...", "...", "..."], "correctIndex": 0}]`;

  const anthropic = new Anthropic({ apiKey });
  const response = await anthropic.messages.create({
    model: "claude-sonnet-4-5",
    max_tokens: 4000,
    messages: [{ role: "user", content: prompt }],
  });

  const textBlock = response.content.find((b) => b.type === "text");
  const raw = textBlock && "text" in textBlock ? textBlock.text : "";
  const jsonMatch = raw.match(/\[[\s\S]*\]/);
  if (!jsonMatch) throw new Error("No JSON array found in AI response.");

  const parsed = JSON.parse(jsonMatch[0]) as GeneratedQuestion[];
  if (!Array.isArray(parsed) || parsed.length === 0) throw new Error("AI returned no questions.");

  return parsed
    .filter((q) => q && q.prompt && Array.isArray(q.options) && q.options.length >= 2 && typeof q.correctIndex === "number")
    .map((q, i) => ({
      standardsCode: q.standardsCode ?? standards[i]?.standards_code ?? null,
      standardsDescription: q.standardsDescription ?? standards[i]?.standards_description ?? null,
      prompt: q.prompt,
      options: q.options,
      correctIndex: q.correctIndex,
    }));
}

export type GenerateResult = { ok: true; diagnosticId: number; questionCount: number } | { ok: false; error: string };

/**
 * Admin-triggered: (re)generates a BOY or MOY diagnostic for one student on
 * one course. Safe to call again on an existing diagnostic -- it resets it
 * (fresh questions, cleared answers/score) rather than erroring, so an admin
 * can regenerate if a question set looks off.
 */
export async function generateDiagnostic(studentId: number, courseId: number, period: DiagnosticPeriod): Promise<GenerateResult> {
  const courseRows = await db().sql`SELECT id, title, subject, grade_level FROM courses WHERE id = ${courseId}`;
  if (!courseRows.length) return { ok: false, error: "Course not found." };
  const course = courseRows[0] as { id: number; title: string; subject: string; grade_level: string };

  const studentRows = await db().sql`SELECT id, grade_level FROM students WHERE id = ${studentId}`;
  if (!studentRows.length) return { ok: false, error: "Student not found." };
  const student = studentRows[0] as { id: number; grade_level: string };

  const standards = await sampleStandards(courseId, period);
  if (standards.length === 0) {
    return { ok: false, error: "This course doesn't have any standards tagged on its lessons yet, so a diagnostic can't be generated." };
  }

  let questions: GeneratedQuestion[];
  try {
    questions = await generateQuestionsForStandards(course.title, course.subject, String(student.grade_level), period, standards);
  } catch (err) {
    console.error("Diagnostic generation failed:", err);
    return { ok: false, error: err instanceof Error ? err.message : "Question generation failed." };
  }
  if (questions.length === 0) return { ok: false, error: "AI didn't return any usable questions -- try again." };

  const schoolYear = currentSchoolYearLabel();

  const diagRows = await db().sql`
    INSERT INTO diagnostics (student_id, course_id, period, school_year, status, total_questions, generated_at)
    VALUES (${studentId}, ${courseId}, ${period}, ${schoolYear}, 'not_started', ${questions.length}, NOW())
    ON CONFLICT (student_id, course_id, period, school_year)
    DO UPDATE SET status = 'not_started', total_questions = ${questions.length}, correct_count = NULL,
      ai_summary = NULL, started_at = NULL, completed_at = NULL, generated_at = NOW()
    RETURNING id
  `;
  const diagnosticId = (diagRows[0] as { id: number }).id;

  await db().sql`DELETE FROM diagnostic_questions WHERE diagnostic_id = ${diagnosticId}`;

  for (let i = 0; i < questions.length; i++) {
    const q = questions[i];
    await db().sql`
      INSERT INTO diagnostic_questions (diagnostic_id, position, standards_code, standards_description, prompt, options, correct_option_index)
      VALUES (${diagnosticId}, ${i}, ${q.standardsCode}, ${q.standardsDescription}, ${q.prompt}, ${JSON.stringify(q.options)}, ${q.correctIndex})
    `;
  }

  return { ok: true, diagnosticId, questionCount: questions.length };
}

/**
 * Grades a submitted diagnostic (multiple choice, auto-scored) and asks
 * Claude for one short, encouraging strengths/growth-areas summary grounded
 * in which standards the student got right vs. wrong. Never exposes
 * correct_option_index to the caller.
 */
export async function submitDiagnostic(
  diagnosticId: number,
  studentId: number,
  answers: { questionId: number; selectedIndex: number }[]
): Promise<{ ok: true; correctCount: number; totalQuestions: number; summary: string } | { ok: false; error: string }> {
  const diagRows = await db().sql`
    SELECT d.id, d.student_id, d.status, c.title AS course_title, c.subject
    FROM diagnostics d JOIN courses c ON c.id = d.course_id
    WHERE d.id = ${diagnosticId}
  `;
  if (!diagRows.length) return { ok: false, error: "Diagnostic not found." };
  const diag = diagRows[0] as { id: number; student_id: number; status: string; course_title: string; subject: string };
  if (diag.student_id !== studentId) return { ok: false, error: "Not authorized." };
  if (diag.status === "completed") return { ok: false, error: "This check-in was already submitted." };

  const questionRows = await db().sql`
    SELECT id, standards_description, correct_option_index FROM diagnostic_questions WHERE diagnostic_id = ${diagnosticId} ORDER BY position ASC
  `;
  const questions = questionRows as unknown as { id: number; standards_description: string | null; correct_option_index: number }[];

  const answerByQuestion = new Map(answers.map((a) => [a.questionId, a.selectedIndex]));
  let correctCount = 0;
  const gradedForSummary: { skill: string; correct: boolean }[] = [];

  for (const q of questions) {
    const selected = answerByQuestion.has(q.id) ? answerByQuestion.get(q.id)! : null;
    const isCorrect = selected !== null && selected === q.correct_option_index;
    if (isCorrect) correctCount++;
    gradedForSummary.push({ skill: q.standards_description || "a skill in this course", correct: isCorrect });
    await db().sql`
      UPDATE diagnostic_questions SET selected_option_index = ${selected}, is_correct = ${isCorrect} WHERE id = ${q.id}
    `;
  }

  let summary = `${correctCount} out of ${questions.length} correct.`;
  const apiKey = process.env.ANTHROPIC_API_KEY;
  if (apiKey) {
    try {
      const anthropic = new Anthropic({ apiKey });
      const breakdown = gradedForSummary.map((g) => `- ${g.correct ? "Correct" : "Missed"}: ${g.skill}`).join("\n");
      const response = await anthropic.messages.create({
        model: "claude-sonnet-4-5",
        max_tokens: 300,
        messages: [
          {
            role: "user",
            content: `A student just finished a diagnostic check-in for "${diag.course_title}" (${diag.subject}), scoring ${correctCount}/${questions.length}. Here's the skill-by-skill breakdown:\n${breakdown}\n\nWrite a short (2-3 sentence), warm, encouraging summary for the student and their parent: name 1-2 real strengths by skill, and 1-2 specific growth areas to focus on next. No letter grades, no "you failed" language, no generic filler. Plain text only, no JSON.`,
          },
        ],
      });
      const textBlock = response.content.find((b) => b.type === "text");
      if (textBlock && "text" in textBlock && textBlock.text.trim()) summary = textBlock.text.trim();
    } catch (err) {
      console.error("Diagnostic summary generation failed:", err);
    }
  }

  await db().sql`
    UPDATE diagnostics SET status = 'completed', correct_count = ${correctCount}, ai_summary = ${summary}, completed_at = NOW()
    WHERE id = ${diagnosticId}
  `;

  return { ok: true, correctCount, totalQuestions: questions.length, summary };
}
