-- Black Urban Studies IV (Grade 12 Capstone) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Original Su Mira curriculum, project-based: every assessment is a produced project (short_answer only, no quizzes/multiple_choice).
-- Aligned to American History II & Founding Principles, Civics & Government (NC Standard Course of Study) — capstone research emphasis.

UPDATE courses SET status = 'published' WHERE slug = 'venture-black-urban-studies-4';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'), 'Unit 1: Research Methods for Urban & Historical Studies', 0),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'), 'Unit 2: Case Study Deep Dive — Choose & Investigate a City', 1),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'), 'Unit 3: Policy Analysis & Advocacy Design', 2),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'), 'Unit 4: Capstone Showcase — Black Futures Project', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Choosing a Research Question & Finding Primary/Secondary Sources', 1, 'lesson',
  $lesson$## The Capstone Begins With a Question, Not an Answer

This year, you complete the Black Urban Studies sequence with an original, semester-long research project profiling one city's Black history and present-day urban condition. It starts with the hardest and most important skill in research: asking a good question.

### What Makes a Research Question "Good"

A good research question is specific, answerable with real evidence, and open enough to require genuine investigation (not just a fact you could look up in one sentence). Compare: "Was there racism in Chicago?" (too broad, not really a question) versus "How did redlining in 1930s Chicago shape which neighborhoods received investment in the following decades?" (specific, evidence-based, genuinely requires research).

### Primary vs. Secondary Sources

A **primary source** is direct evidence from the time period or people you're studying: a HOLC map, a newspaper article from the era, a census record, an oral history interview, a photograph, a government document. A **secondary source** is someone else's analysis of that evidence: a historian's book, a documentary, a research article. Strong capstone research uses both — secondary sources to build your understanding, primary sources to make your own original argument.

### Where to Find Real Sources

- **U.S. Census Bureau** historical data (population, demographics by neighborhood/decade)
- **University and public library digital archives** (many cities have digitized historic newspapers, photographs, and HOLC maps)
- **Local historical societies** and city archives (often have digitized collections specific to one city)
- **Oral history collections** (the Library of Congress and many universities maintain public oral history archives)

### Your Project This Week

Draft 2-3 candidate research questions and begin identifying what primary and secondary sources might exist to answer each one.$lesson$,
  'FP.C&G.2.1', 'Apply research methodology to develop a specific, evidence-based historical research question and identify appropriate primary and secondary sources.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Evaluating Sources & Building an Argument', 2, 'lesson',
  $lesson$## Not All Sources Are Equal: How to Evaluate What You Find

Finding a source is only the first step. Good researchers evaluate every source before relying on it — a skill that matters just as much outside the classroom as inside it.

### Questions to Ask of Every Source

- **Who created it, and when?** A source written decades after an event, from memory, carries different reliability than a document created at the time.
- **What was the creator's purpose?** A HOLC map's purpose was to guide lending decisions — useful for showing policy, but it reflects the biases of its creators, not objective neighborhood quality.
- **Does it agree or disagree with other sources?** When sources conflict (a common and expected part of real historical research), note the disagreement rather than picking whichever number is convenient.
- **Is it representing a group's own voice, or an outside description of that group?** A primary source written by a community member (an oral history, a letter) carries different weight than an outside observer's account.

### From Evidence to Argument

