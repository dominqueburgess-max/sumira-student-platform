-- Weekly-topic Classwork/Homework rollout for Physics (Venture Studio,
-- Grades 11-12). Adds a curated video and 2 assignments (Classwork +
-- Homework) to each of the course's 9 'lesson'-type entries. Sixth and
-- final course in the "Science courses" batch (task #162).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=dr39gKnviAc',
    video_caption = 'Khan Academy: Developing Kinematic Equations from Data'
WHERE title = 'Kinematics: Describing Motion with Math'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=i447NWNpScM',
    video_caption = 'Khan Academy: Forces and Free-Body Diagrams'
WHERE title = 'Newton''s Laws Applied: Free Body Diagrams'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=30o4omX5qfo',
    video_caption = 'Khan Academy: Work and the Work-Energy Principle'
WHERE title = 'Work & Energy: Doing Physics on Objects'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=kw_4Loo1HR4',
    video_caption = 'Khan Academy: Conservation of Energy'
WHERE title = 'Conservation of Energy in Systems'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=8OB8eIPgEkQ',
    video_caption = 'Khan Academy: Elastic and Inelastic Collisions'
WHERE title = 'Momentum & Collisions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=ClHuscLyuLo',
    video_caption = 'Khan Academy: Wave Properties'
WHERE title = 'Wave Properties & Behavior'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=7eutept5h0Q',
    video_caption = 'Khan Academy: Electromagnetic Waves and the Electromagnetic Spectrum'
WHERE title = 'Light & the Electromagnetic Spectrum'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=F_vLWkkOETI',
    video_caption = 'Khan Academy: Introduction to Circuits and Ohm''s Law'
WHERE title = 'Electric Charge, Current & Circuits'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=vcStzn55MG0',
    video_caption = 'Khan Academy: Faraday''s Law Introduction'
WHERE title = 'Magnetism & Electromagnetic Induction'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 4:%');

-- Kinematics: Describing Motion with Math ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Kinematics: Describing Motion with Math' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 1:%')),
  'classwork', 'Kinematics Equations Practice Set',
  $t1$Complete all 4 problems.

1. Write all 3 kinematic equations from the lesson, and define each variable.
2. Explain what the slope of a position-time graph and a velocity-time graph each represent.
3. A car accelerates from rest at 4 m/s squared for 5 seconds. Calculate its final velocity and total distance traveled, showing your work.
4. Explain what the area under a velocity-time graph represents.$t1$,
  $r1$Full credit requires all 3 equations correctly written with variables defined for problem 1; accurate graph-slope explanations for problem 2; correct calculations (20 m/s, 50 m) with shown work for problem 3; and an accurate area-under-curve explanation for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Kinematics: Describing Motion with Math' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 1:%')),
  'homework', 'Kinematics Word Problem Set',
  $t2$A cyclist accelerates from 2 m/s to 10 m/s over 4 seconds.

1. Calculate the cyclist's acceleration, showing your work.
2. Calculate the total distance traveled during that time, using the appropriate kinematic equation and showing your work.
3. Sketch or describe what this motion would look like on a velocity-time graph.
4. Explain in 1-2 sentences how you could find the same distance using the area-under-the-curve method instead of the equation.$t2$,
  $r2$Meets expectations when: the acceleration calculation is correct (2 m/s squared) with shown work; the distance calculation is correct (24 m) with shown work; the graph description is accurate; and the final reflection correctly connects the two solution methods.$r2$,
  20, 1
);

-- Newton's Laws Applied: Free Body Diagrams --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Newton''s Laws Applied: Free Body Diagrams' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 1:%')),
  'classwork', 'Free Body Diagram Practice Set',
  $t3$Complete all 4 problems.

