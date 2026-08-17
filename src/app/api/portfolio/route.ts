import { NextRequest, NextResponse } from "next/server";
import { db } from "@/lib/db";
import { getCurrentStudent } from "@/lib/auth";

export async function POST(req: NextRequest) {
  const student = await getCurrentStudent();
  if (!student) return NextResponse.json({ error: "Not authenticated." }, { status: 401 });

  const { title, description, mediaUrl } = await req.json();
  if (!title) return NextResponse.json({ error: "Title is required." }, { status: 400 });

  const [item] = await db().sql`
    INSERT INTO portfolio_items (student_id, title, description, media_url)
    VALUES (${student.id}, ${title}, ${description || null}, ${mediaUrl || null})
    RETURNING id, title, description, media_url, created_at
  `;

  return NextResponse.json({ item });
}
