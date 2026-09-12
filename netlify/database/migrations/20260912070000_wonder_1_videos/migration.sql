-- Curated videos for Wonder Studio Grade 1 courses (math-1, ela-1).
-- Videos only, per Dominque's direction for Wonder Studio (PreK-2) --
-- no Classwork/Homework assignment cards. Third pass of task #164.

-- ===== math-1 (18 lessons) =====
UPDATE lessons SET video_url='https://www.youtube.com/watch?v=5BF1NqrBA7w', video_caption='Addition: Putting Together, Joining Sets, Combining (Grade 1)'
WHERE title='Joining Groups Together' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=3HLDLig6jWk', video_caption='Grade 1 Subtraction Lesson: Use Pictures to Show Taking From'
WHERE title='Taking Away' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=vHBV-4FzwXA', video_caption='Finding the Unknown Number - 1st Grade Math (1.OA.8)'
WHERE title='Finding the Missing Number' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=zJyT6MIlkAw', video_caption='Addition and Subtraction within 20 - 1st Grade Math (1.OA.1)'
WHERE title='Adding to 20' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=9Z2gpbYiEXo', video_caption='Word Problems Subtraction First Grade - 1st Grade Math Video'
WHERE title='Subtraction Stories' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=8960hE0Vgic', video_caption='Counting Up to 120 - First Grade Math (1.NBT.1)'
WHERE title='Counting to 120' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=i9j8Q2VQyEM', video_caption='Comparing Two Digit Numbers - 1st Grade Math (1.NBT.3)'
WHERE title='Comparing Two-Digit Numbers' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ySLhAnQR5P0', video_caption='10 More, 10 Less: Using a Hundred Chart'
WHERE title='Ten More, Ten Less' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=43wkrua-OaI', video_caption='Fact Families: Learn Related Addition and Subtraction Facts'
WHERE title='Fact Families' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=tOidG2kwbFQ', video_caption='Understanding Place Values - 1st Grade Math (1.NBT.2)'
WHERE title='Understanding Place Value' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=YQYDjYSDEhk', video_caption='Adding a Two Digit and a One Digit Number with Fingers'
WHERE title='Adding a Two-Digit and One-Digit Number' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=RKL0TX8ogmw', video_caption='Adding 2 Digit Numbers with Regrouping - Grade 1 Maths for Kids'
WHERE title='Adding Two Two-Digit Numbers' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=Vq9voHDtEqM', video_caption='1st Grade Math: Subtracting Multiples of 10'
WHERE title='Subtracting Multiples of 10' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=cqtXCzNEz0U', video_caption='Solving Word Problems - Math for 1st Grade, Kids Academy'
WHERE title='Two-Step Word Problems' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=-YPoDDM5SuY', video_caption='Doubles and Near Doubles Addition Strategy'
WHERE title='Doubles and Near Doubles' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=wMfAtlz-WJE', video_caption='Jack Hartmann: Dancing 2''s - Skip Count to 100 by 2''s'
WHERE title='Skip Counting by 2s' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=56eWo7QbLT4', video_caption='Jack Hartmann: Counting by 5''s - Skip Counting to 100'
WHERE title='Skip Counting by 5s' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=g5RG82acJpU', video_caption='Jack Hartmann: Count to 100 by 10 - Skip Counting by 10'
WHERE title='Skip Counting by 10s' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1'));

-- ===== ela-1 (18 lessons) =====
UPDATE lessons SET video_url='https://www.youtube.com/watch?v=sGRQTm7708c', video_caption='Sound By Sound Blending (for Beginning Readers)'
WHERE title='Blending Sounds Into Words' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ziGMJxhLifU', video_caption='The Best Seat in First Grade: Read Aloud Stories for Kids'
WHERE title='Reading a Short Story' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=FYDi_op-92c', video_caption='PBS KIDS: "Remember" - Poetry Read Along with Joy Harjo'
WHERE title='Reading a Poem Aloud' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=3JU4356cPbA', video_caption='1st Grade Reading: Characters'' Feelings'
WHERE title='Characters and Feelings' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=2rwVzdGttHs', video_caption='My Best Day Ever! (First Grade Personal Narrative Writing)'
WHERE title='Writing About My Day' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=U8t9Jg1r6G0', video_caption='First Grade Sight Words: Dolch List for Kids'
WHERE title='Reading Sight Words Set 1' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=LCkxiQgcRQY', video_caption='Sight Words Level 3: First Grade Reading Boost'
WHERE title='Reading Sight Words Set 2' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=esU5RHdRKNM', video_caption='Problem & Solution: Reading Comprehension Story Elements'
WHERE title='Understanding Story Problems and Solutions' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=TBqC36-auI8', video_caption='Story Sequencing: First, Next, Then, Last'
WHERE title='Sequencing Events in a Story' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=C1W46goOpu0', video_caption='eSpark: Main Idea - Identify the Main Topic of a Text (1st Grade Reading)'
WHERE title='Identifying the Main Topic' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=vDC462EyPIE', video_caption='Grade 1 ELA: Nonfiction Text Features (RI 1.1, RI 1.5)'
WHERE title='Using Text Features in Nonfiction' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=J5midO3v0Nw', video_caption='Compare & Contrast Two Texts on the Same Topic'
WHERE title='Comparing Two Texts on the Same Topic' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ZUyEerOK1gw', video_caption='Cause and Effect for Kids'
WHERE title='Understanding Cause and Effect' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=VxnWToYiMsc', video_caption='Making Inferences in a K-2 Classroom: How to Teach Inferences to Kids'
WHERE title='Making Inferences from Pictures' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=YLyakGWuwhU', video_caption='Context Clues for Kids: 4 Types of Context Clues'
WHERE title='Building Vocabulary from Context' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=EoaIfZxm3mU', video_caption='What Is Personal Narrative Writing? Writing a Personal Narrative for Kids'
WHERE title='Writing a Personal Narrative' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=nuaL1rgRXEM', video_caption='What Is Opinion Writing? Opinion Writing for Kids'
WHERE title='Writing an Opinion Piece' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=-NqnQJjDmB0', video_caption='What Is an Adjective? Adjectives for Kindergarten and First Grade'
WHERE title='Using Describing Words' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1'));
