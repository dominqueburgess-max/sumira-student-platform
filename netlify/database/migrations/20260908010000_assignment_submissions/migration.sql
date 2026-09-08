-- "Our own Google Classroom": students upload homework/class assignments/
-- projects from their Portfolio page. AI drafts a grade + feedback, but it
-- never reaches the student directly -- it sits as pending_review until a
-- staff member approves (optionally editing it first) or sends it back for
-- revision. Files themselves live in Netlify Blobs; this table tracks
-- metadata plus the blob key needed to fetch them.

CREATE TABLE IF NOT EXISTS assignment_submissions (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id) ON DELETE CASCADE,
  lesson_id INTEGER REFERENCES lessons(id) ON DELETE SET NULL, -- optional: ties the submission to a specific project/lesson for grading context
  course_id INTEGER REFERENCES courses(id) ON DELETE SET NULL,
  title TEXT NOT NULL,
  notes TEXT, -- student's own note about what they're submitting
  file_key TEXT NOT NULL, -- Netlify Blobs key
  file_name TEXT NOT NULL,
  file_type TEXT NOT NULL, -- image | pdf | docx | text
  status TEXT NOT NULL DEFAULT 'grading' CHECK (status IN ('grading', 'pending_review', 'released', 'needs_revision', 'grading_failed')),
  ai_grade TEXT,
  ai_score INTEGER, -- 0-100, nullable (AI may give qualitative-only feedback)
  ai_feedback TEXT,
  ai_strengths TEXT,
  ai_growth_areas TEXT,
  staff_grade TEXT,
  staff_feedback TEXT,
  reviewed_by TEXT, -- admin identifier/note
  reviewed_at TIMESTAMPTZ,
  submitted_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_assignment_submissions_student ON assignment_submissions(student_id);
CREATE INDEX IF NOT EXISTS idx_assignment_submissions_status ON assignment_submissions(status);
