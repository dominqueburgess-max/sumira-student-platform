-- ===== COURSES =====
INSERT INTO courses (slug, title, subject, studio, grade_level, description, source_attribution, color, position) VALUES
('math-k', 'Kindergarten Math', 'Math', 'wonder', 'K', 'Counting, shapes, and number sense through play and story.', 'Original Su Mira content, aligned to the NC Standard Course of Study (Kindergarten Math)', 'terracotta', 1),
('math-1', 'Grade 1 Math', 'Math', 'wonder', '1', 'Addition, subtraction, and number stories.', 'Original Su Mira content, aligned to the NC Standard Course of Study (Grade 1 Math)', 'terracotta', 2),
('math-2', 'Grade 2 Math', 'Math', 'wonder', '2', 'Place value, addition and subtraction within 100.', 'Original Su Mira content, aligned to the NC Standard Course of Study (Grade 2 Math)', 'terracotta', 3),
('ela-k', 'Kindergarten Reading & Writing', 'ELA', 'wonder', 'K', 'Letters, sounds, and the beginning of reading.', 'Original Su Mira content, aligned to the NC Standard Course of Study (Kindergarten ELA)', 'sage', 4),
('ela-1', 'Grade 1 Reading & Writing', 'ELA', 'wonder', '1', 'Blending sounds into words and reading simple stories.', 'Original Su Mira content, aligned to the NC Standard Course of Study (Grade 1 ELA)', 'sage', 5),
('ela-2', 'Grade 2 Reading & Writing', 'ELA', 'wonder', '2', 'Reading for meaning and writing our own stories.', 'Original Su Mira content, aligned to the NC Standard Course of Study (Grade 2 ELA)', 'sage', 6);

-- ===== MATH K =====
INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='math-k'), 'Counting & Cardinality', 1),
((SELECT id FROM courses WHERE slug='math-k'), 'Shapes Around Us', 2);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Counting & Cardinality' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Counting to 10', 1, 'lesson',
'# Counting to 10

Let''s count together! Point to each object one at a time as you say the number out loud.

1, 2, 3, 4, 5, 6, 7, 8, 9, 10

**Try it:** Find 10 small objects around your room (blocks, spoons, toys). Line them up and count them out loud, touching each one as you go.

**Wonder Quest:** Go outside and count 10 things you can find in nature — leaves, rocks, or flowers!',
'NC.K.CC.1', 'Count to 100 by ones and by tens.', 10),
((SELECT id FROM units WHERE title='Counting & Cardinality' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'How Many Are There?', 2, 'lesson',
'# How Many Are There?

When we count a group of objects, the last number we say tells us **how many** there are in all.

**Try it:** Look at a group of 5 crayons. Count them: 1, 2, 3, 4, 5. There are 5 crayons in all!

**Practice:** Grab a handful of small toys. Count them. How many did you get?',
'NC.K.CC.4', 'Understand the relationship between numbers and quantities.', 10),
((SELECT id FROM units WHERE title='Counting & Cardinality' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'More or Fewer', 3, 'lesson',
'# More or Fewer

Let''s compare two groups! Which group has **more**? Which has **fewer**?

**Try it:** Put 4 blocks in one pile and 7 blocks in another pile. Count each pile. Which pile has more?

**Talk about it:** How did you know which pile had more?',
'NC.K.CC.6', 'Compare two groups of objects to determine "greater than," "less than," or "equal to."', 10);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Shapes Around Us' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Circles, Squares, and Triangles', 1, 'lesson',
'# Circles, Squares, and Triangles

Shapes are everywhere! A **circle** is round. A **square** has 4 equal sides. A **triangle** has 3 sides.

**Wonder Quest:** Walk around your home or yard. Find one circle, one square, and one triangle. Draw what you found!',
'NC.K.G.2', 'Correctly name shapes regardless of size or orientation.', 10),
((SELECT id FROM units WHERE title='Shapes Around Us' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Building with Shapes', 2, 'lesson',
'# Building with Shapes

Shapes can combine to make new pictures! Two triangles can make a square. A circle and a triangle can make an ice cream cone!

**Try it:** Use blocks, paper cutouts, or drawing to build a picture using at least 3 different shapes.',
'NC.K.G.5', 'Model shapes by building and drawing.', 15);

-- ===== MATH 1 =====
INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='math-1'), 'Addition & Subtraction Stories', 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Addition & Subtraction Stories' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Joining Groups Together', 1, 'lesson',
'# Joining Groups Together

When we put two groups together, we **add**.

**Story:** Jordan has 3 stickers. Their friend gives them 2 more. How many stickers does Jordan have now?

3 + 2 = 5

**Try it:** Use small objects to act out an addition story of your own!',
'NC.1.OA.1', 'Use addition and subtraction within 20 to solve word problems.', 10),
((SELECT id FROM units WHERE title='Addition & Subtraction Stories' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Taking Away', 2, 'lesson',
'# Taking Away

When some objects leave a group, we **subtract**.

**Story:** There are 7 birds on a branch. 3 fly away. How many birds are left?

7 - 3 = 4

**Try it:** Line up 7 objects, take 3 away, and count how many are left.',
'NC.1.OA.1', 'Use addition and subtraction within 20 to solve word problems.', 10),
((SELECT id FROM units WHERE title='Addition & Subtraction Stories' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Finding the Missing Number', 3, 'lesson',
'# Finding the Missing Number

Sometimes we know the start and the end, but not what happened in between!

4 + ___ = 9

Think: 4 and what number makes 9? Count up from 4: 5, 6, 7, 8, 9 — that''s 5 counts, so the missing number is 5.',
'NC.1.OA.4', 'Understand subtraction as an unknown-addend problem.', 12);

-- ===== MATH 2 =====
INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='math-2'), 'Place Value to 100', 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Place Value to 100' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Tens and Ones', 1, 'lesson',
'# Tens and Ones

The number 42 means 4 tens and 2 ones (40 + 2 = 42).

**Try it:** Use bundles of 10 straws or blocks to build the number 53. How many bundles of ten do you need? How many extra ones?',
'NC.2.NBT.1', 'Understand place value: hundreds, tens, and ones.', 12),
((SELECT id FROM units WHERE title='Place Value to 100' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Adding Two-Digit Numbers', 2, 'lesson',
'# Adding Two-Digit Numbers

To add 24 + 15, add the tens first (20 + 10 = 30), then the ones (4 + 5 = 9), then combine: 30 + 9 = 39.

**Try it:** Solve 32 + 26 the same way. Add the tens, then the ones, then combine.',
'NC.2.NBT.5', 'Fluently add and subtract within 100.', 15);

-- ===== ELA K =====
INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='ela-k'), 'Letters & Sounds', 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Letters & Sounds' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'The Sound of "M"', 1, 'lesson',
'# The Sound of "M"