An argument is not just a collection of facts — it's a claim supported by evidence, with reasoning connecting the two. For example: "Claim: Chicago's Bronzeville was economically self-sufficient by the 1940s. Evidence: [specific data from Drake and Cayton's *Black Metropolis* study]. Reasoning: this shows deliberate community institution-building, not just poverty, drove Bronzeville's development."

### Avoiding Common Mistakes

Don't present a single source's claim as undisputed fact if other credible sources disagree. Don't cherry-pick only evidence that supports what you already believed before researching — let the evidence shape your argument, and be honest when it complicates your original assumption.

### Your Project This Week

Practice evaluating one source you've found using the questions above, and draft a one-sentence claim-evidence-reasoning argument based on it.$lesson$,
  'AH2.H.4.1', 'Apply source evaluation criteria and construct a claim-evidence-reasoning argument based on historical research.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Project Workshop & Peer Critique: Refining the Research Proposal', 3, 'practice',
  $lesson$## Project Workshop & Peer Critique

Before committing a full semester to your research question and chosen city, defend your proposal to a peer reviewer — exactly like a real thesis proposal defense.

### How This Workshop Works

1. **Present** your candidate research question(s), chosen city, and initial source list to a partner or group.
2. **The Feasibility Question.** Your reviewer asks: "Can you realistically answer this question with sources you can actually access this semester?" Be honest if the answer is no.
3. **The Interest Question.** Your reviewer asks: "What would make someone else want to read this research?" If you can't answer, your question may need sharpening.
4. **Revise** your research question and city choice based on this discussion.

### Why This Matters

Real graduate students and researchers go through exactly this kind of proposal defense before a committee approves months of work — catching a flawed research plan early saves enormous wasted effort later.

### This Week's Task

Finalize your research question and city choice through this workshop, ready to submit your formal Research Proposal next week.$lesson$,
  'FP.C&G.2.1, AH2.H.4.1', 'Apply structured peer critique to test the feasibility and significance of an original research proposal before beginning a semester-long project.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Small Project 1: Research Proposal', 4, 'practice',
  $lesson$## Small Project 1: Research Proposal

Formalize your semester-long research plan in a real research-proposal format.

### The Deliverable

Write a one-page Research Proposal including:

1. **Your chosen city** and why you chose it (a personal connection, a historical event you want to understand, or a present-day issue that interests you are all valid reasons)
2. **Your research question**, finalized after Lesson 3's workshop
3. **A preliminary source list** — at least 3 real sources (a mix of primary and secondary) you've identified
4. **A research plan** — briefly outline how you'll spend Unit 2 (data-gathering, drafting) to answer your question by your Major Project 1 deadline

### Why This Format

Every serious research project — in college, in journalism, in policy work — begins with a proposal like this one, forcing you to think through feasibility before investing months of work.

### Submission Checklist

- City and reason for choosing it are clearly stated
- Research question is specific and evidence-based
- At least 3 real sources are listed, with a mix of primary and secondary
- A brief research plan is included

This proposal becomes the foundation for your entire semester — treat it seriously.$lesson$,
  'FP.C&G.2.1', 'Apply research planning skills to produce a formal, feasible semester-long research proposal.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Data-Gathering: Census Records, Archives & Oral-History Methods', 5, 'lesson',
  $lesson$## Becoming a Real Researcher: Gathering Your Evidence

With your proposal approved, it's time to actually gather the evidence your case study will be built on.

### Using Census Data

The U.S. Census Bureau has published population data since 1790, and historical census records let you track a neighborhood's population, demographics, and change over time — exactly the kind of quantitative evidence that strengthens a case study (recall Course III's lesson on reading real economic data).

### Using Archives

Look for your chosen city's historical society, public library digital archive, or university special collections — many now have digitized historic newspapers, photographs, and planning documents (including HOLC maps, if relevant to your city). Note exactly where and when you accessed each source, since digital archives update and sometimes reorganize.

### Oral History Methods (If Available to You)

If you have access to someone with direct knowledge of your city's history (a family member, community elder, or local historian), a short interview can provide a primary source no archive can replace. Good oral-history practice (used by professional researchers, including at the Library of Congress) includes: preparing specific questions in advance, asking open-ended questions rather than yes/no ones, and always getting the person's permission before recording or quoting them.

### Staying Organized

Keep a running source log as you gather evidence — for each source, note what it is, where you found it, and what specific fact or quote you might use from it. This will save you significant time when drafting.

### Your Project This Week

Begin your data-gathering log, aiming for at least 3 new pieces of evidence (census data points, archival facts, or an interview) for your case study.$lesson$,
  'AH2.H.4.2', 'Apply census data analysis, archival research, and (where available) oral history methods to gather primary evidence for an original case study.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Drafting the Case Study: Narrative + Data', 6, 'lesson',
  $lesson$## Weaving Numbers and Story Into One Argument

A strong case study doesn't separate data from narrative — it weaves them together so the numbers support the human story and the story explains why the numbers matter.

### The Structure of a Strong Case Study

1. **Opening context** — introduce your city and research question
2. **Historical background** — the relevant history (drawing on everything from Black Urban Studies I-III: migration, redlining, civil rights organizing, political and economic power)
3. **Your original evidence** — the census data, archival findings, and/or oral history you gathered in Lesson 5
4. **Analysis** — what does this evidence show, and how does it answer your research question?
5. **Present-day connection** — how does this history show up in your city today?

