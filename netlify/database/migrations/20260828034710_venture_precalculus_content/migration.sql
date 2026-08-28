-- Pre-Calculus (Grade 12) Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Pre-Calculus Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including 2 small projects, 2 major STEAM/entrepreneurial projects (L8 and the full-semester
-- capstone L15), and a Flex Week cumulative review (L12).

UPDATE courses SET status = 'published' WHERE slug = 'venture-precalculus';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-precalculus'), 'Unit 1: Functions Review & Modeling', 0),
((SELECT id FROM courses WHERE slug='venture-precalculus'), 'Unit 2: Exponential & Logarithmic Functions', 1),
((SELECT id FROM courses WHERE slug='venture-precalculus'), 'Unit 3: Statistics & Data-Driven Decision Making', 2),
((SELECT id FROM courses WHERE slug='venture-precalculus'), 'Unit 4: Trigonometric Functions & Capstone Applications', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Function Review: Linear, Quadratic & Polynomial Recap', 1, 'lesson',
  $lesson$## Welcome to Pre-Calculus: The Founder's Capstone Year

This final semester of Venture Math brings together everything you've built since Grade 6 — every function type, every modeling skill — into the most powerful toolkit yet for founding and running a real venture.

### Quick Review: Three Function Families

- **Linear:** $y = mx + b$ — constant rate of change; models steady growth like a fixed hourly wage
- **Quadratic:** $y = ax^2 + bx + c$ — has a vertex (max or min); models profit optimization or projectile motion
- **Polynomial:** higher-degree combinations; models more complex trends with multiple turning points

### Worked Example

A venture's quarterly revenue data doesn't increase by the same amount each quarter — it increases and then levels off. This "diminishing rate of growth" pattern is a signal that a quadratic (or higher) model, not a linear one, best fits the data.

### Why Review Matters

Before choosing a mathematical model for real data (next lesson!), you need to recognize which function family fits the pattern you're seeing — a skill that separates a rigorous data-driven pitch from a guess.

### Your Turn

Given three business scenarios — (1) a flat monthly subscription fee, (2) a product's profit that rises then falls as production increases, and (3) rapid viral growth that keeps accelerating — identify which function family (linear, quadratic, or exponential — a preview of Unit 2) best fits each, and explain your reasoning.$lesson$,
  'HSF-IF.C', 'Analyze functions using different representations, reviewing key features of linear, quadratic, and polynomial functions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Modeling with Functions: Regression Basics', 2, 'lesson',
  $lesson$## Fitting a Trend Line to Real Data

**Regression** is the process of finding the function that best fits a real dataset — the exact tool behind every "trend line" you've seen on a business dashboard or sales report.

### Linear Regression, Conceptually

Given a scatter plot of data points, linear regression finds the line $y = mx + b$ that minimizes the overall distance between the line and all the data points — the "line of best fit."

### Worked Example

A pop-up shop tracked sales over 4 weekends:

| Weekend | Sales ($) |
|---------|-----------|
| 1       | 200       |
| 2       | 320       |
| 3       | 410       |
| 4       | 500       |

Plotting these points shows a roughly linear trend increasing by about $100 per weekend. A reasonable regression line might be $y = 100x + 100$, which we could use to predict weekend 5 sales: $y = 100(5) + 100 = 600$.

### Why This Matters

Investors trust models backed by real data far more than guesses. Being able to fit and interpret a trend line turns your sales history into a credible forecast.

### Your Turn

Using the 4-weekend sales data above (or your own invented dataset), describe the trend you observe, propose a linear model, and use it to predict the next data point.$lesson$,
  'HSS-ID.B.6', 'Fit a function to data; use functions fitted to data to solve problems in the context of the data.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Unit 1 Quiz: Composite & Inverse Functions', 3, 'quiz',
  $lesson$## Unit 1 Quiz: Composite & Inverse Functions

A **composite function** $f(g(x))$ applies one function to the result of another — useful for chaining business processes (e.g., a discount function applied after a markup function). An **inverse function** $f^{-1}(x)$ reverses a function's process.

This quiz checks your ability to compose functions, evaluate composites at specific values, and find and verify inverse functions in more advanced contexts than Algebra II.$lesson$,
  'HSF-BF.A.1c, HSF-BF.B.4', 'Compose functions, and find inverse functions in more complex contexts, including verifying compositions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Small Project: Fit the Trend', 4, 'practice',
  $lesson$## Small Project: Fit the Trend

### The Challenge

Choose (or invent realistic) data for a small business or market trend — for example, monthly sales for a venture, weekly website visits, or a product's user growth over several months.

1. **Collect or invent at least 5 data points** (e.g., month 1 through month 5) for your chosen metric.
2. **Describe the trend** you observe — is it roughly linear, or does it curve?
3. **Propose a regression model** (a linear equation $y = mx + b$ that reasonably fits your data), showing how you estimated m and b from your data points.
4. **Use your model to predict** a future value (e.g., month 6 or month 8).
5. **Evaluate your model's usefulness.** In 2-3 sentences, discuss one limitation of using a simple regression model to predict business data (e.g., trends can change suddenly, models fitted on limited data can be unreliable, real-world data is rarely perfectly linear).

### Submission

Show your dataset, your trend description, your regression model, your prediction, and your written evaluation in the short-answer box below.$lesson$,
  'HSS-ID.B.6', 'Fit a regression model to a real or simulated small-business or market dataset and use it to make a prediction.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Exponential Growth/Decay & the Compound Interest Formula', 5, 'lesson',
  $lesson$## The Most Powerful Formula in Personal Finance

The **compound interest formula** models how money (or any quantity) grows when a percentage is added repeatedly over time:

$$A = P\left(1 + \frac{r}{n}\right)^{nt}$$

where A = final amount, P = principal (starting amount), r = annual interest rate (decimal), n = number of times compounded per year, and t = time in years.

### Worked Example

A founder invests $2,000 at a 6% annual rate, compounded monthly, for 5 years:

$$A = 2000\left(1 + \frac{0.06}{12}\right)^{12 \times 5} = 2000(1.005)^{60} \approx 2000 \times 1.3489 \approx \$2,697.80$$

### Growth vs. Decay

If r is positive, the formula models growth (investment, population). If you use $(1 - r)$ instead of $(1 + r)$, it models decay (depreciation, radioactive decay, demand decline).

### Your Turn

A founder invests $5,000 at 4% annual interest, compounded quarterly, for 10 years. Calculate the final amount using the compound interest formula, showing each step.$lesson$,
  'HSF-LE.A.4, HSF-BF.A.1', 'Model situations of exponential growth and decay, including compound interest, and interpret parameters in context.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Logarithms & Their Properties', 6, 'lesson',
  $lesson$## Logarithms: Solving for Time in a Growth Model

A **logarithm** answers the question "what exponent do I need?" It is the inverse operation of exponentiation: $\log_b(y) = x$ means $b^x = y$.

### Key Properties

- $\log_b(MN) = \log_b(M) + \log_b(N)$
- $\log_b\left(\frac{M}{N}\right) = \log_b(M) - \log_b(N)$
- $\log_b(M^p) = p\log_b(M)$

### Worked Example

A founder wants to know how long it takes an investment to double at 8% annual interest, compounded annually: solve $2 = (1.08)^t$ for t.

$$\log(2) = t \log(1.08)$$
$$t = \frac{\log(2)}{\log(1.08)} \approx \frac{0.301}{0.0334} \approx 9 \text{ years}$$

This is closely related to the "Rule of 72" investors use for quick doubling-time estimates.

### Your Turn

Using logarithms, find how many years it takes an investment to triple at 5% annual interest, compounded annually. Show your work using the logarithm properties above.$lesson$,
  'HSF-BF.B.5', 'Understand the inverse relationship between exponents and logarithms, and use the properties of logarithms.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Unit 2 Quiz: Solving Exponential & Logarithmic Equations', 7, 'quiz',
  $lesson$## Unit 2 Quiz: Exponential & Logarithmic Equations

This quiz checks your ability to set up and solve equations involving exponential growth/decay and logarithms — the exact math behind questions like "how long until my investment reaches $10,000?" or "what interest rate do I need to double my money in 8 years?"$lesson$,
  'HSA-CED.A.1', 'Create and solve exponential and logarithmic equations that arise from real-world contexts.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'MAJOR PROJECT 1: Compound Interest & Investment Strategy', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Compound Interest & Investment Strategy

### Driving Question

**"Should a young entrepreneur save, invest, or reinvest their early profits — and how do we prove which is best?"**

### The Challenge

Imagine you've earned $3,000 in profit from a venture. Compare 2-3 strategies for what to do with it.

1. **Strategy 1 — Save it.** Model this money in a savings account with a low interest rate (e.g., 1.5% compounded monthly) over 5 years using the compound interest formula.
2. **Strategy 2 — Invest it.** Model the same amount in an investment account with a higher, but riskier, rate (e.g., 7% compounded annually) over 5 years.
3. **Strategy 3 — Reinvest it in the venture.** Assume reinvesting the $3,000 into your business generates a return best modeled as a percentage growth rate of your choice (justify your choice) — model this as exponential growth too.
4. **Compare all strategies** at the 5-year mark, showing your calculations for each.
5. **Use logarithms** to calculate how long it would take Strategy 2 (the investment) to double, for extra context.
6. **Written recommendation.** In 4-6 sentences, recommend which strategy this founder should choose, referencing your calculations and discussing risk versus reward.

### What Makes This a STEAM + Entrepreneurship Project

You're using real exponential financial modeling — the exact reasoning behind every serious personal finance and business investment decision.

### Submission

Show all three strategy calculations, your doubling-time calculation, and your written recommendation in the short-answer boxes below.$lesson$,
  'HSF-LE.A, HSF-BF.B.5', 'Cumulative application of exponential and logarithmic modeling to compare financial strategies for a young entrepreneur''s profits.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Sampling Methods & Distributions', 9, 'lesson',
  $lesson$## Designing a Customer Survey That Actually Works

Before a business can trust survey data, it needs a **sample** that fairly represents its target customers — not just whoever happened to be easiest to ask.

### Sampling Methods

- **Random sampling:** every member of the population has an equal chance of being selected — the gold standard for fairness
- **Convenience sampling:** surveying whoever is easiest to reach — fast, but often biased
- **Stratified sampling:** dividing the population into subgroups (e.g., by age) and sampling proportionally from each — useful when you want to make sure every customer segment is represented

### Worked Example

A founder wants to know if teenagers would buy their product. Surveying only friends and family (convenience sampling) will likely produce biased, overly-positive results. A random sample of actual teenagers outside their existing network — or a stratified sample across different age groups within "teenager" — gives far more trustworthy data.

### Your Turn

Design a customer survey plan for a venture idea of your choice. Describe your target population, your chosen sampling method, and explain why you chose that method over the alternatives.$lesson$,
  'HSS-IC.A.1-2', 'Understand statistics as a process for making inferences about population parameters based on a random sample.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Measures of Center, Spread & the Normal Distribution', 10, 'quiz',
  $lesson$## Unit 3 Quiz: Measures of Center & Spread

This quiz checks your understanding of mean, median, and standard deviation — and the **normal distribution**, the classic "bell curve" shape that many real datasets (customer ages, product ratings, response times) roughly follow. Understanding spread (not just the average) tells a founder how consistent or variable their data really is — critical for realistic planning.$lesson$,
  'HSS-ID.A.1-4', 'Summarize, represent, and interpret data using measures of center (mean, median) and spread (standard deviation), and understand the normal distribution.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Small Project: Know Your Customer', 11, 'practice',
  $lesson$## Small Project: Know Your Customer

### The Challenge

Design a simulated market-research survey for an original venture idea.

1. **Define your target customer** and describe your sampling method (from Lesson 9).
2. **Design 3 survey questions** you would ask potential customers (e.g., "How much would you pay for this product?").
3. **Simulate results.** Invent realistic survey response data for at least 10 "respondents" for one of your questions (e.g., a price they'd be willing to pay).
4. **Calculate the mean and median** of your simulated data, and briefly describe the spread (are responses tightly clustered, or widely spread out?).
5. **Interpret your findings.** In 3-5 sentences, explain what your simulated data suggests about your target customer, and how it might shape your pricing or product decisions.

### Submission

Show your target customer description, sampling method, survey questions, simulated data, calculated mean/median, and written interpretation in the short-answer box below.$lesson$,
  'HSS-IC.A.1-2', 'Design and analyze a simulated market-research survey for a venture idea using sampling and statistical measures.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Flex Week: Cumulative Review & Project Studio', 12, 'practice',
  $lesson$## Flex Week: Review & Project Studio

Before moving into Unit 4 (Trigonometry & the Final Capstone), let's lock in Units 1-3 with a mixed review.

### Cumulative Review

1. **Function review:** Which function family (linear, quadratic, or exponential) best models rapid, ever-accelerating growth?
2. **Exponential/compound interest:** Calculate A for P=$1,000, r=5%, compounded annually, t=3 years.
3. **Logarithms:** Solve $3 = (1.1)^t$ for t using logarithms.
4. **Statistics:** A dataset has values 10, 12, 14, 50. Which measure of center (mean or median) is more affected by the outlier (50), and why?

### Project Studio Time

Revisit your Compound Interest and Know Your Customer project work. This is your last checkpoint before your final capstone — make sure your calculations and written reasoning are clear and complete.

### Your Turn

Solve all 4 review problems above, showing your work. Then write 2-3 sentences on which unit (function modeling, exponential/logarithmic functions, or statistics) you feel most confident bringing into your capstone project.$lesson$,
  'HSF-IF-BF, HSS-ID, HSS-IC', 'Cumulative review of function modeling, exponential/logarithmic functions, and statistics from Units 1-3.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'The Unit Circle & Introduction to Trigonometric Functions', 13, 'lesson',
  $lesson$## Trigonometry Beyond Triangles: The Unit Circle

In Geometry, you used trig ratios for right triangles. Now, the **unit circle** (a circle with radius 1 centered at the origin) extends sine and cosine into full periodic functions that can model repeating patterns over time.

### Radians

A full circle is $2\pi$ radians (equivalent to 360°). Key angles: $\frac{\pi}{2}$ = 90°, $\pi$ = 180°, $\frac{3\pi}{2}$ = 270°.

### Sine and Cosine on the Unit Circle

For any angle $\theta$ measured from the positive x-axis, the point on the unit circle is $(\cos\theta, \sin\theta)$. As $\theta$ increases past $2\pi$, the pattern repeats — this periodic (repeating) behavior is exactly what makes trig functions perfect for modeling seasonal or cyclical business patterns.

### Worked Example

A holiday gift shop sees sales rise every December and fall every summer, repeating each year — a pattern that resembles a sine wave with a period of 12 months, not a straight line or a simple exponential curve.

### Your Turn

Explain, in your own words, why a business with seasonal sales (like a swimwear company or a holiday decoration shop) would be better modeled with a trigonometric function than a linear or exponential one.$lesson$,
  'HSF-TF.A.1-2', 'Understand radian measure and the unit circle; define sine and cosine functions using the unit circle.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'Trig Graphs & Real-World Periodic Modeling', 14, 'quiz',
  $lesson$## Unit 4 Quiz: Trig Graphs & Periodic Modeling

A periodic model has the general form $y = A\sin(B(x - C)) + D$, where A is the amplitude (how far values swing from the midline), $\frac{2\pi}{B}$ is the period (how long one full cycle takes), C is the horizontal shift, and D is the midline (the average value).

This quiz checks your ability to identify these parameters from a real periodic scenario (like seasonal sales, temperature patterns, or foot traffic) and write or interpret the resulting trigonometric model.$lesson$,
  'HSF-TF.B.5', 'Choose trigonometric functions to model periodic phenomena with specified amplitude, frequency, and midline.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus')),
  'MAJOR PROJECT 2 CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast

Congratulations on reaching the final capstone of your Venture Studio math journey! This project brings together statistics, exponential modeling, and regression into one complete, investor-ready business plan.

### Driving Question

**"What does it take to build a complete, data-backed business plan?"**

### The Challenge

Design a complete venture plan for an original business idea, synthesizing the full semester's tools.

1. **Market research.** Design a customer survey plan (sampling method, target customer, 3 survey questions) as in your Unit 3 project. Simulate realistic data for at least 10 respondents on your key question (e.g., willingness to pay), and calculate the mean, median, and a brief description of spread.
2. **Financial forecast — choose one path:**
   - **Exponential path:** Model your venture's projected growth or an investment/reinvestment strategy using the compound interest/exponential growth formula, projecting values at 1, 3, and 5 years.
   - **Regression path:** If your venture has (simulated) historical sales data, fit a regression model and use it to forecast future performance.
   - Optionally, if your venture has seasonal/cyclical demand, incorporate a trigonometric model to describe that pattern as a bonus enhancement.
3. **Bring it together.** Explain how your market research data (from step 1) informed a decision in your financial model (from step 2) — for example, your survey's average willingness-to-pay directly setting your price assumption in your forecast.
4. **Full investor pitch.** In 6-8 sentences, present your complete venture: the idea, your market research findings, your financial forecast, and why an investor should be confident in this data-backed plan.
5. **Reflection on your growth.** In 3-5 sentences, reflect on which mathematical tool from this entire fall semester (function modeling, exponential/logarithmic reasoning, statistics, or trigonometry) you found most valuable, and why.

