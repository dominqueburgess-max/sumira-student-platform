-- Life Science (Grades 6-7) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the established Venture Studio template: 4 units, 15 lessons, 2 small projects, 2 major projects
-- (L8 and full-semester capstone L15), aligned to the NC Standard Course of Study (Life Science).

UPDATE courses SET status = 'published' WHERE slug = 'venture-life-science';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-life-science'), 'Unit 1: Cells — The Building Blocks of Life', 0),
((SELECT id FROM courses WHERE slug='venture-life-science'), 'Unit 2: Heredity & Genetics', 1),
((SELECT id FROM courses WHERE slug='venture-life-science'), 'Unit 3: Ecosystems & Interdependence', 2),
((SELECT id FROM courses WHERE slug='venture-life-science'), 'Unit 4: Evolution & Adaptation', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'What Is Life? Characteristics of Living Things', 1, 'lesson',
  $lesson$## Welcome to Life Science: You're a Field Scientist Now

Every living thing on Earth — from a redwood tree to a bacterium to you — shares a set of characteristics that separate it from non-living matter. This year, you'll investigate life at every scale, from single cells to whole ecosystems, using the same tools real field scientists use.

### The Characteristics of Life

Scientists agree that living things:

- **Are made of cells** — one or more
- **Grow and develop** over time
- **Reproduce**, passing traits to offspring
- **Respond to their environment** (stimuli)
- **Use energy** (metabolism) to carry out life processes
- **Maintain homeostasis** — a stable internal environment
- **Adapt** to their environment over generations

### Worked Example

Is a virus alive? Viruses don't have cells, can't reproduce on their own, and don't carry out metabolism independently — they need a host cell to do all of that for them. Most biologists classify viruses as **non-living**, right on the edge of the definition of life. That edge case is exactly why scientists still argue about it — a good reminder that even "settled" science keeps being tested.

### Field Notebook

Starting today, keep a running Field Notebook (physical or digital) for this course. Every unit, you'll record observations, data, and reflections here — just like a real biologist would in the field.

### Your Turn

Pick three things around you right now — one you're sure is alive, one you're sure is not, and one you're unsure about (a seed, a flame, a computer virus). For each, check it against the seven characteristics of life and explain your reasoning.$lesson$,
  '7.L.1.1', 'Summarize the characteristics of living organisms and use them to distinguish living from non-living things.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Cell Theory & the Discovery of Cells', 2, 'lesson',
  $lesson$## The Cell Theory: Life's Universal Rule

In the 1600s, Robert Hooke looked through a crude microscope at a thin slice of cork and saw tiny box-like compartments — he called them "cells," after the small rooms monks lived in. A few decades later, Anton van Leeuwenhoek used his own hand-built microscopes to observe living cells swimming in pond water for the first time.

Their work — and the work of scientists after them — led to the **Cell Theory**, one of the most important unifying ideas in all of biology:

1. **All living things are made of one or more cells.**
2. **The cell is the basic unit of structure and function in living things.**
3. **All cells come from pre-existing cells.**

### Unicellular vs. Multicellular

- **Unicellular organisms** (like bacteria and many protists) are a single cell that carries out every life process on its own.
- **Multicellular organisms** (like plants, animals, and fungi) are made of many specialized cells working together — the way a company has different departments handling different jobs.

### Worked Example

A single-celled amoeba must find food, digest it, remove waste, and reproduce — all within that one cell. A human, by contrast, has specialized cells: red blood cells that only carry oxygen, muscle cells that only contract, and nerve cells that only send signals. Specialization allows multicellular organisms to do more, but it also means every cell depends on the whole system working together.

### Your Turn

Explain in your own words why "all cells come from pre-existing cells" was such a groundbreaking idea in the 1800s (hint: what did people believe about where life came from before this?), and describe one advantage and one disadvantage of being multicellular instead of unicellular.$lesson$,
  '7.L.1.2', 'Explain the role of the cell theory in understanding that all living things are composed of cells and cells arise from pre-existing cells.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Plant & Animal Cells — Structure Investigation', 3, 'practice',
  $lesson$## Small Project: Cell Structure Field Investigation

Time to investigate the two major cell types you'll encounter most often this year: plant cells and animal cells.

### Background

Both plant and animal cells are **eukaryotic** — they have a nucleus and membrane-bound organelles. But they differ in important ways:

| Structure | Plant Cell | Animal Cell |
|---|---|---|
| Cell wall | Yes (rigid, made of cellulose) | No |
| Chloroplasts | Yes (site of photosynthesis) | No |
| Large central vacuole | Yes | No (small vacuoles, if any) |
| Shape | Fixed, rectangular | Flexible, round |
| Mitochondria | Yes | Yes |
| Nucleus | Yes | Yes |

### Your Task

1. **Draw and label** a plant cell and an animal cell side by side (in your Field Notebook or the response box), including at minimum: nucleus, cell membrane, mitochondria, and the plant-only structures (cell wall, chloroplast, vacuole).
2. **Investigate**: if you have access to a microscope, a leaf, and an onion skin (or cheek cell swab), prepare simple slides and record what you observe. If not, research and describe what each would look like under 400x magnification.
3. **Explain** why a plant cell's rigid cell wall and chloroplasts make sense given that plants can't move to find food or shelter.

### Deliverable

Submit your labeled diagrams (described in words if hand-drawn) and a short explanation connecting at least two structural differences to the different lifestyles of plants versus animals.$lesson$,
  '7.L.1.3', 'Compare the structures of plant and animal cells and relate cell structures to their functions.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Unit 1 Quiz: Cells & Characteristics of Life', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of the characteristics of life, cell theory, and plant vs. animal cell structures before we move on to heredity and genetics. Take your time and show your thinking.$lesson$,
  '7.L.1.1–3', 'Assesses the characteristics of life, cell theory, and plant/animal cell structure and function.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Traits: Inherited vs. Acquired', 5, 'lesson',
  $lesson$## Where Do Your Traits Come From?

Look in the mirror: your eye color, the shape of your earlobes, whether you can roll your tongue — these are all **traits**, characteristics that make you, you. But not all traits come from the same place.

### Inherited vs. Acquired Traits

- **Inherited traits** are passed from parent to offspring through genes — eye color, blood type, natural hair texture, and attached vs. unattached earlobes are all inherited.
- **Acquired traits** develop during an organism's lifetime because of environment or experience — a scar, a suntan, a language you learned, or a muscle built from exercise.

### The Key Test

Ask: *could this trait be passed to my children just because I have it?* If a weightlifter has huge muscles from years of training, their baby is **not** born muscular — that's an acquired trait. But if a parent has naturally curly hair, their biological child has a real chance of inheriting curly hair — that's genetic.

### Worked Example

A dog breeder notices that puppies from a particular father consistently have long fur — that's inherited. But a farm dog that lost part of its tail in an accident won't produce puppies with short tails — that's acquired, not passed down.

### Your Turn

List five traits about yourself — a mix of physical characteristics, skills, and scars or habits. Sort each into "inherited" or "acquired," and explain your reasoning for the two trickiest ones to classify.$lesson$,
  '7.L.2.1', 'Explain the difference between inherited and acquired traits and give examples of each.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'DNA, Genes & Chromosomes: The Instruction Manual for Life', 6, 'lesson',
  $lesson$## DNA: The Code Inside Every Cell

Every cell in your body (except red blood cells) contains a complete copy of your **DNA** — deoxyribonucleic acid — the molecule that carries the instructions for building and running your entire body.

### From DNA to Trait

- **DNA** is a long, twisted molecule (the famous double helix) made of a sequence of four chemical "letters": A, T, C, and G.
- A **gene** is a specific section of DNA that contains the instructions for one trait or protein — like a single recipe in a giant cookbook.
- **Chromosomes** are tightly coiled bundles of DNA. Humans have 23 pairs (46 total) — one set from each biological parent.

### Worked Example

Think of DNA as an enormous cookbook (the genome), each chromosome as one volume of that cookbook, and each gene as a single recipe inside a volume. Just like a recipe for chocolate chip cookies tells the kitchen exactly what to make, a gene tells the cell exactly which protein to build — and that protein determines a trait, like eye color or blood type.

### Dominant & Recessive Alleles

Each gene can come in different versions called **alleles**. You get one allele from each parent. A **dominant** allele (shown with a capital letter, like B) will show up in the organism if present at all; a **recessive** allele (lowercase, like b) only shows up if there's no dominant allele present to "cover" it.

### Your Turn

Explain, using the cookbook analogy or one of your own, the relationship between DNA, a chromosome, and a gene. Then research (or recall) one trait in humans that is controlled by a single dominant/recessive gene pair and describe it.$lesson$,
  '7.L.2.2', 'Explain how DNA, genes, and chromosomes relate to the inheritance of traits.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Punnett Squares & Predicting Traits', 7, 'lesson',
  $lesson$## Predicting Traits with Punnett Squares

A **Punnett square** is a simple grid geneticists use to predict the possible combinations of alleles offspring could inherit from two parents — and the probability of each outcome.

### How It Works

Let's say tallness (T) is dominant over shortness (t) in a plant. Cross two plants that are each **Tt** (heterozygous — one dominant, one recessive allele):

|   | T  | t  |
|---|----|----|
| **T** | TT | Tt |
| **t** | Tt | tt |

Reading the grid: 1 TT, 2 Tt, and 1 tt — so **75% of offspring will be tall** (TT or Tt) and **25% will be short** (tt).

### Genotype vs. Phenotype

- **Genotype** = the actual allele combination (TT, Tt, or tt)
- **Phenotype** = the physical trait that results (tall or short)

Notice that TT and Tt have different genotypes but the *same* phenotype (both tall), because T is dominant.

### Worked Example

In pea plants, round seeds (R) are dominant over wrinkled seeds (r). Cross a homozygous round plant (RR) with a wrinkled plant (rr). Every offspring gets one R and one r, so every offspring is Rr — 100% round-seeded, even though none of them are "purebred" round.

### Your Turn

Using a trait of your choice (real or invented, like fur color in a rabbit), define the dominant and recessive alleles, build a Punnett square for a cross between two heterozygous (Aa x Aa) parents, and state the resulting genotype and phenotype ratios.$lesson$,
  '7.L.2.3', 'Use Punnett squares to predict genotype and phenotype ratios of offspring from a genetic cross.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'MAJOR PROJECT 1: Design-a-Creature Genetics Investigation', 8, 'practice',
  $lesson$## Major Project: Design-a-Creature Genetics Investigation

Time to put everything from this unit — inherited traits, DNA/genes, and Punnett squares — into a hands-on genetics investigation.

### The Scenario

You are a field geneticist studying a newly discovered (imaginary) creature. You'll design its genetic traits, predict offspring outcomes, and present your findings like a real research biologist would.

### Your Task

1. **Invent your creature** and choose 3 traits it has (e.g., wing color, number of eyes, fur texture). For each trait, define a dominant and recessive allele (e.g., Wing color: Blue [W] is dominant over Green [w]).
2. **Choose two parent creatures** with specific genotypes for each trait (e.g., Parent 1: WwEeFf, Parent 2: wwEeff).
3. **Build a Punnett square** for at least one of the three traits, showing the genotype and phenotype ratios of the offspring.
4. **Predict** what percentage of offspring would show each phenotype for that trait.
5. **Write a field report** (3-5 sentences) explaining which traits are inherited vs. could be acquired in your creature's world, and why understanding genetics matters for a field scientist studying a new species.

### Deliverable

Submit your creature's trait list with dominant/recessive alleles, your Punnett square and ratio predictions, and your field report reflection.$lesson$,
  '7.L.2.1–3', 'Applies understanding of inherited traits, genes, and Punnett squares to a genetics investigation.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Energy Flow: Food Chains & Food Webs', 9, 'lesson',
  $lesson$## Following the Energy: Food Chains & Food Webs

Every living thing needs energy, and in almost every ecosystem on Earth, that energy starts with the sun.

### The Flow of Energy

- **Producers** (plants, algae) capture sunlight and turn it into food energy through photosynthesis.
- **Primary consumers** (herbivores) eat producers.
- **Secondary consumers** (carnivores/omnivores) eat primary consumers.
- **Tertiary consumers** (apex predators) sit at the top.
- **Decomposers** (fungi, bacteria) break down dead organisms and waste, recycling nutrients back into the ecosystem.

A **food chain** shows one straight-line path of energy (grass → rabbit → fox). A **food web** shows how many food chains connect and overlap in a real ecosystem — because most organisms eat, and are eaten by, more than one thing.

### The 10% Rule

At each step up a food chain, only about **10% of the energy** transfers to the next level — the rest is lost as heat or used for the organism's own life processes. This is why food chains rarely have more than 4-5 levels, and why there are always far more producers than apex predators in a healthy ecosystem.

### Worked Example

If a field has 10,000 units of energy in its grass, only about 1,000 units transfer to the rabbits that eat the grass, and only about 100 units transfer to the foxes that eat the rabbits. That's why it takes a lot of grass to support even a few foxes.

### Your Turn

Build a simple food web (at least 5 organisms, with arrows showing energy flow) for an ecosystem near you — a backyard, park, or local pond. Identify the producer(s), at least one primary consumer, one secondary consumer, and a decomposer.$lesson$,
  '7.L.3.1', 'Explain how energy flows through food chains and food webs and analyze the roles of producers, consumers, and decomposers.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Biotic & Abiotic Factors in Ecosystems', 10, 'lesson',
  $lesson$## What Shapes an Ecosystem?

An ecosystem is made up of every living and non-living thing in an area, interacting together.

### Biotic vs. Abiotic

- **Biotic factors** are the living parts of an ecosystem: plants, animals, fungi, bacteria.
- **Abiotic factors** are the non-living parts: sunlight, water, temperature, soil type, air, and rocks.

Both types of factors interact constantly. A drought (abiotic) can shrink a pond, which reduces the fish population (biotic), which then reduces the number of birds that eat those fish (biotic) — a chain reaction that starts with just one non-living factor changing.

### Carrying Capacity

Every ecosystem has a **carrying capacity** — the maximum population size of a species that the environment (its available food, water, space, and shelter) can sustainably support. If a population grows beyond carrying capacity, resources run short and the population typically declines until it's back in balance.

### Worked Example

A pond can naturally support about 200 fish based on its size, oxygen levels, and food supply (its carrying capacity). If overfishing or migration adds 100 more fish, the pond becomes crowded, oxygen and food run short, and the fish population will likely crash back down toward — or below — 200 within a season.

### Your Turn

Choose an ecosystem (real or one you invent) and list 4 biotic factors and 4 abiotic factors present in it. Then explain, using a specific example, how a change in one abiotic factor (like less rainfall) could ripple through and affect the biotic factors in that ecosystem.$lesson$,
  '7.L.3.2', 'Analyze the interdependence of biotic and abiotic factors within an ecosystem, including carrying capacity.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Human Impact & Small Project: Backyard Ecosystem Survey', 11, 'practice',
  $lesson$## Small Project: Backyard Ecosystem Survey

Real field ecologists spend much of their time simply observing and recording what's actually in an ecosystem before drawing conclusions. Today, you'll do the same.

### Background: Human Impact

Humans affect ecosystems in major ways — habitat destruction, pollution, introducing invasive species, and climate change can all shift the balance of biotic and abiotic factors. But humans can also help restore ecosystems through conservation, habitat restoration, and sustainable practices.

### Your Task

1. **Pick a small outdoor area** you can observe (a backyard, park, schoolyard, or even a single tree and the ground around it).
2. **Spend at least 15 minutes observing.** Record every biotic factor (plants, insects, animals, fungi) and abiotic factor (soil, water, sunlight/shade, temperature) you notice in your Field Notebook.
3. **Identify at least one food chain** you can piece together from what you observed.
4. **Identify at least one sign of human impact** on this ecosystem — positive or negative (a bird feeder, litter, a garden, a paved area, etc.).
5. **Propose one action** that could improve this ecosystem's health.

### Deliverable

Submit your list of observed biotic and abiotic factors, your food chain, the human impact you identified, and your proposed improvement.$lesson$,
  '7.L.3.3', 'Investigate a local ecosystem and evaluate the impact of human activity on biotic and abiotic factors.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Unit 3 Quiz: Ecosystems & Interdependence', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of energy flow, food webs, biotic/abiotic factors, and human impact on ecosystems before we move into evolution and adaptation.$lesson$,
  '7.L.3.1–3', 'Assesses energy flow, biotic/abiotic interdependence, carrying capacity, and human impact on ecosystems.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Adaptations: How Organisms Survive', 13, 'lesson',
  $lesson$## Adaptations: Nature's Solutions to Survival Problems

An **adaptation** is an inherited trait that helps an organism survive and reproduce in its specific environment. Adaptations aren't chosen or developed on purpose — they exist because, over many generations, individuals with helpful traits survived and reproduced more successfully than individuals without them.

### Three Types of Adaptations

- **Structural adaptations** — physical features, like a polar bear's thick fur or a cactus's spines.
- **Behavioral adaptations** — actions or instincts, like bird migration or a possum playing dead.
- **Physiological adaptations** — internal body processes, like a snake's venom or a desert animal's ability to conserve water.

### Worked Example

A chameleon's ability to change color is a structural/physiological adaptation that helps it avoid predators and ambush prey. A monarch butterfly's yearly migration south is a behavioral adaptation that helps it survive cold winters it couldn't otherwise endure. Neither trait was "decided" by the animal — both exist because ancestors with these traits survived better than those without them.

### Adaptations Fit Specific Environments

An adaptation that's helpful in one environment can be useless — or even harmful — in another. Thick white fur is a huge advantage for a polar bear in the Arctic, but that same trait would be a serious disadvantage for a bear living in a desert.

### Your Turn

Choose an organism (real, from any environment) and identify one structural, one behavioral, and one physiological adaptation it has (research if needed). For each, explain specifically how that adaptation helps it survive in its environment.$lesson$,
  '7.L.4.1', 'Classify structural, behavioral, and physiological adaptations and explain how they support survival in a specific environment.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'Natural Selection & Evidence of Evolution', 14, 'lesson',
  $lesson$## Natural Selection: How Adaptations Spread Through a Population

**Natural selection**, first described by Charles Darwin, is the process by which organisms with traits better suited to their environment tend to survive and reproduce more than those without those traits — passing those helpful traits to the next generation.

### The Four Requirements for Natural Selection

1. **Variation** — individuals in a population have different traits.
2. **Inheritance** — traits can be passed from parents to offspring.
3. **Selection** — some traits help individuals survive and reproduce better than others in a given environment.
4. **Time** — over many generations, helpful traits become more common in the population.

### Worked Example: Peppered Moths

Before industrial pollution darkened tree bark in parts of England, light-colored peppered moths were camouflaged and survived better than dark-colored ones. As pollution darkened the trees, dark moths became better camouflaged instead — and within just a few generations, the population shifted from mostly light-colored to mostly dark-colored moths. This is natural selection observed in real time.

### Evidence for Evolution

Scientists point to multiple independent lines of evidence supporting evolution over time: the **fossil record** (showing gradual change in species over millions of years), **comparative anatomy** (similar bone structures across very different species, like a human arm, whale flipper, and bat wing), and **DNA evidence** (species that are more closely related share more similar DNA).

### Your Turn

Using the peppered moth example as a model, explain in your own words how all four requirements (variation, inheritance, selection, time) were present in that scenario. Then describe one other piece of evidence for evolution and why scientists find it convincing.$lesson$,
  '7.L.4.2', 'Explain the process of natural selection and evaluate evidence supporting the theory of evolution.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science')),
  'MAJOR PROJECT 2 CAPSTONE: Field Scientist Case Study — Evolution in Action', 15, 'practice',
  $lesson$## Capstone Project: Field Scientist Case Study

