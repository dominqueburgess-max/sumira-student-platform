-- A prior deploy retry re-ran an unfinished migration, creating duplicate
-- units rows (same course_id + title). Merge duplicates into the
-- lowest-id row, then prevent this from ever happening again.

WITH ranked AS (
  SELECT id, course_id, title,
         MIN(id) OVER (PARTITION BY course_id, title) AS keep_id
  FROM units
),
dupes AS (
  SELECT id, keep_id FROM ranked WHERE id <> keep_id
)
UPDATE lessons l
SET unit_id = d.keep_id
FROM dupes d
WHERE l.unit_id = d.id;

WITH ranked AS (
  SELECT id, course_id, title,
         MIN(id) OVER (PARTITION BY course_id, title) AS keep_id
  FROM units
)
DELETE FROM units u
USING ranked r
WHERE u.id = r.id AND r.id <> r.keep_id;

ALTER TABLE units ADD CONSTRAINT units_course_title_unique UNIQUE (course_id, title);
