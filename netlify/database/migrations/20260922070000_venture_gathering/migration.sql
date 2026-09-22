-- Support Zoom-style join details on live classes (needed for the first
-- Venture Studio live gathering, which has no other listing mechanism yet).
ALTER TABLE live_classes ADD COLUMN join_url TEXT;
ALTER TABLE live_classes ADD COLUMN meeting_id TEXT;
ALTER TABLE live_classes ADD COLUMN passcode TEXT;

INSERT INTO live_classes (title, studio, description, schedule_text, teacher_name, color, join_url, meeting_id, passcode) VALUES
('SuMira Virtual Gathering', 'venture', 'A live virtual gathering for all Venture Studio (grades 6-12) students.', 'Today, Tuesday Sept 22 · 1:00 PM ET', 'Su Mira Team', 'plum',
 'https://us06web.zoom.us/j/84611628010?pwd=p8NM2V7xcKfDwt1N0Fbvu38Jeb7PCT.1',
 '846 1162 8010', '505348');
