-- Black Urban Studies II (Grades 8-9) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Original Su Mira curriculum, project-based: every assessment is a produced project (short_answer only, no quizzes/multiple_choice).
-- Aligned to the NC Standard Course of Study for Social Studies (Grade 8 / American History I, History & Geography strands).

UPDATE courses SET status = 'published' WHERE slug = 'venture-black-urban-studies-2';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'), 'Unit 1: The Great Migration & the Making of Black Metropolises', 0),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'), 'Unit 2: Redlining, Urban Renewal & the Politics of Space', 1),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'), 'Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities', 2),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'), 'Unit 4: Black Power, Community Institutions & Urban Entrepreneurship', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs', 1, 'lesson',
  $lesson$## Six Million Journeys, One Question: Why Now?

You met the Great Migration (1916-1970) in Black Urban Studies I. This course goes deeper: why did roughly six million people make this exact choice, at this exact moment, in these exact numbers?

### The Push: Conditions That Made Staying Unbearable

By 1915, the Jim Crow South enforced legal segregation in schools, transportation, restaurants, and voting. Lynching remained a real and openly tolerated threat used to terrorize Black communities and suppress economic or political advancement. On top of this, an agricultural disaster hit: the boll weevil, an insect that spread through Southern cotton fields starting around 1892 and devastated crops by the 1910s-20s, destroying the livelihoods of Black sharecroppers and tenant farmers who had little safety net to begin with.

### The Pull: Why Northern Cities, Specifically

World War I (1914-1918) cut off European immigration, the labor source Northern factories had relied on, right as war production created a labor shortage. Steel mills, stockyards, and auto plants in Chicago, Detroit, and Pittsburgh began actively recruiting Black Southern workers. The *Chicago Defender*, a Black-owned newspaper with wide Southern circulation (often passed hand to hand, since white postmasters sometimes tried to block its delivery), published job listings, train schedules, and migration success stories, actively organizing what became known as the "Great Northern Drive."

### A Decision With Real Data Behind It

This wasn't blind hope — migrants had real information. Letters home, the Defender's coverage, and labor recruiters gave Southern Black families the tools to make an informed, high-stakes decision about their family's future, much like an economic cost-benefit analysis.

### Your Project This Week

Begin your Unit 1 project journal: research one migration-era push factor and one pull factor in more depth than a single sentence, using at least one specific date or number.$lesson$,
  '8.H.1.1', 'Analyze the specific economic, social, and political causes driving the timing and scale of the Great Migration.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Building Bronzeville, Harlem & Black Detroit', 2, 'lesson',
  $lesson$## From Arrival to Institution: Building a City Within a City

Arriving in a new city was only the beginning. Migrants had to build entire communities and institutions almost from scratch, often while facing housing discrimination that confined them to specific neighborhoods.

### Bronzeville, Chicago

Chicago's South Side Black neighborhood became known as "Bronzeville," a name popularized in the 1930s. By the 1940s, sociologists St. Clair Drake and Horace Cayton documented Bronzeville in their landmark study *Black Metropolis* (1945), describing a fully realized community: Black-owned banks, insurance companies, theaters, newspapers (including the *Chicago Defender* itself), churches, and a thriving jazz and blues scene. The term "Black Metropolis" captured something important: this wasn't a slum by necessity, it was a city built by people locked out of the wider city's institutions, so they built their own.

### Black Detroit

Detroit's Black population exploded alongside the auto industry, especially after Henry Ford began hiring Black workers at Ford's River Rouge plant in larger numbers than most competitors (though often in the hardest, most dangerous positions). Detroit's Black community built its own institutions in neighborhoods like Paradise Valley and Black Bottom, including nightclubs, Black-owned businesses, and churches that anchored community life.

### Harlem, New York

Harlem in New York became perhaps the most famous migration-era Black neighborhood, later home to the Harlem Renaissance you studied in Course I. Its population grew from a small Black community around 1900 to a major cultural and political center by the 1920s-30s.

### The Common Thread

In each city, the pattern repeats: housing discrimination concentrated Black migrants into specific neighborhoods, and residents responded by building parallel institutions — a form of resilience and self-determination under real constraint.