### Weaving Technique: An Example

Weak (data alone): "The neighborhood's Black population was 85% in 1950 and 40% in 2020."
Weak (story alone): "The neighborhood changed a lot over the decades."
Strong (woven): "Census records show the neighborhood's Black population fell from 85% in 1950 to 40% by 2020 — a shift residents I researched connected directly to the highway construction documented in Course II, which displaced hundreds of families and never fully returned."

### Citing as You Draft

Cite your source for every specific fact or number as you write, rather than trying to add citations at the end — this prevents losing track of where evidence came from, a common and avoidable research mistake.

### Your Project This Week

Draft your case study's historical background and evidence sections, aiming to practice weaving data and narrative together.$lesson$,
  'AH2.H.4.3', 'Apply narrative and data-integration techniques to draft an evidence-based historical case study.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Project Workshop & Peer Critique: Full Case-Study Draft Review', 7, 'practice',
  $lesson$## Project Workshop & Peer Critique

Your case study is due next week. Get a full draft review now, while there's still time to make real improvements.

### How This Workshop Works

1. **Full Read.** Your reviewer reads your entire draft, start to finish, without interruption.
2. **Structure Check.** Does the draft include all 5 sections from Lesson 6 (context, background, evidence, analysis, present-day connection)? Flag any missing or weak section.
3. **Evidence Check.** Is every specific claim backed by a cited source? Flag any unsupported claims.
4. **The Big Question.** Your reviewer asks: "After reading this, do I understand your research question's answer clearly?" If not, your analysis section needs strengthening.
5. **Revise** based on all three checks.

### Why This Matters

This is exactly the kind of full-draft peer review used in academic research, journalism, and professional writing before anything is considered final — catching structural or evidentiary gaps here is far better than catching them after submission.

### This Week's Task

Complete this full review and make your final revisions before submitting your Major Project 1 case study.$lesson$,
  'AH2.H.4.2-3', 'Apply comprehensive structural and evidentiary peer review to finalize an original historical case study.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'MAJOR PROJECT 1: City Case Study', 8, 'practice',
  $lesson$## MAJOR PROJECT 1: City Case Study

Submit the complete, original research project you've built across Unit 2.

### Driving Question

**"What does the full arc of Black history in one chosen city reveal about how it became what it is today?"**

### The Challenge

Submit your full City Case Study (2-4 pages) including all 5 structural elements from Lesson 6:

1. Opening context and research question
2. Historical background (connecting to Black Urban Studies I-III themes)
3. Your original evidence (census data, archival research, and/or oral history)
4. Analysis answering your research question
5. A present-day connection

### Requirements

- Cites at least 5 real sources, correctly noted throughout (not just listed at the end)
- Includes at least one piece of original quantitative evidence (a census figure, a data comparison, etc.)
- Demonstrates the narrative-and-data weaving technique from Lesson 6
- Reflects the full peer-review revision process from Lesson 7

### Why This Is Your Midpoint Assessment

This case study is the evidentiary foundation for your entire capstone semester — Unit 3's policy work and Unit 4's final showcase will both build directly on what you produce here.$lesson$,
  'AH2.H.4.1-3', 'Synthesize original historical research, primary and secondary sources, and course-wide themes into a complete, evidence-based city case study.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'From History to Policy: Identifying Levers for Change', 9, 'lesson',
  $lesson$## Your Case Study Now Becomes a Policy Foundation

You've documented what happened in your chosen city and why. Unit 3 asks: given everything you now know, what should change?

### Reviewing Policy Levers

As in Black Urban Studies III, a policy lever is a specific, actionable tool — not a vague goal. Review levers connected to your case study's findings: fair lending enforcement, community land trusts, minority business set-asides, reparative investment funds, voting access protections, or others specific to your city's documented history.

### Matching Your Lever to Your Evidence

Your policy recommendation must respond directly to something you documented in your Major Project 1 case study. If your case study showed housing displacement from urban renewal, a community land trust or anti-displacement zoning policy is a logically connected lever. If your case study showed voting access barriers, a specific voting-access policy is the connected lever. Avoid picking a popular-sounding policy that doesn't actually connect to your own research.

### Researching Real Precedent

Look for a real city or organization that has already tried your chosen policy lever (even imperfectly) — real-world precedent makes your recommendation more credible and lets you learn from what worked or didn't.

