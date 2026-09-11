-- Weekly-topic Classwork/Homework rollout for Earth & Environmental Science
-- (Venture Studio, Grades 7-8). Adds a curated video and 2 assignments
-- (Classwork + Homework) to each of the course's 9 'lesson'-type entries.
-- Second course in the "Science courses" batch (task #162).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=7jbwX1Uvd18',
    video_caption = 'Khan Academy: Introduction to Plate Tectonics'
WHERE title = 'Earth''s Layers & Plate Tectonics'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=rmH4W92eHVM',
    video_caption = 'Khan Academy: The Rock Cycle'
WHERE title = 'The Rock Cycle: Igneous, Sedimentary, Metamorphic'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=r-WEDe-sTkg',
    video_caption = 'What''s in Our Atmosphere? Layers and Composition of Earth''s Atmosphere'
WHERE title = 'The Atmosphere: Layers & Composition'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=U5ikrkOGio0',
    video_caption = 'Khan Academy: Weather (Fronts, Pressure Systems & Storms)'
WHERE title = 'Weather Patterns: Fronts, Pressure & Storms'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=m5PrV1PbxY4',
    video_caption = 'Understanding Climate | Middle School Science'
WHERE title = 'Weather vs. Climate: Reading Long-Term Patterns'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=r2dnUvP1JgM',
    video_caption = 'Khan Academy: The Water Cycle'
WHERE title = 'The Water Cycle & Earth''s Hydrosphere'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=G2lQFo69_hc',
    video_caption = 'Khan Academy: Renewable and Nonrenewable Energy Resources'
WHERE title = 'Natural Resources: Renewable vs. Nonrenewable'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=z9xKxciHgo8',
    video_caption = 'Khan Academy: Earth''s Changing Climate'
WHERE title = 'Climate Change: Evidence & Causes'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=k6jUaaQNY28',
    video_caption = 'Khan Academy: Introduction to Sustainability'
WHERE title = 'Conservation & Sustainable Practices'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 4:%');

-- Earth's Layers & Plate Tectonics ----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Earth''s Layers & Plate Tectonics' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 1:%')),
  'classwork', 'Layers and Plate Boundaries Practice Set',
  $t1$Complete all 4 problems.

1. List Earth's four main layers in order from the surface down, and give one property of each.
2. Explain what generates Earth's magnetic field, and which layer is responsible.
3. Define all three types of plate boundaries (divergent, convergent, transform), with one real-world example of each.
4. Explain which type of plate boundary is most likely responsible for a chain of volcanic islands, and what evidence a geologist would look for.$t1$,
  $r1$Full credit requires all 4 layers correctly ordered and described for problem 1; an accurate magnetic-field explanation for problem 2; 3 correctly defined boundary types with valid real-world examples for problem 3; and sound reasoning with real evidence types for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Earth''s Layers & Plate Tectonics' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 1:%')),
  'homework', 'Model a Plate Boundary',
  $t2$Choose one real mountain range, ocean trench, or fault line (research if needed).

1. Identify what type of plate boundary formed it.
2. Explain, step-by-step, the process that created this feature over millions of years.
3. Describe what evidence (rock types, earthquake patterns, volcanic activity, or GPS data) scientists use to confirm the boundary type.
4. Explain in 2-3 sentences why tectonic plates moving "just a few centimeters per year" can still create features as massive as the Himalayas over geologic time.$t2$,
  $r2$Meets expectations when: the boundary type is correctly identified for the chosen feature; the formation process is accurately explained step-by-step; the evidence types cited are genuine and specific; and the reflection correctly explains cumulative geologic-time change.$r2$,
  20, 1
);

-- The Rock Cycle: Igneous, Sedimentary, Metamorphic --------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Rock Cycle: Igneous, Sedimentary, Metamorphic' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 1:%')),
  'classwork', 'Rock Cycle Practice Set',
  $t3$Complete all 4 problems.

