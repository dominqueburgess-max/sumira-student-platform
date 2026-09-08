-- Reference implementation of the new weekly-topic + Classwork/Homework
-- model, authored for Grade 6 Venture Math Unit 1 (the course/unit the
-- product decision was scoped from). Adds a curated instructional video and
-- two rigorous, standards-grounded assignments (replacing the old 3-question
-- quiz as this lesson's primary work) for each of the unit's first two
-- lessons: "Understanding Ratios" (Week 1) and "Unit Rates & Unit Pricing"
-- (Week 2).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=bIKmw0aTmYc',
    video_caption = 'Khan Academy: Introduction to Ratios'
WHERE title = 'Understanding Ratios'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=qGTYSAeLTOE',
    video_caption = 'Khan Academy: Introduction to Rates'
WHERE title = 'Unit Rates & Unit Pricing'
  AND unit_id = (SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'));

-- Week 1: Understanding Ratios --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Understanding Ratios' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Ratio Reasoning Practice Set',
  $cw1$Complete all 6 problems below. Show your work for every problem -- an answer with no work shown will be sent back for revision.

1. A trail mix recipe uses 3 cups of pretzels for every 5 cups of nuts. Write this ratio three ways: using a colon, using the word "to," and as a fraction.

2. In a classroom of 28 students, 12 are wearing sneakers and the rest are wearing other shoes. Write the ratio of sneakers to "other shoes" (part-to-part), then write the ratio of sneakers to all students (part-to-whole).

3. A ratio of red to blue marbles is 4:7. If there are 28 blue marbles, how many red marbles are there? Show how you scaled the ratio up.

4. Which of these ratios are equivalent to 6:9 -- and which are NOT? Explain how you know for each one: 2:3, 12:15, 18:27, 3:6.

5. Build a ratio table with at least 4 equivalent ratios for the ratio 2:5.

6. Real-world problem: Su Mira Learning is planning a bake sale. The recipe for lemon bars uses a ratio of 2 cups of flour for every 3 cups of sugar. If the team wants to make a batch using 9 cups of sugar, how much flour do they need? Show your ratio table or scaling work.$cw1$,
  $cwr1$Full credit requires: correct ratio notation in all 3 forms for problem 1; correct part-to-part AND part-to-whole ratios for problem 2 (many students mix these up -- that's the whole point of this problem); correct scaled value with visible reasoning for problem 3; a clear explanation (not just yes/no) for each ratio in problem 4; a ratio table in problem 5 where every row is a true equivalent ratio; and problem 6 solved with visible ratio-table or scaling work, not just a final number.$cwr1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Understanding Ratios' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Ratios in Your World',
  $hw1$Find 3 real ratios in your own life today -- in your kitchen, your room, a hobby, a game, or your family. For each one:

- State the ratio using ratio language (a:b)
- Write it in 2 equivalent forms
- Explain in 2-3 sentences why that ratio actually matters in that situation (for example: a recipe would taste wrong, a game would be unbalanced, a mix would look different)

Then answer this Su Mira scenario: our school currently has 5 teachers for every 20 students. Write that ratio 2 more equivalent ways. Then explain: if Su Mira grows to 60 students and keeps hiring teachers at that exact same ratio, how many teachers would that be -- and show the ratio reasoning you used to get there.$hw1$,
  $hwr1$Meets expectations when: 3 distinct real ratios are identified and correctly notated; each has 2 correct equivalent ratios; each explanation shows real understanding of why the ratio matters (not a restatement of the ratio itself); and the Su Mira scaling question is answered with correct proportional reasoning, including visible work.$hwr1$,
  20, 1
);

-- Week 2: Unit Rates & Unit Pricing ----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Unit Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'classwork', 'Better Buy Investigation',
  $cw2$Compare these 4 pairs of "same product, different size" options. For EACH pair: calculate the unit price of both options (show your division), state which is the better deal per unit, and write one genuine sentence explaining why someone might still choose the more expensive option anyway.

Pair A: 8 granola bars for $4.00, or 20 granola bars for $9.00
Pair B: 12 markers for $3.00, or 30 markers for $8.10
Pair C: a 16 oz jar of honey for $6.40, or a 40 oz jar for $14.40
Pair D: 6 notebooks for $5.40, or 10 notebooks for $8.50

Then: if it takes you 45 minutes to make 15 friendship bracelets, what is your rate in (a) minutes per bracelet and (b) bracelets per hour? Show both calculations with units labeled.$cw2$,
  $cwr2$Full credit requires correct unit price shown (not just stated) for all 8 options across the 4 pairs; the correct better-deal identified each time; a real, specific reason for choosing the pricier option each time (not "because they want to" -- look for reasons like storage, spoilage, or needing less quantity); and both bracelet-rate calculations correct with units clearly labeled.$cwr2$,
  25, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Unit Rates & Unit Pricing' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Ratios, Rates & Unit Pricing' AND course_id=(SELECT id FROM courses WHERE slug='venture-math-6'))),
  'homework', 'Price Detective — Shop Smart',
  $hw2$Find 2 real products that come in at least 2 different sizes -- check your kitchen, a store flyer, or a grocery store's website.

For each product:
- Record both sizes and their prices
- Calculate the unit price for each size (show your division)
- State which size is the better value per unit

Then write a 3-4 sentence recommendation as if you were advising a family on a tight budget, including at least one real situation where the "worse" per-unit deal might actually be the smarter choice (for example: limited storage space, food that spoils, or only needing a small amount).$hw2$,
  $hwr2$Meets expectations when: 2 real products with 2+ sizes each are used (not invented -- an actual product with real prices); unit-price math is shown and correct for every size; the correct better-value option is identified for both products; and the written recommendation reflects genuine reasoning about trade-offs rather than just repeating the math.$hwr2$,
  20, 1
);
