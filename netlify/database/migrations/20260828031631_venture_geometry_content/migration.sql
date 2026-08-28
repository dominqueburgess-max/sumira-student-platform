-- Geometry (Grade 10) Venture Math: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the delivered Geometry Scope & Sequence / Pacing Calendar exactly: 4 units, 15 lessons,
-- including 2 small projects, 2 major STEAM/entrepreneurial projects (L8 and capstone L15), and
-- a Flex Week cumulative review (L12).

UPDATE courses SET status = 'published' WHERE slug = 'venture-geometry';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-geometry'), 'Unit 1: Foundations of Geometry', 0),
((SELECT id FROM courses WHERE slug='venture-geometry'), 'Unit 2: Transformations & Congruence', 1),
((SELECT id FROM courses WHERE slug='venture-geometry'), 'Unit 3: Triangles & Right Triangle Trigonometry', 2),
((SELECT id FROM courses WHERE slug='venture-geometry'), 'Unit 4: Polygons, Area & Similarity', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Points, Lines, Planes & Basic Constructions', 1, 'lesson',
  $lesson$## The Building Blocks of Every Design

Welcome to Geometry! Every logo, floor plan, and physical product starts with the same basic building blocks: points, lines, and planes.

### Precise Definitions

- **Point** — an exact location with no size
- **Line** — a straight path extending infinitely in both directions
- **Line segment** — a piece of a line with two defined endpoints
- **Plane** — a flat surface extending infinitely in all directions
- **Angle** — formed by two rays sharing a common endpoint (the vertex)

### Basic Constructions

Using just a compass and straightedge (or their digital equivalents in design software), you can construct a perpendicular bisector, an angle bisector, or a copy of a segment — the exact tools professional designers use to create precise, balanced layouts.

### Why This Matters for a Young Designer/Entrepreneur

Every brand logo, product package, and floor plan relies on precise geometric construction. A designer who understands exact definitions and constructions builds work that looks professional and scales cleanly.

### Your Turn

Describe, step by step, how you would construct a perpendicular bisector of a line segment using a compass and straightedge. Then explain one real design (a logo, package, or layout) where a perpendicular bisector might be a useful construction tool.$lesson$,
  'HSG-CO.A.1, HSG-CO.D.12', 'Know precise definitions of angle, circle, perpendicular line, parallel line, and line segment; make formal geometric constructions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Logic, Conditional Statements & Intro to Proof', 2, 'lesson',
  $lesson$## Justifying Design Decisions Logically

A **conditional statement** has the form "If P, then Q." Geometric proof is really just a chain of conditional statements, each justified by a definition, property, or previously proven fact.

### Key Vocabulary

- **Conditional statement:** "If P, then Q" (P → Q)
- **Converse:** swaps the hypothesis and conclusion: "If Q, then P" — not always true even if the original is!
- **Proof:** a logical argument that shows a statement must be true, using definitions, properties, and previously established facts as justification

### Worked Example

Conditional: "If a shape is a square, then it has four right angles." (True)
Converse: "If a shape has four right angles, then it is a square." (False — a rectangle also has four right angles but isn't necessarily a square!)

### Why This Matters

When you justify a design decision — like "this logo is symmetric because..." — you're using the exact same logical structure as a geometric proof. Being precise about what you can and can't conclude prevents costly design or engineering mistakes.

### Your Turn

Write a conditional statement about a geometric shape, then write its converse. Determine whether the converse is also true, and explain why or why not.$lesson$,
  'HSG-CO.C.9-11 (intro)', 'Understand and use conditional statements, converses, and basic logical structure as a foundation for geometric proof.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Unit 1 Quiz: Angle Relationships & Parallel Lines', 3, 'quiz',
  $lesson$## Unit 1 Quiz: Angles & Parallel Lines

This quiz checks your understanding of angle relationships: vertical angles (equal), linear pairs (supplementary), and the special angle pairs formed when a transversal crosses two parallel lines (corresponding, alternate interior, alternate exterior, and co-interior angles). These relationships are the foundation for nearly every geometric proof and every architectural drawing involving parallel structural elements.$lesson$,
  'HSG-CO.C.9', 'Prove theorems about lines and angles, including vertical angles, and angles formed when parallel lines are cut by a transversal.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Small Project: Prove It', 4, 'practice',
  $lesson$## Small Project: Prove It

### Why Proof Matters in Design

When an architect says a wall must be perpendicular to the floor, or a product designer says two edges must be parallel to fit together, they're relying on geometric proof to guarantee it — not just visual estimation.

### The Challenge

Choose a real or invented design scenario (a piece of furniture, a building facade, a logo with parallel or perpendicular elements). 

1. **State your design constraint** as a conditional statement (e.g., "If the two shelf brackets are installed correctly, then they are parallel.")
2. **Write a short proof** (a logical chain of 3-4 justified steps) showing how you would confirm two lines in your design are parallel or perpendicular, using angle relationships (vertical angles, alternate interior angles, etc.) as justification.
3. **Explain the real consequence** of failing to prove this constraint — what would go wrong in the physical world if the lines weren't actually parallel or perpendicular?

### Submission

Show your conditional statement, your step-by-step proof with justifications, and your real-world consequence explanation in the short-answer box below.$lesson$,
  'HSG-CO.C.9-11', 'Build a mini geometric-proof portfolio, applying angle and line theorems to justify a real design constraint.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Translations, Reflections & Rotations', 5, 'lesson',
  $lesson$## Transformations in Pattern Design

A transformation moves every point of a shape according to a consistent rule. Professional pattern and logo designers rely on these exact transformations to build clean, repeatable designs.

### The Three Rigid Transformations

- **Translation:** $(x, y) \rightarrow (x + a, y + b)$ — slides a shape without rotating it
- **Reflection:** over the y-axis, $(x, y) \rightarrow (-x, y)$; over the x-axis, $(x, y) \rightarrow (x, -y)$
- **Rotation:** turns a shape around a fixed center point by a given angle

### Worked Example

A logo element at (3, 2) is rotated 180° about the origin: the rule for a 180° rotation is $(x, y) \rightarrow (-x, -y)$, so the new point is **(-3, -2)**.

### Transformations as Functions

Each transformation takes an input point and produces exactly one output point — meaning transformations are themselves functions, connecting geometry directly back to the function concept from Algebra.

### Your Turn

Apply a translation of "right 3, up 5" to the point (2, -1). Then apply a 90° rotation about the origin (rule: $(x,y) \rightarrow (-y, x)$) to the same original point. Compare your two results.$lesson$,
  'HSG-CO.A.2-5', 'Represent transformations in the plane; describe transformations as functions that take points as inputs and produce points as outputs.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Congruence via Rigid Motions', 6, 'lesson',
  $lesson$## Proving Two Designs Are Identical

Two figures are **congruent** if one can be mapped onto the other using only rigid motions (translations, reflections, rotations) — moves that preserve size and shape exactly.

### Triangle Congruence Criteria

Two triangles are congruent if you can show any of these matching sets of parts:

- **SSS** (Side-Side-Side): all three sides match
- **SAS** (Side-Angle-Side): two sides and the included angle match
- **ASA** (Angle-Side-Angle): two angles and the included side match
- **AAS** (Angle-Angle-Side): two angles and a non-included side match

### Worked Example

If a design team wants to prove two triangular logo elements are exactly identical (not just similar), they could measure all three sides of each triangle. If all three pairs of sides are equal, the triangles are congruent by SSS — guaranteed to be truly identical, not just similar-looking.

### Your Turn

Describe two triangles by stating measurements for their sides or angles such that they would be congruent by the SAS criterion. Explain which parts must match and why SAS guarantees congruence.$lesson$,
  'HSG-CO.B.6-8', 'Use the definition of congruence in terms of rigid motions to decide if two figures are congruent; explain triangle congruence criteria.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Unit 2 Quiz: Symmetry & Tessellation Patterns', 7, 'quiz',
  $lesson$## Unit 2 Quiz: Symmetry & Tessellations

A shape has **line symmetry** if a reflection line divides it into two mirror-image halves, and **rotational symmetry** if it can be rotated less than 360° and land exactly on itself. A **tessellation** is a pattern of shapes that covers a plane with no gaps or overlaps — the mathematical foundation behind fabric patterns, tile designs, and repeating brand patterns.

This quiz checks your ability to identify symmetry types in common shapes and understand what makes a shape "tessellate."$lesson$,
  'HSG-CO.A.3', 'Given a rectangle, parallelogram, trapezoid, or regular polygon, describe the rotations and reflections that carry it onto itself.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'MAJOR PROJECT 1: Brand Identity & Logo Design Studio', 8, 'practice',
  $lesson$## MAJOR PROJECT 1 — Brand Identity & Logo Design Studio

### Driving Question

**"How do designers use geometric transformations to build a brand identity that scales?"**

### The Challenge

Design an original logo or brand pattern for a venture of your choice (real or invented).

1. **Choose a base shape or shapes** for your logo (triangle, polygon, or combination).
2. **Apply at least 3 different transformation types** (translation, reflection, rotation) to build your full logo/pattern from the base shape, describing each transformation with its coordinate rule.
3. **Justify congruence.** For at least one pair of shapes in your design, explain how you know they are congruent (using rigid motion reasoning or a triangle congruence criterion).
4. **Identify symmetry.** State whether your final design has line symmetry, rotational symmetry, both, or neither, and describe it precisely.
5. **Scalability explanation.** In 3-5 sentences, explain why a logo built from precise geometric transformations (rather than free-hand drawing) scales cleanly across products, signage, and digital platforms.

### What Makes This a STEAM + Entrepreneurship Project

You're combining geometric transformations (Math), visual design (Art), and brand strategy (Entrepreneurship) — exactly how real design studios build identities for new companies.

### Submission

Show your base shape, all transformation rules applied, your congruence justification, your symmetry description, and your written scalability explanation in the short-answer boxes below.$lesson$,
  'HSG-CO.A-B', 'Cumulative application of transformations, congruence, and symmetry to design a scalable brand logo or pattern.', 60
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Triangle Congruence & Similarity', 9, 'lesson',
  $lesson$## Similar Triangles: Same Shape, Different Size

Two triangles are **similar** if their corresponding angles are equal and their corresponding sides are proportional (same shape, possibly different size) — this is a direct extension of the scale drawings you worked with in earlier grades.

### Similarity Criteria

- **AA (Angle-Angle):** if two angles of one triangle equal two angles of another, the triangles are similar
- **SSS Similarity:** if all three pairs of corresponding sides are proportional
- **SAS Similarity:** if two pairs of sides are proportional and the included angles are equal

### Worked Example

A small design model of a product display uses a triangular support with sides 3, 4, and 5 inches. The real display uses a similar triangle with a shortest side of 9 inches. Since 9/3 = 3, the scale factor is 3, so the other sides are $4 \times 3 = 12$ inches and $5 \times 3 = 15$ inches.

### Your Turn

Two triangles are similar with a scale factor of 2.5. If the smaller triangle has sides 4, 6, and 8, find the corresponding sides of the larger triangle.$lesson$,
  'HSG-SRT.A.2-3, HSG-SRT.B.5', 'Understand similarity in terms of similarity transformations; use triangle similarity criteria to solve problems.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Right Triangle Trig Ratios (SOH-CAH-TOA)', 10, 'quiz',
  $lesson$## Unit 3 Quiz: Right Triangle Trigonometry

This quiz checks your ability to use the three basic trigonometric ratios in right triangles:

$$\sin(\theta) = \frac{\text{opposite}}{\text{hypotenuse}} \qquad \cos(\theta) = \frac{\text{adjacent}}{\text{hypotenuse}} \qquad \tan(\theta) = \frac{\text{opposite}}{\text{adjacent}}$$

Remember the mnemonic **SOH-CAH-TOA** to keep these straight. These ratios let you calculate an unknown side or angle in any right triangle — essential for architecture, construction, and design work.$lesson$,
  'HSG-SRT.C.6-8', 'Understand that side ratios in right triangles are properties of the angles, leading to the trigonometric ratios; use them to solve problems.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Small Project: Measure the Unmeasurable', 11, 'practice',
  $lesson$## Small Project: Measure the Unmeasurable

### Trigonometry Lets You Measure Without a Ladder

Right triangle trigonometry solves a problem every designer, architect, and surveyor faces: how do you measure something too tall, too far, or too dangerous to measure directly?

### Worked Example

From 50 feet away from the base of a building, the angle of elevation to the top is 35°. Using tangent:

$$\tan(35°) = \frac{\text{height}}{50}$$
$$\text{height} = 50 \times \tan(35°) \approx 50 \times 0.700 = 35 \text{ feet}$$

### The Challenge

Choose a real "unmeasurable" object relevant to a design project — a building height, a flagpole, a tree, or a structural element in a space you're designing.

1. Invent a realistic distance from the object and a realistic angle of elevation to its top.
2. Use the appropriate trig ratio (tangent, since you know the angle and the adjacent side) to calculate the object's height.
3. Explain, in your own words, why this method is more practical than direct measurement for very tall or distant objects.

### Submission

Show your chosen distance and angle, your trig calculation, and your written explanation in the short-answer box below.$lesson$,
  'HSG-SRT.C.8', 'Use trigonometric ratios to solve right triangles in applied problems, calculating real heights and distances.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Flex Week: Cumulative Review & Project Studio', 12, 'practice',
  $lesson$## Flex Week: Review & Project Studio

Before moving into Unit 4 (Polygons, Area & Similarity), let's lock in Units 1-3 with a mixed review.

### Cumulative Review

1. **Logic:** Write the converse of "If a shape is a rectangle, then it has four right angles." Is the converse true?
2. **Transformations:** Reflect the point (5, -2) over the x-axis.
3. **Congruence/similarity:** Two similar triangles have a scale factor of 3. If the smaller triangle's sides are 2, 5, and 6, find the larger triangle's sides.
4. **Trigonometry:** A right triangle has an angle of 40° and an adjacent side of 20. Find the opposite side using tangent.

### Project Studio Time

Revisit your Brand Identity Logo and Measure the Unmeasurable project work. Reread your written explanations for precision — would a client or investor find your justification convincing?

### Your Turn

Solve all 4 review problems above, showing your work. Then write 2-3 sentences on which unit (foundations/proof, transformations/congruence, or similarity/trigonometry) you'd like to review further before the next assessment.$lesson$,
  'HSG-CO.A-C, HSG-SRT.A-C', 'Cumulative review of constructions, transformations, congruence, similarity, and trigonometry from Units 1-3.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Area & Perimeter of Polygons; Composite Figures', 13, 'lesson',
  $lesson$## Floor Plans: Area & Perimeter in the Real World

Every business space — a café, studio, or pop-up shop — starts with an accurate floor plan built from area and perimeter calculations.

### Key Formulas

- **Rectangle:** Area = length × width; Perimeter = 2(length + width)
- **Triangle:** Area = 1/2 × base × height
- **Composite figures:** break into rectangles/triangles, calculate each area, and add them together

### Worked Example — Composite Floor Plan

An L-shaped studio space is made of a 20 ft × 15 ft rectangle plus a 10 ft × 8 ft rectangle:

$$A = (20 \times 15) + (10 \times 8) = 300 + 80 = 380 \text{ square feet}$$

### Using Coordinates

If a floor plan's corners are given as coordinates, you can calculate side lengths using the distance formula, then apply the area formulas above.

### Your Turn

Design a composite floor plan made of at least 2 rectangular or triangular sections. State the dimensions of each section, calculate the total area, and calculate the total perimeter of the outer boundary.$lesson$,
  'HSG-GMD.A.1, HSG-GPE.B.7', 'Give informal arguments for area formulas; compute perimeters and areas of polygons, including composite figures, using coordinates.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'Similarity & Scale Factor in Area & Volume', 14, 'quiz',
  $lesson$## Unit 4 Quiz: Scale Factor, Area & Volume

When two figures are similar with scale factor k, their **areas** scale by $k^2$, and for similar solids, their **volumes** scale by $k^3$. This is a critical concept for budgeting: doubling a floor plan's dimensions doesn't just double the flooring cost — it quadruples it! This quiz checks your understanding of how scale factor affects length, area, and volume differently.$lesson$,
  'HSG-SRT.A.1-2, HSG-GMD.A.3', 'Understand how scale factor affects area (squared) and volume (cubed) in similar figures and solids.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry')),
  'MAJOR PROJECT 2 CAPSTONE: Architecture & Space Planning Venture', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 — CAPSTONE: Architecture & Space Planning Venture

