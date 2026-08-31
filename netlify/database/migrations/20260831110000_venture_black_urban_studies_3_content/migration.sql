-- Black Urban Studies III (Grades 10-11) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Original Su Mira curriculum, project-based: every assessment is a produced project (short_answer only, no quizzes/multiple_choice).
-- Aligned to American History II & Founding Principles, Civics & Government (NC Standard Course of Study).

UPDATE courses SET status = 'published' WHERE slug = 'venture-black-urban-studies-3';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'), 'Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act', 0),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'), 'Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship', 1),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'), 'Unit 3: Culture as Resistance — Music, Art & Media in the Black City', 2),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'), 'Unit 4: Contemporary Urban Policy & Black Political Leadership', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Black Reconstruction-Era Officeholders & the Rollback of Political Power', 1, 'lesson',
  $lesson$## When Black Political Power Was Real — and Then Erased

Reconstruction (1865-1877) produced a level of Black political representation the country would not see again for nearly a century. Understanding both the achievement and its violent rollback is essential to understanding Black urban politics today.

### Real Political Power

Hiram Revels of Mississippi became the first Black U.S. Senator in 1870, filling the same Senate seat once held by Jefferson Davis, the former Confederate president — a symbolically enormous moment. Blanche K. Bruce, also of Mississippi, became the second Black U.S. Senator in 1875 and the first to serve a full term. P.B.S. Pinchback of Louisiana briefly served as the nation's first Black governor in late 1872, during a contested transition. Over 600 Black men served in Southern state legislatures during Reconstruction, passing the South's first public school systems, among other reforms.

### The Rollback

This power was systematically dismantled after Reconstruction ended in 1877 (when federal troops withdrew from the South as part of a political compromise). Southern states enacted poll taxes, literacy tests, and "grandfather clauses" (exempting voters whose grandfathers could vote before the Civil War — effectively exempting only white voters) specifically to disenfranchise Black voters while technically avoiding an explicit race-based law. The Supreme Court's *Plessy v. Ferguson* decision (1896) then legalized "separate but equal" segregation, cementing Jim Crow for the next six decades.

### Why This Sets Up the Whole Course

This course studies Black political and economic power in cities. You cannot understand why that power had to be rebuilt in the 20th century without understanding that it existed first, and was deliberately taken away — not lost by accident.

### Your Project This Week

Begin researching one Reconstruction-era Black officeholder for your Small Project 1 timeline.$lesson$,
  'AH2.H.1.1', 'Analyze the achievements of Black Reconstruction-era officeholders and the specific legal mechanisms used to systematically disenfranchise Black voters afterward.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Disfranchisement, Jim Crow Law & the Long Fight for the Vote', 2, 'lesson',
  $lesson$## Sixty Years From Rollback to the Voting Rights Act

Between the end of Reconstruction (1877) and the Voting Rights Act (1965), Black Southerners fought an 88-year struggle to reclaim the political power documented in Lesson 1.

### Life Under Jim Crow

"Jim Crow" laws enforced legal segregation in nearly every area of public life — schools, transportation, restaurants, water fountains — while disfranchisement laws kept most Black citizens from voting at all. By the early 1900s, Black voter registration in many Southern states had dropped to a small fraction of what it had been during Reconstruction.

### Selma and the Voting Rights Act (1965)

On March 7, 1965 — remembered as "Bloody Sunday" — peaceful marchers led by John Lewis and others were violently attacked by state troopers while crossing the Edmund Pettus Bridge in Selma, Alabama, attempting to march to Montgomery to demand voting rights. National television coverage of the violence helped build the political pressure that led President Lyndon B. Johnson to sign the Voting Rights Act on August 6, 1965 — banning literacy tests and other discriminatory voting practices, and authorizing federal oversight of election changes in areas with histories of discrimination.

### The Immediate Impact

Black voter registration in the Deep South rose dramatically within just a few years of the Act's passage — a direct, measurable result of federal enforcement replacing state-level obstruction.

### The Unfinished Story

The Voting Rights Act's federal oversight provisions were significantly weakened by the Supreme Court's *Shelby County v. Holder* decision in 2013, and voting-rights debates remain an active, contested area of American policy today — which is exactly why this course treats history as directly connected to present-day civics.

### Your Project This Week

