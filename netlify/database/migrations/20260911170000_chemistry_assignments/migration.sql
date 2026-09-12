-- Weekly-topic Classwork/Homework rollout for Chemistry (Venture Studio,
-- Grades 10-11). Adds a curated video and 2 assignments (Classwork +
-- Homework) to each of the course's 9 'lesson'-type entries. Fifth course
-- in the "Science courses" batch (task #162).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=hwqLCwgo6SU',
    video_caption = 'Khan Academy: Electron Configurations with the Periodic Table'
WHERE title = 'Atomic Structure Revisited: Electron Configuration'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=MJ4kpri9Pak',
    video_caption = 'Khan Academy: Atomic Radius Trends in the Periodic Table'
WHERE title = 'Periodic Trends: Atomic Radius, Electronegativity & Reactivity'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=FuVAgrLqsXs',
    video_caption = 'Khan Academy: Lewis Diagrams'
WHERE title = 'Chemical Bonding Deep Dive: Lewis Structures'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=kAKDFNWMixU',
    video_caption = 'Khan Academy: All Types of Reactions - Solved Examples'
WHERE title = 'Types of Chemical Reactions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=NOmoGxniQoM',
    video_caption = 'Khan Academy: Exothermic and Endothermic Reactions'
WHERE title = 'Energy in Reactions: Exothermic & Endothermic'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=_Su9Fij7TMQ',
    video_caption = 'Khan Academy: The Mole and Avogadro''s Number'
WHERE title = 'The Mole: Chemistry''s Counting Unit'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=SjQG3rKSZUQ',
    video_caption = 'Khan Academy: Stoichiometry'
WHERE title = 'Stoichiometry: Using Balanced Equations to Predict Amounts'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=L-Uhyjt8t10',
    video_caption = 'Khan Academy: Molarity'
WHERE title = 'Solutions: Concentration & Solubility'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=75j1b1l6PWU',
    video_caption = 'Khan Academy: The pH Scale'
WHERE title = 'Acids, Bases & the pH Scale'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 4:%');

-- Atomic Structure Revisited: Electron Configuration -------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Atomic Structure Revisited: Electron Configuration' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 1:%')),
  'classwork', 'Electron Configuration Practice Set',
  $t1$Complete all 4 problems.

1. Explain what energy levels and orbitals are, and how many electrons each orbital type (s, p, d, f) can hold.
2. Write the electron configuration for oxygen (atomic number 8) and identify its number of valence electrons.
3. Write the electron configuration for chlorine (atomic number 17), identify its valence electrons, and predict whether it's more likely to gain or lose electrons.
4. Explain why sodium's single valence electron makes it react so readily.$t1$,
  $r1$Full credit requires an accurate orbital-capacity explanation for problem 1; a correct oxygen configuration with correct valence count for problem 2; a correct chlorine configuration with sound gain/lose reasoning for problem 3; and accurate reactivity reasoning for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Atomic Structure Revisited: Electron Configuration' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 1:%')),
  'homework', 'Configuration Detective',
  $t2$Choose 2 elements from the periodic table with atomic numbers between 1 and 20 (not oxygen, chlorine, or sodium).

1. Write the full electron configuration for both elements.
2. Identify the number of valence electrons for each.
3. Predict whether each element is more likely to gain, lose, or share electrons in a reaction, and explain your reasoning.
4. Explain in 1-2 sentences how electron configuration connects to an element's position on the periodic table.$t2$,
  $r2$Meets expectations when: both configurations are correctly written following the filling order; valence electrons are correctly counted; the gain/lose/share predictions are chemically sound; and the final reflection correctly connects configuration to periodic table position.$r2$,
  20, 1
);

-- Periodic Trends: Atomic Radius, Electronegativity & Reactivity ----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Periodic Trends: Atomic Radius, Electronegativity & Reactivity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 1:%')),
  'classwork', 'Periodic Trends Practice Set',
  $t3$Complete all 4 problems.

