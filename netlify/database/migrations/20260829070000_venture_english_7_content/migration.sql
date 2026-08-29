-- Grade 7 Venture English (ELA 7): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: The Giver by Lois Lowry. Matches the delivered ELA Scope & Sequence / Pacing Calendar:
-- 4 units, 15 lessons, a small project (L3/L11), two unit quizzes (L4/L12), and two entrepreneurial/
-- civic major projects (L8 and capstone L15).

UPDATE courses SET status = 'published' WHERE slug = 'venture-ela-7';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-ela-7'), 'Unit 1: Reading Literature — The Giver', 0),
((SELECT id FROM courses WHERE slug='venture-ela-7'), 'Unit 2: Reading Informational Text & Media Literacy', 1),
((SELECT id FROM courses WHERE slug='venture-ela-7'), 'Unit 3: Argumentative Writing', 2),
((SELECT id FROM courses WHERE slug='venture-ela-7'), 'Unit 4: Research & Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Understanding Theme Development', 1, 'lesson',
  $lesson$## Welcome to English 7: Society, Perspective & Persuasion

This year's anchor novel is **The Giver** by Lois Lowry — a story set in a "Community" that has eliminated pain, conflict, and choice by eliminating difference itself. Jonas, the twelve-year-old protagonist, is selected for a role that reveals what his society has traded away to become "perfect." We'll use this novel to study something bigger than plot: **theme**.

### What Is Theme, Really?

A theme isn't the topic of a book ("memory" or "conformity" is a topic). A theme is the **insight or message** the author develops about that topic through the story. For example: "A society that eliminates all pain also eliminates the depth of joy, love, and meaning that make life worth living" is a theme — specific, arguable, and built from the whole story, not just one scene.

### How Theme Develops Over a Story

Theme rarely appears all at once. Authors build it gradually:

1. **Early hints** — small details that seem normal but feel slightly "off" once you notice the pattern
2. **A turning point** — often when the protagonist learns something that changes their understanding
3. **Deepening complications** — the theme gets tested, complicated, or pushed further
4. **Resolution or open question** — the theme lands, sometimes without being fully "solved"

### Tracking Theme in The Giver

As you read, notice how "sameness" is presented at first as safety and order — no war, no hunger, no pain. Then notice the costs that slowly surface: no color, no music, no real choice, no strong emotion. The gap between what's *promised* and what's *actually lost* is where Lowry's theme lives.

### Why This Matters

Every persuasive piece of writing — an essay, an ad, a political speech — is built around a message the author wants you to walk away believing. Learning to trace how an author *builds* that message, instead of just stating it, is the same skill you'll need to construct your own persuasive arguments this year.

### Your Turn

Identify one detail from the early chapters that seems normal on the surface but hints at something the Community has given up. Explain what you think that detail suggests about the emerging theme.$lesson$,
  'RL.7.2', 'Determine a theme or central idea of a text and analyze its development over the course of the text; provide an objective summary of the text.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Character Development & Motivation', 2, 'lesson',
  $lesson$## What Makes Jonas Change?

Strong character development isn't just "the character learns a lesson." It's a specific, traceable process: a character's beliefs, desires, or understanding shift because of particular experiences — and we can point to exactly what caused each shift.

### Tools for Analyzing Character Development

- **Motivation** — what does the character want, and why?
- **Internal conflict** — what does the character struggle with inside themselves (not just external events)?
- **Turning points** — specific moments that change what a character believes or wants
- **Contrast with other characters** — how do other characters' choices highlight what makes this character different?

### Jonas's Arc

Early on, Jonas is a fairly typical member of his Community — anxious about his upcoming Ceremony, uncertain about his future, but not questioning the structure of his world. His selection to receive memories from the Giver introduces him to experiences (color, pain, love, and eventually much darker truths) that his society has erased. Each new memory is a **turning point** that reshapes his motivation — from wanting to fit in, to increasingly wanting to change or escape the system itself.

### Motivation Isn't Always Simple

Good character analysis avoids single-word answers like "Jonas wants freedom." Instead, ask: freedom *from* what, specifically? Freedom *for* what purpose? The more specific your answer, the stronger your analysis.

### Why This Matters

Understanding what genuinely motivates someone — a character, a customer, a teammate — is at the heart of both literary analysis and real leadership. Founders who understand what actually drives people (not just surface wants) build better products and better teams.

### Your Turn

Choose one memory or experience Jonas receives from the Giver. Explain specifically how it changes what he wants or believes, using evidence from the text.$lesson$,
  'RL.7.3', 'Analyze how particular elements of a story interact, including how setting shapes the characters or plot, and how a character''s changing motivations drive events.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Analyzing Structure — Small Project: Society Comparison Chart', 3, 'practice',
  $lesson$## Small Project: Society Comparison Chart

Dystopian novels like The Giver work by building an imagined society, then slowly revealing what's wrong with it. This project asks you to analyze that structure directly — and to cite specific textual evidence while you do it.

### Step 1: Understand How Lowry Structures the Reveal

Notice that Lowry doesn't explain everything about the Community up front. Instead, information is revealed gradually — sometimes through what characters say, sometimes through what they *don't* say or seem confused by (like Jonas's confusion about color). This structural choice keeps readers piecing together the full picture the same way Jonas does.

### Step 2: Build Your Comparison Chart

Create a two-column chart: **The Community (in the novel)** and **Our World**. Choose at least 4 categories to compare — options include: choice/free will, family structure, emotion, memory/history, individuality, and conflict/pain. For each category, cite a specific detail or moment from the text describing how the Community handles it, and briefly describe how our world handles the same category.

### Step 3: Analyze the Trade-Off

For at least 2 of your categories, write 2-3 sentences analyzing the trade-off the Community made: what did they gain, and what did they lose? Use specific textual evidence to support your analysis.

### Why This Skill Matters

Comparing systems — what a choice gains you versus what it costs you — is exactly the thinking behind evaluating any real policy, business model, or personal decision. This is analytical thinking with real-world teeth.$lesson$,
  'RL.7.1, RL.7.5', 'Cite several pieces of textual evidence to support analysis; analyze how a text''s form or structure contributes to its meaning.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Unit 1 Quiz: Reading Literature — The Giver', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — The Giver

This quiz checks your understanding of theme development, character motivation, and structural analysis in The Giver. For the short answer question, support your response with specific textual evidence.$lesson$,
  'RL.7.1-3, RL.7.5', 'Unit 1 assessment covering theme development, character motivation, and structural analysis.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Determining Author''s Point of View & Purpose', 5, 'lesson',
  $lesson$## Nobody Writes From Nowhere

Every piece of writing — an article, an ad, a social media post — comes from someone with a **point of view** and a **purpose**. Learning to identify both is the foundation of reading critically instead of just absorbing whatever you're told.

### Point of View vs. Purpose

- **Point of view** — the author's perspective or stance on the topic
- **Purpose** — what the author wants to happen because you read this (to inform, persuade, entertain, sell, warn, or some combination)

### Clues That Reveal Point of View

- **Word choice** — "invested" vs. "gambled" describe the same action very differently
- **What's included vs. left out** — noticing what a piece *doesn't* mention can be as revealing as what it does
- **Tone** — is the piece neutral, urgent, celebratory, alarmed?
- **Who benefits** — does the author (or whoever they represent) gain something if you agree with them?

### A Connection to The Giver

The Community's official messaging — the announcements, the rules, the language used to describe "release" — is itself a kind of propaganda: writing designed from a very specific point of view, meant to keep citizens calm and compliant. Recognizing that the Community's own "texts" have a clear purpose is good practice for recognizing point of view in real informational writing.

### Why This Matters

You will be marketed to, persuaded, and informed (or misinformed) by written and video content for the rest of your life. Recognizing an author's point of view and purpose the moment you start reading or watching something is one of the single most valuable skills of a media-literate citizen — and of a founder who needs to read the market honestly.

### Your Turn

Find a short real article, ad, or social post. Identify the author's likely point of view and purpose, and cite 2 specific pieces of evidence (word choice, tone, or what's included/excluded) that reveal it.$lesson$,
  'RI.7.6', 'Determine an author''s point of view or purpose in a text and analyze how the author distinguishes his or her position from that of others.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Analyzing Interactions Between Ideas', 6, 'lesson',
  $lesson$## How Ideas Connect Inside a Text

Strong informational writing rarely presents facts as an unrelated list — ideas **interact**: one idea causes, supports, complicates, or leads to another. Recognizing those connections is what separates surface reading from real understanding.

### Common Ways Ideas Interact

- **Cause and effect chains** — one event or policy leads to a result, which leads to another result
- **Comparison** — two ideas or approaches are weighed against each other
- **Elaboration** — a general statement is followed by specific supporting detail
- **Contradiction/tension** — a text presents two ideas that pull against each other, forcing a resolution or leaving it open

### Practicing With a Real Example

Imagine a text arguing that "a company's rapid early growth" (idea A) "creates cash-flow strain" (idea B) which "forces difficult staffing decisions" (idea C). That's a cause-and-effect chain — each idea causes the next. Being able to map A → B → C, instead of treating them as three separate facts, is what allows you to understand *why* something happens, not just *that* it happens.

### Why This Matters

This is the exact skill behind reading a business case study, a news analysis, or a research paper: seeing how ideas connect lets you evaluate whether an argument actually holds together, or whether it's just a list of facts dressed up to look like a conclusion.

### Your Turn

Find or think of two related ideas from something you've read recently (an article, a textbook chapter, even a video essay). Explain specifically how the two ideas interact — does one cause the other, contrast with it, or build on it?$lesson$,
  'RI.7.3', 'Analyze the interactions between individuals, events, and ideas in a text (e.g., how ideas influence individuals or events, or how individuals influence ideas or events).', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Evaluating Arguments & Evidence', 7, 'lesson',
  $lesson$## Is This Argument Actually Any Good?

Not every argument that sounds confident is actually well-supported. This lesson gives you a toolkit for evaluating whether an argument's reasoning and evidence genuinely hold up.

### Questions to Ask of Any Argument

1. **Is the evidence relevant?** Does it actually support the specific claim, or just something loosely related?
2. **Is the evidence sufficient?** One example isn't proof of a pattern — how much evidence is offered?
3. **Is the reasoning sound?** Does the conclusion actually follow logically from the evidence, or is there a gap?
4. **Is there a hidden bias or missing perspective?** Whose voice isn't included that probably should be?

### Common Argument Weaknesses to Watch For

- **Overgeneralizing** from a single example ("This one product failed, so this entire strategy never works")
- **Irrelevant evidence** that sounds impressive but doesn't actually prove the claim
- **Emotional appeals standing in for evidence** (strong feelings aren't the same as strong proof)
- **Cherry-picking** — using only the evidence that supports the argument while ignoring evidence that doesn't

### Why This Matters

Every investor, customer, or reader you'll ever try to persuade has (or should have) this same skeptical toolkit running in their head. Understanding how to evaluate arguments makes you both a sharper reader of other people's claims and a stronger builder of your own.

### Your Turn

Find a short argumentative text (an op-ed, ad, or persuasive essay). Evaluate its evidence using the four questions above, and identify at least one weakness or gap in its reasoning.$lesson$,
  'RI.7.8', 'Trace and evaluate the argument and specific claims in a text, assessing whether the reasoning is sound and the evidence is relevant and sufficient.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'MAJOR PROJECT 1: Media Literacy Campaign', 8, 'practice',
  $lesson$## Major Project 1: Media Literacy Campaign

You've spent this unit learning to spot point of view, trace how ideas connect, and evaluate whether arguments actually hold up. Now put that skill to work by building something real: a public-service campaign that helps others read media more critically.

### Your Task

Choose a real issue where media literacy matters — this could be about advertising tactics, misinformation, biased reporting, or persuasive techniques in social media. Design an original public-service ad campaign (a poster series, a short video script, or a set of social posts) that teaches your audience how to spot a specific persuasive technique.

### Requirements

1. **Analyze at least 2 real examples** (ads, articles, or posts) — identify the point of view, purpose, and at least one persuasive technique each uses
2. **Choose ONE clear technique to teach** your audience to recognize (for example: emotional appeals standing in for evidence, cherry-picked statistics, or urgency/scarcity language)
3. **Design your campaign materials** — write the actual text/copy for at least 2 pieces (posters, scripts, or posts) that teach this technique clearly and memorably
4. **Include a clear, specific call to action** — what do you want your audience to actually do differently after seeing your campaign?

### Thinking Like a Marketer (Responsibly)

Ironically, a great media literacy campaign uses the same persuasive tools it's teaching people to recognize — just honestly. A strong hook, clear language, and a memorable visual or phrase will make your campaign actually work, instead of just being informative and forgettable.

### Deliverable

Submit your analysis of the 2 real examples, your chosen technique with an explanation of why you chose it, and the full text/copy for your campaign materials.$lesson$,
  'RI.7.6, RI.7.8, W.7.2', 'Determine an author''s point of view and evaluate arguments and evidence; write informative/explanatory texts to examine a topic and convey ideas clearly.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Building Claims & Counterclaims', 9, 'lesson',
  $lesson$## Arguments That Actually Anticipate Pushback

In Grade 6 you learned to build a claim with reasons and evidence. This year, we add a critical upgrade: **acknowledging the other side**. A truly persuasive argument doesn't ignore disagreement — it shows you've thought it through.

### What Is a Counterclaim?

A **counterclaim** is a reasonable objection someone might raise against your position. Acknowledging it — and then explaining why your claim still holds — actually makes your argument *more* convincing, not less, because it shows you've considered more than one side.

### The Structure

1. **Claim** — your position, stated clearly
2. **Reasons and evidence** — your strongest support
3. **Counterclaim** — a fair, honestly-stated objection someone could raise
4. **Rebuttal** — your response explaining why your claim still stands despite that objection

### Example

Claim: "The Community in The Giver was wrong to eliminate individual choice, even to reduce suffering." Counterclaim: "Some might argue that eliminating choice genuinely did prevent real harm — no war, no poverty, no family breakdown." Rebuttal: "But the novel shows that eliminating choice also eliminated the capacity for real love, joy, and meaning — costs that outweigh the safety gained, because a life without genuine choice isn't fully a human life at all."

### Why This Matters

Investors, customers, and critics will always raise objections to your ideas. A founder who has already thought through the strongest counterargument — and has a real answer ready — comes across as far more credible than one who's caught off guard.

### Your Turn

Write a claim about The Giver (or a real-world issue), one reason with evidence, a fair counterclaim, and a rebuttal explaining why your claim still holds.$lesson$,
  'W.7.1', 'Write arguments to support claims with clear reasons and relevant evidence, acknowledging alternate or opposing claims.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Using Credible Sources', 10, 'lesson',
  $lesson$## Not All Evidence Is Created Equal

An argument is only as strong as the sources behind it. This lesson focuses on choosing and using credible sources to strengthen your evidence.

### What Makes a Source Credible?

- **Expertise** — does the author or organization have real knowledge of the topic?
- **Currency** — is the information up to date (this matters more for some topics than others)?
- **Objectivity** — does the source have an obvious agenda or financial interest that might bias it?
- **Verifiability** — can the claims be checked against other independent sources?

### Using Sources Effectively (Not Just Dropping Them In)

Credible evidence only strengthens an argument if it's **integrated** well:

1. Introduce the source (who/what it is)
2. State the specific fact or finding relevant to your claim
3. Explain *why* this evidence supports your claim — don't assume it's obvious

### A Common Mistake

Simply citing "studies show..." without naming the study or explaining its relevance is weak. Compare: "Studies show recycling helps" (vague, unconvincing) vs. "According to a 2023 EPA report, communities with curbside recycling programs reduced landfill waste by an average of 18% — directly supporting recycling's environmental impact" (specific, credible, and explained).

### Why This Matters

Anyone can find "evidence" to support almost any claim online. Being able to evaluate whether a source is actually credible — and using it precisely instead of just name-dropping it — is what separates a persuasive, trustworthy writer from one who just sounds confident.

### Your Turn

Find one credible source related to an argument you're building (on any topic). Write 2-3 sentences that introduce the source, state its relevant finding, and explain why it supports your claim.$lesson$,
  'W.7.8', 'Gather relevant information from multiple print and digital sources, using search terms effectively; assess the credibility of each source.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Small Project: Two Sides Argument Outline', 11, 'practice',
  $lesson$## Small Project: Two Sides Argument Outline

Time to put claims, counterclaims, and credible sources together into one organized outline — the blueprint you'd use to draft a full argumentative essay.

### Choose Your Topic

Pick a real debatable issue you genuinely care about (school policy, a community issue, a topic connected to The Giver's themes like privacy, individuality, or safety vs. freedom).

### Build Your Outline

Your outline must include:

1. **Your claim**, stated in one clear, specific sentence
2. **Two reasons** supporting your claim, each with a specific piece of evidence (cite a credible source for at least one)
3. **One fair counterclaim** — the strongest reasonable objection to your position
4. **Your rebuttal** — why your claim still holds despite that objection
5. **A concluding statement** that restates your claim's importance

### Using Linking Words

Practice using words and phrases that clarify the relationships between your claims, reasons, and counterclaim: *however, on the other hand, despite this, in contrast, because, as a result, consequently*.

### Why This Matters

An organized outline is what separates a strong essay draft from a rambling one. Every persuasive piece of writing you produce for the rest of your life — essays, proposals, pitches — starts with exactly this kind of structural thinking.$lesson$,
  'W.7.1c, W.7.4', 'Use words, phrases, and clauses to create cohesion and clarify the relationships among claim(s), reasons, and evidence.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Unit 3 Quiz: Argumentative Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Argumentative Writing

This quiz checks your understanding of claims, counterclaims and rebuttals, credible sources, and linking words in argumentative writing. For the short answer question, write a complete claim-reason-counterclaim-rebuttal sequence.$lesson$,
  'W.7.1, W.7.8', 'Unit 3 assessment covering argument structure, counterclaims, and source credibility.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Conducting Multi-Source Research', 13, 'lesson',
  $lesson$## Building a Case From More Than One Source

Real research projects draw on multiple sources — not to pile up citations, but to build a more complete, more credible picture than any single source could give you.

### Why Use Multiple Sources?

- **Confirmation** — when independent sources agree, your claim is more trustworthy
- **Complexity** — different sources often reveal different angles of the same issue
- **Disagreement is useful data too** — when sources conflict, that tension itself can become part of your analysis

### A Research Workflow That Works

1. Start with your focused question
2. Gather 3-4 credible sources with different angles or types (a news article, a data report, an expert opinion, a firsthand account)
3. Take notes organized by *subtopic*, not by source — this makes synthesis much easier later
4. Look across your notes for patterns: where do sources agree? Where do they conflict?

### Synthesizing, Not Just Summarizing

A common mistake is writing "Source A says X. Source B says Y. Source C says Z" — that's just a list. **Synthesis** means combining what you learned across sources into your own original understanding: "While Source A and B both point to X as the main cause, Source C complicates this by showing Y also plays a significant role."

### Why This Matters

Every real decision — a business choosing a market to enter, a journalist reporting a story, a founder validating a product idea — depends on synthesizing multiple sources of information rather than trusting just one. This is a career-long skill you're building right now.

### Your Turn

State a focused research question connected to a civic or community issue you care about. Identify what 2-3 different *types* of credible sources you would gather to research it.$lesson$,
  'W.7.7-8', 'Conduct short research projects to answer a question, drawing on several sources and generating additional focused questions for further research and investigation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'Presenting Claims & Findings', 14, 'lesson',
  $lesson$## Making Your Research Land With a Real Audience

Research that never gets communicated effectively might as well not exist. This lesson focuses on presenting your findings with clarity, logic, and genuine persuasive power.

### Sequencing Ideas Logically

Your presentation should move your audience through a clear path:

1. **The issue** — what's the problem or question, and why should this audience care?
2. **What you found** — your key findings, in order of importance (not the order you found them)
3. **What it means** — your interpretation or claim based on the findings
4. **What should happen next** — a call to action or recommendation

### Using Description, Facts, and Details Well

Vague claims ("this is a big problem") land far weaker than specific, well-chosen details ("this affects roughly 1 in 4 families in our district, according to [source]"). Choose your 2-3 *strongest* details rather than trying to include everything you found.

### Handling Questions and Pushback

A confident presenter doesn't panic when challenged. If someone raises a counterpoint, acknowledge it honestly, then explain why your conclusion still stands — exactly like the counterclaim/rebuttal structure from Unit 3.

### Why This Matters

Whether you're presenting to a class, a school board, or someday investors or voters, the ability to sequence ideas logically and back them with real detail is what turns "I did some research" into "I changed how people think about this."

### Your Turn

Outline your presentation using the 4-part structure above (issue, findings, meaning, next steps) for the research question you developed in the previous lesson.$lesson$,
  'SL.7.4', 'Present claims and findings, emphasizing salient points in a focused, coherent manner with pertinent descriptions, facts, details, and examples.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7')),
  'MAJOR PROJECT 2 (CAPSTONE): Change-Maker Pitch', 15, 'practice',
  $lesson$## Capstone Project: Change-Maker Pitch

This capstone brings together everything from this semester: theme and character analysis, media literacy, argument writing with counterclaims, and multi-source research — all in service of proposing a real solution to a real problem.

### Your Task

Identify a real issue in your school or community that you genuinely want to see improved (this could connect to themes from The Giver — fairness, individuality, safety, freedom — or be something else entirely that matters to you). Research it, build an argument for a specific solution, and prepare to pitch it to a real or mock stakeholder panel.

### Your Pitch Must Include

1. **A clear statement of the problem**, supported by specific evidence from your research
2. **A specific, actionable proposed solution** — not just "we should fix this," but a concrete plan
3. **A claim-reasons-evidence argument** for why your solution is the right one
4. **At least one counterclaim and rebuttal** — show you've thought about objections
5. **A clear call to action** — what do you want your audience to do?

### Presenting Your Pitch

Prepare a 3-5 minute spoken presentation using the sequencing and delivery skills from this unit. Be ready for questions — and remember, a strong rebuttal in the moment is often more convincing than a perfect script.

### Deliverable

Submit your written pitch (problem, solution, argument with counterclaim/rebuttal, and call to action) plus a one-paragraph reflection: what did researching this issue teach you that you didn't expect?$lesson$,
  'W.7.1, W.7.7-9, SL.7.4-6', 'Write and present arguments supported by research, addressing counterclaims and using appropriate evidence and delivery techniques.', 40
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Understanding Theme Development' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'A theme is best described as:', '["The topic of a book", "The insight or message the author develops about a topic through the story", "The setting of the story", "A summary of the plot"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Theme Development' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'How does theme typically develop across a story?', '["It is stated directly in the first sentence", "It builds gradually through hints, turning points, and complications", "It never changes from beginning to end", "It only appears in the final chapter"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Theme Development' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Identify one detail from the early chapters that hints at something the Community has given up, and explain what it suggests about the theme.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Character Development & Motivation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'A "turning point" in character development is:', '["Any random scene in the book", "A specific moment that changes what a character believes or wants", "The title of the chapter", "A description of the setting"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Character Development & Motivation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Why is it important to be specific when analyzing motivation (not just say "he wants freedom")?', '["Specific answers are longer", "Specific analysis shows what someone wants freedom from and for what purpose, which is more accurate", "Vague answers are always wrong", "Teachers prefer long answers"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Character Development & Motivation' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Choose one memory or experience Jonas receives and explain specifically how it changes what he wants or believes.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Structure — Small Project: Society Comparison Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'short_answer', 'List your 4 comparison categories and a specific textual detail for each showing how the Community handles it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Structure — Small Project: Society Comparison Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'short_answer', 'Describe how our world handles those same 4 categories, for comparison.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Structure — Small Project: Society Comparison Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'For 2 of your categories, analyze the trade-off: what did the Community gain, and what did it lose?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Giver' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'Which best describes a well-developed theme statement?', '["\"Memory\"", "\"This book is about a society.\"", "\"A society that eliminates all pain also eliminates the depth of joy and meaning that make life worth living.\"", "\"Jonas is the main character.\""]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Giver' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Jonas''s selection to receive memories primarily functions as:', '["A minor detail with no real impact", "A turning point that reshapes his motivation and understanding", "The story''s resolution", "A flashback to earlier events"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Giver' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'multiple_choice', 'Lowry''s choice to reveal information about the Community gradually, rather than all at once, is an example of:', '["A structural choice affecting meaning", "A grammar error", "An accident", "Random chapter ordering with no purpose"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Giver' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 4, 'multiple_choice', 'Which is an example of citing textual evidence?', '["\"I think the Community is bad.\"", "\"The Community assigns spouses and children rather than allowing individual choice, as shown when families are formed through the Matching process.\"", "\"This book is interesting.\"", "\"Jonas is twelve.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Giver' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Giver' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 5, 'short_answer', 'Using specific textual evidence, explain one trade-off the Community made between safety and individuality.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Determining Author''s Point of View & Purpose' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'Which best distinguishes "point of view" from "purpose"?', '["They mean exactly the same thing", "Point of view is the author''s perspective; purpose is what they want to happen because you read it", "Point of view only applies to fiction", "Purpose is always to entertain"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Determining Author''s Point of View & Purpose' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Which is a clue that can reveal an author''s point of view?', '["The page number", "Word choice and tone", "The font used", "The length of the article"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Determining Author''s Point of View & Purpose' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Identify the point of view and purpose of a real article, ad, or post, with 2 pieces of evidence.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Interactions Between Ideas' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'A "cause and effect chain" is best described as:', '["A random list of unrelated facts", "One event or idea leading to a result, which leads to another result", "A comparison of two unrelated topics", "A summary with no analysis"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Interactions Between Ideas' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Why does mapping how ideas interact (not just listing facts) help a reader?', '["It makes the text longer", "It helps you understand why something happens, not just that it happens", "It is required by all texts", "It has no real benefit"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Interactions Between Ideas' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Explain how two related ideas from something you''ve read interact (cause, contrast, or build on each other).', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Arguments & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'Which is an example of overgeneralizing?', '["Citing 5 independent studies that agree", "Concluding an entire strategy never works because one example failed", "Acknowledging a counterclaim", "Using a credible, current source"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Arguments & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', '"Cherry-picking" evidence means:', '["Using only evidence that supports your argument while ignoring evidence that doesn''t", "Using multiple balanced sources", "Citing sources accurately", "Acknowledging counterarguments fairly"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Evaluating Arguments & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Evaluate a real argumentative text using the four evaluation questions, and identify one weakness.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Media Literacy Campaign' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'short_answer', 'Analyze your 2 real examples: identify the point of view, purpose, and persuasive technique each uses.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Media Literacy Campaign' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'short_answer', 'State the one technique you chose to teach and explain why you chose it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Media Literacy Campaign' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Media Literacy' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Write the full text/copy for your 2 campaign materials, plus your call to action.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Building Claims & Counterclaims' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'A counterclaim is:', '["A restatement of your own claim", "A reasonable objection someone might raise against your position", "Evidence that supports your claim", "The conclusion of your essay"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Building Claims & Counterclaims' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Why does acknowledging a counterclaim make an argument stronger, not weaker?', '["It makes the essay longer", "It shows you''ve considered more than one side, which builds credibility", "It confuses the reader on purpose", "It is required by all teachers"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Building Claims & Counterclaims' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Write a claim, one reason with evidence, a fair counterclaim, and a rebuttal.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Using Credible Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'Which factor is LEAST relevant to a source''s credibility?', '["The author''s expertise", "Whether the information is current", "The color of the website", "Whether the source has an obvious bias or financial interest"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Using Credible Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Which is the strongest use of evidence?', '["\"Studies show recycling helps.\"", "\"According to a 2023 EPA report, curbside recycling reduced landfill waste by 18% in participating communities.\"", "\"Everyone knows recycling is good.\"", "\"Recycling is popular.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Using Credible Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Introduce a credible source, state its finding, and explain why it supports your claim.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Two Sides Argument Outline' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'short_answer', 'State your claim and your two reasons with evidence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Two Sides Argument Outline' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'short_answer', 'State your counterclaim, rebuttal, and concluding statement.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'A rebuttal is:', '["A restatement of the counterclaim", "Your response explaining why your claim still holds despite an objection", "The first sentence of an essay", "A source citation"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'Which linking word signals a contrast between ideas?', '["Because", "However", "As a result", "For example"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'multiple_choice', 'Which is a credible source characteristic?', '["Anonymous authorship", "Clear expertise and verifiable claims", "Outdated information with no updates", "An obvious financial bias"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 4, 'multiple_choice', 'Why integrate a source instead of just dropping in a quote?', '["It makes the essay look longer", "Explaining why the evidence supports your claim makes it actually persuasive", "It is not necessary to explain evidence", "Quotes should never be explained"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 5, 'short_answer', 'Write a complete claim-reason-counterclaim-rebuttal sequence on a topic of your choice.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Conducting Multi-Source Research' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'Why use multiple sources in research?', '["It is required to make the paper longer", "Confirmation, complexity, and even disagreement between sources all add useful information", "One good source is always sufficient", "Multiple sources are only needed for science topics"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conducting Multi-Source Research' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', '"Synthesis" in research means:', '["Listing what each source says separately with no connections", "Combining what you learned across sources into your own original understanding", "Copying one source directly", "Choosing only sources that agree with each other"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conducting Multi-Source Research' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'State a focused research question about a civic issue and 2-3 source types you would gather.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'multiple_choice', 'A strong presentation sequences ideas in which order?', '["Random order based on what you remember", "Issue, findings, meaning, next steps", "Only findings, nothing else", "Next steps first, then everything else"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'multiple_choice', 'When challenged with a counterpoint during a presentation, you should:', '["Ignore it completely", "Panic and abandon your argument", "Acknowledge it honestly and explain why your conclusion still stands", "Change the subject"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Outline your presentation using the 4-part structure: issue, findings, meaning, next steps.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Change-Maker Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 1, 'short_answer', 'State the problem you identified, supported by specific evidence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Change-Maker Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 2, 'short_answer', 'State your specific, actionable proposed solution.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Change-Maker Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 3, 'short_answer', 'Write your counterclaim and rebuttal.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Change-Maker Pitch' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-7'))), 4, 'short_answer', 'Write your call to action and your reflection on what researching this issue taught you.', NULL, NULL);