Add the Voting Rights Act of 1965 to your Small Project 1 timeline alongside your Reconstruction-era officeholder.$lesson$,
  'AH2.H.1.2', 'Analyze the causes and impact of the Voting Rights Act of 1965 within the longer history of Black disfranchisement and political struggle.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Small Project 1: Voting Rights Timeline & Policy Brief', 3, 'practice',
  $lesson$## Small Project 1: Voting Rights Timeline & Policy Brief

Combine Lessons 1 and 2 into one finished research product: an annotated timeline plus a short policy-analysis memo.

### The Deliverable

**Part A — Annotated Timeline.** Create a timeline spanning at least 1870 to 1965 with a minimum of 5 dated events, including: one Reconstruction-era officeholder, one disfranchisement law or practice, and the Voting Rights Act of 1965. Each event needs a one-sentence explanation of its significance.

**Part B — Policy Memo.** Write a half-page memo in real policy format analyzing ONE voting-rights law of your choice from your timeline (Reconstruction-era protections, a Jim Crow-era disfranchisement law, or the Voting Rights Act itself). Your memo should include:
- What the law/practice did
- Who it affected and how
- Whether its effects are still felt today, and how you know

### Why This Format

Legislative staffers, policy researchers, and civil rights organizations write memos in exactly this format daily — this is a transferable professional skill, not just a school assignment.

### Submission Checklist

- Timeline has at least 5 dated, explained events spanning 1870-1965
- Memo addresses all three required elements
- Memo is written in a professional (not casual) tone

Next week, bring both pieces to a Project Workshop.$lesson$,
  'AH2.H.1.1-2', 'Apply research on Reconstruction-era political power and disfranchisement to produce an original annotated timeline and policy memo.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Project Workshop & Peer Critique: Refining the Policy-Analysis Memo', 4, 'practice',
  $lesson$## Project Workshop & Peer Critique

Policy memos live or die on clarity and evidence. Put yours through a real editorial review before it's considered final.

### How This Workshop Works

1. **Editorial Read.** Your reviewer reads your memo once, cold, with no explanation from you.
2. **Three Questions.** Your reviewer must answer: (1) What law/practice was this about? (2) Who did it affect? (3) What was the memo's main conclusion? If they can't answer clearly, that section needs revision.
4. **Evidence Check.** Your reviewer checks whether every claim in your memo is backed by something specific (a date, a name, a fact) rather than a vague generalization.
5. **Revise** based on both checks.

### Why This Matters

This is exactly how policy shops, think tanks, and legislative offices edit memos before they go to a decision-maker — vague or unsupported writing gets sent back for revision.

### This Week's Task

Run your memo through this workshop and record what you tightened.$lesson$,
  'AH2.H.1.1-2', 'Apply structured editorial critique to strengthen the clarity and evidentiary support of an original policy memo.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'The Racial Wealth Gap: Data, Causes & Black Wall Streets', 5, 'lesson',
  $lesson$## Following the Money Across Generations

You've studied the political side of this history. Now trace the economic side: why does a measurable Black-white wealth gap persist in America today, and how did some Black communities briefly built extraordinary wealth despite every obstacle?

### Understanding the Wealth Gap

Economists distinguish *income* (what you earn) from *wealth* (what you own minus what you owe — savings, home equity, investments). Research from the Federal Reserve and other economists has consistently found the median wealth gap between white and Black families to be several times larger than the income gap, a difference researchers trace substantially to historical barriers to homeownership and asset-building you've already studied: enslavement's uncompensated labor (Course I), the broken promise of Reconstruction-era land redistribution (Course I), and 20th-century redlining (Course II). Wealth compounds and passes across generations in ways income alone does not — which is why policies from a century ago still show up in wealth data today.

### Black Wall Streets: Building Wealth Anyway

Despite these barriers, some Black communities built remarkable, self-contained economic power. Tulsa, Oklahoma's Greenwood District — nicknamed "Black Wall Street" — was home to hundreds of Black-owned businesses, hotels, and professional offices by 1921. It was destroyed in the Tulsa Race Massacre (May 31-June 1, 1921), when a white mob burned Greenwood to the ground, killing an estimated 100-300 people and destroying an entire community's accumulated wealth in about 18 hours — a stark, violent illustration of how quickly built wealth could be destroyed.

