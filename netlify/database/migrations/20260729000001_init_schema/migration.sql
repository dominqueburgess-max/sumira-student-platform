-- Students (learner accounts)
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  studio TEXT NOT NULL DEFAULT 'wonder', -- wonder | discovery | venture
  grade_level TEXT NOT NULL DEFAULT 'K', -- PreK, K, 1, 2, ...
  parent_email TEXT,
  avatar_color TEXT NOT NULL DEFAULT 'plum',
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Sessions (server-side session tokens for auth)
CREATE TABLE sessions (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  token_hash TEXT UNIQUE NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE INDEX idx_sessions_token_hash ON sessions(token_hash);

-- Self-paced courses (content library)
CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  slug TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  subject TEXT NOT NULL, -- Math | ELA | Science | Social Studies
  studio TEXT NOT NULL DEFAULT 'wonder',
  grade_level TEXT NOT NULL, -- K, 1, 2
  description TEXT,
  source_attribution TEXT, -- e.g. "Adapted from Illustrative Mathematics (CC BY 4.0)"
  color TEXT NOT NULL DEFAULT 'terracotta',
  position INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Units within a course
CREATE TABLE units (
  id SERIAL PRIMARY KEY,
  course_id INTEGER NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  position INTEGER NOT NULL DEFAULT 0
);

-- Lessons within a unit
CREATE TABLE lessons (
  id SERIAL PRIMARY KEY,
  unit_id INTEGER NOT NULL REFERENCES units(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  position INTEGER NOT NULL DEFAULT 0,
  content_type TEXT NOT NULL DEFAULT 'lesson', -- lesson | practice | quiz
  content_body TEXT NOT NULL, -- markdown/html lesson content
  standards_code TEXT, -- e.g. "NC.K.CC.1"
  standards_description TEXT,
  estimated_minutes INTEGER NOT NULL DEFAULT 10
);

-- Course enrollments
CREATE TABLE enrollments (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  course_id INTEGER NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
  enrolled_at TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE(student_id, course_id)
);

-- Lesson progress
CREATE TABLE lesson_progress (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  lesson_id INTEGER NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  status TEXT NOT NULL DEFAULT 'not_started', -- not_started | in_progress | completed
  completed_at TIMESTAMP,
  UNIQUE(student_id, lesson_id)
);

-- Live / scheduled classes (Wonder Circles etc.)
CREATE TABLE live_classes (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  studio TEXT NOT NULL DEFAULT 'wonder',
  description TEXT,
  schedule_text TEXT NOT NULL, -- e.g. "Tuesdays & Thursdays, 10:00 AM ET"
  teacher_name TEXT,
  color TEXT NOT NULL DEFAULT 'sage'
);

CREATE TABLE live_class_enrollments (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  live_class_id INTEGER NOT NULL REFERENCES live_classes(id) ON DELETE CASCADE,
  UNIQUE(student_id, live_class_id)
);

-- Portfolio items
CREATE TABLE portfolio_items (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  description TEXT,
  media_url TEXT,
  lesson_id INTEGER REFERENCES lessons(id) ON DELETE SET NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Mira AI coach conversation history
CREATE TABLE coach_messages (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  role TEXT NOT NULL, -- 'user' | 'assistant'
  content TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE INDEX idx_coach_messages_student ON coach_messages(student_id, created_at);