1. Name and describe all 5 common forces included in a free body diagram (weight, normal, applied, friction, tension).
2. Explain what "net force" means and how it relates to Newton's second law.
3. Using the 10 kg box example (30 N push, 20 N friction), calculate the net force and resulting acceleration, showing your work.
4. Explain what it means if an object's free body diagram shows balanced forces (net force = 0).$t3$,
  $r3$Full credit requires all 5 forces correctly described for problem 1; an accurate net-force/F=ma connection for problem 2; correct calculation (10 N, 1 m/s squared) for problem 3; and accurate balanced-force reasoning for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Newton''s Laws Applied: Free Body Diagrams' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 1:%')),
  'homework', 'Draw and Solve',
  $t4$A 5 kg box is pulled with 25 N of applied force while friction resists with 10 N.

1. Draw (or describe in detail) the free body diagram, including all relevant forces.
2. Calculate the net force acting on the box, showing your work.
3. Calculate the resulting acceleration using F=ma, showing your work.
4. Explain in 2-3 sentences what would need to change about this scenario for the box to move at constant velocity instead of accelerating.$t4$,
  $r4$Meets expectations when: the free body diagram includes all relevant forces; the net force (15 N) and acceleration (3 m/s squared) calculations are correct with shown work; and the final reflection correctly identifies balancing the forces as the condition for constant velocity.$r4$,
  20, 1
);

-- Work & Energy: Doing Physics on Objects ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Work & Energy: Doing Physics on Objects' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%')),
  'classwork', 'Work & Energy Practice Set',
  $t5$Complete all 4 problems.

1. Define work in the physics sense, including the formula with the angle term.
2. Explain why carrying a bag while walking horizontally involves zero physics "work" on the bag, even though it feels effortful.
3. Calculate the kinetic energy of a 1,000 kg car moving at 20 m/s, showing your work.
4. State the work-energy theorem, and explain what it connects.$t5$,
  $r5$Full credit requires an accurate work definition with formula for problem 1; correct zero-work reasoning for problem 2; correct KE calculation (200,000 J) for problem 3; and an accurate work-energy theorem statement for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Work & Energy: Doing Physics on Objects' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%')),
  'homework', 'Work and Energy in Real Life',
  $t6$Calculate the gravitational potential energy of a 50 kg person standing on a platform 3 meters high (g ≈ 9.8 m/s squared).

1. Show your calculation using PE = mgh.
2. Describe a real-world activity where you do measurable physics "work" on an object (lifting, pushing, pulling), and calculate an estimate of that work.
3. Describe a real-world activity where you exert effort but do ZERO physics work, and explain why.
4. Explain in 1-2 sentences how the work-energy theorem connects the work you calculated in problem 2 to a change in kinetic energy.$t6$,
  $r6$Meets expectations when: the PE calculation is correct (1,470 J) with shown work; the work example is calculated reasonably; the zero-work example correctly applies the physics definition; and the final reflection correctly connects work to kinetic energy change.$r6$,
  20, 1
);

-- Conservation of Energy in Systems --------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conservation of Energy in Systems' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%')),
  'classwork', 'Conservation of Energy Practice Set',
  $t7$Complete all 4 problems.

1. State the law of conservation of energy in your own words.
2. Using the roller coaster example, explain how potential energy converts to kinetic energy as the car descends.
3. A ball is dropped from a height of 10 meters (no air resistance). Using mgh = ½mv², calculate the ball's velocity just before hitting the ground, showing your work.
4. Explain why the ball's mass doesn't affect the final velocity answer in problem 3.$t7$,
  $r7$Full credit requires an accurate conservation-of-energy statement for problem 1; a correct roller-coaster explanation for problem 2; a correct velocity calculation (~14 m/s) with shown work for problem 3; and correct mass-cancellation reasoning for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conservation of Energy in Systems' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%')),
  'homework', 'Where Does the Energy Go?',
  $t8$Choose a real system with friction (a sliding box, a swinging pendulum that eventually stops, a bouncing ball that loses height each bounce).

1. Describe the system and identify the mechanical energy (KE + PE) at the start.
2. Explain what happens to the "lost" mechanical energy over time, and where it actually goes.
3. Explain why this loss doesn't violate the law of conservation of energy.
4. Explain in 2-3 sentences why a "perfect," frictionless energy-conserving system is an idealization that doesn't fully exist in the real world.$t8$,
  $r8$Meets expectations when: the system and its energy loss are accurately described; the explanation correctly identifies heat/sound as the destination of "lost" energy; and the final reflection correctly explains conservation-despite-loss and the idealization of frictionless systems.$r8$,
  20, 1
);