### Durham's Hayti District: A Surviving Example

Durham, North Carolina's Hayti district, home to North Carolina Mutual Life Insurance Company (founded 1898, which grew into the nation's largest Black-owned business for decades) and Mechanics and Farmers Bank (founded 1908), earned its own "Black Wall Street of the South" nickname — and unlike Greenwood, it grew for decades before urban renewal (Course II, Lesson 6) dismantled much of it in the 1960s-70s.

### Your Project This Week

Choose either Greenwood or Hayti (or another historic Black economic center) and begin gathering data for your Major Project 1 case study.$lesson$,
  'FP.E.1.1', 'Analyze the historical causes of the racial wealth gap and evaluate historic examples of Black economic self-determination and wealth-building.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Black Entrepreneurship as Economic Resistance', 6, 'lesson',
  $lesson$## Building a Business as a Political Act

In a system designed to exclude Black Americans from mainstream banking, insurance, and commerce, starting and running a Black-owned business was never just an economic choice — it was often a direct act of resistance and self-determination.

### Why Entrepreneurship Was Resistance

When mainstream banks routinely denied loans to Black customers (a practice later reinforced by redlining), Black entrepreneurs built parallel financial institutions instead: banks, insurance companies, and mutual aid societies that served customers the mainstream economy refused. Madam C.J. Walker, born in 1867 to formerly enslaved parents, built a hair-care products empire in the early 1900s and became one of the first American women (of any race) to become a self-made millionaire, employing thousands of Black women as sales agents nationwide.

### The Insurance Industry as a Case Study

Because mainstream insurers often refused to insure Black customers at fair rates (or at all), Black-owned insurance companies filled a real, unmet need. North Carolina Mutual Life Insurance Company, founded in Durham in 1898, grew to become the nation's largest Black-owned business for much of the 20th century, providing life insurance to Black families who had no other reliable option — while also funding other Black-owned Durham institutions with its capital.

### The Pattern That Connects This Whole Course

Notice the repeating pattern across every unit of Black Urban Studies: excluded from mainstream systems, Black communities built parallel institutions — Fort Mose, Freedmen's towns, Black-owned banks, mutual aid societies, and now Black-owned businesses. This is the throughline of the entire course sequence.

### Your Project This Week

Continue your Major Project 1 research, focusing specifically on how entrepreneurship functioned within your chosen economic center (Greenwood or Hayti).$lesson$,
  'AH2.H.2.1', 'Analyze how Black entrepreneurship functioned as a form of economic resistance and self-determination in response to systemic financial exclusion.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Reading Real Economic Data: Building Your Data Visualization', 7, 'lesson',
  $lesson$## Turning Numbers Into an Argument

Your Major Project 1 requires an original data visualization. This lesson teaches you how to find, evaluate, and visually present real economic data responsibly and accurately.

### Finding Real Data

Reliable sources for historic and present-day economic data include the U.S. Census Bureau, the Federal Reserve's Survey of Consumer Finances, and reputable economic research organizations. When researching your case study (Greenwood, Hayti, or the broader wealth gap), look for concrete, sourced figures rather than vague claims — for example, an estimated dollar value of property destroyed in the Tulsa massacre, or the number of businesses that existed in a district at its peak, both of which have been documented by historians and later investigative commissions.

### Choosing the Right Visualization

- A **timeline** works well for showing a community's rise and disruption over years
- A **bar chart** works well for comparing figures (e.g., estimated wealth before vs. after a destructive event)
- A **simple map** works well for showing geographic scope (e.g., how many blocks Greenwood covered)

### The Historian's Responsibility

Because exact historical figures are sometimes disputed or estimated differently by different sources (this is common and expected in historical research, not a sign of bad research), always cite where a number comes from and note if sources disagree, rather than presenting one estimate as an undisputed fact.

### Your Project This Week

Finalize the data and choose the visualization format for your Major Project 1 case study, due next week.$lesson$,
  'FP.E.1.1', 'Apply responsible historical and economic research methods to select, source, and visually represent quantitative data.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'MAJOR PROJECT 1: Economic Justice Case Study', 8, 'practice',
  $lesson$## MAJOR PROJECT 1: Economic Justice Case Study

