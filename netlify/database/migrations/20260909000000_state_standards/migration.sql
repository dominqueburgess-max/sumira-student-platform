-- Lets each student's platform show THEIR home state's official standard
-- code/description instead of the North Carolina one all lesson content is
-- originally authored against. The lesson content itself never changes --
-- NC and other states teach the same core skills at each grade -- only the
-- displayed standard label is swapped, via a crosswalk keyed on the exact
-- source (NC) standards_code string already on each lesson.

ALTER TABLE students ADD COLUMN IF NOT EXISTS home_state TEXT NOT NULL DEFAULT 'NC';

CREATE TABLE IF NOT EXISTS standards_crosswalk (
  id SERIAL PRIMARY KEY,
  state TEXT NOT NULL, -- 2-letter state code, e.g. 'GA'
  source_code TEXT NOT NULL, -- exact match against lessons.standards_code (NC-authored)
  target_code TEXT NOT NULL,
  target_description TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(state, source_code)
);