### What Makes This the Ultimate STEAM + Entrepreneurship Capstone

This project synthesizes every major mathematical tool from your Venture Studio math journey — function modeling, exponential and logarithmic reasoning, statistical analysis, and periodic modeling — into the exact kind of complete, data-driven business plan real founders use to raise funding and make decisions.

### Submission

Type your complete venture plan — market research design and data, financial forecast with all calculations shown, your synthesis explanation, full investor pitch, and personal reflection — into the short-answer boxes below. This is your capstone for the entire fall semester, so take your time and show your very best work.$lesson$,
  'Full-course synthesis', 'The full-semester capstone synthesizing statistics-based market research and exponential/regression financial forecasting into one complete, pitch-ready venture plan.', 90
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Function Review: Linear, Quadratic & Polynomial Recap' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'Which function family has a constant rate of change?', '["Linear", "Quadratic", "Exponential", "Polynomial of degree 3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Function Review: Linear, Quadratic & Polynomial Recap' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'A profit model that rises then falls as production increases is best modeled by:', '["A linear function", "A quadratic function", "A constant function", "None of these"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Function Review: Linear, Quadratic & Polynomial Recap' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Identify the best function family for each of the 3 given business scenarios, explaining your reasoning.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Modeling with Functions: Regression Basics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'Linear regression finds a line that:', '["Passes through every data point exactly", "Minimizes overall distance to all data points", "Ignores outliers completely", "Only works with 2 data points"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Modeling with Functions: Regression Basics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'Using y = 100x + 100, predict weekend 6 sales.', '["600", "700", "500", "650"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Modeling with Functions: Regression Basics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Describe the trend in the 4-weekend sales data, propose a linear model, and predict the next data point.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Composite & Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'If f(x) = 2x and g(x) = x + 3, what is f(g(2))?', '["10", "7", "8", "4"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Composite & Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'What does an inverse function do?', '["Doubles the output", "Reverses the original function''s process", "Squares the input", "Nothing different"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Composite & Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'multiple_choice', 'If f(x) = 3x - 6, what is f^-1(x)?', '["(x+6)/3", "(x-6)/3", "3x+6", "x/3 - 6"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Composite & Inverse Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 4, 'short_answer', 'Given f(x) = x + 4 and g(x) = 2x, find f(g(3)) and g(f(3)), and explain why the order matters.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Fit the Trend' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'short_answer', 'Present your dataset (at least 5 data points) and describe the trend you observe.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Fit the Trend' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'short_answer', 'Propose your regression model, showing how you estimated m and b.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Fit the Trend' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Functions Review & Modeling' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Use your model to predict a future value, and discuss one limitation of your model.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Exponential Growth/Decay & the Compound Interest Formula' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'In A = P(1 + r/n)^(nt), what does n represent?', '["Number of years", "Number of times compounded per year", "The interest rate", "The principal"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Exponential Growth/Decay & the Compound Interest Formula' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'Which formula models decay instead of growth?', '["A = P(1+r)^t", "A = P(1-r)^t", "A = Prt", "A = P + rt"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Exponential Growth/Decay & the Compound Interest Formula' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Calculate the final amount for P=$5,000, r=4%, compounded quarterly, t=10 years, showing each step.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Logarithms & Their Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'log_b(MN) is equivalent to:', '["log_b(M) - log_b(N)", "log_b(M) + log_b(N)", "log_b(M) x log_b(N)", "log_b(M)/log_b(N)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Logarithms & Their Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'If log_b(y) = x, then:', '["y = bx", "b = xy", "b^x = y", "x^b = y"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Logarithms & Their Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Find how many years it takes an investment to triple at 5% annual interest, compounded annually, showing your logarithm work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Solving Exponential & Logarithmic Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'Solve for t: 2 = (1.05)^t (round to nearest whole number)', '["10", "14", "20", "7"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Solving Exponential & Logarithmic Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'Solve: log(x) = 3', '["x = 3", "x = 30", "x = 1000", "x = 300"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Solving Exponential & Logarithmic Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'A founder wants their $1,000 investment to grow to $2,500 at 6% annual interest. Set up and solve for t.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Compound Interest & Investment Strategy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'short_answer', 'Show your Strategy 1 (savings) calculation over 5 years.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Compound Interest & Investment Strategy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'short_answer', 'Show your Strategy 2 (investment) calculation over 5 years.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Compound Interest & Investment Strategy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Show your Strategy 3 (reinvestment) calculation, justifying your chosen growth rate.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Compound Interest & Investment Strategy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Exponential & Logarithmic Functions' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 4, 'short_answer', 'Show your doubling-time calculation for Strategy 2, and write your 4-6 sentence recommendation.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Sampling Methods & Distributions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'Which sampling method gives every population member an equal chance of selection?', '["Convenience sampling", "Random sampling", "Voluntary sampling", "Judgment sampling"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Sampling Methods & Distributions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'Surveying only friends and family is an example of:', '["Random sampling", "Stratified sampling", "Convenience sampling", "Systematic sampling"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Sampling Methods & Distributions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Design a survey plan for a venture idea, describing your target population, sampling method, and reasoning.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Measures of Center, Spread & the Normal Distribution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'Which measure of center is most affected by outliers?', '["Median", "Mean", "Mode", "Range"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Measures of Center, Spread & the Normal Distribution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'A dataset that is symmetric and bell-shaped follows a:', '["Uniform distribution", "Normal distribution", "Skewed distribution", "Bimodal distribution"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Measures of Center, Spread & the Normal Distribution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'multiple_choice', 'Standard deviation measures:', '["The average value", "The middle value", "The spread of the data", "The most frequent value"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Measures of Center, Spread & the Normal Distribution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 4, 'short_answer', 'Explain why a founder would care about spread (standard deviation), not just the average, in customer data.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Know Your Customer' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'short_answer', 'Describe your target customer and sampling method.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Know Your Customer' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'short_answer', 'List your 3 survey questions and present your simulated data for 10 respondents on one question.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Know Your Customer' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Calculate the mean and median of your data, describe the spread, and write your 3-5 sentence interpretation.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'Which function family models rapid, ever-accelerating growth?', '["Linear", "Quadratic", "Exponential", "Constant"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'Calculate A for P=$1,000, r=5%, compounded annually, t=3 years (round to nearest dollar).', '["$1,150", "$1,158", "$1,050", "$1,200"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Solve 3 = (1.1)^t for t using logarithms, showing your work.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Statistics & Data-Driven Decision Making' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 4, 'short_answer', 'Explain which measure of center is more affected by the outlier in {10, 12, 14, 50}, then reflect on which unit you feel most confident in.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Unit Circle & Introduction to Trigonometric Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'How many radians are in a full circle?', '["\u03c0", "2\u03c0", "\u03c0/2", "4\u03c0"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Unit Circle & Introduction to Trigonometric Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'On the unit circle, the point at angle θ is:', '["(sin\u03b8, cos\u03b8)", "(cos\u03b8, sin\u03b8)", "(tan\u03b8, cos\u03b8)", "(1, \u03b8)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Unit Circle & Introduction to Trigonometric Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Explain why a seasonal business would be better modeled with a trigonometric function than a linear or exponential one.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Trig Graphs & Real-World Periodic Modeling' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'multiple_choice', 'In y = A sin(B(x-C)) + D, what does A represent?', '["The period", "The amplitude", "The midline", "The horizontal shift"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Trig Graphs & Real-World Periodic Modeling' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'multiple_choice', 'In the same equation, what does D represent?', '["The amplitude", "The period", "The midline (average value)", "The frequency"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Trig Graphs & Real-World Periodic Modeling' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'multiple_choice', 'The period of a trig function is calculated as:', '["2\u03c0 \u00d7 B", "2\u03c0 / B", "B / 2\u03c0", "A \u00d7 B"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Trig Graphs & Real-World Periodic Modeling' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 4, 'short_answer', 'Describe a real seasonal business pattern and identify what its amplitude and midline might represent.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 1, 'short_answer', 'Present your market research design and simulated data with calculated mean, median, and spread.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 2, 'short_answer', 'Show your full financial forecast (exponential or regression path) with all calculations.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 3, 'short_answer', 'Explain how your market research informed a decision in your financial model.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 4, 'short_answer', 'Write your full 6-8 sentence investor pitch.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Capstone Venture Lab — Market Research & Financial Forecast' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Trigonometric Functions & Capstone Applications' AND course_id=(SELECT id FROM courses WHERE slug='venture-precalculus'))), 5, 'short_answer', 'Write your 3-5 sentence reflection on which mathematical tool from the semester you found most valuable.', NULL, NULL);