Combine your research on the wealth gap, Black entrepreneurship, and data visualization into one complete case study.

### Driving Question

**"How did historic policy decisions create today's racial wealth gap, and what has closed it where it has closed?"**

### The Challenge

Produce a research report (1-2 pages) plus one original data visualization on your chosen historic or present-day Black economic-justice issue (Tulsa's Greenwood District, Durham's Hayti District, or another you research with approval), including:

1. **Historical background** — what was built, by whom, and how
2. **What disrupted or destroyed it** (violence, policy, urban renewal) — connect explicitly to something from an earlier unit or course if possible
3. **Your original data visualization** (timeline, chart, or map) with clearly cited sources
4. **A concluding analysis**: what does this case study teach us about the causes of the racial wealth gap, and what (if anything) has helped close gaps like this where progress has occurred?

### Requirements

- Report is 1-2 pages, written in clear analytical prose
- Data visualization is original (not copy-pasted from a source) and clearly cited
- Explicitly connects to at least one earlier unit or course in this sequence

### Why This Is the Assessment

This is the same combination of historical research, data analysis, and visual communication used by real economists, journalists, and policy researchers studying wealth inequality today.$lesson$,
  'FP.E.1.1, AH2.H.2.1', 'Synthesize historical and economic research into an original case study with an accurate, clearly sourced data visualization.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'The Harlem Renaissance to Hip-Hop: Culture as Political Voice', 9, 'lesson',
  $lesson$## Art That Refuses to Be Apolitical

Across every era you've studied, Black culture has carried political meaning — sometimes coded, sometimes explicit. This lesson traces that thread from the Harlem Renaissance to hip-hop.

### The Harlem Renaissance (Recap and Deepen)

You met Langston Hughes and Zora Neale Hurston in Course I. Their work did more than entertain — Hughes's poetry directly asserted Black dignity and identity ("I, too, am America," from his 1926 poem "I, Too") at a moment when segregation claimed the opposite.

### The Blues and Jazz as Testimony

Blues music, emerging from the Mississippi Delta in the early 20th century, and jazz, developing in New Orleans and spreading through migration-era cities like Chicago and Harlem, both carried lived experience — hardship, migration, love, and resistance — into art form, often coded for audiences who understood the deeper meaning.

### The Birth of Hip-Hop (1973)

Hip-hop is often traced to a specific event: a back-to-school party thrown by DJ Kool Herc in the Bronx, New York on August 11, 1973, where he extended the instrumental "breaks" of funk records for dancers — a technique that became foundational to the genre. Hip-hop grew directly out of a specific urban context: the Bronx in the 1970s was experiencing serious disinvestment (echoing the redlining and urban renewal patterns from Course II), and hip-hop became a voice for young people navigating that reality, eventually growing into one of the most influential cultural and economic forces in the world.

### The Throughline

From spirituals (Course I) to the blues, jazz, the Harlem Renaissance, and hip-hop, Black music and art have consistently done double duty: entertaining audiences while carrying real testimony about lived political and economic conditions.

### Your Project This Week

Choose one song, poem, or artwork (from any era studied) to analyze as a primary source for your Small Project 2.$lesson$,
  'AH2.H.3.1', 'Analyze the political and social significance of Black cultural movements from the Harlem Renaissance through the origins of hip-hop.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Project Workshop & Peer Critique: Building the Artifact Analysis', 10, 'practice',
  $lesson$## Project Workshop & Peer Critique

Treating a song or artwork as a legitimate historical primary source takes practice. Get feedback before finalizing your analysis.

### How This Workshop Works

1. **Present** your chosen cultural artifact (song, poem, or artwork) and your draft analysis to a partner.
2. **The Historian's Question.** Your reviewer asks: "What specific historical evidence — not just a general feeling — supports your claim that this artifact is 'political'?" Push for concrete connections (lyrics, imagery, the artist's own stated intent, the historical moment it was created in).
3. **The So-What Question.** Your reviewer asks: "Why does this artifact matter to understanding this era, specifically?"
4. **Revise** your analysis to strengthen both answers.

### Why This Matters

Cultural historians and musicologists are required to make exactly this kind of evidence-based argument — treating art seriously as historical evidence requires the same rigor as any other primary source.

### This Week's Task

