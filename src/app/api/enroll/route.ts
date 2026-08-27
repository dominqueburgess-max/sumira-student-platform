import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { sendEmail } from "@/lib/email";
import { emailShell, emailHeading, enrollmentTypeLabel } from "@/lib/emailTemplates";

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
};

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const { parent_name, email, phone, state, esa, looking_for } = body;

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
        }];

    if (!parent_name || !String(parent_name).trim() || !email || !String(email).trim()) {
      return NextResponse.json({ error: "Missing required fields." }, { status: 400 });
    }
    if (learners.length === 0) {
      return NextResponse.json({ error: "Add at least one learner." }, { status: 400 });
    }
    for (const l of learners) {
      if (!l.student_name || !String(l.student_name).trim()) {
        return NextResponse.json({ error: "Missing a learner's name." }, { status: 400 });
      }
    }

    for (const l of learners) {
      const enrollmentType = l.enrollment_type === "personalized_plan" || l.enrollment_type === "both"
        ? l.enrollment_type
        : "learning_studio";

      await db().sql`
        INSERT INTO enrollment_inquiries (
          enrollment_type, parent_name, email, phone, state, student_name, student_age,
          current_grade, upcoming_grade, studio, plan, start_date,
          homeschool, other_school, esa, looking_for, accommodations
        ) VALUES (
          ${enrollmentType},
          ${parent_name}, ${email}, ${phone || null}, ${state || null}, ${l.student_name},
          ${l.student_age ? Number(l.student_age) : null}, ${l.current_grade || null}, ${l.upcoming_grade || null},
          ${l.studio || null}, ${l.plan || null}, ${l.start_date || null},
          ${l.homeschool || null}, ${l.other_school || null}, ${esa || null},
          ${looking_for || null}, ${l.accommodations || null}
        )
      `;
    }

    const learnerListHtml = learners.map((l) => {
      const enrollmentType = l.enrollment_type === "personalized_plan" || l.enrollment_type === "both"
        ? l.enrollment_type
        : "learning_studio";
      return `<li style="margin-bottom:6px;"><strong>${l.student_name}</strong> &mdash; ${enrollmentTypeLabel(enrollmentType)}</li>`;
    }).join("");

    await sendEmail({
      to: String(email).trim(),
      subject: "We've received your Su Mira Learning enrollment information",
      html: emailShell(
        `${emailHeading(`Thanks, ${parent_name}!`)}
        <p>We've received your family's enrollment information for:</p>
        <ul style="padding-left:20px; margin: 12px 0;">${learnerListHtml}</ul>
        <p>A Su Mira team member will follow up by email within one to two business days with next steps and a recommended plan for ${learners.length > 1 ? "each learner" : "your learner"}.</p>
        <p style="font-size:13px; color:#6B6470;">Questions in the meantime? Just reply to this email or reach out to connect@sumirastudio.com.</p>`,
        { previewText: "We've received your family's enrollment information." }
      ),
    });

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Enrollment submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
