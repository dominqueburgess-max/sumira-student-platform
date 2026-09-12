-- Curated videos for Wonder Studio Kindergarten courses (math-k, ela-k).
-- Videos only, per Dominque's direction for Wonder Studio (PreK-2) --
-- no Classwork/Homework assignment cards. Second pass of task #164.

-- ===== math-k (15 lessons) =====
UPDATE lessons SET video_url='https://www.youtube.com/watch?v=lqX1NdKAhHo', video_caption='Jack Hartmann: I Can Count to 10'
WHERE title='Counting to 10' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=4ER7bTQOPkg', video_caption='Count to Tell the Number of Objects - Kindergarten Math K.CC.A.3'
WHERE title='How Many Are There?' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=XnY3GFk3gEk', video_caption='Waterford.org: "More Than, Fewer Than" Counting Song'
WHERE title='More or Fewer' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=s6ompblkfH8', video_caption='Shapes Learning Song for Kids: Circle, Square, Triangle Fun'
WHERE title='Circles, Squares, and Triangles' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=uT2CQvPywgs', video_caption='Shapes for Kindergarten: Sides & Corners of Shapes'
WHERE title='Building with Shapes' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=EXeBGcew3vk', video_caption='Sorting by Size, Shape and Color: Math'
WHERE title='Sorting Shapes by Size' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=QhG4TKrhmV0', video_caption='MightyOwl Math: Introduction to Addition - Put It All Together'
WHERE title='Putting Groups Together' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=lsBWaCSOpLU', video_caption='Kindergarten Math 6.2: Subtraction, Take Apart, Minus'
WHERE title='Taking Numbers Apart' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=oXqSz-HsVRw', video_caption='Kindergarten Decomposing Numbers 1-10, Common Core Standards'
WHERE title='Decomposing Numbers to 10' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=YBkpC29_GaI', video_caption='Jack Hartmann: What Numbers Make 10'
WHERE title='Making 10' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=PNLSgBmVG9E', video_caption='Kindergarten Math: Addition Number Story (Word Problems)'
WHERE title='Addition Story Problems' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=jnMKPsYK4LI', video_caption='Subtraction Story Problems for Kindergarten'
WHERE title='Subtraction Story Problems' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=wTgRu4E4vtc', video_caption='Jack Hartmann: Friends of 5 - Learn to Add'
WHERE title='Fluently Adding within 5' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=1W5aYi3lkho', video_caption='Harry Kindergarten Music: Numbers in the Teens (They Start with a 1)'
WHERE title='Understanding Teen Numbers' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=uedvwH6Ay18', video_caption='Harry Kindergarten Music: Numbers in the Teens (Have a Group of 10)'
WHERE title='Patterns in Numbers 11-19' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k'));

-- ===== ela-k (18 lessons) =====
UPDATE lessons SET video_url='https://www.youtube.com/watch?v=aUKcPptN1CQ', video_caption='Letter M Phonics Song: "Mmm Mmm Mmm!"'
WHERE title='The Sound of "M"' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=3Cc1TL-0bXo', video_caption='Jack Hartmann: The Rhyming Words Game'
WHERE title='Rhyming Words' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ZW2U5jwxCF4', video_caption='How to Write a Sentence for Kids: Kindergarten Writing'
WHERE title='My First Sentence' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=W4RvVe7Hu04', video_caption='Retelling Stories for Kids: Beginning, Middle, and End'
WHERE title='Retelling a Story' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=C2fWZHaNugc', video_caption='Asking and Answering Questions About a Story: Reading Literature'
WHERE title='Asking Questions About a Book' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=V-nsi0wj-O8', video_caption='Jack Hartmann: Alphabet Zoo - Alphabet & Letter Sounds for Kids'
WHERE title='Letter Sounds A-M Review' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=__Yi_UeuHnk', video_caption='ABC Alphabet Letter Sounds A-Z: Phonics for Kids'
WHERE title='Letter Sounds N-Z Review' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=RyRwuV0SPzA', video_caption='Jack Hartmann: Let''s Make Words - Onsets & Rimes'
WHERE title='Blending Onset and Rime' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=vsue4unC7YQ', video_caption='How to Write Letters A-Z: Uppercase and Lowercase Letters'
WHERE title='Writing the Alphabet' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=F-mm_CTuFgs', video_caption='eSpark: Intro to Characters - Kindergarten Reading'
WHERE title='Identifying Story Characters' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=7EerfRLtyp0', video_caption='What Is a Setting? Story Elements for Kids'
WHERE title='Identifying Story Settings' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=TBqC36-auI8', video_caption='Story Sequencing: First, Next, Then, Last'
WHERE title='Sequencing Story Events' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=gvwxSRmN6Hw', video_caption='eSpark: Comparing and Contrasting Characters - 1st Grade Reading'
WHERE title='Comparing Two Characters' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=S5-jPc6N5Xk', video_caption='Making Predictions: Comprehension for Kids'
WHERE title='Making Predictions' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=93l-pRLX_9A', video_caption='Making Text to Self Connections (Kindergarten and First Grade)'
WHERE title='Connecting Text to Self' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=esU5RHdRKNM', video_caption='Problem & Solution: Reading Comprehension Story Elements'
WHERE title='Understanding Story Problems and Solutions' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ilsKgwcLzjI', video_caption='How to Describe Characters in a Book: Characters and Setting in a Story for Kids'
WHERE title='Writing About a Favorite Character' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=_3sxOcNyOjE', video_caption='How to Write a Book Review for Kids'
WHERE title='Sharing Opinions About Books' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k'));
