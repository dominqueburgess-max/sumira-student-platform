-- Redesign daily "lesson" pacing display into weekly topics, and replace the
-- old 3-question quiz as a lesson's primary "work" with real Classwork and
-- Homework assignments that students turn in via the Portfolio upload flow
-- (assignment_submissions, built in 20260908010000).
--
-- week_number is a simple course-relative teaching-order counter (1, 2, 3...
-- across all of a course's units, in unit/lesson position order) -- it is
-- purely a DISPLAY label ("Week 3: Unit Rates & Unit Pricing"), not a lock:
-- per explicit product decision (Sept 2026) nothing in the platform is
-- calendar-gated anymore.
ALTER TABLE lessons ADD COLUMN IF NOT EXISTS week_number INTEGER;

WITH ordered AS (
  SELECT l.id AS lesson_id,
    ROW_NUMBER() OVER (PARTITION BY u.course_id ORDER BY u.position, l.position) AS rn
  FROM lessons l
  JOIN units u ON u.id = l.unit_id
)
UPDATE lessons l
SET week_number = o.rn::int
FROM ordered o
WHERE l.id = o.lesson_id;

-- One or more Classwork/Homework assignments per lesson. Content is authored
-- separately per course; this just creates the structure.
CREATE TABLE IF NOT EXISTS lesson_assignments (
  id SERIAL PRIMARY KEY,
  lesson_id INTEGER NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  assignment_type TEXT NOT NULL CHECK (assignment_type IN ('classwork', 'homework')),
  title TEXT NOT NULL,
  instructions TEXT NOT NULL, -- full task description shown to the student
  rubric TEXT, -- what "done well" looks like -- also grounds the AI's draft grade
  estimated_minutes INTEGER,
  position INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_lesson_assignments_lesson ON lesson_assignments(lesson_id);

-- Ties a submission back to the specific assignment it was turned in for, so
-- AI grading can be grounded in that assignment's own rubric instead of the
-- lesson's general content.
ALTER TABLE assignment_submissions ADD COLUMN IF NOT EXISTS assignment_id INTEGER REFERENCES lesson_assignments(id) ON DELETE SET NULL;
