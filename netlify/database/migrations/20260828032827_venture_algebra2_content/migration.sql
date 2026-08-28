-- Algebra II (Grade 11) Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Algebra II Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including a small project per early unit, 2 major STEAM/entrepreneurial projects (L8 and capstone
-- L15), and a Flex Week cumulative review (L12).

UPDATE courses SET status = 'published' WHERE slug = 'venture-algebra-2';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-algebra-2'), 'Unit 1: Functions & Their Graphs', 0),
((SELECT id FROM courses WHERE slug='venture-algebra-2'), 'Unit 2: Polynomial Functions & Operations', 1),
((SELECT id FROM courses WHERE slug='venture-algebra-2'), 'Unit 3: Quadratic Functions & Complex Numbers', 2),
((SELECT id FROM courses WHERE slug='venture-algebra-2'), 'Unit 4: Rational & Radical Functions (Intro)', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Function Families Review & Transformations', 1, 'lesson',
  $lesson$## Transforming a Base Function Into Your Pricing Model

Welcome to Algebra II! This year, you'll work with a wider family of functions — quadratic, polynomial, rational, and radical — starting with how transformations reshape any base function.

### Key Transformation Rules

For a base function $f(x)$:

- $f(x) + k$ shifts the graph **up** k units (or down if k is negative)
- $f(x - h)$ shifts the graph **right** h units (or left if h is negative)
- $a \cdot f(x)$ **stretches** the graph vertically if $|a| > 1$, or **compresses** it if $0 < |a| < 1$
- $-f(x)$ **reflects** the graph over the x-axis

### Worked Example

If a base cost function is $f(x) = x^2$, then $f(x) = 2(x-3)^2 + 5$ represents that same parabola shifted right 3, up 5, and stretched vertically by a factor of 2 — perhaps modeling how a business's costs grow faster than a simple quadratic once a new, more expensive production phase (shift) begins.

### Your Turn

Starting from the base function $f(x) = x^2$, describe the transformations applied in $g(x) = -3(x+2)^2 - 4$, and explain what each transformation could represent in a real cost or growth model.$lesson$,
  'HSF-IF.C.7, HSF-BF.B.3', 'Graph functions from key function families, and identify the effect of transformations on the graph.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Inverse Functions', 2, 'lesson',
  $lesson$## Inverse Functions: Solving Backwards

An **inverse function**, written $f^{-1}(x)$, "undoes" what the original function does — swapping the roles of input and output.

### Finding an Inverse

1. Replace $f(x)$ with y.
2. Swap x and y.
3. Solve for y.
4. Replace y with $f^{-1}(x)$.

### Worked Example

A venture's revenue function is $f(x) = 50x + 200$ (x = units sold). To find how many units are needed for a target revenue, find the inverse:

$$y = 50x + 200$$
$$x = 50y + 200$$
$$x - 200 = 50y$$
$$y = \frac{x - 200}{50} = f^{-1}(x)$$

If the target revenue is $2,700: $f^{-1}(2700) = \frac{2700-200}{50} = \frac{2500}{50} = 50$ units.

### Verifying Inverses

Two functions are true inverses if $f(f^{-1}(x)) = x$ and $f^{-1}(f(x)) = x$.

### Your Turn

Find the inverse of $f(x) = 4x - 12$, then verify your answer is correct by composing $f(f^{-1}(x))$ and confirming it equals x.$lesson$,
  'HSF-BF.B.4', 'Find inverse functions, and verify that two functions are inverses by composition.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Unit 1 Quiz: Piecewise Functions', 3, 'quiz',
  $lesson$## Unit 1 Quiz: Piecewise Functions

A **piecewise function** applies different rules for different intervals of the domain — exactly how tiered pricing, shipping costs, or tax brackets actually work in the real world. This quiz checks your ability to evaluate and interpret piecewise functions, such as:

$$f(x) = \begin{cases} 5x & \text{if } 0 \leq x \leq 10 \\ 4x + 10 & \text{if } x > 10 \end{cases}$$$lesson$,
  'HSF-IF.B.6, HSF-IF.C.7b', 'Graph piecewise-defined functions, including step functions and absolute value functions, and calculate rates of change.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Small Project: Model My Day', 4, 'practice',
  $lesson$## Small Project: Model My Day

### Piecewise Functions in the Real World

Tiered pricing — like a subscription service that charges one rate for the first 5 hours and a discounted rate after that — is a piecewise function in action.

### Worked Example

A tutoring service charges $30/hour for the first 3 hours, then $20/hour for any additional hours in the same week:

$$f(x) = \begin{cases} 30x & \text{if } 0 \leq x \leq 3 \\ 90 + 20(x - 3) & \text{if } x > 3 \end{cases}$$

$f(5) = 90 + 20(2) = 130$ — 5 hours of tutoring costs $130.

### The Challenge

Design a tiered pricing structure for a product or service of your own (e.g., a subscription box, a service business, a bulk-order discount plan).

1. Write your piecewise function with at least 2 pieces (segments).
2. Evaluate your function for 3 different input values, at least one from each piece.
3. Explain, in 2-3 sentences, why a business might choose tiered pricing instead of a single flat rate.

### Submission

Show your full piecewise function, your 3 evaluations, and your written explanation in the short-answer box below.$lesson$,
  'HSF-IF.C.7b', 'Build and interpret a piecewise function modeling a real schedule or tiered pricing structure.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Polynomial Operations & Factoring', 5, 'lesson',
  $lesson$## Polynomials: Simplifying Multi-Part Cost Models

A polynomial is a sum of terms with non-negative integer exponents. Just like integers, polynomials can be added, subtracted, multiplied, and factored — closed operations that keep the result a polynomial too.

### Worked Example — Multiplying

A venture's total cost combines two multi-part formulas: $(2x + 3)(x - 5)$

$$= 2x^2 - 10x + 3x - 15 = 2x^2 - 7x - 15$$

### Worked Example — Factoring

Factor $x^2 + 7x + 12$: find two numbers that multiply to 12 and add to 7 — those are 3 and 4.

$$x^2 + 7x + 12 = (x + 3)(x + 4)$$

Factoring is essential for finding the roots (zeros) of a function — which, in a business context, often represent break-even points.

### Your Turn

Multiply $(3x - 2)(x + 4)$, then factor $x^2 + 9x + 20$, showing your reasoning for each.$lesson$,
  'HSA-APR.A.1, HSA-APR.B.2-3', 'Understand that polynomials form a system analogous to integers; add, subtract, multiply, and factor polynomials.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Graphing Polynomial Functions & End Behavior', 6, 'lesson',
  $lesson$## Reading the Long-Term Trend of a Business

**End behavior** describes what a graph does as x approaches positive or negative infinity — in business terms, what happens to a trend far into the future (or far in the past).

### The Rule

For a polynomial with leading term $ax^n$:

- If n is **even** and a is **positive**: both ends point up
- If n is **even** and a is **negative**: both ends point down
- If n is **odd** and a is **positive**: left end down, right end up
- If n is **odd** and a is **negative**: left end up, right end down

### Worked Example

A profit model $P(x) = -2x^3 + 5x^2 + 10$ has an odd degree (3) with a negative leading coefficient, so as x gets very large, profit trends toward negative infinity — meaning at extremely high production levels, this model predicts costs eventually overwhelm revenue (a realistic warning sign for over-scaling a business).

### Your Turn

Describe the end behavior of $f(x) = 3x^4 - 2x^2 + 1$ and explain, in business terms, what this long-term trend might represent if $f(x)$ modeled a company's total costs.$lesson$,
  'HSF-IF.C.7c', 'Graph polynomial functions, identifying zeros and describing end behavior using the degree and leading coefficient.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Unit 2 Quiz: Polynomial Division & the Remainder Theorem', 7, 'quiz',
  $lesson$## Unit 2 Quiz: Polynomial Division & the Remainder Theorem

The **Remainder Theorem** states that when a polynomial $f(x)$ is divided by $(x - a)$, the remainder equals $f(a)$. This gives a fast way to test whether a value is a root of a polynomial (a root gives a remainder of 0). This quiz checks your ability to perform polynomial division and apply the Remainder Theorem.$lesson$,
  'HSA-APR.B.6-7', 'Rewrite simple rational expressions using polynomial division, and apply the Remainder Theorem.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'MAJOR PROJECT 1: Profit Optimization Lab', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Profit Optimization Lab

### Driving Question

**"What price or production level maximizes a business's profit?"**

### The Challenge

Model an original venture's profit as a polynomial (quadratic) function.

1. **Write a revenue function** $R(x) = px$ for a chosen price p (per unit) and units sold x.
2. **Write a cost function** $C(x)$ combining fixed and variable costs.
3. **Write your profit function** $P(x) = R(x) - C(x)$, and simplify it into standard polynomial form.
4. **Find the maximum profit.** If your profit function is quadratic, find the vertex (using $x = -b/2a$) — this x-value represents the production level that maximizes profit. Calculate the maximum profit at that point.
5. **Find break-even points.** Factor or use the quadratic formula to find the roots (zeros) of your profit function — these represent the production levels where profit is exactly zero.
6. **Reflection.** In 3-5 sentences, interpret your results: what production level should this business target, and what happens if they produce too little or too much?

### What Makes This a STEAM + Entrepreneurship Project

You're using polynomial modeling and optimization — exactly the mathematical process behind real pricing and production decisions in any business.

### Submission

Show your revenue, cost, and profit functions, your maximum-profit calculation, your break-even points, and your written reflection in the short-answer boxes below.$lesson$,
  'HSA-APR + HSF-IF', 'Cumulative application of polynomial modeling to find maximum profit and break-even points for a business.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula', 9, 'lesson',
  $lesson$## Three Ways to Solve Any Quadratic

Every quadratic equation $ax^2 + bx + c = 0$ can be solved with the **quadratic formula**:

$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

This always works — but factoring is often faster when possible, and completing the square is especially useful for rewriting a quadratic in vertex form.

### Worked Example — Quadratic Formula

Solve $2x^2 + 3x - 5 = 0$: here a=2, b=3, c=-5.

$$x = \frac{-3 \pm \sqrt{9 - 4(2)(-5)}}{4} = \frac{-3 \pm \sqrt{49}}{4} = \frac{-3 \pm 7}{4}$$

So $x = 1$ or $x = -2.5$.

### Choosing a Method

- **Factoring** — fastest when the quadratic factors nicely (whole-number roots)
- **Completing the square** — best for finding vertex form, or when factoring is hard
- **Quadratic formula** — always works, especially useful when the discriminant ($b^2 - 4ac$) is negative (complex roots — next lesson!)

### Your Turn

Solve $x^2 - 5x + 6 = 0$ by factoring, and solve $3x^2 + 2x - 8 = 0$ using the quadratic formula. Explain why you chose each method.$lesson$,
  'HSA-REI.B.4', 'Solve quadratic equations by factoring, completing the square, and the quadratic formula, choosing the most efficient method.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Introduction to Complex Numbers', 10, 'quiz',
  $lesson$## Unit 3 Quiz: Complex Numbers

When the discriminant ($b^2 - 4ac$) of a quadratic is negative, its roots are **complex numbers** — numbers involving $i$, where $i^2 = -1$. A complex number has the form $a + bi$. This quiz checks your ability to identify when a quadratic has complex roots and perform basic arithmetic with complex numbers, including addition, subtraction, and multiplication.$lesson$,
  'HSN-CN.A.1-2', 'Know there is a complex number i such that i^2 = -1, and use the relation to perform arithmetic with complex numbers.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Small Project: Design a Parabola', 11, 'practice',
  $lesson$## Small Project: Design a Parabola

### Parabolas Are Everywhere in Design

Arches, ramps, satellite dishes, and even the path of a thrown object all follow a parabolic curve — modeled by a quadratic function.

### Vertex Form

$$y = a(x - h)^2 + k$$

where (h, k) is the vertex (the maximum or minimum point).

### Worked Example

A decorative arch is modeled by $y = -0.5(x - 10)^2 + 20$, where x and y are measured in feet. The vertex is (10, 20) — meaning the arch peaks 20 feet high at the 10-foot mark. Setting y = 0 and solving finds where the arch meets the ground.

### The Challenge

Design a real parabolic structure (an arch, a ramp, a decorative element, or a product feature) using vertex form.

1. Choose a vertex (h, k) representing the peak (or lowest point) of your structure.
2. Choose a value for a that determines how wide or narrow your parabola is.
3. Write your full equation in vertex form.
4. Find where your parabola crosses the x-axis (set y = 0 and solve) — describe what these points represent physically (e.g., where an arch touches the ground).

### Submission

Show your vertex form equation, your work finding the x-intercepts, and a description of what your parabola represents physically, in the short-answer box below.$lesson$,
  'HSA-REI.B.4', 'Model and analyze a real parabolic design, using vertex form and roots to describe key features.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Flex Week: Cumulative Review & Project Studio', 12, 'practice',
  $lesson$## Flex Week: Review & Project Studio

Before moving into Unit 4 (Rational & Radical Functions), let's lock in Units 1-3 with a mixed review.

### Cumulative Review

1. **Functions/transformations:** Describe the transformations in $g(x) = 2(x - 4)^2 + 1$.
2. **Polynomials:** Factor $x^2 + 5x + 6$.
3. **Quadratics:** Solve $x^2 - 2x - 8 = 0$ using any method.
4. **Complex numbers:** Is the discriminant of $x^2 + 4x + 8 = 0$ positive or negative? What does that tell you about the roots?

### Project Studio Time

Revisit your Profit Optimization Lab and Design a Parabola project work. Reread your written interpretations — do they clearly connect the math back to the real-world scenario?

### Your Turn

Solve all 4 review problems above, showing your work. Then write 2-3 sentences on which unit (functions/transformations, polynomials, or quadratics/complex numbers) you'd like extra review on before moving forward.$lesson$,
  'HSF-IF-BF, HSA-APR, HSA-REI.B.4, HSN-CN', 'Cumulative review of functions, polynomial operations, and quadratic/complex number solving from Units 1-3.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Radical Equations & Functions', 13, 'lesson',
  $lesson$## Radical Equations: Modeling Diminishing Returns

A **radical equation** contains a variable under a root (usually a square root). These often model situations of diminishing returns — where increasing an input produces smaller and smaller increases in output.

### Solving Radical Equations

1. Isolate the radical.
2. Square both sides.
3. Solve the resulting equation.
4. **Check your solutions** — squaring can introduce extraneous (false) solutions.

### Worked Example

Solve $\sqrt{x + 3} = 5$:

$$x + 3 = 25$$
$$x = 22$$

Check: $\sqrt{22 + 3} = \sqrt{25} = 5$ ✓ — valid solution.

### Worked Example — Extraneous Solution

Solve $\sqrt{x} = -4$: squaring gives $x = 16$, but $\sqrt{16} = 4$, not $-4$. So $x = 16$ is **extraneous** — there is no real solution, since a square root can never equal a negative number.

### Your Turn

Solve $\sqrt{2x - 1} = 7$, and check your solution. Then explain, in your own words, why checking for extraneous solutions is a necessary step when solving radical equations.$lesson$,
  'HSA-REI.A.2, HSF-IF.C.7b', 'Solve radical equations, checking for extraneous solutions introduced by squaring both sides.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'Introduction to Rational Expressions & Functions', 14, 'quiz',
  $lesson$## Unit 4 Quiz: Rational Expressions & Functions

A **rational expression** is a fraction with polynomials in the numerator and/or denominator, like $\frac{x+3}{x-2}$. A key concept is **domain restriction**: any value that makes the denominator zero must be excluded, since division by zero is undefined. This quiz checks your ability to simplify rational expressions and identify domain restrictions — essential for any business model involving a ratio (like average cost per unit, which is undefined at zero units produced).$lesson$,
  'HSA-APR.D.6-7', 'Rewrite simple rational expressions, and understand rational functions including domain restrictions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2')),
  'MAJOR PROJECT 2 CAPSTONE: Data-Driven Venture Pitch', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: Data-Driven Venture Pitch