For your final Life Science project, you'll bring together everything from this semester — cells, heredity, ecosystems, and evolution — into one real-world case study, presented the way a professional field biologist would present findings.

### The Scenario

Choose ONE real species (research it, or use one you already know well) that has a well-documented adaptation or evolutionary story — examples include Darwin's finches, the peppered moth, antibiotic-resistant bacteria, Arctic foxes, or any species you're personally curious about.

### Your Case Study Must Include

1. **Species overview**: what is it, where does it live, and what challenge does its environment present?
2. **The adaptation**: describe the specific structural, behavioral, or physiological adaptation this species has, and classify which type it is.
3. **The evolutionary story**: explain how natural selection likely produced this adaptation over generations (variation, inheritance, selection, time).
4. **Ecosystem connection**: describe how this species fits into its ecosystem's food web, and name one biotic and one abiotic factor that affects it.
5. **Reflection** (4-6 sentences): what does this case study teach you about how life science connects cells, genetics, ecosystems, and evolution into one big picture?

### Deliverable

Submit your full case study covering all five sections above. This is your chance to show everything you've learned this semester as a real field scientist would.$lesson$,
  '7.L.1–4', 'Synthesizes cell structure, heredity, ecosystem interdependence, and evolution concepts into a species case study.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='What Is Life? Characteristics of Living Things' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which of the following is NOT one of the seven characteristics of life?', '["Reproduction", "Growth and development", "Being made of metal", "Response to stimuli"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='What Is Life? Characteristics of Living Things' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'Homeostasis refers to an organism''s ability to:', '["Grow larger over time", "Maintain a stable internal environment", "Reproduce offspring", "Move from place to place"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='What Is Life? Characteristics of Living Things' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Choose one living and one non-living object near you. List which characteristics of life the living object has, and explain why the non-living object lacks them.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Cell Theory & the Discovery of Cells' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which scientist first observed and named ''cells'' using a microscope?', '["Charles Darwin", "Robert Hooke", "Gregor Mendel", "Louis Pasteur"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Cell Theory & the Discovery of Cells' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'Which statement is part of the Cell Theory?', '["All cells contain chlorophyll", "All living things are made of one or more cells", "All cells can move independently", "All organisms are unicellular"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Cell Theory & the Discovery of Cells' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Describe one advantage and one disadvantage of being a multicellular organism compared to a unicellular one.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Plant & Animal Cells — Structure Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'short_answer', 'List at least four structures found in a plant cell but not an animal cell, or vice versa.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Plant & Animal Cells — Structure Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'short_answer', 'Describe what you observed (or would expect to observe) comparing a plant cell to an animal cell under a microscope.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Plant & Animal Cells — Structure Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Explain why chloroplasts and a rigid cell wall make sense for a plant''s lifestyle but wouldn''t make sense for most animal cells.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cells & Characteristics of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which characteristic of life describes an organism keeping its internal temperature stable?', '["Reproduction", "Homeostasis", "Adaptation", "Metabolism"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cells & Characteristics of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'According to cell theory, where do new cells come from?', '["They form spontaneously from non-living matter", "Only from sunlight", "From pre-existing cells", "From bacteria only"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cells & Characteristics of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'multiple_choice', 'Which structure is found in plant cells but NOT animal cells?', '["Nucleus", "Mitochondria", "Chloroplast", "Cell membrane"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cells & Characteristics of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 4, 'multiple_choice', 'A single-celled organism that must carry out every life process on its own is called:', '["Multicellular", "Unicellular", "Non-living", "A tissue"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Cells & Characteristics of Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Cells — The Building Blocks of Life' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 5, 'short_answer', 'In your own words, explain what it means for something to be ''alive'' using at least three characteristics of life.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Traits: Inherited vs. Acquired' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which of the following is an inherited trait?', '["A tattoo", "Natural eye color", "A broken arm", "Knowing how to ride a bike"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Traits: Inherited vs. Acquired' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'A trait is most likely acquired (not inherited) if it:', '["Is inherited through a parents genes", "Developed because of an experience or environment", "Is present at birth", "Appears identically in siblings"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Traits: Inherited vs. Acquired' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'List two inherited and two acquired traits of your own, and explain what makes each one inherited or acquired.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='DNA, Genes & Chromosomes: The Instruction Manual for Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'What is a gene?', '["An entire chromosome", "A specific section of DNA that codes for a trait", "A type of cell", "A physical trait itself"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='DNA, Genes & Chromosomes: The Instruction Manual for Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'How many chromosomes does a typical human cell contain?', '["23", "46", "92", "4"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='DNA, Genes & Chromosomes: The Instruction Manual for Life' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'In your own words, explain the relationship between DNA, a chromosome, and a gene using an analogy (a cookbook, a library, or one of your own).', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Punnett Squares & Predicting Traits' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'In a Punnett square cross of Tt x Tt, what percentage of offspring are expected to show the recessive phenotype?', '["100%", "75%", "50%", "25%"]'::jsonb, 3),
((SELECT id FROM lessons WHERE title='Punnett Squares & Predicting Traits' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'Genotype refers to:', '["The physical appearance of a trait", "The actual allele combination an organism carries", "Only dominant traits", "The environment an organism lives in"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Punnett Squares & Predicting Traits' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Build a Punnett square for an Aa x Aa cross and state what percentage of offspring would be expected to show the dominant phenotype.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Design-a-Creature Genetics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'short_answer', 'Describe your invented creature and list its 3 traits with dominant and recessive alleles defined for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Design-a-Creature Genetics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'short_answer', 'State the genotypes of your two parent creatures for the trait you are testing.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Design-a-Creature Genetics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Show your Punnett square and the resulting genotype and phenotype ratios.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Design-a-Creature Genetics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Heredity & Genetics' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 4, 'short_answer', 'Write your 3-5 sentence field report reflecting on inherited traits and why genetics matters to a field scientist.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Energy Flow: Food Chains & Food Webs' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which organism is a producer in an ecosystem?', '["A fox", "A mushroom", "Grass", "A rabbit"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Energy Flow: Food Chains & Food Webs' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'According to the 10% rule, if a food chain starts with 1,000 units of energy in plants, roughly how much energy transfers to the first-level consumer?', '["1,000 units", "500 units", "100 units", "10 units"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Energy Flow: Food Chains & Food Webs' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Build a simple food web for a local ecosystem, identifying at least one producer, consumer, and decomposer.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Biotic & Abiotic Factors in Ecosystems' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which of the following is an abiotic factor?', '["A tree", "Sunlight", "A deer", "Bacteria"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Biotic & Abiotic Factors in Ecosystems' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'Carrying capacity refers to:', '["The total number of species in an ecosystem", "The maximum population an environment can sustainably support", "The number of predators in an ecosystem", "The amount of sunlight an ecosystem receives"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Biotic & Abiotic Factors in Ecosystems' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'List 4 biotic and 4 abiotic factors for an ecosystem of your choice, and explain how a change in one abiotic factor could affect the biotic factors.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Human Impact & Small Project: Backyard Ecosystem Survey' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'short_answer', 'List the biotic and abiotic factors you observed in your chosen area.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Human Impact & Small Project: Backyard Ecosystem Survey' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'short_answer', 'Describe the food chain you identified from your observations.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Human Impact & Small Project: Backyard Ecosystem Survey' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Describe the sign of human impact you found and propose one action to improve the ecosystem''s health.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Ecosystems & Interdependence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which trophic level receives the LEAST amount of energy in a food chain?', '["Producers", "Primary consumers", "Tertiary consumers", "Decomposers"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Ecosystems & Interdependence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'A decomposer''s main role in an ecosystem is to:', '["Produce food through photosynthesis", "Hunt other animals for food", "Break down dead matter and recycle nutrients", "Store the most energy in the food web"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Ecosystems & Interdependence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'multiple_choice', 'If a population grows beyond an ecosystem''s carrying capacity, what typically happens?', '["The population grows indefinitely", "Resources run short and the population tends to decline", "Abiotic factors disappear", "Nothing changes"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Ecosystems & Interdependence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Ecosystems & Interdependence' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 4, 'short_answer', 'Explain, using a real or invented example, how one abiotic factor changing could affect multiple biotic factors in an ecosystem.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Adaptations: How Organisms Survive' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'A bird migrating south for the winter is an example of which type of adaptation?', '["Structural", "Behavioral", "Physiological", "Genetic mutation"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adaptations: How Organisms Survive' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'Which best explains why thick fur is an adaptation for an Arctic fox but not a desert fox?', '["Adaptations must fit a specific environment to be helpful", "All adaptations help every environment equally", "Fur is never an adaptation", "Desert foxes also need thick fur"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Adaptations: How Organisms Survive' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Choose an organism and identify one structural, one behavioral, and one physiological adaptation it has, explaining how each helps it survive.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Natural Selection & Evidence of Evolution' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'multiple_choice', 'Which of the following is required for natural selection to occur in a population?', '["All individuals must be genetically identical", "Variation must exist among individuals", "The environment must never change", "Every individual must survive equally"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Natural Selection & Evidence of Evolution' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'multiple_choice', 'The peppered moth example demonstrates natural selection because:', '["Moths chose to change their own color", "Environmental change favored a different color of moth, shifting the population over generations", "All moths died out completely", "Moths migrated to a new country"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Natural Selection & Evidence of Evolution' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Explain how variation, inheritance, selection, and time were all present in the peppered moth example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Field Scientist Case Study — Evolution in Action' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 1, 'short_answer', 'Describe your chosen species, its habitat, and the environmental challenge it faces.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Field Scientist Case Study — Evolution in Action' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 2, 'short_answer', 'Describe the adaptation this species has and classify it as structural, behavioral, or physiological.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Field Scientist Case Study — Evolution in Action' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 3, 'short_answer', 'Explain the evolutionary story of this adaptation using the four requirements of natural selection.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Field Scientist Case Study — Evolution in Action' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Evolution & Adaptation' AND course_id=(SELECT id FROM courses WHERE slug='venture-life-science'))), 4, 'short_answer', 'Describe this species'' ecosystem connections (food web role, one biotic factor, one abiotic factor) and write your 4-6 sentence reflection.', NULL, NULL);
