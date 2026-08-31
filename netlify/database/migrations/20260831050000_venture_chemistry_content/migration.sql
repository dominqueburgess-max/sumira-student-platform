-- Chemistry (Grades 10-11) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the established Venture Studio template: 4 units, 15 lessons, 2 small projects, 2 major projects
-- (L8 and full-semester capstone L15), aligned to the NC Standard Course of Study (Chemistry).

UPDATE courses SET status = 'published' WHERE slug = 'venture-chemistry';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-chemistry'), 'Unit 1: Atomic Structure & the Periodic Table', 0),
((SELECT id FROM courses WHERE slug='venture-chemistry'), 'Unit 2: Bonding & Chemical Reactions', 1),
((SELECT id FROM courses WHERE slug='venture-chemistry'), 'Unit 3: Stoichiometry & the Mole', 2),
((SELECT id FROM courses WHERE slug='venture-chemistry'), 'Unit 4: Solutions, Acids & Bases', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Atomic Structure Revisited: Electron Configuration', 1, 'lesson',
  $lesson$## Electron Configuration: Mapping Where Electrons Live

Building on your knowledge of atomic structure, chemistry zooms in on exactly where electrons sit around the nucleus — because that arrangement determines nearly all of an element's chemical behavior.

### Energy Levels & Orbitals

Electrons occupy specific **energy levels** (shells), and within those, specific **orbitals** (s, p, d, f) that can each hold a limited number of electrons (s holds 2, p holds 6, d holds 10, f holds 14).

### Writing Electron Configurations

Electrons fill orbitals from lowest to highest energy, following the pattern: 1s, 2s, 2p, 3s, 3p, 4s, 3d, 4p, and so on. For example, oxygen (atomic number 8) has the configuration 1s² 2s² 2p⁴ — 2 electrons in the 1s orbital, 2 in the 2s, and 4 in the 2p.

### Valence Electrons

The electrons in the outermost energy level — the **valence electrons** — are the ones directly involved in chemical bonding. Oxygen's configuration shows 6 valence electrons (2 in 2s + 4 in 2p), which explains why oxygen typically gains 2 electrons in reactions to achieve a stable, full outer shell of 8.

### Worked Example

Sodium (atomic number 11) has the configuration 1s² 2s² 2p⁶ 3s¹ — just 1 valence electron in the 3s orbital. That single, "loosely held" valence electron is exactly why sodium reacts so readily, giving up that electron to become a stable, positively charged ion.

### Your Turn

Write the electron configuration for chlorine (atomic number 17), identify its number of valence electrons, and predict whether chlorine is more likely to gain or lose electrons in a reaction, explaining your reasoning.$lesson$,
  '10.P.1.1', 'Write and interpret electron configurations and identify valence electrons and their role in bonding.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Periodic Trends: Atomic Radius, Electronegativity & Reactivity', 2, 'lesson',
  $lesson$## Reading the Periodic Table's Patterns

The periodic table isn't just a list of elements — its layout reveals predictable trends in atomic properties.

### Key Trends

- **Atomic radius** — generally decreases left to right across a period (more protons pull electrons in tighter) and increases top to bottom down a group (more energy levels add size).
- **Electronegativity** — an atom's tendency to attract electrons in a bond; generally increases left to right across a period and decreases top to bottom down a group. Fluorine is the most electronegative element.
- **Reactivity** — for metals, reactivity generally increases down a group (electrons are held more loosely, farther from the nucleus); for nonmetals, reactivity generally increases up a group and to the right (stronger pull on electrons).

### Worked Example

Comparing sodium (Na) and potassium (K), both in group 1: potassium is below sodium, has an extra energy level (larger atomic radius), and its single valence electron is held more loosely and farther from the nucleus — which is exactly why potassium reacts even more violently with water than sodium does.

### Why This Matters

Understanding periodic trends lets chemists predict how an unfamiliar element will behave without needing to test it directly — a powerful tool discovered even before all elements were known (Mendeleev famously predicted properties of undiscovered elements using these trends).

### Your Turn

Compare two elements of your choice from the same period, predicting which has the larger atomic radius and which has higher electronegativity, and explain your reasoning using periodic trends.$lesson$,
  '10.P.1.2', 'Analyze and predict periodic trends including atomic radius, electronegativity, and reactivity.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Small Project: Periodic Trends Data Analysis', 3, 'practice',
  $lesson$## Small Project: Periodic Trends Data Analysis

Real chemists use actual measured data to confirm and refine periodic trends — you'll do the same with real atomic radius data.

### Your Task

1. **Research the atomic radii** (in picometers) of the elements in Period 3 (sodium through argon) or Group 1 (lithium through cesium) — use a reliable reference source.
2. **Create a simple graph or table** showing atomic radius vs. atomic number for your chosen set.
3. **Identify the trend**: does radius increase or decrease as you move through your chosen period or group? Does the data match the trend predicted in the lesson?
4. **Explain the trend** at the atomic level: why does adding protons across a period pull electrons in tighter? Why does adding energy levels down a group increase size?
5. **Predict** the atomic radius trend for a period or group you did not research, using your understanding of the underlying pattern.

### Deliverable

Submit your data table/graph, your trend identification, your atomic-level explanation, and your prediction for an untested period or group.$lesson$,
  '10.P.1.2', 'Analyzes real periodic trend data to confirm and explain atomic radius patterns.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Unit 1 Quiz: Atomic Structure & the Periodic Table', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of electron configuration, valence electrons, and periodic trends before we move into bonding and chemical reactions.$lesson$,
  '10.P.1.1–2', 'Assesses electron configuration and periodic trend concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Chemical Bonding Deep Dive: Lewis Structures', 5, 'lesson',
  $lesson$## Drawing Molecules: Lewis Structures

**Lewis structures** are diagrams showing how atoms bond by sharing or transferring valence electrons — visualizing exactly what you learned conceptually in earlier bonding lessons.

### The Octet Rule

Most atoms are most stable with 8 valence electrons (a full outer shell) — the **octet rule**. Atoms bond in ways that help them achieve this stable configuration (hydrogen is a notable exception, needing just 2).

### Drawing a Lewis Structure (Steps)

1. Count total valence electrons across all atoms in the molecule.
2. Arrange atoms with the least electronegative atom typically in the center.
3. Connect atoms with single bonds (each bond = 2 shared electrons).
4. Distribute remaining electrons as lone pairs to satisfy the octet rule for each atom.
5. Form double or triple bonds if needed to complete octets with the electrons available.

### Worked Example

For water (H2O): oxygen has 6 valence electrons, each hydrogen has 1, totaling 8. Oxygen sits in the center bonded to both hydrogens (2 single bonds = 4 electrons used), leaving 4 electrons as 2 lone pairs on oxygen — giving oxygen a full octet (2 bonds + 2 lone pairs = 8 electrons around it) and each hydrogen its stable 2 electrons.

### Your Turn

Draw (or describe in detail) the Lewis structure for ammonia (NH3, nitrogen has 5 valence electrons, each hydrogen has 1), showing the bonds and any lone pairs, and confirm that nitrogen achieves a full octet.$lesson$,
  '10.P.2.1', 'Construct Lewis structures to represent covalent bonding and apply the octet rule.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Types of Chemical Reactions', 6, 'lesson',
  $lesson$## Classifying Chemical Reactions

Chemical reactions can be sorted into a handful of major categories based on the pattern of how reactants rearrange into products.

### The Five Major Reaction Types

- **Synthesis (combination)**: A + B → AB (two or more substances combine into one).
- **Decomposition**: AB → A + B (one substance breaks into two or more).
- **Single replacement**: A + BC → AC + B (one element replaces another in a compound).
- **Double replacement**: AB + CD → AD + CB (two compounds swap partners).
- **Combustion**: a substance (usually a hydrocarbon) reacts rapidly with oxygen, producing carbon dioxide, water, and energy.

### Worked Example

Rust forming on iron (4Fe + 3O2 → 2Fe2O3) is a synthesis reaction — iron and oxygen combine into a single new compound. Meanwhile, burning methane gas (CH4 + 2O2 → CO2 + 2H2O + energy) is a combustion reaction, since a hydrocarbon reacts with oxygen to release energy along with carbon dioxide and water.

### Balancing Chemical Equations

The **Law of Conservation of Mass** requires that a chemical equation be balanced — the same number of each type of atom must appear on both sides, since atoms are neither created nor destroyed in a chemical reaction, only rearranged.

### Your Turn

Classify the reaction 2H2 + O2 → 2H2O into one of the five reaction types, and explain how you can verify this equation is properly balanced by counting atoms on each side.$lesson$,
  '10.P.2.2', 'Classify chemical reactions into major types and balance chemical equations.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Energy in Reactions: Exothermic & Endothermic', 7, 'lesson',
  $lesson$## Energy Changes in Chemical Reactions

Every chemical reaction involves an energy change — either releasing energy to the surroundings or absorbing energy from them.

### Exothermic vs. Endothermic

- **Exothermic reactions** release energy (usually as heat), so the surroundings get warmer. Combustion, rusting, and many neutralization reactions are exothermic.
- **Endothermic reactions** absorb energy from the surroundings, so the surroundings get cooler. Photosynthesis, melting ice, and cold packs are endothermic.

### Activation Energy

Every reaction requires an initial input of energy — called **activation energy** — to get started, even exothermic reactions that ultimately release more energy than they absorb. Think of activation energy as the "push" needed to get a boulder rolling downhill, even though the boulder will release far more energy once it's moving than the initial push required.

### Worked Example

Striking a match requires activation energy (the friction/heat of striking), but once ignited, the combustion reaction releases far more energy than that initial input — making it strongly exothermic overall, even though it needed an energy "push" to begin.

### Your Turn

Explain the difference between exothermic and endothermic reactions using a real-world example of each, and explain why even an exothermic reaction requires activation energy to begin.$lesson$,
  '10.P.2.3', 'Distinguish exothermic and endothermic reactions and explain the role of activation energy.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'MAJOR PROJECT 1: Kitchen Chemistry Reaction Lab', 8, 'practice',
  $lesson$## Major Project: Kitchen Chemistry Reaction Lab

Time to observe real chemical reactions using safe, common household materials, and analyze them using this unit's concepts.

### Your Task

1. **Choose and safely perform (or research in detail) 2 simple reactions** using household materials — examples: baking soda + vinegar (decomposition/gas-producing), an effervescent tablet in water, or a rusting nail left in water for observation over days.
2. **For each reaction**, record your observations (bubbling, temperature change, color change, gas produced).
3. **Classify each reaction** by type (synthesis, decomposition, single/double replacement, or combustion) as best you can.
4. **Determine** whether each reaction is exothermic or endothermic based on whether the container felt warmer or cooler, and explain your reasoning.
5. **Write a balanced equation** (or as much of one as you can determine) for at least one of your reactions.

### Safety Note

Only use safe household materials and adult supervision if needed. Never mix unknown chemicals.

### Deliverable

Submit your observations, reaction classifications, exothermic/endothermic determination with reasoning, and your balanced equation attempt.$lesson$,
  '10.P.2.1–3', 'Applies bonding, reaction classification, and energy concepts to observed household chemical reactions.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'The Mole: Chemistry''s Counting Unit', 9, 'lesson',
  $lesson$## The Mole: Counting the Uncountable

Atoms and molecules are far too small and numerous to count individually, so chemists use a special counting unit: the **mole**.

### What Is a Mole?

One **mole** of any substance contains exactly **6.022 × 10²³** particles (atoms, molecules, or ions) — this number is called **Avogadro's number**. It's simply a very large "counting unit," similar to how a "dozen" always means 12, no matter what you're counting.

### Molar Mass

The **molar mass** of a substance (in grams per mole) is numerically equal to its atomic mass (for elements) or the sum of atomic masses (for compounds), found using the periodic table. For example, carbon's molar mass is about 12.01 g/mol, and water's molar mass is about 18.02 g/mol (2×1.01 + 16.00).

### Mole Conversions

- **Grams ↔ Moles**: moles = grams ÷ molar mass; grams = moles × molar mass.
- **Moles ↔ Particles**: particles = moles × Avogadro's number; moles = particles ÷ Avogadro's number.

### Worked Example

How many moles are in 36.04 grams of water (molar mass ≈ 18.02 g/mol)? Moles = 36.04 ÷ 18.02 = **2 moles** of water — which also means this sample contains 2 × 6.022×10²³ = about 1.2×10²⁴ individual water molecules.

### Your Turn

Calculate how many moles are in 44.0 grams of carbon dioxide, CO2 (molar mass ≈ 44.01 g/mol), showing your work, and calculate how many individual CO2 molecules that represents.$lesson$,
  '10.P.3.1', 'Define the mole and Avogadro''s number and perform mole-to-gram and mole-to-particle conversions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Stoichiometry: Using Balanced Equations to Predict Amounts', 10, 'lesson',
  $lesson$## Stoichiometry: The Math Behind Chemical Reactions

**Stoichiometry** uses the ratios in a balanced chemical equation to predict exactly how much product forms from a given amount of reactant, or how much reactant is needed for a desired amount of product.

### The Key Idea: Mole Ratios

The coefficients in a balanced equation represent mole ratios between substances. For 2H2 + O2 → 2H2O, the ratio of H2 to O2 to H2O is 2:1:2 — meaning 2 moles of hydrogen gas react with 1 mole of oxygen gas to produce 2 moles of water.

### The Stoichiometry Process

1. Start with a balanced equation.
2. Convert the given amount to moles (if not already in moles).
3. Use the mole ratio from the balanced equation to find moles of the substance you want.
4. Convert moles of that substance to the units requested (grams, particles, etc.).

### Worked Example

For 2H2 + O2 → 2H2O, if you have 4 moles of H2, the mole ratio (2 H2 : 2 H2O, which simplifies to 1:1) tells you 4 moles of H2 will produce 4 moles of H2O — assuming there's enough oxygen available.

### Your Turn

For the reaction N2 + 3H2 → 2NH3, if you start with 6 moles of H2, use the mole ratio to calculate how many moles of NH3 would be produced (assuming enough N2 is available), showing your work.$lesson$,
  '10.P.3.2', 'Use mole ratios from balanced equations to solve stoichiometry problems.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Small Project: Stoichiometry in the Real World', 11, 'practice',
  $lesson$## Small Project: Stoichiometry in the Real World

Stoichiometry isn't just a classroom exercise — it's used in industries from pharmaceuticals to rocket fuel to baking.

### Your Task

1. **Choose a real-world application** of stoichiometry (examples: calculating airbag gas production, determining fertilizer amounts for crops, scaling a chemical recipe for manufacturing, rocket propellant calculations, or baking soda reactions in baking).
2. **Research or construct** a simple balanced chemical equation relevant to your chosen application.
3. **Set up and solve a stoichiometry problem** using your equation — given an amount of one substance, calculate the amount of another (in moles, and convert to grams using molar mass).
4. **Explain the real-world importance**: why does getting this calculation right matter in your chosen application (safety, cost, effectiveness)?

### Deliverable

Submit your chosen application, your balanced equation, your full stoichiometry calculation (moles and grams), and your explanation of real-world importance.$lesson$,
  '10.P.3.1–2', 'Applies mole and stoichiometry concepts to a real-world industrial or practical scenario.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Unit 3 Quiz: Stoichiometry & the Mole', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of the mole, molar mass, and stoichiometry calculations before we move into solutions, acids, and bases.$lesson$,
  '10.P.3.1–2', 'Assesses mole concept, molar mass conversions, and stoichiometry calculations.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Solutions: Concentration & Solubility', 13, 'lesson',
  $lesson$## Solutions: Mixtures at the Molecular Level

A **solution** is a homogeneous mixture where one substance (the **solute**) is dissolved evenly throughout another (the **solvent**) — like salt (solute) dissolved in water (solvent).

### Measuring Concentration

**Molarity (M)** is the most common way chemists express concentration: moles of solute per liter of solution (M = moles of solute ÷ liters of solution).

### Solubility

**Solubility** describes the maximum amount of solute that can dissolve in a given amount of solvent at a given temperature. A solution with less than the maximum dissolved is **unsaturated**; one at the maximum is **saturated**; and one that (through careful conditions) holds more than the normal maximum is **supersaturated** — unstable and prone to suddenly crystallizing.

### Factors Affecting Solubility

For most solids, solubility increases with temperature (more sugar dissolves in hot tea than cold tea). For gases, solubility typically decreases with temperature (which is why a warm soda goes flat faster than a cold one — the gas escapes more easily).

### Worked Example

If you dissolve 2 moles of salt in 4 liters of water, the molarity is 2 ÷ 4 = **0.5 M**. If you wanted to make that solution twice as concentrated (1.0 M) using the same 2 moles of salt, you'd need to use only 2 liters of water instead of 4.

### Your Turn

Calculate the molarity of a solution made by dissolving 3 moles of solute in 1.5 liters of solution, showing your work. Then explain why a cold can of soda stays fizzy longer than a warm one, using what you know about gas solubility.$lesson$,
  '11.P.4.1', 'Calculate molarity and explain factors affecting solubility of solids and gases.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'Acids, Bases & the pH Scale', 14, 'lesson',
  $lesson$## Acids & Bases: Chemistry's Opposing Forces

Acids and bases are two categories of compounds with opposite chemical behaviors, measured on the familiar **pH scale**.

### Defining Acids & Bases

- **Acids** release hydrogen ions (H+) in solution, taste sour, and react with metals and bases. Examples: vinegar (acetic acid), stomach acid (hydrochloric acid), citrus fruits (citric acid).
- **Bases** release hydroxide ions (OH-) in solution, taste bitter, feel slippery, and react with acids. Examples: soap, baking soda, ammonia.

### The pH Scale

The pH scale runs from 0 to 14: values below 7 are acidic (lower = more acidic), 7 is neutral (pure water), and values above 7 are basic/alkaline (higher = more basic). Each whole number step represents a 10-fold change in acidity/basicity.

### Neutralization Reactions

When an acid and base react, they **neutralize** each other, producing water and a salt: acid + base → salt + water. This is why an antacid tablet (a mild base) can relieve the discomfort of excess stomach acid.

### Worked Example

Lemon juice (pH ≈ 2) is significantly more acidic than tomato juice (pH ≈ 4) — not just "twice as acidic," but about 100 times more acidic, since each pH step represents a 10-fold change and there are 2 steps of difference (10 × 10 = 100).

### Your Turn

Explain why a solution with pH 3 is 100 times more acidic than a solution with pH 5, and describe a real-world neutralization reaction (like an antacid, or adding lime to acidic soil) and explain what's happening chemically.$lesson$,
  '11.P.4.2', 'Explain the pH scale and describe neutralization reactions between acids and bases.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry')),
  'MAJOR PROJECT 2 CAPSTONE: Household Chemistry Product Analysis', 15, 'practice',
  $lesson$## Capstone Project: Household Chemistry Product Analysis

