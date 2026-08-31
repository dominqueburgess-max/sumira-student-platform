import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST(req: NextRequest) {
  try {
    const student = await getCurrentStudent();
    if (!student) {
      return NextResponse.json({ error: "Please log in first." }, { status: 401 });
    }
    if (student.studio !== "venture") {
      return NextResponse.json({ error: "Live Studio electives are for Venture Studio (grades 6-12) students." }, { status: 403 });
    }

    const body = await req.json();
    const { first_choice, second_choice, other_studio_idea } = body;

    if (!first_choice || !String(first_choice).trim()) {
      return NextResponse.json({ error: "Please select your first-choice Live Studio." }, { status: 400 });
    }

    await db().sql`
      INSERT INTO live_studio_elective_surveys (
        student_id, first_choice, second_choice, other_studio_idea, completed_at
      ) VALUES (
        ${student.id}, ${first_choice}, ${second_choice || null}, ${other_studio_idea || null}, NOW()
      )
      ON CONFLICT (student_id) DO UPDATE SET
        first_choice = EXCLUDED.first_choice,
        second_choice = EXCLUDED.second_choice,
        other_studio_idea = EXCLUDED.other_studio_idea,
        completed_at = NOW()
    `;

    await db().sql`UPDATE students SET elective_survey_completed = TRUE WHERE id = ${student.id}`;

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Live Studio elective survey submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
