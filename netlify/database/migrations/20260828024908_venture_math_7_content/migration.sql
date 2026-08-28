-- Grade 7 Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Math 7 Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including 2 small projects, 2 major STEAM/entrepreneurial projects (L8 and capstone L15),
-- and a Flex Week cumulative review (L12).

UPDATE courses SET status = 'published' WHERE slug = 'venture-math-7';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-math-7'), 'Unit 1: Proportional Relationships & Percent', 0),
((SELECT id FROM courses WHERE slug='venture-math-7'), 'Unit 2: Operations with Rational Numbers', 1),
((SELECT id FROM courses WHERE slug='venture-math-7'), 'Unit 3: Expressions, Equations & Inequalities', 2),
((SELECT id FROM courses WHERE slug='venture-math-7'), 'Unit 4: Geometry — Scale Drawings & Angle Relationships', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Proportional Relationships & the Constant of Proportionality', 1, 'lesson',
  $lesson$## Spotting a Proportional Relationship

Last year you worked with ratios and unit rates. This year, we go deeper: how do you know when two quantities are **proportional** — and how does that show up in real products and pricing?

### The Definition

Two quantities are proportional if they always have the same ratio, called the **constant of proportionality** (k). If y is proportional to x, then:

$$y = kx$$

### Worked Example

A candle-making venture uses 2 ounces of wax per candle. Total wax (y) is proportional to number of candles (x):

$$y = 2x$$

Here, k = 2. Every additional candle needs exactly 2 more ounces — no flat fee, no discount, just a constant rate.

### Spotting Non-Proportional Relationships

If a shop charges a $5 flat fee *plus* $2 per item, that relationship is **not** proportional — because when x = 0, y = 5, not 0. Proportional relationships always pass through the origin (0, 0).

### Why This Matters for a Young Entrepreneur

Recognizing proportional pricing helps you scale a business plan accurately. If your costs are proportional, doubling production exactly doubles your cost — no surprises.

### Your Turn

Think of a product you could sell where the total cost is purely proportional to the quantity made (no flat fee). Write the equation y = kx for it, identify k, and explain what k represents in real terms.$lesson$,
  '7.RP.A.2', 'Recognize and represent proportional relationships between quantities; identify the constant of proportionality.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Graphing & Writing Equations for Proportional Relationships', 2, 'lesson',
  $lesson$## Graphing Your Venture's Cost Line

Every proportional relationship y = kx graphs as a straight line through the origin, with slope equal to k. This is one of the most useful business tools you'll learn this year.

### Reading k From Different Formats

- **From a table:** Divide any y-value by its matching x-value — the result should be the same every time. That constant is k.
- **From a graph:** k is the slope — pick any point (other than the origin) and divide the y-coordinate by the x-coordinate.
- **From an equation:** If y = kx, k is simply the coefficient in front of x.
- **From words:** "It costs $3 per item" means k = 3.

### Worked Example

A t-shirt printing venture's data:

| Shirts (x) | Total Cost (y) |
|------------|-----------------|
| 4          | 32              |
| 7          | 56              |
| 10         | 80              |

Check: 32/4 = 8, 56/7 = 8, 80/10 = 8. Since the ratio is constant, this is proportional, with **k = 8** (equation: y = 8x).

### Your Turn

Build a table of at least 3 points for a proportional relationship representing a venture's cost-per-item. Verify the constant of proportionality is the same for every pair, then write the equation and describe what the graph of that line would look like.$lesson$,
  '7.RP.A.2b-d', 'Identify the constant of proportionality from tables, graphs, equations, and verbal descriptions; represent proportional relationships with equations and graphs.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Unit 1 Quiz: Percents — Tax, Tip, Markup, Discount & Simple Interest', 3, 'quiz',
  $lesson$## Unit 1 Quiz: Real-World Percent Problems

This quiz checks your ability to apply percent reasoning to the kinds of problems every consumer and business owner deals with constantly: sales tax, tips, markups, discounts, and simple interest. Show your work on scratch paper for each multi-step problem.$lesson$,
  '7.RP.A.3', 'Use proportional relationships to solve multistep ratio and percent problems, including simple interest, tax, markups, and markdowns.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Percent Increase & Decrease — Small Project: Pop-Up Shop Price Tags', 4, 'practice',
  $lesson$## Small Project: Pop-Up Shop Price Tags

### Percent Increase & Decrease, Quickly

- **Percent increase (markup):** new price = original price × (1 + percent as a decimal)
- **Percent decrease (discount):** new price = original price × (1 − percent as a decimal)

### Worked Example

A wholesale candle costs $4. Your shop marks it up 60% to sell it.

$$4 \times (1 + 0.60) = 4 \times 1.60 = 6.40$$

Sticker price: **$6.40**

Later, you run a 25% off sale:

$$6.40 \times (1 - 0.25) = 6.40 \times 0.75 = 4.80$$

Sale price: **$4.80** — still above your $4 wholesale cost, so you're still profitable!

### The Challenge

You're running a pop-up shop for a school event. Choose 3 products with a wholesale (cost) price for each.

1. Apply a markup percentage of your choice to each item to set the sticker price. Show your calculation.
2. Design one "sale event" — apply a discount percentage to each item and calculate the sale price.
3. For each item, check: is your sale price still above your wholesale cost? If not, adjust your markup or discount and recalculate.
4. Write your final price tags (wholesale cost, markup %, sticker price, discount %, sale price) for all 3 items.

### Submission

Show all your markup and discount calculations, and your final price tags, in the short-answer box below.$lesson$,
  '7.RP.A.3', 'Solve problems involving percent increase and decrease, including markups and discounts, in a real pricing scenario.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Adding & Subtracting Rational Numbers', 5, 'lesson',
  $lesson$## Gains, Losses, and Your Business Ledger

A **rational number** is any number that can be written as a fraction — including negatives and decimals. In business, rational numbers show up constantly as gains (positive) and losses (negative) in a ledger.

### Key Rules

- Adding a negative number is the same as subtracting: 5 + (-3) = 5 - 3 = 2
- Subtracting a negative number is the same as adding: 5 - (-3) = 5 + 3 = 8
- Same signs: add the absolute values, keep the sign. Different signs: subtract the absolute values, keep the sign of the larger absolute value.

### Worked Example — A Mock Business Ledger

Day 1: -$12 (spent on supplies)
Day 2: +$25 (sales)
Day 3: -$8 (more supplies)
Day 4: +$15 (sales)

Running total: -12 + 25 + (-8) + 15 = -12 + 25 - 8 + 15 = **$20**

After 4 days, the business has a net gain of $20.

### Your Turn

Create a 5-day mock ledger for a small venture, using at least two negative numbers (expenses) and two positive numbers (income). Calculate the running total after each day and the final total after day 5.$lesson$,
  '7.NS.A.1', 'Apply properties of operations to add and subtract rational numbers, including negatives, representing real-world contexts.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Multiplying & Dividing Rational Numbers', 6, 'lesson',
  $lesson$## Scaling Up (or Down) With Multiplication and Division

Multiplying and dividing rational numbers — including fractions, decimals, and negatives — lets you scale a recipe, an inventory order, or a production plan to any size.

### Sign Rules for Multiplication & Division

- Positive × Positive = Positive
- Negative × Negative = Positive
- Positive × Negative (or vice versa) = Negative
- The same rules apply to division.

### Worked Example — Scaling a Recipe

A recipe for slime (a popular small-business product for young entrepreneurs!) uses 3/4 cup of glue per batch. You want to make 8 batches for a craft fair.

$$\frac{3}{4} \times 8 = 6$$

You need **6 cups of glue**.

### Worked Example — Scaling Down

If a bulk recipe makes 20 servings using 15 cups of an ingredient, and you only want to make 4 servings:

$$15 \div 20 \times 4 = 0.75 \times 4 = 3$$

You need **3 cups**.

### Your Turn

Choose a recipe or supply list for a product you'd sell. Show how you'd scale it up to make 6 times the original amount, and separately, scale it down to 1/3 of the original amount. Use multiplication and division with fractions or decimals to show your work.$lesson$,
  '7.NS.A.2', 'Apply properties of operations to multiply and divide rational numbers, including scaling recipes and inventory.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Unit 2 Quiz: Multi-Step Problems with Rational Numbers', 7, 'quiz',
  $lesson$## Unit 2 Quiz

This quiz checks your ability to add, subtract, multiply, and divide rational numbers — including negatives and fractions — in multi-step real-world problems.$lesson$,
  '7.NS.A.3', 'Solve real-world and mathematical problems involving the four operations with rational numbers.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'MAJOR PROJECT 1: Percent & Profit — Run a Pop-Up Shop', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Percent & Profit: Run a Pop-Up Shop

### Driving Question

**"How do businesses use percents to set prices, offer discounts, and still turn a profit?"**

### The Challenge

You're running a full simulated pop-up shop. Using everything from Units 1 and 2, build a complete profit & loss statement.

1. **Choose 3-5 products** with a wholesale (cost) price for each.
2. **Set your markup.** Apply a percent markup to each item to determine your sticker price (percent increase, from Lesson 4).
3. **Run a sale event.** Apply a percent discount to at least 2 of your items during a "sale hour" (percent decrease).
4. **Calculate sales tax.** Choose a realistic local sales tax rate and calculate the tax added to each sale.
5. **Track your ledger.** Using rational numbers (positive for sales, negative for costs/expenses like supplies or booth fees), build a running ledger across a simulated "sales day" with at least 6 transactions.
6. **Calculate your profit margin.** Total revenue minus total costs, then express your profit as a percentage of your total costs (profit margin).
7. **Reflection.** In 3-5 sentences, explain one pricing decision (a markup, a discount, or a sale strategy) and why it helped or hurt your profit margin.

### What Makes This a STEAM + Entrepreneurship Project

You're combining percent reasoning, rational number operations, and financial literacy to model exactly what a real small-business owner tracks every single sales day.

### Submission

Show your full profit & loss statement — pricing, sales tax, ledger, and profit margin calculation — plus your written reflection, in the short-answer boxes below.$lesson$,
  '7.RP.A.3, 7.NS.A.1-3', 'Cumulative application of percent reasoning and rational number operations to a full profit-and-loss statement for a simulated venture.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Simplifying Expressions with Rational Coefficients', 9, 'lesson',
  $lesson$## Simplifying Cost Formulas

As your business math gets more advanced, your cost formulas will include fractions and decimals as coefficients. Simplifying these expressions keeps your formulas clean and easy to use.

### Combining Like Terms

Only terms with the exact same variable (and exponent) can be combined.

$$2.5x + 4 - 0.5x + 1 = (2.5x - 0.5x) + (4 + 1) = 2x + 5$$

### Distributing

$$3(2x + 1.5) = 6x + 4.5$$

### Worked Example

A venture's weekly cost formula is 2.25n + 10 (materials plus a flat weekly fee), and they also pay a $1.75 per-item shipping surcharge added on: 2.25n + 10 + 1.75n. Combine like terms:

$$2.25n + 1.75n + 10 = 4n + 10$$

The simplified formula is **4n + 10**.

### Your Turn

Simplify this expression representing a combined cost formula: 3.5n + 8 - 1.5n + 2. Then write your own two-part cost formula (using decimal or fraction coefficients) and simplify it.$lesson$,
  '7.EE.A.1-2', 'Apply properties of operations to add, subtract, factor, and expand linear expressions with rational coefficients.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Unit 3 Quiz: Solving Multi-Step Equations', 10, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your ability to solve multi-step equations involving rational numbers — the same skill you'll need to find break-even points and pricing targets in future units.$lesson$,
  '7.EE.B.3-4a', 'Solve multi-step real-world and mathematical problems posed with rational numbers, converting between forms as needed.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Inequalities & Small Project: Fundraiser Goal Tracker', 11, 'practice',
  $lesson$## Small Project: Fundraiser Goal Tracker

### Writing & Solving Inequalities

Just like last year, inequalities represent constraints — but now with rational numbers and multi-step solving.

### Worked Example

A class fundraiser needs to raise **at least** $450. They've already raised $180 selling baked goods at $2.50 each. How many more baked goods (x) do they need to sell?

$$180 + 2.5x \geq 450$$
$$2.5x \geq 270$$
$$x \geq 108$$

They need to sell **at least 108 more items**.

### The Challenge

Design a fundraiser goal tracker for a cause you care about (real or invented).

1. Set a total fundraising goal.
2. Choose an item to sell and its price.
3. State how much you've already raised (or set it to $0 to start from scratch).
4. Write an inequality representing how many more items you need to sell to reach or exceed your goal, and solve it.
5. Now add a twist: suppose you also have a fixed cost (like a booth fee or materials cost) that comes out of your earnings. Rewrite and re-solve your inequality accounting for that fixed cost.

### Submission

Show both inequalities (with and without the fixed cost), your solutions, and a short explanation of how the fixed cost changed your goal.$lesson$,
  '7.EE.B.4b', 'Solve word problems leading to inequalities, and interpret the solution in the context of the problem.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Flex Week: Cumulative Review & Project Studio', 12, 'practice',
  $lesson$## Flex Week: Review & Project Studio

This is a lighter week built for review, catching up, and polishing your project work — just like a real professional team takes time to review progress before starting a new phase of work.

### Cumulative Review

Before moving into Unit 4 (Geometry), let's make sure the first three units are locked in. Mixed review:

1. **Proportional relationships:** Is the relationship in the table below proportional? If so, find k.

| x | y |
|---|---|
| 3 | 21 |
| 5 | 35 |
| 8 | 56 |

2. **Rational numbers:** Evaluate: -14 + 6 - (-9) - 3

3. **Percent:** A $60 item is marked up 40%, then later discounted 20% off the marked-up price. What's the final price?

4. **Expressions & inequalities:** Simplify 4.5x + 7 - 2x - 3, then solve 4.5x ≥ 27 for x.

### Project Studio Time

Use this week to revisit your Unit 1-3 project work (Pop-Up Shop Price Tags, Major Project 1, and the Fundraiser Goal Tracker). Reread your written explanations — are they clear? Could someone else follow your math?

### Your Turn

Solve all 4 review problems above, showing your work for each. Then write 2-3 sentences identifying which of the three units (proportional relationships, rational numbers, or expressions/equations) felt hardest for you, and why.$lesson$,
  '7.RP.A, 7.NS.A, 7.EE.A-B', 'Cumulative review of proportional relationships, rational number operations, expressions, and equations/inequalities from Units 1-3.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Scale Drawings & Scale Factor', 13, 'lesson',
  $lesson$## Scale Drawings: Shrinking (or Growing) a Design

A **scale drawing** represents a real object at a proportionally smaller or larger size. The **scale factor** tells you exactly how much bigger or smaller.

### The Formula

$$\text{scale factor} = \frac{\text{drawing length}}{\text{actual length}}$$

Once you know the scale factor, every length in the drawing relates to the real object by that same constant ratio — this connects directly back to proportional relationships from Unit 1!

### Worked Example

A product prototype drawing uses a scale of 1 inch = 4 inches (scale factor 1:4). If the drawing shows a part that is 3 inches long, the actual part is:

$$3 \times 4 = 12 \text{ inches}$$

### Worked Example — Area

If a scale drawing has an area of 6 square inches at a scale factor of 1:4, the actual area is scaled by the **square** of the scale factor:

$$6 \times 4^2 = 6 \times 16 = 96 \text{ square inches}$$

### Your Turn

Design (describe) a scale drawing of a product prototype using a scale of 1 inch = 3 inches. If your drawing shows a length of 5 inches, what is the actual length? If your drawing has an area of 10 square inches, what is the actual area?$lesson$,
  '7.G.A.1', 'Solve problems involving scale drawings of geometric figures, including computing actual lengths and areas from a scale drawing.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'Angle Relationships, Circumference & Area of Circles', 14, 'quiz',
  $lesson$## Unit 4 Quiz: Angles & Circles

This quiz checks your understanding of angle relationships (complementary, supplementary, vertical, adjacent) and the circumference/area formulas for circles:

$$C = \pi d \text{ or } C = 2\pi r \qquad A = \pi r^2$$

Keep these formulas handy as you work through the problems.$lesson$,
  '7.G.A.4-5, 7.G.B.4', 'Use facts about supplementary, complementary, vertical, and adjacent angles; know and use formulas for circumference and area of a circle.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7')),
  'MAJOR PROJECT 2 CAPSTONE: Scale Model Startup Studio', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: Scale Model Startup Studio

