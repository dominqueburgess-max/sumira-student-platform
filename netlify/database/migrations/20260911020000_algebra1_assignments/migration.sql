-- Weekly-topic Classwork/Homework rollout for Algebra 1, continuing the
-- "every course, every studio" commitment. Adds a curated video and 2
-- rigorous assignments (Classwork + Homework) to each of the course's 6
-- 'lesson'-type entries, replacing the old 3-question quiz as each
-- lesson's primary work.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=NkxwGZe5pWo',
    video_caption = 'Khan Academy: Distributive Property with Variables'
WHERE title = 'Expressions, Order of Operations & Properties'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Z7C69xP08d8',
    video_caption = 'Khan Academy: Multi-Step Equation Example'
WHERE title = 'Solving Linear Equations'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=xKH1Evwu150',
    video_caption = 'Khan Academy: Linear Equation Word Problem'
WHERE title = 'Writing Equations from Real-World Context'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=xOxvyeSl0uA',
    video_caption = 'Khan Academy: Multi-Step Inequalities'
WHERE title = 'Solving & Graphing Linear Inequalities'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=MeU-KzdCBps',
    video_caption = 'Khan Academy: Introduction to Slope'
WHERE title = 'Linear Functions, Slope & Rate of Change'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 3%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=gH4IsIEYof0',
    video_caption = 'Khan Academy: Rewriting Roots as Rational Exponents'
WHERE title = 'Properties of Exponents & Radicals'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 4%');

-- Expressions, Order of Operations & Properties ------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Expressions, Order of Operations & Properties' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 1%')),
  'classwork', 'Expressions & Properties Practice Set',
  $t1$Simplify each expression, showing every step and naming the property you use.

1. 5(3x - 4) + 2x
2. 3(2x + 1) - 4(x - 2)
3. 7 + 2(x + 3) - x
4. Evaluate 4(x + 2)^2 - 3 when x = 1, using correct order of operations.
5. A startup's cost expression is 2(3x + 4) - x, where x is units produced. Simplify it, then evaluate the simplified expression for x = 10 units.$t1$,
  $r1$Full credit requires the distributive property correctly applied and like terms correctly combined for problems 1-3, with the property named; correct order-of-operations evaluation shown step by step for problem 4; and a correctly simplified expression AND correct evaluation at x=10 for problem 5.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Expressions, Order of Operations & Properties' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 1%')),
  'homework', 'Build & Simplify Your Own Cost Expression',
  $t2$Design a two-part cost expression for a startup idea of your choice that requires the distributive property to simplify (for example: a materials cost that's multiplied across units, plus a separate fee).

1. Write your original (unsimplified) expression.
2. Simplify it fully, showing the distributive property and combining-like-terms steps separately.
3. Evaluate your simplified expression for 2 different values of x (representing 2 different production quantities), showing your work.
4. Explain in 1-2 sentences why simplifying first makes evaluating for different quantities easier.$t2$,
  $r2$Meets expectations when: the original expression genuinely requires distribution to simplify; both the distribution and combining-like-terms steps are shown separately and correctly; both evaluations are correct with visible substitution; and the explanation shows real understanding of why a simplified formula is more efficient to reuse.$r2$,
  20, 1
);

-- Solving Linear Equations -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving Linear Equations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 1%')),
  'classwork', 'Solving Equations Practice Set',
  $t3$Solve each equation, showing every step and naming the property of equality used.

1. 5x - 18 = 2x + 12
2. 3(x - 4) = 21
3. 7x + 9 = 4x - 6
4. -2(x + 5) = 3x + 20
5. A founder saved $800 and plans to save the same amount each week for 15 weeks to reach a $3,050 goal. Write and solve an equation to find the weekly savings amount.$t3$,
  $r3$Full credit requires correctly solved equations with each equality-property step shown (not skipped) for problems 1-4, and a correctly written equation matching the scenario plus a correctly solved weekly amount for problem 5.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving Linear Equations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 1%')),
  'homework', 'Write & Solve Your Own Savings Goal Equation',
  $t4$Design a realistic savings or fundraising scenario of your own (a launch goal, event fundraiser, equipment purchase, etc.) that requires solving a linear equation.

1. State your starting amount, your goal amount, and how you'll contribute over time (a fixed amount per week, per sale, etc.).
2. Write the equation representing your scenario.
3. Solve it, showing every step and naming the property of equality used at each step.
4. Write your answer as a full sentence in context (not just "x = ...").$t4$,
  $r4$Meets expectations when: the scenario is realistic and fully described; the equation correctly models it; the solution is correct with every property-of-equality step named; and the final answer is stated in a complete, contextual sentence.$r4$,
  20, 1
);

-- Writing Equations from Real-World Context -------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing Equations from Real-World Context' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 2%')),
  'classwork', 'Modeling With Equations Practice Set',
  $t5$Complete all 4 problems, showing your work.

1. A t-shirt business has a $120 one-time equipment cost and $4.25 in materials per shirt. Write the total cost equation C(x), then find the cost of producing 50 shirts.
2. Using the equation from problem 1, how many shirts can be made with a $500 budget? Show your equation-solving work.
3. A tutoring service charges a $25 one-time registration fee plus $30 per session. Write the total cost equation, then find how many sessions someone can afford with $325.
4. Write your own scenario with a fixed cost and a variable cost, write the equation, and use it to answer a specific budget question.$t5$,
  $r5$Full credit requires a correctly written equation and correctly evaluated cost for problem 1; a correctly solved equation for problem 2; a correctly written equation and correctly solved number of sessions for problem 3; and a realistic original scenario in problem 4 with a correct equation and a correctly answered budget question.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing Equations from Real-World Context' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 2%')),
  'homework', 'Model Your Startup''s Full Cost Structure',
  $t6$Design a startup idea with both a fixed (one-time or flat) cost and a variable (per-unit) cost.

