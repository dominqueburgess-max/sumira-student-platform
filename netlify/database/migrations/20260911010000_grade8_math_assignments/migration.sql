-- Weekly-topic Classwork/Homework rollout for Venture Math 8, continuing
-- the "every course, every studio" commitment. Adds a curated video and 2
-- rigorous assignments (Classwork + Homework) to each of the course's 6
-- 'lesson'-type entries, replacing the old 3-question quiz as each
-- lesson's primary work.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Lh7NMBPFVZw',
    video_caption = 'Khan Academy: How to Approximate Square Roots'
WHERE title = 'Rational vs. Irrational Numbers & Approximation'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=zM_p7tfWvLU',
    video_caption = 'Khan Academy: Exponent Properties Involving Products'
WHERE title = 'Integer Exponents & Their Properties'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=f15zA0PhSek',
    video_caption = 'Khan Academy: Introduction to Solving Equations with Variables on Both Sides'
WHERE title = 'Solving Linear Equations with Variables on Both Sides'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=uzyd_mIJaoc',
    video_caption = 'Khan Academy: The Substitution Method (Systems of Equations)'
WHERE title = 'Systems of Two Linear Equations — Introduction'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=kvGsIo1TmsM',
    video_caption = 'Khan Academy: What Is a Function?'
WHERE title = 'Defining & Evaluating Functions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 3%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=e6upct_qewk',
    video_caption = 'Khan Academy: Translations and Reflections (8th Grade Math)'
WHERE title = 'Transformations: Translations, Reflections & Rotations'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 4%');

-- Rational vs. Irrational Numbers & Approximation ---------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Rational vs. Irrational Numbers & Approximation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 1%')),
  'classwork', 'Approximating Irrationals Practice Set',
  $t1$Complete all 5 problems, showing your work.

1. Approximate √20 to the nearest tenth. State the two perfect squares it falls between first.
2. Approximate √90 to the nearest tenth.
3. Which is bigger: √70 or 8.4? Show the comparison you used to decide.
4. Order these from least to greatest: √15, 3.5, √25, 4.9.
5. Explain in 2-3 sentences why √2 is irrational -- what would have to be true about its decimal for it to be rational, and why that doesn't happen?$t1$,
  $r1$Full credit requires correct perfect-square bounds and a reasonable tenths-place approximation shown for problems 1 and 2; a correct comparison with visible reasoning (e.g. squaring the decimal) for problem 3; a fully correct order for problem 4; and an explanation in problem 5 that shows real understanding of "non-repeating, non-terminating," not just a memorized definition.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Rational vs. Irrational Numbers & Approximation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 1%')),
  'homework', 'Irrational Numbers in Design',
  $t2$Imagine you're designing packaging that needs to be a perfect square with an area of 45 square inches.

1. What is the exact side length (as a square root)? Approximate it to the nearest tenth.
2. Explain why the exact side length can't be written as a simple fraction or terminating decimal.
3. Find one more real-world situation (a circle's dimensions, a diagonal measurement, a growth rate) where an irrational number would show up, and approximate it to the nearest tenth.
4. Order these three approximations from least to greatest and explain how you decided: your packaging side length, √50, and 6.8.$t2$,
  $r2$Meets expectations when: the exact and approximate side lengths are correct with the perfect-square-bounds reasoning shown; the explanation of irrationality is accurate and specific (not generic); a genuine second real-world example is identified and approximated correctly; and the final ordering is correct with visible reasoning.$r2$,
  20, 1
);

-- Integer Exponents & Their Properties --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Integer Exponents & Their Properties' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 1%')),
  'classwork', 'Exponent Rules Practice Set',
  $t3$Simplify each expression, stating which exponent rule you used.

