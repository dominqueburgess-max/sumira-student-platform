-- Weekly-topic Classwork/Homework rollout for Biology (Venture Studio,
-- Grades 9-10). Adds a curated video and 2 assignments (Classwork +
-- Homework) to each of the course's 9 'lesson'-type entries. Fourth course
-- in the "Science courses" batch (task #162).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=j5VA6YrqTNs',
    video_caption = 'Khan Academy: Introduction to Biomolecules'
WHERE title = 'Biomolecules: The Chemistry of Life'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=bWPQvxElpLY',
    video_caption = 'Khan Academy: Organelles in Eukaryotic Cells'
WHERE title = 'Cell Structure: Organelles & Their Functions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=6gUY5NoX1Lk',
    video_caption = 'Khan Academy: DNA Replication and RNA Transcription and Translation'
WHERE title = 'DNA Replication & Protein Synthesis'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=g02RnGXCXrQ',
    video_caption = 'Khan Academy: An Introduction to Genetic Mutations'
WHERE title = 'Mutations & Genetic Variation'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=kaSIjIzAtYA',
    video_caption = 'Mitosis, Meiosis, and Sexual Reproduction'
WHERE title = 'Meiosis & Genetic Diversity'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Q-aGAX27SIo',
    video_caption = 'Khan Academy: Evidence for Evolution'
WHERE title = 'Evidence for Evolution'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=gnku5AksWvU',
    video_caption = 'Khan Academy: Allopatric and Sympatric Speciation'
WHERE title = 'Speciation & Biodiversity'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=KyAKEisg2PQ',
    video_caption = 'Khan Academy: Exponential and Logistic Growth in Populations'
WHERE title = 'Ecosystem Dynamics & Population Growth'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=K10qnzCYH54',
    video_caption = 'Khan Academy: Human Impacts on Ecosystems'
WHERE title = 'Human Impact on Ecosystems & Conservation Biology'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 4:%');

-- Biomolecules: The Chemistry of Life --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Biomolecules: The Chemistry of Life' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 1:%')),
  'classwork', 'The Four Biomolecules Practice Set',
  $t1$Complete all 4 problems.

1. Name all 4 biomolecule categories (carbohydrates, lipids, proteins, nucleic acids) and their primary function.
2. For each category, name one specific example not already used in the lesson.
3. Explain the "structure determines function" theme using the amylase enzyme example.
4. Explain what happens to an enzyme's function if its shape is destroyed (denatured), and name two things that can cause this.$t1$,
  $r1$Full credit requires all 4 categories correctly named with accurate functions for problem 1; valid new examples for problem 2; an accurate structure-function explanation for problem 3; and correct denaturation causes and consequences for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Biomolecules: The Chemistry of Life' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 1:%')),
  'homework', 'Biomolecules on Your Plate',
  $t2$Look at the label or ingredients of a food you ate recently.

1. Identify at least one carbohydrate, one lipid, and one protein source in that food (or explain if one category is missing).
2. For each biomolecule you identified, explain its function in your body once digested.
3. Explain what a digestive enzyme (like amylase) does to one of these biomolecules before your body can use it.
4. Explain in 2-3 sentences why nucleic acids aren't something you typically think about "eating" for energy, even though they're one of the four major biomolecules.$t2$,
  $r2$Meets expectations when: at least 2-3 biomolecule categories are correctly identified from a real food with accurate functions explained; the enzyme action is correctly described; and the nucleic acid reflection shows accurate understanding of its distinct role (information storage, not primary energy).$r2$,
  20, 1
);

-- Cell Structure: Organelles & Their Functions -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Cell Structure: Organelles & Their Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 1:%')),
  'classwork', 'Organelle Function Practice Set',
  $t3$Complete all 4 problems.

1. Name and describe the function of at least 5 organelles from the lesson.
2. Using the factory analogy, match each organelle to its factory role (head office, workers, processing/shipping, power plant).
3. Explain why a muscle cell contains far more mitochondria than a typical skin cell.
4. Explain the specific function of chloroplasts, and why only plant cells have them.$t3$,
  $r3$Full credit requires 5 organelles accurately described for problem 1; a correct factory-analogy matching for problem 2; sound structure-function reasoning for problem 3; and an accurate chloroplast explanation for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Cell Structure: Organelles & Their Functions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 1:%')),
  'homework', 'Design a Specialized Cell',
  $t4$Choose a human cell type (nerve, skin, liver, or another of your choice).

