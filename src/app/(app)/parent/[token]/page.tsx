import { notFound } from "next/navigation";
import { db } from "@/lib/db";
import { PrintButton } from "@/components/PrintButton";
import { getStudentReport } from "@/lib/studentReport";
import { StudentReportView } from "@/components/StudentReportView";

export default async function ParentViewPage({ params }: { params: Promise<{ token: string }> }) {
  const { token } = await params;

  const tokenRows = await db().sql`
    SELECT s.id FROM parent_access_tokens pat
    JOIN students s ON s.id = pat.student_id
    WHERE pat.token = ${token}
  `;
  if (!tokenRows.length) notFound();

  const report = await getStudentReport(tokenRows[0].id);
  if (!report) notFound();
  const { student } = report;

  return (
    <div className="min-h-screen bg-cream">
      <div className="max-w-4xl mx-auto px-6 py-10 print:py-0">
        <div className="flex items-center justify-between mb-8 print:hidden">
          <div>
            <div className="font-serif text-xl text-plum">SU MIRA<span className="text-terracotta-dark">LEARNING STUDIO</span></div>
            <p className="text-xs text-warm-gray">Parent / Family View — read only</p>
          </div>
          <PrintButton />
        </div>

        <div className="bg-ivory rounded-2xl border border-border p-8 mb-8">
          <h1 className="text-3xl mb-1">{student.first_name} {student.last_name}</h1>
          <p className="text-warm-gray">{student.studio === "wonder" ? "Wonder Studio" : student.studio} &middot; Grade {student.grade_level}</p>
        </div>

        <div className="bg-ivory rounded-2xl border border-border p-8">
          <StudentReportView report={report} />
        </div>
      </div>
    </div>
  );
}
