-- Weekly-topic Classwork/Homework rollout for Venture Math 7 (part of the
-- "every course, every studio" commitment -- Grade 6 Math was the reference
-- implementation). Adds a curated video and 2 rigorous assignments
-- (Classwork + Homework) to each of the course's 6 'lesson'-type entries,
-- replacing the old 3-question quiz as each lesson's primary work.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=rj7DweP8e58',
    video_caption = 'Khan Academy: Identifying the Constant of Proportionality'
WHERE title = 'Proportional Relationships & the Constant of Proportionality'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'));

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=7IU-TOOSxPM',
    video_caption = 'Khan Academy: Identifying Proportional Relationships from Graphs'
WHERE title = 'Graphing & Writing Equations for Proportional Relationships'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'));

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=NQSN00zL5gg',
    video_caption = 'Khan Academy: Adding and Subtracting Negative Numbers'
WHERE title = 'Adding & Subtracting Rational Numbers'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'));

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=sy0YSJHIvtk',
    video_caption = 'Khan Academy: Multiplying and Dividing Rational Numbers'
WHERE title = 'Multiplying & Dividing Rational Numbers'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'));

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=3NHSwiv_pSE',
    video_caption = 'Khan Academy: Combining Like Terms and the Distributive Property'
WHERE title = 'Simplifying Expressions with Rational Coefficients'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'));

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=ZeY1mgog2YQ',
    video_caption = 'Khan Academy: Identifying Scale Factor in Drawings'
WHERE title = 'Scale Drawings & Scale Factor'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'));

-- Proportional Relationships & the Constant of Proportionality ------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Proportional Relationships & the Constant of Proportionality' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'classwork', 'Spot the Proportional Relationship',
  $t1$Complete all 5 problems. Show your work -- an answer with no reasoning shown will be sent back for revision.

1. A juice recipe uses 2 cups of water for every 5 cups of juice concentrate. Is water proportional to concentrate? Write the equation y = kx and identify k.

2. A rental company charges a $15 flat fee plus $3 per hour. Is total cost proportional to hours rented? Explain using the "does it pass through the origin" test.

3. A table shows: 3 candles use 6 oz of wax, 5 candles use 10 oz, 8 candles use 16 oz. Verify this is proportional by checking the ratio is constant for all three pairs, then write the equation.

4. For the equation y = 4.5x, what does the number 4.5 represent in a real-world situation of your choosing? Write one full sentence.

5. Su Mira scenario: a young entrepreneur sells friendship bracelets for $3.50 each, with no other fees. Write the equation relating total sales (y) to bracelets sold (x), identify k, and use it to find the sales for 12 bracelets.$t1$,
  $r1$Full credit requires: correct proportionality equation and identified k for problems 1 and 3, with visible ratio-checking work for problem 3; a correct "not proportional" answer with the origin-test reasoning for problem 2; a real, specific interpretation of k (not just "it's the slope") for problem 4; and a correct equation, k value, and computed sales total with visible multiplication for problem 5.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Proportional Relationships & the Constant of Proportionality' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'homework', 'Proportional or Not? — A Real Product Line',
  $t2$Pick a product or service you could imagine selling (physical goods, a service like dog-walking, digital downloads, etc.).

1. Describe the pricing so that cost IS purely proportional to quantity -- no flat fee. Write the equation y = kx and state what k represents.
2. Now describe a DIFFERENT, realistic pricing plan for the same product that is NOT proportional (for example, adding a flat setup fee, a subscription base cost, or a bulk discount tier). Explain specifically why it fails the proportionality test.
3. As a business owner, explain in 2-3 sentences one real advantage of proportional pricing and one real advantage of non-proportional pricing.$t2$,
  $r2$Meets expectations when: the proportional pricing plan has a correct equation with k clearly identified and explained in business terms; the non-proportional plan is genuinely non-proportional (not accidentally still proportional) with a correct explanation of why it fails the origin/constant-ratio test; and the final reflection shows real reasoning about trade-offs, not a generic restatement.$r2$,
  20, 1
);

