-- Weekly-topic Classwork/Homework rollout for Physical Science (Venture
-- Studio, Grades 8-9). Adds a curated video and 2 assignments (Classwork +
-- Homework) to each of the course's 9 'lesson'-type entries. Third course
-- in the "Science courses" batch (task #162).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=n5cZ5CWuUJA',
    video_caption = 'Khan Academy: Physical and Chemical Changes'
WHERE title = 'What Is Matter? Properties & Classification'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Aeddl02frBE',
    video_caption = 'Khan Academy: Phase Changes'
WHERE title = 'States of Matter & Phase Changes'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=lz_gMkQr7YE',
    video_caption = 'Khan Academy: Protons, Neutrons, and Electrons in Atoms'
WHERE title = 'Atoms: The Building Blocks of Matter'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=CtTmUlp3bBo',
    video_caption = 'Khan Academy: The Periodic Table'
WHERE title = 'The Periodic Table: Organizing the Elements'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=ZnDbJx0R5Eg',
    video_caption = 'Khan Academy: Ionic, Covalent, and Metallic Bonds'
WHERE title = 'Chemical Bonding: Ionic & Covalent Bonds'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=kWMd_OIu7H4',
    video_caption = 'Crash Course: Newton''s Laws of Motion'
WHERE title = 'Newton''s Laws of Motion'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=TrT_PwXFwAc',
    video_caption = 'Crash Course: Speed, Velocity, and Acceleration'
WHERE title = 'Speed, Velocity & Acceleration'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=e-CAW3fN68M',
    video_caption = 'Khan Academy: Energy Intro (Kinetic & Potential)'
WHERE title = 'Energy: Forms & Transformations'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=8GQvMt-ow4w',
    video_caption = 'Khan Academy: Thermal Conduction, Convection, and Radiation'
WHERE title = 'Heat Transfer: Conduction, Convection & Radiation'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 4:%');

-- What Is Matter? Properties & Classification -------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='What Is Matter? Properties & Classification' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 1:%')),
  'classwork', 'Physical & Chemical Properties Practice Set',
  $t1$Complete all 4 problems.

1. Define physical property and chemical property, with 2 examples of each.
2. Sort these into physical or chemical changes, with reasoning: tearing paper, burning wood, melting ice, iron rusting.
3. Explain why cutting paper is a physical change but burning it is a chemical change, using the definitions from problem 1.
4. Name and briefly describe all four states of matter (solid, liquid, gas, plasma).$t1$,
  $r1$Full credit requires accurate definitions with valid examples for problem 1; all 4 changes correctly sorted with sound reasoning for problem 2; a clear, correct explanation for problem 3; and all 4 states of matter accurately described for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='What Is Matter? Properties & Classification' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 1:%')),
  'homework', 'Investigate a Household Substance',
  $t2$Choose a substance from your home (water, table salt, a piece of fruit, a metal object).

1. List 3 physical properties of your substance (color, density, hardness, melting point, etc.).
2. List 1 chemical property of your substance (how it reacts or changes into something else).
3. Describe one physical change and one chemical change that substance could undergo.
4. Explain in 1-2 sentences how you can tell the difference between a physical and chemical change just by observing it -- what's the telltale sign a NEW substance has formed?$t2$,
  $r2$Meets expectations when: 3 genuine physical properties and 1 genuine chemical property are correctly identified; both changes are accurately described and correctly categorized; and the final reflection correctly identifies new-substance-formation as the key distinguishing sign.$r2$,
  20, 1
);

-- States of Matter & Phase Changes --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='States of Matter & Phase Changes' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 1:%')),
  'classwork', 'Phase Changes Practice Set',
  $t3$Complete all 4 problems.

