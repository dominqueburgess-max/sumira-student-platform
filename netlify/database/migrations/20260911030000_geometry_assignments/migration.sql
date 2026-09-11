-- Weekly-topic Classwork/Homework rollout for Geometry, continuing the
-- "every course, every studio" commitment. Adds a curated video and 2
-- rigorous assignments (Classwork + Homework) to each of the course's 6
-- 'lesson'-type entries, replacing the old 3-question quiz as each
-- lesson's primary work.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=PcieiPD5H_s',
    video_caption = 'Khan Academy: Points, Lines, and Planes'
WHERE title = 'Points, Lines, Planes & Basic Constructions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=5kojy1CHuyI',
    video_caption = 'Khan Academy: Conditional Statements and Logical Equivalence'
WHERE title = 'Logic, Conditional Statements & Intro to Proof'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 1%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=XiAoUDfrar0',
    video_caption = 'Khan Academy: Introduction to Transformations'
WHERE title = 'Translations, Reflections & Rotations'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=8Ld8Csu4sEs',
    video_caption = 'Khan Academy: Other Triangle Congruence Postulates (SSS, SAS, ASA, AAS)'
WHERE title = 'Congruence via Rigid Motions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 2%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=BI-rtfZVXy0',
    video_caption = 'Khan Academy: Similar Triangles'
WHERE title = 'Triangle Congruence & Similarity'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 3%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=QRA-eiZ1iSs',
    video_caption = 'Khan Academy: Area of Composite Shapes'
WHERE title = 'Area & Perimeter of Polygons; Composite Figures'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 4%');

-- Points, Lines, Planes & Basic Constructions ---------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Points, Lines, Planes & Basic Constructions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 1%')),
  'classwork', 'Foundations Practice Set',
  $t1$Complete all 5 problems.

1. Define, in your own words, a point, a line, and a plane, and give one real-world example of each.
2. Describe step by step how to construct a perpendicular bisector of a line segment using a compass and straightedge.
3. Describe step by step how to construct an angle bisector.
4. Two points determine exactly one line. How many points determine exactly one plane (assuming they're not all on the same line)? Explain.
5. Sketch (describe in words) a simple logo made of at least 2 line segments and 1 angle, and label the vertex of your angle.$t1$,
  $r1$Full credit requires accurate definitions with genuine real-world examples (not copied textbook examples) for problem 1; correct, complete construction steps for problems 2 and 3; a correct answer (three points) with reasoning for problem 4; and a described design in problem 5 that correctly uses and labels the vocabulary from this lesson.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Points, Lines, Planes & Basic Constructions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 1%')),
  'homework', 'Geometry in a Real Design',
  $t2$Find a real logo, product package, or floor plan (a photo, a screenshot, or something around your home) and analyze its geometry.

1. Identify and describe at least 3 geometric elements in it (points, line segments, angles, or planes).
2. Identify one place in the design where a perpendicular bisector or angle bisector might have been used (even informally) to keep the design balanced or symmetric.
3. Explain in 2-3 sentences why precise geometric construction matters for that specific design (would it look "off" if the construction were imprecise? why?).$t2$,
  $r2$Meets expectations when: 3 genuine geometric elements are identified and correctly described using proper vocabulary; a reasonable bisector observation is made with clear reasoning; and the explanation shows real understanding of why precision matters in that specific design, not a generic statement.$r2$,
  20, 1
);

-- Logic, Conditional Statements & Intro to Proof --------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Logic, Conditional Statements & Intro to Proof' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 1%')),
  'classwork', 'Conditional Statements Practice Set',
  $t3$Complete all 4 problems.

1. Write the converse of: "If a shape is a rectangle, then it has four right angles." Is the converse true? Explain.
2. Write the converse of: "If two angles are vertical angles, then they are congruent." Is the converse true? Explain.
3. Identify the hypothesis and conclusion of this statement: "If a design is symmetric, then it looks balanced to the viewer."
4. Write your own original conditional statement about a geometric shape, then write its converse and determine if the converse is true.$t3$,
  $r3$Full credit requires a correctly written converse with an accurate true/false determination and reasoning for problems 1 and 2; correctly identified hypothesis and conclusion for problem 3; and an original, valid conditional statement in problem 4 with a correctly written converse and accurate true/false analysis.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Logic, Conditional Statements & Intro to Proof' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 1%')),
  'homework', 'Justify a Design Decision Like a Proof',
  $t4$Think of a design decision you might make (why a logo is symmetric, why a package is a certain shape, why a layout uses certain angles).