1. Describe how atomic radius changes across a period and down a group, with reasoning for each.
2. Describe how electronegativity changes across a period and down a group, with reasoning for each.
3. Using sodium and potassium, explain why potassium reacts more violently with water.
4. Explain why chemists find periodic trends useful for predicting behavior of elements they haven't directly tested.$t3$,
  $r3$Full credit requires accurate atomic radius trends with reasoning for problem 1; accurate electronegativity trends with reasoning for problem 2; a correct sodium/potassium comparison for problem 3; and sound predictive-power reasoning for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Periodic Trends: Atomic Radius, Electronegativity & Reactivity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 1:%')),
  'homework', 'Predict and Compare',
  $t4$Choose 2 elements from the same period (not from the lesson's examples).

1. Predict which has the larger atomic radius, and explain your reasoning using periodic trends.
2. Predict which has higher electronegativity, and explain your reasoning.
3. Research (or estimate using trends) the actual values to check your predictions. Were you correct? If not, explain any deviation.
4. Explain in 2-3 sentences how Mendeleev used trends like these to predict properties of undiscovered elements.$t4$,
  $r4$Meets expectations when: both predictions use correct trend reasoning; the verification step is genuinely attempted; and the final reflection accurately explains Mendeleev's predictive method.$r4$,
  20, 1
);

-- Chemical Bonding Deep Dive: Lewis Structures -----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Chemical Bonding Deep Dive: Lewis Structures' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%')),
  'classwork', 'Lewis Structures Practice Set',
  $t5$Complete all 4 problems.

1. State the octet rule and its one notable exception.
2. List the 5 steps for drawing a Lewis structure.
3. Draw (or describe in detail) the Lewis structure for water (H2O), confirming oxygen achieves a full octet.
4. Draw (or describe in detail) the Lewis structure for ammonia (NH3), confirming nitrogen achieves a full octet.$t5$,
  $r5$Full credit requires an accurate octet rule statement with the hydrogen exception for problem 1; all 5 steps correctly listed for problem 2; a correct water structure for problem 3; and a correct ammonia structure for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Chemical Bonding Deep Dive: Lewis Structures' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%')),
  'homework', 'Draw a New Molecule',
  $t6$Choose a simple molecule not covered in the lesson (methane CH4, carbon dioxide CO2, or another with 5 or fewer atoms).

1. Count the total valence electrons across all atoms.
2. Draw (or describe in detail) the complete Lewis structure, following the 5-step process.
3. Confirm that every atom (except hydrogen) achieves a full octet.
4. Explain in 1-2 sentences why double or triple bonds are sometimes necessary to satisfy the octet rule with the available electrons.$t6$,
  $r6$Meets expectations when: the valence electron count is correct; the Lewis structure follows the correct process and achieves valid octets; and the final reflection correctly explains when and why multiple bonds are needed.$r6$,
  20, 1
);

-- Types of Chemical Reactions -----------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Types of Chemical Reactions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%')),
  'classwork', 'Reaction Types Practice Set',
  $t7$Complete all 4 problems.

1. Name and define all 5 major reaction types (synthesis, decomposition, single replacement, double replacement, combustion), with the general pattern for each.
2. Classify 4Fe + 3O2 → 2Fe2O3 into one of the 5 types, and explain your reasoning.
3. Classify CH4 + 2O2 → CO2 + 2H2O into one of the 5 types, and explain your reasoning.
4. Explain the Law of Conservation of Mass and why it requires chemical equations to be balanced.$t7$,
  $r7$Full credit requires all 5 reaction types correctly defined for problem 1; correct classification with sound reasoning for problems 2-3; and an accurate conservation-of-mass explanation for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Types of Chemical Reactions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%')),
  'homework', 'Classify and Balance',
  $t8$For the reaction 2H2 + O2 → 2H2O:

1. Classify the reaction into one of the 5 major types.
2. Verify the equation is balanced by counting each type of atom on both sides.
3. Invent your own simple, real chemical reaction (research if needed) and classify it into one of the 5 types.
4. Explain in 1-2 sentences what it would mean, physically, if an equation you wrote down was NOT balanced -- what law would that violate?$t8$,
  $r8$Meets expectations when: the classification is correct with sound reasoning; the balance check is accurate; the invented reaction is real and correctly classified; and the final reflection correctly connects unbalanced equations to conservation of mass.$r8$,
  20, 1
);

