-- Dykhing Whitaker was enrolled as a Wonder Studio (K) student by mistake;
-- he's actually grade 6, so he belongs in Venture Studio (grades 6-12).
UPDATE students
SET studio = 'venture', grade_level = '6'
WHERE email = 'dwhitaker@sumirastudio.com';