1. Name all six phase changes and the direction of state change for each (melting, freezing, vaporization, condensation, sublimation, deposition).
2. Explain what happens to particle motion and spacing when energy is added versus removed.
3. Explain why water's temperature holds steady at 0°C while it's melting, even though heat is still being applied.
4. Explain what a "flat" section on a heating curve graph tells you is happening.$t3$,
  $r3$Full credit requires all 6 phase changes correctly named and directionally accurate for problem 1; an accurate particle-motion explanation for problem 2; correct reasoning about latent heat for problem 3; and an accurate graph interpretation for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='States of Matter & Phase Changes' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 1:%')),
  'homework', 'Sketch a Heating Curve',
  $t4$Sketch or describe a heating curve for water starting as ice at -10°C and ending as steam at 110°C.

1. Label where each state (solid, liquid, gas) exists on your curve.
2. Label where each phase change (melting, boiling) occurs, and mark the flat sections.
3. Explain what's happening to the water molecules at each of the 2 flat sections.
4. Explain in 2-3 sentences why dry ice (solid CO2) skips the liquid state entirely and goes straight to gas -- name this phase change.$t4$,
  $r4$Meets expectations when: the heating curve is correctly structured with accurate state and phase-change labels; the flat-section explanation correctly describes energy going into breaking bonds, not raising temperature; and the sublimation explanation is accurate and correctly named.$r4$,
  20, 1
);

-- Atoms: The Building Blocks of Matter -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Atoms: The Building Blocks of Matter' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Atomic Structure Practice Set',
  $t5$Complete all 4 problems.

1. Define protons, neutrons, and electrons, including charge and location for each.
2. Define atomic number and mass number, and explain the difference between them.
3. Define isotope, using Carbon-12 and Carbon-14 as your example.
4. An atom has 8 protons, 8 neutrons, and 8 electrons. Identify its atomic number, mass number, and name the element.$t5$,
  $r5$Full credit requires all 3 subatomic particles correctly defined for problem 1; an accurate atomic-number/mass-number distinction for problem 2; a correct isotope explanation for problem 3; and correct identification of the element (oxygen) with correct numbers for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Atoms: The Building Blocks of Matter' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Radiocarbon Dating Explainer',
  $t6$Using the Carbon-12/Carbon-14 example from the lesson:

1. Explain what makes Carbon-14 different from Carbon-12 at the subatomic level.
2. Explain why Carbon-14 is unstable while Carbon-12 is stable.
3. Explain, in your own words, how scientists use Carbon-14's decay to estimate the age of ancient fossils or artifacts.
4. If an atom of oxygen-16 (8 protons, 8 neutrons) gained 2 extra neutrons, explain what would change and what would stay the same about the atom.$t6$,
  $r6$Meets expectations when: the C-12/C-14 distinction is accurate; the stability explanation is sound; the radiocarbon dating explanation is scientifically accurate in the student's own words; and the oxygen-isotope scenario correctly identifies what changes (mass number) and what stays the same (element identity, atomic number).$r6$,
  20, 1
);

-- The Periodic Table: Organizing the Elements ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Periodic Table: Organizing the Elements' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Periodic Table Practice Set',
  $t7$Complete all 4 problems.

1. Explain what elements in the same period have in common, and what elements in the same group have in common.
2. Define metals, nonmetals, and metalloids, with one property of each.
3. Explain why sodium and potassium (both group 1) react similarly when dropped in water.
4. Explain why the noble gases (group 18) almost never react with anything.$t7$,
  $r7$Full credit requires accurate period-vs-group definitions for problem 1; all 3 categories correctly defined for problem 2; an accurate valence-electron-based explanation for problem 3; and correct full-outer-shell reasoning for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Periodic Table: Organizing the Elements' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Predict an Element''s Behavior',
  $t8$Choose 2 elements from the same group on the periodic table (not sodium/potassium).

1. Identify both elements and their group number.
2. Explain how many valence electrons each has, and why that number is the same for both.
3. Predict how they would behave similarly in a chemical reaction, based on their valence electrons.
4. Choose one metal and one nonmetal (from anywhere on the table) and describe one property that distinguishes them.$t8$,
  $r8$Meets expectations when: the 2 chosen elements are genuinely in the same group with correctly identified valence electrons; the behavior prediction is scientifically sound; and the metal/nonmetal property distinction is accurate.$r8$,
  20, 1
);