Congratulations on reaching your final project of the semester! This capstone combines trigonometry, area calculations, and scale/budget reasoning into a complete small-business space design.

### Driving Question

**"How do architects and entrepreneurs use geometry to design a functional, affordable space?"**

### The Challenge

Design a small business space (a café, studio, pop-up shop, or similar).

1. **Design your floor plan.** Create a composite floor plan made of at least 2 sections (rectangles and/or triangles), stating the dimensions of each and calculating total floor area (from Lesson 13).
2. **Structural trig calculation.** Include one structural design element that requires trigonometry to calculate — for example, the length of an angled support beam, an awning, or a ramp — showing your SOH-CAH-TOA work.
3. **Scale factor & budget impact.** Suppose you had to scale your entire floor plan up by a factor of 1.5 to serve more customers. Calculate the new total area using the area-scales-by-$k^2$ rule, and explain what that means for your flooring budget.
4. **Cost-per-square-foot budget.** Choose a realistic cost-per-square-foot for build-out (flooring, walls, fixtures) and calculate your total space budget for both your original design and your scaled-up design.
5. **Founder's pitch.** In 4-6 sentences, pitch your space to an investor: what is it, why does the location/design matter, and how did your geometric and budget calculations shape a realistic, fundable plan?

### What Makes This a STEAM + Entrepreneurship Capstone