The letter **M** makes the /mmm/ sound, like in **m**onkey, **m**oon, and **m**ilk.

**Try it:** Say these words out loud: mat, map, mom. Do you hear the /mmm/ sound at the beginning?

**Wonder Quest:** Find 3 things at home that start with the letter M.', 'NC.RF.K.3', 'Know and apply grade-level phonics and word analysis skills.', 10),
((SELECT id FROM units WHERE title='Letters & Sounds' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Rhyming Words', 2, 'lesson',
'# Rhyming Words

Rhyming words end with the same sound, like **cat** and **hat**, or **sun** and **fun**.

**Try it:** Can you think of a word that rhymes with "dog"? What about "bee"?', 'NC.RF.K.2', 'Demonstrate understanding of spoken words, syllables, and sounds.', 10),
((SELECT id FROM units WHERE title='Letters & Sounds' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'My First Sentence', 3, 'lesson',
'# My First Sentence

A sentence tells a whole idea, and starts with a capital letter.

**Try it:** Draw a picture of your favorite animal. Then tell a grown-up a sentence about it, like "The dog is fast." Try writing the first letter of each word!', 'NC.W.K.3', 'Use a combination of drawing, dictating, and writing to narrate events.', 15);

-- ===== ELA 1 =====
INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='ela-1'), 'Blending Words', 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Blending Words' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Blending Sounds Into Words', 1, 'lesson',
'# Blending Sounds Into Words

When we put sounds together quickly, they form a word: /c/ /a/ /t/ becomes **cat**!

**Try it:** Say these sounds slowly, then blend them fast: /s/ /u/ /n/. What word did you make?', 'NC.RF.1.2', 'Demonstrate understanding of spoken words, syllables, and sounds (phonemes).', 10),
((SELECT id FROM units WHERE title='Blending Words' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Reading a Short Story', 2, 'lesson',
'# Reading a Short Story

Today, read a short story with a grown-up or on your own. As you read, ask: Who is the story about? What happens first, next, and last?

**Try it:** Retell the story in your own words using "first, then, last."', 'NC.RL.1.2', 'Retell stories, including key details, and demonstrate understanding of the central message.', 15);

-- ===== ELA 2 =====
INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='ela-2'), 'Reading for Meaning', 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes) VALUES
((SELECT id FROM units WHERE title='Reading for Meaning' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Finding the Main Idea', 1, 'lesson',
'# Finding the Main Idea

The main idea is what a story or article is mostly about.

**Try it:** Read a short paragraph. Ask yourself: "What is this mostly about?" Try to say the main idea in one sentence.', 'NC.RI.2.2', 'Identify the main topic of a multi-paragraph text.', 12),
((SELECT id FROM units WHERE title='Reading for Meaning' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Writing My Own Story', 2, 'lesson',
'# Writing My Own Story

Every story has a beginning, middle, and end.

**Try it:** Write (or dictate) a short story about a character who goes on an adventure. What happens at the beginning? The middle? The end?', 'NC.W.2.3', 'Write narratives that recount a well-elaborated event or short sequence of events.', 20);

-- ===== LIVE CLASSES (Wonder Circles) =====
INSERT INTO live_classes (title, studio, description, schedule_text, teacher_name, color) VALUES
('Wonder Circle: Storytime', 'wonder', 'A cozy live read-aloud and discussion circle for our youngest learners.', 'Tuesdays & Thursdays, 10:00 AM ET', 'Ms. Avery', 'amber'),
('Wonder Circle: Math Play', 'wonder', 'Hands-on games that build number sense together.', 'Mondays & Wednesdays, 11:00 AM ET', 'Mr. Idris', 'terracotta'),
('Wonder Circle: Nature Explorers', 'wonder', 'A live outdoor-inspired science and nature circle.', 'Fridays, 10:30 AM ET', 'Ms. Rowan', 'sage');
