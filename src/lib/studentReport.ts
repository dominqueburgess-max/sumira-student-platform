import { db } from "@/lib/db";
import { loadCrosswalkMap, resolveDisplayStandard, type DisplayStandard } from "@/lib/standardsCrosswalk";

export const STATE_STANDARD_NAMES: Record<string, string> = {
  NC: "the NC Standard Course of Study / NC Early Learning and Development Standards",
  GA: "the Georgia Standards of Excellence (GSE)",
};

export type StudentReport = {
  student: {
    id: number;
    first_name: string;
    last_name: string;
    studio: string | null;
    grade_level: string | number | null;
    home_state: string;
  };
  courses: {
    id: number;
    title: string;
    subject: string | null;
    color: string | null;
    total_lessons: number;
    completed_lessons: number;
  }[];
  standards: {
    subject: string | null;
    display: DisplayStandard | null;
  }[];
  standardsLabel: string;
  homeState: string;
  achievements: { id: number; icon: string; title: string }[];
  portfolioItems: { id: number; title: string; description: string | null; media_url: string | null }[];
  submissions: {
    id: number;
    title: string;
    status: string;
    submitted_at: string;
    staff_grade: string | null;
    staff_feedback: string | null;
    course_title: string | null;
    lesson_title: string | null;
  }[];
};

/**
 * Loads everything a parent (or the student) needs to see for one learner:
 * course progress, standards mastery (state-crosswalked), achievements,
 * self-added portfolio pieces, and reviewed/pending Classwork & Homework
 * submissions. Shared by the student-facing /portfolio page's data needs,
 * the magic-link /parent/[token] view, and the parent-portal dashboard.
 */
export async function getStudentReport(studentId: number): Promise<StudentReport | null> {
  const studentRows = (await db().sql`SELECT * FROM students WHERE id = ${studentId}`) as unknown as StudentReport["student"][];
  if (!studentRows.length) return null;
  const student = studentRows[0];
  const homeState = student.home_state || "NC";

  const courses = (await db().sql`
    SELECT c.id, c.title, c.subject, c.color,
      COUNT(l.id)::int AS total_lessons,
      COUNT(lp.id) FILTER (WHERE lp.status = 'completed')::int AS completed_lessons
    FROM enrollments e
    JOIN courses c ON c.id = e.course_id
    LEFT JOIN units u ON u.course_id = c.id
    LEFT JOIN lessons l ON l.unit_id = u.id
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${studentId}
    WHERE e.student_id = ${studentId}
    GROUP BY c.id
    ORDER BY c.position
  `) as unknown as StudentReport["courses"];

  const standardRows = (await db().sql`
    SELECT DISTINCT l.standards_code, l.standards_description, c.subject
    FROM lesson_progress lp
    JOIN lessons l ON l.id = lp.lesson_id
    JOIN units u ON u.id = l.unit_id
    JOIN courses c ON c.id = u.course_id
    WHERE lp.student_id = ${studentId} AND lp.status = 'completed' AND l.standards_code IS NOT NULL
    ORDER BY c.subject, l.standards_code
  `) as unknown as { standards_code: string; standards_description: string | null; subject: string | null }[];

  const crosswalkMap = await loadCrosswalkMap(homeState, standardRows.map((s) => s.standards_code));
  const standards = standardRows.map((s) => ({
    subject: s.subject,
    display: resolveDisplayStandard(homeState, s.standards_code, s.standards_description, crosswalkMap),
  }));
  const standardsLabel =
    STATE_STANDARD_NAMES[homeState] ||
    `${homeState}'s official state standards (where a Georgia-style crosswalk isn't authored yet for a code, the North Carolina standard is shown instead)`;

  const achievements = (await db().sql`
    SELECT id, icon, title FROM achievements WHERE student_id = ${studentId} ORDER BY earned_at
  `) as unknown as StudentReport["achievements"];

  const portfolioItems = (await db().sql`
    SELECT id, title, description, media_url FROM portfolio_items WHERE student_id = ${studentId} ORDER BY created_at DESC LIMIT 12
  `) as unknown as StudentReport["portfolioItems"];

  const submissions = (await db().sql`
    SELECT s.id, s.title, s.status, s.submitted_at, s.staff_grade, s.staff_feedback,
           c.title AS course_title, l.title AS lesson_title
    FROM assignment_submissions s
    LEFT JOIN lessons l ON l.id = s.lesson_id
    LEFT JOIN courses c ON c.id = s.course_id
    WHERE s.student_id = ${studentId}
    ORDER BY s.submitted_at DESC
    LIMIT 20
  `) as unknown as StudentReport["submissions"];

  return { student, courses, standards, standardsLabel, homeState, achievements, portfolioItems, submissions };
}