1. Define all three rock types (igneous, sedimentary, metamorphic) and how each forms.
2. Explain why sedimentary rock is the type most likely to contain fossils.
3. Trace the limestone-to-marble-to-new-igneous-rock example from the lesson, explaining what happens at each step.
4. Explain why the rock cycle is considered a true cycle with no starting point.$t3$,
  $r3$Full credit requires all 3 rock types correctly defined for problem 1; an accurate fossil-preservation explanation for problem 2; a correct step-by-step trace for problem 3; and sound reasoning about the cycle's lack of a starting point for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Rock Cycle: Igneous, Sedimentary, Metamorphic' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 1:%')),
  'homework', 'Trace Your Own Rock Cycle Path',
  $t4$Choose a starting rock type (igneous, sedimentary, or metamorphic).

1. Trace a complete path through the rock cycle, ending back at your starting type, passing through at least 2 other rock types along the way.
2. At each step, name the specific process involved (cooling, weathering, compaction, heat and pressure, or melting).
3. Identify one real example of a rock (granite, sandstone, marble, etc.) that fits somewhere in your path.
4. Explain in 1-2 sentences why "millions of years" matters to this process -- why can't the rock cycle happen quickly?$t4$,
  $r4$Meets expectations when: the traced path is geologically valid and passes through at least 2 other rock types; each transition names the correct process; a real rock example is accurately placed; and the final reflection correctly explains the timescale involved.$r4$,
  20, 1
);

-- The Atmosphere: Layers & Composition ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Atmosphere: Layers & Composition' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Atmospheric Layers Practice Set',
  $t5$Complete all 4 problems.

1. State the approximate composition of Earth's atmosphere by gas.
2. List the four layers of the atmosphere from lowest to highest, with one defining feature of each.
3. Explain why nearly all weather occurs in the troposphere and not in the layers above it.
4. Explain why airplanes typically cruise in the lower stratosphere rather than the troposphere.$t5$,
  $r5$Full credit requires an accurate composition breakdown for problem 1; all 4 layers correctly ordered and described for problem 2; a sound weather-confinement explanation for problem 3; and correct aviation reasoning for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Atmosphere: Layers & Composition' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Atmosphere in Everyday Life',
  $t6$Choose one real-world example of how a specific atmospheric layer affects human activity: aviation, satellites, meteor showers, or the ozone layer.

1. Identify which atmospheric layer is involved.
2. Explain the specific property of that layer that makes the activity possible or necessary.
3. Describe what would go wrong if that layer didn't exist or had very different properties.
4. Explain in 2-3 sentences why the ozone layer specifically is critical to life on Earth's surface.$t6$,
  $r6$Meets expectations when: the correct atmospheric layer is identified; the layer's relevant property is accurately explained; the "what would go wrong" scenario is scientifically sound; and the ozone-layer reflection is accurate.$r6$,
  20, 1
);

-- Weather Patterns: Fronts, Pressure & Storms ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Weather Patterns: Fronts, Pressure & Storms' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Fronts & Pressure Practice Set',
  $t7$Complete all 4 problems.

1. Explain the difference between high-pressure and low-pressure systems, and the general weather each brings.
2. Define cold front, warm front, and occluded front, with the general weather pattern each produces.
3. A meteorologist observes a rapid temperature drop, shifting winds, and a fast-moving line of thunderstorms. Identify which type of front is passing through, and explain your reasoning.
4. Explain why cold fronts tend to cause quicker, more intense storms while warm fronts tend to cause longer, steadier rain.$t7$,
  $r7$Full credit requires an accurate high/low pressure explanation for problem 1; all 3 front types correctly defined for problem 2; correct front identification with sound reasoning for problem 3; and an accurate storm-intensity comparison for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Weather Patterns: Fronts, Pressure & Storms' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%')),
  'homework', 'Forecast a Front Passing Through',
  $t8$Choose either a warm front or a cold front passing through a town.

1. Describe the weather you'd expect just BEFORE the front arrives.
2. Describe the weather DURING the front's passage.
3. Describe the weather AFTER the front has passed.
4. Explain in 2-3 sentences how your forecast would be different if you'd chosen the other type of front instead.$t8$,
  $r8$Meets expectations when: all 3 stages (before/during/after) are scientifically accurate for the chosen front type; and the comparison to the other front type is correct and specific, not vague.$r8$,
  20, 1
);

