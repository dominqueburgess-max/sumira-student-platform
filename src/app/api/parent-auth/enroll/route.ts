import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentParent } from "@/lib/parentAuth";
import { hashPassword } from "@/lib/auth";

function studioSlug(label: string | null | undefined): string {
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

type LearnerInput = {
  student_name?: string;
  student_age?: string | number;
  current_grade?: string;
  upcoming_grade?: string;
  enrollment_type?: string;
  studio?: string;
  plan?: string;
  start_date?: string;
  homeschool?: string;
  other_school?: string;
  accommodations?: string;
  student_login_email?: string;
  student_login_password?: string;
};

export async function POST(req: NextRequest) {
  try {
    const parent = await getCurrentParent();
    if (!parent) {
      return NextResponse.json({ error: "Please log in first." }, { status: 401 });
    }

    const body = await req.json();
    const { parent_name, phone, state, esa, looking_for } = body;

    // Accept the new multi-learner shape, but fall back to the old
    // single-learner shape so nothing breaks if an older client posts here.
    const learners: LearnerInput[] = Array.isArray(body.learners) && body.learners.length > 0
      ? body.learners
      : [{
          student_name: body.student_name,
          student_age: body.student_age,
          current_grade: body.current_grade,
          upcoming_grade: body.upcoming_grade,
          enrollment_type: body.enrollment_type,
          studio: body.studio,
          plan: body.plan,
          start_date: body.start_date,
          homeschool: body.homeschool,
          other_school: body.other_school,
          accommodations: body.accommodations,
          student_login_email: body.student_login_email,
          student_login_password: body.student_login_password,
        }];

    if (!parent_name || !String(parent_name).trim()) {
      return NextResponse.json({ error: "Missing your name." }, { status: 400 });
    }
    if (learners.length === 0) {
      return NextResponse.json({ error: "Add at least one learner." }, { status: 400 });
    }

    // Validate every learner before writing anything.
    const normalizedEmails = new Set<string>();
    for (const l of learners) {
      if (!l.student_name || !String(l.student_name).trim()) {
        return NextResponse.json({ error: "Missing a learner's name." }, { status: 400 });
      }
      if (!l.student_login_email || !l.student_login_password) {
        return NextResponse.json({ error: `Please set up a login email and password for ${l.student_name}.` }, { status: 400 });
      }
      if (String(l.student_login_password).length < 8) {
        return NextResponse.json({ error: `${l.student_name}'s password must be at least 8 characters.` }, { status: 400 });
      }
      const emailLower = String(l.student_login_email).toLowerCase().trim();
      if (normalizedEmails.has(emailLower)) {
        return NextResponse.json({ error: "Each learner needs their own unique login email." }, { status: 400 });
      }
      normalizedEmails.add(emailLower);
    }

    // Check none of these emails already exist in the platform.
    for (const email of normalizedEmails) {
      const existing = await db().sql`SELECT id FROM students WHERE email = ${email}`;
      if (existing.length) {
        return NextResponse.json({ error: `The login email ${email} is already in use. Please choose a different one.` }, { status: 409 });
      }
    }

    const colors = ["terracotta", "sage", "amber", "plum"];

    for (const l of learners) {
      const enrollmentType = l.enrollment_type === "personalized_plan" || l.enrollment_type === "both"
        ? l.enrollment_type
        : "learning_studio";

      await db().sql`
        INSERT INTO enrollment_inquiries (
          parent_id, parent_name, email, phone, state, student_name, student_age,
          current_grade, upcoming_grade, studio, plan, start_date,
          homeschool, other_school, esa, looking_for, accommodations, enrollment_type
        ) VALUES (
          ${parent.id}, ${parent_name}, ${parent.email}, ${phone || null}, ${state || null}, ${l.student_name},
          ${l.student_age ? Number(l.student_age) : null}, ${l.current_grade || null}, ${l.upcoming_grade || null},
          ${l.studio || null}, ${l.plan || null}, ${l.start_date || null},
          ${l.homeschool || null}, ${l.other_school || null}, ${esa || null},
          ${looking_for || null}, ${l.accommodations || null}, ${enrollmentType}
        )
      `;

      const { first, last } = splitName(String(l.student_name));
      const gradeLevel = (l.upcoming_grade || l.current_grade || "K").toString().trim() || "K";
      const passwordHash = await hashPassword(String(l.student_login_password));
      const avatarColor = colors[Math.floor(Math.random() * colors.length)];

      await db().sql`
        INSERT INTO students (first_name, last_name, email, password_hash, studio, grade_level, parent_email, avatar_color, parent_id)
        VALUES (
          ${first || l.student_name}, ${last || ""}, ${String(l.student_login_email).toLowerCase().trim()}, ${passwordHash},
          ${studioSlug(l.studio)}, ${gradeLevel}, ${parent.email}, ${avatarColor}, ${parent.id}
        )
      `;
    }

    await db().sql`UPDATE parents SET enrollment_completed = TRUE WHERE id = ${parent.id}`;

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Parent enrollment submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
