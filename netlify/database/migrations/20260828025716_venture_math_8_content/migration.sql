-- Grade 8 Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Math 8 Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including 1 small project embedded per unit pattern, 2 major STEAM/entrepreneurial projects
-- (L8 and capstone L15), and a Flex Week cumulative review (L12).

UPDATE courses SET status = 'published' WHERE slug = 'venture-math-8';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-math-8'), 'Unit 1: The Real Number System & Exponents', 0),
((SELECT id FROM courses WHERE slug='venture-math-8'), 'Unit 2: Linear Equations', 1),
((SELECT id FROM courses WHERE slug='venture-math-8'), 'Unit 3: Functions', 2),
((SELECT id FROM courses WHERE slug='venture-math-8'), 'Unit 4: Geometry — Transformations & Pythagorean Theorem', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Rational vs. Irrational Numbers & Approximation', 1, 'lesson',
  $lesson$## Rational vs. Irrational: Every Number Has a Story

A **rational number** can be written as a fraction of two integers (including terminating or repeating decimals). An **irrational number** cannot — its decimal goes on forever with no repeating pattern. Think of π (3.14159...) or √2 (1.41421...).

### Why This Matters for a Young Entrepreneur

When you're calculating things like the diagonal of a product box, a circular logo's dimensions, or a growth curve, irrational numbers show up constantly. Knowing how to approximate them keeps your real-world calculations practical.

### Approximating Irrational Numbers

To approximate √50, find the two perfect squares it falls between: 49 (7²) and 64 (8²). Since 50 is close to 49, √50 ≈ 7.1.

### Worked Example

Which is bigger: √30 or 5.4? Since 5.4² = 29.16, and 30 > 29.16, √30 is slightly bigger than 5.4. So √30 ≈ 5.48.

### Your Turn

Approximate √40 to the nearest tenth by identifying the two perfect squares it falls between. Then explain, in your own words, why π can never be written as an exact fraction.$lesson$,
  '8.NS.A.1-2', 'Know that numbers that are not rational are irrational; use rational approximations of irrational numbers to compare their size and locate them on a number line.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Integer Exponents & Their Properties', 2, 'lesson',
  $lesson$## Exponent Rules: Modeling Explosive Growth

Exponents let you model things that grow (or shrink) repeatedly by the same factor — exactly what happens when a social media post, a product idea, or a viral trend spreads.

### Key Rules

- **Product of powers:** $a^m \times a^n = a^{m+n}$
- **Quotient of powers:** $a^m \div a^n = a^{m-n}$
- **Power of a power:** $(a^m)^n = a^{mn}$
- **Zero exponent:** $a^0 = 1$ (for a ≠ 0)
- **Negative exponent:** $a^{-n} = \frac{1}{a^n}$

### Worked Example

If a social post is shared to 3 people, and each of those people shares it with 3 more, after 4 rounds of sharing, the total reach follows $3^4 = 81$ people.

### Worked Example — Simplifying

$$\frac{5^7}{5^3} = 5^{7-3} = 5^4 = 625$$

### Your Turn

Simplify $2^3 \times 2^5$ and $\frac{4^6}{4^2}$, showing the exponent rule you used for each. Then describe a real "viral growth" scenario and write it as a repeated-multiplication exponent expression.$lesson$,
  '8.EE.A.1', 'Know and apply the properties of integer exponents to generate equivalent numerical expressions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Unit 1 Quiz: Roots & Scientific Notation', 3, 'quiz',
  $lesson$## Unit 1 Quiz: Roots & Scientific Notation

This quiz checks your understanding of square roots, cube roots, and scientific notation — the tools you'll need to model very large or very small real-world quantities, like a startup's total addressable market or a product's microscopic dimensions.$lesson$,
  '8.EE.A.2-4', 'Use square root and cube root symbols to represent solutions to equations; perform operations with numbers expressed in scientific notation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Small Project: Big Numbers, Big Ideas', 4, 'practice',
  $lesson$## Small Project: Big Numbers, Big Ideas

### Scientific Notation, Quickly

Scientific notation writes very large or very small numbers as $a \times 10^n$, where $1 \leq a < 10$.

$$450{,}000 = 4.5 \times 10^5 \qquad 0.00032 = 3.2 \times 10^{-4}$$

### Worked Example

A city has a population of about 2,500,000 people. In scientific notation: $2.5 \times 10^6$. If your startup could realistically reach 0.01% of that market, that's:

$$2.5 \times 10^6 \times 0.0001 = 250 \text{ potential customers}$$

### The Challenge

Choose a real startup metric to model using scientific notation — for example, a country's population as a potential market, the number of smartphone users worldwide, or the number of views a viral video could reach.

1. Research or estimate your chosen large number, and write it in scientific notation.
2. Choose a realistic small percentage of that number your venture could reach, and calculate the actual number of people that represents.
3. Compare your number to a second market or scenario using scientific notation — express how many times as large one is compared to the other.

### Submission

Show your scientific notation conversions and all calculations in the short-answer box below, along with a short explanation of what the numbers mean for your venture idea.$lesson$,
  '8.EE.A.3-4', 'Use numbers expressed in scientific notation to estimate very large or very small quantities, and express how many times as much one is than the other.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Solving Linear Equations with Variables on Both Sides', 5, 'lesson',
  $lesson$## Solving for the Price Point That Hits Your Target

When two business plans or pricing structures are compared, you'll often need to solve an equation with the variable appearing on both sides.

### Worked Example

Two subscription plans for a service you offer: Plan A costs a flat $50 plus $2 per use. Plan B costs a flat $20 plus $5 per use. At what number of uses (x) do the two plans cost the same?

$$50 + 2x = 20 + 5x$$
$$30 = 3x$$
$$x = 10$$

At **10 uses**, both plans cost the same amount.

### Special Cases

Sometimes solving gives you **no solution** (the variable cancels out and you're left with a false statement, like 5 = 8) or **infinitely many solutions** (you're left with a true statement, like 5 = 5). These are just as valid — they tell you the two expressions never meet, or that they're the exact same line.

### Your Turn

Solve: 4x + 12 = 2x + 30. Then design your own two-pricing-plan comparison problem (like Plan A vs Plan B above), write the equation, and solve for where the two plans cost the same.$lesson$,
  '8.EE.C.7', 'Solve linear equations with rational number coefficients, including equations with variables on both sides.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Systems of Two Linear Equations — Introduction', 6, 'lesson',
  $lesson$## Systems of Equations: Where Two Plans Meet

A **system of equations** is a set of two (or more) equations considered together. The **solution** is the point (x, y) where both equations are true at the same time — graphically, that's where the two lines cross.

### Worked Example

Compare two pricing plans as a system:

$$y = 2x + 50 \quad \text{(Plan A: total cost)}$$
$$y = 5x + 20 \quad \text{(Plan B: total cost)}$$

Setting them equal (since y = y): 2x + 50 = 5x + 20, which solves to x = 10, y = 70. The solution is the point **(10, 70)** — at 10 uses, both plans cost $70.

### Three Possible Outcomes

- **One solution:** lines cross at exactly one point (most common).
- **No solution:** lines are parallel (same slope, different y-intercept) — they never meet.
- **Infinitely many solutions:** lines are identical (same slope and y-intercept).

### Your Turn

Write a system of two equations representing two different pricing or business plans. Predict whether you expect one solution, no solution, or infinitely many solutions, and explain why based on the slopes and y-intercepts.$lesson$,
  '8.EE.C.8a-b', 'Understand that solutions to a system of two linear equations correspond to points of intersection of their graphs; recognize systems can have one, no, or infinitely many solutions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Unit 2 Quiz: Solving Systems by Graphing & Substitution', 7, 'quiz',
  $lesson$## Unit 2 Quiz

This quiz checks your ability to solve systems of linear equations by graphing and substitution — the exact skill you'll use in your Major Project to find your break-even point.$lesson$,
  '8.EE.C.8c', 'Solve simple cases of systems of two linear equations by inspection, graphing, and substitution.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'MAJOR PROJECT 1: Break-Even Business Plan', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Break-Even Business Plan

### Driving Question

**"At what point does a business start making money instead of losing it?"**

### The Challenge

Design an original small business idea, and model its finances using linear equations.

1. **Fixed costs.** List your fixed (one-time or recurring flat) costs — equipment, booth fee, licensing, etc. — and total them.
2. **Variable costs.** Identify your cost per unit produced or sold (materials, packaging, etc.).
3. **Write your cost equation.** $C = (\text{cost per unit}) \times x + (\text{fixed costs})$
4. **Write your revenue equation.** $R = (\text{price per unit}) \times x$
5. **Find your break-even point.** Set your cost and revenue equations equal to each other (a system!) and solve for x — the number of units where cost equals revenue.
6. **Graph and interpret.** Describe what the graph of your two equations would look like, and explain in your own words what happens before and after the break-even point.
7. **Reflection.** In 3-5 sentences, discuss whether your break-even point seems realistic for your business idea, and what you could change (price, costs) to reach break-even faster.

### What Makes This a STEAM + Entrepreneurship Project

You're using systems of linear equations exactly the way a real founder uses a financial model — to answer the single most important early question in any business: when do we stop losing money?

### Submission

Show your full cost equation, revenue equation, break-even solution, graph description, and written reflection in the short-answer boxes below.$lesson$,
  '8.EE.C.7-8', 'Cumulative application of linear equations and systems to model a business''s cost and revenue and find its break-even point.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Defining & Evaluating Functions', 9, 'lesson',
  $lesson$## Functions: Your Business as an Input → Output Machine

A **function** is a rule where every input has exactly one output. Businesses are full of functions: number of items sold (input) → total revenue (output); hours worked (input) → pay earned (output).

### Function Notation

We write $f(x)$ to mean "the output of function f when the input is x." If $f(x) = 5x + 10$, then $f(3) = 5(3) + 10 = 25$.

### Worked Example

A tutoring service charges $f(h) = 25h$, where h is hours tutored. $f(4) = 25(4) = 100$ — 4 hours of tutoring earns $100.

### Comparing Two Functions

If Function A is $f(x) = 3x + 5$ and Function B is a table showing (2, 12), (4, 22), (6, 32), which grows faster? Function B's rate of change is (22-12)/(4-2) = 5 per unit, while Function A's rate is 3 per unit — so Function B grows faster.

### Your Turn

Write a function representing a service or product you'd sell, where the input is quantity or hours and the output is total earnings. Evaluate your function for 3 different input values.$lesson$,
  '8.F.A.1-2', 'Understand that a function is a rule that assigns to each input exactly one output; compare properties of two functions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Unit 3 Quiz: Linear Functions & Rate of Change', 10, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of linear functions, slope as rate of change, and y-intercept as initial value — the building blocks for modeling any steady growth or decline in a business.$lesson$,
  '8.F.A.3, 8.F.B.4', 'Interpret the equation y = mx + b as defining a linear function; construct a function to model a linear relationship, including rate of change and initial value.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Comparing Functions — Small Project: Growth Curve', 11, 'practice',
  $lesson$## Small Project: Growth Curve

### Reading Growth Qualitatively

Not every relationship is a perfectly straight line. A business's growth might start slow, speed up, level off, or even dip. Being able to describe a graph in words — and sketch a graph from a description — is a powerful communication skill for any founder pitching to investors.

### Worked Example

"Sales started slow during the first month of a new product launch, grew quickly as word spread during months 2-4, then leveled off once the market was saturated by month 6." This describes a graph that starts with a shallow slope, becomes steep, then flattens out — an S-curve, common in real product adoption.

### The Challenge

1. Choose a business growth scenario (could be sales, followers, users, or revenue) and describe it qualitatively in words — include at least 3 distinct phases (e.g., slow start, rapid growth, leveling off, decline, a sudden jump).
2. Sketch (describe in words, since you can't draw here) what the corresponding graph would look like, phase by phase.
3. Compare your growth curve to a simple linear function (steady, constant growth) — explain at least 2 ways your curve's shape differs from a straight line.

### Submission

Write your growth scenario description, your graph description, and your comparison to a linear function in the short-answer box below.$lesson$,
  '8.F.B.5', 'Describe qualitatively the functional relationship between two quantities by analyzing a graph; sketch a graph that exhibits the qualitative features of a function described verbally.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Flex Week: Cumulative Review & Project Studio', 12, 'practice',
  $lesson$## Flex Week: Review & Project Studio

Before moving into Unit 4 (Geometry), let's lock in the first three units with a mixed review — and use the rest of this week to polish your project work.

### Cumulative Review

1. **Real numbers:** Is √17 rational or irrational? Approximate it to the nearest tenth.
2. **Exponents:** Simplify $3^4 \times 3^2$.
3. **Systems:** Solve the system: y = 3x + 4 and y = x + 10.
4. **Functions:** If $f(x) = 6x - 2$, find $f(5)$.

### Project Studio Time

Revisit your Break-Even Business Plan and Growth Curve project work. Reread your written explanations for clarity — could a classmate follow your math without you explaining it out loud?

### Your Turn

Solve all 4 review problems above, showing your work for each. Then write 2-3 sentences identifying which topic (real numbers/exponents, linear equations/systems, or functions) you feel most confident about heading into Unit 4, and why.$lesson$,
  '8.NS.A, 8.EE.A-C, 8.F.A-B', 'Cumulative review of the real number system, exponents, linear equations, systems, and functions from Units 1-3.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Transformations: Translations, Reflections & Rotations', 13, 'lesson',
  $lesson$## Transformations: The Math Behind Logo & Pattern Design

A **transformation** moves a shape without changing its size. The three basic rigid transformations are:

- **Translation** — sliding a shape without rotating or flipping it: $(x, y) \rightarrow (x + a, y + b)$
- **Reflection** — flipping a shape over a line (like a mirror image): reflecting over the y-axis sends $(x, y) \rightarrow (-x, y)$
- **Rotation** — turning a shape around a fixed point

### Worked Example

A logo element at point (2, 3) is translated 4 units right and 1 unit down: $(2+4, 3-1) = (6, 2)$.

If that same point is reflected over the y-axis instead: $(-2, 3)$.

### Why This Matters for Design

Professional logo and pattern designers use these exact transformations to create symmetric, repeatable brand elements — think of a repeating fabric pattern, or a logo that looks balanced from any angle.

### Your Turn

Choose a point representing part of a logo design, such as (3, 5). Apply a translation of your choice, then separately apply a reflection over the x-axis, and describe the resulting coordinates for each.$lesson$,
  '8.G.A.1-3', 'Verify experimentally the properties of rotations, reflections, and translations; describe the effect of transformations using coordinates.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'Congruence, Similarity, Dilations & the Pythagorean Theorem', 14, 'quiz',
  $lesson$## Unit 4 Quiz: Congruence, Similarity & the Pythagorean Theorem

This quiz checks your understanding of congruent and similar figures, dilations (scale transformations), and the Pythagorean theorem:

$$a^2 + b^2 = c^2$$

Remember: this only applies to right triangles, where c is the hypotenuse (the longest side, opposite the right angle).$lesson$,
  '8.G.A.4-5, 8.G.B.6-8', 'Understand congruence and similarity using physical models or transformations; apply the Pythagorean Theorem to determine unknown side lengths.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8')),
  'MAJOR PROJECT 2 CAPSTONE: App or Product Launch — Function Modeling Pitch', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: App or Product Launch — Function Modeling Pitch

