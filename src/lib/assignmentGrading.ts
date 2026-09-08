import Anthropic from "@anthropic-ai/sdk";
import mammoth from "mammoth";

export type SubmissionFileType = "image" | "pdf" | "docx" | "text";

export type GradingResult = {
  status: "pending_review" | "grading_failed";
  grade: string | null;
  score: number | null;
  feedback: string;
  strengths: string | null;
  growthAreas: string | null;
};

export type LessonContext = {
  title: string;
  contentBody: string;
  standardsCode: string | null;
  standardsDescription: string | null;
  // When the submission is tied to a specific Classwork/Homework assignment
  // (rather than just a lesson in general), grade against THAT assignment's
  // own brief and rubric instead of the whole lesson's content.
  assignment?: {
    assignmentType: "classwork" | "homework";
    title: string;
    instructions: string;
    rubric: string | null;
  } | null;
} | null;

const FAILED_RESULT = (feedback: string): GradingResult => ({
  status: "grading_failed",
  grade: null,
  score: null,
  feedback,
  strengths: null,
  growthAreas: null,
});

function buildContextBlock(title: string, notes: string | null, lessonContext: LessonContext): string {
  if (lessonContext?.assignment) {
    const a = lessonContext.assignment;
    return `This submission is the student's ${a.assignmentType === "classwork" ? "Classwork" : "Homework"} assignment, "${a.title}", from the lesson "${lessonContext.title}".\nAssignment instructions given to the student:\n${a.instructions}${
      a.rubric ? `\n\nWhat "done well" looks like (grade against this):\n${a.rubric}` : ""
    }${
      lessonContext.standardsCode ? `\nStandard: ${lessonContext.standardsCode}${lessonContext.standardsDescription ? " - " + lessonContext.standardsDescription : ""}` : ""
    }`;
  }
  if (lessonContext) {
    return `This submission is for the assignment/project "${lessonContext.title}".\nAssignment brief:\n${lessonContext.contentBody}${
      lessonContext.standardsCode ? `\nStandard: ${lessonContext.standardsCode}${lessonContext.standardsDescription ? " - " + lessonContext.standardsDescription : ""}` : ""
    }`;
  }
  return `No specific assignment was selected for this submission. The student titled it "${title}"${
    notes ? ` and left this note: "${notes}"` : ""
  }. Grade it as general schoolwork, inferring likely subject and grade-level expectations from the content itself.`;
}

const GRADING_INSTRUCTIONS = `Respond with ONLY valid JSON (no markdown code fences, no commentary) matching exactly this shape:
{
  "grade": "a short letter grade or level, e.g. 'B+' or 'Meets Expectations'",
  "score": a number from 0 to 100, or null if a numeric score isn't appropriate for this work,
  "feedback": "2-4 sentences of specific, constructive feedback referencing the actual submitted content",
  "strengths": "1-2 sentences on what the student did well, specifically",
  "growth_areas": "1-2 sentences on what to work on next, specifically"
}
Be warm but honest and specific. Never give generic praise -- ground everything in what was actually submitted. This is a DRAFT grade for a teacher to review before it ever reaches the student or family, so prioritize accuracy over encouragement alone.`;

/**
 * Grades a student's uploaded assignment/project using Claude. Returns a
 * draft grade + feedback that the caller stores as `pending_review` --
 * per product decision, AI grades are never shown directly to students;
 * a staff member must approve (optionally editing) or send back for
 * revision from the admin Submissions page.
 */
export async function gradeSubmission(params: {
  fileBuffer: Buffer;
  fileType: SubmissionFileType;
  mimeType: string;
  title: string;
  notes: string | null;
  lessonContext: LessonContext;
}): Promise<GradingResult> {
  const apiKey = process.env.ANTHROPIC_API_KEY;
  if (!apiKey) {
    return FAILED_RESULT("AI grading isn't connected right now -- please grade this submission manually.");
  }

  const contextBlock = buildContextBlock(params.title, params.notes, params.lessonContext);
  const instructions = `You are an experienced, encouraging K-12 teacher at Su Mira Learning, grading a student's submitted homework, assignment, or project.\n\n${contextBlock}\n\n${GRADING_INSTRUCTIONS}`;

  try {
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const content: any[] = [];

    if (params.fileType === "image") {
      content.push({
        type: "image",
        source: { type: "base64", media_type: params.mimeType, data: params.fileBuffer.toString("base64") },
      });
    } else if (params.fileType === "pdf") {
      content.push({
        type: "document",
        source: { type: "base64", media_type: "application/pdf", data: params.fileBuffer.toString("base64") },
      });
    } else if (params.fileType === "docx") {
      const { value: text } = await mammoth.extractRawText({ buffer: params.fileBuffer });
      content.push({ type: "text", text: `Submitted document text:\n\n${text.slice(0, 12000)}` });
    } else {
      content.push({ type: "text", text: `Submitted text:\n\n${params.fileBuffer.toString("utf-8").slice(0, 12000)}` });
    }

    content.push({ type: "text", text: instructions });

    const anthropic = new Anthropic({ apiKey });
    const response = await anthropic.messages.create({
      model: "claude-sonnet-4-5",
      max_tokens: 700,
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      messages: [{ role: "user", content }] as any,
    });

    const textBlock = response.content.find((b) => b.type === "text");
    const raw = textBlock && "text" in textBlock ? textBlock.text : "";
    const cleaned = raw.trim().replace(/^```json\s*/i, "").replace(/^```\s*/i, "").replace(/```\s*$/i, "");
    const parsed = JSON.parse(cleaned);

    if (!parsed.feedback) throw new Error("AI response missing required fields");

    return {
      status: "pending_review",
      grade: typeof parsed.grade === "string" ? parsed.grade : null,
      score: typeof parsed.score === "number" ? parsed.score : null,
      feedback: parsed.feedback,
      strengths: typeof parsed.strengths === "string" ? parsed.strengths : null,
      growthAreas: typeof parsed.growth_areas === "string" ? parsed.growth_areas : null,
    };
  } catch (err) {
    console.error("AI grading failed", err);
    return FAILED_RESULT("Something went wrong grading this submission automatically -- please grade it manually.");
  }
}
