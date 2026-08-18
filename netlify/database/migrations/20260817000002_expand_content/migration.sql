INSERT INTO courses (slug, title, subject, studio, grade_level, description, source_attribution, color, position) VALUES
('math-prek', 'PreK Math', 'Math', 'wonder', 'PreK', 'Numbers, shapes, and patterns through hands-on play.', 'Original Su Mira content, aligned to the NC Early Learning and Development Standards (Cognitive Development: Mathematical Thinking)', 'terracotta', 0),
('ela-prek', 'PreK Language & Literacy', 'ELA', 'wonder', 'PreK', 'Sounds, stories, and early letter recognition through play and conversation.', 'Original Su Mira content, aligned to the NC Early Learning and Development Standards (Language Development & Communication)', 'sage', 0);

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='math-prek'), 'Numbers All Around', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-prek'), 'Shapes and Patterns', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-prek'), 'Sounds and Stories', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-prek'), 'Letters Everywhere', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-k'), 'Comparing Shapes', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-1'), 'Numbers to 20', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-2'), 'Addition & Subtraction to 100', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-2')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-2'), 'Measurement & Time', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-2')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-k'), 'Reading Together', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-1'), 'Reading with Expression', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-1'), 'Writing Sentences', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-2'), 'Understanding What We Read', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-2')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-2'), 'Writing With Detail', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-2')), 0) + 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes, video_caption) VALUES
((SELECT id FROM units WHERE title='Numbers All Around' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Counting to 5', 1, 'lesson',
'# Counting to 5

Let''s count together! Touch each object one time as you say its number.

1, 2, 3, 4, 5

**Try it:** Line up 5 toy cars or blocks. Touch each one and say the number out loud: "1, 2, 3, 4, 5!"

**Wonder Quest:** Count 5 things you can find at snack time — crackers, grapes, or cups!',
'NC ELDS – Cognitive Development', 'Uses one-to-one correspondence to count small sets of objects.', 8, 'A short clip of a teacher counting five everyday objects out loud with a child, touching each one.'),
((SELECT id FROM units WHERE title='Numbers All Around' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'What Comes Next?', 2, 'lesson',
'# What Comes Next?

Numbers have an order! After 1 comes 2. After 2 comes 3.

1, 2, 3, __, 5

**Try it:** Say the numbers 1 to 5 out loud. Now try saying them while clapping!

**Talk about it:** What number comes right after 3? What comes right before 5?',
'NC ELDS – Cognitive Development', 'Recognizes and continues a simple counting sequence.', 8, 'Animated numbers 1-5 hopping into place one at a time, with a friendly voice counting along.'),
((SELECT id FROM units WHERE title='Numbers All Around' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Same or Different', 3, 'lesson',
'# Same or Different

Let''s compare two groups of toys. Do they have the **same** number, or a **different** number?

**Try it:** Make a pile of 3 blocks and a pile of 3 spoons. Count each pile. Are they the same?

**Now try:** Make a pile of 2 and a pile of 4. Are they the same or different?',
'NC ELDS – Cognitive Development', 'Compares small sets of objects to determine ''same'' or ''different.''', 8, 'Two groups of blocks being compared side by side to show equal and unequal amounts.'),
((SELECT id FROM units WHERE title='Shapes and Patterns' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Finding Shapes', 1, 'lesson',
'# Finding Shapes

Shapes are everywhere! A circle is round like a ball. A square has 4 same-size sides. A triangle has 3 sides.

**Try it:** Walk around your room. Find something round (circle), something with 4 sides (square), and something with 3 sides (triangle).

**Wonder Quest:** Draw a circle, a square, and a triangle on paper.',
'NC ELDS – Cognitive Development', 'Identifies and names basic shapes in the environment.', 8, 'A walk around a classroom pointing out circles, squares, and triangles in everyday objects.'),
((SELECT id FROM units WHERE title='Shapes and Patterns' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Patterns All Around', 2, 'lesson',
'# Patterns All Around

A pattern repeats! Red, blue, red, blue, red, blue — what comes next?

**Try it:** Line up blocks or toys in a red-blue-red-blue pattern. What color comes next?

**Now you try:** Make your own pattern with two colors of blocks or two kinds of snacks!',
'NC ELDS – Cognitive Development', 'Recognizes, extends, and creates simple AB patterns.', 8, 'Colorful blocks arranged in a red-blue-red-blue pattern, extended one piece at a time.'),
((SELECT id FROM units WHERE title='Sounds and Stories' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Listening for Sounds', 1, 'lesson',
'# Listening for Sounds

Let''s use our listening ears! Every word starts with a sound.

**Try it:** Say your name slowly. What sound does it start with? "Sam" starts with the /s/ sound.

**Wonder Quest:** Find 3 things in your house that start with the same sound as your name.',
'NC ELDS – Language Development & Communication', 'Develops phonological awareness by identifying environmental and beginning sounds.', 8, 'A teacher making the sounds of animals and everyday objects and asking children to guess them.'),
((SELECT id FROM units WHERE title='Sounds and Stories' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'My Name Starts With...', 2, 'lesson',
'# My Name Starts With...

Your name is special! It starts with a letter and a sound.

**Try it:** Look at your name written down. Point to the very first letter. What sound does it make?

**Now try:** Find that same letter somewhere else — on a book, a sign, or a toy.',
'NC ELDS – Language Development & Communication', 'Recognizes the first letter of one''s own name and its sound.', 8, 'Children pointing to the first letter of their name on a name card and saying its sound.'),
((SELECT id FROM units WHERE title='Sounds and Stories' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Story Time Together', 3, 'lesson',
'# Story Time Together

Stories have a beginning, a middle, and an end.

**Try it:** Ask a grown-up to read you a favorite book. Look closely at the pictures as you listen.

**Talk about it:** What happened first in the story? What happened at the end?',
'NC ELDS – Language Development & Communication', 'Listens to and retells key events from a read-aloud story.', 10, 'A caregiver reading a picture book aloud with a child, pointing at pictures and asking questions.'),
((SELECT id FROM units WHERE title='Letters Everywhere' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Finding Letters', 1, 'lesson',
'# Finding Letters

Letters are all around us — on cereal boxes, signs, and books!

**Try it:** Go on a letter hunt around your house. How many letters can you find and point to?

**Wonder Quest:** Find the very first letter of your name somewhere in your house.',
'NC ELDS – Language Development & Communication', 'Recognizes that letters are everywhere in print and carry meaning.', 8, 'A scavenger hunt around a room spotting letters on cereal boxes, signs, and books.'),
((SELECT id FROM units WHERE title='Letters Everywhere' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Left to Right', 2, 'lesson',
'# Left to Right

When we read, our eyes move from left to right, just like our finger!

**Try it:** Open a book. Slide your finger under the words from left to right as a grown-up reads.

**Now try:** Point to where you start reading on a page. Point to where you end.',
'NC ELDS – Language Development & Communication', 'Demonstrates understanding of print directionality (left to right, top to bottom).', 8, 'A finger sliding under words on a page moving left to right, top to bottom.'),
((SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Sorting Shapes by Size', 1, 'lesson',
'# Sorting Shapes by Size

Some shapes are big. Some shapes are small. Let''s sort them!

**Try it:** Gather circles, squares, and triangles of different sizes (cut from paper or found around your house). Sort them into a "big" pile and a "small" pile.

**Talk about it:** How did you decide which pile a shape belonged in?',
'NC.K.MD.2', 'Directly compares two objects with a measurable attribute in common.', 10, 'Shapes of different sizes being sorted into ''big'' and ''small'' groups on a table.'),
((SELECT id FROM units WHERE title='Numbers to 20' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Adding to 20', 1, 'lesson',
'# Adding to 20

We can add bigger numbers now — all the way up to 20!

**Try it:** Count out 12 counters (buttons, beans, or blocks). Add 5 more. Count them all together. How many do you have?

**Practice:** Try 8 + 6. Use objects to help you count.',
'NC.1.NBT.4', 'Adds within 20, including two-digit numbers and a one-digit number.', 10, 'Two groups of counters up to ten each being combined and recounted to find the total.'),
((SELECT id FROM units WHERE title='Numbers to 20' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Subtraction Stories', 2, 'lesson',
'# Subtraction Stories

Subtraction stories tell us when something goes away. "There were 9 birds. 3 flew away. How many are left?"

**Try it:** Act out the bird story with 9 objects. Take 3 away. Count what''s left.

**Now try:** Make up your own subtraction story and act it out!',
'NC.1.OA.1', 'Uses addition and subtraction within 20 to solve word problems.', 10, 'A short story about birds on a fence, some flying away, counted down with visuals.'),
((SELECT id FROM units WHERE title='Addition & Subtraction to 100' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Subtracting Two-Digit Numbers', 1, 'lesson',
'# Subtracting Two-Digit Numbers

We can subtract tens and ones separately, then put the answer together.

**Example:** 47 - 23. Subtract the tens: 40 - 20 = 20. Subtract the ones: 7 - 3 = 4. Put them together: 24.

**Try it:** Use base-ten blocks or drawings of tens and ones to solve 56 - 21.',
'NC.2.NBT.5', 'Fluently subtracts within 100 using strategies based on place value.', 12, 'Base-ten blocks (tens and ones) being taken away from a starting amount to show subtraction.'),
((SELECT id FROM units WHERE title='Measurement & Time' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Measuring Length', 1, 'lesson',
'# Measuring Length

We use a ruler to measure how long something is, in inches or centimeters.

**Try it:** Find a ruler. Measure a pencil, a book, and your shoe. Which is longest? Which is shortest?

**Talk about it:** Why do you think we all need to measure the same way, using the same kind of ruler?',
'NC.2.MD.1', 'Measures the length of an object using appropriate tools.', 10, 'A student measuring a pencil and a book with a ruler, counting the inch marks aloud.'),
((SELECT id FROM units WHERE title='Measurement & Time' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Telling Time to the Hour', 2, 'lesson',
'# Telling Time to the Hour

A clock has a short hand (hours) and a long hand (minutes). When the long hand points to 12, it''s exactly on the hour!

**Try it:** Look at a clock. If the short hand is on 3 and the long hand is on 12, what time is it?

**Practice:** Draw a clock showing 7 o''clock.',
'NC.2.MD.7', 'Tells and writes time to the nearest five minutes using analog and digital clocks.', 10, 'An analog clock face with hands moving to show different hours, one at a time.'),
((SELECT id FROM units WHERE title='Reading Together' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Retelling a Story', 1, 'lesson',
'# Retelling a Story

After we read a story, we can tell it again in our own words!

**Try it:** Read a favorite short story with a grown-up. Then try telling the story back using the pictures to help you remember.

**Talk about it:** What happened at the beginning, middle, and end?',
'NC.RL.K.2', 'With prompting and support, retells familiar stories including key details.', 10, 'A child retelling a familiar story to a stuffed animal, using pictures as prompts.'),
((SELECT id FROM units WHERE title='Reading Together' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Asking Questions About a Book', 2, 'lesson',
'# Asking Questions About a Book

Good readers ask questions! "Why did the character do that?" "What will happen next?"

**Try it:** While reading a book, stop halfway and ask: "What do you think will happen next?"

**Now try:** Ask a grown-up a question about the book after you finish it.',
'NC.RL.K.1', 'With prompting and support, asks and answers questions about key details in a text.', 8, 'A caregiver and child pausing mid-story to ask ''what do you think happens next?'''),
((SELECT id FROM units WHERE title='Reading with Expression' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Reading a Poem Aloud', 1, 'lesson',
'# Reading a Poem Aloud

Poems sound fun to read out loud, especially when they rhyme!

**Try it:** Find a short poem or nursery rhyme. Read it out loud slowly, then read it again a little faster.

**Now try:** Read it with a happy voice. Then try a silly voice!',
'NC.RF.1.4', 'Reads with sufficient accuracy and fluency to support comprehension.', 10, 'A child reading a short, rhyming poem aloud with expression and hand gestures.'),
((SELECT id FROM units WHERE title='Reading with Expression' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Characters and Feelings', 2, 'lesson',
'# Characters and Feelings

Characters in stories have feelings, just like we do! They can feel happy, sad, scared, or excited.

**Try it:** Read a short story. How does the main character feel at the beginning? How do they feel at the end?

**Talk about it:** How can you tell how a character feels? Look at the words and the pictures.',
'NC.RL.1.3', 'Describes characters, settings, and major events in a story, using key details.', 10, 'Illustrated story characters showing different facial expressions: happy, sad, surprised.'),
((SELECT id FROM units WHERE title='Writing Sentences' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Writing About My Day', 1, 'lesson',
'# Writing About My Day

Let''s write a sentence about something that happened today!

**Try it:** Think of one thing you did today. Write a sentence: "Today I ___." Remember to start with a capital letter and end with a period.

**Now try:** Draw a picture to go with your sentence!',
'NC.W.1.3', 'Writes narratives recounting two or more sequenced events with details.', 10, 'A child drawing a picture of their day and writing a simple sentence underneath.'),
((SELECT id FROM units WHERE title='Understanding What We Read' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Comparing Two Stories', 1, 'lesson',
'# Comparing Two Stories

When we read two stories, we can compare how they are alike and different.

**Try it:** Read two short stories about similar topics (like two stories about friendship). What is the same in both? What is different?

**Talk about it:** Which story did you like better, and why?',
'NC.RL.2.9', 'Compares and contrasts two or more versions of the same story by different authors or cultures.', 12, 'Two picture books placed side by side, comparing their characters and settings.'),
((SELECT id FROM units WHERE title='Understanding What We Read' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Nonfiction Text Features', 2, 'lesson',
'# Nonfiction Text Features

Nonfiction books teach us true facts! They often have headings, photos, and captions to help us learn.

**Try it:** Find a nonfiction book about animals or space. Point to a heading, a photo, and a caption.

**Talk about it:** How do these features help you understand the book better?',
'NC.RI.2.5', 'Knows and uses text features to locate key facts or information in a text.', 10, 'Pages from a nonfiction animal book showing headings, photos, and captions being pointed out.'),
((SELECT id FROM units WHERE title='Writing With Detail' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Adding Details to My Writing', 1, 'lesson',
'# Adding Details to My Writing

Good writers add details to help readers picture what''s happening!

**Try it:** Start with a plain sentence: "I saw a dog." Now add details: "I saw a big, fluffy brown dog running in the park."

**Now try:** Take one of your own sentences and add two more details to it.',
'NC.W.2.5', 'With guidance and support, revises and strengthens writing by adding details.', 10, 'A simple sentence being rewritten with more descriptive words added one at a time.');

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Counting to 5'), 1, 'multiple_choice', 'How many fingers do you hold up when you count to 5?', '["3", "5", "10"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Counting to 5'), 2, 'short_answer', 'Name three things in your house that you could count to 5.', NULL, NULL),
((SELECT id FROM lessons WHERE title='What Comes Next?'), 1, 'multiple_choice', 'What number comes right after 3?', '["2", "4", "5"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='What Comes Next?'), 2, 'short_answer', 'Say the numbers from 1 to 5 to a grown-up. What was tricky?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Same or Different'), 1, 'multiple_choice', 'If one pile has 3 toys and another pile has 3 toys, are the piles the same or different?', '["Same", "Different"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Same or Different'), 2, 'short_answer', 'Find two groups of toys at home. Are they the same amount or different?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Finding Shapes'), 1, 'multiple_choice', 'Which shape has 3 sides?', '["Circle", "Triangle", "Square"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Finding Shapes'), 2, 'short_answer', 'Name one object at home that is shaped like a circle.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Patterns All Around'), 1, 'multiple_choice', 'Red, blue, red, blue, red, ___. What comes next?', '["Red", "Blue", "Green"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Patterns All Around'), 2, 'short_answer', 'Make a pattern with two things you can find at home. What did you use?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Listening for Sounds'), 1, 'multiple_choice', 'What is the very first sound in the word ''cat''?', '["/c/", "/t/", "/a/"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Listening for Sounds'), 2, 'short_answer', 'Say a word that starts with the same sound as your name.', NULL, NULL),
((SELECT id FROM lessons WHERE title='My Name Starts With...'), 1, 'multiple_choice', 'What is the first letter of your name called?', '["The last letter", "The first letter", "A number"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='My Name Starts With...'), 2, 'short_answer', 'Write or trace the first letter of your name.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Story Time Together'), 1, 'multiple_choice', 'What are the three parts every story has?', '["Beginning, middle, end", "Loud, quiet, loud", "Red, blue, green"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Story Time Together'), 2, 'short_answer', 'Tell a grown-up one thing that happened in a story you read together.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Finding Letters'), 1, 'multiple_choice', 'Where can you find letters?', '["Only in books", "Everywhere, like signs and boxes", "Nowhere"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Finding Letters'), 2, 'short_answer', 'Name one place in your house where you found a letter.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Left to Right'), 1, 'multiple_choice', 'Which direction do our eyes move when we read?', '["Right to left", "Left to right", "Up and down only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Left to Right'), 2, 'short_answer', 'Practice sliding your finger under a sentence in a book. What did you notice?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Sorting Shapes by Size'), 1, 'multiple_choice', 'If you have a big square and a small square, how are they different?', '["Their color", "Their size", "Their name"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Sorting Shapes by Size'), 2, 'short_answer', 'Find two shapes at home that are different sizes. Describe them.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Adding to 20'), 1, 'multiple_choice', 'What is 12 + 5?', '["15", "17", "20"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adding to 20'), 2, 'short_answer', 'Make up your own addition problem using numbers up to 20 and solve it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Subtraction Stories'), 1, 'multiple_choice', 'There were 9 birds. 3 flew away. How many are left?', '["3", "6", "12"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Subtraction Stories'), 2, 'short_answer', 'Tell your own subtraction story using toys or snacks.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Subtracting Two-Digit Numbers'), 1, 'multiple_choice', 'What is 47 - 23?', '["14", "24", "34"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Subtracting Two-Digit Numbers'), 2, 'short_answer', 'Solve 68 - 35 and show how you figured it out.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Measuring Length'), 1, 'multiple_choice', 'What tool do we use to measure how long something is?', '["A clock", "A ruler", "A cup"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Measuring Length'), 2, 'short_answer', 'Measure three objects at home and write down their lengths.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Telling Time to the Hour'), 1, 'multiple_choice', 'If the short hand is on 3 and the long hand is on 12, what time is it?', '["3:00", "12:03", "9:00"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Telling Time to the Hour'), 2, 'short_answer', 'Find a clock at home. What time is it right now?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Retelling a Story'), 1, 'multiple_choice', 'What can help you remember a story when you retell it?', '["The pictures", "Closing your eyes", "Being quiet"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Retelling a Story'), 2, 'short_answer', 'Retell a story you read recently in two or three sentences.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Asking Questions About a Book'), 1, 'multiple_choice', 'What is a good question to ask while reading a story?', '["What color is the sky?", "What do you think happens next?", "What is your name?"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Asking Questions About a Book'), 2, 'short_answer', 'Ask a question about a book you read and try to answer it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading a Poem Aloud'), 1, 'multiple_choice', 'What makes many poems fun to read out loud?', '["They rhyme", "They are very long", "They have no words"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Reading a Poem Aloud'), 2, 'short_answer', 'Write or say two words that rhyme with ''cat.''', NULL, NULL),
((SELECT id FROM lessons WHERE title='Characters and Feelings'), 1, 'multiple_choice', 'How can you tell how a character feels in a story?', '["Guess randomly", "Look at the words and pictures", "Skip that page"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Characters and Feelings'), 2, 'short_answer', 'Name a character from a book and describe how they felt.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing About My Day'), 1, 'multiple_choice', 'What should every sentence start with?', '["A capital letter", "A number", "A question mark"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing About My Day'), 2, 'short_answer', 'Write one sentence about something you did today.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Two Stories'), 1, 'multiple_choice', 'What does it mean to ''compare'' two stories?', '["Read only one", "Look at how they are alike and different", "Ignore both"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Comparing Two Stories'), 2, 'short_answer', 'Name two stories you know and one way they are alike.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Nonfiction Text Features'), 1, 'multiple_choice', 'What is a ''caption'' in a nonfiction book?', '["The title of the whole book", "Words that describe a photo", "The very last page"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Nonfiction Text Features'), 2, 'short_answer', 'Find a nonfiction book and describe one text feature it has.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Adding Details to My Writing'), 1, 'multiple_choice', 'What do details help a reader do?', '["Skip the sentence", "Picture what''s happening", "Forget the story"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adding Details to My Writing'), 2, 'short_answer', 'Write a plain sentence, then rewrite it with more details.', NULL, NULL);