Run your analysis through this workshop and strengthen it before final submission.$lesson$,
  'AH2.H.3.1', 'Apply structured critique to strengthen evidence-based analysis of a cultural artifact as a historical primary source.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Small Project 2: Cultural Artifact Analysis', 11, 'practice',
  $lesson$## Small Project 2: Cultural Artifact Analysis

Finalize your analysis of one song, poem, or artwork as a primary source of political or social resistance.

### The Deliverable

Write a one-page artifact analysis including:

1. **Identification** — title, creator, and date/era of your chosen artifact
2. **Context** — what was happening historically (politically, economically, socially) when it was created
3. **Close analysis** — at least two specific details (lyrics, imagery, word choices) that carry political or social meaning, with your explanation of that meaning
4. **Significance** — why this artifact matters to understanding its era, connected explicitly to something else you've studied this semester or in an earlier course

### Presentation

Be prepared to present your artifact and analysis aloud (2-3 minutes) as if introducing it in a museum exhibit or documentary.

### Submission Checklist

- All four required sections are present
- At least two specific details are analyzed, not just summarized
- Connects explicitly to at least one other unit or course

Next week, unit 4 begins with contemporary Black political leadership.$lesson$,
  'AH2.H.3.1', 'Apply close analysis of a cultural artifact as historical evidence, connecting it to broader course themes.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Black Mayors & the Politics of the Modern City', 12, 'practice',
  $lesson$## From Excluded to Elected: Black Political Leadership in City Hall

By the late 20th century, the political power stripped away after Reconstruction (Unit 1) had been rebuilt enough to elect Black mayors leading some of America's largest cities — a direct throughline worth tracing explicitly.

### Breaking Ground

Carl Stokes became the first Black mayor of a major U.S. city (Cleveland) in 1967. Maynard Jackson became Atlanta's first Black mayor in 1973 and used the office to expand minority business participation in city contracts — a direct policy response to the economic exclusion you studied in Unit 2. Harold Washington became Chicago's first Black mayor in 1983 after a hard-fought campaign that mobilized Chicago's Black neighborhoods, including Bronzeville, which you studied in Course II.

### What Changes (and What Doesn't) With Representation

Electing Black mayors gave cities leaders who often prioritized issues like fair housing enforcement, minority contracting, and community investment — but mayors also govern within real constraints: city budgets, state and federal law, and entrenched institutions that don't change overnight just because leadership changes. This is an important, nuanced lesson: political representation matters, but it is not automatically the same thing as solving problems built over a century.

### Setting Up Your Capstone

This tension — between having political power and successfully using it to reverse historical harm — is exactly the space your capstone Policy Memo & Advocacy Campaign will operate in.

### This Week's Task (This Lesson Doubles as a Workshop)

Research one Black mayor (Stokes, Jackson, Washington, or another) and identify one specific policy they pursued related to economic or housing justice, to prepare for your capstone.$lesson$,
  'FP.C&G.1.1', 'Analyze the significance and constraints of Black political leadership in major American cities in addressing economic and housing inequality.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'From History to Policy: Identifying Levers for Change', 13, 'lesson',
  $lesson$## Turning a Semester of History Into a Real Recommendation

You now have a full semester of evidence: political power built and stripped away, economic exclusion and resistance, and cultural testimony. This lesson teaches you to convert that evidence into an actionable policy recommendation.

### What Is a "Policy Lever"?

A policy lever is a specific, actionable tool a government or institution can actually use — not just a general goal. "End poverty" is a goal, not a lever. "Establish a community land trust to prevent displacement" is a lever, because it names a specific mechanism.

### Real Levers Connected to This Course

- **Fair lending enforcement** (responding to the redlining you studied in Course II)
- **Community land trusts** (nonprofit-held land that keeps housing permanently affordable, preventing the displacement your Course II capstone addressed)
- **Minority business set-asides in city contracting** (the tool Maynard Jackson used in Atlanta)
- **Reparative investment funds** targeting historically redlined or urban-renewal-damaged neighborhoods
- **Voting access protections** (responding to the disfranchisement history in Unit 1)

### Matching the Lever to the Problem

Good policy analysis doesn't pick a popular-sounding lever at random — it traces a specific historical harm to a specific, logically connected solution. Your capstone will be graded partly on whether your chosen lever actually addresses the harm you identify.

