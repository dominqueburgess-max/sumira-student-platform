-- Algebra I (Grade 9) Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Algebra I Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including a small project per early unit, 2 major STEAM/entrepreneurial projects (L8 and capstone
-- L15), and a Flex Week cumulative review (L12).

UPDATE courses SET status = 'published' WHERE slug = 'venture-algebra-1';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-algebra-1'), 'Unit 1: Foundations of Algebra', 0),
((SELECT id FROM courses WHERE slug='venture-algebra-1'), 'Unit 2: Linear Equations & Inequalities', 1),
((SELECT id FROM courses WHERE slug='venture-algebra-1'), 'Unit 3: Linear Functions & Systems', 2),
((SELECT id FROM courses WHERE slug='venture-algebra-1'), 'Unit 4: Exponents & Intro to Exponential Functions', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Expressions, Order of Operations & Properties', 1, 'lesson',
  $lesson$## Building Blocks: Expressions as Business Formulas

Welcome to Algebra 1! This year, every formula you build — for cost, revenue, growth, or design — starts with a solid grip on expressions and the properties that let you simplify them.

### Order of Operations (PEMDAS)

Parentheses, Exponents, Multiplication/Division (left to right), Addition/Subtraction (left to right).

### Key Properties

- **Distributive property:** $a(b + c) = ab + ac$
- **Commutative property:** $a + b = b + a$ and $ab = ba$
- **Associative property:** $(a + b) + c = a + (b + c)$

### Worked Example

A startup's cost expression is $3(2x + 5) - 4x$, where x is units produced. Distribute and combine like terms:

$$3(2x + 5) - 4x = 6x + 15 - 4x = 2x + 15$$

The simplified cost formula is **2x + 15**.

### Your Turn

Simplify the expression $4(3x - 2) + 5x$. Then write your own two-part cost expression (using the distributive property) representing a startup idea, and simplify it.$lesson$,
  'HSA-SSE.A.1', 'Interpret expressions that represent a quantity in terms of its context; identify parts of an expression.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Solving Linear Equations', 2, 'lesson',
  $lesson$## Solving for the Unknown, One Step at a Time

Solving a linear equation means isolating the variable using inverse operations, while keeping both sides balanced — the same principle from middle school, now applied to more complex, multi-step formulas.

### Worked Example

A founder needs $2,400 to launch a product. They've saved $600 and plan to save the same amount each week for 12 weeks. How much must they save weekly?

$$600 + 12x = 2400$$
$$12x = 1800$$
$$x = 150$$

They need to save **$150 per week**.

### Justifying Each Step

Real algebraic reasoning means being able to explain *why* each step is valid — usually citing the properties of equality (you can add, subtract, multiply, or divide both sides by the same value without changing the solution).

### Your Turn

Solve $5x - 18 = 2x + 12$, explaining which property of equality justifies each step. Then write your own real-world scenario that leads to a linear equation, and solve it.$lesson$,
  'HSA-REI.A.1, HSA-REI.B.3', 'Explain each step in solving a simple equation; solve linear equations and inequalities in one variable.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Unit 1 Quiz: Solving Literal Equations & Formulas', 3, 'quiz',
  $lesson$## Unit 1 Quiz: Literal Equations & Formulas

A **literal equation** is a formula with multiple variables, like $A = lw$ or $I = Prt$. Solving for a specific variable uses the exact same inverse-operation reasoning as solving a regular equation — you're just isolating a letter instead of a number. This quiz checks your ability to rearrange common formulas.$lesson$,
  'HSA-CED.A.4', 'Rearrange formulas to highlight a quantity of interest, using the same reasoning as in solving equations.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Small Project: Formula Flip', 4, 'practice',
  $lesson$## Small Project: Formula Flip

### Why Rearranging Formulas Matters

A real founder doesn't always know the same piece of information. Sometimes you know the price and need to find the quantity; sometimes you know the interest and need to find the rate. Being able to "flip" a formula to solve for any variable is an essential business skill.

### Worked Example

The simple interest formula is $I = Prt$ (Interest = Principal × rate × time). Solve for r (the rate):

$$r = \frac{I}{Pt}$$

If you earned $45 in interest on a $500 investment over 3 years: $r = \frac{45}{500 \times 3} = \frac{45}{1500} = 0.03 = 3\%$

### The Challenge

Choose 3 real-world formulas relevant to business or design (for example: markup formula, simple interest $I = Prt$, revenue $R = px$, or the area formula for packaging $A = lw$). For each formula:

1. Write the original formula and identify what each variable represents.
2. Rearrange ("flip") the formula to solve for a different variable than it's normally used for.
3. Plug in real or realistic numbers and solve using your rearranged formula.

### Submission

Show your 3 original formulas, your rearranged versions, and your worked numerical examples in the short-answer box below.$lesson$,
  'HSA-CED.A.4', 'Rearrange real-world formulas to solve for different variables, applying literal equation skills to business and finance contexts.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Writing Equations from Real-World Context', 5, 'lesson',
  $lesson$## Turning a Business Idea Into an Equation

The most valuable algebra skill for a founder is translating a real situation into a mathematical model. This means identifying your fixed costs, your variable costs, and writing them as a single equation.

### The General Pattern

$$\text{Total Cost} = (\text{cost per unit}) \times (\text{units}) + (\text{fixed costs})$$

### Worked Example

A candle business has a $75 one-time equipment cost, and each candle costs $3.50 in materials. Total cost for producing x candles:

$$C = 3.5x + 75$$

If the business wants to know how many candles they can make with a $250 budget:

$$3.5x + 75 = 250$$
$$3.5x = 175$$
$$x = 50$$

They can make **50 candles**.

### Your Turn

Model a startup idea's total cost as an equation, identifying your fixed and variable costs. Then use your equation to answer a real question, like how many units you could produce with a specific budget.$lesson$,
  'HSA-CED.A.1-3', 'Create equations and inequalities in one variable and use them to solve problems, including modeling a startup''s cost structure.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Solving & Graphing Linear Inequalities', 6, 'lesson',
  $lesson$## Modeling a Spending Limit with Inequalities

Inequalities represent constraints — exactly what a real budget is. Solving and graphing them shows you (and any investor) the full range of values that satisfy a business condition.

### Key Rule

When multiplying or dividing both sides of an inequality by a **negative** number, you must **flip the inequality sign**.

### Worked Example

A founder has a maximum budget of $600 for marketing, and each ad costs $40. How many ads (x) can they afford?

$$40x \leq 600$$
$$x \leq 15$$

On a number line, this solution is shown as a closed circle at 15, shaded to the left (toward smaller values), showing every value 15 or less is a valid solution.

### Worked Example — Sign Flip

Solve $-3x + 6 > 18$:

$$-3x > 12$$
$$x < -4 \quad (\text{sign flipped because we divided by a negative})$$

### Your Turn

Solve $-5x + 10 \leq 35$, remembering to flip the inequality sign where needed. Describe how you would graph your solution on a number line.$lesson$,
  'HSA-REI.B.3, HSA-REI.D.12', 'Solve linear inequalities in one variable, and graph the solution set on a number line.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Compound Inequalities & Absolute Value Equations', 7, 'quiz',
  $lesson$## Unit 2 Quiz: Compound Inequalities & Absolute Value

A **compound inequality** combines two conditions, like $3 < x \leq 10$ (x is more than 3 AND at most 10). An **absolute value equation** like $|x - 5| = 3$ has two possible solutions, since the expression inside can be 3 away from 5 in either direction ($x = 8$ or $x = 2$).

This quiz checks your ability to solve both types and interpret what the solutions mean in a real context, like an acceptable quality-control range for a product's weight or size.$lesson$,
  'HSA-REI.B.3', 'Solve compound inequalities and absolute value equations, interpreting solutions in real-world contexts.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'MAJOR PROJECT 1: Budget Boss — Startup Budget Challenge', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Budget Boss: Startup Budget Challenge

### Driving Question

**"How do real founders use inequalities to manage a limited startup budget?"**

### The Challenge

You've been given a fixed startup budget. Using equations and inequalities from this unit, build a full budget plan.

1. **Set your total budget** (choose a realistic number, e.g., $1,000-$5,000).
2. **List your spending categories** (at least 3: equipment, materials, marketing, licensing, etc.) with a cost or cost-per-unit for each.
3. **Write an inequality** for at least one category representing a spending limit (e.g., "marketing spending must be at most $300").
4. **Write an equation** modeling your total cost across all categories as a function of units produced or a marketing spend level, and solve for a specific target (e.g., how many units you can produce within budget).
5. **Check your solution.** Confirm that your total spending across every category stays within your overall budget — show the arithmetic.
6. **Written recommendation.** In 3-5 sentences, recommend how this founder should allocate their budget, referencing your equation and inequality results.

### What Makes This a STEAM + Entrepreneurship Project

You're using real constraint-based mathematical modeling — the exact process behind every real startup's early financial planning.

### Submission

Show your full budget breakdown, inequality, equation, solution check, and written recommendation in the short-answer boxes below.$lesson$,
  'HSA-CED.A.1-3', 'Cumulative application of equations and inequalities to build and solve a system modeling a startup budget with real constraints.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Linear Functions, Slope & Rate of Change', 9, 'lesson',
  $lesson$## Slope: The Business Growth Rate

Slope measures how fast one quantity changes relative to another — exactly what "growth rate" means for a business.

### The Slope Formula

$$m = \frac{y_2 - y_1}{x_2 - x_1}$$

### Worked Example

A subscription service had 200 users in month 1 and 500 users in month 4.

$$m = \frac{500 - 200}{4 - 1} = \frac{300}{3} = 100$$

The service is growing by **100 users per month** — assuming linear (steady) growth.

### Linear vs. Non-Linear Growth

A situation can be modeled linearly if it changes by a constant amount over equal intervals. If a business's growth rate is speeding up or slowing down over time, a linear model won't fit — you'd need an exponential or other function type instead (coming in Unit 4!).

### Your Turn

Given two data points for a business metric of your choice (e.g., sales in month 2 and month 5), calculate the slope (rate of change) and explain what it means in real terms for that business.$lesson$,
  'HSF-IF.B.6, HSF-LE.A.1', 'Calculate and interpret the average rate of change of a function; distinguish between situations that can be modeled with linear functions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Writing Equations of Lines', 10, 'quiz',
  $lesson$## Unit 3 Quiz: Writing Equations of Lines

This quiz checks your ability to write a linear equation from different types of information: two points, a slope and a point, or a verbal description. Remember the two key forms:

$$\text{Slope-Intercept Form: } y = mx + b \qquad \text{Point-Slope Form: } y - y_1 = m(x - x_1)$$

Both describe the exact same line — you'll choose whichever form is easier based on the information you're given.$lesson$,
  'HSF-LE.A.2', 'Construct linear functions given a graph, a description of a relationship, or two input-output pairs, in slope-intercept and point-slope forms.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Solving Systems — Small Project: Two Paths to Profit', 11, 'practice',
  $lesson$## Small Project: Two Paths to Profit

### Solving Systems, Reviewed

A system of two linear equations can be solved by substitution, elimination, or graphing. The solution — the point where both lines intersect — represents the exact condition where two scenarios are equal.

### Worked Example

Strategy A: charge a flat $200 setup fee plus $10 per unit: $y = 10x + 200$
Strategy B: charge no setup fee but $18 per unit: $y = 18x$

Setting them equal: $10x + 200 = 18x$, which gives $200 = 8x$, so $x = 25$, $y = 450$.

At **25 units**, both strategies generate exactly $450 — below 25 units, Strategy B (no setup fee) is cheaper; above 25 units, Strategy A becomes the better deal.

### The Challenge

Design two different business or pricing strategies for the same product or service (like the example above — one with a setup fee, one without, or two different subscription tiers).

1. Write a linear equation for each strategy.
2. Solve the system to find the exact point where both strategies produce the same result.
3. Explain, using your solution, which strategy is better below that point, and which is better above it.

### Submission

Show both equations, your full system solution (using substitution or elimination), and your written strategy explanation in the short-answer box below.$lesson$,
  'HSA-REI.C.6', 'Solve systems of linear equations exactly, comparing two business or pricing strategies modeled as a system.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Flex Week: Cumulative Review & Project Studio', 12, 'practice',
  $lesson$## Flex Week: Review & Project Studio

Before moving into Unit 4 (Exponents & Exponential Functions), let's make sure Units 1-3 are locked in with a mixed review.

### Cumulative Review

1. **Expressions:** Simplify $5(2x - 3) + 4x$.
2. **Equations:** Solve $6x - 10 = 2x + 14$.
3. **Inequalities:** Solve $-4x + 8 \leq 20$.
4. **Linear functions & systems:** Solve the system $y = 3x + 2$ and $y = x + 10$.

### Project Studio Time

Revisit your Budget Boss and Two Paths to Profit project work. Reread your written explanations — is your reasoning clear enough that someone unfamiliar with your business idea could follow it?

### Your Turn

Solve all 4 review problems above, showing your work for each. Then write 2-3 sentences identifying which unit (expressions/equations, inequalities, or functions/systems) you'd like extra practice on before high-stakes assessments.$lesson$,
  'HSA-SSE.A, HSA-CED.A, HSA-REI.A-C, HSF-IF-LE', 'Cumulative review of expressions, equations, inequalities, linear functions, and systems from Units 1-3.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Properties of Exponents & Radicals', 13, 'lesson',
  $lesson$## Exponents & Radicals: The Language of Growth

This unit sets up exponential functions — the mathematical model behind compounding growth, viral spread, and investment returns.

### Key Rules

- $a^{1/n} = \sqrt[n]{a}$ (a rational exponent is a radical)
- $a^{m/n} = \sqrt[n]{a^m} = (\sqrt[n]{a})^m$
- $a^{-n} = \frac{1}{a^n}$

### Worked Example

Simplify $16^{1/2}$: this means $\sqrt{16} = 4$.

Simplify $8^{2/3}$: this means $(\sqrt[3]{8})^2 = 2^2 = 4$.

### Why This Matters

Compounding growth formulas (coming next lesson) rely heavily on exponent rules. Getting comfortable with fractional and negative exponents now makes exponential functions much easier to work with.

### Your Turn

Simplify $27^{1/3}$ and $4^{3/2}$, showing your reasoning for each using the rules above.$lesson$,
  'HSN-RN.A.1-2', 'Extend the properties of exponents to rational exponents; rewrite expressions involving radicals and rational exponents.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'Exponential Functions — Growth & Decay Introduction', 14, 'quiz',
  $lesson$## Unit 4 Quiz: Exponential Growth & Decay

An exponential function has the form $y = a(1 + r)^t$ for growth, or $y = a(1 - r)^t$ for decay, where a is the starting amount, r is the rate (as a decimal), and t is time.

This is different from linear growth (constant amount added each period) — exponential growth adds a constant **percentage** each period, which means the actual amount added grows larger and larger over time. This quiz checks your ability to identify, evaluate, and interpret exponential growth and decay models — the same math behind compound interest, population growth, and viral spread.$lesson$,
  'HSF-IF.C.7e, HSF-LE.A.1-2', 'Graph exponential functions, distinguishing between growth and decay; recognize situations that grow or decay by a constant percent rate.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1')),
  'MAJOR PROJECT 2 CAPSTONE: Founders Pitch — Linear Systems Business Model', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: Founders Pitch — Linear Systems Business Model