### Your Project This Week

Choose one migration-era neighborhood (Bronzeville, Harlem, Black Detroit, or another you research) to profile for this unit's Small Project.$lesson$,
  '8.H.1.2', 'Analyze how migration-era Black communities built independent institutions in response to housing discrimination and segregation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Small Project 1: Great Migration City Profile', 3, 'practice',
  $lesson$## Small Project 1: Great Migration City Profile

Turn your research from Lessons 1-2 into a finished infographic profile of one migration-era Black neighborhood.

### The Deliverable

Design a one-page infographic (hand-drawn or digital) including:

- **Neighborhood name and city**
- **A timeline** showing at least 3 dates (e.g., when major migration to this city began, when a key institution was founded, a peak population year)
- **Three institutions** (businesses, newspapers, churches, theaters, etc.) with one sentence describing each
- **One quote or fact** from a real historical source (a newspaper excerpt, a sociologist's description, or a migrant's own words)
- **A one-sentence "So what?"** explaining why this neighborhood matters to American history

### Why an Infographic

Urban historians and journalists often need to communicate dense research to a general audience quickly and visually — this is a real professional skill, not just a school format.

### Submission Checklist

- Timeline has at least 3 dated events
- Three institutions are named and described
- Includes one real quote or sourced fact
- Ends with a clear "So what?" statement

Next week, bring this to a Project Workshop for peer feedback.$lesson$,
  '8.H.1.1-2', 'Apply research on Great Migration-era neighborhoods to design an original data-driven infographic profile.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Project Workshop & Peer Critique: Refining the City Profile Infographic', 4, 'practice',
  $lesson$## Project Workshop & Peer Critique

Bring your Great Migration City Profile infographic to a structured design critique — the same process a graphic designer or data journalist goes through before publishing.

### How This Workshop Works

1. **Silent Read.** Have a reviewer look at your infographic for 60 seconds without you explaining anything — infographics should mostly speak for themselves.
2. **What They Understood.** Ask your reviewer to tell you, in their own words, the neighborhood's story based only on what they saw.
3. **Gap Check.** Compare what they understood to what you meant to communicate. Any gap reveals what needs to be clearer.
4. **Revise.** Fix at least one specific clarity issue your reviewer identified.

### Why This Matters

This "silent read" test is a real technique used by designers and data-visualization professionals to catch confusing work before it ships to a real audience.

### This Week's Task

Run your infographic through the silent-read workshop and record what you learned and changed.$lesson$,
  '8.H.1.1-2', 'Apply structured design critique to revise and clarify an original data-driven infographic.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Redlining & the HOLC Maps', 5, 'lesson',
  $lesson$## The Map That Shaped a Century

In the 1930s, a federal agency drew maps that would quietly shape American neighborhoods for the next hundred years — and whose effects are still measurable today.

### What Was the HOLC?

The Home Owners' Loan Corporation (HOLC), created in 1933 during the New Deal, produced "residential security maps" for major U.S. cities, grading neighborhoods from "A" (best, colored green) to "D" ("hazardous," colored red) for mortgage lending risk. This is where the term "redlining" comes from.

### How Race Drove the Grades

HOLC's own written surveys openly cited the racial makeup of a neighborhood as a factor in its grade. Neighborhoods with Black residents were overwhelmingly graded "D" and colored red — regardless of the actual income, upkeep, or safety of the homes there. This meant banks and the federal government treated an entire neighborhood as a bad investment because Black families lived there.

### The Long-Term Effect

Redlined neighborhoods were starved of mortgage lending and investment for decades, while nearby white neighborhoods graded "A" or "B" received loans that allowed families to build home equity — one of the primary ways American families historically built wealth. Because this policy operated across roughly 240 cities studied by later researchers, its effects compounded across generations, and many formerly redlined neighborhoods still show measurably lower home values, tree cover, and public investment today.

### Why This Matters for Urban Studies

Redlining shows how a single, quiet bureaucratic decision — a map with colored lines — can shape a city's geography of opportunity for a century. This is the kind of "invisible infrastructure" urban studies asks you to notice.