1. State your design claim as a conditional statement ("If ... , then ...").
2. Write the converse of your statement and determine whether it's also true.
3. Write a short "proof-style" justification of your original claim -- a chain of 2-3 logical statements, each backed by a definition or property, showing why your claim must be true.
4. Explain in 1-2 sentences how this logical structure is similar to (or different from) how you'd normally explain a design choice.$t4$,
  $r4$Meets expectations when: the conditional statement is a genuine, sensible design claim; the converse is correctly written with accurate true/false reasoning; the proof-style justification uses at least 2 logically connected, properly justified steps (not just an assertion); and the final reflection shows real thought about the connection between logic and design reasoning.$r4$,
  20, 1
);

-- Translations, Reflections & Rotations -----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 2%')),
  'classwork', 'Transformations Practice Set',
  $t5$Complete all 5 problems, showing your work.

1. Translate the point (4, -2) by "left 5, up 3." State the new coordinates.
2. Reflect the point (-3, 6) over the y-axis. State the new coordinates.
3. Reflect the point (5, -4) over the x-axis. State the new coordinates.
4. Rotate the point (2, 5) 180° about the origin using the rule (x, y) → (-x, -y). State the new coordinates.
5. Rotate the point (3, 1) 90° about the origin using the rule (x, y) → (-y, x). State the new coordinates, then explain why transformations can be thought of as functions.$t5$,
  $r5$Full credit requires correct new coordinates with the transformation rule applied and shown for problems 1-4, and a correct rotated point plus an accurate explanation connecting transformations to the function concept (one input point, exactly one output point) for problem 5.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 2%')),
  'homework', 'Design a Repeating Pattern With Transformations',
  $t6$Design a simple repeating pattern or logo element (describe in words with coordinates -- no need to draw).

1. Choose a starting point or small set of points and list their coordinates.
2. Apply a translation of your choice and list the new coordinates.
3. Apply a reflection of your choice to the ORIGINAL points and list those new coordinates separately.
4. Apply a 90° or 180° rotation to the ORIGINAL points and list those new coordinates separately.
5. Explain in 2-3 sentences how using all three transformations together could create a balanced, repeating pattern for a real brand or fabric design.$t6$,
  $r6$Meets expectations when: original coordinates are clearly listed; the translation, reflection, and rotation are each applied correctly and shown separately; and the final explanation demonstrates genuine understanding of how combining rigid transformations creates visual repetition and balance.$r6$,
  20, 1
);

-- Congruence via Rigid Motions ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Congruence via Rigid Motions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 2%')),
  'classwork', 'Triangle Congruence Practice Set',
  $t7$Complete all 4 problems.

1. Triangle A has sides 5, 7, and 9. Triangle B has sides 5, 7, and 9. Are they congruent? By which criterion?
2. Triangle A has two sides of 6 and 8 with an included angle of 50°. Triangle B has two sides of 6 and 8 with an included angle of 50°. Are they congruent? By which criterion?
3. Explain the difference between SAS and SSA (why is SSA NOT a valid congruence criterion, even though it sounds similar to SAS)?
4. Describe two triangles (state side/angle measurements) that would be congruent by the ASA criterion. Explain which parts must match.$t7$,
  $r7$Full credit requires correct congruence conclusions with the correct criterion named for problems 1 and 2; an accurate, specific explanation of why SSA fails as a criterion for problem 3; and a valid original ASA example with a correct explanation for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Congruence via Rigid Motions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 2%')),
  'homework', 'Prove Two Design Elements Are Identical',
  $t8$Imagine a design team needs to prove that two triangular logo elements are exactly identical (not just similar-looking).

