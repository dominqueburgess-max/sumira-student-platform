-- Combined pacing safeguard: calendar-gated lesson unlocks, a daily
-- lesson cap to prevent bingeing through the whole course in one
-- sitting, and a 'Go Beyond' enrichment activity per unit for fast
-- finishers to dig into while they wait for their next lesson.

ALTER TABLE lessons ADD COLUMN IF NOT EXISTS unlock_date DATE;
ALTER TABLE students ADD COLUMN IF NOT EXISTS daily_lesson_cap INT NOT NULL DEFAULT 1;

CREATE TABLE IF NOT EXISTS enrichment_activities (
  id SERIAL PRIMARY KEY,
  unit_id INT NOT NULL REFERENCES units(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  prompt TEXT NOT NULL,
  position INT NOT NULL DEFAULT 1,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

WITH week_map(rn, wk_date) AS (
  VALUES
    (1, DATE '2026-09-08'),
    (2, DATE '2026-09-14'),
    (3, DATE '2026-09-21'),
    (4, DATE '2026-09-28'),
    (5, DATE '2026-10-05'),
    (6, DATE '2026-10-12'),
    (7, DATE '2026-10-19'),
    (8, DATE '2026-10-26'),
    (9, DATE '2026-11-02'),
    (10, DATE '2026-11-09'),
    (11, DATE '2026-11-16'),
    (12, DATE '2026-11-23'),
    (13, DATE '2026-11-30'),
    (14, DATE '2026-12-07'),
    (15, DATE '2026-12-14')
),
ordered AS (
  SELECT l.id AS lesson_id,
    ROW_NUMBER() OVER (PARTITION BY u.course_id ORDER BY u.position, l.position) AS rn
  FROM lessons l
  JOIN units u ON u.id = l.unit_id
  JOIN courses c ON c.id = u.course_id
  WHERE c.slug IN ('venture-math-6', 'venture-math-7', 'venture-math-8', 'venture-algebra-1', 'venture-geometry', 'venture-algebra-2', 'venture-precalculus')
)
UPDATE lessons l
SET unlock_date = wm.wk_date
FROM ordered o
JOIN week_map wm ON wm.rn = o.rn
WHERE l.id = o.lesson_id;

-- 'Go Beyond' enrichment activities, one per unit, themed to each unit's
-- entrepreneurial/STEAM angle -- shown to students whose next lesson is
-- calendar- or cap-locked so a fast finisher always has something to do.
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-6' AND u.position = 0), 'Founder''s Pricing Audit', 'Pick three products at a real store or app. Calculate the unit price and estimate the profit margin on each. Which one would you stock first if you were launching a business, and why?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-6' AND u.position = 1), 'Budget Ledger Challenge', 'Build a one-week personal budget ledger that includes at least one negative number (an expense or debt) and one fraction or decimal calculation. What''s your net balance at the end of the week?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-6' AND u.position = 2), 'Break-Even Formula Builder', 'Write an algebraic expression for the cost of making a product you''d want to sell. Solve for how many units you''d need to sell to break even.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-6' AND u.position = 3), 'Dream Space Optimizer', 'Redesign your dream micro-business space. Calculate its area, the surface area you''d need for signage, and the volume available for storage. Can it all fit under 200 square feet?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-7' AND u.position = 0), 'Markup & Margin Lab', 'Research the markup percentage on three real products online. Which markup would you choose for your own pop-up shop, and why?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-7' AND u.position = 1), 'Profit & Loss Tracker', 'Track a week of hypothetical sales and expenses using positive and negative rational numbers. What''s your net profit or loss?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-7' AND u.position = 2), 'Scale-Up Plan', 'Write an inequality that models how many products you''d need to sell this month to beat last month''s revenue.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-7' AND u.position = 3), 'Storefront Blueprint', 'Draw a scale model of a storefront or market booth using a scale factor of your choice. Label every angle and dimension.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-8' AND u.position = 0), 'Growth Rate Explorer', 'Use exponents to model how a savings account or social following could grow if it doubled every month for six months.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-8' AND u.position = 1), 'Cost Function Designer', 'Write a linear equation for the total cost of producing your product. Graph it, then explain what the y-intercept means in real life.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-8' AND u.position = 2), 'Revenue vs. Cost Function Face-Off', 'Graph a revenue function and a cost function on the same axes. Where do they cross, and what does that point mean for your business?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-math-8' AND u.position = 3), 'Logo Transformation Studio', 'Design a logo, then apply a reflection, a rotation, and a dilation to build a full brand pattern from it.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-1' AND u.position = 0), 'Budget Boss Extension', 'Simplify a multi-step expression that models your monthly business expenses, combining like terms for supplies, marketing, and fees.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-1' AND u.position = 1), 'Investor Ask Calculator', 'Solve an inequality to find the minimum funding you''d need to ask an investor for to stay profitable for three months.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-1' AND u.position = 2), 'Two-Product Break-Even', 'Set up a system of equations comparing two pricing strategies for the same product. Which solution favors you more, and why?', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-1' AND u.position = 3), 'Compound Growth Pitch', 'Model exponential growth of a customer base that grows by a fixed percentage every month, and pitch your 12-month projection.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-geometry' AND u.position = 0), 'Brand Geometry Audit', 'Find and classify five geometric shapes or angles in a brand''s logo or packaging that you admire.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-geometry' AND u.position = 1), 'Pattern Line Extension', 'Design a repeating pattern for a product line using translations, reflections, and rotations of one base shape.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-geometry' AND u.position = 2), 'Space Planning Angle Challenge', 'Use right-triangle trigonometry to calculate the height of a structure or the incline of a ramp for an accessible store design.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-geometry' AND u.position = 3), 'Scale Model Showroom', 'Build a scaled floor plan of your dream studio or storefront and calculate the area difference between the scale drawing and the real space.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-2' AND u.position = 0), 'Multi-Revenue Stream Modeler', 'Graph two different revenue functions (like product sales vs. a subscription) and compare how they grow over a year.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-2' AND u.position = 1), 'Production Cost Polynomial', 'Model total production cost as a polynomial function and analyze how cost changes as production volume scales up.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-2' AND u.position = 2), 'Profit Peak Finder', 'Use a quadratic profit function to find the price point that maximizes profit for your product.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-algebra-2' AND u.position = 3), 'Efficiency Ratio Lab', 'Model cost-per-unit as a rational function and analyze what happens as production volume approaches zero and approaches infinity.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-precalculus' AND u.position = 0), 'Market Model Mashup', 'Pick a real company''s public growth data and decide whether a linear, quadratic, or exponential model fits it best. Justify your choice.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-precalculus' AND u.position = 1), 'Investment Strategy Extension', 'Compare compound interest at two different rates using logarithms to find how long each investment takes to double.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-precalculus' AND u.position = 2), 'Customer Data Deep Dive', 'Design a short survey, collect at least ten responses, and use statistics to make one real business decision from the data.', 1);
INSERT INTO enrichment_activities (unit_id, title, prompt, position) VALUES ((SELECT u.id FROM units u JOIN courses c ON c.id = u.course_id WHERE c.slug = 'venture-precalculus' AND u.position = 3), 'Seasonal Demand Wave Model', 'Model seasonal sales fluctuations for a business using a sine or cosine function, and predict the next peak month.', 1);