For your final Chemistry project, you'll analyze real household products using everything from this semester — bonding, reactions, stoichiometry, solutions, and acids/bases.

### Your Task

1. **Choose 3 household products** (cleaning products, foods, or personal care items) and identify their key active chemical ingredient(s) from the label.
2. **Classify each ingredient**: is it likely acidic, basic, or neutral? If listed, note its approximate pH, or research/estimate based on its known chemical identity.
3. **Bonding & structure**: for at least one ingredient, describe whether its bonds are likely ionic or covalent, and connect this to a physical property you'd expect (solubility in water, melting point, etc.).
4. **Reaction connection**: describe what would happen (a real or hypothetical reaction) if you mixed two of your chosen products together — would you expect a neutralization reaction, a gas-producing reaction, or no reaction at all? (Note: never actually mix unknown household chemicals — reason through this using chemistry, not experimentation.)
5. **Reflection** (4-6 sentences): what did this project teach you about how atomic structure, bonding, stoichiometry, and acid-base chemistry connect to your everyday life?

### Deliverable

Submit your full analysis covering all five sections above.$lesson$,
  '10-11.P.1–4', 'Synthesizes atomic structure, bonding, stoichiometry, and acid-base concepts into a household product analysis.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Atomic Structure Revisited: Electron Configuration' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'Valence electrons are located in:', '["The nucleus", "The innermost energy level only", "The outermost energy level", "They do not exist"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Atomic Structure Revisited: Electron Configuration' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'An atom with only 1 valence electron, like sodium, tends to:', '["Gain many electrons", "Lose that 1 electron readily in reactions", "Never react with anything", "Gain a full new energy level"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Atomic Structure Revisited: Electron Configuration' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Write the electron configuration for chlorine, identify its valence electrons, and predict whether it gains or loses electrons in reactions.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Periodic Trends: Atomic Radius, Electronegativity & Reactivity' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'Atomic radius generally increases as you move:', '["Left to right across a period", "Top to bottom down a group", "Neither direction affects radius", "Only diagonally"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Periodic Trends: Atomic Radius, Electronegativity & Reactivity' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'Which element is generally considered the most electronegative?', '["Sodium", "Fluorine", "Potassium", "Helium"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Periodic Trends: Atomic Radius, Electronegativity & Reactivity' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Compare two elements from the same period, predicting atomic radius and electronegativity trends and explaining your reasoning.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Periodic Trends Data Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'short_answer', 'Submit your atomic radius data table for your chosen period or group.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Periodic Trends Data Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'short_answer', 'Describe the trend you identified and whether it matches the predicted pattern.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Periodic Trends Data Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Explain the atomic-level reason for this trend, and predict the trend for an untested period or group.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Atomic Structure & the Periodic Table' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'Which orbital type holds a maximum of 2 electrons?', '["s", "p", "d", "f"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Atomic Structure & the Periodic Table' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'Electronegativity generally increases as you move:', '["Down a group", "Left to right across a period", "Only diagonally", "It never changes"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Atomic Structure & the Periodic Table' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'multiple_choice', 'An element''s valence electrons are found in its:', '["Nucleus", "Innermost shell only", "Outermost energy level", "Neutrons"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Atomic Structure & the Periodic Table' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 4, 'short_answer', 'Explain why potassium reacts more vigorously with water than sodium, using periodic trends.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Chemical Bonding Deep Dive: Lewis Structures' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'The octet rule states that atoms are generally most stable with how many valence electrons?', '["2", "6", "8", "10"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Chemical Bonding Deep Dive: Lewis Structures' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'In a Lewis structure, a single bond represents how many shared electrons?', '["1", "2", "4", "8"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Chemical Bonding Deep Dive: Lewis Structures' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Draw or describe the Lewis structure for ammonia (NH3), confirming nitrogen achieves a full octet.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Types of Chemical Reactions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'A reaction where a hydrocarbon reacts with oxygen to release energy, CO2, and water is called:', '["Synthesis", "Decomposition", "Combustion", "Single replacement"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Types of Chemical Reactions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'Balancing a chemical equation is required because of the:', '["Law of conservation of mass", "Octet rule", "Periodic trend rule", "Ideal gas law"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Types of Chemical Reactions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Classify the reaction 2H2 + O2 → 2H2O and explain how to verify the equation is balanced.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Energy in Reactions: Exothermic & Endothermic' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'A reaction that releases heat to its surroundings is called:', '["Endothermic", "Exothermic", "Non-reactive", "Neutral"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Energy in Reactions: Exothermic & Endothermic' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'Activation energy is best described as:', '["Energy released only by endothermic reactions", "The initial energy input needed to start a reaction", "The total energy of the universe", "A type of chemical bond"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Energy in Reactions: Exothermic & Endothermic' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Explain the difference between exothermic and endothermic reactions with a real-world example of each, and explain why exothermic reactions still need activation energy.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Kitchen Chemistry Reaction Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'short_answer', 'Describe your 2 chosen reactions and your observations for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Kitchen Chemistry Reaction Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'short_answer', 'Classify each reaction by type.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Kitchen Chemistry Reaction Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Determine whether each reaction was exothermic or endothermic, with reasoning.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Kitchen Chemistry Reaction Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Bonding & Chemical Reactions' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 4, 'short_answer', 'Write a balanced equation (or best attempt) for at least one reaction.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Mole: Chemistry''s Counting Unit' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'Avogadro''s number represents:', '["The number of protons in any atom", "The number of particles in one mole of a substance", "The molar mass of hydrogen", "The number of electrons in an ion"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Mole: Chemistry''s Counting Unit' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'Molar mass is expressed in units of:', '["Liters per mole", "Grams per mole", "Moles per gram", "Particles per gram"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Mole: Chemistry''s Counting Unit' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Calculate the number of moles in 44.0 grams of CO2 (molar mass 44.01 g/mol), showing your work, and calculate the number of molecules this represents.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Stoichiometry: Using Balanced Equations to Predict Amounts' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'In stoichiometry, the coefficients in a balanced equation represent:', '["Atomic masses", "Mole ratios between substances", "Temperature values", "Electron counts"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Stoichiometry: Using Balanced Equations to Predict Amounts' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'For 2H2 + O2 → 2H2O, the mole ratio of H2 to H2O is:', '["2:1", "1:2", "1:1", "2:2, which simplifies to 1:1"]'::jsonb, 3),
((SELECT id FROM lessons WHERE title='Stoichiometry: Using Balanced Equations to Predict Amounts' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'For N2 + 3H2 → 2NH3, calculate the moles of NH3 produced from 6 moles of H2, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Stoichiometry in the Real World' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'short_answer', 'Describe your chosen real-world stoichiometry application and its balanced equation.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Stoichiometry in the Real World' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'short_answer', 'Show your full stoichiometry calculation, including moles and grams.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Stoichiometry in the Real World' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Explain why this calculation matters in your chosen real-world application.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Stoichiometry & the Mole' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'One mole of any substance contains how many particles?', '["1,000", "6.022 x 10^23", "12", "100"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Stoichiometry & the Mole' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'To convert grams to moles, you should:', '["Multiply by molar mass", "Divide by molar mass", "Multiply by the particle-counting constant", "Subtract molar mass"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Stoichiometry & the Mole' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'multiple_choice', 'In a balanced equation, the coefficients represent:', '["Grams of each substance", "Mole ratios", "Temperature changes", "Electron transfers"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Stoichiometry & the Mole' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Stoichiometry & the Mole' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 4, 'short_answer', 'Calculate the number of moles in 20.0 grams of a substance with molar mass 40.0 g/mol, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Solutions: Concentration & Solubility' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'Molarity is calculated as:', '["Moles of solute times liters of solution", "Moles of solute divided by liters of solution", "Grams of solute divided by grams of solvent", "Liters of solvent divided by moles of solute"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Solutions: Concentration & Solubility' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'For most gases dissolved in liquid, solubility generally:', '["Increases with temperature", "Decreases with temperature", "Is unaffected by temperature", "Only depends on pressure, never temperature"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Solutions: Concentration & Solubility' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Calculate the molarity of a solution with 3 moles of solute in 1.5 liters of solution, and explain why cold soda stays fizzy longer than warm soda.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Acids, Bases & the pH Scale' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'multiple_choice', 'A solution with pH 7 is considered:', '["Strongly acidic", "Strongly basic", "Neutral", "Impossible to have a pH"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Acids, Bases & the pH Scale' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'multiple_choice', 'Each whole-number step on the pH scale represents a change in acidity/basicity of:', '["2 times", "10 times", "100 times", "No change at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Acids, Bases & the pH Scale' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Explain why pH 3 is 100 times more acidic than pH 5, and describe a real-world neutralization reaction.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Household Chemistry Product Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 1, 'short_answer', 'List your 3 household products and their key active chemical ingredients.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Household Chemistry Product Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 2, 'short_answer', 'Classify each ingredient as acidic, basic, or neutral, noting approximate pH if known.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Household Chemistry Product Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 3, 'short_answer', 'Describe the bonding type of one ingredient and connect it to a physical property.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Household Chemistry Product Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Solutions, Acids & Bases' AND course_id=(SELECT id FROM courses WHERE slug='venture-chemistry'))), 4, 'short_answer', 'Describe your reasoned prediction of what would happen if two products were mixed, and write your 4-6 sentence reflection.', NULL, NULL);
