import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST(req: NextRequest) {
  try {
    const student = await getCurrentStudent();
    if (!student) {
      return NextResponse.json({ error: "Please log in first." }, { status: 401 });
    }

    const body = await req.json();
    const {
      learning_style,
      interests,
      strengths,
      growth_areas,
      favorite_subjects,
      challenging_subjects,
      motivation,
      best_learning_time,
      show_what_i_know,
      goals_this_year,
      additional_notes,
    } = body;

    await db().sql`
      INSERT INTO student_blueprint_surveys (
        student_id, learning_style, interests, strengths, growth_areas,
        favorite_subjects, challenging_subjects, motivation, best_learning_time,
        show_what_i_know, goals_this_year, additional_notes, completed_at
      ) VALUES (
        ${student.id}, ${learning_style || null}, ${interests || null}, ${strengths || null}, ${growth_areas || null},
        ${favorite_subjects || null}, ${challenging_subjects || null}, ${motivation || null}, ${best_learning_time || null},
        ${show_what_i_know || null}, ${goals_this_year || null}, ${additional_notes || null}, NOW()
      )
      ON CONFLICT (student_id) DO UPDATE SET
        learning_style = EXCLUDED.learning_style,
        interests = EXCLUDED.interests,
        strengths = EXCLUDED.strengths,
        growth_areas = EXCLUDED.growth_areas,
        favorite_subjects = EXCLUDED.favorite_subjects,
        challenging_subjects = EXCLUDED.challenging_subjects,
        motivation = EXCLUDED.motivation,
        best_learning_time = EXCLUDED.best_learning_time,
        show_what_i_know = EXCLUDED.show_what_i_know,
        goals_this_year = EXCLUDED.goals_this_year,
        additional_notes = EXCLUDED.additional_notes,
        completed_at = NOW()
    `;

    await db().sql`UPDATE students SET blueprint_survey_completed = TRUE WHERE id = ${student.id}`;

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Student blueprint survey submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
