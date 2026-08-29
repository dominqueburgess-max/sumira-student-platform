-- English 9 (Grade 9): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: To Kill a Mockingbird by Harper Lee. 4 units, 15 lessons, matches the established
-- Venture Studio authoring template (small project + quiz in Units 1 & 3; major project capping
-- Units 2 & 4).

UPDATE courses SET status = 'published' WHERE slug = 'venture-english-9';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-english-9'), 'Unit 1: Reading Literature — To Kill a Mockingbird', 0),
((SELECT id FROM courses WHERE slug='venture-english-9'), 'Unit 2: Reading Informational Text & Rhetorical Analysis', 1),
((SELECT id FROM courses WHERE slug='venture-english-9'), 'Unit 3: Argumentative & Narrative Writing', 2),
((SELECT id FROM courses WHERE slug='venture-english-9'), 'Unit 4: Research & Community Action Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Analyzing Complex Characters & Moral Growth', 1, 'lesson',
  $lesson$## Welcome to English 9: Justice, Voice & the Power of Perspective

This year's anchor novel is **To Kill a Mockingbird** by Harper Lee, narrated by young Scout Finch as she watches her father, attorney Atticus Finch, defend a Black man falsely accused of a crime in 1930s Alabama. It is one of the most widely studied American novels precisely because its characters resist easy categorization.

### What Makes a Character "Complex"

A **complex character** has motivations, contradictions, and capacity for change — they aren't simply "good" or "bad." At the high school level, you're expected to analyze not just *what* a character does, but *why*, and how those motivations evolve.

### Tracking Moral Growth

Scout and her brother Jem grow morally over the course of the novel — their understanding of courage, prejudice, and human dignity deepens as they witness their father's principled (and unpopular) stand. Track specific moments where a character's understanding visibly shifts, and identify what experience triggered that shift.

### Characters Who Resist Simple Labels

Consider a character like Boo Radley — initially feared as a menacing figure by the children, and gradually revealed as someone gentle and protective. Or consider how the novel complicates who counts as courageous: physical bravery versus the quieter, harder courage of standing by a principle when the whole community disapproves.

### Why This Matters

Real people — including people you'll work with, vote for, or disagree with — are rarely simply good or bad. Learning to analyze complexity and moral growth in fiction builds the same muscle you need to fairly evaluate complicated people and situations in real life.

### Your Turn

Choose one character whose understanding of courage, prejudice, or justice changes over the course of the novel. Identify the specific experience that triggers the change and explain what it reveals about the character's growth.$lesson$,
  'RL.9-10.3', 'Analyze how complex characters develop over the course of a text, interact with other characters, and advance the plot or develop the theme.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Point of View & Narrative Distance in Coming-of-Age Stories', 2, 'lesson',
  $lesson$## Seeing Through a Child's Eyes — and an Adult's Memory

To Kill a Mockingbird has an unusual narrative structure: it's told by adult Scout, looking back and reconstructing her childhood perspective. This creates a double point of view — a child's immediate perceptions filtered through an adult narrator's understanding.

### What Is Narrative Distance?

**Narrative distance** is the gap between the narrator's current perspective and the events being narrated. A narrator remembering childhood from adulthood can include understanding the child-narrator couldn't have had at the time — while still capturing the immediacy of how it felt in the moment.

### Why This Technique Is Powerful

This double perspective lets Harper Lee do two things simultaneously: show readers the genuine confusion and innocence of a child encountering injustice for the first time, while also letting the adult narrator's wisdom subtly shape how events are framed. A child narrator alone might miss the significance of events; an adult narrator alone might lose the emotional immediacy.

### Comparing Points of View Across Texts

Consider how a different point of view — say, if the novel were narrated by Atticus, or by Tom Robinson himself — would tell an entirely different story with a different emotional center. The choice of narrator is never neutral; it determines whose experience the reader is invited to feel most closely.

### Why This Matters

Understanding how narrative distance and point of view shape meaning helps you recognize the same technique in memoirs, journalism, and even personal essays you'll write yourself — the "distance" between when something happened and when you're writing about it always shapes the story you tell.

### Your Turn

Identify one moment where the adult narrator's perspective seems to shape how a childhood event is told. Explain what would be lost or changed if the novel were narrated purely from a child's immediate point of view, with no adult reflection.$lesson$,
  'RL.9-10.6', 'Analyze a particular point of view or cultural experience reflected in a work of literature, drawing on a wide reading of world literature.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Analyzing Theme Development — Small Project: Justice in Maycomb', 3, 'practice',
  $lesson$## Small Project: Justice in Maycomb

To Kill a Mockingbird develops its central theme of justice through specific incidents, relationships, and moments of moral choice — not through direct statements. This project asks you to trace exactly how.

### Step 1: Identify the Theme's Development

Choose one theme: justice and its limits, courage (physical vs. moral), prejudice and its costs, or the loss of innocence. Identify at least 3 specific moments across the novel (early, middle, late) that build this theme — not just one scene.

### Step 2: Trace the Arc

For each of your 3 moments, write 2-3 sentences explaining how the theme is expressed differently or more deeply than the moment before it. Does the theme get more complicated? Does a character's understanding of it deepen or get challenged?

### Step 3: Connect Theme to Character and Setting

Explain how the specific setting (a small, segregated Southern town in the 1930s) makes this theme's development possible or necessary. Would the same theme develop the same way in a different setting?

### Step 4: Write Your Analysis

In 5-7 sentences, argue for your strongest claim about what the novel ultimately suggests about your chosen theme. Is justice achieved, denied, or something more complicated than either? Support your claim with specific evidence from your 3 traced moments.

### Why This Skill Matters

Understanding how themes develop gradually, through accumulating evidence rather than a single statement, is exactly how you'll need to build and support arguments in college-level literary analysis and in real-world arguments about complex social issues.$lesson$,
  'RL.9-10.2', 'Determine a theme or central idea of a text and analyze in detail its development over the course of the text, including how it emerges and is shaped by specific details.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Unit 1 Quiz: Reading Literature — To Kill a Mockingbird', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — To Kill a Mockingbird

This quiz checks your understanding of complex characterization, point of view/narrative distance, and theme development in To Kill a Mockingbird. Support your short answer response with specific textual evidence.$lesson$,
  'RL.9-10.2-3, RL.9-10.6', 'Unit 1 assessment covering complex character development, point of view, and theme development.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Analyzing Author''s Purpose & Rhetoric in Nonfiction', 5, 'lesson',
  $lesson$## Why Rhetorical Choices Matter — Not Just What, But How

At the high school level, analyzing nonfiction means going beyond identifying an author's purpose (to inform, persuade, entertain) to analyzing the specific rhetorical *choices* that accomplish that purpose.

### Purpose vs. Technique

Purpose is the *goal* ("persuade readers to support this policy"). Technique is *how* the author achieves it — word choice, structure, evidence selection, tone, and the ordering of ideas.

### Key Rhetorical Choices to Analyze

- **Structure** — does the piece build chronologically, by cause-and-effect, by comparison? Why that structure for this purpose?
- **Tone** — is the author urgent, measured, ironic, hopeful? How does word choice create that tone?
- **Evidence selection** — what kinds of evidence does the author choose (statistics, anecdotes, expert testimony), and why might that evidence be most persuasive for this purpose and audience?
- **What's emphasized vs. downplayed** — authors make deliberate choices about what to spend the most space on

### A Practical Approach

When analyzing a text's rhetoric, ask: "What is this author trying to make me feel or believe, and what specific choice on this page is doing that work?" Answering both halves of that question — the effect AND the specific textual cause — is what separates rhetorical analysis from summary.

### Why This Matters

Every op-ed, advertisement, and political speech you'll encounter as an adult is built from deliberate rhetorical choices. Learning to name and analyze those choices is a form of literacy that protects you from being persuaded without realizing why.

### Your Turn

Choose a nonfiction text (an essay, speech, or article). Identify the author's purpose, then identify one specific rhetorical choice (structure, tone, or evidence selection) that accomplishes that purpose, and explain how.$lesson$,
  'RI.9-10.6', 'Determine an author''s point of view or purpose in a text and analyze how an author uses rhetoric to advance that point of view or purpose.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Evaluating Premises, Purposes, and Arguments', 6, 'lesson',
  $lesson$## Testing the Foundation of an Argument

Every argument rests on **premises** — the underlying assumptions or claims that must be true for the conclusion to hold. Evaluating an argument means testing its premises, not just its conclusion.

### Finding Hidden Premises

Some premises are stated directly; others are assumed and never stated at all. Example: "We should adopt this new technology because it's more efficient." The hidden premise is "efficiency should be our top priority" — which is itself debatable and worth examining.

### Evaluating Whether Premises Hold Up

1. **Is the premise actually true or well-supported?**
2. **Is the premise relevant to the specific conclusion being drawn?**
3. **Are there unstated premises that, if made explicit, the audience might reject?**

### Purpose Shapes Argument Selection

An author's underlying purpose shapes which premises and evidence they choose to include or leave out. A persuasive purpose might lead an author to omit a premise that would weaken their case — which is why identifying purpose is a necessary first step in evaluating any argument fairly.

### Why This Matters

Recognizing hidden premises is one of the most valuable critical thinking skills for evaluating everything from advertising to policy debates to workplace decisions — arguments that seem airtight often rest on an assumption that, once surfaced, isn't as solid as it first appeared.

### Your Turn

Find an argument (an editorial, ad, or speech). Identify one stated premise and one hidden/unstated premise. Evaluate whether each premise actually holds up.$lesson$,
  'RI.9-10.8', 'Delineate and evaluate the argument and specific claims in a text, assessing whether the reasoning is valid and the evidence is relevant and sufficient; identify false statements and fallacious reasoning.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Analyzing Seminal U.S. Documents', 7, 'lesson',
  $lesson$## Documents That Shaped a Nation's Ideas About Justice

Certain U.S. documents carry outsized historical and rhetorical significance — they've shaped how generations of Americans argue about rights, justice, and government. Reading them closely connects directly to this unit's themes and to To Kill a Mockingbird's own concerns with justice and law.

### What Makes a Document "Seminal"

A seminal document is one whose ideas and rhetoric influenced later thought and writing significantly — its themes and even its phrases echo forward through history in later speeches, laws, and movements.

### What to Analyze in a Historical Document

- **Its central claims about rights, justice, or government** — what does it argue people are owed, and by whom?
- **Its rhetorical strategy** — how does it build its case (appeals to shared values, natural rights, precedent, urgency)?
- **Its historical influence** — how have later writers, activists, or leaders drawn on its language or ideas?
- **Its limits** — who was included or excluded from the document's vision at the time it was written, and how has that changed?

### Connecting to the Novel

To Kill a Mockingbird is deeply concerned with the gap between a legal system's stated ideals (equal justice under law) and its actual practice in 1930s Alabama. Reading a seminal document about justice or rights alongside the novel lets you analyze that same gap from a historical, non-fiction angle.

### Why This Matters

Understanding foundational American documents — and their real, sometimes painful, history of who they did and didn't protect — is essential background for engaging seriously in civic and policy debates as an adult.

### Your Turn

Choose a seminal U.S. document related to rights or justice. Identify its central claim, one rhetorical strategy it uses, and one way its vision was limited or incomplete at the time it was written.$lesson$,
  'RI.9-10.9', 'Analyze seminal U.S. documents of historical and literary significance, including how they address related themes and concepts.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'MAJOR PROJECT 1: Rhetorical Analysis Essay', 8, 'practice',
  $lesson$## Major Project 1: Rhetorical Analysis Essay

You've studied author's purpose, hidden premises, and seminal documents. Now put it all together in a formal rhetorical analysis essay.

### Your Task

Write a rhetorical analysis essay (500-700 words) examining how a nonfiction text (a speech, seminal document, essay, or article of your choice) uses specific rhetorical choices to achieve its purpose.

### Requirements

1. **A clear thesis statement** identifying the text's purpose and your overall claim about how it achieves that purpose
2. **At least 3 specific rhetorical choices analyzed in depth** (structure, tone, evidence selection, or specific rhetorical devices), each supported with a specific reference to the text
3. **At least one evaluation of a premise or piece of reasoning** — is it fully sound, or does it have a gap or hidden assumption worth naming?
4. **Formal academic style** throughout — this essay should read like a piece of literary or rhetorical criticism
5. **A conclusion** that goes beyond restating your thesis — reflect on why this text's rhetoric matters or has been influential

### Why This Matters

Rhetorical analysis essays are a staple of AP English and college composition courses — this project gives you real practice with the exact skill and format you'll be asked to produce at the next level.

### Deliverable

Submit your complete rhetorical analysis essay, plus a one-sentence identification of the text's purpose and your overall thesis at the top.$lesson$,
  'RI.9-10.6, RI.9-10.8, RI.9-10.9', 'Analyze rhetoric, evaluate arguments and premises, and connect informational texts to broader civic and historical themes in formal writing.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Writing Sophisticated Arguments: Addressing Counterclaims', 9, 'lesson',
  $lesson$## The Argument That Fights Fair

A genuinely persuasive argument doesn't ignore the opposition — it takes the strongest counterclaim seriously and addresses it directly. This is what separates sophisticated argumentative writing from one-sided persuasion.

### Why Address Counterclaims at All?

Ignoring the best opposing argument doesn't make it disappear — it just means your reader is left wondering about it, unconvinced. Directly and fairly addressing the strongest counterclaim actually makes your own argument *more* persuasive, because it shows you've genuinely reckoned with the issue.

### How to Address a Counterclaim Fairly

1. **State the counterclaim accurately and fairly** — don't build a weak, easily-dismissed version (a "straw man")
2. **Acknowledge what's genuinely valid about it**, if anything
3. **Explain specifically why your claim still holds** despite the counterclaim's validity — through additional evidence, a distinction the counterclaim misses, or a demonstration that your claim addresses a more important concern

### Organizing Counterclaims Within Your Argument

You can address a counterclaim early (to clear the ground before building your case) or late (after establishing your argument, as a final rebuttal). Both are valid structures — the right choice depends on how central the counterclaim is to your topic.

### Why This Matters

The strongest professional, academic, and civic arguments — from legal briefs to research papers to policy proposals — always engage seriously with the opposition. Learning to do this fairly (rather than strawmanning or ignoring it) makes you both a better writer and a more honest thinker.

### Your Turn

State a claim you hold on a debatable topic. Write the strongest, fairest version of the counterclaim, then write 2-3 sentences explaining why your claim still holds despite it.$lesson$,
  'W.9-10.1', 'Write arguments to support claims, using valid reasoning and relevant evidence, and develop claims and counterclaims fairly, supplying evidence for each while pointing out strengths and limitations.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Narrative Craft: Multiple Plot Lines & Pacing', 10, 'lesson',
  $lesson$## Weaving More Than One Story Thread

Sophisticated narratives often develop more than one plot line simultaneously — a main storyline alongside a subplot that comments on or complicates it. To Kill a Mockingbird does this by weaving the Tom Robinson trial together with the children's evolving understanding of Boo Radley.

### Why Multiple Plot Lines Work

A well-crafted subplot doesn't just add more story — it reflects or contrasts with the main plot's themes, deepening the reader's understanding of both. In the novel, the Boo Radley subplot and the Tom Robinson trial both explore the danger of judging someone based on fear and rumor rather than truth — reinforcing the theme from two different angles.

### Managing Pacing Across Multiple Threads

When writing with multiple plot lines, pacing becomes more complex: you need to decide when to cut between threads, how much space to give each, and how (or whether) to bring them together by the story's end.

### A Practical Structure

1. Establish your main plot and your subplot early, so readers know both are in motion
2. Alternate between them at meaningful moments — not randomly
3. Let developments in one thread influence or comment on the other
4. Consider bringing them together (literally or thematically) by your ending

### Why This Matters

Understanding how skilled authors weave multiple plot lines will make you a more perceptive reader of complex novels and films, and gives you a genuinely advanced tool for your own creative writing.

### Your Turn

Plan a short story (you don't have to write the whole thing) with a main plot and a subplot that reflects or contrasts with it thematically. Describe both plots and explain how they'll comment on each other.$lesson$,
  'W.9-10.3', 'Write narratives to develop real or imagined experiences, using effective technique, well-chosen details, and well-structured event sequences, including multiple plot lines when appropriate.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Small Project: Counterclaim Rebuttal Paragraph', 11, 'practice',
  $lesson$## Small Project: Counterclaim Rebuttal Paragraph

Time to put fair counterclaim treatment into a single polished paragraph.

### Choose Your Debate Topic

Pick a real, debatable issue (a school policy, a community issue, or a question raised by To Kill a Mockingbird — such as whether individual moral courage can meaningfully change an unjust system).

### Write Your Rebuttal Paragraph

Your paragraph must include:

1. **A clear topic sentence** stating your claim
2. **A fair, accurate statement of the strongest counterclaim**
3. **An acknowledgment of what's genuinely valid** about the counterclaim, if anything
4. **A clear rebuttal** explaining why your claim still holds, using specific evidence or reasoning
5. **A concluding sentence** reinforcing your claim's strength in light of the counterclaim

### Self-Check Before Submitting

Would someone who holds the counterclaim recognize your description of their view as fair and accurate? If not, revise — a strawman counterclaim weakens your credibility rather than strengthening your argument.

### Why This Matters

This exact structure — claim, fair counterclaim, rebuttal — is the backbone of persuasive writing at the college level and in professional contexts like legal arguments, business proposals, and policy memos.$lesson$,
  'W.9-10.1b', 'Develop claims and counterclaims fairly, supplying evidence for each while pointing out the strengths and limitations of both.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Unit 3 Quiz: Argumentative & Narrative Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Argumentative & Narrative Writing

This quiz checks your understanding of counterclaim treatment in argument writing and multiple plot lines/pacing in narrative writing. Write your short answer response in complete, specific sentences.$lesson$,
  'W.9-10.1, W.9-10.3', 'Unit 3 assessment covering argumentative writing with counterclaims and narrative craft.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Research: Synthesizing Multiple Sources', 13, 'lesson',
  $lesson$## Beyond Gathering Sources: Actually Combining Them

Advanced research isn't just collecting sources — it's **synthesizing** them: combining information and ideas from multiple sources into new understanding that no single source provides on its own.

### Synthesis vs. Summary

Summary restates what one source says. Synthesis puts multiple sources into conversation with each other: where do they agree, disagree, or each add a different piece of a larger picture? Synthesis produces an idea that's genuinely yours, built from combining sources rather than copying any one of them.

### A Practical Synthesis Method

1. Read all your sources and note each one's key claims
2. Group claims by theme or sub-question — which sources address the same aspect of your topic?
3. For each group, identify agreement, disagreement, and gaps
4. Write your own synthesized point that draws on multiple sources at once (with citations for each contributing idea)

### Avoiding the Common Trap

The most common research-paper failure at this level is writing a paper that's really just several source-summaries stitched together, one after another. True synthesis means your paragraphs are organized by *idea*, with multiple sources supporting or complicating each idea — not organized source-by-source.

### Why This Matters

Every serious research task after high school — a college research paper, a workplace market analysis, a policy brief — requires genuine synthesis, not just source-gathering. This is one of the highest-value academic skills you can build now.

### Your Turn

Choose a research question. Find two sources addressing it, and write one synthesized paragraph that combines ideas from both (with an in-text citation for each), rather than summarizing them separately.$lesson$,
  'W.9-10.7-8', 'Conduct research projects to answer a question, synthesizing multiple sources, and gather relevant information while avoiding plagiarism and following a standard citation format.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'Delivering a Persuasive Presentation', 14, 'lesson',
  $lesson$## Making Your Case Out Loud

A persuasive presentation combines everything from this semester — sound argument, addressed counterclaims, synthesized research — with the delivery skills that make an audience actually listen and act.

### Structuring a Persuasive Presentation

1. **Open with a hook** that establishes why this issue matters right now
2. **State your claim clearly** early on
3. **Present your strongest evidence**, organized logically
4. **Address the strongest counterclaim directly**
5. **Close with a clear call to action** — what do you want your audience to think or do differently?

### Delivery Skills That Persuade

- **Confident eye contact** across your whole audience, not just one friendly face
- **Vocal variety** — changing your pace and emphasis for your most important points
- **Purposeful visuals**, if used, that clarify rather than distract from your spoken argument
- **A strong close** — your final line should be the one your audience remembers

### Adapting to Your Audience

A persuasive presentation to classmates differs from one to a school board or a community group — consider what your specific audience already believes, cares about, and needs to be convinced of, and adjust your evidence and tone accordingly.

### Why This Matters

Persuasive speaking is a skill you'll use in college interviews, job interviews, community meetings, and any moment where you need people to act on an idea you believe in — the earlier you build genuine comfort with it, the more doors it opens.

### Your Turn

Outline a 3-minute persuasive presentation on an issue you care about, including your hook, claim, strongest evidence, counterclaim response, and call to action.$lesson$,
  'SL.9-10.4', 'Present information, findings, and supporting evidence clearly, concisely, and logically, with organization, development, and style appropriate to purpose, audience, and task.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9')),
  'MAJOR PROJECT 2 (CAPSTONE): Justice & Community Action Proposal', 15, 'practice',
  $lesson$## Capstone Project: Justice & Community Action Proposal

