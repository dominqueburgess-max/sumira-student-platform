-- First Su Mira Live Elective session for Venture Studio (6-12), Zoom.
INSERT INTO live_classes (title, studio, description, schedule_text, teacher_name, color, join_url, meeting_id, passcode) VALUES
('Su Mira Live Elective', 'venture', 'Your live elective experience with the Su Mira community.', 'Today, Tuesday Oct 6 · 11:00 AM ET', 'Burbrella Academy', 'terracotta',
 'https://us06web.zoom.us/j/82478502982?pwd=ao0bo86NHctCiFLjMGrRMY5xEA6x1H.1',
 '824 7850 2982', '052496');

-- Assign every Venture Studio student to all Venture live classes (existing students
-- were only auto-enrolled when they had zero live classes).
INSERT INTO live_class_enrollments (student_id, live_class_id)
SELECT s.id, lc.id FROM students s JOIN live_classes lc ON lc.studio = 'venture'
WHERE s.studio = 'venture'
ON CONFLICT DO NOTHING;
