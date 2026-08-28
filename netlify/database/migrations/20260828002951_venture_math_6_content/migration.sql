-- Grade 6 Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Math 6 Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including 2 small projects and 2 major STEAM/entrepreneurial projects (L8 and capstone L15).

UPDATE courses SET status = 'published' WHERE slug = 'venture-math-6';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-math-6'), 'Unit 1: Ratios, Rates & Unit Pricing', 0),
((SELECT id FROM courses WHERE slug='venture-math-6'), 'Unit 2: The Number System — Fractions, Decimals & Negatives', 1),
((SELECT id FROM courses WHERE slug='venture-math-6'), 'Unit 3: Expressions & Equations', 2),
((SELECT id FROM courses WHERE slug='venture-math-6'), 'Unit 4: Geometry — Area, Surface Area & Volume', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Understanding Ratios', 1, 'lesson',
  $lesson$## Welcome to Math 6, Business Style!

This year, you're not just learning math — you're building the number sense of an entrepreneur. Every business, every recipe, every piece of art, and every video game uses ratios. Let's start there.

**A ratio compares two quantities.** If a smoothie recipe calls for 2 cups of mango for every 3 cups of yogurt, we write that ratio as **2:3**, or "2 to 3," or as the fraction 2/3.

### Why This Matters for a Young Entrepreneur

Imagine you're starting a small business selling friendship bracelets. If it takes you 4 beads for every 1 charm, that's a ratio of 4:1. Understanding that ratio lets you order the exact right amount of supplies — no waste, no running out mid-batch.

### Key Vocabulary

- **Ratio** — a comparison of two quantities by division, written a:b, a to b, or a/b
- **Equivalent ratios** — ratios that describe the same relationship (2:3 is equivalent to 4:6, 6:9, and so on — just like equivalent fractions)
- **Ratio table** — a table used to list equivalent ratios

### Worked Example

A juice recipe uses 3 parts water to 1 part concentrate. If you use 12 cups of water, how much concentrate do you need?

Set up a ratio table:

| Water | Concentrate |
|-------|-------------|
| 3     | 1           |
| 6     | 2           |
| 9     | 3           |
| 12    | 4           |

You need **4 cups of concentrate**.

### Your Turn

Think about a "recipe" for something you make or build often — a snack, a piece of art, a Lego build. Write the ratio of two of its ingredients or parts, then build a ratio table showing three equivalent ratios.$lesson$,
  'NC.6.RP.1', 'Understand the concept of a ratio and use ratio language to describe a ratio relationship between two quantities.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Unit Rates & Unit Pricing', 2, 'lesson',
  $lesson$## Unit Rates: The Secret Tool of Every Smart Shopper (and Seller)

A **unit rate** compares a quantity to just 1 unit of another quantity. If a bag of 5 bracelets sells for $15, the unit rate is $3 **per** bracelet.

Unit rates let you compare deals that don't look alike on the surface — which is exactly what you'll need to do as a business owner deciding on suppliers, and as a customer looking for the best price.

### Unit Pricing Example

A craft store sells:
- A pack of 8 charms for $4.00
- A pack of 20 charms for $9.00

**Which is the better deal?**

Pack A: $4.00 ÷ 8 = $0.50 per charm
Pack B: $9.00 ÷ 20 = $0.45 per charm

Pack B is the better deal — 5 cents cheaper per charm. When you buy in bulk for your bracelet business, this is exactly the math you'd use to protect your profit margin.

### Rate Language

We use phrases like "miles **per** hour," "dollars **per** item," and "beads **per** bracelet" to describe unit rates. The word "per" always means "for every 1."

### Worked Example

If you can make 6 bracelets in 2 hours, what is your production rate?

6 bracelets ÷ 2 hours = **3 bracelets per hour**

### Your Turn

Find two package sizes of the same snack or supply (real or from an ad/website), calculate the unit price for each, and decide which is the smarter buy for a business trying to keep costs low.$lesson$,
  'NC.6.RP.2', 'Understand the concept of a unit rate a/b associated with a ratio a:b, and use rate language in the context of a ratio relationship.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Solving Ratio & Rate Problems — Small Project: Snack Shop Price List', 3, 'practice',
  $lesson$## Small Project: Build a Snack Shop Price List

Time to put ratios and unit rates to work in a real small-business scenario.

### The Scenario

You are opening a pop-up snack shop for a school event. You need to buy supplies in bulk and set fair, profitable prices.

### Your Task

1. **Choose 3 snack items** you'll sell (e.g., trail mix bags, lemonade cups, cookies).
2. For each item, research or invent a **bulk cost** (e.g., "$12 for a box of 24 granola bars").
3. Calculate the **unit cost** for each item (cost ÷ quantity).
4. Decide your **selling price per item**, making sure it's higher than your unit cost (that difference is your profit per item!).
5. Build a **ratio table** for each item showing how the total cost scales if a customer buys 1, 2, 5, or 10 of that item.
6. Calculate your **total profit** if you sell out of everything you bought.

### Deliverable

Submit a short price list (in the short-answer box) that includes, for each of your 3 items:
- Bulk cost and quantity purchased
- Unit cost (show your division)
- Selling price
- Profit per item
- Total profit if you sell all of them

This is real math that real small business owners — including your Su Mira teachers and founder — use every single week.$lesson$,
  'NC.6.RP.3', 'Use ratio and rate reasoning to solve real-world and mathematical problems, e.g., by reasoning about tables of equivalent ratios, tape diagrams, double number line diagrams, or equations.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Unit 1 Quiz: Ratios, Rates & Unit Pricing', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of ratios, unit rates, and unit pricing before we move on to fractions, decimals, and negative numbers. Take your time, show your thinking on scratch paper, and answer each question carefully.$lesson$,
  'NC.6.RP.1–3', 'Assesses ratio language, equivalent ratios, unit rates, and unit pricing.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Dividing Fractions in Real Life', 5, 'lesson',
  $lesson$## Dividing Fractions: "Flip and Multiply"

Dividing fractions shows up constantly in cooking, construction, art, and business — anywhere you need to figure out "how many pieces fit into this amount?"

### The Rule

To divide fractions, **keep** the first fraction, **change** division to multiplication, and **flip** (find the reciprocal of) the second fraction.

$$\frac{a}{b} \div \frac{c}{d} = \frac{a}{b} \times \frac{d}{c}$$

### Worked Example

You have 3/4 of a yard of fabric to make friendship bracelets, and each bracelet uses 1/8 of a yard. How many bracelets can you make?

$$\frac{3}{4} \div \frac{1}{8} = \frac{3}{4} \times \frac{8}{1} = \frac{24}{4} = 6$$

You can make **6 bracelets**.

### Why It Works

Dividing by a fraction is really asking "how many groups of this size fit inside this amount?" Dividing by 1/8 is the same as asking how many eighths fit into 3/4 — and multiplying by the reciprocal is a shortcut for counting those groups.

### Your Turn

If you have 2/3 of a pound of clay and each small sculpture uses 1/6 of a pound, how many sculptures can you make? Show your work using the keep-change-flip method.$lesson$,
  'NC.6.NS.1', 'Interpret and compute quotients of fractions, and solve word problems involving division of fractions by fractions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Decimals in Action: Add, Subtract, Multiply, Divide', 6, 'lesson',
  $lesson$## Decimals: The Language of Money

Every business transaction — every price tag, invoice, and receipt — is written in decimals. Mastering decimal operations means never getting shortchanged (literally).

### The Big Four, Quickly Reviewed

- **Addition/Subtraction:** Line up the decimal points, then add or subtract like whole numbers.
- **Multiplication:** Multiply as if there were no decimal points, then count the total decimal places in both factors and place the point that many spots from the right.
- **Division:** If dividing by a decimal, move the decimal point in both numbers to make the divisor a whole number, then divide as usual.

### Worked Example — Multiplication

You sell 3.5 pounds of trail mix at $4.20 per pound. What's the total sale?

$$3.5 \times 4.20 = 14.70$$

Total sale: **$14.70**

### Worked Example — Division

You made $18.75 selling lemonade and split it evenly among 3 business partners. How much does each person get?

$$18.75 \div 3 = 6.25$$

Each partner gets **$6.25**.

### Your Turn

You spent $27.36 on supplies split across 4 identical craft kits. Find the cost per kit. Then, if you sell each kit for $9.50, calculate your total revenue and your total profit.$lesson$,
  'NC.6.NS.2, NC.6.NS.3', 'Fluently divide multi-digit numbers using the standard algorithm; fluently add, subtract, multiply, and divide multi-digit decimals using the standard algorithm.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Negative Numbers & The Coordinate Plane', 7, 'lesson',
  $lesson$## Negative Numbers: Above and Below Zero

Negative numbers describe real situations: temperatures below zero, elevations below sea level, and — very relevant to your business unit — **being in debt** (spending more than you've earned).

### Real-World Meaning

If your snack shop spent $50 on supplies before selling anything, your balance is **-$50**. Every dollar you earn moves you back toward zero, and then into positive profit.

### The Coordinate Plane

The coordinate plane has four quadrants, formed by a horizontal x-axis and vertical y-axis:

- **Quadrant I:** (+, +)
- **Quadrant II:** (−, +)
- **Quadrant III:** (−, −)
- **Quadrant IV:** (+, −)

To plot a point (x, y), move horizontally first (left for negative, right for positive), then vertically (down for negative, up for positive).

### Worked Example

Plot the point (-3, 4). Start at the origin (0,0), move 3 units left, then 4 units up. That lands you in **Quadrant II**.

### Your Turn

Track your snack shop's running balance over 5 days as a set of coordinate points, where x = the day number and y = your profit or loss that day (some days might be negative if you spent more than you earned!). Plot at least one point in two different quadrants and explain what a negative y-value means in the context of your business.$lesson$,
  'NC.6.NS.5, NC.6.NS.6', 'Understand that positive and negative numbers describe quantities having opposite directions or values; plot points in all four quadrants of the coordinate plane.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'MAJOR PROJECT 1: Launch a Micro-Business', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Launch a Micro-Business

This is your first major project of the year — a chance to show everything you've learned about ratios, rates, decimals, and positive/negative numbers by building a real (or realistic simulated) micro-business plan.

### Driving Question

**"How can I use math to design a small business that actually makes a profit?"**

### The Challenge

Design a micro-business you could realistically run (examples: a bracelet shop, a lemonade stand, a pet-sitting service, a custom sticker shop, a tutoring service for younger students). Your plan must include:

1. **Business concept** — What are you selling or offering, and to whom?
2. **Supply costs** — List at least 3 supplies/costs with real or researched prices. Calculate the **unit cost** of each item you'll sell (this uses your ratio and rate skills from Unit 1).
3. **Pricing strategy** — Set a selling price for your product/service using decimal operations, making sure your price is above your unit cost.
4. **Profit projection** — Using a ratio table, project your total revenue, total cost, and total profit if you sell 5, 10, and 25 units.
5. **Starting balance** — If you had to spend money on supplies before earning anything, show your balance as a negative number, then show the point (using decimals) where your balance crosses from negative to positive (this is called your "break-even point").
6. **Reflection** — In 3-5 sentences, explain one decision you made using math (not just guessing) and why that decision matters for a real business owner.

### What Makes This a STEAM + Entrepreneurship Project

You're combining mathematical modeling (ratios, decimals, integers) with real design thinking and entrepreneurial reasoning — exactly the skills behind every successful small business, including the ones built right here at Su Mira.

### Submission

Type your full business plan responses into the short-answer boxes below, showing your math work clearly for each section.$lesson$,
  'NC.6.RP.1–3, NC.6.NS.1–3, NC.6.NS.5–6', 'Cumulative application of ratios, rates, decimal operations, and positive/negative numbers to a real entrepreneurial venture.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Writing & Evaluating Algebraic Expressions', 9, 'lesson',
  $lesson$## Expressions: Math's Shorthand for "It Depends"

An algebraic expression uses a **variable** (a letter standing in for an unknown number) to represent a quantity that can change. Businesses use expressions constantly — because costs and profits depend on how many items you sell.

### Key Vocabulary

- **Variable** — a letter representing an unknown or changing value (e.g., n)
- **Coefficient** — the number multiplied by a variable (in 5n, 5 is the coefficient)
- **Term** — a single number, variable, or product/quotient in an expression
- **Evaluate** — to substitute a number for the variable and simplify

### Worked Example

Your bracelet business charges $3 per bracelet plus a flat $2 shipping fee per order. The expression for total cost of an order of *n* bracelets is:

$$3n + 2$$

If a customer orders 5 bracelets: 3(5) + 2 = 15 + 2 = **$17**

### Order of Operations Reminder

Always evaluate using **PEMDAS**: Parentheses, Exponents, Multiplication/Division (left to right), Addition/Subtraction (left to right).

### Your Turn

Write an expression for a business you're designing: a flat fee plus a per-item charge. Then evaluate your expression for 3 different order sizes (for example, 1 item, 10 items, and 50 items).$lesson$,
  'NC.6.EE.1, NC.6.EE.2', 'Write, read, and evaluate expressions in which letters stand for numbers.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Solving One-Step & Two-Step Equations', 10, 'lesson',
  $lesson$## Solving Equations: Finding the Missing Number

An equation is a statement that two expressions are equal. Solving an equation means finding the value of the variable that makes it true — using **inverse operations** to isolate the variable.

### The Golden Rule

Whatever you do to one side of an equation, you must do to the other side, to keep it balanced (like a scale).

### Worked Example — One Step

You need $45 to buy a piece of equipment for your business. You've already saved $28. How much more do you need?

$$28 + x = 45$$
$$x = 45 - 28 = 17$$

You need **$17 more**.

### Worked Example — Two Step

A craft supplier charges a $10 setup fee plus $2 per unit. You have a budget of $40. How many units can you afford?

$$10 + 2x = 40$$
$$2x = 30$$
$$x = 15$$

You can afford **15 units**.

### Your Turn

You want to save up $120 for new business equipment. You already have $36 saved and plan to save the same amount each week. Write and solve an equation to find how much you need to save per week if you have 7 weeks to reach your goal.$lesson$,
  'NC.6.EE.6, NC.6.EE.7', 'Use variables to represent numbers and write expressions; solve real-world and mathematical problems by writing and solving equations of the form x + p = q and px = q.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Inequalities & Small Project: Entrepreneur Budget Challenge', 11, 'practice',
  $lesson$## Small Project: The Entrepreneur Budget Challenge

### What's an Inequality?

An inequality compares two expressions using <, >, ≤, or ≥ instead of an equals sign. Businesses use inequalities to represent limits — like "I can spend **at most** $50" or "I need to sell **at least** 20 items to break even."

### Worked Example

You have a budget of at most $60 for supplies, and each unit of raw material costs $4. If x is the number of units you can buy:

$$4x \leq 60$$
$$x \leq 15$$

You can buy **15 units or fewer**.

### The Challenge

You've been given a $75 startup budget for a small business idea of your choice. Using inequalities and equations:

1. Write an inequality showing your spending limit for supplies, and solve it to find the maximum number of units you could buy at a given unit price.
2. Write an equation to determine how many units you'd need to sell, at a chosen selling price, to earn back your full $75 investment (your break-even point).
3. Explain, in your own words, the difference between what the equation told you and what the inequality told you.

### Submission

Show all your equations/inequalities, your solutions, and your written explanation in the short-answer boxes below.$lesson$,
  'NC.6.EE.5, NC.6.EE.8', 'Understand solving an equation or inequality as a process of answering a question; write inequalities to represent real-world constraints.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Unit 3 Quiz: Expressions & Equations', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of algebraic expressions, equations, and inequalities before we move into our final unit on geometry.$lesson$,
  'NC.6.EE.1–8', 'Assesses writing/evaluating expressions, solving one- and two-step equations, and representing constraints with inequalities.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Area of Polygons', 13, 'lesson',
  $lesson$## Area: Measuring the Space Inside a Shape

Area tells us how much flat space a shape covers — essential for anyone designing a room, a garden, a piece of packaging, or (as you'll see in your capstone project) a dream space.

### Key Formulas

- **Rectangle:** A = length × width
- **Triangle:** A = 1/2 × base × height
- **Parallelogram:** A = base × height
- **Composite shapes:** Break the shape into rectangles and triangles, find each area, then add them together.

### Worked Example

A triangular pennant flag has a base of 10 inches and a height of 6 inches.

$$A = \frac{1}{2} \times 10 \times 6 = 30 \text{ square inches}$$

### Worked Example — Composite Shape

An L-shaped room can be split into two rectangles: one that's 8 ft × 6 ft, and one that's 4 ft × 3 ft.

$$A = (8 \times 6) + (4 \times 3) = 48 + 12 = 60 \text{ square feet}$$

### Your Turn

Sketch (describe in words, or draw on paper and describe) a composite shape made of at least 2 rectangles and/or triangles. Calculate its total area, showing each piece separately before adding.$lesson$,
  'NC.6.G.1', 'Find the area of right triangles, other triangles, special quadrilaterals, and polygons by composing into rectangles or decomposing into triangles and other shapes.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'Surface Area of Prisms Using Nets', 14, 'lesson',
  $lesson$## Surface Area: Wrapping a 3D Object in Flat Shapes

Surface area tells us the total area of every face of a 3D shape — exactly what you'd need to know if you were designing packaging, wrapping a gift, or figuring out how much paint or material to buy for a real structure.

### Nets

A **net** is a 2D "unfolded" version of a 3D shape. A rectangular prism (like a shoebox) unfolds into 6 rectangles. To find surface area, find the area of every face in the net and add them all together.

### Worked Example

A rectangular prism has length 5 cm, width 3 cm, and height 4 cm. It has 3 pairs of matching faces:

- Two faces of 5 × 3 = 15 → 2 × 15 = 30
- Two faces of 5 × 4 = 20 → 2 × 20 = 40
- Two faces of 3 × 4 = 12 → 2 × 12 = 24

$$SA = 30 + 40 + 24 = 94 \text{ square cm}$$

### Why This Matters

If you were designing a shipping box for a product in your micro-business, surface area tells you exactly how much cardboard you need — which connects directly to your cost of goods.

### Your Turn

A cube-shaped gift box has sides of 6 inches each. Find its surface area by finding the area of one face and multiplying by the number of faces on a cube.$lesson$,
  'NC.6.G.4', 'Represent three-dimensional figures using nets made up of rectangles and triangles, and use the nets to find the surface area of these figures.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6')),
  'MAJOR PROJECT 2 CAPSTONE: Dream Space Design Challenge', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: Dream Space Design Challenge

Congratulations on reaching your final project of the semester! This capstone brings together everything you've learned this fall — ratios, decimals, expressions, equations, and now geometry — into one real design challenge.

### Driving Question

**"How can I use math to design and budget a real space, down to the last square foot and the last dollar?"**

### The Challenge

Design your dream space — this could be a bedroom, a treehouse, a small business storefront, a classroom, or a creative studio. You will:

1. **Set dimensions.** Choose realistic length, width, and height measurements for your space (in feet).
2. **Calculate floor area.** Find the total area of the floor, including if your space is an L-shape or has more than one rectangular section (composite area, from Lesson 13).
3. **Calculate wall surface area.** Using nets/prism thinking from Lesson 14, calculate the total surface area of the four walls (you can treat the room as a rectangular prism and find just the 4 side faces, not the floor/ceiling).
4. **Budget your build.** Choose a cost per square foot for flooring and a cost per square foot for wall paint or covering (research real prices or use reasonable estimates). Write and evaluate expressions (from Unit 3) to calculate your total flooring cost and total wall-covering cost.
5. **Stay within budget.** You have a total budget of $2,000. Write an inequality showing your total cost must be less than or equal to $2,000, and check whether your design fits. If it doesn't, adjust your dimensions or materials and recalculate.
6. **Entrepreneurial pitch.** In 4-6 sentences, pitch your dream space as if you were presenting it to a small business investor or your family: what is it, why does it matter to you, and how did math help you design it responsibly?

### What Makes This a STEAM + Entrepreneurship Capstone

This project combines geometric measurement (Science/Math), spatial design (Engineering/Art), and real financial constraints (Entrepreneurship) — mirroring exactly how architects, small business owners, and designers use math every day.

### Submission

Type your full design plan — dimensions, all calculations shown, budget check, and your final pitch — into the short-answer boxes below. This project represents your growth across the entire fall semester, so take your time and show your best work.$lesson$,
  'NC.6.G.1, NC.6.G.2, NC.6.G.4', 'Cumulative application of area, volume, and surface area to a real design and budgeting challenge, integrating the full semester''s ratio, decimal, expression, and geometry skills.', 75
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Understanding Ratios' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'A recipe uses 2 cups of flour for every 5 cups of milk. What is the ratio of flour to milk?', '["5:2", "2:5", "2:2", "7:2"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Ratios' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'Which ratio is equivalent to 3:4?', '["6:8", "3:5", "4:3", "9:10"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Understanding Ratios' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Write a ratio comparing two ingredients or parts in something you make often, then list two equivalent ratios.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'A 6-pack of juice boxes costs $3.00. What is the unit price per juice box?', '["$0.50", "$2.00", "$6.00", "$0.30"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'Which is the better deal: 10 pencils for $2.00, or 15 pencils for $2.70?', '["10 for $2.00", "15 for $2.70", "They are the same price per pencil", "Cannot be determined"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Find two package sizes of the same item (real or invented) and calculate which is the better unit price. Show your division.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving Ratio & Rate Problems — Small Project: Snack Shop Price List' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'short_answer', 'List your 3 snack items with their bulk cost and quantity purchased.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Solving Ratio & Rate Problems — Small Project: Snack Shop Price List' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'short_answer', 'Show the unit cost calculation (division) for each of your 3 items.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Solving Ratio & Rate Problems — Small Project: Snack Shop Price List' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'State your selling price and profit per item for each item, and your total profit if everything sells.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Ratios, Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'A ratio of 4:6 is equivalent to which of the following?', '["2:3", "6:4", "8:10", "1:2"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Ratios, Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'A store sells 12 markers for $6.00. What is the unit price per marker?', '["$0.50", "$2.00", "$6.00", "$1.20"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Ratios, Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'multiple_choice', 'Which shows correct use of a ratio table to find an equivalent ratio for 3:5?', '["6:10", "3:10", "6:5", "5:3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Ratios, Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 4, 'multiple_choice', 'A car travels 150 miles in 3 hours. What is its unit rate in miles per hour?', '["450 mph", "50 mph", "3 mph", "147 mph"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Ratios, Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 5, 'short_answer', 'Explain in your own words the difference between a ratio and a unit rate.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Dividing Fractions in Real Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'What is 1/2 ÷ 1/4?', '["1/8", "2", "1/2", "8"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Dividing Fractions in Real Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'To divide fractions, you keep the first fraction, change ÷ to ×, and then do what to the second fraction?', '["Square it", "Flip it (reciprocal)", "Double it", "Leave it the same"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Dividing Fractions in Real Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'You have 5/6 of a yard of ribbon and each bow uses 1/12 of a yard. How many bows can you make? Show your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Decimals in Action: Add, Subtract, Multiply, Divide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'What is 4.5 × 2.2?', '["6.7", "9.9", "8.10", "10.0"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Decimals in Action: Add, Subtract, Multiply, Divide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'What is 15.60 ÷ 4?', '["3.90", "4.10", "3.15", "39.0"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Decimals in Action: Add, Subtract, Multiply, Divide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'You earned $32.50 selling 5 identical items. What was the price per item? Show your division.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Negative Numbers & The Coordinate Plane' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'Which quadrant is the point (-4, 5) located in?', '["Quadrant I", "Quadrant II", "Quadrant III", "Quadrant IV"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Negative Numbers & The Coordinate Plane' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'If your business balance is -$20, what does that mean?', '["You have $20 in profit", "You owe or have spent $20 more than you''ve earned", "You broke even", "You earned exactly $20"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Negative Numbers & The Coordinate Plane' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Plot (or describe plotting) the points (2, -3) and (-5, -1). Which quadrant is each point in?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Launch a Micro-Business' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'short_answer', 'Describe your business concept: what are you selling or offering, and to whom?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Launch a Micro-Business' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'short_answer', 'List your supply costs and show your unit cost calculation for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Launch a Micro-Business' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Show your ratio table projecting revenue, cost, and profit at 5, 10, and 25 units sold.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Launch a Micro-Business' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 4, 'short_answer', 'Show your starting balance (as a negative number if applicable) and your break-even point calculation, then write your 3-5 sentence reflection.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing & Evaluating Algebraic Expressions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'Which expression represents ''a flat fee of $5 plus $2 per item, n''?', '["5n + 2", "2n + 5", "5 + 2 + n", "2(n + 5)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing & Evaluating Algebraic Expressions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'Evaluate 4n + 3 when n = 6.', '["24", "27", "13", "19"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing & Evaluating Algebraic Expressions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Write your own flat-fee-plus-per-item expression and evaluate it for 3 different values of n.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'Solve: x + 12 = 30', '["x = 42", "x = 18", "x = 22", "x = 15"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'Solve: 5x = 45', '["x = 9", "x = 40", "x = 225", "x = 50"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'multiple_choice', 'Solve: 3x + 6 = 24', '["x = 6", "x = 10", "x = 8", "x = 4"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 4, 'short_answer', 'Write and solve your own two-step equation based on a savings goal.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Entrepreneur Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'Which inequality represents ''you can spend at most $30''?', '["x \u2265 30", "x \u2264 30", "x > 30", "x < 30"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Entrepreneur Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'Solve: 3x ≤ 21', '["x \u2264 7", "x \u2265 7", "x \u2264 63", "x \u2264 18"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Entrepreneur Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Show your budget inequality and solution for the number of units you can afford.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Inequalities & Small Project: Entrepreneur Budget Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 4, 'short_answer', 'Show your break-even equation and explain the difference between what the equation and inequality each told you.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Expressions & Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'Evaluate 2n - 4 when n = 9.', '["14", "10", "18", "22"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Expressions & Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'Solve: x - 7 = 15', '["x = 8", "x = 22", "x = 21", "x = 12"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Expressions & Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'multiple_choice', 'Solve: 4x + 2 = 30', '["x = 7", "x = 8", "x = 6", "x = 28"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Expressions & Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 4, 'multiple_choice', 'Which inequality means ''at least 10''?', '["x < 10", "x \u2264 10", "x \u2265 10", "x > 10"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Expressions & Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 5, 'short_answer', 'Explain the difference between solving an equation and solving an inequality.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Area of Polygons' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'What is the area of a triangle with base 8 and height 5?', '["40", "20", "13", "80"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Area of Polygons' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'What is the area of a rectangle that is 7 ft by 3 ft?', '["10 sq ft", "21 sq ft", "14 sq ft", "24 sq ft"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Area of Polygons' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Describe a composite shape made of at least 2 rectangles/triangles and calculate its total area.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Surface Area of Prisms Using Nets' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'multiple_choice', 'A cube has sides of 4 inches. What is the area of just ONE face?', '["8 sq in", "16 sq in", "4 sq in", "24 sq in"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Surface Area of Prisms Using Nets' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'multiple_choice', 'How many faces does a rectangular prism have?', '["4", "5", "6", "8"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Surface Area of Prisms Using Nets' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Find the surface area of a cube-shaped box with sides of 6 inches. Show your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Dream Space Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 1, 'short_answer', 'State your space''s dimensions and show your total floor area calculation (including composite areas if applicable).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Dream Space Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 2, 'short_answer', 'Show your wall surface area calculation using prism/net thinking.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Dream Space Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 3, 'short_answer', 'Show your flooring and wall-covering cost expressions and calculations.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Dream Space Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 4, 'short_answer', 'Show your budget inequality check against $2,000 and adjust your design if needed.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Dream Space Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))), 5, 'short_answer', 'Write your 4-6 sentence entrepreneurial pitch for your dream space.', NULL, NULL);