-- Graphing & Writing Equations for Proportional Relationships -------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Graphing & Writing Equations for Proportional Relationships' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'classwork', 'Reading k From Every Format',
  $t3$Complete all 4 problems, showing your work for each.

1. From this table, find k and write the equation: (2, 9), (4, 18), (6, 27).
2. A graph of a proportional relationship passes through (0,0) and (5, 20). Find k (the slope) and write the equation.
3. "It costs $2.75 per pound" is a verbal description of a proportional relationship. Write the equation and state what x and y each represent.
4. For the equation y = 12x, create your own table of 3 points that satisfy it, then describe in words what the graph would look like (starting point, direction, steepness).$t3$,
  $r3$Full credit requires: correct k and equation for problem 1 with the ratio-check shown for at least two pairs; correct k = 4 and equation for problem 2 with the slope calculation shown; a correct equation with x and y clearly defined in problem 3; and a correct 3-point table plus an accurate verbal description (through the origin, positive slope, steepness matching k=12) for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Graphing & Writing Equations for Proportional Relationships' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'homework', 'Build Your Venture''s Cost Line',
  $t4$Design a simple venture (a product or service) with a purely proportional cost structure (no flat fee).

1. Build a table of at least 4 data points showing quantity vs. total cost.
2. Verify the ratio is constant across all 4 points -- show the division for each.
3. Write the equation y = kx for your venture.
4. Describe exactly what the graph of your line would look like if you plotted it (where it starts, which direction it goes, and how steep it is compared to a line with a smaller k).$t4$,
  $r4$Meets expectations when: the table has 4 real, consistent data points; the constant-ratio check is shown and correct for all 4; the equation matches the table; and the graph description correctly connects steepness to the size of k, showing real understanding rather than a memorized phrase.$r4$,
  20, 1
);

-- Adding & Subtracting Rational Numbers ------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Adding & Subtracting Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'classwork', 'Ledger Math Practice Set',
  $t5$Solve all 6 problems, showing each step.

1. -8 + 15
2. 6 - (-10)
3. -4.5 + (-3.25)
4. 12 - 20
5. -7 + 7 - 3
6. A venture's ledger shows: -$18, +$32, -$9, +$14, -$6. Find the running total after each entry and the final total.$t5$,
  $r5$Full credit requires correct answers with the sign-rule reasoning shown (not just a final number) for problems 1-5, and a correct running total shown after each of the 5 entries plus a correct final total for problem 6.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Adding & Subtracting Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'homework', 'Your Own 7-Day Ledger',
  $t6$Create a realistic 7-day ledger for a small venture or your own allowance/spending, using at least 3 negative entries (expenses) and 3 positive entries (income), with at least one decimal amount.

- List each day's entry
- Calculate the running total after each day (show your addition/subtraction)
- Write 2-3 sentences: was the venture profitable overall? What would you change about day-to-day spending to improve the final total?$t6$,
  $r6$Meets expectations when: the ledger has 7 realistic entries meeting the negative/positive/decimal requirements; running totals are shown and correct after each day; and the written reflection directly references the actual numbers in the ledger rather than generic statements.$r6$,
  20, 1
);

-- Multiplying & Dividing Rational Numbers ----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Multiplying & Dividing Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'classwork', 'Sign Rules & Scaling Practice',
  $t7$Solve all 6 problems, showing your work.

1. -6 × 7
2. -9 × (-4)
3. 24 ÷ (-3)
4. -5/8 × 4
5. A recipe uses 2/3 cup of flour per batch. How much flour is needed for 9 batches?
6. A bulk recipe makes 12 servings using 9 cups of an ingredient. How many cups are needed to make only 4 servings? Show your scaling work.$t7$,
  $r7$Full credit requires correct answers with sign-rule reasoning shown for problems 1-4, and correctly scaled-up (problem 5) and scaled-down (problem 6) quantities with visible multiplication/division work, not just final answers.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Multiplying & Dividing Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'homework', 'Scale a Real Recipe or Supply List',
  $t8$Find a real recipe or supply list (from your kitchen, a cookbook, or a craft project) that lists ingredient amounts for a specific number of servings or units.

