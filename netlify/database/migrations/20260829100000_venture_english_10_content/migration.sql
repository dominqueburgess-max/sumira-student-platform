-- English 10 (Grade 10): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: Animal Farm by George Orwell. 4 units, 15 lessons, matching the established
-- Venture Studio authoring template. Focus: allegory, satire, propaganda, and media literacy.

UPDATE courses SET status = 'published' WHERE slug = 'venture-english-10';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-english-10'), 'Unit 1: Reading Literature — Animal Farm', 0),
((SELECT id FROM courses WHERE slug='venture-english-10'), 'Unit 2: Reading Informational Text & Propaganda Analysis', 1),
((SELECT id FROM courses WHERE slug='venture-english-10'), 'Unit 3: Argumentative & Narrative Writing', 2),
((SELECT id FROM courses WHERE slug='venture-english-10'), 'Unit 4: Research & Media Literacy Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Understanding Allegory & Symbolism', 1, 'lesson',
  $lesson$## Welcome to English 10: Power, Persuasion & the Stories We're Told

This semester's anchor text is **Animal Farm** by George Orwell — a short novel in which farm animals overthrow their human farmer, only to see a new tyranny rise among their own leaders. It is one of the most famous **allegories** ever written.

### What Is an Allegory?

An **allegory** is a narrative in which characters, events, and settings symbolically represent real ideas, historical events, or figures — usually to make a political or moral argument. Every element in Animal Farm works on two levels: as a story about farm animals, and as commentary on the rise of totalitarian power.

### Reading Symbolically

To read an allegory well, you have to hold both levels in mind at once. Ask: what might this character, event, or object represent beyond its literal role in the story? Orwell built Animal Farm specifically to comment on how revolutionary ideals can be gradually corrupted by those who seize power in their name — notice how the pigs' rules and rhetoric slowly shift over the course of the novel.

### Connotative and Figurative Meaning

Words and phrases in an allegory often carry **connotative meaning** (emotional or associative meaning beyond the literal definition) that shapes tone. A phrase that sounds official and reasonable on the surface can carry a chilling undertone once you recognize what it's really justifying.

### Why This Matters

Allegory isn't just a historical literary device — it's a way of thinking critically about power, language, and manipulation that applies directly to real political rhetoric, advertising, and propaganda you'll encounter throughout your life.

### Your Turn

Identify one symbolic element in Animal Farm (a character, rule, or event) and explain what real-world idea, group, or event it represents. Support your interpretation with a specific detail from the text.$lesson$,
  'RL.9-10.4', 'Determine the meaning of words and phrases as they are used in the text, including figurative and connotative meanings; analyze the cumulative impact of specific word choices on meaning and tone.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'How Structure Shapes Allegory', 2, 'lesson',
  $lesson$## The Architecture of a Political Fable

Animal Farm is structured deliberately — its short chapters, steady pacing, and mounting repetition of key phrases (like the gradually rewritten farm commandments) aren't incidental. They're essential to how the allegory builds its argument.

### Structural Choices Worth Analyzing

- **Order of events** — why does the corruption of the revolution happen gradually, in small steps, rather than all at once?
- **Repetition with variation** — the farm's rules are repeated throughout the novel but subtly altered each time. What effect does that create?
- **Pacing** — short chapters create a brisk, almost fable-like pace. How does that pace affect how readers process the story's darker implications?
- **Where the novel begins and ends** — how does the ending compare to the beginning, and what does that structural "bookending" argue about power and revolution?

### Structure as Argument

In an allegory, structural choices aren't just about storytelling craft — they're part of the argument itself. The gradual, incremental nature of the corruption in Animal Farm is itself a claim: that tyranny rarely arrives all at once, but through small, repeated shifts that become normalized over time.

### Why This Matters

Recognizing how structure shapes meaning helps you analyze not just novels, but any deliberately structured text — a documentary's editing choices, a political campaign's messaging arc, or a company's gradual policy changes.

### Your Turn

Identify one structural choice in Animal Farm (repetition, pacing, or ordering of events) and explain what argument or effect it creates.$lesson$,
  'RL.9-10.5', 'Analyze how an author''s choices concerning how to structure specific parts of a text contribute to its overall structure and meaning as well as its aesthetic impact.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Analyzing Satire — Small Project: Propaganda in Animal Farm', 3, 'practice',
  $lesson$## Small Project: Propaganda in Animal Farm

Animal Farm doesn't just depict a corrupt government — it depicts that government using specific persuasive techniques to maintain control. This project asks you to trace those techniques closely.

### Step 1: Identify Propaganda Techniques in the Text

Find at least 3 specific moments where a character (most often Squealer) uses persuasive or manipulative language to justify the pigs' growing power or explain away a broken promise. For each, name the technique being used (for example: rewriting history, appealing to fear, false comparison, repetition of simple slogans).

### Step 2: Analyze the Effect on the Other Animals

For each moment, explain briefly why the technique works on the other animals — what does it exploit (their trust, their poor memory of the original rules, their fear of the alternative)?

### Step 3: Connect to the Novel's Theme

In 3-4 sentences, explain what Animal Farm ultimately argues about how power maintains itself through language and persuasion, not just force.

### Step 4: Write Your Analysis

Combine your findings into a short analytical piece (200-300 words) arguing for your strongest claim about the relationship between language/propaganda and power in the novel, using your 3 traced moments as evidence.

### Why This Skill Matters

Learning to name and recognize specific propaganda techniques in fiction builds the exact skill you'll need to critically evaluate real political rhetoric, advertising, and social media content as an informed adult.$lesson$,
  'RL.9-10.2, RL.9-10.3', 'Determine a theme and analyze its development; analyze how complex characters develop and advance the plot or theme.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Unit 1 Quiz: Reading Literature — Animal Farm', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — Animal Farm

This quiz checks your understanding of allegory, symbolism, structural choices, and propaganda technique in Animal Farm. Support your short answer response with specific textual evidence.$lesson$,
  'RL.9-10.2-5', 'Unit 1 assessment covering allegory, symbolism, structure, and theme development.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Techniques of Propaganda & Persuasion', 5, 'lesson',
  $lesson$## Naming the Tools of Manipulation

Propaganda isn't a vague accusation — it's a set of specific, nameable techniques. Being able to identify them by name is the first step to resisting them.

### Common Propaganda Techniques

- **Bandwagon** — suggesting "everyone" already believes or does this, so you should too
- **Card stacking** — presenting only the evidence that supports one side, while omitting contradicting evidence
- **Name-calling** — attaching a negative label to an idea or person to discourage fair evaluation
- **Glittering generalities** — using vague, emotionally positive words ("freedom," "progress") without specific meaning
- **Testimonial** — using a admired figure's endorsement to transfer their credibility onto a claim, regardless of their actual expertise on the topic
- **Fear appeals** — emphasizing a threat to bypass careful reasoning

### Propaganda in History and Today

These techniques have been used throughout history — including in the totalitarian regimes Animal Farm allegorizes — and remain in active use in modern advertising, political messaging, and social media content.

### The Difference Between Persuasion and Propaganda

Not all persuasion is propaganda. Honest persuasion presents genuine evidence and reasoning transparently. Propaganda specifically relies on emotional manipulation, selective/distorted information, or fallacious reasoning to bypass a fair evaluation.

### Why This Matters

Being able to name a propaganda technique the moment you see it — in an ad, a political speech, or a viral post — is one of the most valuable defenses against manipulation you can build as a media consumer.

### Your Turn

Find a real example of a propaganda technique (in an ad, political message, or historical source). Name the specific technique and explain how it works.$lesson$,
  'RI.9-10.6', 'Determine an author''s point of view or purpose in a text and analyze how an author uses rhetoric, including propaganda techniques, to advance that point of view or purpose.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Analyzing Historical Context of Political Texts', 6, 'lesson',
  $lesson$## Reading Political Texts in Their Moment

Understanding a political text (a speech, manifesto, or piece of propaganda) requires understanding the historical moment that produced it — the same words can mean something very different depending on the context surrounding them.

### What Historical Context Includes

- **What events immediately preceded the text** — a war, an economic crisis, a revolution?
- **Who the intended audience was**, and what they were likely already feeling or fearing
- **What the author or speaker stood to gain** from the specific claims being made
- **How the text was received at the time**, versus how it's understood now with hindsight

### Animal Farm's Historical Context

Orwell wrote Animal Farm in the 1940s as a direct allegorical response to the Russian Revolution and the rise of Stalinism — knowing this context deepens (though isn't strictly required to enjoy) your reading of the specific choices Orwell makes about which events to allegorize and how.

### Avoiding Two Common Mistakes

Don't assume a historical text's meaning is identical to how it might be read today, stripped of context. But also don't assume historical distance makes a text irrelevant — many propaganda techniques and power dynamics repeat across very different historical moments.

### Why This Matters

Understanding historical context is essential for accurately interpreting any political or historical document — a skill directly relevant to civics, history, and evaluating how current events get framed for future readers.

### Your Turn

Choose a historical political text or speech. Research the historical context surrounding it, and explain how that context shapes or is necessary for understanding its meaning.$lesson$,
  'RI.9-10.9', 'Analyze seminal U.S. or world documents of historical and literary significance, including how they address related themes and concepts, in their historical context.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Evaluating Media Bias & Source Reliability', 7, 'lesson',
  $lesson$## Every Source Has a Perspective — Some More Than Others

All media sources — even reputable ones — have some perspective. Evaluating reliability means distinguishing ordinary perspective from actual bias that distorts accuracy.

### A Framework for Evaluating Sources

1. **Check the source's funding and ownership** — who benefits from this source's specific framing?
2. **Compare against other reputable sources** — do the facts (not just the interpretation) hold up elsewhere?
3. **Look for loaded language** — does the source use neutral or emotionally charged words to describe the same events?
4. **Check what's omitted** — a technically accurate story can still mislead through selective emphasis (card stacking)
5. **Consider the author's expertise** — is this person actually qualified to make this specific claim?

### Bias vs. Unreliability

A source can have a clear point of view and still be reliable, if it's transparent about that perspective and accurate in its facts. A source becomes unreliable specifically when it distorts facts, omits crucial context, or uses manipulative techniques to mislead rather than persuade honestly.

### Why This Matters

In an information environment full of competing, often contradictory sources, the ability to evaluate reliability — rather than just trusting whatever confirms what you already believe — is one of the most important civic skills of the next decade.

### Your Turn

Choose a news story covered by two different sources. Compare their word choice, what each emphasizes or omits, and evaluate which (if either) shows signs of bias distorting accuracy.$lesson$,
  'RI.9-10.8', 'Delineate and evaluate the argument and specific claims in a text, assessing whether the reasoning is valid and the evidence is relevant and sufficient; identify false statements and fallacious reasoning.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'MAJOR PROJECT 1: Propaganda Techniques Field Guide', 8, 'practice',
  $lesson$## Major Project 1: Propaganda Techniques Field Guide

You've studied propaganda techniques, historical context, and media bias. Now build a resource that demonstrates real mastery of all three.

### Your Task

Create a "field guide" identifying and explaining real-world examples of at least 5 different propaganda techniques, drawn from current advertising, political messaging, or historical sources.

### Requirements

1. **5 distinct propaganda techniques**, each clearly named and defined
2. **A real example for each technique**, with the specific source cited (an ad, speech, article, or historical document)
3. **An analysis of the intended effect** for each example — what is it trying to make the audience feel, believe, or do?
4. **At least one connection back to Animal Farm** — identify a moment in the novel that uses one of your 5 techniques
5. **A historical context note** for at least one example, explaining how the surrounding circumstances shape its meaning

### Formatting Your Field Guide

Organize your guide clearly — one technique per section, each with its name, definition, example, and analysis. This should be a resource someone else could genuinely use to get better at spotting propaganda themselves.

### Why This Matters

This project turns academic analysis into a practical, reusable skill — the kind of media literacy resource that has real value beyond the classroom.

### Deliverable

Submit your complete field guide (5 techniques, examples, analyses, and your Animal Farm connection).$lesson$,
  'RI.9-10.6, RI.9-10.8, RI.9-10.9', 'Analyze rhetoric and propaganda technique, evaluate arguments and sources for reliability, and connect informational analysis to literary understanding.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Crafting a Strong Thesis & Organizing Complex Arguments', 9, 'lesson',
  $lesson$## The Thesis That Can Hold Weight

A strong thesis does more than state a topic — it makes a specific, defensible, and non-obvious claim that the rest of your essay exists to prove.

### What Makes a Thesis Strong

- **Specific** — not "propaganda is bad," but a precise claim about how or why a particular technique works or fails
- **Defensible but not obvious** — a thesis worth arguing should have a real, reasonable counterposition
- **Scoped appropriately** — narrow enough to prove thoroughly in the space you have, broad enough to be worth arguing

### Organizing a Complex, Multi-Part Argument

Once your thesis is set, organize your supporting points in a logical sequence — usually building from your most straightforward point toward your most complex or most powerful one. Each body section should clearly connect back to the thesis, not just relate to the general topic.

### Using Transitions to Show Logical Relationships

Sophisticated essays use transitions that show precise logical relationships between ideas — not just "also" and "another reason," but words like "consequently," "in contrast," "building on this," or "despite this" that show exactly how each new point relates to what came before.

### Why This Matters

A strong thesis and organized argument structure are the foundation of every piece of academic and professional persuasive writing you'll produce from here through college and beyond.

### Your Turn

Write a specific, defensible thesis about a propaganda technique's effectiveness or a related claim of your choice. Outline 3 supporting points in a logical order, with a transition phrase connecting each to the next.$lesson$,
  'W.9-10.1a', 'Introduce precise claims, establish the significance of the claims, and create an organization that logically sequences claims, counterclaims, reasons, and evidence.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Symbolism & Allegory in Your Own Narrative Writing', 10, 'lesson',
  $lesson$## Writing With a Second Layer of Meaning

Now that you've studied how Orwell builds allegory, try building a narrative with your own layer of symbolic meaning.

### Starting With an Idea, Not Just a Symbol

Effective symbolic writing usually starts with the real idea you want to explore (a truth about power, fear, ambition, community) and then finds a concrete story or image to embody it — rather than starting with a random object and forcing meaning onto it afterward.

### Techniques for Building Symbolism Naturally

- **Let the symbol recur** — a single mention rarely creates real symbolic weight; repetition (with subtle variation, as Orwell does) builds it
- **Ground the symbol in a real, concrete detail** — abstract symbols feel hollow; specific, sensory ones feel earned
- **Trust your reader** — resist over-explaining the symbolic meaning directly; let the story's events carry the weight

### A Balance to Strike

Symbolic writing succeeds when it works on both levels at once — a good allegory or symbolic story should be a genuinely engaging literal story even for a reader who never notices the symbolism underneath.

### Why This Matters

Symbolic and allegorical writing is one of literature's most enduring and powerful tools — from ancient fables to modern political fiction — and practicing it develops your control over narrative craft at an advanced level.

### Your Turn

Draft the opening of a short story (150-200 words) built around one symbolic element that represents a real idea you want to explore. Make sure the story works as a literal narrative even before considering the symbolism.$lesson$,
  'W.9-10.3', 'Write narratives to develop real or imagined experiences, using effective technique, well-chosen details, and well-structured event sequences, including symbolic or allegorical elements.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Small Project: Allegorical Short Story Opening', 11, 'practice',
  $lesson$## Small Project: Allegorical Short Story Opening

Time to build on your symbolic writing draft from the previous lesson and polish it into a complete opening.

### Requirements

1. **A clear literal story** with a setting, character(s), and the beginning of a conflict
2. **One symbolic element** that recurs at least twice, representing a real idea beyond its literal role
3. **Precise, concrete sensory detail** grounding the symbol so it doesn't feel abstract or forced
4. **No direct explanation** of the symbolism within the story itself — trust the reader to notice it

### Self-Check Before Submitting

Read your opening as if you knew nothing about the intended symbolism. Does it work as a genuinely engaging literal story on its own? If the literal story is weak or confusing without the "answer key," the symbolism needs stronger grounding.

### Peer Exchange (Optional but Recommended)

If possible, share your opening with a peer without explaining the symbolism, and ask what they think the symbolic element might represent. Their interpretation (even if different from your intent) tells you a lot about how clearly the symbol is working.

### Why This Matters

This is the exact drafting-and-testing process professional writers use when building symbolic or allegorical fiction — write for the literal story first, then test whether the deeper layer is actually landing.$lesson$,
  'W.9-10.3d', 'Use precise words and phrases, telling details, and sensory language to convey a vivid picture of experiences, events, and characters.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Unit 3 Quiz: Argumentative & Narrative Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Argumentative & Narrative Writing

This quiz checks your understanding of thesis-crafting/argument organization and symbolic/allegorical narrative writing. Write your short answer response in complete, specific sentences.$lesson$,
  'W.9-10.1, W.9-10.3', 'Unit 3 assessment covering argumentative thesis/organization and symbolic narrative writing.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Evaluating Multiple Sources for Credibility', 13, 'lesson',
  $lesson$## Building a Foundation You Can Trust

Before you can synthesize sources, you need to know which ones deserve a place in your research at all. This lesson builds a rigorous process for evaluating source credibility before using it as evidence.

### The CREDIBLE Checklist

- **C**redentials — does the author or publisher have relevant expertise?
- **R**ecency — is the information current enough to still be accurate for your purpose?
- **E**vidence — does the source cite its own evidence, or just assert claims?
- **D**esign/purpose — is the source trying to inform, or primarily to sell or persuade?
- **I**ndependent verification — can you confirm key facts through another reputable source?
- **B**ias check — does the source disclose its perspective, or hide it?
- **L**ogical consistency — does the source's reasoning hold together, or does it contradict itself?
- **E**diting/professionalism — is the source carefully edited and professionally presented?

### Applying the Checklist in Practice

Not every source needs a perfect score on every category — but a source that fails multiple categories at once (no credentials, no evidence, hidden bias) should be treated with real skepticism, or excluded from serious research entirely.

### Why This Matters

The habit of rigorously vetting sources before using them — rather than after being challenged on them — is what separates credible research and journalism from work that spreads misinformation.

### Your Turn

Choose 2 sources on the same topic. Evaluate each using the CREDIBLE checklist and decide which (if either) you'd cite in serious research, explaining why.$lesson$,
  'W.9-10.8', 'Gather relevant information from multiple authoritative print and digital sources, using advanced searches effectively; assess the usefulness of each source in answering the research question; avoid plagiarism.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'Creating Multimedia Presentations', 14, 'lesson',
  $lesson$## When Visuals Strengthen (or Weaken) Your Argument

Multimedia elements — images, charts, video, audio — can make a presentation dramatically more effective, or can distract and confuse if used carelessly. This lesson focuses on using them purposefully.

### When to Use Multimedia

Use a visual or media element when it does something words alone can't do as efficiently — showing a trend in data, illustrating a real-world example, or creating an emotional connection that supports (not replaces) your argument.

### Choosing the Right Type of Visual

- **Charts and graphs** — for quantitative data and trends
- **Images** — for concrete, real-world examples or emotional resonance
- **Short video or audio clips** — for direct evidence (a real speech, real interview) rather than a re-creation
- **Diagrams** — for explaining a process or relationship

### Avoiding Common Multimedia Mistakes

- Overloading a single slide or moment with too much visual information at once
- Using a visual that's only loosely related to your point, just for decoration
- Reading text directly off a slide instead of using slides to support what you're saying aloud

### Why This Matters

Whether in a school presentation, college application video, or professional pitch, the ability to select and integrate multimedia purposefully — rather than decoratively — makes your communication significantly more persuasive and memorable.

### Your Turn

For your capstone project, identify one specific piece of multimedia (a chart, image, or clip) you'll use and explain exactly what point it supports that words alone wouldn't convey as effectively.$lesson$,
  'SL.9-10.5', 'Make strategic use of digital media in presentations to enhance understanding of findings, reasoning, and evidence and to add interest.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10')),
  'MAJOR PROJECT 2 (CAPSTONE): Modern Propaganda Exposed', 15, 'practice',
  $lesson$## Capstone Project: Modern Propaganda Exposed

