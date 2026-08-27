import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentParent } from "@/lib/parentAuth";
import { sendEmail } from "@/lib/email";
import { emailShell, emailHeading } from "@/lib/emailTemplates";

type LearnerAnswers = {
  student_id: number;
  learning_style?: string;
  interests?: string;
  strengths?: string;
  growth_areas?: string;
  favorite_subjects?: string;
  challenging_subjects?: string;
  motivation?: string;
  tech_access?: string;
  best_learning_time?: string;
  prior_schooling?: string;
  goals_this_year?: string;
  additional_notes?: string;
};

export async function POST(req: NextRequest) {
  try {
    const parent = await getCurrentParent();
    if (!parent) {
      return NextResponse.json({ error: "Please log in first." }, { status: 401 });
    }

    const body = await req.json();
    const {
      email,
      mailing_address_line1,
      mailing_address_line2,
      mailing_city,
      mailing_state,
      mailing_zip,
    } = body;

    if (!email || !String(email).trim() || !mailing_address_line1 || !mailing_city || !mailing_state || !mailing_zip) {
      return NextResponse.json({ error: "Please complete your email and mailing address." }, { status: 400 });
    }

    const learners: LearnerAnswers[] = Array.isArray(body.learners) ? body.learners : [];

    // Confirm every learner id actually belongs to this parent before writing anything.
    const ownedRows = (await db().sql`
      SELECT id FROM students WHERE parent_id = ${parent.id} AND enrollment_type IN ('learning_studio', 'both')
    `) as unknown as { id: number }[];
    const ownedIds = new Set(ownedRows.map((r) => r.id));
    for (const l of learners) {
      if (!ownedIds.has(Number(l.student_id))) {
        return NextResponse.json({ error: "One of these learners doesn't belong to your account." }, { status: 403 });
      }
    }

    await db().sql`
      UPDATE parents SET
        email = ${email},
        mailing_address_line1 = ${mailing_address_line1},
        mailing_address_line2 = ${mailing_address_line2 || null},
        mailing_city = ${mailing_city},
        mailing_state = ${mailing_state},
        mailing_zip = ${mailing_zip},
        learning_blueprint_completed = TRUE
      WHERE id = ${parent.id}
    `;

    for (const l of learners) {
      await db().sql`
        INSERT INTO learning_blueprints (
          student_id, parent_id, learning_style, interests, strengths, growth_areas,
          favorite_subjects, challenging_subjects, motivation, tech_access,
          best_learning_time, prior_schooling, goals_this_year, additional_notes, completed_at
        ) VALUES (
          ${l.student_id}, ${parent.id}, ${l.learning_style || null}, ${l.interests || null}, ${l.strengths || null}, ${l.growth_areas || null},
          ${l.favorite_subjects || null}, ${l.challenging_subjects || null}, ${l.motivation || null}, ${l.tech_access || null},
          ${l.best_learning_time || null}, ${l.prior_schooling || null}, ${l.goals_this_year || null}, ${l.additional_notes || null}, NOW()
        )
        ON CONFLICT (student_id) DO UPDATE SET
          learning_style = EXCLUDED.learning_style,
          interests = EXCLUDED.interests,
          strengths = EXCLUDED.strengths,
          growth_areas = EXCLUDED.growth_areas,
          favorite_subjects = EXCLUDED.favorite_subjects,
          challenging_subjects = EXCLUDED.challenging_subjects,
          motivation = EXCLUDED.motivation,
          tech_access = EXCLUDED.tech_access,
          best_learning_time = EXCLUDED.best_learning_time,
          prior_schooling = EXCLUDED.prior_schooling,
          goals_this_year = EXCLUDED.goals_this_year,
          additional_notes = EXCLUDED.additional_notes,
          completed_at = NOW()
      `;
    }

    await sendEmail({
      to: email,
      subject: "Your Su Mira Learning Family Profile & Learning Blueprint is complete",
      html: emailShell(
        `${emailHeading("You're all set!")}
        <p>We've received your family's mailing address, contact confirmation, and Learning Blueprint answers for ${learners.length > 1 ? `${learners.length} learners` : "your learner"}.</p>
        <p>Our team will use this to build a personalized plan and will follow up by email with next steps. If you haven't already, don't forget to watch the Parent Orientation video from your Parent Portal dashboard &mdash; it's the other half of your Getting Started Checklist.</p>
        <p style="font-size:13px; color:#6B6470;">Questions in the meantime? Reach out to connect@sumirastudio.com.</p>`,
        { previewText: "Your Family Profile and Learning Blueprint have been received." }
      ),
    });

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error("Learning Blueprint submission failed", err);
    return NextResponse.json({ error: "Something went wrong. Please try again." }, { status: 500 });
  }
}