Congratulations on reaching your final project of the semester! This capstone brings together scale drawings, proportional reasoning, and cost analysis into one complete product design and pitch.

### Driving Question

**"How can scale drawings help an entrepreneur prototype and cost out a new product?"**

### The Challenge

Design an original product (a gadget, a piece of furniture, packaging, a toy — anything you can picture as a 3D object).

1. **Choose real dimensions** for your product (length, width, height in inches or cm).
2. **Choose a scale factor** and describe your scale drawing's dimensions (e.g., "my drawing is at a 1:5 scale, so my product's actual 20-inch length is drawn as 4 inches").
3. **Calculate at least 2 more actual measurements** (such as a surface or a smaller feature) using your scale factor, showing the proportional relationship (from Unit 1) that connects drawing size to actual size.
4. **Materials cost breakdown.** List at least 3 materials needed to build your product, with a real or researched cost per unit, and calculate your total materials cost.
5. **Set a markup and sticker price** using percent increase (from Unit 1), and check that your price still allows for a healthy profit margin.
6. **Founder's pitch.** In 4-6 sentences, pitch your product as if presenting to an investor panel: what does it do, why does it matter, and how did math help you design and price it responsibly?

### What Makes This a STEAM + Entrepreneurship Capstone

You're combining geometric scale reasoning (Math/Engineering), product design (Art/Engineering), and real cost and pricing analysis (Entrepreneurship) — exactly how real product designers and founders work.