### Your Project This Week

Find (with your teacher or parent guide's help) a real digitized HOLC map of a U.S. city (many are freely available through university and public archives) and begin identifying redlined areas.$lesson$,
  '8.G.1.1', 'Analyze how federal housing policy (HOLC redlining maps) used race as a factor in neighborhood investment grading, with lasting geographic consequences.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Urban Renewal & the Highways Built Through Black Neighborhoods', 6, 'lesson',
  $lesson$## "Urban Renewal" and What Author James Baldwin Called "Negro Removal"

Starting in the 1950s, cities used federal urban renewal programs and the new Interstate Highway System to clear entire neighborhoods — and Black neighborhoods were targeted disproportionately.

### The Federal-Aid Highway Act of 1956

This law funded the interstate highway system, and city planners frequently routed highways directly through Black neighborhoods — often the path of least political resistance, since these communities had little political power to stop it. Well-documented examples include I-40 cutting through the Hayti district in Durham, North Carolina (a thriving Black business community, home to North Carolina Mutual Life Insurance Company and Mechanics and Farmers Bank), I-375 through Detroit's Black Bottom and Paradise Valley neighborhoods, and I-95 through Miami's Overtown.

### "Urban Renewal" in Practice

Federal urban renewal programs (1949 onward) allowed cities to declare neighborhoods "blighted" and clear them for redevelopment, often replacing thriving (if under-invested) Black communities with highways, parking lots, or projects that displaced far more residents than they later housed. Writer James Baldwin famously and bitterly called this pattern "urban renewal" "means Negro removal" in a 1963 televised interview, capturing how the policy's name masked its real effect on Black communities.

### The North Carolina Example: Durham's Hayti District

Hayti was one of the most economically self-sufficient Black communities in the early 20th-century South, sometimes called "Black Wall Street of the South." The construction of the Durham Freeway (NC Highway 147) through Hayti in the 1960s-70s destroyed much of this thriving business district — a direct, local example of the pattern you're studying nationally.

### Your Project This Week

Continue your Unit 2 project journal: connect one HOLC-redlined area to a later urban renewal or highway project in the same city, if you can find one.$lesson$,
  '8.H.2.1', 'Analyze how urban renewal programs and interstate highway construction disproportionately displaced and destroyed Black urban communities.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'The Fair Housing Act of 1968 and the Limits of Legal Change', 7, 'lesson',
  $lesson$## A Law Passes. Does the Problem End?

By the late 1960s, redlining and urban renewal had shaped American cities for over three decades. In 1968, Congress finally passed a law directly banning housing discrimination — but passing a law and undoing its damage are two very different things.

### The Fair Housing Act of 1968

Signed into law on April 11, 1968 — just one week after the assassination of Dr. Martin Luther King Jr., which helped push the long-stalled bill through Congress — the Fair Housing Act (Title VIII of the Civil Rights Act) made it illegal to refuse to sell, rent, or finance housing based on race, among other protected categories. It also banned the exact kind of racial criteria HOLC had used openly decades earlier.

### Why the Law Alone Wasn't Enough

Outlawing future discrimination did not reverse thirty-plus years of unequal investment that had already happened. Formerly redlined neighborhoods had already missed a generation of home-equity growth; highways had already been built through Hayti, Black Bottom, and Overtown. Enforcement of the new law was also historically weak in its early decades, and discriminatory practices like "steering" (agents guiding buyers toward or away from neighborhoods based on race) and lending discrimination continued in less overt forms for years afterward, as later fair-housing testing studies documented.

### The Urban Studies Lesson

This is a crucial concept for understanding cities: legal change and material change are not the same thing. A policy's damage can outlast the policy itself by generations — which is exactly why you'll spend Black Urban Studies III and IV studying present-day policy solutions to problems with century-old roots.

### Your Project This Week

Finalize your Unit 2 project journal, connecting your redlining and highway research to the passage (and limits) of the Fair Housing Act.$lesson$,
  '8.H.2.2', 'Explain the significance and limitations of the Fair Housing Act of 1968 in addressing the effects of decades of housing discrimination.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'MAJOR PROJECT 1: Redlining Then & Now', 8, 'practice',
  $lesson$## MAJOR PROJECT 1: Redlining Then & Now

Bring together everything from Unit 2 into a real policy-analysis brief connecting historic housing policy to a present-day outcome.

### Driving Question

**"How did a single federal housing map shape a neighborhood's wealth, health, or infrastructure for generations?"**

### The Challenge

Write a one-page policy brief that:

1. **Identifies a real historic HOLC-graded area** (from Lesson 5's research) in a specific U.S. city
2. **Explains its original HOLC grade and the stated reasoning**, including any racial criteria used
3. **Traces at least one concrete present-day disparity** connected to that area — this could be home values, tree cover/green space, health outcomes, or highway proximity (many of these are documented in public research and news coverage on redlining's legacy)
4. **Proposes one realistic policy idea** that could begin addressing this disparity today

### Requirements

- One page, written in real policy-memo format (a short introduction, evidence section, and recommendation)
- Cites at least two real sources (the HOLC map itself counts as one)
- Includes your own original analysis connecting past policy to present outcome — this should not just restate what a source says

### Why This Is the Assessment

This is exactly the kind of document a housing-policy analyst, city planner, or nonprofit researcher produces professionally: using historical evidence to make an evidence-based case for present-day action.$lesson$,
  '8.G.1.1, 8.H.2.1-2', 'Synthesize research on redlining, urban renewal, and fair housing law into an original policy brief connecting historical policy to present-day outcomes.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Montgomery, Birmingham & the Organizing Playbook', 9, 'lesson',
  $lesson$## Organizing Isn't Improvised — It's Designed

The Civil Rights Movement's most famous campaigns weren't spontaneous outbursts of anger. They were carefully designed organizing campaigns with strategy, leadership structure, and specific goals — a playbook worth studying in its own right.

### The Montgomery Bus Boycott (1955-1956)

When Rosa Parks was arrested on December 1, 1955 for refusing to give up her bus seat, local organizers — who had been preparing for a test case for months through the Women's Political Council — launched a coordinated boycott of Montgomery's bus system. The Montgomery Improvement Association, with a young pastor named Dr. Martin Luther King Jr. as its president, organized carpools and sustained the boycott for 381 days until the Supreme Court ruled bus segregation unconstitutional in *Browder v. Gayle* (1956).

### The Birmingham Campaign (1963)

Birmingham, Alabama was intentionally chosen by the Southern Christian Leadership Conference (SCLC) as one of the most segregated cities in the country — organizers believed a victory there would have national impact. The campaign used sit-ins, marches, and boycotts of downtown businesses. When adult participation lagged, organizers controversially recruited students in what became known as the Children's Crusade (May 1963); footage of police commissioner Bull Connor's officers using fire hoses and police dogs on child protesters shocked the nation and helped build pressure for the Civil Rights Act of 1964.

### The Organizing Elements Behind Both Campaigns

1. **A specific, achievable goal** (desegregate this bus system; desegregate these businesses)
2. **A coalition** (churches, women's organizations, students, national civil rights groups)
3. **A sustained tactic** (boycott, sit-in, march) that created real economic or political pressure
4. **Media strategy** — both campaigns understood that national news coverage of injustice could build outside pressure

### Your Project This Week

Begin analyzing one of these two campaigns (or another historic urban civil rights campaign) using these four organizing elements.$lesson$,
  '8.H.3.1', 'Analyze the organizing structure, strategy, and coalition-building behind major urban Civil Rights Movement campaigns.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Project Workshop & Peer Critique: Building the Campaign Plan', 10, 'practice',
  $lesson$## Project Workshop & Peer Critique

You're about to design your own organizing campaign in Lesson 11. Before you do, pressure-test your analysis of a real historic campaign with a peer reviewer — the same way real organizers debrief past campaigns before planning new ones.

### How This Workshop Works

1. **Present** your four-element breakdown (goal, coalition, tactic, media strategy) of your chosen historic campaign.
2. **Reviewer Challenge.** Your reviewer's job is to ask: "Would this actually have worked without [one of the four elements]?" for each element, forcing you to explain why each piece mattered.
3. **Identify the Hardest Element.** Together, decide which of the four elements would be hardest to replicate today, and why.
4. **Revise** your analysis based on this discussion before moving to your own campaign design.

### Why This Matters

Real campaign strategists and organizers do exactly this kind of after-action analysis — studying what worked, what was hardest, and what's transferable to new situations.

### This Week's Task

Complete this workshop and record your conclusions before designing your own campaign next week.$lesson$,
  '8.H.3.1', 'Apply structured peer critique to strengthen historical campaign analysis before designing an original organizing plan.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Small Project 2: Organize a Movement', 11, 'practice',
  $lesson$## Small Project 2: Organize a Movement

Design a modern organizing campaign modeled on the strategic elements behind Montgomery or Birmingham.

### The Deliverable

Create a **Campaign Plan** (one to two pages) for a real or realistic present-day urban issue of your choice (school funding, housing, environmental justice, transit access, etc.), including:

1. **A specific, achievable goal** (not "end injustice" — something concrete and winnable)
2. **A coalition** — list at least three real or realistic types of groups/organizations you'd need
3. **A sustained tactic** — choose and justify one (boycott, petition drive, public campaign, direct action) and explain the pressure it creates
4. **A media/communication strategy** — how would you get this covered or spread today (local news, social media, community events)?

### Ground It in History

Explicitly explain how at least one element of your plan is modeled directly on something from Montgomery or Birmingham.

### Submission Checklist

- Goal is specific and realistically achievable
- Coalition includes at least 3 named group types
- Tactic is chosen and justified, not just listed
- At least one element is explicitly connected to historic precedent

Next week, you'll take this plan to a Project Workshop before final revision.$lesson$,
  '8.H.3.1', 'Apply historical organizing strategy to design an original, realistic present-day campaign plan.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Project Workshop & Peer Critique: Pressure-Testing the Campaign Plan', 12, 'practice',
  $lesson$## Project Workshop & Peer Critique

Every real campaign gets challenged before it launches. Put your Campaign Plan through the same test.

### How This Workshop Works

1. **Present** your Campaign Plan to a partner or group.
2. **Devil's Advocate Round.** Your reviewer plays a skeptic and asks: "Why would this actually work? What happens if [coalition group] doesn't show up? What happens if the tactic doesn't create enough pressure?"
3. **Defend or Revise.** For each challenge, either defend your plan with reasoning or revise it to address the weakness.
4. **Finalize** at least one concrete change based on this process.

### Why This Matters

Real organizers stress-test plans exactly this way before committing resources — it's far cheaper to find a weakness in a workshop than after a campaign has already launched.

### This Week's Task

Run your Campaign Plan through this workshop and record what changed.$lesson$,
  '8.H.3.1', 'Apply structured critique to pressure-test and strengthen an original campaign plan.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Black Power, Mutual Aid & Community Institution-Building', 13, 'lesson',
  $lesson$## When Communities Build Their Own Safety Net

By the late 1960s, some activists concluded that legal victories alone weren't delivering enough real change, fast enough. The Black Power movement emphasized community self-determination, cultural pride, and — importantly for this course — direct, hands-on institution-building.

### The Black Panther Party's Survival Programs

Founded in Oakland, California in 1966 by Huey Newton and Bobby Seale, the Black Panther Party is often remembered for its armed community patrols monitoring police, but it also ran an extensive network of "Survival Programs," most famously the Free Breakfast for Children Program (started 1969), which fed thousands of children daily across dozens of cities before the federal government later expanded school breakfast programs partly in response. Other programs included free health clinics, free ambulance services, and legal aid — mutual aid built and run directly by the community, without waiting on government action.

### Black-Owned Banks as Institution-Building

Long before the Panthers, Black communities had already been building financial self-determination. Durham, North Carolina was home to Mechanics and Farmers Bank (founded 1908) and North Carolina Mutual Life Insurance Company (founded 1898) — Black-owned financial institutions that gave Black families access to loans and insurance when white-owned banks routinely denied them, directly countering the kind of lending discrimination you studied in Unit 2.

### Connecting the Thread

Both the Panthers' survival programs and NC's Black-owned banks share a core idea: when a system won't serve your community, build a parallel institution that will. This is the same self-determination instinct behind Fort Mose and the Freedmen's towns you studied in Course I.

### Your Project This Week

Begin researching one historic mutual-aid or community institution (a survival program, a bank, an insurance company, a credit union) for your capstone project.$lesson$,
  '8.H.4.1', 'Analyze how Black Power-era mutual aid programs and historic Black-owned financial institutions built community self-determination in response to systemic exclusion.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'Project Workshop & Peer Critique: Capstone Revitalization Plan Review', 14, 'practice',
  $lesson$## Project Workshop & Peer Critique

Before your capstone is due, put your Community Revitalization Plan (map, budget, and pitch) through one more round of real feedback — this time acting as a community review board.

### How This Workshop Works

1. **Present** your in-progress revitalization plan to a partner or group acting as a neighborhood advisory board.
2. **The Displacement Question.** Your reviewer must ask directly: "Who could this plan accidentally push out or harm, even with good intentions?" This is the single most important question in real community-development work.
3. **Budget Reality Check.** Your reviewer checks whether your budget numbers are realistic and whether your map matches your written plan.
4. **Revise** based on at least one of these two checks.

### Why This Matters

Real community-development plans are required to go through exactly this kind of public review before funding — and the displacement question is one that real planners are trained to ask about every single proposal, precisely because well-intentioned plans can still cause harm.

### This Week's Task

Run your plan through this review and record how you addressed the displacement question.$lesson$,
  '8.H.4.1', 'Apply community-review critique, including displacement analysis, to strengthen an original neighborhood revitalization plan.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2')),
  'MAJOR PROJECT 2 CAPSTONE: Community Revitalization Plan', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 (Capstone): Community Revitalization Plan

Bring together the entire semester — the Great Migration, redlining, civil rights organizing, and Black Power-era institution-building — into one real-world revitalization proposal.

### Driving Question

**"What would it take to revitalize a historically Black neighborhood without displacing the people who already live there?"**

### The Challenge

Choose a real or composite historically Black neighborhood (you may use one from your earlier research, such as Bronzeville, Hayti, Black Bottom, or another). Produce a Community Revitalization Plan with:

1. **A one-paragraph history** of the neighborhood connecting at least two units from this semester (e.g., its Great Migration origins AND its redlining/highway history)
2. **A map** showing at least 3 proposed improvements (housing, green space, a community institution, transit, etc.)
3. **A budget outline** with at least 3 line items and rough realistic cost estimates
4. **An anti-displacement safeguard** — one specific, real policy tool (such as a community land trust, rent stabilization, or first-right-of-refusal for existing residents) explained in your own words
5. **A 3-minute pitch** to a mock city council or community board

### Why This Is Your Final Assessment

This is the exact kind of proposal a real community-development nonprofit, city planning office, or resident-led coalition produces — combining historical understanding, design, budgeting, and equity analysis into one document meant to convince real decision-makers.$lesson$,
  '8.H.4.1, 8.G.1.1', 'Synthesize the full semester''s historical content into an original, equity-centered neighborhood revitalization proposal.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Name the push factor and the pull factor you researched, with one specific date or number for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'How did the Chicago Defender actively help cause the migration, rather than just report on it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'Why do you think World War I''s labor shortage mattered so much to this story?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Building Bronzeville, Harlem & Black Detroit' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which neighborhood are you profiling, and why?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building Bronzeville, Harlem & Black Detroit' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'Name two institutions (businesses, newspapers, churches, etc.) that anchored this community.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building Bronzeville, Harlem & Black Detroit' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What does the term ''Black Metropolis'' mean, and why is it a meaningful way to describe these neighborhoods?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 1: Great Migration City Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'List your three timeline dates and what each one represents.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Great Migration City Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'What real quote or sourced fact did you include, and where did it come from?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Great Migration City Profile' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'Write your final ''So what?'' sentence here.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the City Profile Infographic' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'What did your reviewer understand from your infographic, in their own words?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the City Profile Infographic' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'What gap did you find between what they understood and what you meant?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the City Profile Infographic' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: The Great Migration & the Making of Black Metropolises' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What specific change did you make to close that gap?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Redlining & the HOLC Maps' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which city''s HOLC map did you look at, and what grade (A-D) was assigned to at least one area you researched?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Redlining & the HOLC Maps' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'According to HOLC''s own descriptions, what role did race play in these grades?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Redlining & the HOLC Maps' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'Name one lasting effect that researchers have connected to historic redlining.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Urban Renewal & the Highways Built Through Black Neighborhoods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Name one real neighborhood destroyed or divided by highway construction, and the highway involved.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Urban Renewal & the Highways Built Through Black Neighborhoods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'What did James Baldwin mean when he said urban renewal meant ''Negro removal''?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Urban Renewal & the Highways Built Through Black Neighborhoods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'Why is Durham''s Hayti district a meaningful North Carolina example of this national pattern?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Fair Housing Act of 1968 and the Limits of Legal Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'What did the Fair Housing Act of 1968 make illegal?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Fair Housing Act of 1968 and the Limits of Legal Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'Why didn''t passing this law immediately fix the effects of redlining and urban renewal?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Fair Housing Act of 1968 and the Limits of Legal Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What is one practice (like steering) that continued discrimination in less obvious ways after 1968?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Redlining Then & Now' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which city and area did you analyze, and what was its original HOLC grade?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Redlining Then & Now' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'What present-day disparity did you connect to this area''s history?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Redlining Then & Now' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Redlining, Urban Renewal & the Politics of Space' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What policy idea did you propose, and why do you think it could help?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Montgomery, Birmingham & the Organizing Playbook' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which campaign are you analyzing, and what was its specific, achievable goal?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Montgomery, Birmingham & the Organizing Playbook' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'Name the coalition of groups involved in that campaign.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Montgomery, Birmingham & the Organizing Playbook' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'How did media coverage affect the campaign''s outcome?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Campaign Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which element (goal, coalition, tactic, or media strategy) did your reviewer challenge hardest, and how did you respond?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Campaign Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'Which of the four elements would be hardest to replicate today, and why?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Campaign Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What will you change about your analysis before starting your own campaign design?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 2: Organize a Movement' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'What is your campaign''s specific, achievable goal?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Organize a Movement' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'List your coalition and your chosen tactic, with a one-sentence justification for the tactic.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Organize a Movement' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'Which element of your plan is modeled on Montgomery or Birmingham, specifically?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Pressure-Testing the Campaign Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'What was the hardest ''devil''s advocate'' challenge your reviewer raised?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Pressure-Testing the Campaign Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'Did you defend your plan or revise it? Explain your reasoning.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Pressure-Testing the Campaign Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: The Civil Rights Movement & Grassroots Organizing in Cities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What is the final, concrete change you made to your Campaign Plan?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Black Power, Mutual Aid & Community Institution-Building' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which mutual-aid program or institution did you research, and when was it founded?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Power, Mutual Aid & Community Institution-Building' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'What specific need did it meet that mainstream institutions were not meeting?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Power, Mutual Aid & Community Institution-Building' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'How does this connect to the theme of self-determination you''ve seen elsewhere in this course sequence (Fort Mose, Freedmen''s towns)?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Capstone Revitalization Plan Review' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Who did your reviewer identify as potentially at risk of displacement in your plan?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Capstone Revitalization Plan Review' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'What change did you make to reduce that risk?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Capstone Revitalization Plan Review' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'What budget or map inconsistency (if any) did your reviewer catch, and how did you fix it?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Community Revitalization Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 1, 'short_answer', 'Which neighborhood did you choose, and which two units of history does your one-paragraph history connect?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Community Revitalization Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 2, 'short_answer', 'List your three proposed improvements and three budget line items.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Community Revitalization Plan' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Black Power, Community Institutions & Urban Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2'))), 3, 'short_answer', 'Which anti-displacement safeguard did you choose, and explain it in your own words.', NULL, NULL);