Congratulations on reaching your final project of the semester! This capstone brings together systems of equations and exponential growth modeling into a full investor-style pitch.

### Driving Question

**"Which business strategy wins — and how do we prove it with math?"**

### The Challenge

You're pitching an original venture to a mock investor panel.

1. **Design two pricing or revenue strategies** for your venture (like the "Two Paths to Profit" project, but for your own original idea).
2. **Write a linear equation for each strategy**, and solve the resulting system to find the point where they produce equal results.
3. **Interpret the solution.** Explain which strategy wins below that point, and which wins above it — and make a clear recommendation for which strategy your venture should use.
4. **Extend with exponential growth.** Choose one of your strategies and model a growth forecast using an exponential function $y = a(1+r)^t$, where a is your starting value (like month-1 revenue) and r is a realistic growth rate.
5. **Evaluate your exponential model** for 3 different time points (e.g., month 3, month 6, month 12).
6. **Full pitch.** In 5-7 sentences, pitch your venture as if presenting to an investor panel: describe your idea, your chosen pricing strategy (backed by your system-of-equations analysis), and your growth forecast (backed by your exponential model).

### What Makes This a STEAM + Entrepreneurship Capstone

You're combining systems of linear equations, exponential modeling, and real investor-style communication — exactly the blend of skills a real founder needs to raise funding and grow a venture.

