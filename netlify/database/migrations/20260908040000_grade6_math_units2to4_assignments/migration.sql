-- Completes the Grade 6 Venture Math rollout of the weekly-topic model:
-- curated video + Classwork/Homework assignments for the remaining 7
-- 'lesson'-type entries across Units 2, 3, and 4 (Units 1's two lessons
-- were done in 20260908030000).

-- Week 5: Dividing Fractions in Real Life --------------------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=f3ySpxX9oeM',
  video_caption = 'Khan Academy: Understanding Division of Fractions'
WHERE title='Dividing Fractions in Real Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Dividing Fractions in Real Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Fraction Division Practice Set',
  $t$Solve each problem below, showing your keep-change-flip work every time.

1. 3/4 ÷ 1/8
2. 2/3 ÷ 5/6
3. You have 7/8 of a yard of fabric. Each headband you make uses 1/16 of a yard. How many full headbands can you make? Show your work.
4. Write your OWN real-world division-of-fractions word problem (about food, crafts, or supplies you actually use) and solve it.
5. Explain in your own words why dividing by a fraction that's less than 1 gives you an answer LARGER than the number you started with.$t$,
  $r$Full credit requires: keep-change-flip work shown (not just answers) for problems 1-2 with fractions simplified; problem 3 solved correctly with the division set up properly; problem 4's word problem is genuinely original and solved correctly; problem 5's explanation shows real conceptual understanding, not a memorized rule repeated back.$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Dividing Fractions in Real Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Divide & Conquer: Fractions at Home',
  $t$Find a real recipe, craft project, or measuring task at home that involves fractions (or invent one based on something you actually do). Write 2 original division-of-fractions problems from it and solve both, showing keep-change-flip work.

Then solve this: a Su Mira student is making friendship bracelets and has 5/6 of a yard of string. Each bracelet takes 1/12 of a yard. How many FULL bracelets can she make, and how much string (if any) is left over? Show your work and explain what the leftover amount means.$t$,
  $r$Meets expectations when: both original problems are realistic (not copied from the lesson) and correctly solved with visible work; the bracelet problem correctly finds the whole number of bracelets AND correctly identifies/interprets any leftover string -- this is the key differentiator, since many students get the division right but skip interpreting the remainder.$r$,
  20, 1
);

-- Week 6: Decimals in Action ----------------------------------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=STyoP3rCmb0',
  video_caption = 'Khan Academy: Introduction to Multiplying Decimals (see the lesson above for addition, subtraction, and division examples too)'
WHERE title='Decimals in Action: Add, Subtract, Multiply, Divide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Decimals in Action: Add, Subtract, Multiply, Divide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Decimal Operations Challenge',
  $t$Show all your work for every problem.

1. 6.25 + 3.8 − 1.45
2. 7.4 × 3.2
3. 58.5 ÷ 4.5
4. A Su Mira student runs a lemonade stand. She spent $14.65 on cups and $8.30 on lemons. She sold 45 cups at $0.75 each. Calculate her total cost, her total revenue, and her profit -- show all three calculations separately.
5. Describe a real mistake someone might make when lining up decimal points in addition or subtraction, and explain how to avoid it.$t$,
  $r$Full credit requires correct answers with decimal places properly aligned and shown for problems 1-3; problem 4 shows all three separate calculations (cost, revenue, profit) with a correct final profit figure; problem 5 demonstrates real understanding of place value, not a generic statement like "be careful."$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Decimals in Action: Add, Subtract, Multiply, Divide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Decimal Detective: Your Own Money Math',
  $t$Track (or estimate) 4 real prices from your own life this week -- snacks, an allowance purchase, a grocery item, anything with a decimal price. Add them for a total, showing your work.

Then pick ONE of your items: calculate what 6 of that item would cost (multiplication). Then: if you had $50 to spend evenly across 4 different items, what would each item cost (division, show your work)?

Finish with a 2-3 sentence reflection: which decimal operation (add, subtract, multiply, or divide) do you find trickiest, and why?$t$,
  $r$Meets expectations when: 4 real decimal prices are used and correctly totaled; the multiplication and division problems are both shown with correct decimal placement; the reflection is specific and honest rather than generic.$r$,
  20, 1
);

-- Week 7: Negative Numbers & The Coordinate Plane --------------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=Jeh5vudjmLI',
  video_caption = 'Khan Academy: Coordinate Plane — Graphing Points and Naming Quadrants'
