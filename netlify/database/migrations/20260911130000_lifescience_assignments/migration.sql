-- Weekly-topic Classwork/Homework rollout for Life Science (Venture Studio,
-- Grades 6-7). Adds a curated video and 2 assignments (Classwork + Homework)
-- to each of the course's 9 'lesson'-type entries. First course in the
-- "Science courses" batch (task #162).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=hGSNHbDguE0',
    video_caption = 'Khan Academy: Intro to Life Processes'
WHERE title = 'What Is Life? Characteristics of Living Things'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=zk3vlhz1b6k',
    video_caption = 'Khan Academy: Cell Theory - The Cellular Basis of Life'
WHERE title = 'Cell Theory & the Discovery of Cells'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=XyFgP3Hze4Q',
    video_caption = 'Khan Academy: Acquired vs. Inherited Traits'
WHERE title = 'Traits: Inherited vs. Acquired'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=taH5kyoQG0Q',
    video_caption = 'Khan Academy: Chromosomes and Genes'
WHERE title = 'DNA, Genes & Chromosomes: The Instruction Manual for Life'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=VH1lAfZL_fU',
    video_caption = 'Khan Academy: Worked Examples - Punnett Squares'
WHERE title = 'Punnett Squares & Predicting Traits'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=HRyjMbuMDn0',
    video_caption = 'Khan Academy: Food Chains and Food Webs'
WHERE title = 'Energy Flow: Food Chains & Food Webs'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=rwCqIYc6FLc',
    video_caption = 'Khan Academy: Biotic and Abiotic Factors'
WHERE title = 'Biotic & Abiotic Factors in Ecosystems'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=g2bV8mT7ryo',
    video_caption = 'Khan Academy: Adaptations'
WHERE title = 'Adaptations: How Organisms Survive'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Q-aGAX27SIo',
    video_caption = 'Khan Academy: Evidence for Evolution'
WHERE title = 'Natural Selection & Evidence of Evolution'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 4:%');

-- What Is Life? Characteristics of Living Things -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='What Is Life? Characteristics of Living Things' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 1:%')),
  'classwork', 'Living or Non-Living? Practice Set',
  $t1$Complete all 4 problems using the seven characteristics of life (made of cells, grows, reproduces, responds to stimuli, uses energy, maintains homeostasis, adapts).

1. Test a mushroom against all seven characteristics. Which does it clearly meet?
2. Test fire against all seven characteristics. Explain why it seems "alive" at first glance but isn't classified as living.
3. Test a virus against all seven characteristics, and explain why scientists disagree about whether it's alive.
4. Choose one everyday object you're unsure about, and walk through the same seven-point test to reach a conclusion.$t1$,
  $r1$Full credit requires an accurate characteristic-by-characteristic test for problems 1-3, with correct reasoning about the mushroom, fire, and virus edge cases; and a genuine, systematic test applied to a new object in problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='What Is Life? Characteristics of Living Things' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 1:%')),
  'homework', 'Start Your Field Notebook',
  $t2$Begin your Field Notebook for the year (physical or digital).

1. Go outside (a yard, park, or even a windowsill) and observe one living thing for 5 minutes. Record at least 3 direct observations (not guesses) about what it's doing.
2. For each observation, identify which of the 7 characteristics of life it demonstrates.
3. Draw or describe the organism in enough detail that someone else could identify it.
4. Write 2-3 sentences on why field notebooks matter to real scientists -- what do direct, dated observations let a scientist do later that memory alone wouldn't?$t2$,
  $r2$Meets expectations when: observations are specific and directly recorded (not vague or invented); each is correctly matched to a characteristic of life; the description is detailed enough to be useful; and the reflection shows real understanding of why field data matters.$r2$,
  20, 1
);

-- Cell Theory & the Discovery of Cells ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Cell Theory & the Discovery of Cells' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 1:%')),
  'classwork', 'Cell Theory Practice Set',
  $t3$Complete all 4 problems.

