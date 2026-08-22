import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentParent } from "@/lib/parentAuth";
import { hashPassword } from "@/lib/auth";

function studioSlug(label: string | null): string {
  if (!label) return "wonder";
  const l = label.toLowerCase();
  if (l.includes("discovery")) return "discovery";
  if (l.includes("venture")) return "venture";
  return "wonder";
}

function splitName(fullName: string): { first: string; last: string } {
  const parts = fullName.trim().split(/\s+/);
  if (parts.length === 1) return { first: parts[0], last: "" };
  return { first: parts.slice(0, -1).join(" "), last: parts[parts.length - 1] };
}

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
      student_login_email, student_login_password,
    } = body;

    if (!parent_name || !student_name) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }
    if (!student_login_email || !student_login_password) {
      return NextResponse.json({ error: "Please set up a login email and password for your student." }, { status: 400 });
    }
    if (String(student_login_password).length < 8) {
      return NextResponse.json({ error: "Your student's password must be at least 8 characters." }, { status: 400 });
    }

    const existingStudent = await db().sql`SELECT id FROM students WHERE email = ${String(student_login_email).toLowerCase()}`;
    if (existingStudent.length) {
      return NextResponse.json({ error: "That student login email is already in use." }, { status: 409 });
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

    const { first, last } = splitName(student_name);
    const gradeLevel = (upcoming_grade || current_grade || "K").toString().trim() || "K";
    const passwordHash = await hashPassword(student_login_password);
    const colors = ["terracotta", "sage", "amber", "plum"];
    const avatarColor = colors[Math.floor(Math.random() * colors.length)];

    await db().sql`
      INSERT INTO students (first_name, last_name, email, password_hash, studio, grade_level, parent_email, avatar_color, parent_id)
      VALUES (
        ${first || student_name}, ${last || ""}, ${String(student_login_email).toLowerCase()}, ${passwordHash},
        ${studioSlug(studio)}, ${gradeLevel}, ${parent.email}, ${avatarColor}, ${parent.id}
      )
    `;

    await db().sql`UPDATE parents SET enrollment_completed = TRUE WHERE id = ${parent.id}`;

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Parent enrollment submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