1. Identify the cell's main job in the body.
2. Predict which organelle(s) that cell type would have in unusually high numbers, and explain why, based on its job.
3. Describe what would happen to the cell's function if that key organelle stopped working.
4. Explain in 1-2 sentences why "structure matches function" is considered one of biology's core organizing ideas, not just true for this one example.$t4$,
  $r4$Meets expectations when: the organelle prediction is logically connected to the cell's actual job; the malfunction scenario is scientifically sound; and the final reflection shows genuine understanding of structure-function as a general biological principle.$r4$,
  20, 1
);

-- DNA Replication & Protein Synthesis -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='DNA Replication & Protein Synthesis' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%')),
  'classwork', 'DNA to Protein Practice Set',
  $t5$Complete all 4 problems.

1. Explain what "semi-conservative replication" means, and why each new DNA molecule has one original and one new strand.
2. Name and define the two steps of the central dogma (transcription and translation), including where each occurs in the cell.
3. Explain what a codon is and its role in translation.
4. Using the sickle cell disease example, explain how a single DNA change can lead to a changed protein and a real medical condition.$t5$,
  $r5$Full credit requires an accurate semi-conservative replication explanation for problem 1; correct transcription/translation definitions and locations for problem 2; an accurate codon explanation for problem 3; and a correct sickle-cell mutation-to-disease chain for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='DNA Replication & Protein Synthesis' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%')),
  'homework', 'Trace the Central Dogma',
  $t6$Starting from a single gene, trace the full path of information from DNA to a finished, functioning protein.

1. Describe what happens during transcription, naming the molecule produced.
2. Describe what happens during translation, naming where it occurs and what's produced.
3. Explain what determines the final protein's shape, and why shape matters to function (connect back to the biomolecules lesson if helpful).
4. Explain in 2-3 sentences why a single small change in DNA could potentially have a large effect on an organism, using sickle cell disease or a similar example.$t6$,
  $r6$Meets expectations when: both major steps (transcription, translation) are accurately traced in the correct order and location; the shape-function connection is scientifically sound; and the final reflection correctly explains how small DNA changes can cascade into large effects.$r6$,
  20, 1
);

-- Mutations & Genetic Variation ------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Mutations & Genetic Variation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%')),
  'classwork', 'Mutations Practice Set',
  $t7$Complete all 4 problems.

1. Define point mutation and chromosomal mutation, with one difference between them.
2. Explain the 3 possible effects of a mutation (neutral, harmful, beneficial), and which one is rarest.
3. Name 2 causes of mutations (spontaneous vs. mutagen-caused), with one example mutagen.
4. Using the fur-color camouflage example, explain how a rare beneficial mutation could spread through a population over generations.$t7$,
  $r7$Full credit requires an accurate point-vs-chromosomal distinction for problem 1; all 3 mutation effects correctly explained for problem 2; 2 valid causes with a real mutagen example for problem 3; and a scientifically sound natural-selection explanation for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Mutations & Genetic Variation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%')),
  'homework', 'Design a Mutation Scenario',
  $t8$Invent a mutation scenario in a species of your choice.

1. Describe the mutation (point or chromosomal) and what trait it affects.
2. Classify your mutation as neutral, harmful, or beneficial, and justify your classification.
3. If beneficial, explain the environmental condition that would make it beneficial, and how it might spread over generations. If harmful or neutral, explain why it would NOT spread the same way.
4. Explain in 1-2 sentences why mutations are described as "the raw material of evolution" rather than evolution itself.$t8$,
  $r8$Meets expectations when: the mutation type and trait are clearly described; the neutral/harmful/beneficial classification is well-justified; the spread-or-not reasoning is scientifically sound; and the final reflection correctly distinguishes mutation (source of variation) from evolution (change in populations over time).$r8$,
  20, 1
);

