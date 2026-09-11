-- Weekly-topic Classwork/Homework rollout for Algebra 2, continuing the
-- "every course, every studio" commitment. Adds a curated video and 2
-- rigorous assignments (Classwork + Homework) to each of the course's 6
-- 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=ENFNyNPYfZU',
    video_caption = 'Khan Academy: Shifting & Reflecting Functions'
WHERE title = 'Function Families Review & Transformations'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=W84lObmOp8M',
    video_caption = 'Khan Academy: Introduction to Function Inverses'
WHERE title = 'Inverse Functions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=fGThIRpWEE4',
    video_caption = 'Khan Academy: Multiplying Binomials and Polynomials'
WHERE title = 'Polynomial Operations & Factoring'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=tZKzaF28sOk',
    video_caption = 'Khan Academy: Polynomial End Behavior'
WHERE title = 'Graphing Polynomial Functions & End Behavior'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=i7idZfS8t8w',
    video_caption = 'Khan Academy: How to Use the Quadratic Formula'
WHERE title = 'Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 3%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=m4eiYHL3PP8',
    video_caption = 'Khan Academy: Extraneous Solutions of Radical Equations'
WHERE title = 'Radical Equations & Functions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 4%');

-- Function Families Review & Transformations -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Function Families Review & Transformations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 1%')),
  'classwork', 'Transformations Practice Set',
  $t1$Complete all 5 problems, starting from the base function f(x) = x^2 unless stated otherwise.

1. Describe the transformations in g(x) = f(x) + 4.
2. Describe the transformations in g(x) = f(x - 5).
3. Describe the transformations in g(x) = 2f(x).
4. Describe the transformations in g(x) = -f(x).
5. Describe ALL transformations in g(x) = -3(x + 2)^2 - 4, and explain what each one could represent in a real cost or growth model (for example: a shift representing a delayed start, a stretch representing a faster growth rate, a reflection representing declining rather than rising values).$t1$,
  $r1$Full credit requires each transformation in problems 1-4 correctly identified (direction and amount); problem 5 must correctly identify all 3 transformations (horizontal shift, vertical shift, vertical stretch, reflection) present in the combined function AND connect each to a plausible real-world meaning, not just a restated math description.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Function Families Review & Transformations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 1%')),
  'homework', 'Model a Pricing Change With Transformations',
  $t2$Imagine your venture changes its pricing or cost structure partway through the year.

1. Write a base cost function f(x) = x^2 (x = units produced).
2. Write a new transformed function g(x) that models your changed pricing (choose specific shift, stretch, and/or reflection values).
3. State exactly which transformations you applied and their values.
4. Explain, in business terms, what real-world change each transformation represents (e.g., a new fixed cost, a change in production efficiency, a discount).
5. Evaluate both f(x) and g(x) at x = 10 and compare the results.$t2$,
  $r2$Meets expectations when: the transformed function g(x) is written correctly reflecting the stated transformations; the business explanation for each transformation is specific and plausible (not generic); and both functions are evaluated correctly at x=10 with a meaningful comparison.$r2$,
  20, 1
);

-- Inverse Functions -------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Inverse Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 1%')),
  'classwork', 'Inverse Functions Practice Set',
  $t3$Complete all 4 problems, showing your work.

1. Find the inverse of f(x) = 4x - 12.
2. Verify your answer to problem 1 is correct by computing f(f^-1(x)) and confirming it equals x.
3. Find the inverse of f(x) = 3x + 9.
4. A venture's revenue function is f(x) = 40x + 500 (x = units sold). Find f^-1(x) and use it to determine how many units are needed for $3,700 in revenue.$t3$,
  $r3$Full credit requires the correct inverse function with steps shown (swap x/y, solve for y) for problems 1 and 3; a correct verification computation for problem 2; and a correct inverse plus a correct units-needed answer with work shown for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Inverse Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 1%')),
  'homework', 'Build a Revenue Goal Calculator',
  $t4$Design a revenue function for your own venture idea.

