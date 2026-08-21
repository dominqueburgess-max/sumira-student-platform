CREATE TABLE IF NOT EXISTS enrollment_inquiries (
  id SERIAL PRIMARY KEY,
  parent_name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT,
  state TEXT,
  student_name TEXT NOT NULL,
  student_age INTEGER,
  current_grade TEXT,
  upcoming_grade TEXT,
  studio TEXT,
  plan TEXT,
  start_date TEXT,
  homeschool TEXT,
  other_school TEXT,
  esa TEXT,
  looking_for TEXT,
  accommodations TEXT,
  status TEXT NOT NULL DEFAULT 'new',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS admin_sessions (
  id SERIAL PRIMARY KEY,
  token_hash TEXT UNIQUE NOT NULL,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
