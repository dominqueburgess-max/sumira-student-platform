INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='math-prek'), 'Counting Further', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-prek'), 'Sounds and Songs', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-1'), 'Building Number Sense', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-2'), 'Place Value to 1000', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-2')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-k'), 'Phonics Foundations', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-1'), 'Words & Story Structure', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-2'), 'Character & Vocabulary', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-2')), 0) + 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes, video_caption) VALUES
((SELECT id FROM units WHERE title='Counting Further' AND course_id=(SELECT id FROM courses WHERE slug='math-prek')), 'Counting to 10', 1, 'lesson',
'# Counting to 10

We counted to 5 — now let''s count all the way to 10!

1, 2, 3, 4, 5, 6, 7, 8, 9, 10

**Try it:** Line up 10 small toys. Touch each one as you count out loud.

**Wonder Quest:** Count your fingers and toes. How many are there altogether?',
'NC ELDS – Cognitive Development', 'Extends counting sequence and one-to-one correspondence to 10.', 8, 'A teacher counting ten small toys out loud, touching each one.'),
((SELECT id FROM units WHERE title='Counting Further' AND course_id=(SELECT id FROM courses WHERE slug='math-prek')), 'Matching Sets to Numbers', 2, 'lesson',
'# Matching Sets to Numbers

Numbers tell us how many! The numeral "3" matches a group of 3 objects.

**Try it:** Make groups of 2, 3, and 4 objects. Can you find or write the number that matches each group?

**Now try:** Ask a grown-up to show you a number. Make a group with that many objects.',
'NC ELDS – Cognitive Development', 'Matches a written numeral to a set of objects of that quantity.', 8, 'Number cards being matched to groups of dots or objects of the same amount.'),
((SELECT id FROM units WHERE title='Counting Further' AND course_id=(SELECT id FROM courses WHERE slug='math-prek')), 'Big and Small', 3, 'lesson',
'# Big and Small

Some things are big. Some things are small. Let''s compare!

**Try it:** Find a big toy and a small toy. Hold them side by side. Which one is bigger?

**Talk about it:** Can you find something even bigger than your big toy?',
'NC ELDS – Cognitive Development', 'Compares objects by size using descriptive vocabulary.', 8, 'Two toys of very different sizes being placed side by side and compared.'),
((SELECT id FROM units WHERE title='Counting Further' AND course_id=(SELECT id FROM courses WHERE slug='math-prek')), 'Sorting by Color and Shape', 4, 'lesson',
'# Sorting by Color and Shape

We can put things into groups that are alike! Let''s sort by color, then by shape.

**Try it:** Gather a pile of toys or blocks. First sort them by color. Then mix them up and sort them again by shape.

**Talk about it:** What other ways could you sort your toys?',
'NC ELDS – Cognitive Development', 'Sorts and classifies objects by one or more attributes.', 8, 'A pile of mixed toys being sorted into groups by color, then by shape.'),
((SELECT id FROM units WHERE title='Sounds and Songs' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 'Rhyming Fun', 1, 'lesson',
'# Rhyming Fun

Rhyming words end with the same sound! "Cat" and "hat" rhyme.

**Try it:** Sing a rhyming song like "Jack and Jill" with a grown-up. Listen for the rhyming words.

**Now try:** Say "bug." Can you think of a word that rhymes with it?',
'NC ELDS – Language Development & Communication', 'Identifies and produces simple rhyming words in songs and play.', 8, 'Children singing a rhyming song and clapping when they hear rhyming word pairs.'),
((SELECT id FROM units WHERE title='Sounds and Songs' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 'Clapping Syllables', 2, 'lesson',
'# Clapping Syllables

Words are made of beats called syllables! "Dog" has 1 beat. "Ba-na-na" has 3 beats.

**Try it:** Say your name slowly and clap for each beat. How many claps did you use?

**Now try:** Clap the beats in "el-e-phant" and "cat." ',
'NC ELDS – Language Development & Communication', 'Claps and counts syllables in familiar words.', 8, 'A teacher clapping out the syllables in simple words like ''ba-na-na'' and ''dog.'''),
((SELECT id FROM units WHERE title='Sounds and Songs' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 'The Alphabet Song', 3, 'lesson',
'# The Alphabet Song

The alphabet has 26 letters, and we can sing them all in order!

**Try it:** Sing the ABC song with a grown-up. Point to each letter on a chart or book if you have one.

**Now try:** Can you sing just the first 5 letters: A, B, C, D, E?',
'NC ELDS – Language Development & Communication', 'Sings the alphabet song and recognizes it represents letter names in order.', 8, 'Children singing the alphabet song while pointing to letters on an alphabet chart.'),
((SELECT id FROM units WHERE title='Sounds and Songs' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 'Retelling with Puppets', 4, 'lesson',
'# Retelling with Puppets

Let''s bring a story to life using puppets or stuffed animals!

**Try it:** Pick a favorite short story. Use toys or puppets to act out what happens at the beginning, middle, and end.

**Talk about it:** Which part was your favorite to act out?',
'NC ELDS – Language Development & Communication', 'Uses props or puppets to retell a familiar story''s key events.', 10, 'A child using simple puppets or stuffed animals to act out a familiar story.'),
((SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k')), 'Counting to 20', COALESCE((SELECT MAX(position) FROM lessons WHERE unit_id=(SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k'))), 0) + 1, 'lesson',
'# Counting to 20

We can count even further now — all the way to 20!

**Try it:** Count out loud from 1 to 20. Use your fingers, then find 20 small objects to count.

**Wonder Quest:** Count how many steps it takes to walk from your bedroom to the kitchen.',
'NC.K.CC.1', 'Counts to 20 by ones.', 10, 'A number line from 1 to 20 with numbers being pointed to and counted aloud.'),
((SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k')), 'Which Number is Greater?', COALESCE((SELECT MAX(position) FROM lessons WHERE unit_id=(SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k'))), 0) + 2, 'lesson',
'# Which Number is Greater?

