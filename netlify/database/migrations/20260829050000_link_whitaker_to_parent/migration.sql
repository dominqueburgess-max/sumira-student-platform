-- Link Dykhing Whitaker to his mother Shavonne Whitaker's existing parent account
-- so he shows up in her parent portal view.
UPDATE students
SET parent_id = (SELECT id FROM parents WHERE email = 'whitakershavonne6@gmail.com')
WHERE email = 'dwhitaker@sumirastudio.com';