### Your Project This Week

Identify your policy lever and one real-world precedent for it, connected explicitly to your Major Project 1 case study's findings.$lesson$,
  'FP.C&G.3.1', 'Apply case-study findings to identify a specific, evidence-connected policy lever supported by real-world precedent.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Project Workshop & Peer Critique: Building the Stakeholder Map', 10, 'practice',
  $lesson$## Project Workshop & Peer Critique

As in Black Urban Studies III, no real policy proposal succeeds without understanding who has to support it. Build and pressure-test your stakeholder map here.

### How This Workshop Works

1. **Draft your stakeholder map**: list at least 4 groups connected to your chosen city and policy lever (residents, city government, a relevant local organization, business interests, etc.), noting each one's likely position.
2. **Reviewer Challenge.** Your reviewer asks: "Is there a stakeholder group specific to this city you might be missing?" (Think about who was central to your case study — descendants of a displaced community, a specific historic institution, etc.)
3. **Revise** your map based on this challenge.
4. **Connect Explicitly** — note how each stakeholder connects to something specific in your case study.

### Why This Matters

A stakeholder map grounded in your own specific research (rather than generic categories) is what separates a strong, credible capstone proposal from a generic one.

### This Week's Task

Finalize your stakeholder map, explicitly tied to your case study's specific findings.$lesson$,
  'FP.C&G.3.1', 'Apply structured critique to build a case-study-specific, evidence-grounded stakeholder map.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Small Project 2: Stakeholder Map & Policy Options Memo', 11, 'practice',
  $lesson$## Small Project 2: Stakeholder Map & Policy Options Memo

Formalize your Unit 3 work into one submission: a stakeholder map plus a short policy-options memo.

### The Deliverable

**Part A — Stakeholder Map.** A visual or written map of at least 4 stakeholder groups specific to your case-study city, each with a noted position (support/oppose/neutral) and a one-sentence explanation grounded in your case study's findings.

**Part B — Policy Options Memo (half a page).** Present your chosen policy lever plus one alternative lever you considered and rejected, including:
- Why your chosen lever best fits your case study's specific evidence
- Why the alternative lever, while reasonable, is a weaker fit
- One risk or limitation of your chosen lever, honestly acknowledged

### Why Include an Alternative

Real policy analysts almost always compare at least two options — showing you seriously considered alternatives (and can explain why you rejected them) makes your final recommendation far more credible than presenting only one option as if it were obvious.

### Submission Checklist

- Stakeholder map has at least 4 groups, each connected to your specific case study
- Memo compares your chosen lever to a real alternative
- At least one honest risk/limitation is acknowledged

Next week, you'll build your final capstone from this foundation.$lesson$,
  'FP.C&G.3.1', 'Apply comparative policy analysis and stakeholder mapping to produce a case-study-grounded policy options memo.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Project Workshop & Peer Critique: Rehearsal + Feedback', 12, 'practice',
  $lesson$## Project Workshop & Peer Critique

With your case study, policy lever, and stakeholder map complete, begin building toward your final capstone showcase with an early rehearsal.

### How This Workshop Works

1. **Rough Rehearsal.** Give a rough 2-minute summary of your project so far (city, research question, key finding, policy recommendation) to a partner or group, using notes if needed — this isn't your final polished pitch yet.
2. **Clarity Check.** Your reviewer identifies the single most confusing moment in your summary.
3. **Strength Check.** Your reviewer identifies the single most compelling moment in your summary — the part that made them want to know more.
4. **Plan Your Revision.** Decide how you'll fix the confusing moment and build more of the presentation around the compelling one, ahead of Unit 4's full rehearsal.

### Why This Matters

Getting early feedback on a rough version — before investing time polishing slides or a script — is exactly how professional speakers and researchers develop strong final presentations efficiently.

### This Week's Task

Complete this early rehearsal and note your plan heading into Unit 4's full capstone workshop.$lesson$,
  'FP.C&G.3.1', 'Apply early-stage presentation feedback to plan an effective final capstone showcase.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Building the Final Presentation & Portfolio', 13, 'lesson',
  $lesson$## Assembling a Semester Into One Cohesive Story

You have a case study, a policy memo, a stakeholder map, and rehearsal feedback. Now assemble them into one cohesive final portfolio and presentation.

### The Portfolio Structure

Your final Black Futures portfolio should include:

1. **Your City Case Study** (Major Project 1, revised with any final polish)
2. **Your Policy Memo & Stakeholder Map** (Unit 3 work, combined into a clear recommendation)
3. **A one-page Executive Summary** — written last, this distills your entire project into a single page a busy decision-maker could read in two minutes: your city, your key historical finding, your recommendation, and why it matters

### Designing Your Live Presentation

Your final presentation (8-10 minutes) should NOT simply read your written documents aloud. Instead:
- Open with a hook — the single most compelling fact or story from your research (use the "compelling moment" your Lesson 12 reviewer identified)
- Walk through your research question, key historical finding, and policy recommendation at a level of detail appropriate for a live audience (more concise than your written case study)
- Close with a clear, specific ask: what do you want your audience to do or believe after hearing this?

### Practicing the Real Skill

This structure — research, written analysis, and a concise persuasive presentation — is exactly what real researchers, policy professionals, and advocates use when presenting findings to funders, city councils, or boards. You are practicing a genuine professional skill, not just completing a school assignment.

### Your Project This Week

Assemble your full portfolio and draft your presentation's opening hook and closing ask.$lesson$,
  'FP.C&G.4.1', 'Synthesize a semester of original research, policy analysis, and revision into a cohesive final portfolio and presentation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'Project Workshop & Peer Critique: Full Rehearsal', 14, 'practice',
  $lesson$## Project Workshop & Peer Critique

Give your full 8-10 minute capstone presentation exactly as you plan to deliver it at your showcase, and get one final round of real feedback.

### How This Workshop Works

1. **Full Rehearsal.** Deliver your complete presentation, start to finish, without stopping, timed.
2. **Timing Check.** Are you within your 8-10 minute window? If not, identify what to cut or expand.
3. **The Three Questions.** Your reviewer must be able to answer, after your presentation alone: (1) What city and question did you research? (2) What did you find? (3) What do you recommend, and why? If any answer is unclear, that section needs work.
4. **Final Revisions.** Make your last round of changes based on this rehearsal before your actual capstone showcase.

### Why This Matters

No real professional presentation — a thesis defense, a funding pitch, a city council testimony — goes well without at least one full, timed rehearsal in front of a real audience first. This is your last chance to catch problems before it counts.

### This Week's Task

Complete this full rehearsal and make your final revisions ahead of your capstone showcase.$lesson$,
  'FP.C&G.4.1', 'Apply full rehearsal and structured critique to finalize an original capstone research presentation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4')),
  'MAJOR PROJECT 2 CAPSTONE: Black Futures Capstone Showcase', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 (Capstone): Black Futures Capstone Showcase

This is the final project of your entire Black Urban Studies journey — Grades 6 through 12, culminating here.

### Driving Question

**"Given everything researched this semester, what should change — and how do you convince someone with the power to change it?"**

### The Challenge

Deliver your complete Black Futures Capstone Showcase, combining:

1. **Your full written portfolio**: City Case Study, Policy Memo, Stakeholder Map, and Executive Summary
2. **Your live presentation** (8-10 minutes, fully rehearsed from Lesson 14): your research question, key historical finding, and policy recommendation, opening with your hook and closing with your specific ask
3. **A brief Q&A** — be ready to defend your recommendation if your "mock board" (teacher, parent, or peer panel) asks a challenging question, drawing on the full semester's research to support your answer

### Requirements

- Portfolio is complete and reflects all revisions from this semester's workshops
- Presentation stays within the 8-10 minute window and clearly answers all three required questions from Lesson 14
- You can defend your recommendation with specific evidence when questioned

### Why This Is Your Final Assessment — and the Capstone of the Whole Sequence

This showcase asks you to do, in miniature, what a real historian, urban researcher, or policy advocate does throughout their career: research a real place deeply, form an evidence-based judgment about what should change, and make the case to someone who can act on it. From West African kingdoms in Course I to this moment, every unit of Black Urban Studies has been building toward exactly this capability.$lesson$,
  'FP.C&G.4.1, AH2.H.4.1-3', 'Synthesize the full Black Urban Studies capstone semester into an original, defensible research portfolio and public presentation.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Choosing a Research Question & Finding Primary/Secondary Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'Write your top 2-3 candidate research questions.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Choosing a Research Question & Finding Primary/Secondary Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'For your strongest question, name one primary source and one secondary source you could realistically use.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Choosing a Research Question & Finding Primary/Secondary Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'Why is your strongest question specific and evidence-based rather than too broad?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Sources & Building an Argument' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'Which source did you evaluate, and who created it, when, and for what purpose?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Evaluating Sources & Building an Argument' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'Write your claim-evidence-reasoning argument (one sentence each).', NULL, NULL),
