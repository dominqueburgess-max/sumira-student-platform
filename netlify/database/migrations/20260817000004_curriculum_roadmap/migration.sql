-- Full-year (36-week) scope & sequence per course. Weeks with a matching lesson
-- (by title) are "built" and clickable; later weeks are shown as a roadmap
-- so families can see the whole year even before every lesson is written.
CREATE TABLE curriculum_roadmap (
  id SERIAL PRIMARY KEY,
  course_id INTEGER NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
  quarter INTEGER NOT NULL,
  week_number INTEGER NOT NULL,
  unit_title TEXT NOT NULL,
  lesson_title TEXT NOT NULL,
  standards_note TEXT,
  UNIQUE(course_id, week_number)
);
CREATE INDEX idx_roadmap_course ON curriculum_roadmap(course_id, week_number);