-- Chemical Bonding: Ionic & Covalent Bonds -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Chemical Bonding: Ionic & Covalent Bonds' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Ionic & Covalent Bonds Practice Set',
  $t9$Complete all 4 problems.

1. Define ionic bond and covalent bond, and explain the key difference (transfer vs. share).
2. Using sodium and chlorine, explain step-by-step how NaCl forms.
3. Using oxygen and hydrogen, explain how H2O forms through covalent bonding.
4. Describe one property difference between ionic and covalent compounds (melting point or conductivity).$t9$,
  $r9$Full credit requires an accurate transfer-vs-share distinction for problem 1; a correct step-by-step NaCl formation for problem 2; a correct H2O bonding explanation for problem 3; and an accurate property comparison for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Chemical Bonding: Ionic & Covalent Bonds' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Predict the Bond Type',
  $t10$For each of the following pairs, predict whether the bond would be ionic or covalent, and explain your reasoning using valence electrons and metal/nonmetal status: (a) potassium and fluorine, (b) two oxygen atoms, (c) calcium and chlorine.

1. Make your prediction and explain your reasoning for all 3 pairs.
2. For pair (a), describe which atom would transfer or share electrons, and what charge each ion would end up with (if ionic).
3. Explain what real-world property differences you'd expect to observe between an ionic compound and a covalent compound (melting point, conductivity when dissolved in water).
4. Explain in 1-2 sentences why two nonmetal atoms bonding together will always be covalent, never ionic.$t10$,
  $r10$Meets expectations when: all 3 predictions are scientifically correct with sound valence-electron reasoning; the charge/transfer explanation for pair (a) is accurate; the property comparison is correct; and the final reflection correctly explains why nonmetal-nonmetal bonds are always covalent.$r10$,
  20, 1
);

-- Newton's Laws of Motion --------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Newton''s Laws of Motion' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 3:%')),
  'classwork', 'Newton''s Three Laws Practice Set',
  $t11$Complete all 4 problems.

1. State all 3 of Newton's laws in your own words.
2. Using the boat-jumping example from the lesson, identify which law explains why the boat moves backward, and which law explains why a heavier boat moves back less.
3. Explain why seatbelts work, using the Law of Inertia.
4. Explain how a rocket launches, using the Action-Reaction law.$t11$,
  $r11$Full credit requires all 3 laws accurately stated for problem 1; correct law identification and application for problem 2; an accurate inertia-based seatbelt explanation for problem 3; and an accurate action-reaction rocket explanation for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Newton''s Laws of Motion' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 3:%')),
  'homework', 'Find All Three Laws in Action',
  $t12$Choose a real-world scenario (a sport, driving, space travel, or another activity of your choice).

1. Describe the scenario in detail.
2. Identify a moment where Newton's first law (inertia) is at work, and explain specifically how.
3. Identify a moment where Newton's second law (F=ma) is at work, and explain specifically how.
4. Identify a moment where Newton's third law (action-reaction) is at work, and explain specifically how.$t12$,
  $r12$Meets expectations when: all 3 laws are identified in the chosen scenario with specific, accurate explanations of how each applies -- not generic restatements of the law, but real application to the described moment.$r12$,
  20, 1
);

-- Speed, Velocity & Acceleration ----------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Speed, Velocity & Acceleration' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 3:%')),
  'classwork', 'Speed, Velocity & Acceleration Practice Set',
  $t13$Complete all 4 problems.

1. Define speed, velocity, and acceleration, and explain what makes velocity different from speed.
2. Explain why a car driving at a constant 60 mph around a curve is still accelerating.
3. Calculate the acceleration of a cyclist who speeds up from 5 m/s to 15 m/s over 5 seconds, showing your work.
4. Explain why "acceleration" in physics includes slowing down and turning, not just speeding up.$t13$,
  $r13$Full credit requires all 3 quantities correctly defined for problem 1; correct reasoning about direction-change-as-acceleration for problem 2; correct calculation (2 m/s squared) with shown work for problem 3; and accurate reasoning for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Speed, Velocity & Acceleration' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 3:%')),
  'homework', 'Track Your Own Motion',
  $t14$Choose a real trip you've taken recently (walking, biking, driving, or riding in a car).