-- Energy in Reactions: Exothermic & Endothermic ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Energy in Reactions: Exothermic & Endothermic' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%')),
  'classwork', 'Exothermic & Endothermic Practice Set',
  $t9$Complete all 4 problems.

1. Define exothermic and endothermic reactions, with 2 real examples of each.
2. Define activation energy, using the "boulder rolling downhill" analogy from the lesson.
3. Explain why even a strongly exothermic reaction (like striking a match) still requires activation energy to begin.
4. Explain why a cold pack getting cold, and photosynthesis, are both classified as endothermic.$t9$,
  $r9$Full credit requires accurate definitions with valid examples for problem 1; a correct activation-energy explanation for problem 2; sound reasoning for problem 3; and accurate endothermic classification reasoning for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Energy in Reactions: Exothermic & Endothermic' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 2:%')),
  'homework', 'Energy Diagram Challenge',
  $t10$Choose one exothermic and one endothermic reaction from real life (not already used in the lesson).

1. Describe each reaction and classify it correctly.
2. For each, describe what happens to the temperature of the surroundings, and why.
3. Sketch or describe an energy diagram for your exothermic reaction, showing the activation energy "hump" and the net energy release.
4. Explain in 2-3 sentences why classifying a reaction as exothermic or endothermic doesn't tell you anything about how fast the reaction happens.$t10$,
  $r10$Meets expectations when: both reactions are correctly classified with accurate temperature reasoning; the energy diagram correctly shows activation energy and net release; and the final reflection correctly distinguishes energy change from reaction rate.$r10$,
  20, 1
);

-- The Mole: Chemistry's Counting Unit -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Mole: Chemistry''s Counting Unit' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 3:%')),
  'classwork', 'The Mole Practice Set',
  $t11$Complete all 4 problems.

1. Define a mole and Avogadro's number, using the "dozen" analogy.
2. Explain what molar mass is and how you find it using the periodic table.
3. Calculate how many moles are in 44.0 grams of carbon dioxide (molar mass ≈ 44.01 g/mol), showing your work.
4. Calculate how many individual CO2 molecules that represents.$t11$,
  $r11$Full credit requires an accurate mole/Avogadro's number definition for problem 1; a correct molar mass explanation for problem 2; correct calculation (1 mole) for problem 3; and correct molecule count for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Mole: Chemistry''s Counting Unit' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 3:%')),
  'homework', 'Mole Conversion Challenge',
  $t12$Choose a common compound (table salt NaCl, sugar C6H12O6, or another of your choice) and look up or calculate its molar mass.

1. Calculate how many moles are in 50 grams of your chosen compound, showing your work.
2. Calculate how many individual particles (molecules or formula units) that represents.
3. Calculate how many grams would be needed to have exactly 3 moles of your compound.
4. Explain in 1-2 sentences why chemists need a unit like the mole instead of just counting atoms or molecules directly.$t12$,
  $r12$Meets expectations when: the molar mass is correctly identified or calculated; both conversion calculations show correct work and correct answers; and the final reflection correctly explains the practical necessity of the mole as a counting unit.$r12$,
  20, 1
);

-- Stoichiometry: Using Balanced Equations to Predict Amounts ------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Stoichiometry: Using Balanced Equations to Predict Amounts' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 3:%')),
  'classwork', 'Stoichiometry Practice Set',
  $t13$Complete all 4 problems.

1. Explain what a mole ratio is, using the coefficients from 2H2 + O2 → 2H2O.
2. List the 4 steps of the stoichiometry process.
3. For N2 + 3H2 → 2NH3, if you start with 6 moles of H2, calculate how many moles of NH3 would be produced, showing your work.
4. Explain why you need a balanced equation before you can do any stoichiometry calculation at all.$t13$,
  $r13$Full credit requires an accurate mole ratio explanation for problem 1; all 4 steps correctly listed for problem 2; correct calculation (4 moles NH3) for problem 3; and sound reasoning for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Stoichiometry: Using Balanced Equations to Predict Amounts' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 3:%')),
  'homework', 'Stoichiometry in the Kitchen',
  $t14$Using the balanced equation 2H2 + O2 → 2H2O:

1. If you have 10 moles of H2, calculate how many moles of O2 are needed to react completely, showing your work.
2. Calculate how many moles of H2O would be produced from that same 10 moles of H2.
3. Convert your answer from problem 2 into grams of water produced (molar mass of water ≈ 18.02 g/mol).
4. Explain in 2-3 sentences how stoichiometry is similar to scaling a recipe up or down while keeping the ratios of ingredients the same.$t14$,
  $r14$Meets expectations when: all 3 calculations show correct work and correct answers using proper mole ratios and conversions; and the final reflection draws an accurate, specific parallel to recipe scaling.$r14$,
  20, 1
);

-- Solutions: Concentration & Solubility -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solutions: Concentration & Solubility' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 4:%')),
  'classwork', 'Solutions & Solubility Practice Set',
  $t15$Complete all 4 problems.

1. Define solute, solvent, and solution, with one example.
2. Define molarity and write its formula.
3. Calculate the molarity of a solution made by dissolving 3 moles of solute in 1.5 liters of solution, showing your work.
4. Define unsaturated, saturated, and supersaturated, and explain why a supersaturated solution is unstable.$t15$,
  $r15$Full credit requires accurate solute/solvent/solution definitions for problem 1; a correct molarity formula for problem 2; a correct calculation (2.0 M) for problem 3; and accurate saturation definitions with sound instability reasoning for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Solutions: Concentration & Solubility' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 4:%')),
  'homework', 'Solubility in Everyday Life',
  $t16$Using the soda/temperature example from the lesson:

1. Explain why gas solubility typically decreases with temperature, and how that relates to a warm soda going flat faster.
2. Explain why solid solubility typically increases with temperature, using the sugar-in-tea example.
3. Calculate the molarity of a solution made by dissolving 4 moles of solute in 2 liters of solution, showing your work.
4. Explain in 1-2 sentences how you would make that same solution twice as concentrated using the same amount of solute.$t16$,
  $r16$Meets expectations when: both solubility-temperature relationships are correctly explained with the given examples; the molarity calculation is correct (2.0 M); and the final reflection correctly identifies reducing solvent volume as the way to increase concentration.$r16$,
  20, 1
);

-- Acids, Bases & the pH Scale -----------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Acids, Bases & the pH Scale' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 4:%')),
  'classwork', 'Acids, Bases & pH Practice Set',
  $t17$Complete all 4 problems.

1. Define acids and bases, with 2 real examples of each.
2. Explain the pH scale (range, what's acidic/neutral/basic), and what a 1-step change represents.
3. Explain why pH 3 is 100 times more acidic than pH 5, not just "twice" as acidic.
4. Define neutralization, and write the general equation pattern (acid + base → ?).$t17$,
  $r17$Full credit requires accurate acid/base definitions with valid examples for problem 1; a correct pH scale explanation for problem 2; correct 10-fold-per-step reasoning for problem 3; and an accurate neutralization equation pattern for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Acids, Bases & the pH Scale' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-chemistry') AND title LIKE 'Unit 4:%')),
  'homework', 'Neutralization in Real Life',
  $t18$Choose a real-world neutralization example (an antacid tablet, adding lime to acidic soil, or another of your choice).

1. Identify the acid and the base involved.
2. Explain what happens chemically when they react (referencing the acid + base → salt + water pattern).
3. Explain why this neutralization is useful or necessary in your chosen real-world context.
4. Explain in 2-3 sentences how you would compare the acidity of 2 solutions if you only knew one was "2 pH steps" more acidic than the other.$t18$,
  $r18$Meets expectations when: the acid and base are correctly identified; the chemical explanation correctly references the salt + water pattern; the real-world usefulness is accurately explained; and the final reflection correctly applies the 10-fold-per-pH-step rule.$r18$,
  20, 1
);
