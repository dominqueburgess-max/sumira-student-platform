-- Video slot for lessons (populated later with real narrated video; NULL = no video yet)
ALTER TABLE lessons ADD COLUMN video_url TEXT;
ALTER TABLE lessons ADD COLUMN video_caption TEXT;

-- Structured comprehension questions per lesson
CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  lesson_id INTEGER NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  position INTEGER NOT NULL DEFAULT 0,
  question_type TEXT NOT NULL CHECK (question_type IN ('multiple_choice', 'short_answer')),
  prompt TEXT NOT NULL,
  options JSONB, -- array of option strings, multiple_choice only
  correct_option_index INTEGER -- index into options, multiple_choice only
);
CREATE INDEX idx_questions_lesson ON questions(lesson_id, position);

-- Student answers to lesson questions
CREATE TABLE question_responses (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  question_id INTEGER NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  response_text TEXT, -- short_answer response
  selected_option_index INTEGER, -- multiple_choice response
  is_correct BOOLEAN, -- multiple_choice only, NULL for short_answer (not auto-graded)
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE(student_id, question_id)
);
CREATE INDEX idx_question_responses_student ON question_responses(student_id);
