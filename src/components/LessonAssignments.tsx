import { InlineAssignmentSubmit } from "@/components/InlineAssignmentSubmit";

export type LessonAssignment = {
  id: number;
  assignment_type: "classwork" | "homework";
  title: string;
  instructions: string;
  rubric: string | null;
  estimated_minutes: number | null;
  priorStatus: string | null;
};

const TYPE_LABEL: Record<string, { label: string; classes: string }> = {
  classwork: { label: "Classwork Assignment", classes: "bg-plum text-ivory" },
  homework: { label: "Homework Assignment", classes: "bg-terracotta text-ivory" },
};

export function LessonAssignments({ assignments }: { assignments: LessonAssignment[] }) {
  if (!assignments.length) return null;

  return (
    <div className="mt-8 border-t border-border pt-8 flex flex-col gap-5">
      <h3 className="font-serif text-xl text-plum">This Lesson&rsquo;s Work</h3>
      {assignments.map((a) => {
        const badge = TYPE_LABEL[a.assignment_type];
        return (
          <div key={a.id} className="bg-ivory border border-border rounded-2xl p-5">
            <div className="flex items-center gap-2 mb-2">
              <span className={`text-xs font-bold uppercase tracking-wide rounded-full px-3 py-1 ${badge.classes}`}>
                {badge.label}
              </span>
              {a.estimated_minutes && (
                <span className="text-xs text-warm-gray-light">~{a.estimated_minutes} min</span>
              )}
            </div>
            <p className="font-semibold text-charcoal text-sm mb-2">{a.title}</p>
            <p className="text-sm text-charcoal whitespace-pre-line">{a.instructions}</p>
            {a.rubric && (
              <details className="mt-2">
                <summary className="text-xs font-semibold text-terracotta-dark cursor-pointer">What a great submission looks like</summary>
                <p className="text-xs text-warm-gray mt-1 whitespace-pre-line">{a.rubric}</p>
              </details>
            )}
            <InlineAssignmentSubmit assignmentId={a.id} alreadySubmitted={a.priorStatus ? { status: a.priorStatus } : null} />
          </div>
        );
      })}
    </div>
  );
}