### Submission

Type your full pitch package — both strategy equations, your system solution and interpretation, your exponential growth model with evaluated projections, and your full investor pitch — into the short-answer boxes below. This project represents your growth across the entire fall semester, so take your time and show your best work.$lesson$,
  'HSA-REI.C.6, HSF-LE.A', 'Cumulative application of systems of equations and exponential growth modeling to a full investor-style venture pitch.', 75
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Expressions, Order of Operations & Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Simplify: 3(4x - 2) + 5', '["12x - 1", "12x + 5", "7x + 3", "12x - 6"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Expressions, Order of Operations & Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Which property justifies: 3(x + 4) = 3x + 12?', '["Commutative", "Associative", "Distributive", "Identity"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Expressions, Order of Operations & Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Simplify 4(3x - 2) + 5x, then write and simplify your own two-part cost expression.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving Linear Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Solve: 5x - 18 = 2x + 12', '["x = 10", "x = 6", "x = 4", "x = 30"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving Linear Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Solve: 3(x - 4) = 21', '["x = 11", "x = 7", "x = 9", "x = 15"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving Linear Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Solve 5x - 18 = 2x + 12, explaining the property of equality used at each step.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Solving Literal Equations & Formulas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Solve A = lw for w.', '["w = A - l", "w = A/l", "w = Al", "w = l/A"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Solving Literal Equations & Formulas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Solve I = Prt for t.', '["t = I/(Pr)", "t = IPr", "t = Pr/I", "t = I - Pr"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Solving Literal Equations & Formulas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'multiple_choice', 'Solve y = mx + b for x.', '["x = (y-b)/m", "x = (y+b)/m", "x = ym - b", "x = y/m - b"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Solving Literal Equations & Formulas' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Solve the perimeter formula P = 2l + 2w for w, showing each step.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Formula Flip' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'short_answer', 'Write your first formula, identify each variable, and show it rearranged to solve for a different variable.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Formula Flip' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'short_answer', 'Write your second formula, its rearranged version, and a worked numerical example.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Formula Flip' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Algebra' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Write your third formula, its rearranged version, and a worked numerical example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing Equations from Real-World Context' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'A business has a $50 fixed cost and $4 per unit. Which equation models total cost?', '["C = 50x + 4", "C = 4x + 50", "C = 4x - 50", "C = 54x"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing Equations from Real-World Context' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Using C = 4x + 50, how many units can be made with a $150 budget?', '["25", "50", "100", "37.5"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing Equations from Real-World Context' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Model your own startup idea''s total cost as an equation, then use it to answer a specific budget question.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving & Graphing Linear Inequalities' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Solve: 40x ≤ 600', '["x \u2264 15", "x \u2264 24", "x \u2264 640", "x \u2265 15"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving & Graphing Linear Inequalities' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Solve: -3x + 6 > 18 (watch the sign!)', '["x < -4", "x > -4", "x < 4", "x > 4"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving & Graphing Linear Inequalities' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Solve -5x + 10 ≤ 35, and describe how you would graph the solution on a number line.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Compound Inequalities & Absolute Value Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Solve: |x - 5| = 3', '["x = 8 only", "x = 2 only", "x = 8 or x = 2", "No solution"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Compound Inequalities & Absolute Value Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Which value satisfies 3 < x ≤ 10?', '["3", "10", "7", "11"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Compound Inequalities & Absolute Value Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'multiple_choice', 'Solve: |x + 2| = 6', '["x = 4 or x = -8", "x = 8 or x = -4", "x = 4 only", "x = -4 only"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Compound Inequalities & Absolute Value Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Explain why absolute value equations often have two solutions, using an example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Budget Boss — Startup Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'short_answer', 'List your total budget and spending categories with costs.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Budget Boss — Startup Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'short_answer', 'Write your spending-limit inequality for one category.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Budget Boss — Startup Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Write and solve your total cost equation for a specific target.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Budget Boss — Startup Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Linear Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Show your budget check across all categories and write your 3-5 sentence recommendation.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Linear Functions, Slope & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Find the slope between (2, 10) and (6, 30).', '["4", "5", "20", "8"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Linear Functions, Slope & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'A company had 100 users in month 1 and 400 in month 4. What is the rate of change?', '["100 per month", "300 per month", "75 per month", "400 per month"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Linear Functions, Slope & Rate of Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Given two data points for a metric of your choice, calculate the slope and explain what it means.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing Equations of Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'A line has slope 4 and passes through (0, 7). What is its equation?', '["y = 4x + 7", "y = 7x + 4", "y = 4x - 7", "y = 7x - 4"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing Equations of Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'A line passes through (2, 5) with slope 3. Using point-slope form, which equation is correct?', '["y - 5 = 3(x - 2)", "y - 2 = 3(x - 5)", "y + 5 = 3(x + 2)", "y = 3x + 5"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing Equations of Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'multiple_choice', 'Find the equation of the line through (1, 4) and (3, 10).', '["y = 3x + 1", "y = 3x + 4", "y = x + 3", "y = 6x - 2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Writing Equations of Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Write the equation of a line passing through (4, 9) with slope 2, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving Systems — Small Project: Two Paths to Profit' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'short_answer', 'Write both of your strategy equations.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Solving Systems — Small Project: Two Paths to Profit' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'short_answer', 'Solve the system, showing your substitution or elimination steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Solving Systems — Small Project: Two Paths to Profit' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Explain which strategy is better below your solution point, and which is better above it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Simplify: 5(2x - 3) + 4x', '["14x - 15", "10x - 15", "14x - 3", "9x - 15"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Solve: 6x - 10 = 2x + 14', '["x = 6", "x = 4", "x = 8", "x = 24"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Solve -4x + 8 ≤ 20, showing your work.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Linear Functions & Systems' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Solve the system y = 3x + 2 and y = x + 10, then reflect on which unit needs extra practice.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Properties of Exponents & Radicals' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Simplify: 25^(1/2)', '["5", "12.5", "50", "625"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Properties of Exponents & Radicals' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'Simplify: 8^(2/3)', '["4", "16", "2", "64"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Properties of Exponents & Radicals' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Simplify 27^(1/3) and 4^(3/2), showing your reasoning for each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Exponential Functions — Growth & Decay Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'multiple_choice', 'Which equation models 5% annual growth on a starting value of 200?', '["y = 200(1.05)^t", "y = 200(0.95)^t", "y = 200 + 0.05t", "y = 200(5)^t"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Exponential Functions — Growth & Decay Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'multiple_choice', 'In y = a(1 - r)^t, what does this model represent?', '["Growth", "Decay", "A constant value", "A linear relationship"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Exponential Functions — Growth & Decay Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'multiple_choice', 'What is the key difference between linear and exponential growth?', '["Linear adds a constant amount; exponential adds a constant percent", "They are the same", "Exponential is always slower", "Linear always involves negative numbers"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Exponential Functions — Growth & Decay Introduction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Given y = 500(1.08)^t, evaluate y at t = 3 and explain what the result means.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Founders Pitch — Linear Systems Business Model' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 1, 'short_answer', 'Write your two pricing/revenue strategy equations.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Founders Pitch — Linear Systems Business Model' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 2, 'short_answer', 'Solve the system and interpret which strategy wins below vs. above that point.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Founders Pitch — Linear Systems Business Model' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 3, 'short_answer', 'Write your exponential growth model and evaluate it for 3 time points.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Founders Pitch — Linear Systems Business Model' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Exponents & Intro to Exponential Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-algebra-1'))), 4, 'short_answer', 'Write your 5-7 sentence full investor pitch.', NULL, NULL);