1. Estimate the distance traveled and the time it took, and calculate your average speed.
2. Explain whether you also know your velocity for this trip, and what additional information you'd need to state it.
3. Describe one moment during the trip where you were accelerating (speeding up, slowing down, or turning), and explain why that counts as acceleration.
4. Explain in 2-3 sentences why average speed over a whole trip can hide a lot of variation in your actual speed at different moments.$t14$,
  $r14$Meets expectations when: the average speed calculation is correctly done and shown; the velocity explanation correctly identifies the missing direction information; the acceleration moment is genuine and correctly reasoned; and the final reflection accurately explains the limits of an average.$r14$,
  20, 1
);

-- Energy: Forms & Transformations --------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Energy: Forms & Transformations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 4:%')),
  'classwork', 'Energy Forms & Conservation Practice Set',
  $t15$Complete all 4 problems.

1. Define kinetic energy and potential energy, with one example of each not used in the lesson.
2. State the Law of Conservation of Energy in your own words.
3. Using the roller coaster example, trace the energy transformations from the top of the first hill to the bottom.
4. Explain where the "missing" energy goes in the roller coaster example (hint: friction and air resistance), and why the total energy is still considered conserved.$t15$,
  $r15$Full credit requires accurate definitions with valid new examples for problem 1; a correct conservation-of-energy statement for problem 2; an accurate roller-coaster trace for problem 3; and correct reasoning about energy conservation despite losses to heat/sound for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Energy: Forms & Transformations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 4:%')),
  'homework', 'Trace Your Own Energy Chain',
  $t16$Choose a real-world example (a flashlight, a car engine, a wind turbine, or your own body eating food and moving).

1. Identify the starting form of energy in your example.
2. Trace at least 3 forms of energy involved, in the order they transform.
3. Identify one point in your chain where some energy is "lost" to an unwanted form (usually heat), and explain where it goes.
4. Explain in 1-2 sentences why, even with that loss, the total energy in the system is still conserved.$t16$,
  $r16$Meets expectations when: at least 3 energy forms are correctly identified and ordered; the "lost" energy point is genuine and correctly explained; and the final reflection correctly applies conservation of energy despite the loss.$r16$,
  20, 1
);

-- Heat Transfer: Conduction, Convection & Radiation -------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Heat Transfer: Conduction, Convection & Radiation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 4:%')),
  'classwork', 'Heat Transfer Practice Set',
  $t17$Complete all 4 problems.

1. Define conduction, convection, and radiation, with one example of each.
2. Using the campfire example from the lesson, identify all 3 methods of heat transfer happening at once, and explain each.
3. Explain the difference between a thermal conductor and a thermal insulator, with one example of each.
4. Explain why pot handles are often made of plastic or wood instead of metal.$t17$,
  $r17$Full credit requires all 3 methods correctly defined with valid examples for problem 1; all 3 methods correctly identified in the campfire scenario for problem 2; an accurate conductor/insulator distinction for problem 3; and correct reasoning for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Heat Transfer: Conduction, Convection & Radiation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-physical-science') AND title LIKE 'Unit 4:%')),
  'homework', 'Heat Transfer Around Your House',
  $t18$Walk through your own home (kitchen, living room, outdoors) and identify real examples of heat transfer.

1. Identify one real example of conduction happening in your daily life.
2. Identify one real example of convection happening in your daily life.
3. Identify one real example of radiation happening in your daily life.
4. Explain in 2-3 sentences why understanding heat transfer matters for designing efficient homes or clothing.$t18$,
  $r18$Meets expectations when: all 3 examples are genuine, specific, and correctly categorized (not confused between methods); and the final reflection shows real understanding of the practical design applications of heat-transfer science.$r18$,
  20, 1
);