Your semester-ending capstone brings together allegory, propaganda analysis, source evaluation, and multimedia presentation into a single public-facing media literacy project.

### Your Task

Research a real, current example of propaganda or manipulative media (political, commercial, or social media-based). Build a multimedia presentation that exposes its techniques and teaches your audience to recognize them.

### Project Requirements

1. **A clearly identified real example** of modern propaganda or manipulative media, with your source(s) cited
2. **At least 2 specific propaganda techniques identified and explained**, connected to specific evidence from your example
3. **Source evaluation** — apply the CREDIBLE checklist to at least 2 of your research sources
4. **A connection to Animal Farm** — explain how a technique or dynamic from the novel echoes in your modern example
5. **Purposeful multimedia** — at least one visual or media element that meaningfully supports (not decorates) your presentation
6. **A "how to spot this yourself" takeaway** for your audience — practical, actionable advice

### Reflection

In 200-250 words, reflect on what studying a decades-old allegory taught you about recognizing manipulation in today's very different media landscape. What stayed the same, and what's genuinely new?

### Deliverable

Submit your complete presentation (example, techniques identified, source evaluation, Animal Farm connection, and audience takeaway) plus your written reflection.$lesson$,
  'RI.9-10.6, W.9-10.8, SL.9-10.5', 'Synthesize research, source evaluation, and multimedia presentation skills into a media literacy capstone connected to literary analysis.', 40
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Understanding Allegory & Symbolism' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'An allegory is best defined as a narrative in which:', '["Every character is entirely realistic with no symbolic meaning", "Characters, events, and settings symbolically represent real ideas or events", "There is no plot at all", "Only the setting matters"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Allegory & Symbolism' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'Reading an allegory well requires:', '["Ignoring the literal story entirely", "Holding both the literal story and its symbolic meaning in mind at once", "Only focusing on dialogue", "Skipping to the ending"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Understanding Allegory & Symbolism' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Identify one symbolic element in Animal Farm and explain what real-world idea it represents.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='How Structure Shapes Allegory' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'The gradual, incremental corruption in Animal Farm is an example of:', '["A random plot choice with no meaning", "A structural choice that itself makes an argument about how tyranny takes hold", "A mistake in the novel''s pacing", "An unrelated subplot"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Structure Shapes Allegory' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'Repetition with variation (like the altered farm commandments) primarily serves to:', '["Fill space in the novel", "Show how rules and truth are being subtly rewritten over time", "Confuse the reader with no purpose", "Prove nothing changes in the story"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Structure Shapes Allegory' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Identify one structural choice in Animal Farm and explain the effect it creates.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Satire — Small Project: Propaganda in Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'short_answer', 'Identify 3 moments of persuasive or manipulative language and name the technique used in each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Satire — Small Project: Propaganda in Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'short_answer', 'Explain why each technique works on the other animals.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Satire — Small Project: Propaganda in Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Write your analysis of what the novel argues about language and power.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'Animal Farm functions as an allegory primarily for:', '["A story with no deeper meaning", "The rise of totalitarian power following a revolution", "A children''s story about farm life only", "A historical textbook"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'The repeated, subtly altered commandments in the novel demonstrate:', '["Consistency and stability of the new government", "How truth and rules can be gradually rewritten to serve those in power", "A printing error", "The animals'' excellent memory"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'multiple_choice', 'Squealer''s role in the novel is best described as:', '["A neutral narrator", "A propagandist who justifies the pigs'' growing power through manipulative language", "A farmer", "An animal with no dialogue"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 4, 'multiple_choice', 'Which shows the strongest use of textual evidence for an allegory claim?', '["\"This book is about animals.\"", "\"Squealer''s repeated claim that the pigs need extra rations ''for the good of the farm'' echoes real historical justifications used to excuse a ruling class''s privileges.\"", "\"The pigs are the main characters.\"", "\"The farm has many animals.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Animal Farm' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Animal Farm' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 5, 'short_answer', 'Using specific evidence, explain how structure and symbolism work together to build the novel''s argument about power.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Techniques of Propaganda & Persuasion' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', '"Bandwagon" propaganda relies on the idea that:', '["An admired figure endorses a claim", "Everyone already believes or does something, so you should too", "Fear should be emphasized", "Evidence should be omitted"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Techniques of Propaganda & Persuasion' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'The key difference between honest persuasion and propaganda is that propaganda:', '["Always uses more words", "Relies on emotional manipulation or distorted information rather than transparent, fair reasoning", "Is always shorter", "Never uses evidence at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Techniques of Propaganda & Persuasion' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Find a real example of a propaganda technique and name and explain it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Historical Context of Political Texts' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'Historical context includes all of the following EXCEPT:', '["What events immediately preceded the text", "Who the intended audience was", "The font used in the original printing", "What the author stood to gain from the claims made"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Analyzing Historical Context of Political Texts' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'Animal Farm was written as an allegorical response to:', '["World War I only", "The Russian Revolution and the rise of Stalinism", "The invention of the printing press", "A local farming dispute"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Historical Context of Political Texts' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Choose a historical political text and explain how its historical context shapes its meaning.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Media Bias & Source Reliability' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'A source with a clear point of view is:', '["Automatically unreliable", "Not necessarily unreliable, as long as it is transparent and accurate", "Always propaganda", "Never worth reading"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Media Bias & Source Reliability' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', '"Card stacking" refers to:', '["Presenting all evidence fairly on both sides", "Presenting only evidence that supports one side while omitting contradicting evidence", "A game played with playing cards", "Citing too many sources"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Media Bias & Source Reliability' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Compare two sources on the same story and evaluate which (if either) shows signs of bias.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Propaganda Techniques Field Guide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'short_answer', 'List your 5 propaganda techniques and one real example for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Propaganda Techniques Field Guide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'short_answer', 'Explain the intended effect of two of your examples.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Propaganda Techniques Field Guide' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Propaganda Analysis' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Identify your Animal Farm connection to one of your techniques.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Crafting a Strong Thesis & Organizing Complex Arguments' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'A strong thesis should be:', '["Vague and broad so it applies to anything", "Specific, defensible, and appropriately scoped", "Identical to the essay''s topic sentence in every paragraph", "As long as possible"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Crafting a Strong Thesis & Organizing Complex Arguments' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'Sophisticated transitions do which of the following?', '["Show precise logical relationships between ideas", "Are only used at the very end of an essay", "Replace the need for evidence", "Should be avoided entirely"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Crafting a Strong Thesis & Organizing Complex Arguments' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Write a specific, defensible thesis and outline 3 supporting points with a transition between two of them.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Symbolism & Allegory in Your Own Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'Effective symbolic writing usually begins with:', '["A random object with no connection to meaning", "A real idea the writer wants to explore, then a concrete image or story to embody it", "The ending of the story", "A list of vocabulary words"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Symbolism & Allegory in Your Own Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'A good allegory or symbolic story should:', '["Only make sense if the reader knows the symbolism", "Work as a genuinely engaging literal story even without noticing the symbolism", "Explain its own symbolism directly to the reader", "Avoid having any real plot"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Symbolism & Allegory in Your Own Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Draft the opening of a short story built around one symbolic element and explain the real idea it represents.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Allegorical Short Story Opening' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'short_answer', 'Submit your complete allegorical short story opening.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Allegorical Short Story Opening' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'short_answer', 'Explain how your symbolic element recurs and what it represents, without stating this directly in the story itself.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'A well-scoped thesis is one that is:', '["So broad it could apply to any topic", "Narrow enough to prove thoroughly, broad enough to be worth arguing", "Identical to a simple factual statement", "Written only as a question"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'Grounding a symbol in concrete, sensory detail helps because:', '["Abstract symbols feel hollow without specific grounding", "Symbols should never be described in detail", "It makes the story confusing on purpose", "It removes the need for a plot"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'multiple_choice', 'Which best demonstrates logical organization in an argument?', '["Listing points in random order", "Sequencing points so each builds on or connects clearly to the one before it", "Repeating the same point multiple times", "Avoiding any transitions between ideas"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 4, 'multiple_choice', 'Which sentence uses a precise, logical transition?', '["Also, another thing happened.", "Building on this point, the evidence further suggests a deeper pattern.", "And then. And then.", "This is a sentence."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 5, 'short_answer', 'Explain how symbolism can strengthen a narrative without requiring direct explanation, using an example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Multiple Sources for Credibility' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'A source that fails multiple categories of the CREDIBLE checklist at once should be:', '["Cited without concern", "Treated with real skepticism or excluded from serious research", "Used as your only source", "Assumed to be accurate regardless"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Multiple Sources for Credibility' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', '"Independent verification" in the CREDIBLE checklist means:', '["Trusting the source completely without question", "Confirming key facts through another reputable source", "Ignoring all other sources", "Checking only the publication date"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Multiple Sources for Credibility' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Evaluate two sources using the CREDIBLE checklist and decide which you would cite.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Creating Multimedia Presentations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'multiple_choice', 'Multimedia should be used in a presentation when:', '["It looks decorative, regardless of relevance", "It does something words alone can''t do as efficiently, like showing a data trend", "Every slide requires at least 3 images", "It replaces the need for a clear argument"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Creating Multimedia Presentations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'multiple_choice', 'A common multimedia mistake is:', '["Using a chart for quantitative data", "Reading text directly off a slide instead of supporting your spoken points", "Choosing a relevant image", "Citing your source for a visual"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Creating Multimedia Presentations' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Identify one multimedia element for your capstone and explain what point it supports.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Modern Propaganda Exposed' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 1, 'short_answer', 'Identify your real example of modern propaganda or manipulative media and cite your source.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Modern Propaganda Exposed' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 2, 'short_answer', 'Identify 2 propaganda techniques in your example with specific evidence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Modern Propaganda Exposed' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 3, 'short_answer', 'Explain your Animal Farm connection and your audience takeaway for spotting this technique themselves.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Modern Propaganda Exposed' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Media Literacy Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-10'))), 4, 'short_answer', 'Write your reflection on what a decades-old allegory taught you about today''s media landscape.', NULL, NULL);