Your semester-ending capstone connects To Kill a Mockingbird's themes of justice and moral courage to a real issue in your own community — combining research, argument, and persuasive presentation into one project.

### Your Task

Identify a real issue of fairness or justice in your school or community. Research it, build an argument for a specific proposed action, and present your case persuasively.

### Project Requirements

1. **A clear statement of the issue** and why it matters, connected explicitly to a theme from To Kill a Mockingbird (courage, justice, standing up despite social cost, or the gap between stated ideals and practice)
2. **Synthesized research** from at least 3 sources supporting your understanding of the issue
3. **A specific, actionable proposal** — not just "this is a problem," but a concrete recommendation
4. **Addressed counterclaims** — at least one fair, seriously-addressed objection to your proposal
5. **A persuasive presentation** (4-5 minutes) using the delivery skills from this unit

### Reflection

In 200-250 words, reflect on the connection between the novel's fictional exploration of justice and your real-world proposal. What did studying a fictional case of moral courage teach you about pursuing a real one?

### Deliverable

Submit your written proposal (issue, research synthesis, proposal, and counterclaim response), your presentation outline, and your reflection.$lesson$,
  'W.9-10.1, W.9-10.7-8, SL.9-10.4', 'Synthesize research and argument writing into a persuasive proposal connected to literary themes; present findings with appropriate organization and delivery.', 40
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Complex Characters & Moral Growth' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'A "complex character" is best defined as one who:', '["Is entirely good or entirely bad", "Has motivations, contradictions, and the capacity for change", "Never appears more than once in the story", "Speaks the most lines of dialogue"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Complex Characters & Moral Growth' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'Boo Radley''s characterization across the novel is an example of:', '["A character who never changes in the reader''s eyes", "A character who resists simple labels as fear gives way to understanding", "A minor character with no thematic significance", "A narrator"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Complex Characters & Moral Growth' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Choose a character whose understanding changes over the novel and explain the experience that triggered it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Point of View & Narrative Distance in Coming-of-Age Stories' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', '"Narrative distance" refers to:', '["The physical distance between two characters", "The gap between a narrator''s current perspective and the events being narrated", "The number of chapters in a book", "The setting of a novel"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Point of View & Narrative Distance in Coming-of-Age Stories' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'Narrating from an adult's memory of childhood allows an author to:', '["Only capture a child''s immediate confusion", "Combine a child''s immediate perception with adult understanding and framing", "Remove all emotion from the story", "Avoid using dialogue"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Point of View & Narrative Distance in Coming-of-Age Stories' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Identify a moment shaped by the adult narrator''s perspective and explain what would change if told purely as a child.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Theme Development — Small Project: Justice in Maycomb' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'short_answer', 'Identify your chosen theme and 3 moments (early, middle, late) that build it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Theme Development — Small Project: Justice in Maycomb' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'short_answer', 'Explain how the setting makes your chosen theme''s development possible or necessary.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Theme Development — Small Project: Justice in Maycomb' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Argue your strongest claim about what the novel ultimately suggests about your theme.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — To Kill a Mockingbird' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'Which best describes a complex character?', '["A character who never speaks", "A character with motivations and contradictions who can change over the story", "The narrator only", "A character who appears in just one scene"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — To Kill a Mockingbird' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'The adult narrator's perspective in the novel primarily allows for:', '["Total removal of childhood emotion", "A blend of childhood immediacy and adult understanding", "A purely factual, unemotional report", "The elimination of all dialogue"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — To Kill a Mockingbird' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'multiple_choice', 'A theme "develops" across a novel by:', '["Being stated once and never mentioned again", "Being explored and complicated through accumulating incidents and details", "Appearing only in the title", "Remaining exactly the same throughout"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — To Kill a Mockingbird' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 4, 'multiple_choice', 'Which is the strongest use of textual evidence for a claim about courage?', '["\"Atticus is brave.\"", "\"Atticus chooses to defend Tom Robinson despite knowing it will bring social and even physical danger to his family, revealing that his courage is a deliberate moral choice, not a lack of fear.\"", "\"The book is about a trial.\"", "\"Scout is a child.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — To Kill a Mockingbird' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — To Kill a Mockingbird' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 5, 'short_answer', 'Using specific evidence, explain how the novel''s point of view shapes the reader''s understanding of justice in Maycomb.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Author''s Purpose & Rhetoric in Nonfiction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'Rhetorical analysis focuses primarily on:', '["Only summarizing what a text says", "The specific choices an author makes to achieve their purpose", "The length of a text", "The publication date only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Author''s Purpose & Rhetoric in Nonfiction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'Which is an example of a rhetorical choice an author might analyze for tone?', '["The author''s word choice creating urgency or calm", "The number of pages in the text", "The font used in printing", "The price of the book"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Analyzing Author''s Purpose & Rhetoric in Nonfiction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Identify a nonfiction text''s purpose and one rhetorical choice that accomplishes it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Premises, Purposes, and Arguments' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'A "hidden premise" is:', '["A premise stated directly in bold text", "An assumption the argument relies on that is never explicitly stated", "The conclusion of an argument", "A footnote"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Premises, Purposes, and Arguments' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'To evaluate a premise, you should ask whether it is:', '["Long enough", "True or well-supported, and relevant to the conclusion", "Written in bold font", "Stated more than once"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Premises, Purposes, and Arguments' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Find an argument and identify one stated premise and one hidden premise, evaluating both.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Seminal U.S. Documents' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'A "seminal" document is one that:', '["Was written most recently", "Has influenced later thought, writing, and rhetoric significantly", "Is the shortest historical document", "Has never been studied in schools"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Seminal U.S. Documents' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'Analyzing a document''s "limits" means considering:', '["How many pages it has", "Who was included or excluded from its vision at the time it was written", "Its publication date only", "Its font size"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Seminal U.S. Documents' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Choose a seminal document and identify its central claim, one rhetorical strategy, and one historical limit.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Rhetorical Analysis Essay' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'short_answer', 'State your chosen text''s purpose and your thesis about how it achieves that purpose.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Rhetorical Analysis Essay' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'short_answer', 'Identify the 3 rhetorical choices you analyzed and one piece of evidence for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Rhetorical Analysis Essay' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetorical Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Identify the premise or reasoning you evaluated and your conclusion about it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing Sophisticated Arguments: Addressing Counterclaims' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'A "straw man" counterclaim is:', '["A fair and accurate representation of the opposing view", "A weak, easily-dismissed version of the opposing view", "A counterclaim with strong evidence", "The same as your own claim"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing Sophisticated Arguments: Addressing Counterclaims' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'Addressing the strongest counterclaim fairly tends to make your argument:', '["Weaker and less convincing", "More persuasive, since it shows genuine engagement with the issue", "Irrelevant", "Shorter"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing Sophisticated Arguments: Addressing Counterclaims' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'State a claim, its strongest fair counterclaim, and why your claim still holds.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Narrative Craft: Multiple Plot Lines & Pacing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'A well-crafted subplot typically:', '["Has no connection to the main plot at all", "Reflects or contrasts with the main plot''s themes", "Replaces the main plot entirely", "Is always longer than the main plot"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Narrative Craft: Multiple Plot Lines & Pacing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'When writing multiple plot lines, cutting between threads should happen:', '["Randomly, with no purpose", "At meaningful moments that serve the story", "Only at the very end", "Never — plot lines should not alternate"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Narrative Craft: Multiple Plot Lines & Pacing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Plan a main plot and subplot for a short story and explain how they comment on each other.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Counterclaim Rebuttal Paragraph' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'short_answer', 'Write your complete rebuttal paragraph (claim, fair counterclaim, acknowledgment, rebuttal, conclusion).', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Counterclaim Rebuttal Paragraph' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'short_answer', 'Explain why your counterclaim is fair rather than a straw man.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'Fairly developing a counterclaim means:', '["Ignoring it entirely", "Stating it accurately and acknowledging what is valid about it before rebutting", "Only mentioning it in the title", "Making it sound as weak as possible"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'A subplot that reflects the main plot''s themes serves to:', '["Confuse the reader on purpose", "Deepen the reader''s understanding of the theme from a different angle", "Replace the need for a main plot", "Shorten the story"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'multiple_choice', 'Which shows sound handling of a counterclaim?', '["Ignoring anything that disagrees with your view", "Presenting the opposition''s strongest point accurately, then explaining specifically why your claim still holds", "Making up a weak version of the opposing view", "Simply repeating your claim louder"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 4, 'multiple_choice', 'Which best demonstrates purposeful pacing across multiple plot lines?', '["Spending identical time on both threads regardless of importance", "Alternating between threads at moments that build tension or meaning in the story", "Finishing one plot entirely before starting the other with no connection", "Randomly switching every paragraph with no logic"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 5, 'short_answer', 'Explain how addressing a counterclaim fairly strengthens rather than weakens an argument, using an example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Research: Synthesizing Multiple Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'Synthesis differs from summary because synthesis:', '["Restates one source''s ideas", "Combines ideas from multiple sources into new understanding", "Only uses one source", "Avoids citing any sources"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Research: Synthesizing Multiple Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'A common research paper failure at this level is:', '["Organizing paragraphs by idea with multiple sources per idea", "Organizing the paper source-by-source rather than idea-by-idea", "Using too many citations", "Having a clear thesis"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Research: Synthesizing Multiple Sources' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Write one synthesized paragraph combining ideas from two sources on your research question.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Delivering a Persuasive Presentation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'multiple_choice', 'A persuasive presentation should close with:', '["A restatement of the hook only", "A clear call to action", "No conclusion at all", "A new unrelated topic"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Delivering a Persuasive Presentation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'multiple_choice', 'Adapting a presentation to your audience means considering:', '["Nothing — all audiences are the same", "What your specific audience already believes and needs to be convinced of", "Only the room''s temperature", "The time of day only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Delivering a Persuasive Presentation' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'Outline your persuasive presentation: hook, claim, evidence, counterclaim response, and call to action.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Justice & Community Action Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 1, 'short_answer', 'State the real issue you identified and its connection to a theme from To Kill a Mockingbird.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Justice & Community Action Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 2, 'short_answer', 'Summarize your synthesized research (at least 3 sources) supporting your understanding of the issue.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Justice & Community Action Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 3, 'short_answer', 'State your specific proposal and the strongest counterclaim you addressed.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Justice & Community Action Proposal' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Community Action Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-9'))), 4, 'short_answer', 'Write your reflection connecting the novel''s fictional exploration of justice to your real-world proposal.', NULL, NULL);