-- Meiosis & Genetic Diversity ---------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Meiosis & Genetic Diversity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%')),
  'classwork', 'Meiosis & Diversity Practice Set',
  $t9$Complete all 4 problems.

1. Explain the key difference between mitosis and meiosis (number and type of cells produced).
2. Define crossing over and independent assortment, and explain how each creates genetic diversity.
3. Explain why a sperm and egg cell each need half the normal chromosome number.
4. Using the "2^23 combinations" example, explain why siblings (aside from identical twins) are never genetically identical.$t9$,
  $r9$Full credit requires an accurate mitosis-vs-meiosis distinction for problem 1; correct definitions of both diversity sources for problem 2; accurate reasoning about chromosome number restoration for problem 3; and correct application of independent assortment to sibling variation for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Meiosis & Genetic Diversity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 2:%')),
  'homework', 'Explain Meiosis to a Younger Student',
  $t10$Imagine explaining meiosis to a middle schooler who has never heard of it.

1. Explain, in simple terms, what meiosis does and why it exists (without using jargon they wouldn't know).
2. Use an analogy (shuffling cards, mixing ingredients, or one of your own) to explain crossing over or independent assortment.
3. Explain why this process is important for a species' long-term survival, not just for making babies look different from their parents.
4. Explain in 2-3 sentences what would happen to genetic diversity in a species if meiosis somehow always produced identical sex cells instead.$t10$,
  $r10$Meets expectations when: the explanation is genuinely simplified and accurate (not just jargon removed without real simplification); the analogy correctly maps onto the biological process; and the final reflection shows real understanding of diversity's importance to species survival.$r10$,
  20, 1
);

-- Evidence for Evolution ----------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evidence for Evolution' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 3:%')),
  'classwork', 'Evidence for Evolution Practice Set',
  $t11$Complete all 4 problems.

1. Name all 4 lines of evidence for evolution (fossil record, comparative anatomy, molecular biology, biogeography) and briefly describe each.
2. Explain the difference between a homologous structure and a vestigial structure, with the lesson's examples.
3. Using the whale flipper/human arm/bat wing example, explain why shared bone structure despite different function is strong evidence of common ancestry.
4. Explain why humans and chimpanzees sharing 98-99% of their DNA is considered molecular evidence for evolution.$t11$,
  $r11$Full credit requires all 4 evidence lines correctly named and described for problem 1; an accurate homologous-vs-vestigial distinction for problem 2; correct common-ancestry reasoning for problem 3; and accurate molecular-evidence reasoning for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evidence for Evolution' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 3:%')),
  'homework', 'Build a Multi-Evidence Case',
  $t12$Choose 2 of the 4 lines of evidence for evolution discussed in the lesson.

1. For each line of evidence, describe a specific example (real, researched if needed).
2. Explain exactly how each example supports the theory of evolution.
3. Explain why having 2 independent lines of evidence (rather than just 1) makes a stronger case.
4. Explain in 1-2 sentences what it would mean, scientifically, if the fossil record and molecular evidence had ever contradicted each other instead of consistently agreeing.$t12$,
  $r12$Meets expectations when: both chosen evidence lines have specific, accurate examples; the reasoning connecting each example to evolution is sound; and the final reflection shows real understanding of convergent evidence strengthening scientific conclusions.$r12$,
  20, 1
);

-- Speciation & Biodiversity --------------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Speciation & Biodiversity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 3:%')),
  'classwork', 'Speciation Practice Set',
  $t13$Complete all 4 problems.

1. Define speciation and reproductive isolation.
2. Explain the difference between allopatric (geographic) and sympatric speciation.
3. Using Darwin's finches, explain step-by-step how geographic isolation led to multiple distinct species.
4. Explain why high biodiversity makes ecosystems more resilient, using one specific reason from the lesson.$t13$,
  $r13$Full credit requires accurate definitions for problem 1; a correct allopatric-vs-sympatric distinction for problem 2; an accurate step-by-step finch explanation for problem 3; and sound biodiversity-resilience reasoning for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Speciation & Biodiversity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 3:%')),
  'homework', 'Design a Speciation Scenario',
  $t14$Invent a speciation scenario for a species of your choice.

