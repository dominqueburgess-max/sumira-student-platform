CREATE TABLE achievements (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  achievement_key TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  icon TEXT NOT NULL DEFAULT '🌟',
  earned_at TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE(student_id, achievement_key)
);
CREATE INDEX idx_achievements_student ON achievements(student_id);
