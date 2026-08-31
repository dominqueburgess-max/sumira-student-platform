-- Earth & Environmental Science (Grades 7-8) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Matches the established Venture Studio template: 4 units, 15 lessons, 2 small projects, 2 major projects
-- (L8 and full-semester capstone L15), aligned to the NC Standard Course of Study (Earth/Environmental Science).

UPDATE courses SET status = 'published' WHERE slug = 'venture-earth-environmental-science';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-earth-environmental-science'), 'Unit 1: Earth''s Systems & Structure', 0),
((SELECT id FROM courses WHERE slug='venture-earth-environmental-science'), 'Unit 2: Weather & Climate', 1),
((SELECT id FROM courses WHERE slug='venture-earth-environmental-science'), 'Unit 3: Water & Energy Resources', 2),
((SELECT id FROM courses WHERE slug='venture-earth-environmental-science'), 'Unit 4: Human Impact & Environmental Stewardship', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Earth''s Layers & Plate Tectonics', 1, 'lesson',
  $lesson$## Earth's Hidden Structure

Earth is not a solid ball all the way through — it is made of distinct layers, each with its own properties, and the movement of these layers shapes everything from mountain ranges to earthquakes.

### The Four Main Layers

- **Crust** — the thin, solid outer layer we live on (oceanic crust is thinner and denser; continental crust is thicker and less dense).
- **Mantle** — a thick layer of hot, slowly flowing rock beneath the crust, making up most of Earth's volume.
- **Outer core** — liquid metal (mostly iron and nickel), whose movement generates Earth's magnetic field.
- **Inner core** — solid metal, under extreme pressure despite being the hottest layer.

### Plate Tectonics

The crust and uppermost mantle are broken into large pieces called **tectonic plates**, which float on the slowly flowing mantle below and move just a few centimeters per year — about as fast as your fingernails grow.

### Three Types of Plate Boundaries

- **Divergent** — plates move apart, often creating new crust (mid-ocean ridges).
- **Convergent** — plates collide, causing one to slide under another (subduction), forming mountains or deep ocean trenches.
- **Transform** — plates slide past each other, building up stress that releases as earthquakes (like California's San Andreas Fault).

### Worked Example

The Himalayas formed — and are still growing — because the Indian Plate is colliding with the Eurasian Plate in a convergent boundary, pushing rock upward over millions of years. Meanwhile, the Ring of Fire around the Pacific Ocean traces a chain of convergent boundaries, which is why that region has so many volcanoes and earthquakes.

### Your Turn

Explain which type of plate boundary is most likely responsible for a chain of volcanic islands (like Japan or Indonesia), and describe what evidence a geologist might use to figure out what type of boundary exists in a location they've never visited before.$lesson$,
  '7.E.1.1', 'Explain Earth''s internal structure and the theory of plate tectonics, including boundary types.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'The Rock Cycle: Igneous, Sedimentary, Metamorphic', 2, 'lesson',
  $lesson$## The Rock Cycle: Earth's Ultimate Recycling System

Every rock on Earth belongs to one of three families, and over long spans of time, rock can transform from one type into another through the **rock cycle**.

### The Three Rock Types

- **Igneous rock** forms when molten rock (magma below ground, lava above ground) cools and hardens. Granite (slow-cooled, large crystals) and obsidian (fast-cooled, glassy) are examples.
- **Sedimentary rock** forms when layers of sediment (sand, mud, shell fragments) are compressed and cemented together over time. Sandstone and limestone are examples — and this is the rock type most likely to contain fossils.
- **Metamorphic rock** forms when existing rock is transformed by intense heat and pressure (without fully melting). Marble (from limestone) and slate (from shale) are examples.

### The Cycle Never Stops

Any rock type can become any other rock type: igneous rock can weather into sediment that becomes sedimentary rock; sedimentary rock can be buried and heated into metamorphic rock; any rock can melt completely and re-cool as new igneous rock. There is no "starting point" — it's a true cycle.

### Worked Example

A limestone cliff (sedimentary) gets buried deep underground by other layers over millions of years. The heat and pressure at that depth transform it — without melting it — into marble (metamorphic). If that marble were pushed even deeper and fully melted, then cooled slowly underground, it would become a new igneous rock entirely.

### Your Turn

Choose a rock type (igneous, sedimentary, or metamorphic) and trace a possible path through the entire rock cycle, ending back at that same type, explaining what process happens at each step.$lesson$,
  '7.E.1.2', 'Describe the processes that form igneous, sedimentary, and metamorphic rock and explain the rock cycle.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Small Project: Mapping Plate Boundaries & Predicting Hazards', 3, 'practice',
  $lesson$## Small Project: Mapping Plate Boundaries & Predicting Hazards

Geologists use plate boundary maps to predict where natural hazards like earthquakes and volcanoes are most likely to occur.

### Your Task

1. **Research or recall** the location of at least 4 major tectonic plates (e.g., Pacific, North American, Eurasian, African, Indo-Australian, Nazca).
2. **Identify 3 real locations** on Earth that sit near plate boundaries (e.g., Japan, California, Iceland, Chile, Indonesia).
3. For each location, **classify the boundary type** (divergent, convergent, or transform) and **predict the most likely natural hazard** (volcanic eruption, earthquake, or both).
4. **Explain your reasoning** for each prediction using what you know about boundary types.

### Deliverable

Submit your 3 locations, each with its boundary type classification and predicted hazard, along with your reasoning for each.$lesson$,
  '7.E.1.1', 'Applies knowledge of plate boundary types to predict geological hazards at real-world locations.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Unit 1 Quiz: Earth''s Systems & Structure', 4, 'quiz',
  $lesson$## Unit 1 Quiz

This quiz checks your understanding of Earth's internal structure, plate tectonics, and the rock cycle before we move into weather and climate.$lesson$,
  '7.E.1.1–2', 'Assesses Earth''s layers, plate tectonics, boundary types, and the rock cycle.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'The Atmosphere: Layers & Composition', 5, 'lesson',
  $lesson$## Earth's Atmosphere: The Air That Makes Life Possible

Earth's atmosphere is a thin layer of gases held in place by gravity, and it's structured into distinct layers, each with different properties.

### Composition

Earth's atmosphere is roughly 78% nitrogen, 21% oxygen, and less than 1% other gases (including the carbon dioxide and water vapor that play huge roles in weather and climate).

### The Layers (bottom to top)

- **Troposphere** — where we live and where nearly all weather happens; temperature decreases with altitude.
- **Stratosphere** — contains the ozone layer, which absorbs harmful UV radiation; temperature increases with altitude here.
- **Mesosphere** — where most meteors burn up; the coldest layer.
- **Thermosphere** — extremely thin air, extremely high temperatures per particle; contains the aurora and where the International Space Station orbits.

### Worked Example

Airplanes typically cruise in the lower stratosphere, just above the troposphere, partly to fly above most turbulent weather (which is confined to the troposphere) and partly because that altitude offers a smoother, more fuel-efficient ride.

### Your Turn

Explain why nearly all weather occurs in the troposphere and not in the layers above it, and describe one real-world example of how a specific atmospheric layer affects human activity (aviation, satellites, meteor showers, or the ozone layer).$lesson$,
  '7.E.2.1', 'Describe the composition and structure of Earth''s atmosphere, including its layers.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Weather Patterns: Fronts, Pressure & Storms', 6, 'lesson',
  $lesson$## Reading the Sky: Fronts, Pressure & Storms

Weather results from the constant movement and interaction of air masses with different temperatures and pressures.

### Air Pressure

- **High pressure systems** are associated with sinking air, generally clear and calm weather.
- **Low pressure systems** are associated with rising air, which cools and condenses into clouds and precipitation — often stormier weather.

### Fronts: Where Air Masses Meet

- **Cold front** — a cold air mass pushes under a warm air mass, often causing quick, intense storms.
- **Warm front** — a warm air mass slides over a retreating cold air mass, often causing long, steady rain.
- **Occluded front** — a cold front catches up to a warm front, lifting the warm air completely off the ground.

### Worked Example

A meteorologist watching a rapid temperature drop, shifting winds, and a line of thunderstorms on radar would recognize the telltale signs of a **cold front** passing through — because cold fronts move fast and push warm, moist air upward abruptly, which is exactly the recipe for sudden, intense storms.

### Your Turn

Describe the weather you would expect to see just before, during, and after a warm front passes through an area, and explain how that differs from a cold front passing through.$lesson$,
  '7.E.2.2', 'Analyze how air masses, fronts, and pressure systems interact to produce weather patterns.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Weather vs. Climate: Reading Long-Term Patterns', 7, 'lesson',
  $lesson$## Weather vs. Climate: Two Different Timescales

People often confuse weather and climate, but they describe completely different timescales.

### The Key Distinction

- **Weather** is the short-term condition of the atmosphere at a specific place and time — today's temperature, this week's forecast.
- **Climate** is the long-term average of weather patterns in a region, typically measured over 30 years or more.

A helpful phrase: **"Climate is what you expect; weather is what you get."** You might expect a hot, dry summer in the desert (climate) even though one particular day could be unusually cool and rainy (weather).

### Climate Zones

Earth has several major climate zones shaped by latitude, elevation, and proximity to oceans — including tropical, temperate, polar, arid (desert), and mountain climates. Each zone has predictable long-term patterns even though day-to-day weather within that zone can vary widely.

### Worked Example

A single unusually cold week in a normally warm region is weather — it doesn't mean the region's climate has changed. But if average temperatures in that region rise measurably over several decades, consistently, that's a shift in climate.

### Your Turn

Explain the difference between weather and climate using an example from your own experience (a single unusual day vs. the general pattern of your region), and identify what climate zone you think you live in.$lesson$,
  '7.E.2.3', 'Distinguish between weather and climate and describe major climate zones.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'MAJOR PROJECT 1: Build a Weather Station & Forecast Report', 8, 'practice',
  $lesson$## Major Project: Build a Weather Station & Forecast Report

Real meteorologists combine observed data with an understanding of fronts and pressure systems to make forecasts. You'll do the same.

### Your Task

1. **Track daily weather** for your location for at least 5 consecutive days (temperature, general sky conditions, wind, precipitation) using a weather app, local news, or your own observations — record it in your Field Notebook.
2. **Identify any fronts or pressure changes** you notice happening during your tracking period (a sudden temperature drop, an incoming storm, days of clear high pressure).
3. **Write a 3-day forecast** for the days immediately following your tracking period, using the patterns you observed and your knowledge of fronts, pressure systems, and typical weather behavior in your region.
4. **Reflect**: how confident are you in your forecast, and what real meteorologists have access to (radar, satellites, computer models) that you didn't have?

### Deliverable

Submit your 5-day weather log, any fronts/pressure changes you identified, your 3-day forecast with reasoning, and your reflection on forecasting confidence.$lesson$,
  '7.E.2.1–3', 'Applies atmospheric composition, fronts, pressure systems, and weather/climate concepts to build a forecast.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'The Water Cycle & Earth''s Hydrosphere', 9, 'lesson',
  $lesson$## The Water Cycle: Earth's Circulatory System

Water constantly moves between the ocean, atmosphere, and land in a continuous process called the **water cycle**, driven almost entirely by energy from the sun.

### The Key Processes

- **Evaporation** — liquid water turns to water vapor, mostly from oceans (heated by the sun).
- **Transpiration** — water vapor released by plants, often grouped with evaporation as "evapotranspiration."
- **Condensation** — water vapor cools and forms clouds.
- **Precipitation** — water falls back to Earth as rain, snow, sleet, or hail.
- **Collection/Runoff** — water gathers in oceans, lakes, and rivers, or soaks into the ground as groundwater, ready to evaporate again.

### Earth's Hydrosphere

The **hydrosphere** includes all of Earth's water — oceans (about 97% of all water), ice caps and glaciers, groundwater, lakes, rivers, and atmospheric water vapor. Only about 1% of Earth's water is fresh, liquid, and accessible for human use.

### Worked Example

Rain falling on a mountain can take one of several paths: some evaporates immediately, some is absorbed by plant roots and later transpired, some runs off into a river toward the ocean, and some soaks into the ground to become groundwater that might not resurface for decades. All of these are part of the same water cycle.

### Your Turn

Trace a single water molecule through at least four stages of the water cycle, starting in the ocean and ending up in a cloud, describing what happens at each stage. Then explain why only about 1% of Earth's water is usable fresh water.$lesson$,
  '8.E.1.1', 'Describe the processes of the water cycle and the distribution of water in Earth''s hydrosphere.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Natural Resources: Renewable vs. Nonrenewable', 10, 'lesson',
  $lesson$## Powering the World: Renewable vs. Nonrenewable Resources

Every form of energy humans use comes from a natural resource, and those resources fall into two broad categories based on how quickly they can be replaced.

### Nonrenewable Resources

Resources that exist in limited supply and take millions of years to form — once used, they're essentially gone for human timescales. Examples: coal, oil, natural gas (fossil fuels), and nuclear fuel (uranium).

### Renewable Resources

Resources that are naturally replenished on a human timescale. Examples: solar, wind, hydroelectric, geothermal, and biomass energy.

### Trade-offs

Every energy source has trade-offs. Fossil fuels are energy-dense and currently cheap to extract and use, but they release greenhouse gases and will eventually run out. Renewable sources don't run out and produce far fewer emissions, but they can be inconsistent (solar doesn't work at night; wind doesn't blow every day) and require significant infrastructure to build and store.

### Worked Example

A community deciding between building a coal plant or a solar farm has to weigh upfront cost, reliability, environmental impact, and long-term resource availability. Many regions today use a mix of both renewable and nonrenewable sources while transitioning toward more renewable capacity over time.

### Your Turn

Choose one renewable and one nonrenewable energy source. For each, describe how it works, one major advantage, and one major disadvantage. Then explain what "renewable" actually means in terms of replenishment timescale.$lesson$,
  '8.E.1.2', 'Compare renewable and nonrenewable natural resources, including trade-offs of each.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Small Project: Energy Resource Investigation', 11, 'practice',
  $lesson$## Small Project: Energy Resource Investigation

Time to investigate where your own community's energy actually comes from.

### Your Task

1. **Research your region's energy mix** — what percentage comes from coal, natural gas, nuclear, hydroelectric, solar, wind, or other sources? (Use a utility company website, EIA.gov, or similar source if available; estimate thoughtfully if exact data isn't accessible.)
2. **Classify each source** as renewable or nonrenewable.
3. **Identify one local example** of energy infrastructure near you (a power plant, solar farm, wind turbine, or hydroelectric dam) if you know of one.
4. **Propose one realistic change** your community could make to increase its share of renewable energy, and explain one challenge that change would need to overcome.

### Deliverable

Submit your region's energy mix breakdown with renewable/nonrenewable classification, any local infrastructure example, and your proposed change with its challenge.$lesson$,
  '8.E.1.2', 'Investigates local/regional energy resource use and proposes renewable energy solutions.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Unit 3 Quiz: Water & Energy Resources', 12, 'quiz',
  $lesson$## Unit 3 Quiz

This quiz checks your understanding of the water cycle, Earth's hydrosphere, and renewable vs. nonrenewable resources before we move into human impact and environmental stewardship.$lesson$,
  '8.E.1.1–2', 'Assesses the water cycle, hydrosphere distribution, and renewable/nonrenewable resource trade-offs.', 20
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Climate Change: Evidence & Causes', 13, 'lesson',
  $lesson$## Climate Change: What the Evidence Shows

Scientists study multiple independent lines of evidence to understand how Earth's climate has changed over time, and what is driving recent changes.

### Lines of Evidence

- **Temperature records** — direct measurements over the past ~150 years show a clear warming trend, especially accelerating in recent decades.
- **Ice cores** — trapped air bubbles in ancient glacial ice let scientists measure past atmospheric CO2 levels going back hundreds of thousands of years.
- **Sea level data** — tide gauges and satellites show measurable sea level rise from melting ice and warming (expanding) ocean water.
- **Shrinking ice sheets and glaciers** — observed and measured through satellite imagery over decades.

### The Greenhouse Effect

Certain gases in the atmosphere (carbon dioxide, methane, water vapor) trap heat from the sun, similar to how a greenhouse's glass traps warmth — this is a natural and necessary process that keeps Earth warm enough for life. The concern is that human activities (burning fossil fuels, deforestation) have significantly increased greenhouse gas concentrations, intensifying this natural effect.

### Worked Example

Ice core data shows atmospheric CO2 stayed within a fairly stable range for hundreds of thousands of years, rising and falling with natural ice age cycles. Since the Industrial Revolution, CO2 levels have risen far above that historical range, far faster than the natural cycles ever moved — and that timeline lines up closely with the timeline of increased fossil fuel use.

### Your Turn

Explain the greenhouse effect in your own words, then describe two independent lines of evidence scientists use to track climate change over time, and explain why having multiple independent lines of evidence makes a scientific conclusion stronger.$lesson$,
  '8.E.1.3', 'Evaluate evidence for climate change and explain the greenhouse effect.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'Conservation & Sustainable Practices', 14, 'lesson',
  $lesson$## Conservation & Sustainability: Solutions in Action

Understanding environmental problems is only half the picture — scientists, engineers, and communities also work on solutions.

### Key Concepts

- **Conservation** — the careful management and protection of natural resources to prevent depletion or damage.
- **Sustainability** — meeting present needs without compromising the ability of future generations to meet their own needs.
- **The Three R's** — Reduce (use less), Reuse (use again), Recycle (turn waste into new materials) — in that order of impact, since reducing consumption has the biggest effect.

### Examples of Sustainable Practices

- Renewable energy adoption (solar, wind)
- Sustainable agriculture (crop rotation, reduced pesticide use, water-efficient irrigation)
- Habitat and wildlife conservation (protected parks, reserves, species recovery programs)
- Waste reduction and the circular economy (designing products to be reused or recycled instead of thrown away)

### Worked Example

A city that switches its streetlights to energy-efficient LEDs, expands public transit to reduce car emissions, and builds a curbside composting program is applying conservation and sustainability principles at multiple scales simultaneously — each individually small, but meaningful when combined and scaled across a whole population.

### Your Turn

Describe one conservation or sustainability practice already happening in your community or school (or one you wish existed), and explain specifically how it reduces environmental impact, using at least one concept from this lesson.$lesson$,
  '8.E.1.4', 'Evaluate conservation and sustainable practices for managing natural resources and reducing environmental impact.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science')),
  'MAJOR PROJECT 2 CAPSTONE: Environmental Action Plan', 15, 'practice',
  $lesson$## Capstone Project: Environmental Action Plan