1. 3^4 × 3^2
2. 7^8 ÷ 7^5
3. (2^3)^4
4. 6^0
5. 5^-2 (write as a fraction)
6. A post is shared to 4 people, and each of those shares it with 4 more, repeating for 5 rounds. Write this as an exponent expression and evaluate it.$t3$,
  $r3$Full credit requires the correct simplified value AND the correct named exponent rule for problems 1-5, plus a correctly written exponent expression and correctly evaluated total for problem 6.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Integer Exponents & Their Properties' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 1%')),
  'homework', 'Model a Viral Growth Scenario',
  $t4$Invent a realistic "viral growth" scenario (a social post, a referral program, a rumor spreading, a chain of invitations).

1. Describe the scenario and the constant factor by which it grows each round (for example, each person tells 3 more people).
2. Write the total reach after n rounds as an exponent expression.
3. Evaluate your expression for 3, 5, and 7 rounds, showing your work for each.
4. Use the product-of-powers or quotient-of-powers rule to combine or compare two of your exponent expressions from step 3, showing which rule you used.$t4$,
  $r4$Meets expectations when: the scenario and growth factor are clearly described; the exponent expression correctly represents the scenario; all three evaluations are correct with visible work; and the final step correctly applies and names a real exponent rule (not just recalculated from scratch).$r4$,
  20, 1
);

-- Solving Linear Equations with Variables on Both Sides ----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving Linear Equations with Variables on Both Sides' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 2%')),
  'classwork', 'Break-Even Point Practice Set',
  $t5$Solve each equation, showing every step.

1. 5x + 8 = 2x + 20
2. 3x - 6 = 7x + 10
3. 4(x + 2) = 2x + 14
4. 6x + 5 = 6x + 5 -- what kind of solution is this, and why?
5. Two plans: Plan A costs $40 flat plus $3 per use; Plan B costs $10 flat plus $6 per use. At what number of uses do the two plans cost the same? Write and solve the equation.$t5$,
  $r5$Full credit requires correct solutions with every equality-property step shown for problems 1-3; a correct identification of "infinitely many solutions" with an accurate explanation for problem 4; and a correctly written and solved break-even equation with the answer stated in context (number of uses AND cost) for problem 5.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving Linear Equations with Variables on Both Sides' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 2%')),
  'homework', 'Design Your Own Break-Even Comparison',
  $t6$Design two realistic pricing or business plans of your own (subscriptions, service rates, product deals -- your choice), each with a flat fee and a per-unit cost.

1. Write an equation for each plan's total cost.
2. Set them equal and solve for the number of uses/units where the two plans cost the same, showing every step.
3. State your answer in a full sentence, including both the number of uses and the cost at that point.
4. Explain which plan you'd recommend to someone who expects to use it more than that break-even amount, and why.$t6$,
  $r6$Meets expectations when: both plan equations are realistic and correctly written; the equation is solved correctly with every step shown; the answer sentence correctly states both the break-even quantity and cost; and the recommendation correctly reasons about which plan wins above the break-even point.$r6$,
  20, 1
);

-- Systems of Two Linear Equations — Introduction -----------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Systems of Two Linear Equations — Introduction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 2%')),
  'classwork', 'Solving Systems Practice Set',
  $t7$Solve each system, showing your work.

1. y = 3x + 4 and y = x + 10
2. y = 2x - 1 and y = 2x + 5 -- how many solutions, and why?
3. y = 4x and y = 4x -- how many solutions, and why?
4. Plan A: y = 3x + 60. Plan B: y = 8x + 10. Find the point where the two plans cost the same, and state it as an (x, y) point.$t7$,
  $r7$Full credit requires the correct solution point with substitution work shown for problem 1; a correct "no solution" answer with the parallel-lines reasoning (same slope, different intercept) for problem 2; a correct "infinitely many solutions" answer with the identical-line reasoning for problem 3; and a correctly solved and clearly stated (x, y) point for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Systems of Two Linear Equations — Introduction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 2%')),
  'homework', 'Write and Solve Your Own System',
  $t8$Write a system of two equations representing two different pricing or business plans of your own choosing.

