-- Replace the old weekly-only (Math-only) unlock_date scheme with a daily
-- cadence applied to every course: the first lesson (by unit position, then
-- lesson position) unlocks on the first day of term (2026-09-08), and each
-- subsequent lesson unlocks one calendar day later. Combined with removing
-- the global daily-completion cap (see lessonSequence.ts), this gives every
-- student one new lesson per course per day, without a lesson in one course
-- blocking access to another course's lesson the same day.

WITH ordered AS (
  SELECT l.id AS lesson_id,
    ROW_NUMBER() OVER (PARTITION BY u.course_id ORDER BY u.position, l.position) AS rn
  FROM lessons l
  JOIN units u ON u.id = l.unit_id
)
UPDATE lessons l
SET unlock_date = DATE '2026-09-08' + (o.rn - 1)
FROM ordered o
WHERE l.id = o.lesson_id;
