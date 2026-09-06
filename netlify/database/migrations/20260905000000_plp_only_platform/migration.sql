-- Self-serve Personalized Learning Plan (PLP)-only platform.
-- Fully separate from the full Learning Studio parent/student enrollment flow
-- (parents/students/parent_sessions tables) so PLP-only families get a
-- lightweight, seamless account -> pay -> questionnaire -> Blueprint experience
-- without touching full-enrollment logic (enrollment_completed, courses, etc).

CREATE TABLE IF NOT EXISTS plp_parents (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  phone TEXT,
  email_verified BOOLEAN NOT NULL DEFAULT FALSE,
  verification_token_hash TEXT,
  verification_expires_at TIMESTAMPTZ,
  stripe_customer_id TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS plp_parent_sessions (
  id SERIAL PRIMARY KEY,
  plp_parent_id INTEGER NOT NULL REFERENCES plp_parents(id) ON DELETE CASCADE,
  token_hash TEXT NOT NULL,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_plp_parent_sessions_token ON plp_parent_sessions(token_hash);

-- One child = one plan purchase. Profile-only, no separate login (PLP-only
-- families don't get course/platform access, per product decision).
CREATE TABLE IF NOT EXISTS plp_children (
  id SERIAL PRIMARY KEY,
  plp_parent_id INTEGER NOT NULL REFERENCES plp_parents(id) ON DELETE CASCADE,
  first_name TEXT NOT NULL,
  last_name TEXT,
  grade_level TEXT,
  birthdate DATE,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS plp_plans (
  id SERIAL PRIMARY KEY,
  plp_parent_id INTEGER NOT NULL REFERENCES plp_parents(id) ON DELETE CASCADE,
  plp_child_id INTEGER NOT NULL REFERENCES plp_children(id) ON DELETE CASCADE,
  plan_tier TEXT NOT NULL CHECK (plan_tier IN ('essentials', 'growing', 'guided')),
  revision_cadence TEXT NOT NULL CHECK (revision_cadence IN ('one_time', 'quarterly', 'anytime')),
  status TEXT NOT NULL DEFAULT 'pending_payment' CHECK (status IN ('pending_payment', 'active', 'past_due', 'canceled')),
  stripe_checkout_session_id TEXT,
  stripe_subscription_id TEXT,
  stripe_price_id TEXT,
  amount_cents INTEGER,
  purchased_at TIMESTAMPTZ,
  last_blueprint_at TIMESTAMPTZ,
  next_revision_available_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_plp_plans_parent ON plp_plans(plp_parent_id);
CREATE INDEX IF NOT EXISTS idx_plp_plans_checkout_session ON plp_plans(stripe_checkout_session_id);

-- Questionnaire intake, tied to a specific paid plan (one row per submission;
-- a family can resubmit when a revision unlocks, producing a new blueprint).
CREATE TABLE IF NOT EXISTS plp_questionnaire_responses (
  id SERIAL PRIMARY KEY,
  plp_plan_id INTEGER NOT NULL REFERENCES plp_plans(id) ON DELETE CASCADE,
  learning_style TEXT,
  interests TEXT,
  strengths TEXT,
  growth_areas TEXT,
  favorite_subjects TEXT,
  challenging_subjects TEXT,
  motivation TEXT,
  best_learning_time TEXT,
  prior_schooling TEXT,
  goals_this_year TEXT,
  additional_notes TEXT,
  submitted_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- The generated Blueprint document (AI-authored), versioned per plan so
-- Growing/Guided revisions keep history.
CREATE TABLE IF NOT EXISTS plp_blueprints (
  id SERIAL PRIMARY KEY,
  plp_plan_id INTEGER NOT NULL REFERENCES plp_plans(id) ON DELETE CASCADE,
  plp_questionnaire_response_id INTEGER REFERENCES plp_questionnaire_responses(id) ON DELETE SET NULL,
  version INTEGER NOT NULL DEFAULT 1,
  content_json JSONB NOT NULL,
  generated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_plp_blueprints_plan ON plp_blueprints(plp_plan_id);