1. Record the original recipe/list and how many servings/units it makes.
2. Show your work to scale it UP to make 5 times the original amount.
3. Show your work to scale it DOWN to make 1/4 of the original amount.
4. At least one ingredient amount must involve a fraction or decimal in your scaling work.$t8$,
  $r8$Meets expectations when: the original recipe/list is real and clearly recorded; the scale-up (×5) work is shown correctly for every ingredient; the scale-down (×1/4) work is shown correctly for every ingredient; and at least one calculation genuinely involves a fraction or decimal, not just whole numbers.$r8$,
  20, 1
);

-- Simplifying Expressions with Rational Coefficients ------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Simplifying Expressions with Rational Coefficients' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'classwork', 'Combine Like Terms Practice Set',
  $t9$Simplify each expression fully, showing every step.

1. 3.5x + 6 - 1.5x + 2
2. 4(2n - 3.5)
3. 2/3x + 5 - 1/3x + 1
4. 3(1.5y + 4) - 2y
5. A venture's cost formula is 5.5n + 12 (materials plus a flat fee), and a $2.5 per-item packaging fee is added on. Write the combined expression and simplify it.$t9$,
  $r9$Full credit requires all 4 practice expressions simplified correctly with the combining-like-terms step visible (not just the final answer), and a correctly written and simplified combined cost formula for problem 5 with visible work.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Simplifying Expressions with Rational Coefficients' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'homework', 'Build & Simplify Your Own Cost Formula',
  $t10$Design a two-part cost formula for a venture of your choice, where each part uses a decimal or fraction coefficient (for example: a materials cost per item plus a separate fee that also scales with quantity, like shipping or a percentage-based commission).

1. Write both parts of the formula separately, in words and as expressions.
2. Combine them into one expression and simplify by combining like terms.
3. Use your simplified formula to calculate the total cost for a specific quantity (your choice), showing the substitution and arithmetic.$t10$,
  $r10$Meets expectations when: both original expressions genuinely use decimal or fraction coefficients; the combined expression is simplified correctly with the like-terms step visible; and the final numeric calculation correctly substitutes into the SIMPLIFIED formula (not the original) with all arithmetic shown.$r10$,
  20, 1
);

-- Scale Drawings & Scale Factor ---------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Scale Drawings & Scale Factor' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'classwork', 'Scale Factor Practice Set',
  $t11$Solve all 5 problems, showing your work.

1. A drawing uses a scale of 1 inch = 5 inches. A part in the drawing measures 4 inches. What is the actual length?
2. Using the same scale (1:5), an actual object is 35 inches long. How long is it in the drawing?
3. A scale drawing has an area of 8 square inches at a scale factor of 1:3. What is the actual area? Show why you use the square of the scale factor.
4. Two drawings of the same object use scales 1:2 and 1:4. Which drawing is larger, and by what factor?
5. Su Mira scenario: a young entrepreneur is designing packaging. Their prototype sketch uses a scale of 1 inch = 2.5 inches. If the sketch shows a box that is 3 inches tall, how tall is the actual box?$t11$,
  $r11$Full credit requires correct actual/drawing lengths with the scale-factor multiplication or division shown for problems 1, 2, and 5; correct area calculated using the squared scale factor with an explanation of why area scales differently than length for problem 3; and a correct comparison with reasoning for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Scale Drawings & Scale Factor' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))),
  'homework', 'Design Your Own Scale Drawing',
  $t12$Describe (in words and with labeled measurements -- no need to actually draw) a scale drawing of a real or invented product prototype, room, or object.

1. State your scale factor (for example, 1 inch = 4 inches).
2. List at least 3 measurements as they'd appear in your scale drawing, and calculate the actual measurement for each.
3. Pick one flat surface from your design and state its area in the drawing; calculate the actual area using the squared scale factor.
4. Explain in 2-3 sentences why a business (like a packaging or furniture company) would use scale drawings instead of only working at full size.$t12$,
  $r12$Meets expectations when: a clear scale factor is stated; all 3 measurements are correctly converted from drawing to actual size with visible multiplication; the area calculation correctly applies the squared scale factor; and the explanation shows genuine understanding of why scale drawings are practical (cost, space, planning), not a generic restatement.$r12$,
  20, 1
);