For your final project, you'll act as an environmental scientist proposing a real action plan to address an environmental issue relevant to your community.

### Your Task

1. **Choose one environmental issue** relevant to your community or region (e.g., water quality, air pollution, energy use, waste management, habitat loss, climate impacts like flooding or drought).
2. **Explain the science**: describe the Earth systems involved (atmosphere, hydrosphere, geosphere) and connect it to concepts from this semester (plate tectonics, the rock cycle, weather/climate, water cycle, resources, or climate change/sustainability — whichever apply).
3. **Assess the impact**: who and what is affected by this issue, and how severe is it?
4. **Propose an action plan**: at least 3 specific, realistic steps that could be taken by individuals, your school, or your local government to address this issue.
5. **Reflection** (4-6 sentences): why does this issue matter to you, and what did you learn this semester that changed how you think about Earth's systems?

### Deliverable

Submit your full action plan covering all five sections above.$lesson$,
  '8.E.1.1–4', 'Synthesizes Earth systems, water/energy resources, and human impact concepts into a community action plan.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Earth''s Layers & Plate Tectonics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which layer of Earth is liquid metal and generates the magnetic field?', '["Crust", "Mantle", "Outer core", "Inner core"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Earth''s Layers & Plate Tectonics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'At a convergent plate boundary, plates:', '["Move apart from each other", "Collide, often forming mountains or trenches", "Slide past each other horizontally", "Do not move at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Earth''s Layers & Plate Tectonics' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Explain what type of plate boundary is most likely responsible for a chain of volcanic islands, and describe the evidence that would support your answer.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Rock Cycle: Igneous, Sedimentary, Metamorphic' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which rock type is most likely to contain fossils?', '["Igneous", "Sedimentary", "Metamorphic", "None of these"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Rock Cycle: Igneous, Sedimentary, Metamorphic' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'Metamorphic rock forms when existing rock is exposed to:', '["Extreme cold only", "Heat and pressure, without fully melting", "Wind erosion only", "Complete melting and re-cooling"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Rock Cycle: Igneous, Sedimentary, Metamorphic' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Trace one full path through the rock cycle, starting and ending at the same rock type, and explain what happens at each step.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Mapping Plate Boundaries & Predicting Hazards' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'short_answer', 'List your 3 chosen locations and classify the plate boundary type at each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Mapping Plate Boundaries & Predicting Hazards' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'short_answer', 'State your predicted natural hazard for each location.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Mapping Plate Boundaries & Predicting Hazards' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Explain your reasoning connecting boundary type to predicted hazard for at least one location.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Earth''s Systems & Structure' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which layer of Earth do we live on?', '["Mantle", "Outer core", "Crust", "Inner core"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Earth''s Systems & Structure' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'A transform plate boundary is best described as:', '["Plates moving apart", "Plates colliding", "Plates sliding past each other", "Plates melting together"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Earth''s Systems & Structure' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'multiple_choice', 'Igneous rock forms when:', '["Sediment is compressed over time", "Molten rock cools and hardens", "Rock is heated and pressured without melting", "Rock dissolves in water"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Earth''s Systems & Structure' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Earth''s Systems & Structure' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 4, 'short_answer', 'Explain, in your own words, why the rock cycle is considered a ''cycle'' with no true starting point.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Atmosphere: Layers & Composition' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which layer of the atmosphere contains the ozone layer?', '["Troposphere", "Stratosphere", "Mesosphere", "Thermosphere"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Atmosphere: Layers & Composition' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'Nearly all weather occurs in which layer?', '["Troposphere", "Stratosphere", "Mesosphere", "Thermosphere"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='The Atmosphere: Layers & Composition' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Explain why nearly all weather is confined to the troposphere, and describe one real-world example of how an atmospheric layer affects human activity.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Weather Patterns: Fronts, Pressure & Storms' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'A low pressure system is generally associated with:', '["Clear, calm weather", "Rising air and stormier weather", "No wind at all", "Only cold temperatures"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Weather Patterns: Fronts, Pressure & Storms' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'A cold front is most associated with:', '["Long, steady rain over many days", "Quick, intense storms as it passes", "Perfectly clear skies", "No temperature change"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Weather Patterns: Fronts, Pressure & Storms' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Describe the weather you''d expect before, during, and after a warm front passes, and compare it to a cold front.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Weather vs. Climate: Reading Long-Term Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which best describes climate?', '["The current temperature outside", "The forecast for this week", "The long-term average weather pattern of a region", "A single storm event"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Weather vs. Climate: Reading Long-Term Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'One unusually cold day in a normally warm region is an example of:', '["A change in climate", "Weather, not climate", "A new climate zone forming", "None of the above"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Weather vs. Climate: Reading Long-Term Patterns' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Explain the difference between weather and climate using a personal example, and identify your region''s climate zone.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build a Weather Station & Forecast Report' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'short_answer', 'Submit your 5-day weather observation log.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build a Weather Station & Forecast Report' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'short_answer', 'Describe any fronts or pressure changes you identified during your tracking period.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build a Weather Station & Forecast Report' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Write your 3-day forecast and explain your reasoning.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Build a Weather Station & Forecast Report' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Weather & Climate' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 4, 'short_answer', 'Reflect on your confidence in your forecast and what tools real meteorologists use that you didn''t have access to.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Water Cycle & Earth''s Hydrosphere' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which process describes water vapor turning back into liquid water in the sky?', '["Evaporation", "Condensation", "Precipitation", "Transpiration"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Water Cycle & Earth''s Hydrosphere' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'What percentage of Earth''s water is estimated to be in the oceans?', '["About 50%", "About 75%", "About 97%", "About 10%"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='The Water Cycle & Earth''s Hydrosphere' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Trace a water molecule through at least four stages of the water cycle, from the ocean to a cloud.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Natural Resources: Renewable vs. Nonrenewable' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which of the following is a nonrenewable resource?', '["Solar energy", "Wind energy", "Coal", "Geothermal energy"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Natural Resources: Renewable vs. Nonrenewable' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'A key disadvantage of some renewable resources like solar and wind is:', '["They release large amounts of greenhouse gases", "They can be inconsistent depending on weather or time of day", "They take millions of years to form", "They cannot be used at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Natural Resources: Renewable vs. Nonrenewable' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Describe one renewable and one nonrenewable energy source, including one advantage and one disadvantage of each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Energy Resource Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'short_answer', 'Describe your region''s energy mix and classify each source as renewable or nonrenewable.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Energy Resource Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'short_answer', 'Describe any local energy infrastructure example you identified.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Energy Resource Investigation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Propose one realistic change to increase renewable energy use in your community and explain one challenge it would face.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Water & Energy Resources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which process is primarily responsible for moving water from the ocean into the atmosphere?', '["Precipitation", "Evaporation", "Runoff", "Condensation"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Water & Energy Resources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'Which resource is considered renewable?', '["Natural gas", "Coal", "Wind", "Uranium"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Water & Energy Resources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'multiple_choice', 'Approximately what percentage of Earth''s water is usable fresh water?', '["About 1%", "About 25%", "About 50%", "About 75%"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Water & Energy Resources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Water & Energy Resources' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 4, 'short_answer', 'Explain one advantage and one disadvantage of relying more heavily on renewable energy sources.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Climate Change: Evidence & Causes' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'The greenhouse effect refers to:', '["The cooling of the atmosphere over time", "Certain gases trapping heat in the atmosphere", "The complete absence of atmospheric gases", "Ocean currents moving heat only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Climate Change: Evidence & Causes' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'Which of the following is a source of evidence for past climate conditions?', '["Social media posts", "Ice core samples", "Weather forecasts", "News headlines"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Climate Change: Evidence & Causes' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Explain the greenhouse effect and describe two independent lines of evidence scientists use to study climate change.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Conservation & Sustainable Practices' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'multiple_choice', 'Which of the Three R''s is considered to have the biggest impact on reducing environmental harm?', '["Recycle", "Reuse", "Reduce", "They are all exactly equal"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Conservation & Sustainable Practices' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'multiple_choice', 'Sustainability is best defined as:', '["Using as many resources as possible right now", "Meeting present needs without compromising future generations ability to meet their own", "Avoiding all use of natural resources", "A type of renewable energy"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conservation & Sustainable Practices' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Describe one real or proposed conservation/sustainability practice in your community and explain how it reduces environmental impact.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Environmental Action Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 1, 'short_answer', 'Describe your chosen environmental issue and the community or region it affects.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Environmental Action Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 2, 'short_answer', 'Explain the Earth science concepts involved and connect them to this semester''s content.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Environmental Action Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 3, 'short_answer', 'Assess who and what is affected by this issue and how severe it is.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Environmental Action Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Human Impact & Environmental Stewardship' AND course_id=(SELECT id FROM courses WHERE slug='venture-earth-environmental-science'))), 4, 'short_answer', 'List your 3+ action plan steps and write your 4-6 sentence reflection.', NULL, NULL);
