-- Physics (Grades 11-12) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the established Venture Studio template: 4 units, 15 lessons, 2 small projects, 2 major projects
-- (L8 and full-semester capstone L15), aligned to the NC Standard Course of Study (Physics).

UPDATE courses SET status = 'published' WHERE slug = 'venture-physics';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-physics'), 'Unit 1: Kinematics & Newtonian Mechanics', 0),
((SELECT id FROM courses WHERE slug='venture-physics'), 'Unit 2: Energy, Work & Momentum', 1),
((SELECT id FROM courses WHERE slug='venture-physics'), 'Unit 3: Waves, Sound & Light', 2),
((SELECT id FROM courses WHERE slug='venture-physics'), 'Unit 4: Electricity & Magnetism', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Kinematics: Describing Motion with Math', 1, 'lesson',
  $lesson$## Kinematics: The Mathematics of Motion

**Kinematics** is the branch of physics that describes motion mathematically, without worrying about what's causing it.

### The Key Kinematic Equations (Constant Acceleration)

- v = v0 + at (final velocity = initial velocity + acceleration × time)
- d = v0t + ½at² (displacement)
- v² = v0² + 2ad (velocity without needing time)

Where v0 is initial velocity, v is final velocity, a is acceleration, t is time, and d is displacement.

### Graphing Motion

- A **position-time graph**'s slope represents velocity.
- A **velocity-time graph**'s slope represents acceleration, and the area under the curve represents displacement.

### Worked Example

A car accelerates from rest (v0 = 0) at 4 m/s² for 5 seconds. Using v = v0 + at: v = 0 + (4)(5) = **20 m/s**. Using d = v0t + ½at²: d = 0 + ½(4)(5²) = ½(4)(25) = **50 meters** traveled.

### Your Turn

A cyclist accelerates from 2 m/s to 10 m/s over 4 seconds. Calculate the cyclist's acceleration, and then calculate the total distance traveled during that time using the appropriate kinematic equation, showing your work.$lesson$,
  '11.P.1.1', 'Apply kinematic equations to solve problems involving position, velocity, and acceleration.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Newton''s Laws Applied: Free Body Diagrams', 2, 'lesson',
  $lesson$## Free Body Diagrams: Visualizing Every Force

A **free body diagram** isolates a single object and shows every force acting on it as an arrow, with length representing relative magnitude and direction showing where the force points.

### Common Forces to Include

- **Weight (gravity)** — always points straight down, calculated as mass × gravitational acceleration (Fg = mg).
- **Normal force** — the surface pushing back perpendicular to itself, opposing weight.
- **Applied force** — any push or pull from outside (a hand, a rope, an engine).
- **Friction** — opposes motion (or attempted motion), parallel to the surface.
- **Tension** — the pulling force transmitted through a rope, cable, or string.

### Net Force & Newton's Second Law

Once all forces are drawn, you calculate the **net force** (the vector sum of all forces). Newton's second law, F = ma, uses this net force to determine the object's acceleration — if forces are balanced (net force = 0), the object doesn't accelerate at all (constant velocity or at rest).

### Worked Example

A 10 kg box sits on a table, with a person pushing it horizontally with 30 N of force, while friction resists with 20 N. The net horizontal force is 30 − 20 = 10 N. Using F = ma: a = F/m = 10/10 = **1 m/s²** — the box accelerates at 1 m/s² in the direction of the push.

### Your Turn

Draw (or describe) a free body diagram for a 5 kg box being pulled with 25 N of applied force while friction resists with 10 N. Calculate the net force and the resulting acceleration, showing your work.$lesson$,
  '11.P.1.2', 'Construct free body diagrams and apply Newton''s second law to calculate net force and acceleration.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Small Project: Projectile Motion Investigation', 3, 'practice',
  $lesson$## Small Project: Projectile Motion Investigation

**Projectile motion** combines horizontal motion (constant velocity, no horizontal forces if we ignore air resistance) with vertical motion (constant acceleration due to gravity) — two independent motions happening at once.

### Background

- Horizontal velocity stays constant throughout flight (ignoring air resistance).
- Vertical velocity changes constantly due to gravity (g ≈ 9.8 m/s² downward).
- The two motions are independent — you can analyze horizontal and vertical motion completely separately, then combine them.

### Your Task

1. **Choose a real or hypothetical projectile scenario** (a thrown ball, a launched water balloon, a kicked soccer ball, a model rocket).
2. **Identify or estimate** an initial horizontal and vertical velocity for your launch.
3. **Calculate the time of flight** using the vertical motion (how long until it returns to launch height, or hits the ground from a given height).
4. **Calculate the horizontal distance (range)** traveled during that time, using the constant horizontal velocity.
5. **Explain**: what would happen to the range if you doubled the initial vertical velocity (launch angle steeper) versus doubled the horizontal velocity (flatter launch)?

### Deliverable

Submit your scenario, your velocity estimates, your time-of-flight and range calculations, and your explanation of the launch-angle trade-off.$lesson$,
  '11.P.1.3', 'Analyze projectile motion by separately calculating horizontal and vertical components.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Unit 1 Quiz: Kinematics & Newtonian Mechanics', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of kinematic equations, free body diagrams, Newton's second law, and projectile motion before we move into energy, work, and momentum.$lesson$,
  '11.P.1.1–3', 'Assesses kinematics, free body diagrams, and projectile motion concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Work & Energy: Doing Physics on Objects', 5, 'lesson',
  $lesson$## Work & Energy: The Physics Connection

In physics, **work** has a precise definition: force applied over a distance, in the direction of motion. Work and energy are directly connected through the **work-energy theorem**.

### Defining Work

Work (W) = Force × distance × cos(θ), where θ is the angle between the force and the direction of motion. If you push something and it moves in the exact direction you pushed, W = F × d. If your force is perpendicular to motion (carrying a bag while walking, for example), you do zero work on it in the physics sense — even though it feels like effort.

### Kinetic & Potential Energy Formulas

- **Kinetic energy**: KE = ½mv² (energy of motion, depends on mass and velocity squared).
- **Gravitational potential energy**: PE = mgh (mass × gravitational acceleration × height).

### The Work-Energy Theorem

The net work done on an object equals its change in kinetic energy: W_net = ΔKE. This connects the force-based concept of work directly to the energy an object gains or loses.

### Worked Example

A 2 kg object is lifted 5 meters against gravity (g ≈ 9.8 m/s²). The work done against gravity equals the potential energy gained: W = PE = mgh = (2)(9.8)(5) = **98 Joules**.

### Your Turn

Calculate the kinetic energy of a 1,000 kg car moving at 20 m/s, and calculate the gravitational potential energy of a 50 kg person standing on a platform 3 meters high, showing your work for both.$lesson$,
  '11.P.2.1', 'Calculate work, kinetic energy, and gravitational potential energy and apply the work-energy theorem.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Conservation of Energy in Systems', 6, 'lesson',
  $lesson$## Conservation of Energy: The Universe's Strictest Rule

The **law of conservation of energy** states that energy cannot be created or destroyed in an isolated system — only transformed from one form to another, or transferred between objects.

### Mechanical Energy Conservation

In a system with no friction or air resistance, total mechanical energy (KE + PE) stays constant. As an object falls, it loses potential energy and gains an equal amount of kinetic energy.

### Real Systems & Energy "Loss"

In real systems, some mechanical energy is always converted to heat and sound through friction and air resistance — the energy isn't actually destroyed, just transformed into forms that are harder to use for further mechanical work.

### Worked Example

A roller coaster car at the top of a 20-meter hill (assuming negligible friction) has all its mechanical energy as potential energy. At the bottom of the hill, all of that potential energy has converted to kinetic energy: mgh = ½mv², which means v = √(2gh) = √(2 × 9.8 × 20) ≈ **19.8 m/s** at the bottom — regardless of the car's mass, since mass cancels out of the equation.

### Your Turn

A ball is dropped from a height of 10 meters (assume no air resistance). Using conservation of energy (mgh = ½mv²), calculate the ball's velocity just before it hits the ground, showing your work — and explain why the ball's mass doesn't affect the final answer.$lesson$,
  '11.P.2.2', 'Apply the law of conservation of energy to analyze mechanical systems.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Momentum & Collisions', 7, 'lesson',
  $lesson$## Momentum: Mass in Motion

**Momentum** (p = mv, mass × velocity) describes how difficult it is to stop a moving object, and it's central to understanding collisions.

### Conservation of Momentum

In a closed system with no external forces, total momentum before a collision equals total momentum after — the **law of conservation of momentum**.

### Types of Collisions

- **Elastic collisions** — both momentum AND kinetic energy are conserved (objects bounce off each other with no energy lost to heat/sound, like idealized billiard balls).
- **Inelastic collisions** — momentum is conserved, but kinetic energy is not (some converts to heat, sound, or deformation). A **perfectly inelastic collision** is when objects stick together after colliding.

### Worked Example

A 1,000 kg car moving at 15 m/s collides and sticks to a stationary 1,000 kg car (perfectly inelastic collision). Using conservation of momentum: (1000)(15) + (1000)(0) = (1000+1000)(v_final). Solving: 15,000 = 2,000 × v_final, so v_final = **7.5 m/s** — the combined wreckage moves at half the original speed, since the mass doubled while momentum was conserved.

### Your Turn

A 2 kg ball moving at 6 m/s collides and sticks to a stationary 4 kg ball (perfectly inelastic collision). Using conservation of momentum, calculate the final velocity of the combined mass, showing your work.$lesson$,
  '11.P.2.3', 'Apply the law of conservation of momentum to analyze elastic and inelastic collisions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'MAJOR PROJECT 1: Roller Coaster Energy Design Challenge', 8, 'practice',
  $lesson$## Major Project: Roller Coaster Energy Design Challenge

Time to design a roller coaster using real physics — energy conservation, kinetic/potential energy, and momentum.

### Your Task

1. **Design a simple roller coaster track** (described in words, sketched, or built as a model) with at least 3 hills of different heights, a loop, or a curve — your choice.
2. **Choose a starting height** for your coaster car (assume negligible friction for simplicity) and a car mass.
3. **Calculate** the maximum speed of the car (using conservation of energy) at the bottom of your tallest hill.
4. **Explain** why each subsequent hill on your track must be shorter than the previous highest point (hint: think about what energy is available after the first drop).
5. **Momentum check**: if your coaster (with your chosen mass) collided with a stationary object of a mass you choose, calculate the resulting velocity assuming a perfectly inelastic collision.

### Deliverable

Submit your track design, your maximum speed calculation, your explanation of the "each hill must be shorter" rule, and your momentum collision calculation.$lesson$,
  '11.P.2.1–3', 'Applies energy conservation and momentum concepts to design and analyze a roller coaster system.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Wave Properties & Behavior', 9, 'lesson',
  $lesson$## Waves: Energy on the Move

A **wave** transfers energy from one place to another without transferring matter itself — the water doesn't travel across the ocean, but the wave's energy does.

### Key Wave Properties

- **Wavelength (λ)** — the distance between two corresponding points on a wave (crest to crest).
- **Frequency (f)** — the number of wave cycles passing a point per second, measured in Hertz (Hz).
- **Amplitude** — the maximum displacement from rest position, related to the wave's energy (larger amplitude = more energy).
- **Wave speed**: v = fλ (speed equals frequency times wavelength).

### Transverse vs. Longitudinal Waves

- **Transverse waves** — particles move perpendicular to the direction of energy travel (light waves, water waves, a shaken rope).
- **Longitudinal waves** — particles move parallel (back and forth along) the direction of energy travel, through compressions and rarefactions (sound waves).

### Worked Example

A wave with a frequency of 5 Hz and a wavelength of 2 meters travels at v = fλ = 5 × 2 = **10 m/s**. If the frequency doubled to 10 Hz while wavelength stayed the same, the wave speed would double to 20 m/s (frequency and speed are directly proportional when wavelength is fixed).

### Your Turn

A sound wave has a frequency of 440 Hz (a musical note) and travels at approximately 340 m/s through air. Calculate its wavelength using v = fλ, showing your work. Then explain whether sound is a transverse or longitudinal wave, and why.$lesson$,
  '11.P.3.1', 'Describe wave properties (wavelength, frequency, amplitude, speed) and distinguish transverse from longitudinal waves.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Light & the Electromagnetic Spectrum', 10, 'lesson',
  $lesson$## Light: Waves of Pure Energy

Visible light is just one small slice of the much broader **electromagnetic spectrum** — all of which travels as waves (and particles) at the speed of light in a vacuum (about 3×10⁸ m/s).

### The Electromagnetic Spectrum (low to high energy/frequency)

Radio waves → Microwaves → Infrared → Visible light → Ultraviolet → X-rays → Gamma rays.

As you move from radio waves to gamma rays, frequency increases, wavelength decreases, and energy increases — all electromagnetic waves travel at the same speed, but differ in these three related properties.

### Reflection & Refraction

- **Reflection** — light bouncing off a surface, following the law of reflection (angle of incidence = angle of reflection).
- **Refraction** — light bending as it passes from one medium into another (like air into water) due to a change in speed, which is why a straw looks "bent" in a glass of water.

### Worked Example

Visible light (wavelength ~400-700 nanometers) has much lower frequency and energy than X-rays (wavelength ~0.01-10 nanometers) — which is exactly why X-rays can penetrate soft tissue (higher energy) while visible light cannot, and why X-rays require careful shielding for safety.

### Your Turn

Explain why a straw appears bent when placed in a glass of water (using the concept of refraction), and rank the following in order of increasing energy: visible light, radio waves, X-rays, ultraviolet light.$lesson$,
  '11.P.3.2', 'Describe the electromagnetic spectrum and explain reflection and refraction of light.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Small Project: Sound & Music Physics Investigation', 11, 'practice',
  $lesson$## Small Project: Sound & Music Physics Investigation

Musical instruments are, at their core, carefully engineered wave-producing devices — this project connects wave physics directly to music.

### Your Task

1. **Choose a musical instrument** you're familiar with (real or researched) — a guitar, piano, flute, drum, or voice.
2. **Explain how it produces sound waves**: what is vibrating (a string, column of air, membrane) to create the sound?
3. **Explain how the instrument changes pitch** (frequency): for a string instrument, this might be string length/tension; for a wind instrument, it might be the length of the air column.
4. **Calculate**: if a string instrument produces a note at 220 Hz with a wavelength of about 1.55 meters in air, calculate the speed of sound implied by this (v = fλ), and compare it to the accepted speed of sound in air (~340 m/s) — are they reasonably close?
5. **Explain amplitude's role**: how does the instrument (or player) control volume, and how does that connect to wave amplitude?

### Deliverable

Submit your chosen instrument, your explanation of sound production and pitch control, your speed of sound calculation and comparison, and your explanation of amplitude and volume.$lesson$,
  '11.P.3.1–2', 'Applies wave properties (frequency, wavelength, amplitude) to explain how musical instruments produce and control sound.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Unit 3 Quiz: Waves, Sound & Light', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of wave properties, sound, light, and the electromagnetic spectrum before we move into electricity and magnetism.$lesson$,
  '11.P.3.1–2', 'Assesses wave properties, sound, light, and electromagnetic spectrum concepts.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Electric Charge, Current & Circuits', 13, 'lesson',
  $lesson$## Electricity: Charge in Motion

Electricity begins with **electric charge** — a fundamental property of matter (protons positive, electrons negative) — and becomes useful when that charge is set into organized motion.

### Current, Voltage & Resistance

- **Current (I)** — the rate of flow of electric charge, measured in amperes (amps).
- **Voltage (V)** — the "electrical pressure" pushing charge through a circuit, measured in volts.
- **Resistance (R)** — opposition to current flow, measured in ohms.

### Ohm's Law

**V = IR** — voltage equals current times resistance. This single equation lets you solve for any one variable given the other two.

### Series vs. Parallel Circuits

- **Series circuits** — components connected in a single loop; current is the same everywhere, but voltage is divided among components. If one component fails, the whole circuit breaks.
- **Parallel circuits** — components connected in multiple branches; voltage is the same across each branch, but current divides among them. If one branch fails, others keep working.

### Worked Example

Using Ohm's law, a circuit with 12 volts and 4 ohms of resistance has a current of I = V/R = 12/4 = **3 amps**. If the resistance doubled to 8 ohms with the same voltage, current would be cut in half to 1.5 amps.

### Your Turn

Calculate the current in a circuit with 9 volts and 3 ohms of resistance, using Ohm's law, showing your work. Then explain why household wiring uses parallel circuits rather than series circuits (hint: what happens if one lamp burns out?).$lesson$,
  '12.P.4.1', 'Apply Ohm''s law and compare series and parallel circuits.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'Magnetism & Electromagnetic Induction', 14, 'lesson',
  $lesson$## Magnetism: The Twin of Electricity

Electricity and magnetism are deeply connected — moving electric charges create magnetic fields, and changing magnetic fields can create electric currents.

### Magnetic Fields

Magnets have a north and south pole, with field lines flowing from north to south outside the magnet. Like poles repel; opposite poles attract — the same basic rule as electric charges.

### Electromagnetism

A current-carrying wire creates a magnetic field around itself (this is how electromagnets work — coiling wire around a core and running current through it creates a controllable magnet). This is the basis of countless devices, including electric motors.

### Electromagnetic Induction

Michael Faraday discovered that a **changing** magnetic field near a conductor induces an electric current in that conductor — this principle, **electromagnetic induction**, is how generators produce electricity (mechanically spinning a magnet near a coil of wire) and is the basis for most of the world's electrical power generation.

### Worked Example

A bicycle "dynamo" light works by spinning a small magnet near a coil of wire as the wheel turns — the changing magnetic field induces a current that powers the light, converting the mechanical energy of pedaling directly into electrical energy, no battery required.

### Your Turn

Explain, in your own words, how electromagnetic induction allows a spinning magnet to generate electricity (as in a bicycle dynamo or a power plant generator), and describe one real-world device that relies on electromagnetism (a motor, speaker, or MRI machine) and how it uses the connection between electricity and magnetism.$lesson$,
  '12.P.4.2', 'Explain electromagnetic induction and the relationship between electricity and magnetism.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics')),
  'MAJOR PROJECT 2 CAPSTONE: Physics of a Real-World System', 15, 'practice',
  $lesson$## Capstone Project: Physics of a Real-World System