1. Describe the starting single species and its environment.
2. Introduce a barrier (geographic or otherwise) that separates 2 populations.
3. Describe how each population might evolve differently over many generations due to their different environments.
4. Explain what would need to be true for the two populations to be considered fully separate species (hint: reproductive isolation), and explain in 1-2 sentences why biodiversity loss is considered irreversible on a human timescale.$t14$,
  $r14$Meets expectations when: the scenario includes a genuine isolating barrier and plausible divergent evolutionary pressures; the reproductive-isolation criterion is correctly explained; and the final reflection accurately explains why lost biodiversity (millions of years of evolution) cannot be quickly recovered.$r14$,
  20, 1
);

-- Ecosystem Dynamics & Population Growth --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Ecosystem Dynamics & Population Growth' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 4:%')),
  'classwork', 'Population Growth Practice Set',
  $t15$Complete all 4 problems.

1. Define exponential growth and logistic growth, and explain which is more realistic for most natural populations and why.
2. Define carrying capacity in your own words.
3. Define density-dependent and density-independent limiting factors, with one example of each.
4. Using the deer population example, explain step-by-step why exponential growth eventually slows into logistic growth.$t15$,
  $r15$Full credit requires accurate growth-model definitions and reasoning for problem 1; a correct carrying-capacity definition for problem 2; accurate limiting-factor definitions with valid examples for problem 3; and a correct step-by-step deer explanation for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Ecosystem Dynamics & Population Growth' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 4:%')),
  'homework', 'Model a Population''s Limits',
  $t16$Choose a real or invented species and a specific ecosystem.

1. Describe what would cause the population to grow exponentially at first (abundant resources, no predators, etc.).
2. Identify 2 density-dependent factors that would eventually slow this population's growth.
3. Identify 1 density-independent factor that could affect this population regardless of its size.
4. Sketch or describe the shape of this population's growth curve over time (J-shaped then S-shaped, or another pattern), and explain why it takes that shape.$t16$,
  $r16$Meets expectations when: the exponential-growth setup is plausible; 2 genuine density-dependent factors and 1 density-independent factor are correctly identified; and the growth curve description accurately reflects the logistic pattern with sound reasoning.$r16$,
  20, 1
);

-- Human Impact on Ecosystems & Conservation Biology ----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Human Impact on Ecosystems & Conservation Biology' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 4:%')),
  'classwork', 'Human Impact & Conservation Practice Set',
  $t17$Complete all 4 problems.

1. Name all 4 major human impacts on ecosystems (habitat destruction, pollution, invasive species, climate change), with a brief description of each.
2. Name all 4 conservation strategies (protected areas, reintroduction, sustainable management, habitat corridors), with a brief description of each.
3. Using the Yellowstone wolf reintroduction example, explain what a "trophic cascade" is, step-by-step.
4. Explain why habitat destruction is described as "the leading cause of biodiversity loss globally."$t17$,
  $r17$Full credit requires all 4 impacts and all 4 strategies correctly named and described for problems 1-2; an accurate step-by-step trophic cascade explanation for problem 3; and sound reasoning for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Human Impact on Ecosystems & Conservation Biology' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-biology') AND title LIKE 'Unit 4:%')),
  'homework', 'Design a Conservation Intervention',
  $t18$Choose one major human impact on ecosystems and one conservation strategy that could address it.

1. Describe the specific human impact you chose and how it affects a specific ecosystem (real or invented).
2. Describe the conservation strategy you chose and how it would specifically address that impact.
3. Using the Yellowstone example as a model, predict at least 2 ripple effects your intervention might have across the ecosystem.
4. Explain in 2-3 sentences why conservation biologists need to think in terms of whole ecosystems rather than just protecting one species at a time.$t18$,
  $r18$Meets expectations when: the impact and strategy are clearly and specifically connected; at least 2 plausible ripple effects are predicted, modeled on real ecological cascade logic; and the final reflection shows genuine understanding of ecosystem-level thinking in conservation.$r18$,
  20, 1
);
