-- Biology (Grades 9-10) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the established Venture Studio template: 4 units, 15 lessons, 2 small projects, 2 major projects
-- (L8 and full-semester capstone L15), aligned to the NC Standard Course of Study (Biology).

UPDATE courses SET status = 'published' WHERE slug = 'venture-biology';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-biology'), 'Unit 1: Cell Biology & Biochemistry', 0),
((SELECT id FROM courses WHERE slug='venture-biology'), 'Unit 2: Genetics & Molecular Biology', 1),
((SELECT id FROM courses WHERE slug='venture-biology'), 'Unit 3: Evolution & Biodiversity', 2),
((SELECT id FROM courses WHERE slug='venture-biology'), 'Unit 4: Ecology & Human Impact', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Biomolecules: The Chemistry of Life', 1, 'lesson',
  $lesson$## The Four Biomolecules That Build Life

All living things are built from four major categories of organic molecules, each with a distinct structure and job.

### The Four Biomolecules

- **Carbohydrates** — sugars and starches; primary energy source, built from carbon, hydrogen, and oxygen (glucose, starch, cellulose).
- **Lipids** — fats and oils; long-term energy storage, cell membrane structure, insulation (triglycerides, phospholipids, steroids).
- **Proteins** — built from amino acids; do most of the actual "work" in cells (enzymes, structural support, transport, signaling).
- **Nucleic acids** — DNA and RNA; store and transmit genetic information.

### Structure Determines Function

A recurring theme in biology: a molecule's specific 3D shape determines exactly what it can do. An enzyme's shape allows it to fit a specific target molecule, the way a key fits a specific lock — change the shape (through heat, pH, or mutation) and the enzyme often stops working entirely.

### Worked Example

Digesting a starchy food like bread involves the enzyme amylase, whose shape is precisely built to break the bonds between glucose units in starch (a carbohydrate). If your body's amylase were denatured — its shape destroyed by, say, extreme heat — it would no longer fit starch molecules correctly and digestion would stall, no matter how much amylase was present.

### Your Turn

For each of the four biomolecule categories, name one specific example and its function in a living organism. Then explain, in your own words, why an enzyme's specific shape matters so much to its function.$lesson$,
  '9.L.1.1', 'Describe the structure and function of the four major biomolecules: carbohydrates, lipids, proteins, and nucleic acids.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Cell Structure: Organelles & Their Functions', 2, 'lesson',
  $lesson$## Inside the Cell: A Tour of the Organelles

Cells are packed with specialized structures called **organelles**, each with a specific job — much like organs inside a body.

### Key Organelles

- **Nucleus** — stores DNA, controls the cell's activities.
- **Mitochondria** — the "powerhouse of the cell," converts glucose and oxygen into usable energy (ATP) through cellular respiration.
- **Ribosomes** — build proteins from amino acids, following instructions from the nucleus.
- **Endoplasmic reticulum (ER)** — rough ER (with ribosomes) helps process proteins; smooth ER builds lipids.
- **Golgi apparatus** — packages and ships proteins/lipids to their destination, like a cellular post office.
- **Chloroplasts** (plants only) — convert sunlight into glucose through photosynthesis.
- **Cell membrane** — controls what enters and exits the cell (selectively permeable).

### The Assembly-Line Analogy

Think of a cell like a factory: the nucleus is the head office sending instructions, ribosomes are workers building the product (proteins), the ER and Golgi apparatus are the processing and shipping departments, and mitochondria are the power plant keeping the whole factory running.

### Worked Example

A muscle cell, which needs enormous amounts of energy to contract repeatedly, contains far more mitochondria than a typical skin cell — a clear example of structure matching function at the cellular level.

### Your Turn

Using the factory analogy (or one of your own), explain the role of at least 4 organelles in a cell, and predict which type of human cell (muscle, nerve, skin, etc.) might have unusually high numbers of a specific organelle, and why.$lesson$,
  '9.L.1.2', 'Explain the structure and function of major cell organelles and relate structure to cellular needs.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Small Project: Cellular Respiration & Photosynthesis Investigation', 3, 'practice',
  $lesson$## Small Project: Cellular Respiration & Photosynthesis Investigation

These two processes are mirror images of each other, and together they power nearly all life on Earth.

### Background

- **Photosynthesis** (in plants/algae): 6CO2 + 6H2O + light energy → C6H12O6 (glucose) + 6O2. Happens in chloroplasts.
- **Cellular respiration** (in all living things): C6H12O6 + 6O2 → 6CO2 + 6H2O + energy (ATP). Happens in mitochondria.

Notice that the products of one process are the reactants of the other — plants make the oxygen and glucose that respiration (in plants, animals, and other organisms) then consumes.

### Your Task

1. **Diagram or describe** both processes side by side, showing how the outputs of one become the inputs of the other.
2. **Explain**: do plants only photosynthesize, or do they also respire? (Research or reason through this — hint: plants need energy too, even at night.)
3. **Investigate**: if possible, place a water plant (like elodea) in sunlight and observe bubble production (oxygen), or research this classic experiment. Describe what you would expect to see in bright light vs. darkness, and why.
4. **Connect** these two processes to the broader carbon cycle on Earth.

### Deliverable

Submit your side-by-side diagram/description, your explanation of plant respiration, your investigation results or predictions, and your carbon cycle connection.$lesson$,
  '9.L.1.3', 'Compare photosynthesis and cellular respiration as complementary energy-transfer processes.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Unit 1 Quiz: Cell Biology & Biochemistry', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of biomolecules, cell organelles, and photosynthesis/cellular respiration before we move into genetics and molecular biology.$lesson$,
  '9.L.1.1–3', 'Assesses biomolecules, cell organelle structure/function, and photosynthesis/respiration concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'DNA Replication & Protein Synthesis', 5, 'lesson',
  $lesson$## From DNA to Protein: The Central Dogma of Biology

Cells constantly copy their DNA and use it to build proteins — two processes fundamental to all life.

### DNA Replication

Before a cell divides, it must copy its entire DNA so each new cell gets a full set. DNA's double helix unwinds, and each strand serves as a template for building a new complementary strand — resulting in two identical DNA molecules, each with one original and one new strand ("semi-conservative" replication).

### The Central Dogma: DNA → RNA → Protein

1. **Transcription**: DNA's code is copied into messenger RNA (mRNA) in the nucleus.
2. **Translation**: mRNA travels to a ribosome, where it's "read" in three-letter codons, each specifying a particular amino acid, building a protein chain.

### Worked Example

The DNA sequence determines the mRNA sequence, which determines the amino acid sequence, which determines the protein's shape and function. A single change in the DNA sequence (a mutation) can change one amino acid in the resulting protein — sometimes with no effect, sometimes with a dramatic effect (like in sickle cell disease, where a single amino acid change alters the shape of hemoglobin).

### Your Turn

Explain, in order, the path of information from DNA to a finished protein (naming both major steps), and describe why a single small change in DNA could potentially have a large effect on an organism.$lesson$,
  '9.L.2.1', 'Explain the processes of DNA replication, transcription, and translation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Mutations & Genetic Variation', 6, 'lesson',
  $lesson$## Mutations: The Raw Material of Evolution

A **mutation** is a change in an organism's DNA sequence. Mutations are the ultimate source of all genetic variation — without them, evolution would have no new traits to work with.

### Types of Mutations

- **Point mutations** — a single DNA "letter" is changed, inserted, or deleted, potentially changing one amino acid (or shifting the entire reading frame if inserted/deleted).
- **Chromosomal mutations** — larger-scale changes affecting whole sections or numbers of chromosomes (duplications, deletions, translocations).

### Effects of Mutations

Most mutations are neutral (no noticeable effect), some are harmful (disrupting protein function), and a rare few are beneficial (improving an organism's fitness in its environment). Beneficial mutations are exactly what natural selection acts on over generations.

### Causes of Mutations

Mutations can happen spontaneously during DNA replication (copying errors) or be caused by **mutagens** — environmental factors like UV radiation, certain chemicals, and radiation that damage DNA.

### Worked Example

A single point mutation in a gene controlling fur color could, in rare cases, produce a slightly different shade of fur. If that shade happens to provide better camouflage in a changed environment, that mutation could become more common over generations through natural selection — exactly the raw material evolution requires.

### Your Turn

Explain the difference between a point mutation and a chromosomal mutation, and describe how a rare beneficial mutation could spread through a population over many generations.$lesson$,
  '9.L.2.2', 'Explain the types, causes, and effects of mutations and their role in genetic variation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Meiosis & Genetic Diversity', 7, 'lesson',
  $lesson$## Meiosis: Making Sex Cells (and Diversity)

**Meiosis** is the specialized type of cell division that produces sex cells (sperm and egg cells in animals) — and it's a major source of genetic diversity in sexually reproducing species.

### Meiosis vs. Mitosis

- **Mitosis** produces two identical body cells (used for growth and repair).
- **Meiosis** produces four genetically unique sex cells, each with **half** the number of chromosomes of the original cell — so when a sperm and egg combine at fertilization, the full chromosome number is restored.

### Two Sources of Genetic Diversity in Meiosis

- **Crossing over** — during meiosis, matching chromosomes exchange sections of DNA, creating new combinations of alleles.
- **Independent assortment** — chromosome pairs are distributed randomly into sex cells, creating an enormous number of possible combinations.

### Worked Example

Human cells have 23 pairs of chromosomes. Because of independent assortment alone, a single person can produce over 8 million (2^23) genetically distinct sex cells — before crossing over even adds more variation. This is a major reason siblings (aside from identical twins) are never genetically identical.

### Your Turn

Explain why meiosis produces genetically diverse sex cells while mitosis produces identical cells, and describe how both crossing over and independent assortment contribute to the genetic diversity of offspring.$lesson$,
  '9.L.2.3', 'Compare meiosis and mitosis and explain how meiosis produces genetic diversity.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'MAJOR PROJECT 1: Genetic Disorder Case Study', 8, 'practice',
  $lesson$## Major Project: Genetic Disorder Case Study

Time to research a real genetic disorder and connect it to the molecular biology concepts from this unit.

### Your Task

1. **Choose one real genetic disorder** (examples: sickle cell disease, cystic fibrosis, Down syndrome, Huntington's disease, color blindness — or another you're curious about).
2. **Describe the genetic cause**: is it a point mutation, a chromosomal mutation, or another genetic mechanism? Which gene or chromosome is involved?
3. **Explain the molecular effect**: how does this genetic change affect the resulting protein or chromosome number, and how does that lead to the disorder's symptoms?
4. **Describe inheritance pattern**: is it dominant, recessive, sex-linked, or a chromosomal abnormality? Use a Punnett square if applicable to show how it could be inherited.
5. **Reflection** (3-5 sentences): what does this case study teach you about the connection between DNA, proteins, and observable traits/health?

### Deliverable

Submit your case study covering all five sections above, citing your research sources if used.$lesson$,
  '9.L.2.1–3', 'Applies DNA replication, mutation, and inheritance concepts to research a real genetic disorder.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Evidence for Evolution', 9, 'lesson',
  $lesson$## Evolution: The Evidence Trail

Evolution — the change in a population's genetic makeup over time — is supported by multiple independent lines of scientific evidence.

### The Major Lines of Evidence

- **Fossil record** — shows gradual change in species over deep time, and transitional forms connecting major groups.
- **Comparative anatomy** — **homologous structures** (similar bone structure but different function, like a human arm, whale flipper, and bat wing) suggest common ancestry; **vestigial structures** (reduced, seemingly functionless remnants, like the human appendix) suggest evolutionary leftovers.
- **Molecular biology** — species that are more closely related share more similar DNA and protein sequences; humans and chimpanzees share roughly 98-99% of their DNA.
- **Biogeography** — the geographic distribution of species (like unique species found only on isolated islands) reflects evolutionary history and migration patterns.

### Worked Example

A whale's flipper contains the same basic bone arrangement (humerus, radius, ulna, and digit bones) as a human arm and a bat's wing — despite being used for swimming, grasping, and flying respectively. This shared underlying structure, despite different functions, is strong evidence all three evolved from a common ancestor.

### Your Turn

Choose two of the four lines of evidence discussed and explain, with a specific example for each, how that evidence supports the theory of evolution.$lesson$,
  '9.L.3.1', 'Evaluate multiple lines of evidence supporting the theory of evolution.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Speciation & Biodiversity', 10, 'lesson',
  $lesson$## How New Species Form: Speciation

**Speciation** is the process by which one species splits into two or more distinct species over time — the mechanism that has produced the enormous biodiversity on Earth today.

### How Speciation Happens

Speciation generally requires **reproductive isolation** — some barrier that prevents two populations from interbreeding, allowing them to evolve independently until they can no longer produce fertile offspring even if reunited.

- **Geographic isolation (allopatric speciation)** — a physical barrier (mountain range, river, ocean) separates populations, which then evolve independently.
- **Other isolating mechanisms (sympatric speciation)** — populations diverge without physical separation, through behavioral differences, differences in breeding time, or other factors.

### Worked Example

Darwin's finches on the Galápagos Islands are one of the most famous speciation examples: a single ancestral finch species arrived on the islands, and as populations spread to different islands with different food sources, geographic isolation allowed each population to evolve distinct beak shapes suited to their specific food source — eventually becoming multiple distinct species.

### Biodiversity's Importance

High biodiversity makes ecosystems more resilient to disturbance and disease, provides more genetic resources for medicine and agriculture, and reflects millions of years of evolutionary history that, once lost, cannot be recovered.

### Your Turn

Using Darwin's finches or another real example, explain how geographic isolation can lead to speciation. Then explain, in your own words, why scientists consider biodiversity loss to be a serious concern.$lesson$,
  '9.L.3.2', 'Explain the process of speciation and the importance of biodiversity.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Small Project: Classification & Cladogram Building', 11, 'practice',
  $lesson$## Small Project: Classification & Cladogram Building

Biologists classify organisms based on shared characteristics that reflect evolutionary relationships, often displaying these relationships in a diagram called a **cladogram**.

### Background

Modern classification uses a hierarchy: Domain, Kingdom, Phylum, Class, Order, Family, Genus, Species (a common mnemonic: "Dear King Philip Came Over For Good Soup"). A **cladogram** is a branching diagram showing hypothesized evolutionary relationships, where each branch point represents a shared common ancestor and a shared derived trait.

### Your Task

1. **Choose 4 organisms** you're familiar with (real animals, plants, or a mix) that have varying degrees of relatedness (e.g., dog, wolf, cat, shark).
2. **Identify shared traits** among them (e.g., fur, backbone, live birth, warm-bloodedness) and traits that differ.
3. **Build a simple cladogram** (described in words if you can't draw one) showing which organisms are most closely related based on shared traits, and which traits define each branch point.
4. **Explain** your reasoning: why did you group the organisms the way you did?

### Deliverable

Submit your 4 organisms, the traits you compared, your cladogram (as a diagram or clear written description), and your reasoning.$lesson$,
  '9.L.3.1–2', 'Applies evidence-based classification to construct and interpret a cladogram of related organisms.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Unit 3 Quiz: Evolution & Biodiversity', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of evidence for evolution, speciation, and biodiversity before we move into ecology and human impact.$lesson$,
  '9.L.3.1–2', 'Assesses evidence for evolution, speciation mechanisms, and biodiversity concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Ecosystem Dynamics & Population Growth', 13, 'lesson',
  $lesson$## Populations in Motion: Growth, Limits & Balance

Populations of organisms don't grow forever — ecosystems impose real limits, and understanding population dynamics helps predict and manage ecological change.

### Population Growth Models

- **Exponential growth** — a population grows faster and faster over time when resources are unlimited (J-shaped curve) — rare in nature except briefly, like bacteria in a fresh nutrient source.
- **Logistic growth** — growth slows as a population approaches the environment's **carrying capacity** (S-shaped curve) — the more realistic model for most natural populations, since resources are always eventually limited.

### Limiting Factors

- **Density-dependent factors** — their effect increases as population density increases (competition for food, disease spread, predation).
- **Density-independent factors** — affect a population regardless of its size (natural disasters, extreme weather events).

### Worked Example

A deer population introduced to a new forest with abundant food might grow exponentially at first. But as the population grows, food becomes scarcer, competition increases, and disease spreads more easily in the denser population — density-dependent factors that slow growth until the population stabilizes near the forest's carrying capacity.

### Your Turn

Explain the difference between exponential and logistic population growth, and give one example each of a density-dependent and a density-independent limiting factor, explaining how each would affect a population.$lesson$,
  '9.L.4.1', 'Analyze population growth models and limiting factors affecting ecosystem dynamics.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'Human Impact on Ecosystems & Conservation Biology', 14, 'lesson',
  $lesson$## Humans & Ecosystems: Impact and Response

Human activity has become one of the most significant forces shaping ecosystems worldwide — and conservation biology has developed strategies to respond.

### Major Human Impacts

- **Habitat destruction** — from urban development, agriculture, and deforestation — the leading cause of biodiversity loss globally.
- **Pollution** — chemical, plastic, air, and water pollution disrupt ecosystems at every level of the food web.
- **Invasive species** — species introduced (intentionally or accidentally) to a new ecosystem, often outcompeting native species that have no natural defenses against them.
- **Climate change** — shifting temperature and precipitation patterns are altering habitats faster than many species can adapt or migrate.

### Conservation Strategies

- **Protected areas** (national parks, marine reserves) preserve habitat.
- **Species reintroduction programs** (like wolves in Yellowstone) restore ecological balance.
- **Sustainable resource management** balances human needs with long-term ecosystem health.
- **Habitat corridors** connect fragmented habitats, allowing species to migrate and maintain genetic diversity.

### Worked Example

The reintroduction of wolves to Yellowstone National Park in 1995 triggered a well-documented "trophic cascade": wolves reduced overgrazing elk populations, which allowed vegetation to recover, which stabilized riverbanks and even changed river paths — a single conservation action rippling through an entire ecosystem.

### Your Turn

Choose one major human impact on ecosystems and one conservation strategy that could address it, and explain, using the Yellowstone example or one of your own, how a single intervention can have ecosystem-wide effects.$lesson$,
  '9.L.4.2', 'Evaluate human impacts on ecosystems and conservation strategies used to address them.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology')),
  'MAJOR PROJECT 2 CAPSTONE: Ecosystem Restoration Proposal', 15, 'practice',
  $lesson$## Capstone Project: Ecosystem Restoration Proposal

For your final Biology project, you'll act as a conservation biologist proposing a real or realistic ecosystem restoration plan, drawing on everything from this semester.

### Your Task

1. **Choose a real or realistic damaged ecosystem** (a local waterway, a deforested area, a coral reef, a prairie converted to farmland, or one you research).
2. **Diagnose the problem**: describe what human impact(s) damaged this ecosystem, and connect it to specific ecology concepts (population dynamics, limiting factors, biodiversity loss).
3. **Connect to biology**: describe how cellular, genetic, or evolutionary concepts from this semester are relevant (e.g., genetic diversity for a reintroduced species' long-term survival, evolutionary adaptation to a changing environment).
4. **Propose a restoration plan**: at least 3 specific, realistic action steps (drawing on real conservation strategies), and predict how the ecosystem might respond over time if your plan succeeds.
5. **Reflection** (4-6 sentences): what did this project teach you about the connections between cell biology, genetics, evolution, and ecology across this entire semester?

### Deliverable

Submit your full proposal covering all five sections above.$lesson$,
  '9.L.1–4', 'Synthesizes cell biology, genetics, evolution, and ecology concepts into an ecosystem restoration proposal.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Biomolecules: The Chemistry of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Which biomolecule serves as the primary long-term energy storage in organisms?', '["Carbohydrates", "Lipids", "Proteins", "Nucleic acids"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Biomolecules: The Chemistry of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Enzymes are a type of:', '["Carbohydrate", "Lipid", "Protein", "Nucleic acid"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Biomolecules: The Chemistry of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Name one example and function for each of the four biomolecule categories, and explain why enzyme shape matters to its function.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Cell Structure: Organelles & Their Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Which organelle is known as the ''powerhouse of the cell''?', '["Nucleus", "Ribosome", "Mitochondria", "Golgi apparatus"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Cell Structure: Organelles & Their Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Which organelle packages and ships proteins to their destination?', '["Golgi apparatus", "Chloroplast", "Cell membrane", "Nucleus"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Cell Structure: Organelles & Their Functions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain the role of at least 4 organelles using a factory analogy, and predict which human cell type would have unusually high numbers of a specific organelle and why.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Cellular Respiration & Photosynthesis Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'short_answer', 'Describe both photosynthesis and cellular respiration, showing how the outputs of one relate to the inputs of the other.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Cellular Respiration & Photosynthesis Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'short_answer', 'Explain whether plants only photosynthesize or also respire, and why.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Cellular Respiration & Photosynthesis Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Describe your investigation or prediction about oxygen bubble production in a water plant under light vs. darkness, and connect these processes to the carbon cycle.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cell Biology & Biochemistry' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Which biomolecule stores and transmits genetic information?', '["Carbohydrates", "Lipids", "Proteins", "Nucleic acids"]'::jsonb, 3),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cell Biology & Biochemistry' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Photosynthesis takes place in which organelle?', '["Mitochondria", "Chloroplast", "Nucleus", "Ribosome"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cell Biology & Biochemistry' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'multiple_choice', 'The products of cellular respiration include:', '["Glucose and oxygen", "Carbon dioxide, water, and energy", "Only sunlight", "DNA and RNA"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cell Biology & Biochemistry' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cell Biology & Biochemistry' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 4, 'short_answer', 'Explain how photosynthesis and cellular respiration are complementary processes.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='DNA Replication & Protein Synthesis' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'DNA replication is described as ''semi-conservative'' because:', '["All new DNA is entirely new material", "Each new DNA molecule has one original strand and one new strand", "DNA never actually replicates", "Only half of the DNA is copied"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='DNA Replication & Protein Synthesis' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Which process converts DNA''s code into mRNA?', '["Translation", "Transcription", "Replication", "Mutation"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='DNA Replication & Protein Synthesis' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain the path of information from DNA to a finished protein, naming both major steps, and explain why a small DNA change could have a large effect.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Mutations & Genetic Variation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'A mutation caused by radiation or certain chemicals is triggered by a:', '["Mutagen", "Ribosome", "Codon", "Chromosome"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Mutations & Genetic Variation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Most mutations are:', '["Immediately fatal", "Neutral, with no noticeable effect", "Always beneficial", "Impossible to occur"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Mutations & Genetic Variation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain the difference between a point mutation and a chromosomal mutation, and describe how a beneficial mutation could spread through a population.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Meiosis & Genetic Diversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Meiosis differs from mitosis because meiosis produces:', '["Two identical cells", "Four genetically unique cells with half the chromosomes", "No new cells at all", "Only cells for growth and repair"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Meiosis & Genetic Diversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Crossing over during meiosis involves:', '["Doubling the number of chromosomes", "Chromosomes exchanging sections of DNA", "Destroying damaged DNA", "Copying DNA exactly"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Meiosis & Genetic Diversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain why meiosis produces diverse sex cells while mitosis produces identical cells, referencing crossing over and independent assortment.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Genetic Disorder Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'short_answer', 'Name your chosen genetic disorder and describe its genetic cause.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Genetic Disorder Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'short_answer', 'Explain the molecular effect of this genetic change and how it leads to the disorder''s symptoms.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Genetic Disorder Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Describe the inheritance pattern, including a Punnett square if applicable.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Genetic Disorder Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Genetics & Molecular Biology' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 4, 'short_answer', 'Write your 3-5 sentence reflection connecting DNA, proteins, and observable traits.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evidence for Evolution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Homologous structures, like a human arm and a bat wing, provide evidence for evolution because they show:', '["Completely unrelated structures with no similarity", "Similar underlying structure despite different functions, suggesting common ancestry", "Identical function in all species", "No connection between species at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evidence for Evolution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'The fact that humans and chimpanzees share roughly 98-99% of their DNA is evidence from which category?', '["Fossil record", "Comparative anatomy", "Molecular biology", "Biogeography"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Evidence for Evolution' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Choose two lines of evidence for evolution and explain, with a specific example for each, how they support the theory.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Speciation & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Speciation generally requires:', '["Constant interbreeding between all populations", "Some form of reproductive isolation between populations", "The complete extinction of a species", "No genetic variation at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Speciation & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Darwin''s finches on the Galápagos Islands are a classic example of:', '["Genetic engineering", "Speciation through geographic isolation", "Cloning", "A single unchanging species"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Speciation & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain how geographic isolation can lead to speciation using a real example, and explain why biodiversity loss is a serious concern.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Classification & Cladogram Building' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'short_answer', 'List your 4 chosen organisms and the traits you compared among them.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Classification & Cladogram Building' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'short_answer', 'Describe your cladogram (diagram or written description) showing relatedness.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Classification & Cladogram Building' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain your reasoning for how you grouped the organisms based on shared traits.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Evolution & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Vestigial structures, like the human appendix, are considered evidence of evolution because they:', '["Are perfectly functional in all species", "Appear to be reduced remnants of structures that had a function in ancestors", "Prove all species are identical", "Have no relationship to ancestry at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Evolution & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Geographic isolation leading to the formation of new species is called:', '["Sympatric speciation", "Allopatric speciation", "Genetic drift only", "Mutation"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Evolution & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'multiple_choice', 'High biodiversity is valuable because it:', '["Makes ecosystems less resilient", "Provides genetic resources and ecosystem resilience", "Has no practical importance", "Only matters for endangered species"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Evolution & Biodiversity' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Evolution & Biodiversity' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 4, 'short_answer', 'Explain, using one specific example, how comparative anatomy provides evidence for evolution.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Ecosystem Dynamics & Population Growth' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'Logistic growth differs from exponential growth because logistic growth:', '["Never slows down", "Slows as the population approaches carrying capacity", "Only applies to bacteria", "Always results in extinction"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Ecosystem Dynamics & Population Growth' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'Disease spreading more easily in a denser population is an example of a:', '["Density-independent factor", "Density-dependent factor", "Non-limiting factor", "Abiotic factor only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Ecosystem Dynamics & Population Growth' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain the difference between exponential and logistic growth, and give one density-dependent and one density-independent limiting factor example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Human Impact on Ecosystems & Conservation Biology' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'multiple_choice', 'What is generally considered the leading cause of biodiversity loss globally?', '["Habitat destruction", "Volcanic eruptions", "Natural population cycles", "Seasonal migration"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Human Impact on Ecosystems & Conservation Biology' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'multiple_choice', 'The reintroduction of wolves to Yellowstone is an example of:', '["Habitat destruction", "A species reintroduction conservation strategy", "An invasive species problem", "Pollution mitigation"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Human Impact on Ecosystems & Conservation Biology' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Choose one human impact and one conservation strategy addressing it, and explain how a single intervention can ripple through an ecosystem.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Ecosystem Restoration Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 1, 'short_answer', 'Describe your chosen damaged ecosystem and the human impact(s) that caused the damage.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Ecosystem Restoration Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 2, 'short_answer', 'Connect the problem to specific ecology concepts (population dynamics, limiting factors, biodiversity).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Ecosystem Restoration Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 3, 'short_answer', 'Explain how cellular, genetic, or evolutionary concepts are relevant to your restoration plan.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Ecosystem Restoration Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Ecology & Human Impact' AND course_id=(SELECT id FROM courses WHERE slug='venture-biology'))), 4, 'short_answer', 'List your 3+ restoration action steps, predict the ecosystem''s response, and write your 4-6 sentence reflection.', NULL, NULL);