-- Weather vs. Climate: Reading Long-Term Patterns --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Weather vs. Climate: Reading Long-Term Patterns' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%')),
  'classwork', 'Weather vs. Climate Practice Set',
  $t9$Complete all 4 problems.

1. Define weather and climate, and explain the key difference in timescale between them.
2. Explain the phrase "climate is what you expect; weather is what you get," using an original example.
3. Name and describe 3 of Earth's major climate zones (tropical, temperate, polar, arid, mountain).
4. Explain why one unusually cold week in a normally warm region does NOT mean the region's climate has changed.$t9$,
  $r9$Full credit requires accurate weather/climate definitions for problem 1; a genuine, correctly-reasoned original example for problem 2; 3 accurately described climate zones for problem 3; and sound reasoning about single-event vs. long-term-trend for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Weather vs. Climate: Reading Long-Term Patterns' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 2:%')),
  'homework', 'My Region: Weather vs. Climate',
  $t10$Using your own region (or one you research):

1. Describe one specific unusual weather day you remember (a single event) versus what you'd normally expect there.
2. Identify which climate zone you think your region belongs to, and explain why.
3. Describe 2 long-term climate patterns typical of your region (average summer/winter temperatures, typical rainfall, etc.).
4. Explain in 2-3 sentences what evidence (beyond one's own memory) a scientist would actually need to prove your region's climate is changing.$t10$,
  $r10$Meets expectations when: the weather/climate distinction is applied correctly and specifically to the student's own region; the climate zone identification is reasonable and justified; and the final reflection correctly identifies long-term, systematic evidence as necessary (not personal memory alone).$r10$,
  20, 1
);

-- The Water Cycle & Earth's Hydrosphere ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Water Cycle & Earth''s Hydrosphere' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 3:%')),
  'classwork', 'Water Cycle Practice Set',
  $t11$Complete all 4 problems.

1. Define evaporation, condensation, precipitation, and collection/runoff, in the correct cycle order.
2. Explain the difference between evaporation and transpiration, and why they're often grouped as "evapotranspiration."
3. State what percentage of Earth's water is in the oceans, and what percentage is fresh, liquid, and accessible for human use.
4. Trace a single water molecule through at least 4 stages of the water cycle, starting in the ocean and ending in a cloud.$t11$,
  $r11$Full credit requires all 4 processes correctly defined and ordered for problem 1; an accurate evapotranspiration explanation for problem 2; correct percentages for problem 3; and a scientifically sound 4-stage trace for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Water Cycle & Earth''s Hydrosphere' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 3:%')),
  'homework', 'Rain on a Mountain: Four Paths',
  $t12$Using the "rain falling on a mountain" scenario from the lesson:

1. Describe 4 different possible paths a raindrop could take once it hits the mountain (immediate evaporation, plant absorption/transpiration, surface runoff to a river, and groundwater infiltration).
2. For the groundwater path, explain why that water "might not resurface for decades."
3. Explain why the water cycle is described as being driven "almost entirely by energy from the sun."
4. Explain in 1-2 sentences why understanding the water cycle matters for managing a region's freshwater supply.$t12$,
  $r12$Meets expectations when: all 4 raindrop paths are accurately described; the groundwater timescale explanation is sound; the sun-driven-cycle explanation is accurate; and the final reflection connects the water cycle to real freshwater management.$r12$,
  20, 1
);

-- Natural Resources: Renewable vs. Nonrenewable -----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Natural Resources: Renewable vs. Nonrenewable' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 3:%')),
  'classwork', 'Renewable vs. Nonrenewable Practice Set',
  $t13$Complete all 4 problems.

1. Define renewable and nonrenewable resources, with 2 examples of each.
2. Explain what "renewable" actually means in terms of replenishment timescale (not just "doesn't run out").
3. Choose one renewable and one nonrenewable energy source. For each, describe one major advantage and one major disadvantage.
4. Explain why many regions today use a mix of both renewable and nonrenewable sources rather than switching entirely to one.$t13$,
  $r13$Full credit requires accurate definitions and valid examples for problem 1; a precise replenishment-timescale explanation for problem 2; genuine advantage/disadvantage pairs for problem 3; and sound real-world reasoning for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Natural Resources: Renewable vs. Nonrenewable' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 3:%')),
  'homework', 'Community Energy Decision',
  $t14$Imagine your community must decide between building a new coal plant or a new solar farm.

