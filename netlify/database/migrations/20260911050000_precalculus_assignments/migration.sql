-- Weekly-topic Classwork/Homework rollout for Pre-Calculus, completing the
-- "Venture Math 7-12" batch. Adds a curated video and 2 rigorous assignments
-- (Classwork + Homework) to each of the course's 6 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=721RrH6auoU',
    video_caption = 'Khan Academy: Linear vs. Exponential Growth From Data'
WHERE title = 'Function Review: Linear, Quadratic & Polynomial Recap'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=OhUkMQtBGmE',
    video_caption = 'Khan Academy: Fitting a Line to Data'
WHERE title = 'Modeling with Functions: Regression Basics'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Rm6UdfRs3gw',
    video_caption = 'Khan Academy: Compound Interest Introduction'
WHERE title = 'Exponential Growth/Decay & the Compound Interest Formula'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=PupNgv49_WY',
    video_caption = 'Khan Academy: Introduction to Logarithm Properties'
WHERE title = 'Logarithms & Their Properties'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=PdXDLNNXPik',
    video_caption = 'Khan Academy: Techniques for Random Sampling and Avoiding Bias'
WHERE title = 'Sampling Methods & Distributions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 3%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1m9p9iubMLU',
    video_caption = 'Khan Academy: Introduction to the Unit Circle'
WHERE title = 'The Unit Circle & Introduction to Trigonometric Functions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 4%');

-- Function Review: Linear, Quadratic & Polynomial Recap --------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Function Review: Linear, Quadratic & Polynomial Recap' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 1%')),
  'classwork', 'Function Family Identification Practice Set',
  $t1$Complete all 4 problems.

1. A city's population grows by exactly 500 people every year. Which function family models this, and why?
2. A ball is thrown in the air; its height rises, peaks, then falls back down. Which function family models this, and why?
3. A social media app's user count doubles every 6 months. Which function family models this, and why?
4. For each of the 3 scenarios above, identify one real feature of the graph (constant rate, a vertex, or accelerating growth) that is the "tell" pointing to that function family.$t1$,
  $r1$Full credit requires the correct function family identified with sound reasoning for problems 1-3, and for problem 4, a specific graph feature (not just a restated definition) correctly connected to each scenario.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Function Review: Linear, Quadratic & Polynomial Recap' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 1%')),
  'homework', 'Diagnose Your Venture''s Growth Pattern',
  $t2$Think about your own venture idea (or a business you know well).

1. Describe one quantity in your venture that changes over time (revenue, customers, costs, production, etc.).
2. Based on how you'd expect it to behave, choose the function family (linear, quadratic, exponential, or polynomial) that best models it, and explain why.
3. Sketch (describe in words) what the graph would look like, naming at least one key feature (rate of change, vertex, asymptote-like leveling off, etc.).
4. Explain in 2-3 sentences why choosing the WRONG function family to model this quantity could lead to a bad business decision (e.g., overestimating future revenue).$t2$,
  $r2$Meets expectations when: the chosen quantity is real and specific; the function family choice is well-justified with sound reasoning; the described graph shape correctly matches the chosen family; and the final explanation shows genuine understanding of the real business risk of model mismatch.$r2$,
  20, 1
);

-- Modeling with Functions: Regression Basics -------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Modeling with Functions: Regression Basics' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 1%')),
  'classwork', 'Regression Practice Set',
  $t3$Use this 4-week sales dataset: Week 1 = $150, Week 2 = $260, Week 3 = $370, Week 4 = $480.

1. Describe the trend in the data (is it increasing steadily, accelerating, or leveling off?).
2. Estimate the slope (rate of change per week) from the data.
3. Propose a linear regression model y = mx + b using your estimated slope and a reasonable y-intercept.
4. Use your model to predict Week 6 sales, showing your work.$t3$,
  $r3$Full credit requires an accurate trend description for problem 1; a slope estimate reasonably close to the data's actual rate of change (~$110/week) for problem 2; a sensible linear model for problem 3; and a correctly calculated Week 6 prediction using that model for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Modeling with Functions: Regression Basics' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 1%')),
  'homework', 'Build Your Own Sales Forecast',
  $t4$Invent a realistic 5-point sales or growth dataset for your venture (5 time periods with a value for each).

