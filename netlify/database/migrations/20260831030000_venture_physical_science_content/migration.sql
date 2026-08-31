-- Physical Science (Grades 8-9) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the established Venture Studio template: 4 units, 15 lessons, 2 small projects, 2 major projects
-- (L8 and full-semester capstone L15), aligned to the NC Standard Course of Study (Physical Science).

UPDATE courses SET status = 'published' WHERE slug = 'venture-physical-science';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-physical-science'), 'Unit 1: Matter & Its Properties', 0),
((SELECT id FROM courses WHERE slug='venture-physical-science'), 'Unit 2: Atomic Structure & the Periodic Table', 1),
((SELECT id FROM courses WHERE slug='venture-physical-science'), 'Unit 3: Forces & Motion', 2),
((SELECT id FROM courses WHERE slug='venture-physical-science'), 'Unit 4: Energy & Its Transformations', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'What Is Matter? Properties & Classification', 1, 'lesson',
  $lesson$## Matter: Everything Around You

**Matter** is anything that has mass and takes up space — which means almost everything you can see, touch, or measure is matter.

### Physical vs. Chemical Properties

- **Physical properties** can be observed or measured without changing what the substance is — color, density, melting point, hardness.
- **Chemical properties** describe how a substance reacts or changes into a different substance — flammability, reactivity with acid, ability to rust.

### States of Matter

Matter commonly exists in three familiar states — **solid** (fixed shape and volume), **liquid** (fixed volume, takes the shape of its container), and **gas** (no fixed shape or volume, expands to fill its container) — plus **plasma**, a high-energy state found in stars and lightning.

### Physical vs. Chemical Changes

- **Physical change** — the substance's form changes but it's still the same substance (ice melting into water, paper being torn).
- **Chemical change** — a new substance is formed with different properties (wood burning into ash and smoke, iron rusting).

### Worked Example

Cutting a piece of paper is a physical change — it's still paper, just in smaller pieces. Burning that same paper is a chemical change — the ash and smoke are chemically different substances than the paper that existed before.

### Your Turn

List three physical properties and one chemical property of a substance of your choice (water, iron, wood, etc.), then describe one physical change and one chemical change that substance could undergo, explaining what makes each one physical or chemical.$lesson$,
  '8.P.1.1', 'Classify matter based on physical and chemical properties and distinguish physical from chemical changes.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'States of Matter & Phase Changes', 2, 'lesson',
  $lesson$## Phase Changes: Matter in Motion

Matter can shift between states through **phase changes**, which happen when energy (usually as heat) is added or removed — without changing what the substance actually is chemically.

### The Six Phase Changes

- **Melting** (solid → liquid) and **Freezing** (liquid → solid)
- **Vaporization/boiling** (liquid → gas) and **Condensation** (gas → liquid)
- **Sublimation** (solid → gas, skipping liquid — like dry ice) and **Deposition** (gas → solid, like frost forming)

### Particle Motion & Energy

At the particle level, adding energy makes particles move faster and spread farther apart (solid → liquid → gas), while removing energy slows particles down and lets them pack closer together (gas → liquid → solid). Temperature during a phase change often stays constant even while heat is still being added or removed — that energy is being used to break or form the bonds between particles, not to raise the temperature.

### Worked Example

When ice is heated, its temperature rises to 0°C and then holds steady while it melts completely into water — even though heat is still being applied the whole time. Only after all the ice has melted does the water's temperature start rising again. That "flat" section of a heating graph is the telltale sign of a phase change happening.

### Your Turn

Sketch or describe a heating curve for water starting as ice at -10°C and ending as steam at 110°C, labeling where each state exists and where each phase change occurs, and explain what's happening to the water molecules at each labeled point.$lesson$,
  '8.P.1.2', 'Explain phase changes in terms of the arrangement and motion of particles and energy transfer.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Small Project: Density & Buoyancy Investigation', 3, 'practice',
  $lesson$## Small Project: Density & Buoyancy Investigation

Density — mass per unit volume — explains why some objects float and others sink, a concept engineers use every day, from designing ships to submarines.

### Background

**Density = mass ÷ volume.** An object floats in a fluid if its density is less than the fluid's density, and sinks if its density is greater.

### Your Task

1. **Gather or identify 5 small objects** with different materials (a coin, a piece of wood, a rubber eraser, an ice cube, a small rock, etc.) — real or researched.
2. **Predict** whether each will float or sink in water (density of water ≈ 1 g/mL), and explain your reasoning based on the material.
3. **Test your predictions** if you have access to the objects and a container of water, or research the actual density of each material to check your prediction.
4. **Calculate** the density of at least one object if you can measure or find its mass and volume.
5. **Explain** how a massive steel ship can float even though steel itself is much denser than water (hint: think about the ship's overall shape and the volume of water it displaces).

### Deliverable

Submit your 5 predictions with reasoning, your test/research results, your density calculation, and your explanation of how steel ships float.$lesson$,
  '8.P.1.3', 'Investigate density and buoyancy and explain why objects float or sink in a fluid.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Unit 1 Quiz: Matter & Its Properties', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of matter's physical and chemical properties, phase changes, and density/buoyancy before we move into atomic structure.$lesson$,
  '8.P.1.1–3', 'Assesses matter classification, phase changes, and density/buoyancy concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Atoms: The Building Blocks of Matter', 5, 'lesson',
  $lesson$## Inside the Atom

Everything in the universe made of matter is built from **atoms** — incredibly small particles that are themselves made of even smaller subatomic particles.

### The Three Subatomic Particles

- **Protons** — positively charged, found in the nucleus; the number of protons defines what element an atom is.
- **Neutrons** — no charge (neutral), also found in the nucleus; add mass and stability.
- **Electrons** — negatively charged, found in a cloud around the nucleus; involved in chemical bonding.

### Atomic Number & Mass Number

- **Atomic number** = number of protons (this is what makes an element unique — every carbon atom has exactly 6 protons).
- **Mass number** = protons + neutrons.
- **Isotopes** are atoms of the same element with different numbers of neutrons (same protons, different mass numbers).

### Worked Example

Carbon-12 and Carbon-14 are both carbon (6 protons each), but Carbon-14 has 2 extra neutrons, giving it a mass number of 14 instead of 12. Because Carbon-14 is unstable, it slowly decays at a known rate — which is exactly why scientists use it to date ancient fossils and artifacts (radiocarbon dating).

### Your Turn

An atom has 8 protons, 8 neutrons, and 8 electrons. Identify its atomic number and mass number, name the element (using a periodic table if needed), and explain what would change if it had 10 neutrons instead of 8.$lesson$,
  '8.P.2.1', 'Describe the structure of the atom, including protons, neutrons, electrons, atomic number, and isotopes.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'The Periodic Table: Organizing the Elements', 6, 'lesson',
  $lesson$## The Periodic Table: A Map of All Matter

The periodic table organizes every known element by atomic number, and its layout reveals patterns in how elements behave.

### Rows & Columns

- **Periods (rows)** — elements in the same period have the same number of electron shells.
- **Groups (columns)** — elements in the same group have the same number of valence (outermost) electrons, which gives them similar chemical behavior.

### Major Categories

- **Metals** (left/center) — typically shiny, conductive, malleable, tend to lose electrons in reactions.
- **Nonmetals** (right) — typically dull, poor conductors, brittle if solid, tend to gain electrons in reactions.
- **Metalloids** (the staircase line between metals and nonmetals) — share properties of both.

### Worked Example

Sodium (group 1) and potassium (also group 1) both have just 1 valence electron, which is why both react violently and similarly when dropped in water — group membership predicts chemical behavior even before you test it. Meanwhile, the noble gases (group 18) have full outer electron shells, which is exactly why they almost never react with anything.

### Your Turn

Choose two elements from the same group on the periodic table and explain why you'd expect them to behave similarly, based on valence electrons. Then choose one metal and one nonmetal and describe one property that distinguishes them.$lesson$,
  '8.P.2.2', 'Use the periodic table to identify element properties, groups, periods, and trends.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Chemical Bonding: Ionic & Covalent Bonds', 7, 'lesson',
  $lesson$## How Atoms Connect: Chemical Bonds

Atoms bond with each other to become more stable, generally by achieving a full outer electron shell — and the way they achieve that determines the type of bond.

### Ionic Bonds

Form when one atom **transfers** electrons to another — typically a metal giving up electrons to a nonmetal. This creates charged particles called **ions** (positive cations and negative anions) that attract each other. Table salt, NaCl, forms when sodium gives up an electron to chlorine.

### Covalent Bonds

Form when atoms **share** electrons rather than transferring them completely — typically between two nonmetals. Water, H2O, forms through covalent bonds where oxygen shares electrons with two hydrogen atoms.

### Comparing the Two

Ionic compounds tend to form hard, brittle crystals with high melting points and conduct electricity when dissolved in water. Covalent compounds tend to have lower melting points and don't conduct electricity as well, since there are no free-moving charged ions.

### Worked Example

Sodium has 1 valence electron it "wants" to lose; chlorine has 7 valence electrons and "wants" 1 more to complete its shell. When sodium transfers its 1 electron to chlorine, both atoms end up with full outer shells and opposite charges — and they snap together ionically to form NaCl.

### Your Turn

Explain whether you'd expect a bond between two nonmetal atoms to be ionic or covalent, and why. Then describe one real-world property difference (melting point, conductivity, etc.) you'd expect between an ionic compound and a covalent compound.$lesson$,
  '8.P.2.3', 'Compare ionic and covalent bonding and explain how electron transfer or sharing creates chemical bonds.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'MAJOR PROJECT 1: Build-an-Element Periodic Table Profile', 8, 'practice',
  $lesson$## Major Project: Build-an-Element Periodic Table Profile

Time to become an expert on one specific element, using everything from atomic structure through chemical bonding.

### Your Task

1. **Choose one element** from the periodic table (any element that interests you).
2. **Report its basics**: atomic number, atomic mass, number of protons/neutrons/electrons, group and period.
3. **Classify it**: metal, nonmetal, or metalloid, and describe one physical property typical of that category.
4. **Describe its bonding behavior**: based on its group/valence electrons, would this element be more likely to form ionic or covalent bonds? Give one real compound it forms as an example if you can find one.
5. **Real-world connection**: describe one real-world use of this element (in technology, medicine, industry, biology, etc.).

### Deliverable

Submit your full element profile covering all five sections above, formatted like a scientific fact sheet.$lesson$,
  '8.P.2.1–3', 'Applies atomic structure, periodic table trends, and bonding concepts to a researched element profile.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Newton''s Laws of Motion', 9, 'lesson',
  $lesson$## Newton's Three Laws: The Rules of Motion

Sir Isaac Newton's three laws of motion describe how and why objects move the way they do — rules that apply to everything from a rolling ball to a rocket launch.

### The Three Laws

1. **Law of Inertia** — An object at rest stays at rest, and an object in motion stays in motion at constant velocity, unless acted on by an unbalanced force.
2. **F = ma** — Force equals mass times acceleration. A greater force produces greater acceleration; a greater mass requires more force to accelerate the same amount.
3. **Action-Reaction** — For every action, there is an equal and opposite reaction force.

### Worked Example

When you jump off a small boat onto a dock, the boat moves backward as you push off (Newton's third law — your push forward creates an equal push on the boat backward). A heavier boat moves back less than a lighter one for the same push, because more mass requires more force to accelerate the same amount (Newton's second law).

### Everyday Applications

Seatbelts work because of inertia — your body wants to keep moving forward in a sudden stop unless something (the seatbelt) applies an unbalanced force to stop you too. Rockets launch by expelling gas downward at high speed, and the equal-and-opposite reaction force pushes the rocket upward.

### Your Turn

Choose a real-world scenario (sports, driving, space travel, etc.) and identify all three of Newton's laws at work within it, explaining specifically how each law applies.$lesson$,
  '8.P.3.1', 'Apply Newton''s three laws of motion to explain everyday phenomena.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Speed, Velocity & Acceleration', 10, 'lesson',
  $lesson$## Describing Motion: Speed, Velocity & Acceleration

To describe motion precisely, scientists use three related but distinct quantities.

### The Three Quantities

- **Speed** = distance ÷ time — how fast something is moving, with no direction (a scalar quantity).
- **Velocity** = speed **with** a direction (a vector quantity) — "60 mph north" is a velocity; "60 mph" alone is just speed.
- **Acceleration** = the rate of change of velocity over time — speeding up, slowing down, OR changing direction all count as acceleration.

### Worked Example

A car traveling at a constant 60 mph around a curve is changing direction, which means its velocity is changing even though its speed stays the same — so the car IS accelerating, even without speeding up or slowing down. This surprises many people, since "acceleration" in everyday language usually just means "speeding up."

### Calculating Acceleration

Acceleration = (final velocity − initial velocity) ÷ time. A car that goes from 0 to 60 mph in 6 seconds has an average acceleration of 10 mph per second.

### Your Turn

Explain why a car driving at a constant speed around a circular track is still considered to be accelerating. Then calculate the acceleration of a cyclist who speeds up from 5 m/s to 15 m/s over 5 seconds, showing your work.$lesson$,
  '8.P.3.2', 'Distinguish speed, velocity, and acceleration and calculate acceleration from changes in velocity.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Small Project: Design a Rube Goldberg Force Chain', 11, 'practice',
  $lesson$## Small Project: Design a Rube Goldberg Force Chain

A Rube Goldberg machine uses a chain reaction of simple actions to accomplish a simple task in the most complicated way possible — and every single step involves forces and motion.

### Your Task

1. **Design (on paper or digitally) a chain reaction** of at least 5 steps that accomplishes a simple task (turning off a light, dropping a ball into a cup, closing a door) — real, buildable, or purely imagined.
2. **For each of the 5 steps**, identify the force(s) involved (gravity, friction, applied force, tension, normal force, etc.) and describe the motion that results.
3. **Identify at least one place** in your chain where Newton's third law (action-reaction) is clearly at work.
4. **Identify at least one place** where friction either helps or hurts your machine's function, and explain which.

### Deliverable

Submit your 5-step chain reaction description, the forces and motion at each step, your action-reaction example, and your friction example.$lesson$,
  '8.P.3.1–2', 'Applies forces and motion concepts to design and analyze a multi-step chain reaction machine.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Unit 3 Quiz: Forces & Motion', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of Newton's laws, speed/velocity/acceleration before we move into energy and its transformations.$lesson$,
  '8.P.3.1–2', 'Assesses Newton''s three laws and speed/velocity/acceleration concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Energy: Forms & Transformations', 13, 'lesson',
  $lesson$## Energy: The Ability to Do Work

**Energy** is the ability to do work or cause change, and it exists in many forms that can transform from one to another — but energy itself is never created or destroyed.

### Major Forms of Energy

- **Kinetic energy** — energy of motion (a moving car, a thrown ball).
- **Potential energy** — stored energy based on position or condition (a ball held up high, a stretched rubber band, a charged battery).
- **Thermal (heat) energy**, **chemical energy**, **electrical energy**, **light (radiant) energy**, **sound energy**, **nuclear energy**.

### The Law of Conservation of Energy

Energy cannot be created or destroyed — only transformed from one form to another or transferred from one object to another. The total amount of energy in a closed system stays constant.

### Worked Example

A roller coaster at the top of its first hill has maximum potential energy and minimal kinetic energy. As it descends, that potential energy converts into kinetic energy, reaching maximum kinetic energy (and top speed) at the bottom of the hill. Some energy is also lost to friction and air resistance as heat and sound — but the total energy is still conserved, just spread across more forms.

### Your Turn

Trace the energy transformations in a real-world example of your choice (a flashlight, a car engine, a wind turbine, your own body eating food and moving) — name at least three forms of energy involved and the order they transform in.$lesson$,
  '9.P.1.1', 'Identify forms of energy and apply the law of conservation of energy to explain energy transformations.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'Heat Transfer: Conduction, Convection & Radiation', 14, 'lesson',
  $lesson$## How Heat Moves: Three Methods of Transfer

Thermal energy always flows from hotter objects/areas to cooler ones, and it does so through three distinct methods.

### The Three Methods

- **Conduction** — heat transfer through direct contact between particles (a metal spoon getting hot in a pot of soup).
- **Convection** — heat transfer through the movement of fluid (liquid or gas), where warmer, less dense fluid rises and cooler, denser fluid sinks (boiling water circulating, warm air rising in a room).
- **Radiation** — heat transfer through electromagnetic waves, requiring no direct contact or medium at all (the sun warming Earth across empty space).

### Worked Example

Standing near a campfire, you experience all three methods at once: the fire radiates heat directly through the air to warm your skin (radiation), the air around the fire heats up and rises, creating convection currents you can feel as moving warm air, and if you touch a metal poker that's been in the fire, heat conducts directly into your hand.

### Insulators & Conductors

Materials that transfer heat easily (metals) are called **thermal conductors**; materials that resist heat transfer (wood, plastic, air) are called **thermal insulators** — which is exactly why pot handles are often plastic or wood, not metal.

### Your Turn

Identify a real-world example of each of the three heat transfer methods happening in your own daily life (kitchen, outdoors, your house's heating/cooling), and explain why understanding heat transfer matters for designing efficient homes or clothing.$lesson$,
  '9.P.1.2', 'Compare conduction, convection, and radiation as methods of heat transfer.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science')),
  'MAJOR PROJECT 2 CAPSTONE: Energy Efficiency Investigation', 15, 'practice',
  $lesson$## Capstone Project: Energy Efficiency Investigation

For your final Physical Science project, you'll investigate energy transformations and efficiency in a real system — bringing together matter, atomic structure, forces/motion, and energy from this entire semester.

### Your Task

1. **Choose a real energy system** to investigate (a light bulb, a car engine, a phone charger, a wind turbine, your home's heating system, or another system of your choice).
2. **Trace the full energy transformation chain**: what form of energy goes in, what transformations happen, and what useful form of energy comes out?
3. **Identify energy losses**: no real system is 100% efficient — identify at least one place where energy is "lost" (usually as unwanted heat or sound) and explain which heat transfer method is responsible.
4. **Connect to matter and forces**: describe how the matter (materials/atomic structure) and/or forces involved in your system relate to how it works (conductors vs. insulators, friction, Newton's laws, etc.).
5. **Propose one improvement** that could make your chosen system more energy-efficient, and explain your reasoning using energy concepts from this semester.

### Deliverable

Submit your full investigation covering all five sections above.$lesson$,
  '9.P.1.1–2', 'Synthesizes matter, atomic structure, forces/motion, and energy concepts into a real-system efficiency investigation.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='What Is Matter? Properties & Classification' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Which is an example of a chemical property?', '["Color", "Density", "Flammability", "Melting point"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='What Is Matter? Properties & Classification' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'Burning wood is an example of a:', '["Physical change only", "Chemical change, since new substances form", "Change of state only", "Non-example of matter"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='What Is Matter? Properties & Classification' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Describe two physical properties and one chemical property of a substance, then describe one physical change and one chemical change it could undergo.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='States of Matter & Phase Changes' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Sublimation refers to a substance changing directly from:', '["Liquid to gas", "Solid to liquid", "Solid to gas", "Gas to liquid"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='States of Matter & Phase Changes' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'During a phase change, why does temperature often stay constant even as heat is added?', '["Heat is not actually being added", "The energy is being used to change particle arrangement, not raise temperature", "The substance stops absorbing energy", "Phase changes never involve energy"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='States of Matter & Phase Changes' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Describe a heating curve for water from ice to steam, labeling each state and phase change, and explain the particle-level changes at each stage.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Density & Buoyancy Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'short_answer', 'List your 5 objects with your float/sink predictions and reasoning.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Density & Buoyancy Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'short_answer', 'Report your test results or research findings for each object.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Density & Buoyancy Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Show your density calculation for at least one object and explain how a steel ship can float despite steel being denser than water.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Matter & Its Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Which is a physical property, not a chemical property?', '["Flammability", "Reactivity with acid", "Density", "Ability to rust"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Matter & Its Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'An object will float in water if its density is:', '["Greater than the density of water", "Equal to zero", "Less than the density of water", "Exactly equal to the density of water only"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Matter & Its Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'multiple_choice', 'Condensation is the phase change from:', '["Solid to liquid", "Gas to liquid", "Liquid to gas", "Solid to gas"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Matter & Its Properties' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Matter & Its Properties' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 4, 'short_answer', 'Explain, using density, why a solid block of steel sinks but a steel ship floats.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Atoms: The Building Blocks of Matter' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'What determines which element an atom is?', '["Number of neutrons", "Number of protons", "Number of electrons only", "Total mass"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Atoms: The Building Blocks of Matter' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'Isotopes of the same element differ in their number of:', '["Protons", "Neutrons", "Electrons only", "Nothing — isotopes are identical"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Atoms: The Building Blocks of Matter' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'For an atom with 8 protons, 8 neutrons, and 8 electrons, identify its atomic number, mass number, and element name, then explain what changes if it had 10 neutrons instead.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Periodic Table: Organizing the Elements' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Elements in the same group of the periodic table share the same:', '["Number of protons", "Number of valence electrons", "Atomic mass exactly", "Number of neutrons"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Periodic Table: Organizing the Elements' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'Noble gases (group 18) are generally unreactive because:', '["They have no electrons at all", "Their outer electron shell is full", "They are always liquids", "They have no protons"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Periodic Table: Organizing the Elements' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Choose two elements from the same group and explain why they behave similarly, then contrast one metal and one nonmetal property.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Chemical Bonding: Ionic & Covalent Bonds' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'An ionic bond forms when electrons are:', '["Shared equally between two atoms", "Transferred completely from one atom to another", "Destroyed entirely", "Never involved at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Chemical Bonding: Ionic & Covalent Bonds' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'A covalent bond is most likely to form between:', '["A metal and a nonmetal", "Two nonmetals", "Two noble gases", "Two metals"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Chemical Bonding: Ionic & Covalent Bonds' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Explain whether a bond between two nonmetals is likely ionic or covalent and why, and describe one property difference between ionic and covalent compounds.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build-an-Element Periodic Table Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'short_answer', 'Report your chosen element''s atomic number, mass, and proton/neutron/electron counts.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build-an-Element Periodic Table Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'short_answer', 'Classify your element as metal, nonmetal, or metalloid, and describe one typical property.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build-an-Element Periodic Table Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Describe your element''s likely bonding behavior (ionic or covalent) and give a real compound example if possible.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build-an-Element Periodic Table Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Atomic Structure & the Periodic Table' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 4, 'short_answer', 'Describe one real-world use of your element.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Newton''s Laws of Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Newton''s first law is also known as the law of:', '["Gravity", "Inertia", "Acceleration", "Action-reaction"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Newton''s Laws of Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'According to F = ma, if mass increases and force stays the same, acceleration will:', '["Increase", "Decrease", "Stay exactly the same", "Become zero"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Newton''s Laws of Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Choose a real-world scenario and identify all three of Newton''s laws at work, explaining each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Speed, Velocity & Acceleration' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Velocity differs from speed because velocity includes:', '["Time", "Direction", "Mass", "Force"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Speed, Velocity & Acceleration' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'A car moving at constant speed around a curve is:', '["Not accelerating, since speed is constant", "Accelerating, because its direction (velocity) is changing", "Moving at zero velocity", "Not in motion at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Speed, Velocity & Acceleration' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Calculate the acceleration of a cyclist speeding up from 5 m/s to 15 m/s over 5 seconds, showing your work, and explain why a car turning at constant speed is still accelerating.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Design a Rube Goldberg Force Chain' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'short_answer', 'Describe your 5-step chain reaction machine.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Design a Rube Goldberg Force Chain' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'short_answer', 'For each step, identify the force(s) involved and the resulting motion.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Design a Rube Goldberg Force Chain' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Identify your action-reaction example and your friction example, explaining each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Forces & Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Which law states that objects in motion stay in motion unless acted on by an unbalanced force?', '["The first law of motion", "The second law of motion", "The third law of motion", "The law of conservation of energy"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Forces & Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'Which of the following counts as acceleration?', '["Only speeding up", "Only slowing down", "Speeding up, slowing down, or changing direction", "Only moving at constant velocity"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Forces & Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'multiple_choice', 'A rocket launching upward by expelling gas downward demonstrates:', '["The law of inertia", "F = ma only", "The third law of motion (action-reaction)", "No physical law"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Forces & Motion' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Forces & Motion' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 4, 'short_answer', 'Calculate the acceleration of an object that goes from 10 m/s to 30 m/s in 4 seconds, and explain which of Newton''s laws is most relevant to describing why a force was needed to cause that change.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Energy: Forms & Transformations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'The energy of motion is called:', '["Potential energy", "Kinetic energy", "Chemical energy", "Nuclear energy"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Energy: Forms & Transformations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'The law of conservation of energy states that energy:', '["Can be created but not destroyed", "Can be destroyed but not created", "Cannot be created or destroyed, only transformed", "Only exists in living things"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Energy: Forms & Transformations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Trace the energy transformations in a real-world example, naming at least three forms of energy involved in order.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Heat Transfer: Conduction, Convection & Radiation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'multiple_choice', 'Which method of heat transfer requires no direct contact or medium?', '["Conduction", "Convection", "Radiation", "None of these"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Heat Transfer: Conduction, Convection & Radiation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'multiple_choice', 'A pot handle made of plastic or wood is an example of using a thermal:', '["Conductor, to transfer heat quickly", "Insulator, to resist heat transfer", "Radiator, to emit heat", "Convector, to circulate heat"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Heat Transfer: Conduction, Convection & Radiation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Identify one real-world example of each heat transfer method (conduction, convection, radiation) from your own life.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Energy Efficiency Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 1, 'short_answer', 'Describe your chosen energy system and its purpose.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Energy Efficiency Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 2, 'short_answer', 'Trace the full energy transformation chain from input to useful output.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Energy Efficiency Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 3, 'short_answer', 'Identify where energy is lost in your system and which heat transfer method is responsible.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Energy Efficiency Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Energy & Its Transformations' AND course_id=(SELECT id FROM courses WHERE slug='venture-physical-science'))), 4, 'short_answer', 'Connect your system to matter/atomic structure or forces concepts, and propose one efficiency improvement with reasoning.', NULL, NULL);
