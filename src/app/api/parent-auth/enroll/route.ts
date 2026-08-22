import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentParent } from "@/lib/parentAuth";

export async function POST(req: NextRequest) {
  try {
    const parent = await getCurrentParent();
    if (!parent) {
      return NextResponse.json({ error: "Please log in first." }, { status: 401 });
    }

    const body = await req.json();
    const {
      parent_name, phone, state, student_name, student_age,
      current_grade, upcoming_grade, studio, plan, start_date,
      homeschool, other_school, esa, looking_for, accommodations,
    } = body;

    if (!parent_name || !student_name) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }

    await db().sql`
      INSERT INTO enrollment_inquiries (
        parent_id, parent_name, email, phone, state, student_name, student_age,
        current_grade, upcoming_grade, studio, plan, start_date,
        homeschool, other_school, esa, looking_for, accommodations
      ) VALUES (
        ${parent.id}, ${parent_name}, ${parent.email}, ${phone || null}, ${state || null}, ${student_name},
        ${student_age ? Number(student_age) : null}, ${current_grade || null}, ${upcoming_grade || null},
        ${studio || null}, ${plan || null}, ${start_date || null},
        ${homeschool || null}, ${other_school || null}, ${esa || null},
        ${looking_for || null}, ${accommodations || null}
      )
    `;

    await db().sql`UPDATE parents SET enrollment_completed = TRUE WHERE id = ${parent.id}`;

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Parent enrollment submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
