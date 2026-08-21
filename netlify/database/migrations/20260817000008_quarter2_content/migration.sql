INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='math-prek'), 'Comparing & Positions', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-prek'), 'Letters A-J & Story Sense', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-k'), 'Addition & Subtraction Begins', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-k')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-1'), 'Place Value & Fluency', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='math-2'), 'Regrouping & Problem Solving', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-2')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-k'), 'Story Elements', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-k')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-1'), 'Nonfiction & Writing Craft', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-1')), 0) + 1),
((SELECT id FROM courses WHERE slug='ela-2'), 'Perspective & Persuasive Writing', COALESCE((SELECT MAX(position) FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-2')), 0) + 1);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes, video_caption) VALUES
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'More and Less Comparisons', 1, 'lesson',
'# More and Less Comparisons

Let''s compare two groups again! Which has **more**? Which has **less**?

**Try it:** Make a group of 3 toys and a group of 6 toys. Which group has more? Which has less?

**Wonder Quest:** Find two snacks with different amounts. Which is more?',
'NC ELDS – Cognitive Development', 'Compares two sets of objects to determine which has more or less.', 8, 'Two small groups of toys being compared to see which has more.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Number Recognition 1-5', 2, 'lesson',
'# Number Recognition 1-5

Let''s learn to spot numbers 1, 2, 3, 4, and 5 when we see them written down!

**Try it:** Look at number cards or a page with numbers. Point to the number 3. Now find the number 5.

**Now try:** Can you find the numbers 1-5 somewhere in your house (a clock, a book, a calendar)?',
'NC ELDS – Cognitive Development', 'Recognizes and names written numerals 1 through 5.', 8, 'Number cards 1 through 5 being shown and named one at a time.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Number Recognition 6-10', 3, 'lesson',
'# Number Recognition 6-10

Now let''s learn to spot numbers 6, 7, 8, 9, and 10!

**Try it:** Look at number cards. Point to the number 8. Now find the number 10.

**Now try:** Count 10 objects and place the number 10 card next to them.',
'NC ELDS – Cognitive Development', 'Recognizes and names written numerals 6 through 10.', 8, 'Number cards 6 through 10 being shown and named one at a time.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Simple Puzzles and Spatial Awareness', 4, 'lesson',
'# Simple Puzzles and Spatial Awareness

Puzzles help our brains think about shapes and space!

**Try it:** Work on a simple puzzle (4-12 pieces). Turn pieces around to see how they fit.

**Talk about it:** How did you decide where each piece should go?',
'NC ELDS – Cognitive Development', 'Completes simple puzzles, developing spatial reasoning skills.', 10, 'A child fitting puzzle pieces together, turning and testing pieces to find the right fit.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Positional Words: Over, Under, Beside', 5, 'lesson',
'# Positional Words: Over, Under, Beside

Let''s practice more position words: over, under, and beside!

**Try it:** Put a toy over a chair, then under it, then beside it. Say the word each time.

**Now try:** Ask a grown-up to hide a toy over, under, or beside something. Can you find it?',
'NC ELDS – Cognitive Development', 'Uses positional vocabulary (over, under, beside) to describe object location.', 8, 'A ball being placed over, under, and beside a chair to demonstrate position words.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Counting Collections', 6, 'lesson',
'# Counting Collections

Let''s practice counting a whole collection of things!

**Try it:** Gather a collection of small objects (buttons, rocks, coins). Count them one at a time, touching each one.

**Wonder Quest:** Count your collection again. Did you get the same number both times?',
'NC ELDS – Cognitive Development', 'Counts a collection of objects accurately using one-to-one correspondence.', 8, 'A collection of mixed small objects being counted one at a time.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'One More, One Less', 7, 'lesson',
'# One More, One Less

If you have 5 toys and get 1 more, how many do you have? If you take 1 away, how many are left?

**Try it:** Count out 5 objects. Add 1 more. Count again. Now take 1 away. Count again.

**Practice:** Try this with 3 objects, then with 8 objects.',
'NC ELDS – Cognitive Development', 'Determines one more or one less than a given quantity.', 8, 'A group of 5 objects having one added, then one removed, to show one more and one less.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Exploring 3D Shapes', 8, 'lesson',
'# Exploring 3D Shapes

Some shapes are round like a ball (sphere) and some are boxy like a block (cube)!

**Try it:** Find a ball and a block. Roll the ball. Try rolling the block — what happens?

**Wonder Quest:** Find 3 round things and 3 boxy things around your house.',
'NC ELDS – Cognitive Development', 'Identifies simple 3D shapes (sphere, cube) in the environment.', 8, 'A ball (sphere) and a box (cube) being rolled and stacked to show their properties.'),
((SELECT id FROM units WHERE title='Comparing & Positions' AND course_id=(SELECT id FROM courses WHERE slug='math-prek') ORDER BY id LIMIT 1), 'Building with Blocks', 9, 'lesson',
'# Building with Blocks

Blocks let us build anything we imagine! Let''s build something today.

**Try it:** Use blocks to build a tower. How tall can you make it before it falls?

**Now try:** Build something new — a bridge, a house, or your own creation!',
'NC ELDS – Cognitive Development', 'Uses blocks to build structures, developing spatial reasoning and creativity.', 10, 'A child stacking and arranging blocks to build a simple tower or structure.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Letter Recognition A-E', 1, 'lesson',
'# Letter Recognition A-E

Let''s learn to spot the letters A, B, C, D, and E!

**Try it:** Look at letter cards or a book. Point to the letter C. Now find the letter A.

**Now try:** Find one of these letters somewhere in your house.',
'NC ELDS – Language Development & Communication', 'Recognizes and names the letters A through E.', 8, 'Letter cards A through E being shown and named one at a time.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Letter Recognition F-J', 2, 'lesson',
'# Letter Recognition F-J

Now let''s learn F, G, H, I, and J!

**Try it:** Look at letter cards. Point to the letter H. Now find the letter J.

**Now try:** Can you think of a word that starts with F?',
'NC ELDS – Language Development & Communication', 'Recognizes and names the letters F through J.', 8, 'Letter cards F through J being shown and named one at a time.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Letter Sound Match Games', 3, 'lesson',
'# Letter Sound Match Games

Let''s play a matching game! Each letter has a sound, and each sound matches a picture.

**Try it:** Match the letter B to a picture of a ball. Match the letter S to a picture of the sun.

**Now try:** Make up your own matching game with 3 letters and 3 pictures.',
'NC ELDS – Language Development & Communication', 'Matches letters to their corresponding beginning sounds through games.', 10, 'A matching game pairing letter cards with pictures that start with that letter''s sound.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Beginning Sounds Sort', 4, 'lesson',
'# Beginning Sounds Sort

Let''s sort pictures by the sound they start with!

**Try it:** Gather pictures or toys. Sort them into groups: things that start like "ball" and things that start like "sun."

**Talk about it:** How did you decide where each item belonged?',
'NC ELDS – Language Development & Communication', 'Sorts pictures or objects by their beginning sound.', 8, 'Pictures of objects being sorted into groups by their beginning sound.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Story Sequencing: First, Next, Last', 5, 'lesson',
'# Story Sequencing: First, Next, Last

Stories happen in an order! Let''s practice telling what happened first, next, and last.

**Try it:** Read a simple story. Use pictures or drawings to show what happened first, next, and last.

**Now try:** Tell the story back using those three words.',
'NC ELDS – Language Development & Communication', 'Sequences the events of a simple story using first, next, and last.', 10, 'Story picture cards being arranged in order using the words first, next, and last.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Predicting What Happens Next', 6, 'lesson',
'# Predicting What Happens Next

Good listeners guess what might happen next in a story!

**Try it:** While reading a book, stop before the end. Ask: "What do you think will happen?"

**Now try:** Check your guess — were you right?',
'NC ELDS – Language Development & Communication', 'Makes predictions about story events based on pictures and context.', 8, 'A caregiver pausing mid-story and asking a child to guess what happens next.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Talking About Characters', 7, 'lesson',
'# Talking About Characters

Characters are the people or animals in a story. Let''s talk about them!

**Try it:** Pick a character from a favorite book. What do they look like? Are they kind, funny, or brave?

**Now try:** Draw your favorite character and describe them to a grown-up.',
'NC ELDS – Language Development & Communication', 'Describes characters in a story using descriptive language.', 8, 'A child describing a favorite story character''s appearance and personality.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Drawing to Tell a Story', 8, 'lesson',
'# Drawing to Tell a Story

We can tell stories with pictures, even before we can write words!

**Try it:** Draw three pictures showing the beginning, middle, and end of a story you make up.

**Now try:** Tell your story to a grown-up using your pictures.',
'NC ELDS – Language Development & Communication', 'Uses drawing as an early form of storytelling and written expression.', 10, 'A child drawing a simple picture story with a beginning, middle, and end.'),
((SELECT id FROM units WHERE title='Letters A-J & Story Sense' AND course_id=(SELECT id FROM courses WHERE slug='ela-prek') ORDER BY id LIMIT 1), 'Sharing News: Show and Tell', 9, 'lesson',
'# Sharing News: Show and Tell

Let''s practice telling others about something exciting!

**Try it:** Pick a favorite toy or a fun thing that happened to you. Tell a grown-up or sibling about it.

**Talk about it:** What did you like about sharing your news?',
'NC ELDS – Language Development & Communication', 'Shares personal experiences aloud in a clear, organized way.', 8, 'A child standing up and sharing about a favorite toy or a recent experience with a group.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Putting Groups Together', 1, 'lesson',
'# Putting Groups Together

When we put two groups together, we are adding!

**Try it:** Make a group of 2 blocks and a group of 3 blocks. Push them together. How many in all?

**Practice:** Try putting together a group of 4 and a group of 1.',
'NC.K.OA.1', 'Represents addition with objects, fingers, and drawings.', 10, 'Two small groups of objects being pushed together and recounted as one group.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Taking Numbers Apart', 2, 'lesson',
'# Taking Numbers Apart

Numbers can be split into two smaller groups! 5 can be 2 and 3, or 4 and 1.

**Try it:** Take 5 objects. Split them into two groups. How many ways can you split them?

**Practice:** Try splitting 6 objects into two groups a few different ways.',
'NC.K.OA.3', 'Decomposes numbers less than or equal to 10 into pairs in more than one way.', 10, 'A group of 5 objects being split into two smaller groups in different ways.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Decomposing Numbers to 10', 3, 'lesson',
'# Decomposing Numbers to 10

Let''s find all the pairs of numbers that make 10! 10 = 1+9, 2+8, 3+7...

**Try it:** Use 10 objects. Split them into two groups. Write down the pair. Try again with a different split.

**Practice:** How many different pairs can you find that make 10?',
'NC.K.OA.3', 'Finds pairs of numbers that make a given total up to 10.', 10, 'Numbers being broken apart into pairs that add up to 10, shown with objects.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Making 10', 4, 'lesson',
'# Making 10

If you have 7, how many more do you need to make 10?

**Try it:** Count out 7 objects. How many more do you need to add to make 10?

**Practice:** Try this with 4, then with 9.',
'NC.K.OA.4', 'Finds the number that makes 10 when added to a given number 1-9.', 10, 'A group of objects being added to until it reaches exactly 10.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Addition Story Problems', 5, 'lesson',
'# Addition Story Problems

Story problems tell us about numbers joining together! "There were 3 ducks. 2 more came. How many now?"

**Try it:** Act out the duck story with 5 objects. How many ducks are there now?

**Now try:** Make up your own addition story!',
'NC.K.OA.2', 'Solves addition word problems using objects or drawings within 10.', 10, 'A short story about ducks joining a pond, being acted out and counted.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Subtraction Story Problems', 6, 'lesson',
'# Subtraction Story Problems

"There were 6 birds. 2 flew away. How many are left?" Let''s solve subtraction stories!

**Try it:** Act out the bird story with 6 objects. Take 2 away. How many are left?

**Now try:** Make up your own subtraction story!',
'NC.K.OA.2', 'Solves subtraction word problems using objects or drawings within 10.', 10, 'A short story about birds flying away from a group, counted down.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Fluently Adding within 5', 7, 'lesson',
'# Fluently Adding within 5

Let''s practice adding fast, without counting on our fingers every time!

**Try it:** Try to answer quickly: 2+2, 1+3, 4+1, 3+2. Check your answers with objects if you need to.

**Practice:** Time yourself — how fast can you answer 5 addition problems within 5?',
'NC.K.OA.5', 'Fluently adds within 5 without needing to count objects.', 8, 'Quick flashcard-style addition problems within 5 being solved rapidly.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Understanding Teen Numbers', 8, 'lesson',
'# Understanding Teen Numbers

Numbers 11-19 are made of a group of 10 plus some more! 14 is 10 and 4 more.

**Try it:** Use 14 objects. Put 10 in one group and count how many are left over.

**Practice:** Try this with 17 and 12.',
'NC.K.NBT.1', 'Composes and decomposes numbers 11-19 into ten ones and some more ones.', 10, 'Teen numbers being shown as a group of ten plus some extra ones using blocks.'),
((SELECT id FROM units WHERE title='Addition & Subtraction Begins' AND course_id=(SELECT id FROM courses WHERE slug='math-k') ORDER BY id LIMIT 1), 'Patterns in Numbers 11-19', 9, 'lesson',
'# Patterns in Numbers 11-19

Did you notice a pattern? Every teen number starts with a group of 10!

**Try it:** Say the numbers 11 through 19 out loud. What do you notice they all have in common?

**Practice:** Build the numbers 13, 15, and 18 using ten-groups and extra ones.',
'NC.K.NBT.1', 'Recognizes the pattern of ten ones plus more ones in numbers 11-19.', 8, 'Numbers 11 through 19 shown in a row, highlighting the repeated ''ten and more'' pattern.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Understanding Place Value', 1, 'lesson',
'# Understanding Place Value

Every two-digit number has a tens place and a ones place! In 42, there are 4 tens and 2 ones.

**Try it:** Use blocks to build the number 36. How many tens? How many ones?

**Practice:** Build 58 and 27 the same way.',
'NC.1.NBT.2', 'Understands that the two digits of a two-digit number represent tens and ones.', 10, 'Base-ten blocks showing tens rods and ones cubes building a two-digit number.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Adding a Two-Digit and One-Digit Number', 2, 'lesson',
'# Adding a Two-Digit and One-Digit Number

Let''s add a bigger number and a smaller number together!

**Example:** 34 + 5 = 39. Just add the 5 to the ones place.

**Try it:** Solve 27 + 6 and 41 + 8 using blocks or drawings.',
'NC.1.NBT.4', 'Adds a two-digit number and a one-digit number within 100.', 10, 'A two-digit number having a small number added to it using base-ten blocks.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Adding Two Two-Digit Numbers', 3, 'lesson',
'# Adding Two Two-Digit Numbers

Now let''s add two bigger numbers together, tens with tens and ones with ones!

**Example:** 23 + 14. Tens: 20+10=30. Ones: 3+4=7. Total: 37.

**Try it:** Solve 31 + 26 the same way.',
'NC.1.NBT.4', 'Adds two two-digit numbers using place value strategies.', 10, 'Two two-digit numbers'' tens and ones blocks being combined to find the sum.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Subtracting Multiples of 10', 4, 'lesson',
'# Subtracting Multiples of 10

Let''s subtract whole groups of tens! 50 - 20 is like taking away 2 groups of 10 from 5 groups of 10.

**Try it:** Solve 70 - 30 using tens rods or drawings of tens.

**Practice:** Try 90 - 40 and 60 - 20.',
'NC.1.NBT.6', 'Subtracts multiples of 10 from multiples of 10 within 100.', 8, 'Tens rods being removed from a starting group to show subtracting multiples of ten.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Two-Step Word Problems', 5, 'lesson',
'# Two-Step Word Problems

Some problems need two steps to solve! "You have 5 apples. You get 3 more. Then you eat 2. How many are left?"

**Try it:** Act out the apple story with objects. Solve it one step at a time.

**Now try:** Make up your own two-step story!',
'NC.1.OA.1', 'Solves word problems that require two steps using addition and subtraction.', 10, 'A two-part story problem being solved step by step with objects.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Doubles and Near Doubles', 6, 'lesson',
'# Doubles and Near Doubles

A "double" is adding a number to itself: 4+4=8. This can help solve close problems too, like 4+5!

**Try it:** Solve 3+3, 5+5, and 6+6 (these are doubles).

**Now try:** If 4+4=8, what is 4+5? (Hint: it''s one more!)',
'NC.1.OA.6', 'Uses doubles facts to solve related addition problems.', 8, 'Two equal groups of objects being combined to show a doubles fact, like 4+4.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Skip Counting by 2s', 7, 'lesson',
'# Skip Counting by 2s

Counting by 2s is faster than counting by 1s! 2, 4, 6, 8, 10...

**Try it:** Count by 2s out loud from 0 to 20.

**Practice:** Count pairs of shoes or socks by 2s!',
'NC.1.NBT.1', 'Skip-counts by 2s to build number pattern fluency.', 8, 'A number line showing jumps of 2 from 0 to 20.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Skip Counting by 5s', 8, 'lesson',
'# Skip Counting by 5s

Let''s count by 5s! 5, 10, 15, 20, 25...

**Try it:** Count by 5s out loud from 0 to 50.

**Practice:** Count a handful of nickels by 5s, if you have any!',
'NC.1.NBT.1', 'Skip-counts by 5s to build number pattern fluency.', 8, 'A number line showing jumps of 5 from 0 to 50.'),
((SELECT id FROM units WHERE title='Place Value & Fluency' AND course_id=(SELECT id FROM courses WHERE slug='math-1') ORDER BY id LIMIT 1), 'Skip Counting by 10s', 9, 'lesson',
'# Skip Counting by 10s

Counting by 10s is super fast! 10, 20, 30, 40...

**Try it:** Count by 10s out loud from 0 to 100.

**Practice:** Count a group of pennies by putting them in piles of 10.',
'NC.1.NBT.1', 'Skip-counts by 10s to build number pattern fluency.', 8, 'A number line showing jumps of 10 from 0 to 100.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Subtracting Three-Digit Numbers', 1, 'lesson',
'# Subtracting Three-Digit Numbers

We can subtract hundreds, tens, and ones separately!

**Example:** 486 - 253. Hundreds: 400-200=200. Tens: 80-50=30. Ones: 6-3=3. Total: 233.

**Try it:** Solve 578 - 345 using this strategy.',
'NC.2.NBT.7', 'Subtracts within 1000 using strategies based on place value.', 12, 'Hundreds, tens, and ones blocks being taken away to solve a three-digit subtraction.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Regrouping in Addition', 2, 'lesson',
'# Regrouping in Addition

Sometimes when we add, the ones add up to more than 9 — we trade 10 ones for 1 ten! This is called regrouping.

**Example:** 27 + 15. Ones: 7+5=12. Trade 10 ones for 1 ten. Tens: 20+10+10=40. Total: 42.

**Try it:** Solve 38 + 26 using regrouping.',
'NC.2.NBT.7', 'Adds within 1000 using regrouping when ones or tens exceed 9.', 12, 'Ten ones blocks being traded for one tens rod to demonstrate regrouping in addition.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Regrouping in Subtraction', 3, 'lesson',
'# Regrouping in Subtraction

Sometimes we don''t have enough ones to subtract — we trade 1 ten for 10 ones! This is regrouping too.

**Example:** 42 - 15. We need to trade 1 ten for 10 ones to subtract 5 from the ones. 

**Try it:** Solve 63 - 27 using regrouping.',
'NC.2.NBT.7', 'Subtracts within 1000 using regrouping when needed.', 12, 'A tens rod being traded for ten ones cubes to demonstrate regrouping in subtraction.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Solving Two-Step Word Problems', 4, 'lesson',
'# Solving Two-Step Word Problems

Some problems take two steps! "You have 45 stickers. You get 20 more. Then you give away 15. How many now?"

**Try it:** Solve the sticker problem one step at a time.

**Now try:** Make up your own two-step problem!',
'NC.2.OA.1', 'Solves two-step word problems using addition and subtraction within 100.', 10, 'A two-step story problem being solved with objects and drawings step by step.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Odd and Even Numbers', 5, 'lesson',
'# Odd and Even Numbers

Even numbers can be split into two equal groups with nothing left over. Odd numbers always have one left over!

**Try it:** Take 8 objects. Split them into pairs. Is 8 odd or even?

**Practice:** Try this with 7 and with 10.',
'NC.2.OA.3', 'Determines whether a group of objects has an odd or even number using pairs.', 8, 'Objects being paired up to determine if a group has an odd or even amount.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Arrays and Repeated Addition', 6, 'lesson',
'# Arrays and Repeated Addition

An array is objects arranged in equal rows! 3 rows of 4 is the same as 4+4+4.

**Try it:** Arrange 12 objects into 3 rows of 4. Add 4+4+4 to check the total.

**Practice:** Make an array with 2 rows of 5.',
'NC.2.OA.4', 'Uses arrays to represent repeated addition, building a foundation for multiplication.', 10, 'Objects arranged in equal rows and columns (an array) being counted using repeated addition.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Equal Groups', 7, 'lesson',
'# Equal Groups

Equal groups all have the same number of objects in them!

**Try it:** Take 15 objects. Can you make 3 equal groups? How many in each group?

**Practice:** Try making 5 equal groups from 20 objects.',
'NC.2.OA.4', 'Identifies and creates equal groups of objects.', 8, 'Objects being sorted into several equal-sized groups.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Money: Counting Coins and Bills', 8, 'lesson',
'# Money: Counting Coins and Bills

Let''s count money! A penny is 1 cent, a nickel is 5, a dime is 10, and a quarter is 25.

**Try it:** If you have real or play coins, count 2 dimes and 1 nickel. How much money is that?

**Practice:** Count 3 quarters. How much is that in cents?',
'NC.2.MD.8', 'Counts a mix of coins and bills to find the total value.', 10, 'Coins and a dollar bill being counted and added together to find a total value.'),
((SELECT id FROM units WHERE title='Regrouping & Problem Solving' AND course_id=(SELECT id FROM courses WHERE slug='math-2') ORDER BY id LIMIT 1), 'Making Change', 9, 'lesson',
'# Making Change

If something costs 60 cents and you pay with a dollar, how much change do you get back?

**Try it:** A toy costs 75 cents. You pay with a dollar (100 cents). How much change do you get?

**Practice:** Try figuring out change for something that costs 40 cents.',
'NC.2.MD.8', 'Solves word problems involving making change from a dollar amount.', 10, 'Coins being counted out to make change from a purchase.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Identifying Story Characters', 1, 'lesson',
'# Identifying Story Characters

Every story has characters — the people or animals it''s about!

**Try it:** Read a short story. Point to and name each character you see.

**Now try:** Draw your favorite character from the story.',
'NC.RL.K.3', 'With prompting and support, identifies characters in a story.', 8, 'A picture book''s characters being pointed out and named one by one.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Identifying Story Settings', 2, 'lesson',
'# Identifying Story Settings

The setting is where and when a story happens!

**Try it:** Read a short story. Where does it take place? Is it at a school, in a forest, at home?

**Now try:** Draw the setting of your favorite story.',
'NC.RL.K.3', 'With prompting and support, identifies the setting of a story.', 8, 'Different story settings (forest, beach, house) being shown from picture books.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Sequencing Story Events', 3, 'lesson',
'# Sequencing Story Events

Let''s put story events in order — what happened first, next, and last!

**Try it:** Read a short story. Draw 3 pictures showing what happened at the start, middle, and end.

**Now try:** Tell the story back in order.',
'NC.RL.K.2', 'Retells familiar stories, including key details, in the order they happened.', 8, 'Story events being arranged in order from beginning to end.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Comparing Two Characters', 4, 'lesson',
'# Comparing Two Characters

Let''s compare two characters! How are they the same? How are they different?

**Try it:** Pick two characters from stories you know. What do they have in common? What''s different?

**Talk about it:** Which character would you want to be friends with?',
'NC.RL.K.9', 'With prompting and support, compares and contrasts characters in familiar stories.', 10, 'Two different story characters being compared side by side on their traits.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Making Predictions', 5, 'lesson',
'# Making Predictions

Good readers guess what will happen next in a story!

**Try it:** While reading, stop before the end. Guess what will happen. Then keep reading to check.

**Talk about it:** Were you right? What made you guess that?',
'NC.RL.K.1', 'Makes predictions about upcoming story events using pictures and prior knowledge.', 8, 'A caregiver pausing before a story''s ending to ask what the child thinks will happen.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Connecting Text to Self', 6, 'lesson',
'# Connecting Text to Self

Sometimes a story reminds us of something that happened to us!

**Try it:** Read a story about a character trying something new. Has that ever happened to you?

**Talk about it:** Share your connection with a grown-up.',
'NC.RL.K.1', 'Makes connections between story events and personal experiences.', 8, 'A child talking about how a story reminds them of something in their own life.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Understanding Story Problems and Solutions', 7, 'lesson',
'# Understanding Story Problems and Solutions

Most stories have a problem the character solves!

**Try it:** Read a short story. What problem does the character have? How do they fix it?

**Talk about it:** Would you have solved it a different way?',
'NC.RL.K.3', 'Identifies the problem a character faces and how it is solved.', 8, 'A story character''s problem being shown, followed by how they solve it.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Writing About a Favorite Character', 8, 'lesson',
'# Writing About a Favorite Character

Let''s write about a character you love!

**Try it:** Draw your favorite character. Write or tell a grown-up one reason you like them.

**Now try:** Share your drawing and writing with someone.',
'NC.W.K.1', 'Writes or draws opinions about a favorite story character with a reason.', 10, 'A child drawing their favorite character and writing or dictating why they like them.'),
((SELECT id FROM units WHERE title='Story Elements' AND course_id=(SELECT id FROM courses WHERE slug='ela-k') ORDER BY id LIMIT 1), 'Sharing Opinions About Books', 9, 'lesson',
'# Sharing Opinions About Books

Did you like the book? Let''s talk about why!

**Try it:** After finishing a book, tell a grown-up if you liked it and why.

**Now try:** Would you recommend this book to a friend? Why or why not?',
'NC.W.K.1', 'Shares and supports an opinion about a book with a reason.', 8, 'Children discussing whether they liked a book and explaining why.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Identifying the Main Topic', 1, 'lesson',
'# Identifying the Main Topic

The main topic is what a nonfiction book is mostly about!

**Try it:** Read a short nonfiction book. What is it mostly about? Name the main topic in one sentence.

**Now try:** List 2 facts you learned about that topic.',
'NC.RI.1.2', 'Identifies the main topic and retells key details of a nonfiction text.', 8, 'A nonfiction book about animals being read with its main topic highlighted.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Using Text Features in Nonfiction', 2, 'lesson',
'# Using Text Features in Nonfiction

Nonfiction books have special features to help us: headings, captions, and bold words!

**Try it:** Find a nonfiction book. Point to a heading, a caption, and a bold word.

**Talk about it:** How does each feature help you understand the book?',
'NC.RI.1.5', 'Uses text features (headings, captions, bold words) to locate information.', 8, 'Nonfiction book pages showing headings, captions, and bold words being pointed out.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Comparing Two Texts on the Same Topic', 3, 'lesson',
'# Comparing Two Texts on the Same Topic

Let''s read two books about the same thing and compare them!

**Try it:** Find two books about animals or space. What facts do both books share? What''s different?

**Talk about it:** Which book did you like better and why?',
'NC.RI.1.9', 'Identifies similarities and differences between two texts on the same topic.', 10, 'Two nonfiction books about the same animal being compared side by side.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Understanding Cause and Effect', 4, 'lesson',
'# Understanding Cause and Effect

A cause is why something happens. An effect is what happens because of it! "It rained (cause), so the ground got wet (effect)."

**Try it:** Read a short story. Find one thing that happened (effect) and why it happened (cause).

**Now try:** Make up your own cause and effect example.',
'NC.RI.1.3', 'Describes the connection between events, ideas, or facts in a text using cause and effect.', 8, 'A simple cause and effect example, like rain falling causing puddles to form.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Making Inferences from Pictures', 5, 'lesson',
'# Making Inferences from Pictures

Sometimes pictures tell us things the words don''t say!

**Try it:** Look closely at a picture in a book. What can you tell about the character''s feelings from their face?

**Talk about it:** What clues in the picture helped you figure that out?',
'NC.RL.1.7', 'Uses illustrations and details to describe characters, settings, or events.', 8, 'A picture book illustration being examined closely to infer what''s happening in the story.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Building Vocabulary from Context', 6, 'lesson',
'# Building Vocabulary from Context

When we see a word we don''t know, the sentence around it can give us clues!

**Try it:** Read: "The frigid winter wind made us shiver." What might "frigid" mean?

**Practice:** Find a new word in a book and guess its meaning using clues around it.',
'NC.L.1.4', 'Uses sentence context to determine the meaning of unknown words.', 8, 'A sentence with a tricky word being examined for clues in the surrounding words.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Writing a Personal Narrative', 7, 'lesson',
'# Writing a Personal Narrative

Let''s write a true story about something that happened to you!

**Try it:** Think of something fun you did. Write 2-3 sentences telling what happened first, next, and how it ended.

**Now try:** Draw a picture to go with your story.',
'NC.W.1.3', 'Writes narratives recounting two or more sequenced events with details and a sense of closure.', 10, 'A child writing a short personal story about something that happened to them.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Writing an Opinion Piece', 8, 'lesson',
'# Writing an Opinion Piece

Let''s write about something you like and why!

**Try it:** Pick a favorite food, animal, or game. Write: "My favorite ___ is ___ because ___."

**Now try:** Share your opinion piece with a grown-up.',
'NC.W.1.1', 'Writes opinion pieces introducing a topic, stating an opinion, and giving a reason.', 10, 'A child writing about their favorite food and explaining why they like it.'),
((SELECT id FROM units WHERE title='Nonfiction & Writing Craft' AND course_id=(SELECT id FROM courses WHERE slug='ela-1') ORDER BY id LIMIT 1), 'Using Describing Words', 9, 'lesson',
'# Using Describing Words

Describing words (adjectives) help readers picture what we mean! "A dog" becomes "a big, fluffy dog."

**Try it:** Take the sentence "I saw a cat." Add 2 describing words to make it more interesting.

**Now try:** Describe your favorite toy using 3 describing words.',
'NC.L.1.1', 'Uses adjectives to add detail and description to writing.', 8, 'A plain sentence being rewritten with descriptive adjectives added.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Comparing Points of View', 1, 'lesson',
'# Comparing Points of View

Different characters can see the same event differently! This is called point of view.

**Try it:** Read a story with two characters. How might each character feel about the same event differently?

**Talk about it:** Whose point of view do you understand better, and why?',
'NC.RL.2.6', 'Acknowledges differences in the points of view of characters.', 10, 'A story shown from two different characters'' points of view side by side.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Understanding Cause and Effect Relationships', 2, 'lesson',
'# Understanding Cause and Effect Relationships

Sometimes one cause leads to many effects, like dominoes falling!

**Try it:** Read a short story or article. Find a chain: what caused something, and what happened because of it?

**Now try:** Create your own cause and effect chain with 3 steps.',
'NC.RI.2.3', 'Describes the connection between a series of events, using cause and effect language.', 8, 'A chain of causes and effects being shown, like a domino toppling a series of events.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Making and Confirming Predictions', 3, 'lesson',
'# Making and Confirming Predictions

Let''s guess what happens, then check if we were right!

**Try it:** Before finishing a story, write down your prediction. Then finish reading and check.

**Talk about it:** What clues helped you make a good prediction?',
'NC.RL.2.1', 'Asks and answers questions to demonstrate understanding, including making and checking predictions.', 8, 'A reader pausing to predict an outcome, then confirming it while finishing the story.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Summarizing a Story', 4, 'lesson',
'# Summarizing a Story

A summary tells the most important parts of a story in just a few sentences!

**Try it:** Read a short story. Summarize it in 2-3 sentences — just the important parts.

**Now try:** Share your summary with a grown-up. Did you include the important parts?',
'NC.RL.2.2', 'Recounts stories and determines their central message, lesson, or moral.', 10, 'A story being condensed into a short 2-3 sentence summary.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Identifying Author''s Purpose', 5, 'lesson',
'# Identifying Author''s Purpose

Authors write for different reasons: to entertain, to inform, or to persuade!

**Try it:** Look at a storybook, a nonfiction book, and an advertisement. What is each one trying to do?

**Talk about it:** How can you tell the difference?',
'NC.RI.2.6', 'Identifies the main purpose of a text, including what the author wants to answer, explain, or describe.', 8, 'Different types of texts (a story, an ad, a how-to guide) being examined for their purpose.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Writing a Persuasive Piece', 6, 'lesson',
'# Writing a Persuasive Piece

Let''s write to convince someone of our opinion!

**Try it:** Pick something you feel strongly about (like bedtime or a pet). Write 3 sentences trying to convince a grown-up you''re right.

**Now try:** Read your persuasive piece out loud. Was it convincing?',
'NC.W.2.1', 'Writes opinion pieces that introduce a topic, state an opinion, and provide supporting reasons.', 10, 'A child writing a short persuasive paragraph trying to convince someone of an opinion.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Writing a Research Paragraph', 7, 'lesson',
'# Writing a Research Paragraph

Let''s gather facts about a topic and write about it!

**Try it:** Pick a topic you''re curious about (like sharks or space). Find 3 facts and write them as a paragraph.

**Now try:** Share your research paragraph with someone.',
'NC.W.2.7', 'Participates in shared research and writing projects to gather information on a topic.', 10, 'A child researching a topic in a book and writing down facts they learned.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Using Transition Words', 8, 'lesson',
'# Using Transition Words

Transition words help readers follow the order of events: first, then, next, finally!

**Try it:** Write 3 sentences about your morning routine using first, then, and finally.

**Now try:** Read your sentences out loud. Do the transition words help it make sense?',
'NC.W.2.3', 'Uses temporal words to signal event order in writing.', 8, 'A story being read with transition words like first, then, next, and finally highlighted.'),
((SELECT id FROM units WHERE title='Perspective & Persuasive Writing' AND course_id=(SELECT id FROM courses WHERE slug='ela-2') ORDER BY id LIMIT 1), 'Revising for Clarity', 9, 'lesson',
'# Revising for Clarity

Good writers reread their work and make it clearer!

**Try it:** Write a sentence about your day. Read it again — does it make sense? Can you make it clearer?

**Now try:** Revise one of your earlier sentences to make it even better.',
'NC.W.2.5', 'With guidance and support, revises writing to make it clearer for readers.', 10, 'A messy first-draft sentence being revised into a clearer, more organized sentence.');

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='More and Less Comparisons' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A group of 6 and a group of 3 — which has more?', '["The group of 3", "The group of 6", "They are equal"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='More and Less Comparisons' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Make two groups of toys and tell which has less.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Number Recognition 1-5' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which numeral is ''4''?', '["4", "5", "2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Number Recognition 1-5' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find a number between 1 and 5 somewhere in your house.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Number Recognition 6-10' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which numeral is ''7''?', '["9", "7", "6"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Number Recognition 6-10' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find and point to the number 9 somewhere.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Simple Puzzles and Spatial Awareness' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What can help you solve a puzzle piece?', '["Its shape and picture", "Its color only", "Guessing with eyes closed"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Simple Puzzles and Spatial Awareness' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Complete a puzzle and tell a grown-up how you did it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Positional Words: Over, Under, Beside' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'If a ball is over the table, where is it?', '["Above the table", "Below the table", "Next to the table"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Positional Words: Over, Under, Beside' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Place a toy under something and describe where it is.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Counting Collections' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Why do we touch each object as we count?', '["So we don''t skip or count twice", "To make it louder", "It doesn''t matter"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Counting Collections' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Count a collection of objects twice. Did you get the same number?', NULL, NULL),
((SELECT id FROM lessons WHERE title='One More, One Less' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'If you have 4 toys and get 1 more, how many do you have?', '["3", "5", "4"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='One More, One Less' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Try the one more, one less game with your own toys.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Exploring 3D Shapes' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which shape rolls easily?', '["A cube", "A sphere (ball)", "Neither"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Exploring 3D Shapes' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find one round object and one boxy object at home.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building with Blocks' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What happens to a block tower if the bottom is wobbly?', '["It stays strong", "It might fall", "Nothing changes"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Building with Blocks' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Build something with blocks and describe what you made.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Letter Recognition A-E' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which letter comes first in the alphabet: A, C, or E?', '["A", "C", "E"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Letter Recognition A-E' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find the letter B somewhere and point to it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Letter Recognition F-J' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which letter comes right after G?', '["F", "H", "J"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Letter Recognition F-J' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Say a word that starts with the letter J.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Letter Sound Match Games' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What sound does the letter ''S'' usually make?', '["/s/", "/b/", "/t/"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Letter Sound Match Games' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Match a letter to a picture and explain why they go together.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Beginning Sounds Sort' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which word starts with the same sound as ''sun''?', '["Snake", "Ball", "Dog"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Beginning Sounds Sort' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Sort three objects by their beginning sound.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Story Sequencing: First, Next, Last' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which word tells what happens at the very end?', '["First", "Next", "Last"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Story Sequencing: First, Next, Last' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Retell a story using first, next, and last.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Predicting What Happens Next' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What does it mean to ''predict''?', '["To guess what might happen", "To read the last page first", "To close the book"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Predicting What Happens Next' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Make a prediction about a story and see if you were right.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Talking About Characters' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is a ''character'' in a story?', '["A person or animal in the story", "The cover of the book", "The page number"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Talking About Characters' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Describe your favorite story character.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Drawing to Tell a Story' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Can pictures tell a story?', '["Yes", "No", "Only with words"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Drawing to Tell a Story' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Draw a 3-picture story and tell it to someone.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Sharing News: Show and Tell' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is one thing you could share in ''show and tell''?', '["A favorite toy", "Nothing at all", "Only silence"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Sharing News: Show and Tell' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Share news about something fun that happened to you.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Putting Groups Together' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'If you put together 2 blocks and 3 blocks, how many in all?', '["4", "5", "6"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Putting Groups Together' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Put two small groups together and count the total.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Taking Numbers Apart' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which is one way to split 5 into two groups?', '["2 and 3", "5 and 5", "1 and 1"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Taking Numbers Apart' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Split 6 objects into two groups two different ways.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Decomposing Numbers to 10' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which pair makes 10?', '["4 and 5", "6 and 4", "3 and 8"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Decomposing Numbers to 10' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find two different pairs of numbers that make 10.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Making 10' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'If you have 7, how many more make 10?', '["2", "3", "4"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Making 10' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find how many more you need to make 10, starting from 5.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Addition Story Problems' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'There were 3 ducks. 2 more came. How many now?', '["5", "3", "2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Addition Story Problems' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Tell your own addition story using toys.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Subtraction Story Problems' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'There were 6 birds. 2 flew away. How many are left?', '["4", "6", "2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Subtraction Story Problems' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Tell your own subtraction story using toys.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Fluently Adding within 5' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is 2 + 2?', '["3", "4", "5"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Fluently Adding within 5' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve three quick addition problems within 5.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Teen Numbers' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'The number 14 is made of 10 and how many more?', '["3", "4", "5"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Teen Numbers' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Show the number 16 as a group of 10 plus more.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Patterns in Numbers 11-19' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What do all numbers from 11-19 have in common?', '["They all have a group of 10", "They are all even", "They are all less than 10"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Patterns in Numbers 11-19' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Build three different teen numbers using blocks.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Place Value' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'In the number 42, how many tens are there?', '["2", "4", "42"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Place Value' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Build a two-digit number with blocks and describe the tens and ones.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Adding a Two-Digit and One-Digit Number' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is 34 + 5?', '["39", "40", "29"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Adding a Two-Digit and One-Digit Number' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve 52 + 7 and explain your thinking.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Adding Two Two-Digit Numbers' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is 23 + 14?', '["27", "37", "47"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adding Two Two-Digit Numbers' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve 45 + 22 and show your steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Subtracting Multiples of 10' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is 70 - 30?', '["30", "40", "50"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Subtracting Multiples of 10' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve 80 - 50 using drawings of tens.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Two-Step Word Problems' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', '5 apples, get 3 more, then eat 2. How many are left?', '["6", "8", "10"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Two-Step Word Problems' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve a two-step story problem and show each step.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Doubles and Near Doubles' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'If 5 + 5 = 10, what is 5 + 6?', '["10", "11", "12"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Doubles and Near Doubles' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve three doubles facts: 2+2, 6+6, and 7+7.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Skip Counting by 2s' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What comes next: 6, 8, 10, ___?', '["11", "12", "14"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Skip Counting by 2s' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Count by 2s from 0 to 20 to a grown-up.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Skip Counting by 5s' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What comes next: 15, 20, 25, ___?', '["26", "30", "35"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Skip Counting by 5s' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Count by 5s from 0 to 50.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Skip Counting by 10s' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What comes next: 40, 50, 60, ___?', '["61", "70", "65"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Skip Counting by 10s' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Count by 10s from 0 to 100.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Subtracting Three-Digit Numbers' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is 486 - 253?', '["233", "243", "133"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Subtracting Three-Digit Numbers' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve 795 - 462 and show your steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Regrouping in Addition' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'When do we regroup while adding?', '["When ones add up to more than 9", "Every single time", "Never"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Regrouping in Addition' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve 49 + 35 using regrouping and show your steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Regrouping in Subtraction' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Why might we regroup in subtraction?', '["We don''t have enough ones to subtract", "The numbers are too small", "We never need to"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Regrouping in Subtraction' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve 51 - 24 using regrouping and show your steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Solving Two-Step Word Problems' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', '45 stickers, get 20 more, give away 15. How many now?', '["50", "60", "40"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving Two-Step Word Problems' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve a two-step word problem and show your steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Odd and Even Numbers' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Is 7 an odd or even number?', '["Odd", "Even", "Neither"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Odd and Even Numbers' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Test if 12 is odd or even by pairing objects.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Arrays and Repeated Addition' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', '3 rows of 4 objects is the same as which addition?', '["4+4+4", "3+3+3", "4+3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Arrays and Repeated Addition' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Build an array with your own objects and describe it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Equal Groups' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'If you split 12 objects into 3 equal groups, how many in each?', '["3", "4", "5"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Equal Groups' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Make equal groups with your own objects and describe them.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Money: Counting Coins and Bills' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'How much are 2 dimes and 1 nickel worth?', '["15 cents", "20 cents", "25 cents"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Money: Counting Coins and Bills' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Count a group of coins and find the total.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Making Change' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A toy costs 75 cents. You pay a dollar. How much change?', '["15 cents", "25 cents", "35 cents"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Making Change' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Solve a making-change problem of your own.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Identifying Story Characters' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is a character?', '["A person or animal in a story", "The name of the book", "The last page"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Identifying Story Characters' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Name a character from a story you read.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Identifying Story Settings' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is a story''s ''setting''?', '["Where and when it happens", "The main character''s name", "The book''s cover color"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Identifying Story Settings' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Describe the setting of a story you read.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Sequencing Story Events' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What comes first when telling a story in order?', '["The beginning", "The end", "The middle"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Sequencing Story Events' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Retell a story in order using pictures or words.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Two Characters' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What does it mean to ''compare'' two characters?', '["Look at how they are alike and different", "Only read about one", "Skip the story"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Comparing Two Characters' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Compare two characters you know from stories.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Making Predictions' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A ''prediction'' is...', '["A guess about what happens next", "The title of a book", "A character''s name"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Making Predictions' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Make a prediction in a story and check if you were right.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Connecting Text to Self' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What does it mean to ''connect'' a story to yourself?', '["Notice how it reminds you of your own life", "Memorize every word", "Ignore the story"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Connecting Text to Self' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Share how a story reminded you of something in your life.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Story Problems and Solutions' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is a story''s ''solution''?', '["How the problem gets fixed", "The book''s title", "The first page"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Understanding Story Problems and Solutions' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Describe a problem and solution from a story.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing About a Favorite Character' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'When we write an opinion, we should include a...', '["Reason", "Blank page", "Random number"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing About a Favorite Character' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Write or say why you like your favorite character.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Sharing Opinions About Books' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'When sharing an opinion about a book, we should explain...', '["Why we feel that way", "Nothing else", "Only the title"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Sharing Opinions About Books' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Share your opinion about a book you read and why you feel that way.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Identifying the Main Topic' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is the ''main topic'' of a nonfiction book?', '["What it is mostly about", "The last sentence", "The author''s name"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Identifying the Main Topic' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Read a nonfiction book and name its main topic.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Using Text Features in Nonfiction' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is a ''heading'' in a book?', '["A title for a section", "A picture", "The very last word"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Using Text Features in Nonfiction' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find a heading in a book and explain what it tells you.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Two Texts on the Same Topic' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What does it mean to compare two texts?', '["Look at how they are alike and different", "Read only one", "Ignore both"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Comparing Two Texts on the Same Topic' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Compare two books on the same topic.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Cause and Effect' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'In ''It rained, so the ground got wet,'' what is the effect?', '["It rained", "The ground got wet", "Neither"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Cause and Effect' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Make up a cause and effect example of your own.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Making Inferences from Pictures' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What can pictures in a book help us understand?', '["Feelings and details not always in the words", "Nothing useful", "Only colors"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Making Inferences from Pictures' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Look at a picture in a book and describe what you can infer from it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building Vocabulary from Context' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What can help you figure out a new word''s meaning?', '["The words around it", "The book''s cover", "Closing your eyes"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Building Vocabulary from Context' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find a new word in a book and guess its meaning from context.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing a Personal Narrative' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A personal narrative is a story about...', '["Something that really happened to you", "A made-up dragon", "Nothing at all"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing a Personal Narrative' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Write 2-3 sentences about something that happened to you.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing an Opinion Piece' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'An opinion piece should include a...', '["Reason for your opinion", "Random number", "Blank page"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing an Opinion Piece' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Write an opinion sentence about your favorite thing and why.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Using Describing Words' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What do describing words help us do?', '["Picture things more clearly", "Skip the sentence", "Make it shorter"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Using Describing Words' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Describe an object using three describing words.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Points of View' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What is ''point of view''?', '["How a character sees or feels about something", "The book''s title", "The last page"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Comparing Points of View' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Describe how two characters might see the same event differently.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Understanding Cause and Effect Relationships' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A chain of causes and effects is like...', '["Dominoes falling one after another", "A single still picture", "A blank page"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Understanding Cause and Effect Relationships' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Create a 3-step cause and effect chain of your own.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Making and Confirming Predictions' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'After making a prediction, what should we do?', '["Check if it was right", "Forget about it", "Stop reading"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Making and Confirming Predictions' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Make a prediction in a story and confirm if you were right.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Summarizing a Story' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A summary should include...', '["Only the most important parts", "Every single word", "Nothing at all"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Summarizing a Story' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Summarize a story you read in 2-3 sentences.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Identifying Author''s Purpose' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Why might an author write a nonfiction book?', '["To inform readers about facts", "Only to make readers laugh", "For no reason"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Identifying Author''s Purpose' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Find a text and describe why you think the author wrote it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing a Persuasive Piece' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'A persuasive piece tries to...', '["Convince the reader of something", "Just tell a random story", "Confuse the reader"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing a Persuasive Piece' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Write a short persuasive paragraph about something you care about.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing a Research Paragraph' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What should a research paragraph include?', '["Facts about the topic", "Only your opinion", "Nothing at all"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing a Research Paragraph' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Write a short paragraph with 3 facts about a topic you researched.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Using Transition Words' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'Which is a transition word?', '["Finally", "Elephant", "Purple"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Using Transition Words' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Write sentences about your day using transition words.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Revising for Clarity' ORDER BY id DESC LIMIT 1), 1, 'multiple_choice', 'What does it mean to ''revise'' your writing?', '["Reread and improve it", "Throw it away", "Never look at it again"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Revising for Clarity' ORDER BY id DESC LIMIT 1), 2, 'short_answer', 'Revise a sentence you wrote to make it clearer.', NULL, NULL);