-- Momentum & Collisions -----------------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Momentum & Collisions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%')),
  'classwork', 'Momentum & Collisions Practice Set',
  $t9$Complete all 4 problems.

1. Define momentum, with its formula.
2. State the law of conservation of momentum.
3. Explain the difference between elastic and inelastic collisions, including what a "perfectly inelastic" collision means.
4. Using the 1,000 kg car example (15 m/s, colliding and sticking to a stationary 1,000 kg car), calculate the final velocity, showing your work.$t9$,
  $r9$Full credit requires an accurate momentum definition with formula for problem 1; a correct conservation statement for problem 2; accurate elastic/inelastic distinctions for problem 3; and a correct calculation (7.5 m/s) for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Momentum & Collisions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 2:%')),
  'homework', 'Collision Calculation Challenge',
  $t10$A 2 kg ball moving at 6 m/s collides and sticks to a stationary 4 kg ball (perfectly inelastic collision).

1. Using conservation of momentum, calculate the final velocity of the combined mass, showing your work.
2. Calculate the kinetic energy before the collision (only the moving ball has KE) and after the collision (combined mass).
3. Compare your two KE values from problem 2, and explain whether kinetic energy was conserved in this collision.
4. Explain in 1-2 sentences why momentum is always conserved in a closed system, even in collisions where kinetic energy is not.$t10$,
  $r10$Meets expectations when: the final velocity calculation is correct (2 m/s) with shown work; both KE calculations are correct and correctly compared, showing KE was NOT conserved; and the final reflection correctly distinguishes momentum conservation (always, in closed systems) from kinetic energy conservation (only in elastic collisions).$r10$,
  20, 1
);

-- Wave Properties & Behavior ------------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Wave Properties & Behavior' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 3:%')),
  'classwork', 'Wave Properties Practice Set',
  $t11$Complete all 4 problems.

1. Define wavelength, frequency, and amplitude.
2. Write the wave speed formula and define each variable.
3. Explain the difference between transverse and longitudinal waves, with one example of each.
4. A wave has a frequency of 5 Hz and a wavelength of 2 meters. Calculate its speed, showing your work.$t11$,
  $r11$Full credit requires accurate definitions for problem 1; a correctly stated formula for problem 2; accurate transverse/longitudinal distinctions with valid examples for problem 3; and a correct calculation (10 m/s) for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Wave Properties & Behavior' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 3:%')),
  'homework', 'Sound Wave Calculation',
  $t12$A sound wave has a frequency of 440 Hz and travels at approximately 340 m/s through air.

1. Calculate its wavelength using v = f times lambda, showing your work.
2. Explain whether sound is a transverse or longitudinal wave, and why.
3. Explain what would happen to the wavelength if the frequency doubled to 880 Hz while speed stayed the same.
4. Explain in 2-3 sentences why amplitude, not frequency or wavelength, is what determines a wave's energy.$t12$,
  $r12$Meets expectations when: the wavelength calculation is correct (about 0.77 m) with shown work; the longitudinal classification is correctly justified; the frequency-change prediction is correct (wavelength halves); and the final reflection correctly identifies amplitude as the energy-determining property.$r12$,
  20, 1
);

-- Light & the Electromagnetic Spectrum ----------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Light & the Electromagnetic Spectrum' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 3:%')),
  'classwork', 'Electromagnetic Spectrum Practice Set',
  $t13$Complete all 4 problems.

1. List the electromagnetic spectrum in order from lowest to highest energy.
2. Explain how frequency, wavelength, and energy relate to each other across the spectrum.
3. Explain why X-rays can penetrate soft tissue while visible light cannot.
4. Define reflection and refraction, and explain why a straw looks bent in a glass of water.$t13$,
  $r13$Full credit requires the spectrum correctly ordered for problem 1; accurate frequency/wavelength/energy relationships for problem 2; correct X-ray reasoning for problem 3; and accurate reflection/refraction definitions with correct straw explanation for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Light & the Electromagnetic Spectrum' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 3:%')),
  'homework', 'Rank and Explain',
  $t14$Rank the following in order of increasing energy: visible light, radio waves, X-rays, ultraviolet light.