((SELECT id FROM lessons WHERE title='Evaluating Sources & Building an Argument' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'Did you find any sources that disagreed with each other? If so, how did you handle that?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the Research Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'What feasibility concern (if any) did your reviewer raise, and how did you address it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the Research Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'How did you answer the ''why would someone else care'' question?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining the Research Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What is your final, finalized research question and chosen city?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 1: Research Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'State your chosen city and your reason for choosing it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Research Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'State your finalized research question.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Research Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Research Methods for Urban & Historical Studies' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'List your at least 3 sources and briefly describe your research plan for Unit 2.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Data-Gathering: Census Records, Archives & Oral-History Methods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'What is one specific census data point or trend you found for your chosen city?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Data-Gathering: Census Records, Archives & Oral-History Methods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What archive or source did you use, and what specific fact or quote did you find there?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Data-Gathering: Census Records, Archives & Oral-History Methods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'If you conducted an interview, what is one thing you learned that you couldn''t have found in a written archive? If not, what oral history source might exist for your city?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Drafting the Case Study: Narrative + Data' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'Paste one example of a ''woven'' sentence from your draft that combines data and story.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Drafting the Case Study: Narrative + Data' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'Which units of this course sequence (I-III) did your historical background section draw on?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Drafting the Case Study: Narrative + Data' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What is the hardest part of weaving data and narrative together, and how are you working on it?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Full Case-Study Draft Review' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'Which section (if any) did your reviewer flag as missing or weak, and how did you strengthen it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Full Case-Study Draft Review' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'Did your reviewer find any unsupported claims? What did you do about them?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Full Case-Study Draft Review' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'Could your reviewer clearly state your research question''s answer after reading? If not, what did you change?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: City Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'State your research question and one-sentence answer.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: City Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'List at least 3 of your 5+ sources.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: City Case Study' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Case Study Deep Dive — Choose & Investigate a City' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What is your case study''s present-day connection?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'What policy lever have you chosen, and which specific finding from your case study does it respond to?', NULL, NULL),
((SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What real-world precedent (a city or organization that tried something similar) did you find?', NULL, NULL),
((SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What did you learn from that precedent that could improve your own recommendation?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Stakeholder Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'List your at least 4 stakeholders and their likely positions.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Stakeholder Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What city-specific stakeholder did your reviewer help you identify, if any?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Building the Stakeholder Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'How does each stakeholder connect to something specific in your case study?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 2: Stakeholder Map & Policy Options Memo' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'List your stakeholder map''s 4+ groups and positions.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Stakeholder Map & Policy Options Memo' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What alternative policy lever did you consider and reject, and why?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Stakeholder Map & Policy Options Memo' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What is one honest risk or limitation of your chosen policy lever?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Rehearsal + Feedback' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'What was the most confusing moment your reviewer identified, and how will you fix it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Rehearsal + Feedback' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What was the most compelling moment your reviewer identified?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Rehearsal + Feedback' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Policy Analysis & Advocacy Design' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What is your plan for building your final presentation around that strength?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Building the Final Presentation & Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'What is your presentation''s opening hook?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building the Final Presentation & Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What is your presentation''s closing ask — what do you want your audience to do or believe?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building the Final Presentation & Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What does your one-page Executive Summary say in its key sentence?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Full Rehearsal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'Was your presentation within the 8-10 minute window? What did you cut or expand, if anything?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Full Rehearsal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'Could your reviewer answer all three required questions clearly? Which, if any, needed more work?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Full Rehearsal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'What is the final change you made before your capstone showcase?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Black Futures Capstone Showcase' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 1, 'short_answer', 'Summarize your final recommendation in one sentence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Black Futures Capstone Showcase' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 2, 'short_answer', 'What question do you anticipate being hardest to defend in Q&A, and how will you answer it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Black Futures Capstone Showcase' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Capstone Showcase — Black Futures Project' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4'))), 3, 'short_answer', 'Looking back at the full Black Urban Studies sequence (Grades 6-12), what is the single idea you want to carry forward from this course?', NULL, NULL);
