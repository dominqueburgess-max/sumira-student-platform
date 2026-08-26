-- Family & Family Profile fields on parents, plus orientation + Learning Blueprint tracking
ALTER TABLE parents ADD COLUMN IF NOT EXISTS mailing_address_line1 TEXT;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS mailing_address_line2 TEXT;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS mailing_city TEXT;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS mailing_state TEXT;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS mailing_zip TEXT;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS orientation_watched BOOLEAN NOT NULL DEFAULT FALSE;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS orientation_watched_at TIMESTAMPTZ;
ALTER TABLE parents ADD COLUMN IF NOT EXISTS learning_blueprint_completed BOOLEAN NOT NULL DEFAULT FALSE;

-- Track which learners are on the Learning Studio track (vs. PLP-only) so we know
-- who needs the Getting Started checklist (orientation video + Learning Blueprint).
ALTER TABLE students ADD COLUMN IF NOT EXISTS enrollment_type TEXT NOT NULL DEFAULT 'learning_studio';

-- One Learning Blueprint (personalized-plan intake) response per learner.
CREATE TABLE IF NOT EXISTS learning_blueprints (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL UNIQUE REFERENCES students(id) ON DELETE CASCADE,
  parent_id INTEGER NOT NULL REFERENCES parents(id) ON DELETE CASCADE,
  learning_style TEXT,
  interests TEXT,
  strengths TEXT,
  growth_areas TEXT,
  favorite_subjects TEXT,
  challenging_subjects TEXT,
  motivation TEXT,
  tech_access TEXT,
  best_learning_time TEXT,
  prior_schooling TEXT,
  goals_this_year TEXT,
  additional_notes TEXT,
  completed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