WHERE title='Negative Numbers & The Coordinate Plane' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Negative Numbers & The Coordinate Plane' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Coordinate Plane & Integers Practice',
  $t$1. Plot (or describe plotting) these 4 points and state which quadrant each is in: (3, -2), (-5, 4), (-1, -6), (2, 7).
2. Order these integers from least to greatest: -8, 3, -1, 0, -12, 5.
3. A submarine is at -120 feet (120 feet below sea level) and rises 45 feet. What is its new position? Show your reasoning.
4. Explain what it means for a business's balance to be -$340, and what action would bring it back to exactly $0.
5. Give a real-world example (different from the submarine) where a negative number represents something meaningful, and explain what "zero" means in that context.$t$,
  $r$Full credit requires all 4 quadrants/points correct in problem 1; integers correctly ordered in problem 2 (a common error is treating negatives like positives -- e.g., putting -12 above -8); correct submarine position with visible integer reasoning; a business-balance explanation that shows negative means owed/deficit, not just "a low number"; and a genuine, well-explained real-world example in problem 5.$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Negative Numbers & The Coordinate Plane' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: The Number System — Fractions, Decimals & Negatives' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Negative Numbers in Real Life',
  $t$Find or think of 2 real situations where negative numbers are used (temperature, elevation, money, sports statistics, game scores, etc.). For each, explain what the negative number means and what zero represents in that context.

Then: plot the points (-4, 2) and (4, -2) -- describe how they're related on the coordinate plane (hint: think about reflection).

Finally: a Su Mira family's account starts at -$25 (they owe $25). They deposit $60. What is the new balance? Show your work and explain in words what happened to the debt.$t$,
  $r$Meets expectations when: 2 real, distinct negative-number contexts are identified with a correct explanation of what negative and zero mean in each; the reflective relationship between the two plotted points is correctly described; and the new balance is correctly calculated with clear work and a written explanation of what happened to the debt.$r$,
  20, 1
);

-- Week 9: Writing & Evaluating Algebraic Expressions -----------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=C_KffdI34ZU',
  video_caption = 'Khan Academy: How to Write Algebraic Expressions from Word Problems'
WHERE title='Writing & Evaluating Algebraic Expressions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Writing & Evaluating Algebraic Expressions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Expression Writing & Evaluating Practice',
  $t$1. Write an expression for: "a number, n, tripled and then increased by 7."
2. Write an expression for: "a flat delivery fee of $4 plus $1.50 per mile, m."
3. Evaluate 8n − 5 when n = 6, and again when n = 0.
4. Evaluate 3(x + 4) when x = 5, using order of operations correctly.
5. A Su Mira student charges a $5 setup fee plus $12 per hour, h, for a mowing job. Write the expression, then evaluate it for a 3-hour job.$t$,
  $r$Full credit requires correctly structured expressions (reflecting order of operations) for problems 1-2; both evaluations correct in problem 3, including handling n = 0 correctly; problem 4 shows visible use of the distributive property or correct order of operations; and problem 5's expression AND evaluation are both correct and clearly labeled.$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Writing & Evaluating Algebraic Expressions' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Build Your Own Business Expression',
  $t$Design a simple service or product business (real or imagined) with a flat fee PLUS a per-unit or per-hour charge. Write the algebraic expression for your business's total charge.

Then evaluate your expression for 3 different order/job sizes (small, medium, large), showing all work. Finish with 2-3 sentences explaining how a customer could use your expression to estimate their cost before ordering.$t$,
  $r$Meets expectations when: the expression genuinely reflects a flat-fee-plus-variable-rate structure and is written correctly; all 3 evaluations are correct with visible substitution and simplification; and the explanation clearly connects the math to a real customer scenario.$r$,
  20, 1
);

-- Week 10: Solving One-Step & Two-Step Equations ----------------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=_y_Q3_B2Vh8',
  video_caption = 'Khan Academy: Solving Two-Step Equations'
WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Equation Solving Practice Set',
  $t$Solve each equation below, showing every inverse-operation step -- not just the final answer.

1. x − 14 = 22
2. 6x = 54
3. 4x + 9 = 41
4. 7x − 3 = 39
5. You want to buy a $65 piece of equipment. You've saved $23 and plan to save the same amount each week for 6 weeks. Write and solve an equation to find how much you need to save weekly.
6. Check your answer to problem 5 by substituting it back into your equation.$t$,
  $r$Full credit requires all 4 equations solved correctly with inverse operations shown step by step (not just final answers); the word problem's equation correctly models the situation (not a guessed answer) and is solved correctly; and the check in #6 correctly verifies the solution with the substitution shown.$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Solving One-Step & Two-Step Equations' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Expressions & Equations' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Real-Life Equations',
  $t$Write and solve 3 original two-step equations based on real savings, budgeting, or purchase goals of your own (saving for something, splitting a cost, figuring out a per-item price, etc.). For each: show the equation, solve it step by step, and check your answer by substituting it back in.