1. Present your dataset clearly (a simple table described in words is fine).
2. Describe the trend you observe.
3. Propose a linear regression model (y = mx + b) that reasonably fits your data, showing how you estimated m and b.
4. Use your model to predict one future data point, showing your work.
5. Discuss one limitation of your model (e.g., it assumes the trend continues forever, it doesn't account for seasonality, etc.).$t4$,
  $r4$Meets expectations when: the dataset is realistic and shows a genuine trend; the regression model reasonably fits the described data with a clear estimation method shown; the prediction is calculated correctly from the model; and the stated limitation reflects real understanding of when linear regression breaks down.$r4$,
  20, 1
);

-- Exponential Growth/Decay & the Compound Interest Formula -----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Exponential Growth/Decay & the Compound Interest Formula' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 2%')),
  'classwork', 'Compound Interest Practice Set',
  $t5$Use A = P(1 + r/n)^(nt) for all problems. Show every step.

1. Find A for P=$1,000, r=5% (0.05), compounded annually (n=1), t=3 years.
2. Find A for P=$1,000, r=5%, compounded quarterly (n=4), t=3 years. Compare to problem 1 -- which grows faster, and why?
3. Find A for P=$5,000, r=4%, compounded quarterly, t=10 years.
4. Explain, using the formula, why a decay scenario (like equipment depreciation) would use (1 - r) instead of (1 + r).$t5$,
  $r5$Full credit requires correct substitution and calculation with all steps shown for problems 1-3, plus a correct comparison in problem 2 explaining that more frequent compounding grows faster; and a correct, clearly reasoned explanation of the growth-vs-decay sign difference for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Exponential Growth/Decay & the Compound Interest Formula' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 2%')),
  'homework', 'Compare Two Investment Strategies',
  $t6$Your venture has $10,000 to invest. Compare two strategies.

1. Strategy A: invest at 3% annual interest, compounded annually, for 8 years. Calculate the final amount, showing your work.
2. Strategy B: invest at 3% annual interest, compounded monthly, for 8 years. Calculate the final amount, showing your work.
3. Calculate the difference between Strategy A and Strategy B, and explain why more frequent compounding produces a larger final amount even with the same stated rate.
4. Write a 2-3 sentence recommendation to your venture's leadership about which strategy to choose and why.$t6$,
  $r6$Meets expectations when: both strategies are calculated correctly with all formula steps shown; the difference is calculated correctly; the explanation of why compounding frequency matters is accurate (interest earns interest more often); and the final recommendation is a clear, reasoned business conclusion, not just a restatement of the bigger number.$r6$,
  20, 1
);

-- Logarithms & Their Properties --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Logarithms & Their Properties' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 2%')),
  'classwork', 'Logarithms Practice Set',
  $t7$Complete all 4 problems, showing your work.

1. Solve for t: 2 = (1.08)^t, using logarithms (round to the nearest year).
2. Use the property log_b(MN) = log_b(M) + log_b(N) to simplify log(4) + log(25) into a single logarithm and evaluate it.
3. Use the property log_b(M^p) = p*log_b(M) to simplify log(x^5) in terms of log(x).
4. Find how many years it takes an investment to triple at 5% annual interest, compounded annually, showing your full logarithm work.$t7$,
  $r7$Full credit requires a correct logarithm setup and solution (approximately 9 years) with steps shown for problem 1; correct simplification and evaluation for problem 2; correct application of the power property for problem 3; and a correct, fully-shown solution for problem 4 (approximately 22-23 years).$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Logarithms & Their Properties' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 2%')),
  'homework', 'Find Your Break-Even Timeline',
  $t8$Your venture invests $8,000 upfront and expects it to grow at 6% annually, compounded annually.