Congratulations on reaching your final project of the semester! This capstone brings together everything from this course — functions, polynomials, quadratics, and rational/radical reasoning — into one complete data-driven pitch.

### Driving Question

**"How can a mathematical model make a business pitch more convincing?"**

### The Challenge

Design an original venture and build a full data-driven pitch.

1. **Choose your model type.** Model your venture's projected revenue or growth using either a polynomial (quadratic or higher) or a rational function — whichever best fits your scenario.
2. **Write your function**, clearly defining what your input (x) and output represent.
3. **Analyze key features.** Depending on your function type, identify and interpret: the vertex/maximum or minimum (for polynomials), the roots/zeros (break-even or key milestones), or any domain restrictions (for rational functions).
4. **Evaluate your function** for at least 3 meaningful input values, and explain what each output means for your venture.
5. **Graph description.** Describe what your function's graph looks like, including its overall shape and any key features from step 3.
6. **Full investor pitch.** In 5-7 sentences, present your venture as if pitching to an investor panel: describe the idea, your mathematical model, and why the model makes your projections credible.
7. **Investor Q&A prep.** Write 2 questions an investor might ask about your model, and your prepared answers.

### What Makes This a STEAM + Entrepreneurship Capstone

You're combining advanced function modeling (Math), data-driven storytelling (Data/Communication), and investor-style pitching (Entrepreneurship) — the exact skill set behind every successful startup fundraising pitch.