Congratulations on reaching your final project of the semester! This capstone combines geometry and function modeling into a complete product pitch.

### Driving Question

**"How can functions and geometry work together to design and forecast the growth of a new product?"**

### The Challenge

Design an original app or physical product.

1. **Geometric design element.** Describe a design feature of your product or its packaging that involves a right triangle (for example, a diagonal support, a triangular logo element, or a box's diagonal). Use the Pythagorean theorem to calculate an unknown length related to this feature.
2. **Growth forecast function.** Write a linear function $f(x) = mx + b$ modeling your product's projected growth (users, sales, or downloads) over time, where x is time (in months) and $f(x)$ is your projected total.
3. **Evaluate your function** for 3 different time points (e.g., month 1, month 6, month 12) to project your growth.
4. **Interpret your slope.** Explain what your function's rate of change (m) means in real terms for your product's growth.
5. **Founder's pitch.** In 4-6 sentences, pitch your product to an investor panel: what does it do, why does it matter, and how did your math (both the geometry and the function model) shape your design and your growth forecast?

### What Makes This a STEAM + Entrepreneurship Capstone

You're combining geometric reasoning (Math/Engineering), product design (Art/Engineering), and function-based forecasting (Entrepreneurship/Data) — exactly how real product teams design and pitch new ideas.

### Submission

Type your full design plan — geometric calculation, growth function, evaluated projections, slope interpretation, and founder's pitch — into the short-answer boxes below. This project represents your growth across the entire fall semester, so take your time and show your best work.$lesson$,
  '8.G.B, 8.F.A-B', 'Cumulative application of the Pythagorean theorem and function modeling to a full product design and growth-forecast pitch.', 75
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Rational vs. Irrational Numbers & Approximation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'Which of these is irrational?', '["0.5", "3/4", "\u221a2", "7"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Rational vs. Irrational Numbers & Approximation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', '√50 is between which two whole numbers?', '["6 and 7", "7 and 8", "5 and 6", "8 and 9"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Rational vs. Irrational Numbers & Approximation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Approximate √40 to the nearest tenth, and explain why π can never be written as an exact fraction.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Integer Exponents & Their Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'Simplify: 2^3 × 2^4', '["2^7", "2^12", "4^7", "2^1"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Integer Exponents & Their Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Simplify: 6^8 ÷ 6^5', '["6^3", "6^13", "1^3", "6^40"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Integer Exponents & Their Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Simplify 2^3 × 2^5 and 4^6 ÷ 4^2, showing the rule used for each, then describe a real viral-growth scenario as an exponent expression.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Roots & Scientific Notation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'What is √81?', '["8", "9", "9.5", "18"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Roots & Scientific Notation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Write 62,000 in scientific notation.', '["6.2 \u00d7 10^3", "6.2 \u00d7 10^4", "62 \u00d7 10^3", "6.2 \u00d7 10^5"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Roots & Scientific Notation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'multiple_choice', 'Write 0.0045 in scientific notation.', '["4.5 \u00d7 10^-3", "4.5 \u00d7 10^3", "45 \u00d7 10^-4", "4.5 \u00d7 10^-2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Roots & Scientific Notation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 4, 'short_answer', 'Explain the difference between a square root and a cube root, with an example of each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Big Numbers, Big Ideas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'short_answer', 'State your chosen large-number metric and write it in scientific notation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Big Numbers, Big Ideas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'short_answer', 'Show your calculation for the realistic small percentage of that market your venture could reach.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Big Numbers, Big Ideas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Real Number System & Exponents' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Compare your number to a second market/scenario using scientific notation, and explain how many times larger one is.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving Linear Equations with Variables on Both Sides' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'Solve: 4x + 12 = 2x + 30', '["x = 9", "x = 21", "x = 6", "x = 18"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving Linear Equations with Variables on Both Sides' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Solve: 5x - 3 = 2x + 15', '["x = 4", "x = 6", "x = 5", "x = 12"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Solving Linear Equations with Variables on Both Sides' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Design your own two-pricing-plan comparison, write the equation, and solve for where the plans cost the same.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Systems of Two Linear Equations — Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'A system of two lines with the same slope but different y-intercepts has:', '["One solution", "No solution", "Infinitely many solutions", "Cannot be determined"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Systems of Two Linear Equations — Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'A system of two identical lines has:', '["One solution", "No solution", "Infinitely many solutions", "Cannot be determined"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Systems of Two Linear Equations — Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Write a system of two equations for two business plans, and predict (with reasoning) how many solutions it has.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Solving Systems by Graphing & Substitution' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'Solve the system: y = 2x + 1 and y = x + 4', '["x = 3, y = 7", "x = 4, y = 8", "x = 2, y = 5", "x = 1, y = 3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Solving Systems by Graphing & Substitution' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Solve the system: y = x and y = 3x - 8', '["x = 4, y = 4", "x = 2, y = 2", "x = 8, y = 8", "x = 6, y = 6"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Solving Systems by Graphing & Substitution' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Solve the system y = 4x - 5 and y = 2x + 3 by substitution, showing all steps.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Break-Even Business Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'short_answer', 'List your fixed and variable costs, and write your cost equation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Break-Even Business Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'short_answer', 'Write your revenue equation based on your chosen selling price.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Break-Even Business Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Show your break-even calculation (setting cost equal to revenue and solving).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Break-Even Business Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 4, 'short_answer', 'Describe your graph and write your 3-5 sentence reflection on whether your break-even point is realistic.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Defining & Evaluating Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'If f(x) = 4x + 7, what is f(3)?', '["19", "11", "12", "21"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Defining & Evaluating Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'A function must have:', '["Multiple outputs per input", "Exactly one output per input", "No outputs", "The same input and output"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Defining & Evaluating Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Write a function for a product/service you''d sell, and evaluate it for 3 different input values.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Linear Functions & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'In y = mx + b, what does m represent?', '["The y-intercept", "The rate of change (slope)", "The x-intercept", "The output"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Linear Functions & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'A line has equation y = 3x + 7. What is its initial value (y-intercept)?', '["3", "7", "10", "0"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Linear Functions & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'multiple_choice', 'A table shows (0,5), (2,11), (4,17). What is the rate of change?', '["2", "3", "5", "6"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Linear Functions & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 4, 'short_answer', 'Explain what slope and y-intercept mean in the context of a real linear business relationship.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Comparing Functions — Small Project: Growth Curve' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'short_answer', 'Describe your business growth scenario in words, including at least 3 distinct phases.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Functions — Small Project: Growth Curve' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'short_answer', 'Describe what the corresponding graph would look like, phase by phase.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Comparing Functions — Small Project: Growth Curve' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Explain at least 2 ways your growth curve''s shape differs from a simple linear function.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'Is √17 rational or irrational?', '["Rational", "Irrational", "Neither", "Both"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Simplify: 3^4 × 3^2', '["3^6", "3^8", "9^6", "3^2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Solve the system y = 3x + 4 and y = x + 10, showing your work.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 4, 'short_answer', 'If f(x) = 6x - 2, find f(5), then reflect on which Unit 1-3 topic feels most confident and why.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Transformations: Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'Translating (3, 5) by ''right 2, down 4'' gives:', '["(5, 1)", "(1, 9)", "(5, 9)", "(1, 1)"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Transformations: Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Reflecting (4, 6) over the y-axis gives:', '["(4, -6)", "(-4, 6)", "(-4, -6)", "(6, 4)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Transformations: Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Apply a translation and separately a reflection over the x-axis to the point (3, 5), showing both resulting coordinates.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Congruence, Similarity, Dilations & the Pythagorean Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'multiple_choice', 'A right triangle has legs 6 and 8. What is the hypotenuse?', '["10", "14", "48", "12"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Congruence, Similarity, Dilations & the Pythagorean Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'multiple_choice', 'Two figures that are the same shape but different size are:', '["Congruent", "Similar", "Identical", "Transformed"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Congruence, Similarity, Dilations & the Pythagorean Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'multiple_choice', 'A dilation with scale factor 2 applied to a 3x4 rectangle produces a rectangle of size:', '["6x8", "3x4", "1.5x2", "9x16"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Congruence, Similarity, Dilations & the Pythagorean Theorem' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 4, 'short_answer', 'A right triangle has legs of 9 and 12. Find the hypotenuse, showing your work with the Pythagorean theorem.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: App or Product Launch — Function Modeling Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 1, 'short_answer', 'Describe your product''s geometric design feature and show your Pythagorean theorem calculation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: App or Product Launch — Function Modeling Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 2, 'short_answer', 'Write your growth forecast function f(x) = mx + b.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: App or Product Launch — Function Modeling Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 3, 'short_answer', 'Evaluate your function for 3 different time points and show your work.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: App or Product Launch — Function Modeling Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 4, 'short_answer', 'Interpret what your slope (rate of change) means in real terms.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: App or Product Launch — Function Modeling Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Transformations & Pythagorean Theorem' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-8'))), 5, 'short_answer', 'Write your 4-6 sentence founder''s pitch for your product.', NULL, NULL);