1. Set up an equation to find how many years it will take for the investment to double (reach $16,000).
2. Solve for t using logarithms, showing every step.
3. Set up and solve a second equation to find how many years it will take to reach $24,000 (triple the original).
4. Explain in 2-3 sentences why logarithms, rather than trial-and-error guessing, are the reliable way to solve for time in a growth model.$t8$,
  $r8$Meets expectations when: both equations are set up correctly; both are solved correctly using logarithm properties with all steps shown; and the final explanation demonstrates genuine understanding of why logarithms are the systematic (not guess-and-check) solution method.$r8$,
  20, 1
);

-- Sampling Methods & Distributions ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Sampling Methods & Distributions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 3%')),
  'classwork', 'Sampling Methods Practice Set',
  $t9$Complete all 4 problems.

1. A founder surveys only people in their own neighborhood about a new product. Name this sampling method and explain its main weakness.
2. A founder wants to survey customers across 4 different age groups and makes sure to sample proportionally from each group. Name this sampling method and explain its main strength.
3. A founder puts every customer's name in a hat and draws 50 names to survey. Name this sampling method and explain why it's considered the "gold standard."
4. For a venture selling backpacks to college students nationwide, propose the best sampling method and explain your reasoning.$t9$,
  $r9$Full credit requires the correct method name with an accurate weakness for problem 1; correct method name with an accurate strength for problem 2; correct method name ("random sampling") with an accurate explanation of fairness for problem 3; and a well-reasoned, method-appropriate proposal for problem 4 that considers the scale and diversity of a nationwide population.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Sampling Methods & Distributions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 3%')),
  'homework', 'Design a Customer Research Plan',
  $t10$Design a full customer survey plan for your venture idea.

1. Define your target population (be specific: who exactly are you trying to learn about?).
2. Choose a sampling method (random, stratified, or another method) and explain why it fits your target population better than the alternatives.
3. Write 3 survey questions you would ask.
4. Describe one specific way your chosen method avoids a bias that a convenience sample would introduce.
5. Explain in 1-2 sentences why investors care about HOW you collected your data, not just what the data says.$t10$,
  $r10$Meets expectations when: the target population is specific and realistic; the sampling method choice is well-justified against real alternatives; the 3 survey questions are relevant and well-written; the bias-avoidance explanation is specific to the chosen method; and the final reflection shows genuine understanding of why data collection methodology affects credibility.$r10$,
  20, 1
);

-- The Unit Circle & Introduction to Trigonometric Functions -----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Unit Circle & Introduction to Trigonometric Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 4%')),
  'classwork', 'Unit Circle Practice Set',
  $t11$Complete all 4 problems.

1. Convert 180° to radians.
2. Convert 270° to radians.
3. On the unit circle, state the (x, y) point at angle θ = π/2, and explain what cos(θ) and sin(θ) equal at this angle.
4. Explain why sine and cosine are called "periodic" functions, using the idea of a full 2π rotation.$t11$,
  $r11$Full credit requires correct radian conversions with the conversion factor shown for problems 1 and 2; the correct point (0, 1) with correctly identified cos and sin values for problem 3; and an accurate explanation of periodicity connecting it to repeating after a full rotation for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Unit Circle & Introduction to Trigonometric Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-precalculus') AND title LIKE 'Unit 4%')),
  'homework', 'Identify a Seasonal Pattern in Your Venture',
  $t12$Think of a real or hypothetical seasonal pattern in your venture (sales that rise and fall with seasons, holidays, or weather).

1. Describe the seasonal pattern in your own words (when does it peak, when does it dip, how often does it repeat?).
2. Explain why a straight line or a simple exponential curve would fail to capture this pattern.
3. Explain, in your own words, why a periodic (repeating) function like sine or cosine would be a better fit.
4. Estimate the "period" of your pattern (how much time passes before it repeats) -- state it in months or weeks.
5. Explain in 1-2 sentences why correctly identifying seasonality matters for planning inventory or staffing.$t12$,
  $r12$Meets expectations when: the seasonal pattern is specific and realistic; the explanation of why linear/exponential models fail is accurate; the reasoning for why a periodic function fits is sound; the estimated period is reasonable given the described pattern; and the final explanation connects seasonality correctly to a real planning decision.$r12$,
  20, 1
);