### Submission

Type your full pitch package — your function, key feature analysis, evaluated projections, graph description, full investor pitch, and Q&A prep — into the short-answer boxes below. This project represents your growth across the entire fall semester, so take your time and show your best work.$lesson$,
  'HSA-APR.B, HSF-IF.C, semester synthesis', 'Cumulative capstone applying polynomial or rational function modeling to forecast growth or revenue for an original venture, delivered as a full investor pitch.', 75
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Function Families Review & Transformations' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'In g(x) = f(x - 3) + 2, the graph shifts:', '["Left 3, up 2", "Right 3, up 2", "Right 3, down 2", "Left 3, down 2"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Function Families Review & Transformations' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'In g(x) = -f(x), the graph is:', '["Shifted up", "Reflected over the x-axis", "Stretched horizontally", "Reflected over the y-axis"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Function Families Review & Transformations' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Describe the transformations in g(x) = -3(x+2)^2 - 4 and what they could represent in a cost model.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'If f(x) = 2x + 6, what is f^-1(x)?', '["(x-6)/2", "(x+6)/2", "2x - 6", "x/2 + 6"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Two functions are inverses if:', '["f(x) = f^-1(x) always", "f(f^-1(x)) = x", "They have the same graph", "They are both linear"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Find the inverse of f(x) = 4x - 12 and verify it by composition.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Piecewise Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'For f(x) = 5x if 0≤x≤10, 4x+10 if x>10, find f(8).', '["40", "42", "50", "36"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Piecewise Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Using the same function, find f(12).', '["60", "58", "48", "70"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Piecewise Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Explain how a piecewise function could model tiered shipping costs, with an example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Model My Day' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'short_answer', 'Write your piecewise function with at least 2 pieces.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Model My Day' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'short_answer', 'Evaluate your function for 3 different input values, at least one from each piece.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Model My Day' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions & Their Graphs' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Explain why a business might choose tiered pricing over a flat rate.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Polynomial Operations & Factoring' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'Multiply: (x+3)(x+5)', '["x^2 + 8x + 15", "x^2 + 15x + 8", "x^2 + 8x + 8", "x^2 + 15"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Polynomial Operations & Factoring' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Factor: x^2 + 10x + 21', '["(x+3)(x+7)", "(x+1)(x+21)", "(x+5)(x+5)", "(x+7)(x+3) is wrong, use (x+21)(x+1)"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Polynomial Operations & Factoring' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Multiply (3x - 2)(x + 4) and factor x^2 + 9x + 20, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Graphing Polynomial Functions & End Behavior' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'A polynomial with even degree and positive leading coefficient has end behavior:', '["Both ends up", "Both ends down", "Left down, right up", "Left up, right down"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Graphing Polynomial Functions & End Behavior' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'A polynomial with odd degree and negative leading coefficient has end behavior:', '["Both ends up", "Both ends down", "Left up, right down", "Left down, right up"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Graphing Polynomial Functions & End Behavior' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Describe the end behavior of f(x) = 3x^4 - 2x^2 + 1 and explain what it might represent in a cost model.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Polynomial Division & the Remainder Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'By the Remainder Theorem, dividing f(x) by (x-3) gives a remainder equal to:', '["f(0)", "f(3)", "f(-3)", "3f(x)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Polynomial Division & the Remainder Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'If f(2) = 0, then (x - 2) is a:', '["Remainder", "Factor of f(x)", "Not related to f(x)", "Coefficient"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Polynomial Division & the Remainder Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Use the Remainder Theorem to determine if (x - 1) is a factor of f(x) = x^3 - 2x^2 + x - 2.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Profit Optimization Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'short_answer', 'Write your revenue function and cost function.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Profit Optimization Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'short_answer', 'Write your simplified profit function P(x) = R(x) - C(x).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Profit Optimization Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Find the vertex (maximum profit point) and the maximum profit value.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Profit Optimization Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Polynomial Functions & Operations' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 4, 'short_answer', 'Find your break-even points and write your 3-5 sentence reflection.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'Solve by factoring: x^2 - 7x + 12 = 0', '["x = 3 or 4", "x = -3 or -4", "x = 7 or 12", "x = 1 or 12"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Using the quadratic formula, solve x^2 + 2x - 15 = 0', '["x = 3 or -5", "x = -3 or 5", "x = 15 or -1", "x = 5 or -3 is wrong, use 3 or -5"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving Quadratics: Factoring, Completing the Square & the Quadratic Formula' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Solve x^2 - 5x + 6 = 0 by factoring, and 3x^2 + 2x - 8 = 0 using the quadratic formula, explaining your method choice for each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Introduction to Complex Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'What is i^2?', '["1", "-1", "i", "0"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Introduction to Complex Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'A quadratic with a negative discriminant has:', '["Two real roots", "One real root", "Two complex roots", "No roots at all"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Introduction to Complex Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'multiple_choice', 'Simplify: (3 + 2i) + (1 - 5i)', '["4 - 3i", "4 + 7i", "2 + 7i", "4 - 7i"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Introduction to Complex Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 4, 'short_answer', 'Explain what it means for a quadratic to have complex roots, using the discriminant.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Design a Parabola' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'short_answer', 'State your chosen vertex (h, k) and value of a, and write your equation in vertex form.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Design a Parabola' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'short_answer', 'Show your work finding the x-intercepts of your parabola.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Design a Parabola' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Describe what your parabola and its x-intercepts represent physically in your design.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'In g(x) = 2(x-4)^2 + 1, the vertex is:', '["(4, 1)", "(-4, 1)", "(4, -1)", "(1, 4)"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Factor: x^2 + 5x + 6', '["(x+2)(x+3)", "(x+1)(x+6)", "(x+5)(x+1)", "(x+6)(x+1) is wrong, use (x+2)(x+3)"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Solve x^2 - 2x - 8 = 0, showing your work.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Quadratic Functions & Complex Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 4, 'short_answer', 'Determine if the discriminant of x^2 + 4x + 8 = 0 is positive or negative and explain what that means, then reflect on which unit needs review.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Radical Equations & Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'Solve: √(x + 3) = 5', '["x = 22", "x = 2", "x = 25", "x = 8"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Radical Equations & Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Why might squaring both sides of a radical equation introduce an extraneous solution?', '["It never does", "Squaring can make a negative result appear positive", "Squaring always doubles the answer", "Radicals cannot be squared"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Radical Equations & Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Solve √(2x - 1) = 7, check your solution, and explain why checking matters.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Introduction to Rational Expressions & Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'multiple_choice', 'For the rational expression (x+3)/(x-2), what value must be excluded from the domain?', '["x = -3", "x = 2", "x = 3", "x = -2"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Introduction to Rational Expressions & Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'multiple_choice', 'Simplify: (x^2 - 9)/(x - 3)', '["x + 3", "x - 3", "x^2 - 3", "x + 9"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Introduction to Rational Expressions & Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Explain why a rational function representing average cost per unit is undefined at zero units produced.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Data-Driven Venture Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 1, 'short_answer', 'Write your revenue/growth function and define your input and output.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Data-Driven Venture Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 2, 'short_answer', 'Identify and interpret your function''s key features (vertex, roots, or domain restrictions).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Data-Driven Venture Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 3, 'short_answer', 'Evaluate your function for 3 meaningful input values and explain each result.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Data-Driven Venture Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 4, 'short_answer', 'Describe your function''s graph, then write your full 5-7 sentence investor pitch.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Data-Driven Venture Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Rational & Radical Functions (Intro)' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-2'))), 5, 'short_answer', 'Write 2 investor questions about your model and your prepared answers.', NULL, NULL);