### Your Project This Week

Choose the specific present-day urban issue and policy lever you'll analyze in your capstone Policy Memo & Advocacy Campaign.$lesson$,
  'FP.C&G.3.1', 'Apply historical analysis to identify specific, actionable policy levers addressing documented urban inequities.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'Project Workshop & Peer Critique: Building the Stakeholder Map', 14, 'practice',
  $lesson$## Project Workshop & Peer Critique

Every real policy proposal needs a stakeholder map — a clear picture of who supports it, who opposes it, and who's affected. Build and pressure-test yours here.

### How This Workshop Works

1. **Draft your stakeholder map**: list at least 4 groups affected by your chosen policy lever (e.g., residents, city council, developers, a specific advocacy organization) and note whether each would likely support, oppose, or be neutral.
2. **Reviewer Challenge.** Your reviewer asks: "Have you missed anyone who would be significantly affected? Have you assumed a group's position without evidence?"
3. **Revise** your map to add any missing stakeholders or correct any unsupported assumptions.
4. **Connect to Your Capstone.** Confirm your stakeholder map is ready to support your final Policy Memo & Advocacy Campaign.

### Why This Matters

Real advocacy campaigns and legislative offices build stakeholder maps before drafting any proposal — knowing who to persuade, and how, is often more important than the policy idea itself.

### This Week's Task

Complete this workshop and finalize your stakeholder map before next week's capstone.$lesson$,
  'FP.C&G.3.1', 'Apply structured critique to build and refine an accurate, evidence-based stakeholder map for a policy proposal.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3')),
  'MAJOR PROJECT 2 CAPSTONE: Policy Memo & Advocacy Campaign', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 (Capstone): Policy Memo & Advocacy Campaign

Your final project of the semester combines everything: political history, economic analysis, cultural understanding, and now, a real proposal for change.

### Driving Question

**"What real policy change would most improve a Black urban community today, and how do you build support for it?"**

### The Challenge

Produce two connected documents:

**Part A — Policy Memo (1-2 pages, real government format).** Using your chosen issue and policy lever from Lesson 13:
- State the problem clearly, with historical context from at least two units of this course
- Recommend your specific policy lever
- Explain why this lever, specifically, addresses the historical harm you identified

**Part B — Advocacy Campaign Plan (half a page).** Using your stakeholder map from Lesson 14:
- Identify your target audience (who has the power to enact your policy?)
- Choose one message and one channel (social media, community meeting, local news, direct lobbying) to reach them
- Explain how you'd build a coalition, drawing on organizing lessons from Course II

### Requirements

- Both documents are clearly connected — the campaign should be designed specifically to advance the memo's recommendation
- Explicitly cites historical evidence from at least two units or courses in this sequence
- Written in a professional, persuasive-but-accurate tone

### Why This Is Your Final Assessment

