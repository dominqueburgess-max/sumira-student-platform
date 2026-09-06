import Anthropic from "@anthropic-ai/sdk";

export type PlpQuestionnaireInput = {
  learning_style?: string | null;
  interests?: string | null;
  strengths?: string | null;
  growth_areas?: string | null;
  favorite_subjects?: string | null;
  challenging_subjects?: string | null;
  motivation?: string | null;
  best_learning_time?: string | null;
  prior_schooling?: string | null;
  goals_this_year?: string | null;
  additional_notes?: string | null;
};

export type PlpBlueprintContent = {
  overview: string;
  learning_style_summary: string;
  strengths: string[];
  growth_areas: string[];
  weekly_schedule: { block: string; focus: string; activity: string }[];
  focus_areas: { subject: string; goal: string; activities: string[] }[];
  encouragement_note: string;
};

const SCHEMA_INSTRUCTIONS = `Respond with ONLY valid JSON (no markdown code fences, no commentary) matching exactly this shape:
{
  "overview": "2-4 sentence warm narrative summary of this learner as a whole child",
  "learning_style_summary": "1-3 sentences describing how this learner best takes in and processes information",
  "strengths": ["short strength phrase", "..."],
  "growth_areas": ["short growth-area phrase", "..."],
  "weekly_schedule": [
    { "block": "e.g. Monday & Wednesday mornings", "focus": "e.g. Math fluency", "activity": "specific, concrete activity or lesson type" }
  ],
  "focus_areas": [
    { "subject": "e.g. Reading & Writing", "goal": "one clear goal for the term", "activities": ["specific lesson/activity suggestion", "another"] }
  ],
  "encouragement_note": "a warm 2-3 sentence note to the family, in Su Mira Learning's encouraging voice"
}
Include 4-6 weekly_schedule entries and 3-5 focus_areas entries, each focus area with 2-4 activities. Ground every suggestion in the learner's actual answers below — never generic filler.`;

function buildPrompt(childName: string, gradeLevel: string, input: PlpQuestionnaireInput): string {
  return `Learner: ${childName}, grade level: ${gradeLevel}

Learning style: ${input.learning_style || "Not specified"}
Interests: ${input.interests || "Not specified"}
Strengths (from family): ${input.strengths || "Not specified"}
Growth areas (from family): ${input.growth_areas || "Not specified"}
Favorite subjects: ${input.favorite_subjects || "Not specified"}
Challenging subjects: ${input.challenging_subjects || "Not specified"}
What motivates this learner: ${input.motivation || "Not specified"}
Best time of day for focused learning: ${input.best_learning_time || "Not specified"}
Prior schooling background: ${input.prior_schooling || "Not specified"}
Family's goals for this year: ${input.goals_this_year || "Not specified"}
Additional notes: ${input.additional_notes || "None"}

${SCHEMA_INSTRUCTIONS}`;
}

function splitList(text: string | null | undefined, fallback: string[]): string[] {
  if (!text || !text.trim()) return fallback;
  return text.split(/[,;\n]+/).map((s) => s.trim()).filter(Boolean).slice(0, 6);
}

/** Deterministic, always-available fallback so the flow never breaks if the AI call fails or the API key isn't configured. */
function fallbackBlueprint(childName: string, gradeLevel: string, input: PlpQuestionnaireInput): PlpBlueprintContent {
  const strengths = splitList(input.strengths, ["Curiosity", "Effort and persistence"]);
  const growthAreas = splitList(input.growth_areas, ["Building consistent routines"]);
  const favoriteSubjects = splitList(input.favorite_subjects, ["Reading", "Math"]);

  return {
    overview: `${childName} is a grade ${gradeLevel} learner whose family is building a plan around ${input.interests ? input.interests.split(/[,;\n]+/)[0].trim() : "their interests"} and ${favoriteSubjects[0].toLowerCase()}. This Blueprint pairs ${childName}'s strengths with focused, achievable goals for this term.`,
    learning_style_summary: input.learning_style
      ? `${childName} learns best through a ${input.learning_style.toLowerCase()} approach, and lessons below lean into that.`
      : `${childName}'s Blueprint uses a balanced mix of hands-on, visual, and independent practice until more is known about preferred learning style.`,
    strengths,
    growth_areas: growthAreas,
    weekly_schedule: [
      { block: "Monday & Wednesday", focus: favoriteSubjects[0] || "Core subject focus", activity: "Guided lesson + independent practice" },
      { block: "Tuesday & Thursday", focus: growthAreas[0] || "Growth area focus", activity: "Short, scaffolded practice session with a check-in" },
      { block: "Friday", focus: "Creative application", activity: "Project or activity connecting the week's learning to a real interest" },
    ],
    focus_areas: favoriteSubjects.slice(0, 3).map((subject) => ({
      subject,
      goal: `Build steady, visible progress in ${subject.toLowerCase()} this term`,
      activities: ["Weekly guided practice", "One creative or applied project per month"],
    })),
    encouragement_note: `${childName} is off to a strong start. Small, consistent steps each week — celebrated along the way — are what turn this Blueprint into real growth.`,
  };
}

export async function generatePlpBlueprint(
  childName: string,
  gradeLevel: string,
  input: PlpQuestionnaireInput
): Promise<PlpBlueprintContent> {
  const apiKey = process.env.ANTHROPIC_API_KEY;
  if (!apiKey) {
    return fallbackBlueprint(childName, gradeLevel, input);
  }

  try {
    const anthropic = new Anthropic({ apiKey });
    const response = await anthropic.messages.create({
      model: "claude-sonnet-4-5",
      max_tokens: 1500,
      system: "You are Mira, the AI Learning Guide at Su Mira Learning. You write warm, specific, standards-aware Personalized Learning Blueprints for families. You always respond with strictly valid JSON and nothing else.",
      messages: [{ role: "user", content: buildPrompt(childName, gradeLevel, input) }],
    });

    const textBlock = response.content.find((b) => b.type === "text");
    const raw = textBlock && "text" in textBlock ? textBlock.text : "";
    const cleaned = raw.trim().replace(/^```json\s*/i, "").replace(/^```\s*/i, "").replace(/```\s*$/i, "");
    const parsed = JSON.parse(cleaned) as PlpBlueprintContent;

    if (!parsed.overview || !Array.isArray(parsed.weekly_schedule) || !Array.isArray(parsed.focus_areas)) {
      throw new Error("AI response missing required fields");
    }
    return parsed;
  } catch (err) {
    console.error("AI Blueprint generation failed, using fallback", err);
    return fallbackBlueprint(childName, gradeLevel, input);
  }
}