1. State your ranking.
2. Explain your reasoning using frequency and wavelength relationships.
3. Choose one type of electromagnetic wave from your ranking (not visible light) and describe one real-world use or danger associated with it.
4. Explain in 2-3 sentences why all electromagnetic waves travel at the same speed in a vacuum, despite their different frequencies and wavelengths.$t14$,
  $r14$Meets expectations when: the ranking is correct (radio, visible, ultraviolet, X-rays); the reasoning correctly applies frequency/wavelength/energy relationships; the real-world example is accurate; and the final reflection correctly explains the constant speed of light.$r14$,
  20, 1
);

-- Electric Charge, Current & Circuits ------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Electric Charge, Current & Circuits' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 4:%')),
  'classwork', 'Circuits & Ohm''s Law Practice Set',
  $t15$Complete all 4 problems.

1. Define current, voltage, and resistance, with their units.
2. Write Ohm's law and explain what it lets you calculate.
3. Calculate the current in a circuit with 9 volts and 3 ohms of resistance, using Ohm's law, showing your work.
4. Explain the difference between series and parallel circuits, including what happens if one component fails in each.$t15$,
  $r15$Full credit requires accurate definitions with correct units for problem 1; a correctly stated Ohm's law for problem 2; a correct calculation (3 amps) for problem 3; and accurate series/parallel distinctions with failure behavior for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Electric Charge, Current & Circuits' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 4:%')),
  'homework', 'Household Wiring Investigation',
  $t16$Using the household wiring example from the lesson:

1. Explain why household wiring uses parallel circuits rather than series circuits.
2. Calculate the current in a circuit with 12 volts and 4 ohms of resistance, showing your work.
3. Explain what would happen to the current if the resistance doubled to 8 ohms with the same voltage.
4. Explain in 2-3 sentences what would happen in your house if all your lamps were wired in series instead of parallel, and one bulb burned out.$t16$,
  $r16$Meets expectations when: the parallel-wiring reasoning is accurate; the current calculation is correct (3 amps) with shown work; the resistance-change prediction is correct (current halves to 1.5 amps); and the final reflection correctly describes the series-circuit failure scenario.$r16$,
  20, 1
);

-- Magnetism & Electromagnetic Induction ---------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Magnetism & Electromagnetic Induction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 4:%')),
  'classwork', 'Magnetism & Induction Practice Set',
  $t17$Complete all 4 problems.

1. State the rule for how magnetic poles interact (like poles, opposite poles).
2. Explain how a current-carrying wire creates a magnetic field, and how this makes electromagnets possible.
3. Define electromagnetic induction, crediting Michael Faraday's discovery.
4. Using the bicycle dynamo example, explain step-by-step how spinning a magnet near a coil of wire produces electricity.$t17$,
  $r17$Full credit requires an accurate magnetic-pole rule for problem 1; a correct current-to-magnetism explanation for problem 2; an accurate induction definition for problem 3; and a correct step-by-step dynamo explanation for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Magnetism & Electromagnetic Induction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physics') AND title LIKE 'Unit 4:%')),
  'homework', 'Electromagnetism in Everyday Devices',
  $t18$Choose one real-world device that relies on electromagnetism (a motor, speaker, generator, or MRI machine).

1. Describe what the device does.
2. Explain specifically how it uses the connection between electricity and magnetism to work.
3. Explain whether your device primarily uses electricity to create magnetism, or magnetism to create electricity (or both).
4. Explain in 2-3 sentences why the discovery of electromagnetic induction is considered one of the most practically important discoveries in the history of physics.$t18$,
  $r18$Meets expectations when: the device and its function are accurately described; the electromagnetism mechanism is scientifically correct and specific; the electricity-vs-magnetism direction is correctly identified; and the final reflection shows genuine understanding of induction's real-world significance (power generation).$r18$,
  20, 1
);
