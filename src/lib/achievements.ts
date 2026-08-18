import { db } from "@/lib/db";

type AchievementDef = {
  key: string;
  title: string;
  description: string;
  icon: string;
  check: (stats: Stats) => boolean;
};

type Stats = {
  lessonsCompleted: number;
  portfolioItems: number;
  activeDays: number;
};

const ACHIEVEMENT_DEFS: AchievementDef[] = [
  { key: "first_lesson", title: "First Steps", description: "Completed your first lesson!", icon: "🌱", check: (s) => s.lessonsCompleted >= 1 },
  { key: "five_lessons", title: "Getting Going", description: "Completed 5 lessons!", icon: "🚀", check: (s) => s.lessonsCompleted >= 5 },
  { key: "fifteen_lessons", title: "On a Roll", description: "Completed 15 lessons!", icon: "🔥", check: (s) => s.lessonsCompleted >= 15 },
  { key: "thirty_lessons", title: "Quarter Champion", description: "Completed 30 lessons!", icon: "🏆", check: (s) => s.lessonsCompleted >= 30 },
  { key: "first_portfolio", title: "Portfolio Started", description: "Added your first portfolio piece!", icon: "🎨", check: (s) => s.portfolioItems >= 1 },
  { key: "five_portfolio", title: "Portfolio Builder", description: "Added 5 portfolio pieces!", icon: "🖼️", check: (s) => s.portfolioItems >= 5 },
  { key: "three_day_streak", title: "3-Day Streak", description: "Learned on 3 different days!", icon: "⭐", check: (s) => s.activeDays >= 3 },
  { key: "seven_day_streak", title: "7-Day Streak", description: "Learned on 7 different days!", icon: "🌟", check: (s) => s.activeDays >= 7 },
];

export async function checkAndAwardAchievements(studentId: number) {
  const [lessonRow] = await db().sql`
    SELECT COUNT(*)::int AS count, COUNT(DISTINCT DATE(completed_at))::int AS days
    FROM lesson_progress WHERE student_id = ${studentId} AND status = 'completed'
  `;
  const [portfolioRow] = await db().sql`
    SELECT COUNT(*)::int AS count FROM portfolio_items WHERE student_id = ${studentId}
  `;

  const stats: Stats = {
    lessonsCompleted: lessonRow?.count ?? 0,
    portfolioItems: portfolioRow?.count ?? 0,
    activeDays: lessonRow?.days ?? 0,
  };

  for (const def of ACHIEVEMENT_DEFS) {
    if (def.check(stats)) {
      await db().sql`
        INSERT INTO achievements (student_id, achievement_key, title, description, icon)
        VALUES (${studentId}, ${def.key}, ${def.title}, ${def.description}, ${def.icon})
        ON CONFLICT (student_id, achievement_key) DO NOTHING
      `;
    }
  }
}

export async function getAchievements(studentId: number) {
  return db().sql`SELECT * FROM achievements WHERE student_id = ${studentId} ORDER BY earned_at DESC`;
}
