-- Student-facing surveys: (1) a student-completed Learning Blueprint survey (mirrors
-- the parent Learning Blueprint, but answered by the student themselves) and
-- (2) a Live Studio elective preference survey for Venture Studio (grades 6-12)
-- students, both due Wednesday, September 2, 2026.

ALTER TABLE students ADD COLUMN IF NOT EXISTS blueprint_survey_completed BOOLEAN NOT NULL DEFAULT FALSE;
ALTER TABLE students ADD COLUMN IF NOT EXISTS elective_survey_completed BOOLEAN NOT NULL DEFAULT FALSE;

CREATE TABLE IF NOT EXISTS student_blueprint_surveys (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL UNIQUE REFERENCES students(id) ON DELETE CASCADE,
  learning_style TEXT,
  interests TEXT,
  strengths TEXT,
  growth_areas TEXT,
  favorite_subjects TEXT,
  challenging_subjects TEXT,
  motivation TEXT,
  best_learning_time TEXT,
  show_what_i_know TEXT,
  goals_this_year TEXT,
  additional_notes TEXT,
  completed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS live_studio_elective_surveys (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL UNIQUE REFERENCES students(id) ON DELETE CASCADE,
  first_choice TEXT NOT NULL,
  second_choice TEXT,
  other_studio_idea TEXT,
  completed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