1. State all three parts of the Cell Theory in your own words.
2. Explain what Robert Hooke and Anton van Leeuwenhoek each contributed, and why a better microscope mattered so much to the discovery.
3. Compare a unicellular organism (like an amoeba) and a multicellular organism (like a human) -- what must the single cell do that a human's specialized cells don't have to do alone?
4. Explain one advantage and one disadvantage of being multicellular instead of unicellular.$t3$,
  $r3$Full credit requires an accurate statement of all 3 theory parts for problem 1; correct historical attribution for problem 2; an accurate unicellular-vs-multicellular comparison for problem 3; and a genuine advantage/disadvantage pair for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Cell Theory & the Discovery of Cells' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 1:%')),
  'homework', 'Before Cell Theory: A Historical Argument',
  $t4$Before the 1800s, many scientists believed in "spontaneous generation" -- the idea that life could arise from non-living matter (like maggots appearing from rotting meat, with no prior living source).

1. Explain why spontaneous generation seemed like a reasonable idea before microscopes were common.
2. Explain how the discovery that "all cells come from pre-existing cells" directly challenged spontaneous generation.
3. Describe an experiment (real or one you design) that could test whether life can arise from non-living matter.
4. Explain in 2-3 sentences why this shift in thinking counts as a real scientific revolution, not just a minor correction.$t4$,
  $r4$Meets expectations when: the historical reasoning is accurate and specific; the connection to cell theory is correctly explained; the proposed experiment is genuinely testable; and the reflection shows real understanding of the significance of the paradigm shift.$r4$,
  20, 1
);

-- Traits: Inherited vs. Acquired ----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Traits: Inherited vs. Acquired' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Inherited vs. Acquired Practice Set',
  $t5$Using the "could this be passed to my children just because I have it?" test, complete all 4 problems.

1. Sort these into inherited or acquired, with reasoning for each: natural hair texture, a tattoo, blood type, a foreign language you learned, attached earlobes.
2. Explain why a bodybuilder's muscles are acquired, not inherited, even though their child might also become muscular later.
3. Describe a scenario where inherited and acquired traits could look similar on the surface but have completely different causes.
4. Explain why understanding this distinction matters for something like selective breeding in agriculture.$t5$,
  $r5$Full credit requires all 5 traits correctly sorted with sound reasoning for problem 1; an accurate bodybuilder explanation for problem 2; a genuine, plausible look-alike scenario for problem 3; and a real-world-grounded explanation for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Traits: Inherited vs. Acquired' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%')),
  'homework', 'My Trait Inventory',
  $t6$List 5 traits about yourself: a mix of physical characteristics, skills, and scars or habits.

1. Sort each of your 5 traits into "inherited" or "acquired."
2. For your two trickiest ones to classify, explain your reasoning in detail.
3. Interview a family member (or recall what you know) about one trait you may have inherited from them specifically.
4. Explain in 2-3 sentences why some traits (like height) can be influenced by BOTH genetics and environment, rather than being purely one or the other.$t6$,
  $r6$Meets expectations when: all 5 traits are sorted with genuine reasoning; the two trickiest cases get real, thoughtful analysis; the family trait example is specific; and the final reflection correctly explains gene-environment interaction.$r6$,
  20, 1
);

-- DNA, Genes & Chromosomes: The Instruction Manual for Life ---------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='DNA, Genes & Chromosomes: The Instruction Manual for Life' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'DNA, Genes & Chromosomes Practice Set',
  $t7$Complete all 4 problems.

1. Explain the relationship between DNA, a chromosome, and a gene, using the cookbook analogy or one of your own.
2. State how many chromosomes humans have, and where the two sets come from.
3. Explain the difference between a dominant and a recessive allele, using capital/lowercase letter notation.
4. Research (or recall) one human trait controlled by a single dominant/recessive gene pair, and describe it.$t7$,
  $r7$Full credit requires an accurate DNA/chromosome/gene relationship for problem 1; correct chromosome facts for problem 2; an accurate dominant/recessive explanation for problem 3; and a real, correctly described trait example for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='DNA, Genes & Chromosomes: The Instruction Manual for Life' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Design Your Own Analogy',
  $t8$The cookbook analogy compares DNA to a cookbook, chromosomes to volumes, and genes to recipes.

1. Design your own original analogy for DNA, chromosomes, and genes (not the cookbook one) -- for example a library, a computer's file system, or a sports team.
2. Explain clearly what each part of your analogy represents (which part is DNA, which is a chromosome, which is a gene).
3. Identify one place where your analogy breaks down or doesn't perfectly match the biology, and explain why.
4. Explain in 1-2 sentences why scientists use analogies like these even though they're never perfect.$t8$,
  $r8$Meets expectations when: the analogy is original and its three parts map accurately onto DNA/chromosome/gene; a genuine limitation of the analogy is honestly identified; and the final reflection shows real understanding of why imperfect analogies are still useful teaching tools.$r8$,
  20, 1
);