1. Write your revenue function f(x) = mx + b (x = units sold), choosing realistic values for m (price per unit) and b (any fixed revenue like a deposit or grant).
2. Find the inverse function f^-1(x) algebraically, showing every step.
3. Verify your inverse is correct by composition.
4. Use your inverse function to calculate how many units you'd need to sell to hit 3 different revenue goals of your choice.
5. Explain in 2-3 sentences why a business owner would find an inverse function more useful than the original function for planning sales targets.$t4$,
  $r4$Meets expectations when: the revenue function is realistic; the inverse is derived correctly with all algebra steps shown; the verification by composition is correct; all 3 revenue-goal calculations are correct; and the final explanation shows genuine understanding of why solving "backwards" (output to input) matters for planning.$r4$,
  20, 1
);

-- Polynomial Operations & Factoring -----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Polynomial Operations & Factoring' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 2%')),
  'classwork', 'Polynomial Operations Practice Set',
  $t5$Complete all 5 problems, showing your work.

1. Multiply: (x + 4)(x + 6).
2. Multiply: (2x - 3)(x + 5).
3. Factor: x^2 + 8x + 15.
4. Factor: x^2 - 2x - 24.
5. Multiply (3x - 2)(x + 4), then factor x^2 + 9x + 20, and explain in 1-2 sentences how factoring "undoes" multiplying.$t5$,
  $r5$Full credit requires correctly expanded products with FOIL/distribution work shown for problems 1, 2, and the first part of problem 5; correct factored forms with the number pair (multiply-to/add-to) reasoning shown for problems 3, 4, and the second part of problem 5; and a correct explanation of the multiply/factor relationship.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Polynomial Operations & Factoring' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 2%')),
  'homework', 'Combine Two Cost Formulas Into One Model',
  $t6$Imagine your venture has two separate cost components that combine multiplicatively (for example: cost per batch × number of batches, where each factor is itself a linear expression in x).

1. Write two linear expressions representing your two cost components (in terms of x).
2. Multiply them together to get a single polynomial cost function, showing your work.
3. Factor your resulting polynomial back into its two original linear factors (if it doesn't factor nicely, adjust your original expressions until it does).
4. Explain what the roots (zeros) of your factored polynomial would represent in your business context (e.g., break-even or shutdown points).
5. Explain in 1-2 sentences why a business analyst might prefer the factored form over the expanded form when looking for break-even points.$t6$,
  $r6$Meets expectations when: both linear expressions are realistic; the multiplication is carried out correctly; the resulting polynomial factors back correctly to the original expressions; the roots are correctly interpreted in business terms; and the final explanation shows genuine understanding of why factored form reveals zeros more directly.$r6$,
  20, 1
);

-- Graphing Polynomial Functions & End Behavior --------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Graphing Polynomial Functions & End Behavior' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 2%')),
  'classwork', 'End Behavior Practice Set',
  $t7$Complete all 4 problems.

1. State the end behavior of f(x) = 2x^3 - 5x + 1 (degree, leading coefficient, and both ends' direction).
2. State the end behavior of f(x) = -x^4 + 3x^2 - 2.
3. State the end behavior of f(x) = -5x^5 + 2x^2.
4. Describe the end behavior of f(x) = 3x^4 - 2x^2 + 1, and explain, in business terms, what this long-term trend might represent if f(x) modeled a company's total costs.$t7$,
  $r7$Full credit requires the correct degree, leading coefficient, and both ends' direction correctly stated with reasoning for problems 1-3; and a correct end-behavior description plus a plausible, specific business interpretation for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Graphing Polynomial Functions & End Behavior' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 2%')),
  'homework', 'Warn Investors About Long-Term Trends',
  $t8$Design a polynomial cost or profit function for your venture with degree 3 or 4.

1. Write your polynomial function.
2. State its degree and leading coefficient.
3. Determine and describe its end behavior (both directions).
4. Write a short "investor memo" (3-5 sentences) explaining, in plain business language, what your function's long-term trend implies for the company -- is this a warning sign or a good sign, and why?
5. Explain in 1-2 sentences why end behavior matters even though it describes values far beyond any realistic near-term production level.$t8$,
  $r8$Meets expectations when: the polynomial is a genuine degree-3-or-4 function; the degree and leading coefficient are correctly identified; the end behavior is correctly determined; the investor memo accurately translates the math conclusion into a clear business implication; and the final explanation shows real understanding of why long-term trend analysis still has practical value.$r8$,
  20, 1
);

-- Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula --

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 3%')),
  'classwork', 'Solving Quadratics Practice Set',
  $t9$Complete all 4 problems, showing your work and choosing the most efficient method for each.

1. Solve x^2 - 5x + 6 = 0.
2. Solve 3x^2 + 2x - 8 = 0.
3. Solve 2x^2 + 3x - 5 = 0 using the quadratic formula.
4. Explain, for each of the 3 problems above, why you chose the method you used (factoring vs. the quadratic formula).$t9$,
  $r9$Full credit requires correct solutions with all algebra steps shown for problems 1-3, using an appropriate and efficient method for each; and a specific, accurate justification of method choice for each problem in problem 4 (not just "it was easier").$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 3%')),
  'homework', 'Find Your Break-Even Points',
  $t10$Design a quadratic profit function P(x) = ax^2 + bx + c for your venture (x = units sold).

1. Write your profit function with specific values for a, b, and c.
2. Set P(x) = 0 and solve for x to find your break-even points, using the quadratic formula.
3. State both break-even points clearly, in the context of "units sold."
4. Explain in 2-3 sentences what happens to profit between your two break-even points, and outside of them.
5. Explain why a business would care about knowing its break-even points before launching a product.$t10$,
  $r10$Meets expectations when: the profit function is realistic and produces two real break-even points; the quadratic formula is applied correctly with all steps shown; the break-even points are correctly interpreted in context; and the explanation of profit behavior between/outside the break-even points is accurate (positive between roots for a downward parabola, or the correct equivalent for the student's chosen coefficients).$r10$,
  20, 1
);

-- Radical Equations & Functions -------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Radical Equations & Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 4%')),
  'classwork', 'Radical Equations Practice Set',
  $t11$Complete all 4 problems, showing your work and checking each solution.

1. Solve √(x + 3) = 5, and check your solution.
2. Solve √(2x - 1) = 7, and check your solution.
3. Solve √x = -4. Is there a real solution? Explain using the check step.
4. Solve √(3x + 4) = x, and check BOTH values you get algebraically to determine which (if any) are extraneous.$t11$,
  $r11$Full credit requires correctly isolated and solved equations with the check step shown for problems 1 and 2; a correct "no real solution" conclusion with reasoning for problem 3; and for problem 4, both algebraic solutions found and correctly checked, with any extraneous solution identified and explained.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Radical Equations & Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2') AND title LIKE 'Unit 4%')),
  'homework', 'Model Diminishing Returns With a Radical Function',
  $t12$Radical functions often model diminishing returns -- where each additional unit of input produces a smaller increase in output (e.g., additional ad spend, additional employees training a new hire).

1. Write a radical function f(x) = a√(x) + b representing some diminishing-returns relationship in your venture (define what x and f(x) represent).
2. Evaluate your function at 3 different input values and show that the OUTPUT increases by smaller and smaller amounts as the input increases by equal steps.
3. Set up and solve a radical equation to find what input value produces a specific target output of your choice, checking your solution.
4. Explain in 2-3 sentences why a business should expect diminishing returns in the scenario you chose, and why blindly increasing that input forever would be a poor strategy.$t12$,
  $r12$Meets expectations when: the radical function and its variables are clearly and realistically defined; the 3 evaluated outputs genuinely demonstrate shrinking gains (diminishing returns) with the pattern shown; the radical equation is set up and solved correctly with the solution checked; and the final explanation shows genuine understanding of diminishing returns as a business concept, not just a restated math fact.$r12$,
  20, 1
);