You're combining architectural design reasoning (Math/Engineering), spatial planning (Art/Design), and real cost-scaling analysis (Entrepreneurship) — exactly how real architects and small business owners plan a physical space.

### Submission

Type your full design plan — floor plan dimensions and area, trig calculation, scale factor and budget comparison, and founder's pitch — into the short-answer boxes below. This project represents your growth across the entire fall semester, so take your time and show your best work.$lesson$,
  'HSG-SRT.C.6-8, HSG-GMD.A.1-3', 'Cumulative application of trigonometry, area, and scale factor reasoning to design and budget a small business space.', 75
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Points, Lines, Planes & Basic Constructions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Which of these has no size, only a location?', '["A line", "A point", "A plane", "An angle"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Points, Lines, Planes & Basic Constructions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'A perpendicular bisector of a segment does what?', '["Divides it into two unequal parts", "Crosses it at a 45-degree angle", "Divides it into two equal parts at a 90-degree angle", "Extends the segment infinitely"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Points, Lines, Planes & Basic Constructions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Describe step by step how to construct a perpendicular bisector, and explain a real design use for it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Logic, Conditional Statements & Intro to Proof' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'What is the converse of ''If P, then Q''?', '["If not P, then not Q", "If Q, then P", "If not Q, then not P", "P if and only if Q"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Logic, Conditional Statements & Intro to Proof' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'Is the converse of a true conditional statement always true?', '["Yes, always", "No, not always", "Only for squares", "Only in geometry"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Logic, Conditional Statements & Intro to Proof' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Write a conditional statement about a shape, write its converse, and determine if the converse is true.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Angle Relationships & Parallel Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Vertical angles are always:', '["Supplementary", "Equal", "Complementary", "Right angles"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Angle Relationships & Parallel Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'When two parallel lines are cut by a transversal, corresponding angles are:', '["Equal", "Supplementary", "Complementary", "Vertical"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Angle Relationships & Parallel Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'multiple_choice', 'Two angles forming a linear pair are:', '["Equal", "Complementary", "Supplementary", "Vertical"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Angle Relationships & Parallel Lines' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Explain the difference between alternate interior angles and co-interior (same-side interior) angles.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Prove It' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'short_answer', 'State your design constraint as a conditional statement.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Prove It' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'short_answer', 'Write your step-by-step proof with justifications for each step.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Prove It' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Foundations of Geometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Explain the real-world consequence of failing to prove this constraint.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Translating (2, 5) by ''right 3, down 4'' gives:', '["(5, 1)", "(-1, 9)", "(5, 9)", "(-1, 1)"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'Reflecting (6, -3) over the x-axis gives:', '["(-6, -3)", "(6, 3)", "(-6, 3)", "(3, -6)"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Translations, Reflections & Rotations' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Apply a translation of ''right 3, up 5'' and separately a 90-degree rotation about the origin to the point (2, -1), and compare results.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Congruence via Rigid Motions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Which triangle congruence criterion uses two sides and the included angle?', '["SSS", "SAS", "ASA", "AAS"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Congruence via Rigid Motions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'Two figures are congruent if one maps onto the other using only:', '["Dilations", "Rigid motions", "Scale factors", "Similarity transformations"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Congruence via Rigid Motions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Describe two triangles that would be congruent by SAS, stating which parts must match.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Symmetry & Tessellation Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'A square has how many lines of symmetry?', '["1", "2", "4", "8"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Symmetry & Tessellation Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'A shape that covers a plane with no gaps or overlaps is called a:', '["Reflection", "Tessellation", "Dilation", "Congruence"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Symmetry & Tessellation Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'multiple_choice', 'A regular hexagon has rotational symmetry at increments of:', '["45 degrees", "60 degrees", "90 degrees", "180 degrees"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 2 Quiz: Symmetry & Tessellation Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Describe the line and rotational symmetry of a rectangle.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Brand Identity & Logo Design Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'short_answer', 'Describe your base shape(s) for your logo.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Brand Identity & Logo Design Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'short_answer', 'List the 3+ transformations you applied, with their coordinate rules.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Brand Identity & Logo Design Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Explain your congruence justification for at least one pair of shapes.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Brand Identity & Logo Design Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Transformations & Congruence' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Describe your design''s symmetry and write your 3-5 sentence scalability explanation.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Triangle Congruence & Similarity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Which similarity criterion uses only angle measures?', '["SSS", "SAS", "AA", "ASA"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Triangle Congruence & Similarity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'Two similar triangles have a scale factor of 4. If a side of the smaller triangle is 3, the corresponding side of the larger triangle is:', '["7", "12", "1.33", "9"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Triangle Congruence & Similarity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Given a scale factor of 2.5 and a smaller triangle with sides 4, 6, and 8, find the larger triangle''s sides.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Right Triangle Trig Ratios (SOH-CAH-TOA)' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Which ratio is opposite/hypotenuse?', '["Cosine", "Sine", "Tangent", "Secant"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Right Triangle Trig Ratios (SOH-CAH-TOA)' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'Which ratio is opposite/adjacent?', '["Sine", "Cosine", "Tangent", "None of these"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Right Triangle Trig Ratios (SOH-CAH-TOA)' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'multiple_choice', 'A right triangle has a hypotenuse of 10 and an angle of 30°. Using sine, the opposite side is approximately:', '["5", "8.7", "10", "3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Right Triangle Trig Ratios (SOH-CAH-TOA)' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Explain what SOH-CAH-TOA stands for and when you would use each ratio.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Measure the Unmeasurable' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'short_answer', 'State your chosen object, your distance from it, and your angle of elevation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Measure the Unmeasurable' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'short_answer', 'Show your trigonometric calculation for the object''s height.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Measure the Unmeasurable' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Explain why this method is more practical than direct measurement.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'Is the converse of ''If a shape is a rectangle, then it has 4 right angles'' true?', '["Yes", "No", "Sometimes", "Cannot be determined"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'Reflecting (5, -2) over the x-axis gives:', '["(5, 2)", "(-5, -2)", "(-5, 2)", "(2, -5)"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Given a scale factor of 3 and a smaller triangle with sides 2, 5, 6, find the larger triangle''s sides.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Flex Week: Cumulative Review & Project Studio' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Triangles & Right Triangle Trigonometry' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Find the opposite side of a right triangle with a 40-degree angle and adjacent side 20, then reflect on which unit needs review.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Area & Perimeter of Polygons; Composite Figures' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'What is the area of a rectangle 12 ft by 9 ft?', '["21 sq ft", "108 sq ft", "42 sq ft", "96 sq ft"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Area & Perimeter of Polygons; Composite Figures' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'What is the perimeter of a rectangle 12 ft by 9 ft?', '["21 ft", "42 ft", "108 ft", "84 ft"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Area & Perimeter of Polygons; Composite Figures' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Design a composite floor plan of at least 2 sections, stating dimensions and calculating total area and perimeter.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Similarity & Scale Factor in Area & Volume' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'multiple_choice', 'If similar figures have a scale factor of 3, their areas scale by:', '["3", "6", "9", "27"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Similarity & Scale Factor in Area & Volume' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'multiple_choice', 'If similar solids have a scale factor of 2, their volumes scale by:', '["2", "4", "6", "8"]'::jsonb, 3),
((SELECT id FROM lessons WHERE title='Similarity & Scale Factor in Area & Volume' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'multiple_choice', 'A floor plan is scaled up by a factor of 1.5. Its area scales by:', '["1.5", "2.25", "3", "1"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Similarity & Scale Factor in Area & Volume' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Explain why doubling a room''s dimensions more than doubles the flooring cost, using the area-scaling rule.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Architecture & Space Planning Venture' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 1, 'short_answer', 'Describe your floor plan sections with dimensions and show your total area calculation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Architecture & Space Planning Venture' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 2, 'short_answer', 'Show your trigonometric structural calculation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Architecture & Space Planning Venture' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 3, 'short_answer', 'Show your scale factor area calculation for the 1.5x scaled design.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Architecture & Space Planning Venture' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 4, 'short_answer', 'Show your cost-per-square-foot budget for both the original and scaled design.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Architecture & Space Planning Venture' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Polygons, Area & Similarity' AND course_id=(SELECT id FROM courses WHERE slug='venture-geometry'))), 5, 'short_answer', 'Write your 4-6 sentence founder''s pitch for your space.', NULL, NULL);