-- Punnett Squares & Predicting Traits ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Punnett Squares & Predicting Traits' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Punnett Square Practice Set',
  $t9$In pea plants, round seeds (R) are dominant over wrinkled (r). Complete all 4 problems.

1. Build a Punnett square crossing two heterozygous plants (Rr x Rr). List the resulting genotypes and their ratio.
2. State the phenotype ratio that results, and explain why it's different from the genotype ratio.
3. Build a Punnett square crossing a homozygous round plant (RR) with a wrinkled plant (rr). State the resulting genotype and phenotype for all offspring.
4. Explain why the offspring in problem 3 are "not purebred," even though 100% of them show the round phenotype.$t9$,
  $r9$Full credit requires a correctly built and read Punnett square with accurate ratios for problems 1-2; a correctly built square for problem 3; and an accurate genotype-vs-phenotype distinction explained in problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Punnett Squares & Predicting Traits' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Invent a Genetic Cross',
  $t10$Choose a trait of your choice (real or invented, like fur color in a rabbit).

1. Define the dominant and recessive alleles for your trait, using a capital and lowercase letter.
2. Build a Punnett square for a cross between two heterozygous (Aa x Aa) parents.
3. State the resulting genotype ratio and phenotype ratio.
4. Explain in 2-3 sentences how a Punnett square is a prediction of probability, not a guarantee -- what would it mean if an actual litter of 4 offspring didn't match the predicted ratio exactly?$t10$,
  $r10$Meets expectations when: the alleles are clearly defined; the Punnett square is built and read correctly; the ratios are accurate; and the final reflection correctly explains probability vs. guaranteed outcome.$r10$,
  20, 1
);

-- Energy Flow: Food Chains & Food Webs -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Energy Flow: Food Chains & Food Webs' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 3:%')),
  'classwork', 'Food Chains & the 10% Rule Practice Set',
  $t11$Complete all 4 problems.

1. Build a 4-step food chain (producer to tertiary consumer) for an ecosystem of your choice.
2. Using the 10% rule, if your producer level has 8,000 units of energy, calculate the energy available at each of the next 3 levels.
3. Explain why food chains rarely have more than 4-5 levels, using your calculation from problem 2 as evidence.
4. Explain the difference between a food chain and a food web, and why a food web is a more realistic model of a real ecosystem.$t11$,
  $r11$Full credit requires a correctly structured food chain for problem 1; correct 10%-rule math for problem 2; a well-reasoned explanation using that math for problem 3; and an accurate chain-vs-web distinction for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Energy Flow: Food Chains & Food Webs' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 3:%')),
  'homework', 'Build a Local Food Web',
  $t12$Build a food web (at least 5 organisms, with arrows showing energy flow) for an ecosystem near you -- a backyard, park, or local pond.

1. Draw or list your food web with arrows showing the direction energy flows.
2. Identify the producer(s), at least one primary consumer, one secondary consumer, and a decomposer.
3. Explain what would happen to the rest of the web if the decomposer disappeared entirely.
4. Explain in 1-2 sentences why real ecosystems are almost always better represented by webs than by simple chains.$t12$,
  $r12$Meets expectations when: the food web has at least 5 organisms with correctly directed energy-flow arrows; all required roles are correctly identified; the decomposer-loss scenario is reasoned through accurately; and the final reflection shows real understanding of web vs. chain realism.$r12$,
  20, 1
);

-- Biotic & Abiotic Factors in Ecosystems ----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Biotic & Abiotic Factors in Ecosystems' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 3:%')),
  'classwork', 'Biotic, Abiotic & Carrying Capacity Practice Set',
  $t13$Complete all 4 problems.

1. Choose an ecosystem (real or invented) and list 4 biotic factors and 4 abiotic factors present in it.
2. Explain, using a specific example, how a change in one abiotic factor could ripple through and affect the biotic factors in that ecosystem.
3. Define carrying capacity in your own words.
4. Using the pond example (200-fish carrying capacity, 100 fish added), explain what happens to the population over time and why.$t13$,
  $r13$Full credit requires 4 genuine biotic and 4 genuine abiotic factors for problem 1; an accurate cause-and-effect chain for problem 2; a correct carrying-capacity definition for problem 3; and an accurate population-dynamics explanation for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Biotic & Abiotic Factors in Ecosystems' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 3:%')),
  'homework', 'Field Notebook: Biotic/Abiotic Survey',
  $t14$Add to your Field Notebook: go outside (or use a location you know well) and conduct a biotic/abiotic survey.