For your final Physics project, you'll choose a real-world system or technology and analyze the physics behind how it works, drawing on everything from this semester.

### Your Task

1. **Choose a real-world system or technology** (examples: an electric car, a wind turbine, a smartphone speaker, a roller coaster, an MRI machine, a solar panel, a guitar amplifier).
2. **Identify the physics concepts involved**, drawing from at least 3 different units this semester (kinematics/mechanics, energy/momentum, waves/light, electricity/magnetism).
3. **Explain, in detail, how at least one key process works**, using the actual physics (an equation, a calculation, or a detailed conceptual explanation).
4. **Perform one real calculation** relevant to your system (using kinematics, energy, wave, or circuit formulas from this semester).
5. **Reflection** (4-6 sentences): what did this project teach you about how the different branches of physics you studied this semester (mechanics, energy, waves, electricity/magnetism) connect to real technology?

### Deliverable

Submit your full analysis covering all five sections above.$lesson$,
  '11-12.P.1–4', 'Synthesizes kinematics, energy/momentum, waves, and electricity/magnetism concepts into a real-world system analysis.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Kinematics: Describing Motion with Math' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'In a velocity-time graph, the area under the curve represents:', '["Acceleration", "Displacement", "Force", "Mass"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Kinematics: Describing Motion with Math' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'Which kinematic equation lets you solve for final velocity without knowing time?', '["v = v0 + at", "d = v0t + 1/2at^2", "v^2 = v0^2 + 2ad", "F = ma"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Kinematics: Describing Motion with Math' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the acceleration of a cyclist going from 2 m/s to 10 m/s in 4 seconds, and calculate the distance traveled, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Newton''s Laws Applied: Free Body Diagrams' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'If all forces on an object are balanced (net force = 0), the object will:', '["Accelerate rapidly", "Not accelerate — it stays at rest or moves at constant velocity", "Instantly stop existing", "Always fall to the ground"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Newton''s Laws Applied: Free Body Diagrams' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'Friction acting on a moving object generally acts:', '["In the same direction as motion", "Opposite to the direction of motion", "Perpendicular to the surface only", "It has no direction"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Newton''s Laws Applied: Free Body Diagrams' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the net force and resulting acceleration for a 5 kg box pulled with 25 N while friction resists with 10 N, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Projectile Motion Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'short_answer', 'Describe your chosen projectile scenario and your estimated initial velocities.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Projectile Motion Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'short_answer', 'Show your time-of-flight and horizontal range calculations.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Projectile Motion Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Explain the trade-off between increasing vertical velocity versus horizontal velocity for range.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Kinematics & Newtonian Mechanics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'An object with balanced forces (net force = zero) is said to be in:', '["Free fall", "Equilibrium", "Projectile motion", "Acceleration"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Kinematics & Newtonian Mechanics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'In projectile motion (ignoring air resistance), horizontal velocity:', '["Increases constantly due to gravity", "Stays constant throughout flight", "Decreases to zero immediately", "Is not a real quantity"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Kinematics & Newtonian Mechanics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'multiple_choice', 'Using F = ma, if force doubles and mass stays the same, acceleration will:', '["Stay the same", "Double", "Be cut in half", "Become zero"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Kinematics & Newtonian Mechanics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Kinematics & Newtonian Mechanics' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 4, 'short_answer', 'Calculate the final velocity of an object starting at rest, accelerating at 3 m/s^2 for 6 seconds, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Work & Energy: Doing Physics on Objects' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'Kinetic energy depends on:', '["Mass and height only", "Mass and velocity squared", "Force and distance only", "Time and distance"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Work & Energy: Doing Physics on Objects' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'According to the work-energy theorem, net work done on an object equals its:', '["Change in momentum", "Change in kinetic energy", "Total mass", "Gravitational potential energy only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Work & Energy: Doing Physics on Objects' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the kinetic energy of a 1,000 kg car at 20 m/s and the potential energy of a 50 kg person 3 meters high, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Conservation of Energy in Systems' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'In a frictionless system, as an object falls, its potential energy is converted into:', '["Heat only", "Kinetic energy", "Sound only", "Nothing — energy disappears"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conservation of Energy in Systems' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'In real (non-ideal) systems, some mechanical energy is typically converted into:', '["More potential energy only", "Heat and sound through friction/air resistance", "Pure kinetic energy with no loss", "Nothing changes"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conservation of Energy in Systems' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the velocity of a ball dropped from 10 meters using conservation of energy, and explain why mass does not affect the result.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Momentum & Collisions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'In a perfectly inelastic collision, the two objects:', '["Bounce apart with no energy loss", "Stick together after colliding", "Never actually touch", "Both stop completely"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Momentum & Collisions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'The law of conservation of momentum states that, in a closed system, total momentum:', '["Increases after a collision", "Stays the same before and after a collision", "Always becomes zero", "Only applies to elastic collisions"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Momentum & Collisions' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the final velocity of a 2 kg ball at 6 m/s sticking to a stationary 4 kg ball, showing your work using conservation of momentum.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Roller Coaster Energy Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'short_answer', 'Describe your roller coaster track design, starting height, and car mass.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Roller Coaster Energy Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'short_answer', 'Show your maximum speed calculation using conservation of energy.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Roller Coaster Energy Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Explain why each subsequent hill must be shorter than the first.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Roller Coaster Energy Design Challenge' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Energy, Work & Momentum' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 4, 'short_answer', 'Show your momentum collision calculation for a perfectly inelastic collision.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Wave Properties & Behavior' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'Wave speed is calculated using the formula:', '["v = m/a", "v = f x wavelength", "v = KE/PE", "v = F x d"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Wave Properties & Behavior' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'Sound waves are an example of which type of wave?', '["Transverse", "Longitudinal", "Neither type", "Electromagnetic only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Wave Properties & Behavior' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the wavelength of a 440 Hz sound wave traveling at 340 m/s, and explain whether sound is transverse or longitudinal.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Light & the Electromagnetic Spectrum' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'As you move from radio waves to gamma rays on the EM spectrum, energy:', '["Decreases", "Increases", "Stays exactly the same", "Becomes negative"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Light & the Electromagnetic Spectrum' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'A straw appearing bent in a glass of water is an example of:', '["Reflection", "Refraction", "Diffraction only", "No real optical effect"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Light & the Electromagnetic Spectrum' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Explain why a straw looks bent in water using refraction, and rank radio waves, visible light, ultraviolet light, and X-rays in order of increasing energy.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Sound & Music Physics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'short_answer', 'Describe your chosen instrument and how it produces sound waves.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Sound & Music Physics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'short_answer', 'Explain how the instrument changes pitch (frequency).', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Sound & Music Physics Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Show your speed of sound calculation and comparison, and explain amplitude''s role in volume.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Waves, Sound & Light' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'A wave with high frequency and short wavelength (compared to another wave of the same type) generally has:', '["Less energy", "More energy", "No energy at all", "The exact same energy always"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Waves, Sound & Light' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'Sound waves require a medium to travel through because they are:', '["Electromagnetic waves", "Longitudinal mechanical waves that need particles to compress", "Not real waves", "Always traveling through a vacuum"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Waves, Sound & Light' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'multiple_choice', 'The law of reflection states that:', '["Angle of incidence never equals angle of reflection", "Angle of incidence equals angle of reflection", "Light always bends when reflecting", "Reflection only happens with sound"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Waves, Sound & Light' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Waves, Sound & Light' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 4, 'short_answer', 'Calculate the frequency of a wave with wavelength 0.5 meters traveling at 340 m/s, showing your work.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Electric Charge, Current & Circuits' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'Ohm''s law is expressed as:', '["V = IR", "F = ma", "KE = 1/2mv^2", "p = mv"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Electric Charge, Current & Circuits' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'In a parallel circuit, if one branch fails, the other branches:', '["Also fail immediately", "Continue working normally", "Reverse their current direction", "Increase their resistance to infinity"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Electric Charge, Current & Circuits' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Calculate the current in a circuit with 9 volts and 3 ohms of resistance, and explain why household wiring uses parallel circuits.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Magnetism & Electromagnetic Induction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'multiple_choice', 'Electromagnetic induction refers to:', '["A changing magnetic field inducing an electric current", "Electric charges that never move", "Only permanent magnets, with no connection to electricity", "The freezing of electric current"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Magnetism & Electromagnetic Induction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'multiple_choice', 'Most of the world''s electrical power is generated using the principle of:', '["Static electricity", "Electromagnetic induction (generators)", "Chemical batteries only", "Solar panels exclusively"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Magnetism & Electromagnetic Induction' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Explain how electromagnetic induction allows a spinning magnet to generate electricity, and describe one real-world device that uses electromagnetism.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Physics of a Real-World System' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 1, 'short_answer', 'Describe your chosen real-world system or technology.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Physics of a Real-World System' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 2, 'short_answer', 'Identify the physics concepts involved, from at least 3 different units this semester.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Physics of a Real-World System' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 3, 'short_answer', 'Explain in detail how at least one key process works, using actual physics.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Physics of a Real-World System' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Electricity & Magnetism' AND course_id=(SELECT id FROM courses WHERE slug='venture-physics'))), 4, 'short_answer', 'Show your real calculation relevant to the system, and write your 4-6 sentence reflection.', NULL, NULL);