Finish with 2-3 sentences explaining a mistake someone commonly makes when solving two-step equations, and how to avoid it.$t$,
  $r$Meets expectations when: 3 original, realistic equations are correctly modeled and solved with visible step-by-step work; each solution is checked by substitution; and the mistake explanation shows genuine understanding of the equation-solving process, not a copied phrase.$r$,
  20, 1
);

-- Week 13: Area of Polygons -------------------------------------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=ukPjc3Oyad4',
  video_caption = 'Khan Academy: How to Find the Area of a Triangle on a Grid'
WHERE title='Area of Polygons' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Area of Polygons' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Area Practice Set',
  $t$1. Find the area of a triangle with base 12 cm and height 7 cm.
2. Find the area of a rectangle that is 9 ft by 5 ft.
3. Find the area of a parallelogram with base 10 in and height 4 in.
4. A composite shape is made of a 6×4 rectangle with a 3×2 triangle attached to one side. Find the total area, showing each piece separately before adding.
5. Su Mira is designing an L-shaped reading nook made of a 5 ft × 6 ft rectangle and a 2 ft × 3 ft rectangle. What is the total floor area? Show both pieces separately, then the sum.$t$,
  $r$Full credit requires the correct area formula applied with correct, labeled answers for problems 1-3; the composite shape in #4 correctly broken into pieces with each piece's area shown before summing; and the reading nook problem solved correctly with clearly labeled work for both rectangles.$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Area of Polygons' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Design Your Own Composite Space',
  $t$Design a simple room or outdoor space (real or imagined) made of at least 2 rectangles and/or triangles. Describe its dimensions clearly, then calculate the area of each piece and the total area.

Then: if flooring costs $3.50 per square foot, calculate the total cost to cover your space.$t$,
  $r$Meets expectations when: the space is genuinely composite (2+ shapes) with clearly stated dimensions; each piece's area is shown separately and correctly with a correct total; and the flooring cost is correctly calculated by multiplying total area by the given rate.$r$,
  20, 1
);

-- Week 14: Surface Area of Prisms Using Nets --------------------------------
UPDATE lessons SET video_url = 'https://www.youtube.com/watch?v=m1ZTnl4CNQg',
  video_caption = 'Khan Academy: Finding Surface Area — Nets of Polyhedra'
WHERE title='Surface Area of Prisms Using Nets' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Surface Area of Prisms Using Nets' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Surface Area Practice Set',
  $t$1. Find the surface area of a rectangular prism: length 6 in, width 4 in, height 3 in (show all 3 pairs of faces).
2. Find the surface area of a cube with side length 5 cm.
3. A net has these 6 faces: two 4×3 rectangles, two 4×5 rectangles, and two 3×5 rectangles. Find the total surface area.
4. Su Mira wants to design a shipping box (rectangular prism) that is 10 in × 8 in × 6 in for a product. How much cardboard (surface area) is needed to build it?
5. Explain, in your own words, why "surface area" and "area" are different -- use an example.$t$,
  $r$Full credit requires all 3 pairs of faces identified and correctly calculated/summed for problem 1; the correct cube surface area (6 × side²) for problem 2; all 6 given faces correctly summed in problem 3; the shipping box problem solved correctly with all 3 face pairs shown; and problem 5's explanation showing genuine conceptual understanding, not a definition copied word-for-word.$r$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position) VALUES (
  (SELECT id FROM lessons WHERE title='Surface Area of Prisms Using Nets' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Geometry — Area, Surface Area & Volume' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Package Design Challenge',
  $t$Find a real box or container at home (cereal box, shoebox, etc.). Measure or estimate its length, width, and height, then calculate its surface area, showing all 3 pairs of faces.

Then imagine you're designing packaging for a product in a Su Mira student micro-business: choose your own dimensions for a box, calculate its surface area, and calculate the cost of the cardboard if it costs $0.02 per square inch.$t$,
  $r$Meets expectations when: real box measurements are used with a correct surface area calculation (all 3 face pairs shown); the original box design has clearly stated dimensions and a correct surface area; and the cardboard cost is correctly calculated by multiplying surface area by the given rate.$r$,
  20, 1
);