1. Record at least 5 biotic factors and 5 abiotic factors you directly observe.
2. Estimate the carrying capacity of one species you observe (or research), and explain what limits it (food, space, water, shelter).
3. Predict what would happen to that species' population if one specific abiotic factor changed significantly (more rain, less sunlight, higher temperature).
4. Explain in 2-3 sentences why field scientists study abiotic factors even though their main interest is usually the living organisms.$t14$,
  $r14$Meets expectations when: observations are specific and genuinely recorded; the carrying-capacity estimate has real reasoning behind it; the prediction is logical and grounded in the identified limiting factor; and the reflection shows real understanding of why abiotic context matters.$r14$,
  20, 1
);

-- Adaptations: How Organisms Survive ---------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Adaptations: How Organisms Survive' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 4:%')),
  'classwork', 'Three Types of Adaptations Practice Set',
  $t15$Complete all 4 problems.

1. Define structural, behavioral, and physiological adaptations, with one example of each not already used in the lesson.
2. Explain why a chameleon's color-changing ability and a monarch butterfly's migration are different TYPES of adaptations.
3. Explain why thick white fur helps a polar bear in the Arctic but would harm a bear in the desert -- what does this reveal about how adaptations work?
4. Choose an organism and identify one structural, one behavioral, and one physiological adaptation it has (research if needed).$t15$,
  $r15$Full credit requires 3 correctly defined adaptation types with valid new examples for problem 1; an accurate type-distinction explanation for problem 2; a correct environment-specificity explanation for problem 3; and 3 accurate, well-researched adaptations for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Adaptations: How Organisms Survive' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 4:%')),
  'homework', 'Design an Organism for a New Environment',
  $t16$Invent an organism and place it in a specific, challenging environment (deep ocean, desert, arctic tundra, high mountain).

1. Describe your organism and its environment.
2. Design one structural adaptation, explaining exactly how it helps your organism survive there.
3. Design one behavioral adaptation, explaining exactly how it helps.
4. Design one physiological adaptation, explaining exactly how it helps.
5. Explain in 1-2 sentences why NONE of your organism's adaptations were "decided" by the organism -- how would they have actually arisen over generations?$t16$,
  $r16$Meets expectations when: all 3 adaptations are clearly connected to specific survival challenges in the chosen environment; each adaptation type is correctly categorized; and the final reflection accurately explains adaptations arising through generational survival, not conscious choice.$r16$,
  20, 1
);

-- Natural Selection & Evidence of Evolution --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Natural Selection & Evidence of Evolution' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 4:%')),
  'classwork', 'Natural Selection & Evidence Practice Set',
  $t17$Complete all 4 problems.

1. List the 4 requirements for natural selection (variation, inheritance, selection, time) and define each in your own words.
2. Using the peppered moth example, explain how all 4 requirements were present in that scenario.
3. Name 2 independent lines of evidence for evolution (fossil record, comparative anatomy, DNA evidence) and explain what each one shows.
4. Explain why scientists find MULTIPLE independent lines of evidence more convincing than just one.$t17$,
  $r17$Full credit requires 4 correctly defined requirements for problem 1; an accurate application to the peppered moth case for problem 2; 2 correctly explained evidence types for problem 3; and sound reasoning about convergent evidence for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Natural Selection & Evidence of Evolution' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-life-science') AND title LIKE 'Unit 4:%')),
  'homework', 'Design Your Own Natural Selection Scenario',
  $t18$Invent a natural selection scenario, modeled after the peppered moth example (a population, an environmental change, and a trait that becomes more or less common as a result).

1. Describe your population and the trait that varies within it.
2. Describe the environmental change that occurs.
3. Explain step-by-step how all 4 requirements (variation, inheritance, selection, time) apply to your scenario.
4. Explain in 2-3 sentences why natural selection acts on populations over generations, not on individual organisms during their own lifetime.$t18$,
  $r18$Meets expectations when: the scenario includes genuine variation and a plausible environmental change; all 4 requirements are correctly and specifically applied; and the final reflection accurately distinguishes population-level change from individual-level change.$r18$,
  20, 1
);