1. Clearly state your fixed cost and your variable cost per unit.
2. Write the total cost equation C(x).
3. Use your equation to answer two different budget questions: (a) what is the total cost for a specific quantity you choose, and (b) how many units can you produce with a specific budget you choose? Show all equation-solving work.
4. Explain in 2-3 sentences why separating fixed and variable costs is useful for planning a real business.$t6$,
  $r6$Meets expectations when: the fixed and variable costs are clearly and realistically stated; the equation correctly combines them; both budget questions are answered with correct, fully shown algebra; and the explanation reflects genuine business reasoning, not a restatement of the definitions.$r6$,
  20, 1
);

-- Solving & Graphing Linear Inequalities ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving & Graphing Linear Inequalities' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 2%')),
  'classwork', 'Inequalities Practice Set',
  $t7$Solve each inequality, showing your work and remembering to flip the sign when needed.

1. 3x + 8 <= 26
2. -4x - 6 > 10
3. 5(x - 2) < 3x + 8
4. -2x + 7 >= -15
5. A founder has a maximum budget of $450 for supplies, and each unit of supply costs $18. Write and solve an inequality for how many units (x) they can afford. State your answer in a full sentence.$t7$,
  $r7$Full credit requires correctly solved inequalities with the sign-flip correctly applied where needed (and NOT applied where not needed) for problems 1-4, and a correctly written and solved inequality with a full-sentence contextual answer for problem 5.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving & Graphing Linear Inequalities' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 2%')),
  'homework', 'Design Your Own Budget Constraint',
  $t8$Design a realistic budget-limit scenario of your own (a spending cap, a maximum number of items you can buy, a minimum you need to earn, etc.) that requires an inequality to solve.

1. Describe your scenario and state the constraint in words.
2. Write the inequality representing it.
3. Solve it, showing your work and stating clearly whether you needed to flip the inequality sign and why (or why not).
4. Describe how you would graph your solution on a number line (open or closed circle, direction of shading).$t8$,
  $r8$Meets expectations when: the scenario and constraint are realistic and clearly described; the inequality correctly models the situation; the solution is correct with the sign-flip reasoning explicitly addressed; and the number-line description correctly matches the solution (correct circle type and shading direction).$r8$,
  20, 1
);

-- Linear Functions, Slope & Rate of Change ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Linear Functions, Slope & Rate of Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 3%')),
  'classwork', 'Slope & Rate of Change Practice Set',
  $t9$Complete all 4 problems, showing your work.

1. Find the slope between (3, 8) and (7, 20).
2. A business had 150 customers in month 2 and 330 customers in month 6. Find the rate of change (slope) and state what it means in context.
3. A line passes through (0, 5) and (4, 5). What is the slope, and what does that tell you about the line?
4. Given the data points (1, 40), (3, 90), (5, 140), determine if this represents a linear relationship. Show the rate-of-change calculation between each pair of consecutive points to justify your answer.$t9$,
  $r9$Full credit requires the correct slope with the slope-formula work shown for problem 1; a correct rate of change AND a real contextual sentence for problem 2; a correct slope of 0 with an accurate explanation (horizontal line, no change) for problem 3; and correct rate-of-change calculations between all pairs plus a correct linear/non-linear conclusion for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Linear Functions, Slope & Rate of Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 3%')),
  'homework', 'Track & Analyze a Growth Metric',
  $t10$Choose a business metric you could imagine tracking over time (customers, followers, sales, subscribers).

1. Invent 3 realistic data points showing this metric at 3 different times (e.g. month 1, month 3, month 6).
2. Calculate the rate of change (slope) between each consecutive pair of points, showing your work.
3. State whether the growth appears to be linear (constant rate) or not, and explain how you know.
4. Write a 2-3 sentence interpretation of what the rate of change means for the business in real terms.$t10$,
  $r10$Meets expectations when: the 3 data points are realistic and clearly labeled; both rate-of-change calculations are correct with visible work; the linear/non-linear conclusion correctly follows from whether the rates match; and the interpretation connects the number back to a real business meaning, not just restating the math.$r10$,
  20, 1
);

-- Properties of Exponents & Radicals ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Properties of Exponents & Radicals' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 4%')),
  'classwork', 'Rational Exponents Practice Set',
  $t11$Simplify each expression, showing your reasoning.

1. 25^(1/2)
2. 8^(1/3)
3. 16^(3/4)
4. 9^(-1/2) (write as a fraction)
5. Rewrite the fifth root of x^3 (i.e. the radical expression) as an expression with a rational exponent.$t11$,
  $r11$Full credit requires correct simplified values with visible reasoning (identifying the root and/or power used) for problems 1-4, and a correctly rewritten rational-exponent expression for problem 5.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Properties of Exponents & Radicals' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1') AND title LIKE 'Unit 4%')),
  'homework', 'Radicals & Rational Exponents in Context',
  $t12$Complete all 4 tasks.

1. Simplify 27^(2/3) and 32^(1/5), showing your work for each.
2. Rewrite the square root of x^5 as an expression with a rational exponent.
3. Rewrite y^(3/4) as a radical expression.
4. Explain in 2-3 sentences, using an example, how rational exponents connect to the compounding-growth formulas coming up in the next lesson (why being comfortable with fractional exponents now will make that easier).$t12$,
  $r12$Meets expectations when: both simplifications in problem 1 are correct with work shown; the conversion in problem 2 is correct; the conversion in problem 3 is correct; and the explanation in problem 4 shows genuine forward-looking understanding, not a vague restatement.$r12$,
  20, 1
);