1. Choose a congruence criterion (SSS, SAS, ASA, or AAS) and state the measurements you would need to collect from each triangle to prove congruence using that criterion.
2. Invent specific matching measurements for two triangles that satisfy your chosen criterion.
3. Explain, referencing rigid motions (translations, reflections, rotations), why proving these measurements match guarantees the triangles could be mapped exactly onto each other.
4. Explain in 1-2 sentences a real business reason a team might need this level of proof (not just "they look about the same").$t8$,
  $r8$Meets expectations when: a valid criterion is chosen with correctly stated required measurements; the invented measurements genuinely satisfy that criterion; the rigid-motions explanation correctly connects congruence to the definition (mappable via translations/reflections/rotations); and the business reasoning is specific and realistic.$r8$,
  20, 1
);

-- Triangle Congruence & Similarity --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Triangle Congruence & Similarity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 3%')),
  'classwork', 'Similar Triangles Practice Set',
  $t9$Complete all 4 problems, showing your work.

1. Two triangles are similar with a scale factor of 3. The smaller triangle has sides 5, 6, and 8. Find the sides of the larger triangle.
2. A triangle has angles of 50° and 70°. A second triangle has angles of 50° and 70°. Are they similar? By which criterion?
3. A small model has a triangular support with sides 4, 5, and 6 inches. A similar real support has a shortest side of 12 inches. Find the scale factor and the other two sides.
4. Explain the difference between congruent triangles and similar triangles in your own words, using the words "shape" and "size."$t9$,
  $r9$Full credit requires correctly scaled sides with the scale factor shown for problem 1; a correct "similar" conclusion with the AA criterion correctly named for problem 2; a correct scale factor and correctly scaled sides for problem 3; and an explanation in problem 4 that correctly distinguishes "same shape, same size" (congruent) from "same shape, possibly different size" (similar).$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Triangle Congruence & Similarity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 3%')),
  'homework', 'Scale a Design Model to Full Size',
  $t10$Design a small triangular model of something real (a display stand, a roof truss, a decorative element) with specific side lengths.

1. State your model's side lengths.
2. Choose a scale factor and calculate the full-size dimensions, showing your work.
3. Explain which similarity criterion (AA, SSS, or SAS) guarantees your full-size version is truly similar to your model, and why.
4. Explain in 2-3 sentences one real reason a business would build a small model before the full-size version.$t10$,
  $r10$Meets expectations when: the model's dimensions are realistic and clearly stated; the scaled dimensions are calculated correctly with visible multiplication; the correct similarity criterion is identified with accurate reasoning; and the final explanation reflects genuine business reasoning about prototyping.$r10$,
  20, 1
);

-- Area & Perimeter of Polygons; Composite Figures ------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Area & Perimeter of Polygons; Composite Figures' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 4%')),
  'classwork', 'Area & Perimeter Practice Set',
  $t11$Complete all 4 problems, showing your work.

1. Find the area and perimeter of a rectangle that is 18 ft by 12 ft.
2. Find the area of a triangle with base 10 ft and height 7 ft.
3. An L-shaped room is made of a 14 ft × 10 ft rectangle plus a 6 ft × 5 ft rectangle. Find the total area.
4. A composite shape is made of a 12 ft × 8 ft rectangle with a triangular section (base 8 ft, height 5 ft) added on top. Find the total area.$t11$,
  $r11$Full credit requires correct area AND perimeter with the formulas shown for problem 1; correct area with the formula shown for problem 2; and correctly decomposed and summed areas with each section's calculation shown separately for problems 3 and 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Area & Perimeter of Polygons; Composite Figures' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-geometry') AND title LIKE 'Unit 4%')),
  'homework', 'Design a Composite Floor Plan',
  $t12$Design a composite floor plan for a real space (a café, a studio, a pop-up shop) made of at least 2 rectangular or triangular sections.

1. Describe your floor plan and state the dimensions of each section.
2. Calculate the area of each section separately, showing your work.
3. Calculate the total area of the space.
4. Calculate the total perimeter of the OUTER boundary only (not the internal dividing line between sections).
5. Explain in 1-2 sentences why a business would need to know both the area and the perimeter of a space (they serve different practical purposes).$t12$,
  $r12$Meets expectations when: the floor plan has at least 2 realistic, clearly dimensioned sections; each section's area is calculated correctly and shown separately; the total area correctly sums them; the perimeter correctly reflects only the outer boundary (a common error is including internal edges); and the final explanation correctly distinguishes practical uses of area vs. perimeter.$r12$,
  20, 1
);
