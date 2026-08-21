import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const {
      parent_name, email, phone, state, student_name, student_age,
      current_grade, upcoming_grade, studio, plan, start_date,
      homeschool, other_school, esa, looking_for, accommodations,
    } = body;

    if (!parent_name || !email || !student_name) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }

    await db().sql`
      INSERT INTO enrollment_inquiries (
        parent_name, email, phone, state, student_name, student_age,
        current_grade, upcoming_grade, studio, plan, start_date,
        homeschool, other_school, esa, looking_for, accommodations
      ) VALUES (
        ${parent_name}, ${email}, ${phone || null}, ${state || null}, ${student_name},
        ${student_age ? Number(student_age) : null}, ${current_grade || null}, ${upcoming_grade || null},
        ${studio || null}, ${plan || null}, ${start_date || null},
        ${homeschool || null}, ${other_school || null}, ${esa || null},
        ${looking_for || null}, ${accommodations || null}
      )
    `;

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Enrollment submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