1. List 2 factors that would favor the coal plant, and explain why each matters.
2. List 2 factors that would favor the solar farm, and explain why each matters.
3. Identify one major trade-off (reliability, cost, environmental impact, or land use) that makes this a genuinely hard decision, not an obvious one.
4. State which option you would recommend, and defend your choice using at least 2 specific factors from above.$t14$,
  $r14$Meets expectations when: both sides get genuine, specific factors (not strawmanned); the identified trade-off is real and substantive; and the final recommendation is defended with specific reasoning rather than a vague preference.$r14$,
  20, 1
);

-- Climate Change: Evidence & Causes ------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Climate Change: Evidence & Causes' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 4:%')),
  'classwork', 'Climate Evidence Practice Set',
  $t15$Complete all 4 problems.

1. Name and briefly describe 3 independent lines of evidence scientists use to track climate change (temperature records, ice cores, sea level data, shrinking ice sheets).
2. Explain the greenhouse effect in your own words, including why it's naturally necessary for life.
3. Explain how ice core data can reveal atmospheric CO2 levels from hundreds of thousands of years ago.
4. Explain why having multiple independent lines of evidence makes a scientific conclusion stronger than relying on just one.$t15$,
  $r15$Full credit requires 3 accurately described evidence types for problem 1; a correct, complete greenhouse-effect explanation for problem 2; an accurate ice-core mechanism explanation for problem 3; and sound reasoning about convergent evidence for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Climate Change: Evidence & Causes' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 4:%')),
  'homework', 'CO2 Timeline Analysis',
  $t16$Using the lesson's description of ice core CO2 data (stable for hundreds of thousands of years, then rising sharply since the Industrial Revolution):

1. Describe what the ice core record shows before the Industrial Revolution.
2. Describe what has happened to CO2 levels since the Industrial Revolution, and how that compares in speed to the natural historical cycles.
3. Explain what human activities are identified as driving this change, and how.
4. Explain in 2-3 sentences why the timing overlap between rising CO2 and increased fossil fuel use is considered significant evidence, rather than just a coincidence.$t16$,
  $r16$Meets expectations when: the before/after CO2 description is accurate; the speed comparison to natural cycles is correctly explained; the human activities and mechanism are accurately described; and the final reasoning about timing correlation is scientifically sound.$r16$,
  20, 1
);

-- Conservation & Sustainable Practices -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conservation & Sustainable Practices' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 4:%')),
  'classwork', 'Conservation & the Three R''s Practice Set',
  $t17$Complete all 4 problems.

1. Define conservation and sustainability in your own words.
2. List the Three R's in order of impact (Reduce, Reuse, Recycle) and explain why Reduce has the biggest effect.
3. Name and describe 2 examples of sustainable practices from the lesson (renewable energy, sustainable agriculture, habitat conservation, waste reduction).
4. Explain why a city combining several small sustainability efforts (LEDs, transit, composting) can add up to meaningful impact, even though each individual effort is small.$t17$,
  $r17$Full credit requires accurate definitions for problem 1; the Three R's correctly ordered with sound impact reasoning for problem 2; 2 accurately described practices for problem 3; and sound cumulative-impact reasoning for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conservation & Sustainable Practices' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science') AND title LIKE 'Unit 4:%')),
  'homework', 'Design a Community Sustainability Plan',
  $t18$Choose your community or school.

1. Describe one conservation or sustainability practice already happening there (or one you wish existed).
2. Explain specifically how it reduces environmental impact, using at least one concept from the lesson (conservation, sustainability, or the Three R's).
3. Identify one realistic obstacle to implementing or expanding this practice (cost, awareness, infrastructure).
4. Propose one specific first step that could address that obstacle.$t18$,
  $r18$Meets expectations when: the described practice is specific and real (or realistically proposed); the environmental-impact explanation correctly applies a lesson concept; the identified obstacle is genuine and realistic; and the proposed first step is concrete and actually addresses the obstacle.$r18$,
  20, 1
);
