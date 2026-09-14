-- Beginning-of-Year / Middle-of-Year in-house diagnostic assessments for
-- Venture Studio (6-12). End-of-year remains external standardized testing --
-- this is only for the two in-house checkpoints, scoped to Math + ELA.
-- Admin-triggered: an admin generates a diagnostic for a student+course+period,
-- which samples standards already tagged on that course's lessons and has
-- Claude write grade-appropriate multiple-choice questions for each one.

CREATE TABLE diagnostics (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  course_id INTEGER NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
  period TEXT NOT NULL CHECK (period IN ('BOY', 'MOY')), -- Beginning/Middle of Year
  school_year TEXT NOT NULL, -- e.g. '2026-2027'
  status TEXT NOT NULL DEFAULT 'not_started' CHECK (status IN ('not_started', 'in_progress', 'completed')),
  total_questions INTEGER NOT NULL DEFAULT 0,
  correct_count INTEGER,
  ai_summary TEXT, -- warm strengths/growth-areas summary, written after grading
  generated_at TIMESTAMP NOT NULL DEFAULT NOW(),
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  UNIQUE(student_id, course_id, period, school_year)
);
CREATE INDEX idx_diagnostics_student ON diagnostics(student_id);

CREATE TABLE diagnostic_questions (
  id SERIAL PRIMARY KEY,
  diagnostic_id INTEGER NOT NULL REFERENCES diagnostics(id) ON DELETE CASCADE,
  position INTEGER NOT NULL DEFAULT 0,
  standards_code TEXT,
  standards_description TEXT,
  prompt TEXT NOT NULL,
  options JSONB NOT NULL, -- array of 4 option strings
  correct_option_index INTEGER NOT NULL, -- never sent to the client before grading
  selected_option_index INTEGER,
  is_correct BOOLEAN
);
CREATE INDEX idx_diagnostic_questions_diagnostic ON diagnostic_questions(diagnostic_id, position);
