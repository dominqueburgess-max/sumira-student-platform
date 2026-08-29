-- English 12 (Grade 12): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: Hamlet by William Shakespeare. Focus: dramatic form, existential/ethical themes,
-- and a life-after-high-school capstone. 4 units, 15 lessons, established template.

UPDATE courses SET status = 'published' WHERE slug = 'venture-english-12';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-english-12'), 'Unit 1: Reading Literature — Hamlet', 0),
((SELECT id FROM courses WHERE slug='venture-english-12'), 'Unit 2: Reading Informational Text & Philosophical Rhetoric', 1),
((SELECT id FROM courses WHERE slug='venture-english-12'), 'Unit 3: Argumentative & Narrative Writing', 2),
((SELECT id FROM courses WHERE slug='venture-english-12'), 'Unit 4: Research & Senior Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Analyzing Dramatic Structure & Soliloquy', 1, 'lesson',
  $lesson$## Welcome to English 12: Drama, Doubt & the Weight of Decision

This semester's anchor text is **Hamlet** by William Shakespeare — a tragedy about a prince who learns his father was murdered by his own uncle, and who spends much of the play caught between the demand for revenge and his own doubt about acting on it. As a play, Hamlet asks you to analyze literature in a form different from the novels you've studied before: drama, meant to be staged and spoken aloud.

### Drama as a Distinct Literary Form

Unlike a novel, a play has no narrator directly telling you what a character thinks or feels — meaning has to be built through dialogue, stage directions, structure, and one crucial dramatic device: the **soliloquy**.

### What a Soliloquy Does

A **soliloquy** is a speech a character delivers alone on stage, directly revealing their private thoughts to the audience. Hamlet's soliloquies (most famously, "To be, or not to be") give the audience direct access to his internal conflict in a way no other character in the play receives — making Hamlet's inner life central to how we understand the entire tragedy.

### Analyzing Dramatic Structure

Consider how Shakespeare structures the play's five acts: where does the central conflict get established, where does Hamlet's hesitation reach its peak, and where does the tragedy's inevitable ending begin to feel unavoidable? The order and pacing of these structural beats shapes how an audience experiences the mounting tension.

### Why This Matters

Learning to read drama — a form built for performance and spoken delivery — sharpens your understanding of how meaning is built without direct narration, a skill relevant to screenwriting, public speaking, and any communication built around spoken delivery rather than the page.

### Your Turn

Choose one of Hamlet's soliloquies. Identify what private thought or conflict it reveals that other characters in the play don't have access to, and explain how it shapes your understanding of Hamlet as a character.$lesson$,
  'RL.11-12.5', 'Analyze how an author''s choices concerning how to structure specific parts of a text contribute to its overall structure, meaning, and aesthetic impact.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Existential Themes & the Tragic Hero', 2, 'lesson',
  $lesson$## The Question Underneath the Question

Hamlet's hesitation isn't just about whether to seek revenge — it opens into some of literature's most enduring existential questions: what is the value of action versus inaction, how do we know what's true, and how does the fear of death shape human choice?

### What Makes Hamlet a "Tragic Hero"

A **tragic hero** is a fundamentally admirable character whose specific flaw (a "tragic flaw") leads to their downfall. Hamlet's brilliance, moral seriousness, and capacity for reflection are also, paradoxically, tied to the overthinking that repeatedly delays his action — his greatest strength and his fatal flaw are difficult to fully separate.

### Multiple Interacting Themes

Hamlet develops several themes simultaneously: the difficulty of acting under uncertainty, the corrupting nature of power, the thin line between sanity and madness, and mortality's shadow over every decision. Notice how these themes reinforce each other — Hamlet's uncertainty about the ghost's truthfulness, for instance, connects directly to his broader uncertainty about how to act at all.

### Reading Existential Questions Without Easy Answers

Great tragedies like Hamlet don't resolve their central questions neatly — the play doesn't clearly declare whether Hamlet should have acted sooner, or whether his hesitation was wisdom or weakness. Sitting with that ambiguity, rather than forcing a tidy answer, is part of engaging with the text seriously.

### Why This Matters

Wrestling with real ambiguity — situations without a clean, obviously correct answer — is exactly the kind of judgment required in real ethical dilemmas, leadership decisions, and complex life choices you'll face as an adult.

### Your Turn

Identify two themes in Hamlet that interact or reinforce each other. Explain the connection, and reflect on whether you think the play resolves them or leaves them genuinely ambiguous.$lesson$,
  'RL.11-12.2', 'Determine two or more themes or central ideas of a text and analyze their development, including how they interact and build on one another.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'To Be or Not To Be — Small Project: Hamlet''s Indecision Map', 3, 'practice',
  $lesson$## Small Project: Hamlet's Indecision Map

Hamlet's hesitation is one of the most analyzed patterns in all of literature. This project asks you to trace it systematically across the play.

### Step 1: Build Your Map

Identify at least 4 specific moments where Hamlet has an opportunity to act (against Claudius, on his own feelings, or on a decision) but hesitates, delays, or overthinks instead. For each moment, briefly describe what happens and what specifically stops him from acting.

### Step 2: Identify the Pattern

Across your 4 moments, what pattern do you notice in Hamlet's reasons for hesitating? Does the same underlying doubt or fear reappear each time, or do different concerns drive each delay?

### Step 3: Evaluate the Consequences

For at least 2 of your moments, explain what specific consequence follows from Hamlet's hesitation. Does delaying ever actually help him, or does the play suggest his hesitation consistently makes things worse?

### Step 4: Write Your Analysis

In 5-7 sentences, argue for your strongest claim: does Hamlet's hesitation reflect genuine wisdom (caution in the face of uncertain, high-stakes information) or a fatal flaw? Use your traced evidence to support your position.

### Why This Skill Matters

Tracing a character's decision-making pattern across an entire narrative — and evaluating its consequences honestly — is exactly the kind of close, sustained analysis expected in college-level literary study and in real evaluation of leadership decisions.$lesson$,
  'RL.11-12.1, RL.11-12.3', 'Cite strong and thorough textual evidence to support analysis of what the text states explicitly and implicitly; analyze the impact of the author''s choices regarding character development.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Unit 1 Quiz: Reading Literature — Hamlet', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — Hamlet

This quiz checks your understanding of dramatic structure/soliloquy, existential theme development, and Hamlet's pattern of hesitation. Support your short answer response with specific textual evidence.$lesson$,
  'RL.11-12.1-3, RL.11-12.5', 'Unit 1 assessment covering dramatic structure, theme development, and character analysis.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Analyzing Philosophical & Ethical Arguments in Nonfiction', 5, 'lesson',
  $lesson$## When Nonfiction Wrestles With the Same Big Questions

Hamlet's existential questions — how to act under uncertainty, what we owe to truth, how mortality shapes choice — have also been explored directly in philosophical and ethical nonfiction across history. Reading this kind of text well requires a slightly different toolkit than reading narrative nonfiction.

### What to Look for in Philosophical/Ethical Nonfiction

- **The specific question being addressed** — philosophical writing often opens by precisely defining the question before attempting to answer it
- **The author's method of reasoning** — logical argument, thought experiment, appeal to lived experience, or a combination
- **Where the argument acknowledges its own limits** — serious philosophical writing often explicitly notes what it hasn't fully resolved
- **How the author's purpose shapes their approach** — are they trying to persuade, or genuinely explore an open question?

### Author's Point of View in Philosophical Writing

Even rigorous philosophical arguments come from a specific point of view and set of values — recognizing this doesn't mean dismissing the argument, but does mean reading it as one serious perspective among others engaging the same question, not the final word.

### Connecting to Hamlet

Choose a piece of philosophical or ethical writing that addresses a question resonant with Hamlet's central dilemmas (the value of action versus reflection, how to make decisions under uncertainty, or the fear of death). Notice where the philosophical text's approach illuminates or complicates your reading of the play.

### Why This Matters

The ability to engage seriously with philosophical and ethical writing — recognizing rigorous reasoning without expecting a tidy final answer — is exactly the disposition needed for genuinely thoughtful engagement with hard, real-life decisions.

### Your Turn

Choose a philosophical or ethical text addressing a question resonant with Hamlet. Identify the specific question it addresses and the author's method of reasoning, and connect it to one moment in the play.$lesson$,
  'RI.11-12.6', 'Determine an author''s point of view or purpose in a text where the rhetoric is particularly effective, analyzing how style and content contribute to the power, persuasiveness, or beauty of the text.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Evaluating Reasoning in Public Discourse', 6, 'lesson',
  $lesson$## Bringing Rigor to Real Public Debates

Public discourse — op-eds, policy debates, panel discussions — often involves genuinely difficult ethical questions without clean answers, similar to the ambiguity you've encountered in Hamlet. Evaluating this kind of discourse rigorously means resisting the pull toward oversimplified certainty on either side.

### Recognizing False Certainty

Some public arguments present genuinely difficult, contested questions as if they had one obvious answer — a red flag for weak reasoning, since it usually means the argument is ignoring legitimate complexity rather than engaging with it.

### A Framework for Evaluating Public Discourse

1. **Identify what's genuinely contested** versus what's actually settled fact
2. **Notice where an argument acknowledges complexity** versus where it flattens it for rhetorical convenience
3. **Check whether emotional appeals are substituting for reasoning**, or genuinely supplementing sound reasoning
4. **Consider what a thoughtful person on the other side would say**, and whether the argument has actually engaged with that view

### Comfort With Genuine Ambiguity

Just as Hamlet doesn't resolve its central questions neatly, some real public debates involve legitimate, unresolved disagreement among reasonable people. Recognizing genuine ambiguity (rather than forcing false certainty) is itself a sign of rigorous, honest thinking — not indecisiveness.

### Why This Matters

The ability to evaluate public discourse rigorously, resisting false certainty on complicated issues, is essential for engaging responsibly in civic life, especially in an information environment that often rewards confident oversimplification.

### Your Turn

Find a piece of public discourse on a genuinely contested issue. Evaluate whether it acknowledges legitimate complexity or flattens it into false certainty, and explain your reasoning.$lesson$,
  'RI.11-12.8', 'Delineate and evaluate the reasoning in seminal texts and public discourse, assessing the premises, purposes, and arguments, including whether the evidence is relevant and sufficient.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Synthesizing Perspectives Across Texts and Time Periods', 7, 'lesson',
  $lesson$## Putting Centuries of Thought Into Conversation

At the senior level, some of the most sophisticated intellectual work involves synthesizing perspectives on the same enduring question across very different time periods — noticing what's changed, what's remained constant, and why.

### Choosing an Enduring Question

Enduring questions (like Hamlet's central dilemmas around action, truth, and mortality) tend to receive different treatment in different eras, shaped by each period's specific historical circumstances, available knowledge, and values.

### A Method for Cross-Era Synthesis

1. Identify your enduring question clearly
2. Find at least two texts addressing it from meaningfully different time periods (centuries, not just years, apart when possible)
3. Identify what each era's treatment assumes or takes for granted, that the other might not
4. Ask what genuinely changed in how the question is approached, and what has remained surprisingly constant across time

### Why Some Questions Endure

Certain human questions (how do we choose right action, what do we owe to truth, how does mortality shape meaning) recur across every era precisely because they don't have a final, settled answer — each generation has to work through them again, informed by but not simply inheriting the answers of the past.

### Why This Matters

This kind of cross-era synthesis is exactly the intellectual move expected in advanced humanities coursework, and it builds genuine historical perspective on questions you'll continue wrestling with throughout your own life.

### Your Turn

Choose an enduring question connected to Hamlet's themes. Find two texts addressing it from different eras and explain one significant difference and one surprising constant between them.$lesson$,
  'RI.11-12.9', 'Analyze seventeenth-, eighteenth-, and nineteenth-century foundational works of American and world literature and philosophy for their treatment of similar themes and concepts across time periods.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'MAJOR PROJECT 1: Philosophy in Action — Ethical Dilemma Analysis', 8, 'practice',
  $lesson$## Major Project 1: Philosophy in Action — Ethical Dilemma Analysis

You've studied philosophical nonfiction, evaluated public discourse, and synthesized perspectives across eras. Now apply all three to a real ethical dilemma.

### Your Task

Identify a genuine, contested ethical dilemma (personal, professional, or civic) with no obviously correct answer. Analyze it using the tools from this unit.

### Requirements

1. **A clear statement of the dilemma**, including why it's genuinely contested rather than having an obvious answer
2. **Analysis of at least one philosophical or ethical text** relevant to your dilemma, including its method of reasoning
3. **Evaluation of public discourse on your dilemma** — identify where existing discussion acknowledges complexity versus where it flattens it into false certainty
4. **A connection to Hamlet** — explain how the play's treatment of action, uncertainty, or ethical weight illuminates your real dilemma
5. **Your own reasoned position** — not necessarily a fully resolved answer, but a thoughtful account of how you'd approach the decision and what factors you'd weigh most heavily

### Why This Matters

Learning to analyze genuinely difficult ethical questions with rigor — rather than either avoiding them or forcing false certainty — is one of the most valuable habits of mind you can carry into adulthood, leadership, and civic participation.

### Deliverable

Submit your complete ethical dilemma analysis (dilemma statement, philosophical text analysis, discourse evaluation, Hamlet connection, and your reasoned position).$lesson$,
  'RI.11-12.6, RI.11-12.8, RI.11-12.9', 'Analyze rhetoric and reasoning in philosophical texts and public discourse, synthesizing perspectives to reason through a genuine ethical dilemma.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Constructing a Thesis-Driven Literary Argument at the Senior Level', 9, 'lesson',
  $lesson$## Your Most Sophisticated Argument Yet

Senior-level literary argument brings together everything from your previous years: precise thesis-crafting, sustained evidence, fair treatment of counterclaims, and now, genuine engagement with ambiguity where a text doesn't offer easy answers.

### Arguing About Ambiguity Without Avoiding It

Some of the strongest senior-level essays don't force a text into a simple resolution — instead, they make a sophisticated claim about *why* the ambiguity itself is meaningful. For example: rather than arguing "Hamlet should have acted sooner," a more sophisticated thesis might argue that the play's refusal to resolve whether Hamlet's hesitation is wise or fatal is itself the point, forcing the audience to sit with the same uncertainty Hamlet faces.

### Raising the Bar on Evidence Quality

At this level, evidence should be selected not just for relevance but for its capacity to support a genuinely complex, nuanced claim — evidence that could seem to cut both ways, carefully analyzed to show why it actually supports your specific interpretation.

### Structuring an Essay Around Complexity

Organize your essay so that it doesn't just accumulate evidence, but builds toward increasing sophistication — perhaps starting with a more straightforward observation, then complicating it, then arriving at your most nuanced claim by the essay's end.

### Why This Matters

This is the exact kind of sophisticated, ambiguity-embracing argumentation rewarded in AP Literature exams, college seminar papers, and any serious intellectual writing you'll do in the years ahead.

### Your Turn

Write a thesis that makes a claim about why a specific ambiguity or tension in Hamlet is meaningful, rather than trying to resolve it. Outline how your essay would build toward that claim in increasing sophistication.$lesson$,
  'W.11-12.1', 'Write arguments to support claims in an analysis of substantive topics, using valid reasoning and relevant, sufficient evidence, addressing the most significant complexities and counterclaims.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Writing With Stylistic Maturity: Syntax & Tone Control', 10, 'lesson',
  $lesson$## The Final Layer of Craft

By senior year, strong writing isn't just organized and well-evidenced — it demonstrates real control over syntax (sentence structure) and tone, deployed deliberately rather than by accident.

### Syntax as a Meaning-Making Tool

Varying sentence structure deliberately — a short, blunt sentence after several long, complex ones; a fragment used for emphasis; a carefully built periodic sentence that withholds its main point until the end — is a mark of mature control, not just correctness.

### Tone Consistency and Shifts

Mature writing maintains a consistent tone appropriate to its purpose, but can also shift tone deliberately for effect (a moment of unexpected humor in a serious piece, or a sudden serious turn in a lighter piece) — as long as the shift is controlled and purposeful, not accidental.

### Reading Your Own Writing for Control

A practical test: read your writing aloud. Do the sentence rhythms support your meaning, or fight against it? Does your tone feel deliberate throughout, or does it wobble unintentionally between registers?

### Why This Matters

This level of stylistic control is what separates merely competent writing from writing that feels genuinely accomplished — the kind that stands out in college application essays, competitive scholarship applications, and professional writing throughout your career.

### Your Turn

Take a paragraph you've written this semester. Revise it specifically for syntax variation and tone control — read it aloud before and after, and note what changed.$lesson$,
  'W.11-12.3', 'Write narratives to develop real or imagined experiences, using effective technique, well-chosen details, and well-structured sequences, with deliberate command of syntax and tone.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Small Project: Senior Voice Portfolio Piece', 11, 'practice',
  $lesson$## Small Project: Senior Voice Portfolio Piece

Time to demonstrate your most mature control of syntax, tone, and voice in a single polished piece.

### Your Task

Write a short personal or reflective piece (300-400 words) on a topic of genuine significance to you (a turning point, a value you hold, a question you're still working through) that demonstrates deliberate stylistic control.

### Requirements

1. **Deliberate syntax variation** — include at least one clear example of a stylistic choice made on purpose (a short sentence for impact, a carefully built longer sentence, a fragment used for effect)
2. **Consistent, purposeful tone** throughout, with at least one intentional, controlled shift if appropriate to your topic
3. **A genuine, developed voice** — this should sound distinctly like you, not like a generic student essay
4. **A brief craft note** (2-3 sentences) identifying the specific stylistic choices you made and why

### Self-Check Before Submitting

Read your piece aloud. Does every sentence feel like a deliberate choice, or are some just default habits? Revise any sentence that feels like it happened by accident rather than by decision.

### Why This Matters

This piece can serve as a genuinely strong sample for college application supplements or a personal writing portfolio — polished, personal, stylistically controlled writing is valuable well beyond this course.$lesson$,
  'W.11-12.3d', 'Use precise words and phrases, telling details, and sensory language to convey a vivid picture, demonstrating deliberate control of syntax and tone.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Unit 3 Quiz: Argumentative & Narrative Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Argumentative & Narrative Writing

This quiz checks your understanding of senior-level thesis-driven argument (including engaging ambiguity) and stylistic control of syntax and tone. Write your short answer response in complete, specific sentences.$lesson$,
  'W.11-12.1, W.11-12.3', 'Unit 3 assessment covering advanced literary argumentation and stylistic control.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Advanced Research Synthesis Across Disciplines', 13, 'lesson',
  $lesson$## Research That Crosses Boundaries

Your most sophisticated research this year won't stay confined to a single discipline — the richest senior research often draws on literature, history, philosophy, science, or economics together to fully address a complex question.

### Why Cross-Disciplinary Synthesis Matters

Real, complex problems (climate policy, ethical dilemmas in technology, questions of justice) rarely respect academic subject boundaries. Learning to draw credibly on multiple disciplines — without becoming superficial in any of them — is a genuinely advanced research skill.

### A Method for Cross-Disciplinary Research

1. Identify your core question, and which disciplines are genuinely relevant to answering it fully
2. Seek out credible sources from each relevant discipline, respecting each field's own standards of evidence
3. Look for genuine points of connection or tension between disciplines, not just parallel, unconnected summaries
4. Synthesize toward a conclusion that couldn't have been reached from any single discipline alone

### Avoiding Superficial Cross-Disciplinary Work

The most common failure is name-dropping multiple disciplines without genuinely engaging with any of them rigorously. Better to synthesize two disciplines deeply than to gesture superficially at four.

### Why This Matters

The most valuable and original work in college, research, and professional life increasingly happens at the intersection of disciplines — this is genuine preparation for that kind of thinking.

### Your Turn

Identify a complex question relevant to your senior capstone. Name two disciplines genuinely relevant to answering it fully, and explain one point of connection or tension between how each discipline would approach the question.$lesson$,
  'W.11-12.7-8', 'Conduct sustained research projects to answer a question, synthesizing multiple sources and disciplines, demonstrating understanding of the subject under investigation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'Delivering a Capstone Presentation With Command', 14, 'lesson',
  $lesson$## Presenting Like Someone Who Owns the Room

Your senior capstone presentation is your final chance in this course to demonstrate command of the room — genuine authority over your material, delivered with the poise expected in college and professional settings.

### What "Command" Looks Like

- **Deep familiarity with your material** — able to speak fluently rather than reading, and to field unexpected questions
- **Deliberate pacing** — not rushing through nerves, using pauses purposefully
- **Adapting in real time** — noticing your audience's reactions and adjusting emphasis or pace accordingly
- **Genuine ownership of your conclusions** — presenting your ideas with earned confidence, while remaining honestly open about their limits

### Handling Questions With Poise

A command-level presenter treats tough questions as an opportunity to demonstrate depth, not as a threat. If you don't know an answer, saying so honestly and explaining how you'd find out is far stronger than bluffing.

### Rehearsal at This Level

At the senior level, rehearsal should go beyond memorizing your script — practice fielding likely questions, and practice explaining your most complex point in multiple ways, so you're not dependent on one specific phrasing.

### Why This Matters

This is precisely the presentation standard expected in college seminars, thesis defenses, and professional settings — genuine command, not memorized performance, is what will serve you well beyond this course.

### Your Turn

Identify 2 challenging questions someone might ask about your capstone project. Draft a thoughtful, honest response to each, including what you'd say if you didn't fully know the answer.$lesson$,
  'SL.11-12.4-6', 'Present information, findings, and supporting evidence conveying a clear, distinct perspective; adapt speech to a variety of contexts and tasks, demonstrating command of formal English.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12')),
  'MAJOR PROJECT 2 (CAPSTONE): Senior Thesis & Legacy Project', 15, 'practice',
  $lesson$## Capstone Project: Senior Thesis & Legacy Project

This is your final, defining project for English 12 — and for your K-12 English education. It asks you to bring together literary analysis, cross-disciplinary research, mature writing, and presentation command into one culminating piece of work with real personal meaning.

### Your Task

Develop a senior thesis project on an enduring question of genuine significance to you (drawing on, but not limited to, themes from Hamlet — action versus reflection, truth and uncertainty, mortality and meaning, or a related question of your own choosing). Connect this thesis to a "legacy" component: something you want to leave behind, contribute, or begin as you move beyond high school.

### Project Requirements

1. **A clear, sophisticated thesis** on your enduring question, engaging genuine complexity or ambiguity rather than forcing a simple answer
2. **Cross-disciplinary research** drawing credibly on at least 2 relevant disciplines
3. **A literary connection** — explain specifically how Hamlet or another text from this year illuminates your thesis
4. **Stylistically mature writing** throughout, demonstrating the syntax and tone control from this unit
5. **A legacy component** — a concrete plan, artifact, or commitment representing something you want to contribute or begin as you leave high school (this can be connected to entrepreneurship, community service, creative work, or another domain meaningful to you)
6. **A capstone presentation** delivered with genuine command, including your prepared responses to anticipated challenging questions

### Reflection

In 250-300 words, reflect on your full journey through K-12 English education. What has changed most in how you read, think, and write? What do you want to carry forward?

### Deliverable

Submit your senior thesis (written), your legacy component description, your presentation outline with anticipated Q&A, and your reflection.$lesson$,
  'W.11-12.1, W.11-12.7-8, SL.11-12.4-6', 'Synthesize sustained literary argument, cross-disciplinary research, and command-level presentation into a culminating senior capstone.', 45
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Dramatic Structure & Soliloquy' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'A soliloquy is best defined as:', '["A conversation between two characters", "A speech a character delivers alone on stage, revealing private thoughts to the audience", "A stage direction", "The play''s title"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Dramatic Structure & Soliloquy' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Unlike a novel, a play builds meaning primarily through:', '["A narrator directly stating characters'' thoughts", "Dialogue, stage directions, structure, and devices like soliloquy", "Footnotes", "Chapter summaries"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Dramatic Structure & Soliloquy' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Choose one soliloquy and explain what private conflict it reveals and how it shapes your understanding of Hamlet.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Existential Themes & the Tragic Hero' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'A "tragic hero" is best described as:', '["A purely evil character", "A fundamentally admirable character whose specific flaw leads to their downfall", "A minor character with no real role", "A character who never makes mistakes"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Existential Themes & the Tragic Hero' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Hamlet''s capacity for deep reflection is portrayed as:', '["Purely a strength with no downside", "Both a strength and, paradoxically, tied to his fatal flaw of overthinking and delay", "Completely irrelevant to the plot", "A trait he loses by the end"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Existential Themes & the Tragic Hero' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Identify two interacting themes in Hamlet and reflect on whether the play resolves them or leaves them ambiguous.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='To Be or Not To Be — Small Project: Hamlet''s Indecision Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'short_answer', 'List your 4 moments of hesitation and what stops Hamlet from acting in each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='To Be or Not To Be — Small Project: Hamlet''s Indecision Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'short_answer', 'Explain the consequence of hesitation in at least 2 of your moments.', NULL, NULL),
((SELECT id FROM lessons WHERE title='To Be or Not To Be — Small Project: Hamlet''s Indecision Map' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Argue whether Hamlet''s hesitation reflects wisdom or a fatal flaw.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hamlet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'Soliloquies in Hamlet primarily function to:', '["Advance only minor subplots", "Give the audience direct access to Hamlet''s private thoughts and conflicts", "Replace the need for dialogue entirely", "Confuse the audience intentionally"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hamlet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'The play''s treatment of Hamlet''s hesitation is best described as:', '["Clearly resolved as pure wisdom", "Clearly resolved as pure weakness", "Genuinely ambiguous, without a tidy resolution", "Entirely absent from the play"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hamlet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'multiple_choice', 'As a tragic hero, Hamlet''s downfall is tied to:', '["A flaw entirely separate from his admirable qualities", "A flaw that is difficult to fully separate from his greatest strengths", "Pure bad luck with no connection to character", "A flaw that appears only in the final act"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hamlet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 4, 'multiple_choice', 'Which is the strongest use of textual evidence for a claim about Hamlet''s hesitation?', '["\"Hamlet thinks a lot.\"", "\"Hamlet''s repeated delay in confronting Claudius, even when opportunities arise, reveals a mind more comfortable with reflection than with decisive action.\"", "\"The play has five acts.\"", "\"Hamlet is a prince.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hamlet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hamlet' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 5, 'short_answer', 'Using specific evidence, explain how the play''s dramatic structure builds toward its tragic ending.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Philosophical & Ethical Arguments in Nonfiction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'Rigorous philosophical writing often includes:', '["A refusal to ever acknowledge limits", "An explicit acknowledgment of what the argument hasn''t fully resolved", "Only emotional appeals with no reasoning", "A single, universally accepted answer to every question"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Philosophical & Ethical Arguments in Nonfiction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Recognizing that a philosophical argument comes from a specific point of view means:', '["The argument should be dismissed entirely", "Reading it as one serious perspective among others, not the final word", "The argument has no value", "The author has no expertise"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Philosophical & Ethical Arguments in Nonfiction' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Choose a philosophical text resonant with Hamlet and connect it to a moment in the play.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Reasoning in Public Discourse' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'Presenting a genuinely contested question as if it had one obvious answer is:', '["A sign of strong reasoning", "A red flag suggesting the argument ignores legitimate complexity", "Always the correct approach", "Irrelevant to evaluating an argument"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Reasoning in Public Discourse' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Recognizing genuine ambiguity in a real debate is a sign of:', '["Indecisiveness and weak thinking", "Rigorous, honest thinking", "A failure to research the topic", "Avoiding the issue entirely"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Reasoning in Public Discourse' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Evaluate a piece of public discourse on a contested issue for false certainty versus genuine complexity.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Synthesizing Perspectives Across Texts and Time Periods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'Enduring questions recur across every era primarily because:', '["They have simple, universally agreed-upon answers", "They lack a final, settled answer and each generation must work through them again", "No one has ever asked them before", "They are irrelevant to modern life"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Synthesizing Perspectives Across Texts and Time Periods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Cross-era synthesis should identify:', '["Only similarities, ignoring all differences", "What genuinely changed and what has remained surprisingly constant", "Nothing of value", "Only the most recent text''s perspective"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Synthesizing Perspectives Across Texts and Time Periods' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Choose an enduring question and compare two texts addressing it from different eras.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Philosophy in Action — Ethical Dilemma Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'short_answer', 'State your ethical dilemma and explain why it is genuinely contested.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Philosophy in Action — Ethical Dilemma Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'short_answer', 'Summarize your philosophical text analysis and your evaluation of public discourse on the issue.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Philosophy in Action — Ethical Dilemma Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Philosophical Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'State your Hamlet connection and your own reasoned position on the dilemma.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Constructing a Thesis-Driven Literary Argument at the Senior Level' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'A sophisticated senior-level thesis about an ambiguous text might:', '["Force the text into one simple resolution", "Argue for why the ambiguity itself is meaningful", "Avoid making any claim at all", "Ignore the text''s complexity entirely"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Constructing a Thesis-Driven Literary Argument at the Senior Level' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'At the senior level, evidence should be selected for its capacity to:', '["Only support the most obvious interpretation", "Support a genuinely complex, nuanced claim, even evidence that could seem to cut both ways", "Avoid any complexity", "Be as short as possible"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Constructing a Thesis-Driven Literary Argument at the Senior Level' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Write a thesis about why a specific ambiguity in Hamlet is meaningful, and outline your essay''s structure.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing With Stylistic Maturity: Syntax & Tone Control' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'Deliberate syntax variation (short sentence after several long ones, a purposeful fragment) is a mark of:', '["Grammatical error", "Mature, controlled writing craft", "Accidental writing with no purpose", "A rule that should never be broken"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing With Stylistic Maturity: Syntax & Tone Control' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'A deliberate tone shift in mature writing should be:', '["Accidental and unplanned", "Controlled and purposeful", "Avoided at all costs", "Used in every single sentence"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing With Stylistic Maturity: Syntax & Tone Control' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Revise a paragraph for syntax variation and tone control, noting what changed.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Senior Voice Portfolio Piece' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'short_answer', 'Submit your complete senior voice portfolio piece.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Senior Voice Portfolio Piece' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'short_answer', 'Write your craft note identifying your specific stylistic choices and why you made them.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'A senior-level essay engaging ambiguity should:', '["Force a simple, tidy resolution regardless of the text''s complexity", "Make a sophisticated claim about why the ambiguity itself matters", "Avoid making any argument", "Ignore the text entirely"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Mature control of tone means:', '["Never varying tone under any circumstance", "Maintaining purposeful consistency, with deliberate shifts only when they serve the writing''s effect", "Randomly changing tone every sentence", "Avoiding any emotional content"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'multiple_choice', 'Which best demonstrates deliberate syntax variation?', '["Every sentence in the paragraph is exactly the same length and structure.", "After several long, flowing sentences building an idea, one short sentence lands the point: It was time.", "All sentences are fragments with no complete thoughts.", "The paragraph has no punctuation."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 4, 'multiple_choice', 'Selecting evidence that "could seem to cut both ways" and analyzing it carefully demonstrates:', '["Weak, contradictory reasoning", "Sophisticated engagement with genuine complexity", "A mistake that should be avoided", "Irrelevant evidence choice"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 5, 'short_answer', 'Explain how embracing ambiguity in a literary argument can be more sophisticated than forcing a resolution, using an example from Hamlet.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Advanced Research Synthesis Across Disciplines' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'The most common failure in cross-disciplinary research is:', '["Engaging deeply with two disciplines", "Name-dropping multiple disciplines without genuinely engaging with any rigorously", "Using too few sources", "Having a clear research question"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Advanced Research Synthesis Across Disciplines' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'Strong cross-disciplinary synthesis should reach a conclusion that:', '["Could have been reached from a single discipline alone", "Couldn''t have been reached from any single discipline alone", "Ignores all disciplines entirely", "Contradicts itself"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Advanced Research Synthesis Across Disciplines' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Identify a complex question for your capstone and two disciplines genuinely relevant to answering it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Delivering a Capstone Presentation With Command' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'multiple_choice', 'A command-level presenter treats a tough question as:', '["A threat to avoid at all costs", "An opportunity to demonstrate depth", "A reason to end the presentation early", "Something to ignore"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Delivering a Capstone Presentation With Command' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'multiple_choice', 'If a presenter doesn''t know the answer to a question, the strongest response is to:', '["Bluff confidently regardless of accuracy", "Say so honestly and explain how they would find out", "Refuse to respond at all", "Change the subject abruptly"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Delivering a Capstone Presentation With Command' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Draft thoughtful responses to 2 challenging questions someone might ask about your capstone.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Senior Thesis & Legacy Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 1, 'short_answer', 'State your senior thesis on your chosen enduring question.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Senior Thesis & Legacy Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 2, 'short_answer', 'Summarize your cross-disciplinary research and your literary connection to Hamlet or another text this year.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Senior Thesis & Legacy Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 3, 'short_answer', 'Describe your legacy component: what you want to contribute or begin as you leave high school.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Senior Thesis & Legacy Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Senior Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-12'))), 4, 'short_answer', 'Write your reflection on your full journey through K-12 English education.', NULL, NULL);