This is the exact combination of research, writing, and strategy used by real policy analysts and advocacy organizations — the culmination of everything Black Urban Studies III has built toward.$lesson$,
  'FP.C&G.1.1, AH2.H.1-3', 'Synthesize the full semester''s political, economic, and cultural history into an original policy memo and advocacy campaign plan.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Black Reconstruction-Era Officeholders & the Rollback of Political Power' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Which officeholder are you researching, and what office did they hold?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Reconstruction-Era Officeholders & the Rollback of Political Power' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Name two specific legal mechanisms (poll tax, literacy test, grandfather clause, etc.) used to roll back Black political power, and explain how each worked.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Reconstruction-Era Officeholders & the Rollback of Political Power' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Why is it significant that this rollback used technically race-neutral laws rather than openly race-based ones?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Disfranchisement, Jim Crow Law & the Long Fight for the Vote' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'What happened on ''Bloody Sunday,'' and how did it affect the passage of the Voting Rights Act?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Disfranchisement, Jim Crow Law & the Long Fight for the Vote' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'What did the Voting Rights Act of 1965 specifically ban or authorize?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Disfranchisement, Jim Crow Law & the Long Fight for the Vote' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Why does this course connect a 1965 law to voting-rights debates happening today?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 1: Voting Rights Timeline & Policy Brief' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'List your 5 timeline events with their dates.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Voting Rights Timeline & Policy Brief' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Which law or practice did your policy memo analyze, and who did it affect?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Voting Rights Timeline & Policy Brief' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'What did you conclude about whether its effects are still felt today?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the Policy-Analysis Memo' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Could your reviewer answer all three questions clearly? Which one, if any, needed work?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the Policy-Analysis Memo' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'What vague claim did your reviewer flag, and what specific evidence did you add to fix it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the Policy-Analysis Memo' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Black Political Power — From Reconstruction to the Voting Rights Act' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'What is the single biggest improvement you made to your memo?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Racial Wealth Gap: Data, Causes & Black Wall Streets' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'In your own words, explain the difference between income and wealth, and why that distinction matters to this topic.', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Racial Wealth Gap: Data, Causes & Black Wall Streets' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Which historic Black economic center are you researching (Greenwood, Hayti, or another), and what made it economically significant?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Racial Wealth Gap: Data, Causes & Black Wall Streets' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'What ultimately happened to the community''s wealth, and what caused it?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Black Entrepreneurship as Economic Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Name one real historic Black entrepreneur or business, and explain what unmet need it filled.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Entrepreneurship as Economic Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'How does Black entrepreneurship connect to the theme of building parallel institutions you''ve seen throughout this course sequence?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Entrepreneurship as Economic Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'How did entrepreneurship function specifically within your Major Project 1 economic center?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Reading Real Economic Data: Building Your Data Visualization' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'What real data source(s) did you use for your case study?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading Real Economic Data: Building Your Data Visualization' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Which visualization format did you choose, and why does it fit your data?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading Real Economic Data: Building Your Data Visualization' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Did you find any figures that different sources estimated differently? If so, how did you handle that in your work?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Economic Justice Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Paste or summarize your historical background section.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Economic Justice Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Describe your data visualization and list your sources.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Economic Justice Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Urban Economics — Wealth Gaps, Redlining''s Legacy & Black Entrepreneurship' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Write your concluding analysis: what does this case study teach us about the wealth gap?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Harlem Renaissance to Hip-Hop: Culture as Political Voice' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Which cultural movement or artist are you focusing on, and what era does it come from?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Harlem Renaissance to Hip-Hop: Culture as Political Voice' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'What specific urban conditions (disinvestment, migration, segregation) shaped the art you''re studying?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Harlem Renaissance to Hip-Hop: Culture as Political Voice' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'What is one specific historical fact (a date, name, or event) connected to this movement''s origin?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Artifact Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'What specific evidence did you use to support your claim that your artifact is political or historically significant?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Artifact Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'How did you answer the ''so what'' question — why does this artifact matter to its era?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Artifact Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'What did you revise after this workshop?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 2: Cultural Artifact Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Identify your artifact: title, creator, and date/era.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Cultural Artifact Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Give your two specific analyzed details and their meaning.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Cultural Artifact Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Explain your artifact''s significance, connected to another unit or course.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Black Mayors & the Politics of the Modern City' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'Which mayor did you research, and what specific policy did they pursue?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Mayors & the Politics of the Modern City' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'How does that policy connect to an inequality you studied earlier in this course (wealth gap, housing discrimination, etc.)?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Black Mayors & the Politics of the Modern City' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Culture as Resistance — Music, Art & Media in the Black City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'What constraints (budget, law, existing institutions) might have limited how much that policy could accomplish?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'What present-day urban issue will your capstone address?', NULL, NULL),
((SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'What specific policy lever (not a vague goal) have you chosen?', NULL, NULL),
((SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Trace the logical connection: which historical harm from this semester does your lever respond to?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Stakeholder Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'List your at least 4 stakeholders and their likely position (support/oppose/neutral).', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Stakeholder Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'What stakeholder or assumption did your reviewer challenge, and how did you respond?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Stakeholder Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Is your stakeholder map ready for your capstone? What, if anything, still needs work?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Policy Memo & Advocacy Campaign' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 1, 'short_answer', 'State your policy problem and recommended lever.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Policy Memo & Advocacy Campaign' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 2, 'short_answer', 'Which two units or courses'' historical evidence did you cite, and how?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Policy Memo & Advocacy Campaign' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Contemporary Urban Policy & Black Political Leadership' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3'))), 3, 'short_answer', 'Describe your advocacy campaign: target audience, message, channel, and coalition-building approach.', NULL, NULL);