When we compare two numbers, one is greater (bigger) and one is less (smaller).

**Try it:** Write or find the numbers 4 and 7. Which one is greater?

**Practice:** Compare 6 and 3. Which is greater? How do you know?',
'NC.K.CC.7', 'Compares two numbers between 1 and 10 presented as written numerals.', 10, 'Two number cards being compared side by side to decide which is greater.'),
((SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k')), 'Positions: Above, Below, Beside', COALESCE((SELECT MAX(position) FROM lessons WHERE unit_id=(SELECT id FROM units WHERE title='Comparing Shapes' AND course_id=(SELECT id FROM courses WHERE slug='math-k'))), 0) + 3, 'lesson',
'# Positions: Above, Below, Beside

We use position words to tell where things are: above, below, and beside.

**Try it:** Put a toy above a table, then below it, then beside it. Say the position word out loud each time.

**Talk about it:** What is above your head right now? What is beside you?',
'NC.K.G.1', 'Describes the positions of objects using terms such as above, below, beside, in front of, behind, and next to.', 8, 'Toys being placed above, below, and beside a box to demonstrate position words.'),
((SELECT id FROM units WHERE title='Building Number Sense' AND course_id=(SELECT id FROM courses WHERE slug='math-1')), 'Counting to 120', 1, 'lesson',
'# Counting to 120

We can count way past 100 — all the way to 120!

**Try it:** Use a hundred chart. Start at 90 and count out loud all the way to 120.

**Practice:** Start counting at 45. Can you count 10 numbers forward?',
'NC.1.NBT.1', 'Counts to 120, starting at any number, and reads and writes numerals to 120.', 10, 'A hundred chart being used to count and point to numbers up to 120.'),
((SELECT id FROM units WHERE title='Building Number Sense' AND course_id=(SELECT id FROM courses WHERE slug='math-1')), 'Comparing Two-Digit Numbers', 2, 'lesson',
'# Comparing Two-Digit Numbers

We use symbols to compare numbers: > means greater than, < means less than, = means equal to.

**Try it:** Compare 34 and 52. Which symbol goes between them: 34 __ 52?

**Practice:** Compare 78 and 45. Write the correct symbol.',
'NC.1.NBT.3', 'Compares two two-digit numbers using the symbols >, =, and <.', 10, 'Two two-digit numbers being compared using greater-than and less-than symbols.'),
((SELECT id FROM units WHERE title='Building Number Sense' AND course_id=(SELECT id FROM courses WHERE slug='math-1')), 'Ten More, Ten Less', 3, 'lesson',
'# Ten More, Ten Less

We can find 10 more or 10 less than a number just by changing the tens digit!

**Try it:** What is 10 more than 34? What is 10 less than 34?

**Practice:** Find 10 more and 10 less than 58.',
'NC.1.NBT.5', 'Given a two-digit number, finds ten more or ten less without counting.', 10, 'Base-ten blocks showing a group of ten being added or removed from a starting number.'),
((SELECT id FROM units WHERE title='Building Number Sense' AND course_id=(SELECT id FROM courses WHERE slug='math-1')), 'Fact Families', 4, 'lesson',
'# Fact Families

A fact family uses the same three numbers to make related addition and subtraction sentences! 4, 5, and 9 make: 4+5=9, 5+4=9, 9-4=5, 9-5=4.

**Try it:** Use the numbers 3, 6, and 9 to write all four facts in the family.

**Practice:** Make a fact family with the numbers 2, 7, and 9.',
'NC.1.OA.6', 'Uses the relationship between addition and subtraction to solve related fact families.', 10, 'Three numbers being arranged into related addition and subtraction sentences.'),
((SELECT id FROM units WHERE title='Place Value to 1000' AND course_id=(SELECT id FROM courses WHERE slug='math-2')), 'Understanding Hundreds, Tens, and Ones', 1, 'lesson',
'# Understanding Hundreds, Tens, and Ones

A three-digit number has hundreds, tens, and ones. The number 342 has 3 hundreds, 4 tens, and 2 ones.

**Try it:** Use base-ten blocks or drawings to build the number 256. How many hundreds, tens, and ones did you use?

**Practice:** Break apart 178 into hundreds, tens, and ones.',
'NC.2.NBT.1', 'Understands that a three-digit number represents amounts of hundreds, tens, and ones.', 10, 'Base-ten blocks (hundred flats, ten rods, unit cubes) building a three-digit number.'),
((SELECT id FROM units WHERE title='Place Value to 1000' AND course_id=(SELECT id FROM courses WHERE slug='math-2')), 'Comparing Three-Digit Numbers', 2, 'lesson',
'# Comparing Three-Digit Numbers

To compare three-digit numbers, look at the hundreds digit first, then tens, then ones.

**Try it:** Compare 452 and 398. Which is greater? Look at the hundreds digit first!

**Practice:** Compare 267 and 271.',
'NC.2.NBT.4', 'Compares two three-digit numbers using >, =, and < based on place value.', 10, 'Two three-digit numbers being compared by looking at their hundreds digits first.'),
((SELECT id FROM units WHERE title='Place Value to 1000' AND course_id=(SELECT id FROM courses WHERE slug='math-2')), 'Skip Counting to 1000', 3, 'lesson',
'# Skip Counting to 1000

We can count faster by skipping! Count by 100s: 100, 200, 300... all the way to 1000.

**Try it:** Count by 10s starting at 0, all the way to 200.

**Practice:** Count by 100s from 0 to 1000. How many jumps did it take?',
'NC.2.NBT.2', 'Skip-counts by 5s, 10s, and 100s up to 1000.', 10, 'A number line showing skip counting jumps by 100 all the way to 1000.'),
((SELECT id FROM units WHERE title='Place Value to 1000' AND course_id=(SELECT id FROM courses WHERE slug='math-2')), 'Adding Three-Digit Numbers', 4, 'lesson',
'# Adding Three-Digit Numbers

We can add hundreds, tens, and ones separately, then put the answer together!

**Example:** 234 + 152. Hundreds: 200+100=300. Tens: 30+50=80. Ones: 4+2=6. Total: 386.

**Try it:** Solve 315 + 243 using this strategy.',
'NC.2.NBT.7', 'Adds within 1000 using strategies based on place value.', 12, 'Hundreds, tens, and ones blocks from two numbers being combined to find a three-digit sum.'),
((SELECT id FROM units WHERE title='Phonics Foundations' AND course_id=(SELECT id FROM courses WHERE slug='ela-k')), 'Letter Sounds A-M Review', 1, 'lesson',
'# Letter Sounds A-M Review

Let''s review the sounds for letters A through M!

**Try it:** Go through the letters A, B, C... all the way to M. Say the sound each letter makes.

**Now try:** Pick 3 letters from A-M. Can you think of a word that starts with each one?',
'NC.RF.K.3', 'Reviews and demonstrates knowledge of one-to-one letter-sound correspondences for letters A-M.', 10, 'Letter cards A through M being flipped one at a time with their sounds said aloud.'),
((SELECT id FROM units WHERE title='Phonics Foundations' AND course_id=(SELECT id FROM courses WHERE slug='ela-k')), 'Letter Sounds N-Z Review', 2, 'lesson',
'# Letter Sounds N-Z Review

Now let''s review the sounds for letters N through Z!

**Try it:** Go through the letters N, O, P... all the way to Z. Say the sound each letter makes.

**Now try:** Pick 3 letters from N-Z. Can you think of a word that starts with each one?',
'NC.RF.K.3', 'Reviews and demonstrates knowledge of one-to-one letter-sound correspondences for letters N-Z.', 10, 'Letter cards N through Z being flipped one at a time with their sounds said aloud.'),
((SELECT id FROM units WHERE title='Phonics Foundations' AND course_id=(SELECT id FROM courses WHERE slug='ela-k')), 'Blending Onset and Rime', 3, 'lesson',
'# Blending Onset and Rime

Words can be split into two parts: the beginning sound (onset) and the rest (rime). /c/ + "at" = "cat"!

**Try it:** Say /h/ + "at." What word did you make?

**Practice:** Try /s/ + "un" and /m/ + "op." ',
'NC.RF.K.2', 'Blends and segments onsets and rimes of single-syllable spoken words.', 10, 'The beginning sound of a word being joined to its ending chunk to form a whole word, like /c/ + ''at'' = cat.'),
((SELECT id FROM units WHERE title='Phonics Foundations' AND course_id=(SELECT id FROM courses WHERE slug='ela-k')), 'Writing the Alphabet', 4, 'lesson',
'# Writing the Alphabet

Let''s practice writing our letters! Start at the top and follow the lines.

**Try it:** Write the letters A, B, and C, both big (uppercase) and small (lowercase).

**Now try:** Write the first letter of your name three times.',
'NC.L.K.1', 'Prints many upper- and lowercase letters.', 10, 'A hand tracing and writing letters of the alphabet on lined paper.'),
((SELECT id FROM units WHERE title='Words & Story Structure' AND course_id=(SELECT id FROM courses WHERE slug='ela-1')), 'Reading Sight Words Set 1', 1, 'lesson',
'# Reading Sight Words Set 1

Sight words are words we read so often we learn to recognize them right away: the, and, said, was.

**Try it:** Practice reading these words on flashcards: the, and, said, was, you.

**Now try:** Find one of these words in a book you''re reading.',
'NC.RF.1.3', 'Reads common high-frequency words by sight.', 8, 'Flashcards of common sight words (the, and, said, was) being read quickly and confidently.'),
((SELECT id FROM units WHERE title='Words & Story Structure' AND course_id=(SELECT id FROM courses WHERE slug='ela-1')), 'Reading Sight Words Set 2', 2, 'lesson',
'# Reading Sight Words Set 2

Let''s learn more sight words: they, have, from, were, there.

**Try it:** Practice reading these words on flashcards. Try to read them without sounding them out.

**Now try:** Use one of these words in a sentence you say out loud.',
'NC.RF.1.3', 'Reads common high-frequency words by sight.', 8, 'More sight word flashcards (they, have, from, were) being read quickly.'),
((SELECT id FROM units WHERE title='Words & Story Structure' AND course_id=(SELECT id FROM courses WHERE slug='ela-1')), 'Understanding Story Problems and Solutions', 3, 'lesson',
'# Understanding Story Problems and Solutions

Most stories have a problem the character needs to solve!

**Try it:** Read a short story. What problem does the main character have? How do they solve it?

**Talk about it:** Would you have solved the problem the same way?',
'NC.RL.1.3', 'Describes characters, settings, and major events, including problems and solutions.', 10, 'A simple story being shown with the character''s problem highlighted, then the solution.'),
((SELECT id FROM units WHERE title='Words & Story Structure' AND course_id=(SELECT id FROM courses WHERE slug='ela-1')), 'Sequencing Events in a Story', 4, 'lesson',
'# Sequencing Events in a Story

Stories happen in order! First this happened, then that happened, and finally...

**Try it:** Read a short story. Draw or write what happened first, next, and last.

**Now try:** Tell the story back to a grown-up using the words "first," "next," and "last." ',
'NC.RL.1.2', 'Retells stories, including key details, and demonstrates understanding of their central message or lesson.', 8, 'Story picture cards being arranged in the correct order: first, next, then, last.'),
((SELECT id FROM units WHERE title='Character & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='ela-2')), 'Understanding Character Motivation', 1, 'lesson',
'# Understanding Character Motivation

Characters do things for reasons! Understanding "why" a character acts a certain way is called motivation.

**Try it:** Read a short story. Why did the main character make the choice they made?

**Talk about it:** Would you have made the same choice? Why or why not?',
'NC.RL.2.3', 'Describes how characters in a story respond to major events and challenges.', 10, 'A story character shown making a choice, with the reasons behind that choice discussed.'),
((SELECT id FROM units WHERE title='Character & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='ela-2')), 'Identifying Theme', 2, 'lesson',
'# Identifying Theme

The theme is the big lesson or message a story teaches us, like "be kind" or "never give up."

**Try it:** Read a short fable. What lesson does it teach?

**Talk about it:** Can you think of a story you know with the theme "be kind to others"?',
'NC.RL.2.2', 'Determines the central message, lesson, or moral of a story.', 10, 'A short fable being read with its lesson or moral highlighted at the end.'),
((SELECT id FROM units WHERE title='Character & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='ela-2')), 'Using Context Clues', 3, 'lesson',
'# Using Context Clues

When we find a word we don''t know, the other words around it can give us clues!

**Try it:** Read this sentence: "The enormous elephant was much bigger than the mouse." What might "enormous" mean?

**Practice:** Find a word you don''t know in a book and look for clues around it.',
'NC.L.2.4', 'Uses sentence-level context as a clue to the meaning of an unknown word.', 10, 'A sentence with an unfamiliar word being examined for clues in the surrounding words.'),
((SELECT id FROM units WHERE title='Character & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='ela-2')), 'Reading Fluently with Expression', 4, 'lesson',
'# Reading Fluently with Expression

Good readers read smoothly and use their voice to show feeling — not too fast, not too slow.

**Try it:** Read a short passage out loud. Try reading it like the character would talk — excited, sad, or surprised.

**Now try:** Read the same passage again. Did it sound smoother the second time?',
'NC.RF.2.4', 'Reads grade-level text orally with accuracy, appropriate rate, and expression.', 10, 'A student reading a short passage aloud with clear expression and appropriate pacing.');

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Counting to 10'), 1, 'multiple_choice', 'What number comes after 9?', '["8", "10", "11"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Counting to 10'), 2, 'short_answer', 'Count 10 things in your kitchen.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Matching Sets to Numbers'), 1, 'multiple_choice', 'Which number matches a group of 4 apples?', '["2", "4", "7"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Matching Sets to Numbers'), 2, 'short_answer', 'Make a group of 3 objects and find the number 3 somewhere.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Big and Small'), 1, 'multiple_choice', 'Which is usually bigger?', '["A dog", "A mouse", "An ant"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Big and Small'), 2, 'short_answer', 'Name one big thing and one small thing you can see right now.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Sorting by Color and Shape'), 1, 'multiple_choice', 'What is one way we sorted our toys?', '["By color", "By loudness", "By smell"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Sorting by Color and Shape'), 2, 'short_answer', 'Sort a group of toys at home and describe how you sorted them.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Rhyming Fun'), 1, 'multiple_choice', 'Which word rhymes with ''bug''?', '["Rug", "Dog", "Cat"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Rhyming Fun'), 2, 'short_answer', 'Sing a rhyming song and name two words that rhyme.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Clapping Syllables'), 1, 'multiple_choice', 'How many claps (syllables) are in the word ''dog''?', '["1", "2", "3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Clapping Syllables'), 2, 'short_answer', 'Clap the syllables in your name. How many did you count?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Alphabet Song'), 1, 'multiple_choice', 'What letter comes right after B in the alphabet?', '["A", "C", "D"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Alphabet Song'), 2, 'short_answer', 'Sing the ABC song to a grown-up.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Retelling with Puppets'), 1, 'multiple_choice', 'What can help you act out a story?', '["Puppets or toys", "Closing the book", "Turning off the lights"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Retelling with Puppets'), 2, 'short_answer', 'Act out a story using toys. What story did you choose?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Counting to 20'), 1, 'multiple_choice', 'What number comes right after 19?', '["18", "20", "21"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Counting to 20'), 2, 'short_answer', 'Count out loud from 1 to 20 to a grown-up.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Which Number is Greater?'), 1, 'multiple_choice', 'Which number is greater: 8 or 5?', '["5", "8", "They are equal"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Which Number is Greater?'), 2, 'short_answer', 'Pick two numbers and tell which one is greater.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Positions: Above, Below, Beside'), 1, 'multiple_choice', 'If a toy is under the table, where is it?', '["Above the table", "Below the table", "Beside the table"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Positions: Above, Below, Beside'), 2, 'short_answer', 'Find something in your room that is beside you.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Counting to 120'), 1, 'multiple_choice', 'What number comes right after 99?', '["100", "199", "90"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Counting to 120'), 2, 'short_answer', 'Start at any number and count forward 10 numbers.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Two-Digit Numbers'), 1, 'multiple_choice', 'Which symbol makes this true: 27 __ 41?', '["<", ">", "="]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Comparing Two-Digit Numbers'), 2, 'short_answer', 'Pick two two-digit numbers and compare them using words ''greater than'' or ''less than.''', NULL, NULL),
((SELECT id FROM lessons WHERE title='Ten More, Ten Less'), 1, 'multiple_choice', 'What is 10 more than 34?', '["24", "44", "35"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Ten More, Ten Less'), 2, 'short_answer', 'Pick a two-digit number and find 10 more and 10 less than it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Fact Families'), 1, 'multiple_choice', 'If 6 + 3 = 9, what is another fact in that family?', '["9 - 3 = 6", "6 + 6 = 12", "3 + 3 = 6"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Fact Families'), 2, 'short_answer', 'Make your own fact family using three numbers.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Hundreds, Tens, and Ones'), 1, 'multiple_choice', 'How many hundreds are in the number 342?', '["2", "3", "4"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Hundreds, Tens, and Ones'), 2, 'short_answer', 'Break apart a three-digit number into hundreds, tens, and ones.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Three-Digit Numbers'), 1, 'multiple_choice', 'Which number is greater: 452 or 398?', '["398", "452", "They are equal"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Comparing Three-Digit Numbers'), 2, 'short_answer', 'Compare two three-digit numbers and explain how you knew which was greater.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Skip Counting to 1000'), 1, 'multiple_choice', 'What comes next when counting by 100s: 300, 400, ___?', '["410", "500", "450"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Skip Counting to 1000'), 2, 'short_answer', 'Practice counting by 5s up to 50 with a grown-up.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Adding Three-Digit Numbers'), 1, 'multiple_choice', 'What is 234 + 152?', '["286", "386", "486"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adding Three-Digit Numbers'), 2, 'short_answer', 'Solve 421 + 358 and show your steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Letter Sounds A-M Review'), 1, 'multiple_choice', 'What sound does the letter ''B'' make?', '["/b/", "/d/", "/m/"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Letter Sounds A-M Review'), 2, 'short_answer', 'Say three words that start with letters between A and M.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Letter Sounds N-Z Review'), 1, 'multiple_choice', 'What sound does the letter ''S'' make?', '["/s/", "/z/", "/t/"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Letter Sounds N-Z Review'), 2, 'short_answer', 'Say three words that start with letters between N and Z.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Blending Onset and Rime'), 1, 'multiple_choice', 'What word do you get when you blend /h/ + ''at''?', '["Hat", "Cat", "Mat"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Blending Onset and Rime'), 2, 'short_answer', 'Try blending /s/ + ''un.'' What word did you make?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing the Alphabet'), 1, 'multiple_choice', 'Where should you usually start writing a letter?', '["At the top", "At the bottom", "In the middle"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing the Alphabet'), 2, 'short_answer', 'Practice writing three letters and show a grown-up.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading Sight Words Set 1'), 1, 'multiple_choice', 'Which of these is a sight word we practiced?', '["said", "elephant", "birthday"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Reading Sight Words Set 1'), 2, 'short_answer', 'Find a sight word in a book and point to it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading Sight Words Set 2'), 1, 'multiple_choice', 'Which of these is a sight word we practiced?', '["they", "dinosaur", "computer"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Reading Sight Words Set 2'), 2, 'short_answer', 'Use one of the new sight words in a sentence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Story Problems and Solutions'), 1, 'multiple_choice', 'What is a ''problem'' in a story?', '["Something the character needs to solve", "The title of the book", "The last page"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Understanding Story Problems and Solutions'), 2, 'short_answer', 'Name a problem and solution from a story you''ve read.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Sequencing Events in a Story'), 1, 'multiple_choice', 'Which word helps tell what happens at the very beginning?', '["First", "Last", "Finally"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Sequencing Events in a Story'), 2, 'short_answer', 'Retell a story using the words first, next, and last.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Character Motivation'), 1, 'multiple_choice', 'What does ''motivation'' mean in a story?', '["The reason a character acts a certain way", "The title of the book", "The illustrator''s name"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Understanding Character Motivation'), 2, 'short_answer', 'Describe why a character in a story you read did something.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Identifying Theme'), 1, 'multiple_choice', 'What is a story''s ''theme''?', '["The big lesson or message", "The number of pages", "The author''s favorite color"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Identifying Theme'), 2, 'short_answer', 'Name a story and its theme or lesson.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Using Context Clues'), 1, 'multiple_choice', 'What are ''context clues''?', '["Words around an unknown word that help explain it", "The title of a book", "A type of punctuation"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Using Context Clues'), 2, 'short_answer', 'Find an unfamiliar word in a book and guess its meaning using context clues.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading Fluently with Expression'), 1, 'multiple_choice', 'What does it mean to read with ''expression''?', '["Using your voice to show feeling", "Reading as fast as possible", "Whispering the whole time"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Reading Fluently with Expression'), 2, 'short_answer', 'Read a short passage out loud with expression to a grown-up.', NULL, NULL);
