import { redirect, notFound } from "next/navigation";
import Link from "next/link";
import { getCurrentStudent } from "@/lib/auth";
import { db } from "@/lib/db";
import { StudentNav } from "@/components/StudentNav";

export default async function CoursePage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const student = await getCurrentStudent();
  if (!student) redirect("/login");

  const courses = await db().sql`SELECT * FROM courses WHERE slug = ${slug}`;
  if (!courses.length) notFound();
  const course = courses[0];

  const units = await db().sql`SELECT * FROM units WHERE course_id = ${course.id} ORDER BY position`;
  const lessons = await db().sql`
    SELECT l.*, lp.status AS progress_status
    FROM lessons l
    LEFT JOIN lesson_progress lp ON lp.lesson_id = l.id AND lp.student_id = ${student.id}
    WHERE l.unit_id = ANY(${units.map((u) => u.id)})
    ORDER BY l.position
  `;

  return (
    <div className="min-h-screen flex flex-col">
      <StudentNav firstName={student.first_name} />
      <main className="flex-1 max-w-3xl mx-auto w-full px-6 py-10">
        <Link href="/dashboard" className="text-sm text-terracotta-dark font-semibold">&larr; Back to My Classes</Link>
        <span className="block text-xs uppercase tracking-wider font-bold text-terracotta-dark mt-4">{course.subject}</span>
        <h1 className="text-3xl mb-2">{course.title}</h1>
        <p className="text-warm-gray mb-8">{course.description}</p>

        {units.map((unit) => (
          <div key={unit.id} className="mb-8">
            <h2 className="text-lg mb-3">{unit.title}</h2>
            <div className="flex flex-col gap-2">
              {lessons.filter((l) => l.unit_id === unit.id).map((lesson) => (
                <Link
                  key={lesson.id}
                  href={`/courses/${slug}/lessons/${lesson.id}`}
                  className="flex items-center justify-between bg-ivory border border-border rounded-xl px-5 py-4 hover:border-terracotta transition"
                >
                  <div>
                    <p className="font-semibold text-plum text-sm">{lesson.title}</p>
                    <p className="text-xs text-warm-gray-light">{lesson.estimated_minutes} min &middot; {lesson.standards_code}</p>
                  </div>
                  <span className={`text-xs font-semibold rounded-full px-3 py-1 ${
                    lesson.progress_status === "completed"
                      ? "bg-sage/20 text-sage-dark"
                      : "bg-cream text-warm-gray-light"
                  }`}>
                    {lesson.progress_status === "completed" ? "Complete" : "Start"}
                  </span>
                </Link>
              ))}
            </div>
          </div>
        ))}
      </main>
    </div>
  );
}