### Submission

Type your full design plan — dimensions, scale drawing description, calculations, materials cost, pricing, and your founder's pitch — into the short-answer boxes below. This project represents your growth across the entire fall semester, so take your time and show your best work.$lesson$,
  '7.G.A.1, 7.RP.A.2-3', 'Cumulative application of scale drawings, proportional reasoning, and percent/cost analysis to a full product prototype and pitch.', 75
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Proportional Relationships & the Constant of Proportionality' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'In the equation y = 7x, what is the constant of proportionality?', '["y", "x", "7", "0"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Proportional Relationships & the Constant of Proportionality' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Which of these relationships is proportional?', '["y = 3x + 2", "y = 5x", "y = x + 10", "y = 2/x"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Proportional Relationships & the Constant of Proportionality' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Describe a product with a purely proportional cost (no flat fee) and write its equation y = kx, identifying k.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Graphing & Writing Equations for Proportional Relationships' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'A table shows x=2, y=10 and x=5, y=25. What is the constant of proportionality?', '["2", "5", "10", "5 is wrong, it''s actually not proportional"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Graphing & Writing Equations for Proportional Relationships' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Every proportional relationship''s graph passes through which point?', '["(1, 1)", "(0, 0)", "(1, 0)", "(0, 1)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Graphing & Writing Equations for Proportional Relationships' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Build a table of 3 points for a proportional relationship, verify the constant ratio, and write the equation.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Percents — Tax, Tip, Markup, Discount & Simple Interest' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'A meal costs $40. Sales tax is 8%. What is the total cost?', '["$43.20", "$40.08", "$48.00", "$42.00"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Percents — Tax, Tip, Markup, Discount & Simple Interest' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'You leave a 20% tip on a $25 bill. How much is the tip?', '["$5.00", "$20.00", "$4.50", "$2.50"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Percents — Tax, Tip, Markup, Discount & Simple Interest' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'multiple_choice', 'A $80 item is discounted 15%. What is the sale price?', '["$68.00", "$65.00", "$12.00", "$92.00"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Percents — Tax, Tip, Markup, Discount & Simple Interest' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'multiple_choice', '$500 is invested at 4% simple interest for 2 years. How much interest is earned?', '["$20", "$40", "$400", "$540"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Percents — Tax, Tip, Markup, Discount & Simple Interest' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 5, 'short_answer', 'Explain the difference between a percent increase and a percent decrease in your own words.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Percent Increase & Decrease — Small Project: Pop-Up Shop Price Tags' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'short_answer', 'List your 3 products with their wholesale costs.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Percent Increase & Decrease — Small Project: Pop-Up Shop Price Tags' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'short_answer', 'Show your markup calculation and sticker price for each item.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Percent Increase & Decrease — Small Project: Pop-Up Shop Price Tags' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Proportional Relationships & Percent' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Show your discount calculation and sale price for at least one sale event, and confirm it''s still above wholesale cost.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Adding & Subtracting Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'What is -8 + 15?', '["-23", "7", "-7", "23"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adding & Subtracting Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'What is 6 - (-4)?', '["2", "-10", "10", "-2"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Adding & Subtracting Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Create a 5-day mock ledger with at least 2 negative and 2 positive values, and calculate the final total.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Multiplying & Dividing Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'What is -5 × -6?', '["-30", "30", "-11", "11"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Multiplying & Dividing Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'What is 3/4 × 12?', '["9", "16", "4", "3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Multiplying & Dividing Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Scale a recipe or supply list up to 6 times its original amount, and separately down to 1/3, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Multi-Step Problems with Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'Evaluate: -12 + 5 - (-3)', '["-4", "-10", "4", "-20"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Multi-Step Problems with Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Evaluate: (-2.5) × 4', '["-10", "10", "-6.5", "6.5"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Multi-Step Problems with Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'multiple_choice', 'Evaluate: 3/5 ÷ 1/10', '["6", "1/6", "3/50", "0.6"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Multi-Step Problems with Rational Numbers' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Write and solve your own multi-step rational number word problem based on a business scenario.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Percent & Profit — Run a Pop-Up Shop' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'short_answer', 'List your 3-5 products with wholesale costs, markups, and sticker prices.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Percent & Profit — Run a Pop-Up Shop' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'short_answer', 'Show your sale event discount calculations for at least 2 items.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Percent & Profit — Run a Pop-Up Shop' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Show your sales tax calculations and your full transaction ledger (at least 6 entries, using positive and negative values).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Percent & Profit — Run a Pop-Up Shop' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Operations with Rational Numbers' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Calculate your total profit margin and write your 3-5 sentence reflection.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Simplifying Expressions with Rational Coefficients' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'Simplify: 3.5x + 2 - 1.5x + 4', '["2x + 6", "5x + 6", "2x + 2", "5x + 2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Simplifying Expressions with Rational Coefficients' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Expand: 4(1.5x + 2)', '["6x + 8", "5.5x + 2", "6x + 2", "1.5x + 8"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Simplifying Expressions with Rational Coefficients' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Simplify 3.5n + 8 - 1.5n + 2, then write and simplify your own two-part cost formula.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Solving Multi-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'Solve: 2.5x + 4 = 19', '["x = 6", "x = 9.2", "x = 7.6", "x = 5"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Solving Multi-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Solve: 3(x - 2) = 15', '["x = 7", "x = 5", "x = 9", "x = 3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Solving Multi-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'multiple_choice', 'Solve: 0.5x - 3 = 7', '["x = 20", "x = 8", "x = 14", "x = 2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Solving Multi-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Write and solve your own multi-step equation modeling a pricing scenario.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Fundraiser Goal Tracker' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'Which inequality means ''the total must be at least 200''?', '["x \u2264 200", "x < 200", "x \u2265 200", "x > 200"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Fundraiser Goal Tracker' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Solve: 2x + 10 ≥ 40', '["x \u2265 15", "x \u2265 25", "x \u2265 20", "x \u2265 10"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Fundraiser Goal Tracker' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Show your fundraiser goal inequality (without fixed costs) and its solution.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Fundraiser Goal Tracker' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Show your revised inequality including a fixed cost, and explain how it changed your goal.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'Is the table (3,21), (5,35), (8,56) proportional?', '["Yes, k = 7", "Yes, k = 3", "No", "Cannot be determined"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'Evaluate: -14 + 6 - (-9) - 3', '["-2", "-20", "2", "-8"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Solve the $60 item markup-then-discount problem from the review, showing both steps.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions, Equations & Inequalities' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Simplify 4.5x + 7 - 2x - 3 and solve 4.5x ≥ 27, then reflect on which unit felt hardest and why.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Scale Drawings & Scale Factor' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'A drawing uses a scale of 1 in = 5 in. A drawn length of 4 inches represents an actual length of:', '["9 inches", "20 inches", "1.25 inches", "5 inches"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Scale Drawings & Scale Factor' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'At a scale factor of 1:3, if a drawing''s area is 4 sq in, what is the actual area?', '["12 sq in", "36 sq in", "9 sq in", "24 sq in"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Scale Drawings & Scale Factor' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Describe a scale drawing at 1 inch = 3 inches. Find the actual length for a 5-inch drawn length and the actual area for a 10-square-inch drawn area.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Angle Relationships, Circumference & Area of Circles' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'multiple_choice', 'Two angles are supplementary. If one is 110°, what is the other?', '["70\u00b0", "80\u00b0", "90\u00b0", "50\u00b0"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Angle Relationships, Circumference & Area of Circles' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'multiple_choice', 'What is the circumference of a circle with radius 5 (use π ≈ 3.14)?', '["15.7", "31.4", "78.5", "10"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Angle Relationships, Circumference & Area of Circles' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'multiple_choice', 'What is the area of a circle with radius 4 (use π ≈ 3.14)?', '["12.56", "25.12", "50.24", "16"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Angle Relationships, Circumference & Area of Circles' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Explain the difference between complementary and supplementary angles, with an example of each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Scale Model Startup Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 1, 'short_answer', 'State your product''s real dimensions and your chosen scale factor, with your scale drawing dimensions.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Scale Model Startup Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 2, 'short_answer', 'Show at least 2 more actual-measurement calculations using your scale factor.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Scale Model Startup Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 3, 'short_answer', 'Show your materials cost breakdown and total materials cost.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Scale Model Startup Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 4, 'short_answer', 'Show your markup calculation, sticker price, and profit margin check.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Scale Model Startup Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Scale Drawings & Angle Relationships' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-7'))), 5, 'short_answer', 'Write your 4-6 sentence founder''s pitch for your product.', NULL, NULL);