1. Before solving, predict whether you expect one solution, no solution, or infinitely many solutions, based on the slopes and y-intercepts you chose. Explain your prediction.
2. Solve the system, showing your work.
3. State whether your prediction was correct, and if you designed it to have one solution, state the (x, y) point and what it means in the context of your two plans.$t8$,
  $r8$Meets expectations when: the two equations are realistic and clearly written; the prediction correctly reasons from the slopes/intercepts before solving; the system is solved correctly with visible work; and the final interpretation correctly connects the algebra back to the real-world plans.$r8$,
  20, 1
);

-- Defining & Evaluating Functions ---------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Defining & Evaluating Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 3%')),
  'classwork', 'Function Notation Practice Set',
  $t9$Complete all 4 problems, showing your work.

1. If f(x) = 4x + 7, find f(2), f(0), and f(-3).
2. A dog-walking service charges g(h) = 15h, where h is hours walked. Find g(2.5) and explain what the answer means in context.
3. Function A: f(x) = 6x - 2. Function B (table): (1, 5), (3, 15), (5, 25). Which function has a greater rate of change? Show the rate-of-change calculation for Function B.
4. Is the relationship {(1, 2), (1, 5), (3, 8)} a function? Explain why or why not.$t9$,
  $r9$Full credit requires all three function evaluations correct for problem 1; a correct evaluation AND a real-world sentence interpretation for problem 2; a correctly calculated rate of change for Function B with the correct comparison conclusion for problem 3; and a correct function/not-a-function answer with accurate reasoning (same input, different outputs) for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Defining & Evaluating Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 3%')),
  'homework', 'Model Your Venture as a Function',
  $t10$Design a product or service and write a function representing its earnings, where the input is quantity sold or hours worked.

1. Write your function using proper function notation, e.g. f(x) = ...
2. Evaluate your function for 3 different input values, showing your work.
3. Create a second, competing function representing a different pricing structure for a similar product/service.
4. Compare the rates of change of your two functions and explain, in 2-3 sentences, which one earns more as quantity grows.$t10$,
  $r10$Meets expectations when: the function is written in correct notation and models a realistic scenario; all three evaluations are correct with visible substitution; the second competing function is genuinely different; and the comparison correctly identifies and explains the faster-growing function using rate of change.$r10$,
  20, 1
);

-- Transformations: Translations, Reflections & Rotations ----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Transformations: Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 4%')),
  'classwork', 'Transformations Practice Set',
  $t11$Complete all 5 problems, showing your work.

1. Point (4, 6) is translated 3 units left and 2 units up. What are the new coordinates?
2. Point (-5, 2) is reflected over the y-axis. What are the new coordinates?
3. Point (3, -7) is reflected over the x-axis. What are the new coordinates?
4. A logo element at (2, 2) is rotated 180° around the origin. What are the new coordinates? (Hint: 180° rotation sends (x, y) to (-x, -y).)
5. Describe, in words, the difference between a translation and a reflection -- specifically, what stays the same and what changes about the shape.$t11$,
  $r11$Full credit requires correct new coordinates with the transformation rule shown for problems 1-4, and an explanation in problem 5 that correctly identifies that both preserve size/shape (rigid transformations) while reflections flip orientation and translations only slide position.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Transformations: Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-math-8') AND title LIKE 'Unit 4%')),
  'homework', 'Design a Logo Using Transformations',
  $t12$Design (describe in words with coordinates -- no need to actually draw) a simple logo made of at least 3 key points.

1. List the original coordinates of your 3+ points.
2. Apply a translation of your choice to all points and list the new coordinates.
3. Apply a reflection (over the x-axis or y-axis, your choice) to the ORIGINAL points and list those new coordinates separately.
4. Explain in 2-3 sentences why a designer might use these transformations to create a repeating pattern or a symmetric brand mark.$t12$,
  $r12$Meets expectations when: at least 3 original points are listed; the translation is applied correctly and consistently to all points; the reflection is applied correctly to all original points; and the explanation shows genuine understanding of how transformations create visual repetition or symmetry in real design work.$r12$,
  20, 1
);
