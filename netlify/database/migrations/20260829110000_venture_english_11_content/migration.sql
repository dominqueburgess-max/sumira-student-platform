-- English 11 (Grade 11): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: The Great Gatsby by F. Scott Fitzgerald. American Literature focus: the American
-- Dream, illusion vs. reality, and college readiness. 4 units, 15 lessons, established template.

UPDATE courses SET status = 'published' WHERE slug = 'venture-english-11';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-english-11'), 'Unit 1: Reading Literature — The Great Gatsby', 0),
((SELECT id FROM courses WHERE slug='venture-english-11'), 'Unit 2: Reading Informational Text & American Rhetoric', 1),
((SELECT id FROM courses WHERE slug='venture-english-11'), 'Unit 3: Argumentative & Narrative Writing', 2),
((SELECT id FROM courses WHERE slug='venture-english-11'), 'Unit 4: Research & College Readiness Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Analyzing the American Dream Through Symbol & Setting', 1, 'lesson',
  $lesson$## Welcome to English 11: American Literature & the Idea of Reinvention

This semester's anchor text is **The Great Gatsby** by F. Scott Fitzgerald — narrated by Nick Carraway, who observes his mysterious neighbor Jay Gatsby's obsessive pursuit of wealth, status, and a lost love. Few American novels have shaped how we talk about the "American Dream" as much as this one.

### Symbol and Setting as Thematic Tools

At the college-preparatory level, you're expected to analyze how an author uses recurring symbols and carefully chosen settings to develop theme with real precision — not just spot a symbol, but trace how its meaning shifts and deepens.

### Reading Setting as Meaning

Fitzgerald divides his settings deliberately: the old-money East Egg, the new-money West Egg, and the desolate "valley of ashes" between them and the city. Each setting represents a different relationship to wealth and status. Notice how characters' movement between these settings often marks a shift in the story's moral or emotional stakes.

### Tracing a Symbol's Development

A strong symbol in a novel like this one doesn't mean the same thing every time it appears — its meaning accumulates and sometimes shifts as the novel goes on. Track a specific recurring image and note how its context changes each time it reappears.

### Why This Matters

The American Dream — the idea that anyone can achieve success and reinvention through effort — is a genuinely contested concept in American life and politics. Understanding how a canonical novel complicates and questions that dream prepares you to engage seriously with real debates about opportunity, class, and mobility.

### Your Turn

Identify one recurring symbol in The Great Gatsby. Trace at least two moments where it appears and explain how its meaning develops or shifts between them.$lesson$,
  'RL.11-12.2', 'Determine two or more themes or central ideas of a text and analyze their development, including how they interact and build on one another.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Unreliable Narration & Narrative Perspective', 2, 'lesson',
  $lesson$## Can You Trust the Person Telling the Story?

Nick Carraway narrates The Great Gatsby while explicitly claiming to be "one of the few honest people" he has known — a claim readers are meant to examine critically, not accept at face value.

### What Makes a Narrator "Unreliable"

An **unreliable narrator** is one whose account readers have reason to question — due to bias, limited knowledge, self-interest, or outright deception. Unreliability exists on a spectrum: a narrator can be unreliable about small things while being trustworthy about others.

### Evidence of Nick's Unreliability

Notice moments where Nick's own actions contradict his self-description, or where his admiration for Gatsby seems to color his account in ways other evidence in the novel complicates. An attentive reader has to read both what Nick says AND around what Nick says.

### Why Authors Use Unreliable Narrators

An unreliable narrator forces readers into active interpretive work — you can't simply absorb the story, you have to evaluate it. This technique often mirrors a novel's larger themes: in Gatsby's case, a narrator whose perceptions may be shaped by class fascination mirrors the novel's broader interest in how appearances and self-presentation can mislead.

### Why This Matters

Recognizing unreliable narration in fiction builds the same skeptical, evaluative reading habit you need for any real-world account told from a single, interested perspective — a memoir, a company's official statement, or even a friend's account of a conflict.

### Your Turn

Identify one moment where Nick's account seems shaped by bias or self-interest. Explain what other evidence in the novel complicates or contradicts his framing.$lesson$,
  'RL.11-12.6', 'Analyze a case in which grasping a point of view requires distinguishing what is directly stated in a text from what is really meant, including irony or understatement.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Illusion vs. Reality — Small Project: Gatsby''s World Chart', 3, 'practice',
  $lesson$## Small Project: Gatsby's World Chart

The Great Gatsby is built around a persistent tension between illusion (how things appear, how people present themselves) and reality (what's actually true underneath). This project asks you to map that tension systematically.

### Step 1: Build Your Chart

Create a chart with 3 columns: Character/Element, The Illusion (how it appears or is presented), and The Reality (what the novel eventually reveals to be true underneath). Include at least 4 rows covering different characters or elements (for example: Gatsby's parties, Gatsby's wealth, Daisy and Tom's marriage, the green light).

### Step 2: Cite Your Evidence

For each row, cite specific textual evidence supporting both the illusion column and the reality column.

### Step 3: Analyze the Pattern

In 4-6 sentences, analyze what pattern emerges across your chart. Does the novel suggest illusion always eventually gives way to reality? Are certain characters better than others at maintaining their illusions, and if so, why?

### Step 4: Connect to the American Dream

In 3-4 sentences, connect your findings to the novel's larger commentary on the American Dream. Does the gap between illusion and reality in individual characters mirror a larger gap in the idea of the American Dream itself?

### Why This Skill Matters

Systematically tracking a pattern across an entire text — rather than analyzing isolated moments — is exactly the kind of sustained literary analysis expected in AP-level and college coursework.$lesson$,
  'RL.11-12.1, RL.11-12.3', 'Cite strong and thorough textual evidence to support analysis; analyze the impact of the author''s choices regarding how to develop and relate elements of a story.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Unit 1 Quiz: Reading Literature — The Great Gatsby', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — The Great Gatsby

This quiz checks your understanding of symbol/theme development, unreliable narration, and the illusion-versus-reality pattern in The Great Gatsby. Support your short answer response with specific textual evidence.$lesson$,
  'RL.11-12.1-3, RL.11-12.6', 'Unit 1 assessment covering theme development, unreliable narration, and textual evidence.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Analyzing Foundational American Rhetoric', 5, 'lesson',
  $lesson$## The Documents That Defined an Idea

The American Dream didn't emerge from nowhere — it has roots in specific foundational American documents and rhetoric about opportunity, equality, and self-determination that are worth reading closely in their own right.

### What to Analyze in Foundational Rhetoric

- **The specific claims made about opportunity or equality** — what exactly is promised, and to whom?
- **The rhetorical strategies used** to make those claims persuasive and enduring (appeals to natural rights, shared values, aspiration)
- **The historical gap between the rhetoric and reality** at the time it was written — who was included, and who was excluded from the vision?
- **How later writers and movements have invoked or reinterpreted this rhetoric**, including in extending its promises to groups originally excluded

### Connecting to Gatsby

The Great Gatsby can be read as a direct, skeptical response to this foundational rhetoric — questioning whether the promise of self-made reinvention actually holds up against rigid class barriers, especially for a character like Gatsby, whose "new money" is never fully accepted by the old-money establishment.

### Why This Matters

Understanding the specific rhetorical roots of the American Dream — and its historical gaps — equips you to engage thoughtfully in ongoing debates about economic opportunity, class mobility, and what the phrase actually means today.

### Your Turn

Choose a foundational American document or piece of rhetoric about opportunity or equality. Identify its central claim and one specific way its promise was historically limited or unevenly applied.$lesson$,
  'RI.11-12.9', 'Analyze seventeenth-, eighteenth-, and nineteenth-century foundational U.S. documents of historical and literary significance for their themes, purposes, and rhetorical features.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Evaluating Complex Arguments & Premises', 6, 'lesson',
  $lesson$## Advanced Argument Evaluation

At the college-preparatory level, evaluating an argument means engaging with genuinely complex, multi-layered reasoning — not just spotting an obvious logical flaw, but assessing whether a sophisticated argument's overall structure holds together.

### Layers to Evaluate in a Complex Argument

1. **The stated thesis** — is it precise and does the argument actually prove it, or does it drift?
2. **The supporting sub-arguments** — does each one hold up individually, and do they combine logically to support the thesis?
3. **The premises underlying each sub-argument** — are they explicit or hidden, and would a fair-minded reader accept them?
4. **The treatment of counterevidence** — does the argument seriously engage with the strongest opposing evidence, or does it selectively ignore it?

### A Higher Bar for "Sufficient" Evidence

At this level, "sufficient evidence" isn't just about quantity — it's about whether the evidence actually addresses the most demanding version of the claim, including edge cases and exceptions a careful reader would raise.

### Why This Matters

The ability to evaluate genuinely sophisticated, multi-layered arguments — not just simple ones — is exactly what college coursework, legal reasoning, and serious policy analysis demand.

### Your Turn

Choose a complex, multi-part argument (an op-ed or policy essay). Evaluate one of its sub-arguments specifically: does its premise hold up, and does it adequately address the strongest counterevidence?$lesson$,
  'RI.11-12.8', 'Delineate and evaluate the reasoning in seminal texts, assessing the premises, purposes, and arguments, including whether the evidence is relevant and sufficient.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Analyzing Word Choice & Rhetorical Effect at the Advanced Level', 7, 'lesson',
  $lesson$## The Precision of a Single Word

At this level, rhetorical analysis means noticing how a single, precisely chosen word can carry significant argumentative or emotional weight — and being able to articulate exactly how.

### Beyond "Connotation": Precision Analysis

It's not enough to say a word has a "positive" or "negative" connotation. Advanced analysis asks: what specific, precise shade of meaning does this exact word choice create, and what would be lost with a close synonym instead?

### A Worked Example

Compare: "The senator claimed the policy would help workers" versus "The senator insisted the policy would help workers." "Claimed" subtly signals doubt on the author's part; "insisted" suggests persistence in the face of resistance. Neither word is neutral — each shapes how a reader perceives the senator's credibility.

### Analyzing Word Choice Across a Passage

Rather than examining a single word in isolation, advanced analysis often traces a pattern of word choice across a passage — noticing, for instance, that an author consistently uses words associated with instability ("crumbling," "unstable," "shaky") when describing an opposing position, creating a cumulative rhetorical effect.

### Why This Matters

This level of precision in reading word choice is exactly what's required for AP Language and Composition analysis, and it's a skill that sharpens your own writing by making you more deliberate about your own word choices.

### Your Turn

Find a passage with a deliberate pattern of word choice (words with a shared connotation used repeatedly). Identify the pattern and explain the cumulative rhetorical effect it creates.$lesson$,
  'RI.11-12.4', 'Determine the meaning of words and phrases as they are used in a text, including figurative, connotative, and technical meanings; analyze how an author uses and refines the meaning of a key term.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'MAJOR PROJECT 1: American Dream Then & Now', 8, 'practice',
  $lesson$## Major Project 1: American Dream Then & Now

You've studied foundational rhetoric, complex argument evaluation, and precision word-choice analysis. Now combine them into a comparative rhetorical analysis.

### Your Task

Write a comparative essay (600-800 words) analyzing how the idea of the American Dream is presented in a foundational historical text/rhetoric AND in a contemporary text (an article, speech, or song) of your choice.

### Requirements

1. **A clear, precise thesis** comparing how each text presents (or complicates) the American Dream
2. **Analysis of at least one specific rhetorical choice from each text**, with attention to precise word choice, not just general "tone"
3. **Evaluation of at least one argument or premise from either text** — does it hold up under scrutiny?
4. **A connection to The Great Gatsby** — how does the novel's treatment of this idea relate to your two chosen texts?
5. **Formal academic style** throughout, appropriate to college-preparatory literary and rhetorical analysis

### Why This Matters

Comparative rhetorical analysis across historical periods is a hallmark of advanced literary study and a strong preparation for AP-level coursework and college seminar discussions.

### Deliverable

Submit your complete comparative essay with your thesis clearly stated at the top.$lesson$,
  'RI.11-12.4, RI.11-12.8, RI.11-12.9', 'Analyze rhetoric and word choice across historical and contemporary texts, evaluate arguments, and connect informational analysis to literary themes in formal writing.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Building a Sustained Literary Argument', 9, 'lesson',
  $lesson$## The Essay That Argues, Not Just Describes

A literary argument essay at this level does more than describe what happens in a text — it makes and sustains a specific, debatable interpretive claim about the text, supported by close analysis.

### From Observation to Argument

An observation ("Gatsby is wealthy") is not an argument. An argument makes an interpretive claim that requires defending ("Gatsby's wealth functions as a performance meant to erase his past, which the novel ultimately shows to be impossible"). The second version requires evidence and reasoning; the first doesn't.

### Sustaining an Argument Across an Entire Essay

A sustained argument means every paragraph does real work toward proving your specific claim — not just discussing the text in general, but building your case incrementally, the way a lawyer builds a case across multiple pieces of evidence.

### Integrating Evidence Smoothly

At this level, textual evidence should be integrated smoothly into your own sentences (rather than dropped in as a standalone quote) and immediately followed by analysis explaining exactly how it supports your specific claim — not left to speak for itself.

### Why This Matters

Sustained, evidence-driven literary argumentation is the exact skill assessed on AP Literature exams and expected in college English courses — this is advanced academic writing practice with real stakes for your future coursework.

### Your Turn

Write an interpretive claim (not just an observation) about a character or theme in The Great Gatsby. Write one full paragraph defending it, with evidence integrated smoothly into your own sentences.$lesson$,
  'W.11-12.1', 'Write arguments to support claims in an analysis of substantive topics, using valid reasoning and relevant, sufficient evidence, with a sustained and logically organized structure.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Advanced Narrative Voice & Style', 10, 'lesson',
  $lesson$## Finding a Voice That's Genuinely Yours

At this level, narrative writing focuses heavily on developing a distinctive **voice** — the particular combination of word choice, sentence rhythm, tone, and perspective that makes a piece of writing sound like no one else could have written it.

### What Creates Voice

- **Sentence rhythm and length variation** — short, punchy sentences versus long, flowing ones create very different effects
- **Diction (word choice)** — formal versus casual, concrete versus abstract, plain versus ornate
- **Characteristic images or comparisons** — the specific kinds of metaphors or details a voice tends to reach for
- **Attitude toward the subject** — ironic distance, earnest sincerity, wry humor

### Studying Voice in Fitzgerald

Fitzgerald's prose style in Gatsby — lush, precise, often melancholic, full of carefully chosen sensory detail — is itself a strong example of distinctive voice. Notice how his sentence rhythms shift between long, flowing descriptive passages and short, sharp dialogue.

### Developing Your Own Voice (Not Imitating)

Studying a strong stylist doesn't mean copying their voice — it means noticing the specific techniques they use, then experimenting with how those techniques might serve your own genuine sensibility and subject matter.

### Why This Matters

A distinctive, controlled voice is what separates competent writing from genuinely memorable writing — the kind that college admissions essay readers, in particular, are actively looking for.

### Your Turn

Write a short passage (100-150 words) in a deliberately chosen voice (formal and ornate, or spare and direct, or wry and ironic). Then write 2-3 sentences identifying the specific techniques you used to create that voice.$lesson$,
  'W.11-12.3', 'Write narratives to develop real or imagined experiences, using effective technique, well-chosen details, and well-structured event sequences, with a deliberate and controlled narrative voice.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Small Project: Voice Imitation & Innovation', 11, 'practice',
  $lesson$## Small Project: Voice Imitation & Innovation

Time to study a strong stylistic voice closely, then use what you learn to strengthen your own.

### Step 1: Choose and Analyze a Model

Choose a short passage (any published author) with a distinctive voice. Identify 3 specific techniques the passage uses to create its voice (sentence rhythm, diction, characteristic imagery, or attitude).

### Step 2: Write an Imitation

Write a short original passage (100-150 words, on any topic of your choice) that deliberately imitates the 3 techniques you identified — not copying the content, but applying the same stylistic moves to your own subject.

### Step 3: Write an Innovation

Now revise your passage, keeping the same subject but writing in your own natural voice instead. Compare the two versions.

### Step 4: Reflect

In 4-5 sentences, reflect on what the imitation exercise taught you about your own natural stylistic tendencies. Which techniques from your model do you want to genuinely adopt, and which don't fit your voice?

### Why This Matters

Studying and briefly imitating strong stylists is one of the oldest and most effective methods writers use to develop their own voice — you can't develop a controlled voice without first noticing, concretely, what "voice" is even made of.$lesson$,
  'W.11-12.3d', 'Use precise words and phrases, telling details, and sensory language to convey a vivid picture of experiences, events, and characters, with attention to a controlled voice.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Unit 3 Quiz: Argumentative & Narrative Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Argumentative & Narrative Writing

This quiz checks your understanding of sustained literary argument and narrative voice/style. Write your short answer response in complete, specific sentences.$lesson$,
  'W.11-12.1, W.11-12.3', 'Unit 3 assessment covering sustained literary argumentation and narrative voice.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Independent Research: Formulating a Thesis-Driven Inquiry', 13, 'lesson',
  $lesson$## Research That Starts With a Real Question — and Ends With a Real Claim

At this level, independent research means moving from an open question to a thesis-driven inquiry: a specific, arguable claim that your research will support with genuine rigor.

### From Topic to Question to Thesis

- **Topic**: broad area of interest (economic mobility in America, for example)
- **Question**: a specific, researchable question (has economic mobility in the U.S. increased or decreased since the 1980s, and why?)
- **Thesis**: your specific, evidence-supported claim after researching (economic mobility has declined due to specific, identifiable factors X, Y, and Z)

### Designing Your Own Inquiry Process

1. Start broad, then narrow based on what's actually researchable and what genuinely interests you
2. Set checkpoints to revisit your question as you learn — don't lock in your thesis before you've done real research
3. Deliberately seek out sources that might challenge your emerging thesis, not just ones that confirm it

### Avoiding Confirmation Bias in Research

One of the most common research mistakes at any level is forming a thesis too early and then only seeking evidence that confirms it. Rigorous, independent research requires genuinely testing your thesis against strong counterevidence before finalizing it.

### Why This Matters

This exact process — question, inquiry, evidence-tested thesis — is what college research papers, senior theses, and professional research all require. Building the habit now gives you a real head start.

### Your Turn

Narrow a broad topic into a specific researchable question, then identify what kind of evidence would need to exist to support versus challenge a possible thesis.$lesson$,
  'W.11-12.7', 'Conduct short as well as more sustained research projects to answer a question or solve a problem; synthesize multiple sources, demonstrating understanding of the subject.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'Adapting Speech for Purpose, Audience, and Task', 14, 'lesson',
  $lesson$## The Same Idea, Told Three Different Ways

A genuinely advanced communicator can take the same core idea and adapt its delivery for radically different purposes, audiences, and tasks — a skill directly relevant to college interviews, scholarship applications, and professional life.

### What Changes Across Contexts

- **Purpose** — are you informing, persuading, entertaining, or some combination?
- **Audience** — what does this specific audience already know, value, or need to be convinced of?
- **Task** — a 2-minute elevator pitch, a formal presentation, and a casual conversation all demand different structures and levels of formality

### A Practical Exercise

Take one idea you care about (perhaps drawn from your research this unit) and prepare three versions: a formal 3-minute presentation for a classroom, a 30-second "elevator pitch" for someone you just met, and a written paragraph for a scholarship application. Notice how much changes beyond just length.

### What Stays Constant

Even as delivery adapts, your core substance and honesty should remain constant — adapting to your audience means adjusting emphasis and framing, not fundamentally misrepresenting your actual position or findings.

### Why This Matters

College interviews, scholarship essays, job interviews, and countless real-world situations require exactly this skill: taking the same authentic substance and adapting its presentation skillfully for the specific moment.

### Your Turn

Take one idea from your research. Draft a 30-second "elevator pitch" version and a formal presentation opening version, and identify 2 specific things that changed between them.$lesson$,
  'SL.11-12.4', 'Present information, findings, and supporting evidence, conveying a clear and distinct perspective, with organization, development, substance, and style appropriate to purpose, audience, and task.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11')),
  'MAJOR PROJECT 2 (CAPSTONE): The American Dream Today', 15, 'practice',
  $lesson$## Capstone Project: The American Dream Today

Your semester-ending capstone combines independent research, sustained literary argument, and college-readiness writing into a project with genuine real-world application.

### Your Task

Conduct independent, thesis-driven research on a modern issue related to opportunity, mobility, or the American Dream (education access, wealth inequality, entrepreneurship, immigration and opportunity, or another angle of your choice). Then write a college application-style personal essay connecting your research and your own perspective or experience.

### Project Requirements

1. **A thesis-driven research summary** (400-500 words) presenting your specific claim about your chosen modern issue, supported by synthesized evidence from at least 3 sources, including at least one piece of genuine counterevidence you seriously engaged with
2. **A connection to The Great Gatsby** — explain specifically how the novel's treatment of the American Dream illuminates or complicates your modern research topic
3. **A college application-style personal essay** (400-600 words) in your own developed voice, connecting your research topic to your own experience, values, or aspirations — this should read as a genuine, distinctive piece of writing, not a research paper
4. **A brief adaptation exercise** — write one paragraph explaining how you'd present your core idea differently to a college admissions reader versus a classroom audience

### Reflection

In 200-250 words, reflect on your growth as a literary and rhetorical analyst this semester — what skill from this unit do you feel most confident using going forward, and which do you still want to develop further?

### Deliverable

Submit your research summary, Gatsby connection, personal essay, adaptation paragraph, and reflection.$lesson$,
  'W.11-12.1, W.11-12.7, SL.11-12.4', 'Synthesize independent research, sustained argumentation, and voice-driven personal writing into a capstone connected to literary analysis and real-world application.', 40
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing the American Dream Through Symbol & Setting' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'Fitzgerald''s division of settings (East Egg, West Egg, the valley of ashes) primarily serves to:', '["Provide only geographic information with no thematic weight", "Represent different relationships to wealth and status", "Confuse the reader intentionally", "Establish the novel''s time period only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing the American Dream Through Symbol & Setting' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'A strong recurring symbol in a novel typically:', '["Means the exact same thing every time it appears", "Accumulates or shifts meaning as the novel develops", "Has no connection to theme", "Appears only once"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing the American Dream Through Symbol & Setting' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Trace one recurring symbol across two moments in the novel and explain how its meaning develops.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unreliable Narration & Narrative Perspective' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'An unreliable narrator is one whose account:', '["Should never be questioned by the reader", "Readers have reason to question due to bias, limited knowledge, or self-interest", "Is always intentionally lying", "Has no effect on how the story is understood"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unreliable Narration & Narrative Perspective' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'Nick Carraway''s claim to be "one of the few honest people" he has known is significant because:', '["It should be accepted without question", "It invites readers to critically examine whether his own account supports that self-description", "It has no bearing on the novel", "It proves Nick is the villain"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unreliable Narration & Narrative Perspective' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Identify a moment where Nick''s account seems shaped by bias and explain what complicates it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Illusion vs. Reality — Small Project: Gatsby''s World Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'short_answer', 'Submit your 4-row illusion vs. reality chart with textual evidence for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Illusion vs. Reality — Small Project: Gatsby''s World Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'short_answer', 'Analyze the pattern that emerges across your chart.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Illusion vs. Reality — Small Project: Gatsby''s World Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Connect your findings to the novel''s commentary on the American Dream.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Great Gatsby' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'The green light across the water is best understood as a symbol whose meaning:', '["Is fixed and identical every time it appears", "Deepens and accumulates significance as the novel develops", "Has no connection to Gatsby''s character", "Is explained directly and only once"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Great Gatsby' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'Nick Carraway as narrator requires readers to:', '["Accept every claim he makes at face value", "Evaluate his account critically, noting where his framing may be shaped by bias", "Ignore the story entirely", "Assume he is a purely neutral observer"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Great Gatsby' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'multiple_choice', 'The tension between illusion and reality in the novel is most clearly shown through:', '["The weather descriptions alone", "The gap between how characters and their lives appear and what is eventually revealed to be true", "The chapter titles", "The setting alone with no character connection"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Great Gatsby' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 4, 'multiple_choice', 'Which is the strongest use of textual evidence for a claim about the American Dream?', '["\"Gatsby is rich.\"", "\"Gatsby''s lavish, unexplained parties function as a performance meant to attract Daisy, revealing that his wealth is a means to reclaim an idealized past rather than an end in itself.\"", "\"The novel is set in the 1920s.\"", "\"Nick moves to New York.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Great Gatsby' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Great Gatsby' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 5, 'short_answer', 'Using specific evidence, explain how narrative perspective shapes the reader''s understanding of Gatsby''s pursuit of the American Dream.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Foundational American Rhetoric' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'Analyzing foundational American rhetoric about opportunity should include examining:', '["Only the length of the document", "The historical gap between the rhetoric''s promises and who was actually included", "The font used in the original printing", "Nothing beyond the literal text"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Foundational American Rhetoric' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'The Great Gatsby can be read as:', '["An uncritical celebration of the American Dream", "A skeptical response questioning whether the promise of reinvention holds up against rigid class barriers", "A historical textbook with no fictional elements", "Unrelated to any discussion of opportunity or class"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Foundational American Rhetoric' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Choose a foundational document and identify its central claim and one historical limit on its promise.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Complex Arguments & Premises' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'Evaluating a complex argument at an advanced level requires examining:', '["Only the conclusion", "The thesis, sub-arguments, underlying premises, and treatment of counterevidence", "The author''s name only", "The publication''s font size"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Complex Arguments & Premises' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', '"Sufficient evidence" at an advanced level means evidence that:', '["Is simply plentiful in quantity", "Addresses the most demanding version of the claim, including edge cases", "Comes from only one source", "Is always statistical"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Complex Arguments & Premises' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Evaluate a sub-argument from a complex text: does its premise hold up, and does it address strong counterevidence?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Word Choice & Rhetorical Effect at the Advanced Level' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'Advanced word-choice analysis goes beyond noting "positive" or "negative" connotation by:', '["Ignoring word choice entirely", "Identifying the precise shade of meaning a specific word creates and what would change with a synonym", "Only counting the number of words", "Focusing solely on sentence length"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Word Choice & Rhetorical Effect at the Advanced Level' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'A pattern of related word choices across a passage (e.g., words suggesting instability) creates:', '["No effect on the reader", "A cumulative rhetorical effect that shapes overall perception", "Confusion with no purpose", "Only a stylistic flourish with no argumentative function"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Analyzing Word Choice & Rhetorical Effect at the Advanced Level' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Find a passage with a pattern of related word choices and explain the cumulative rhetorical effect.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: American Dream Then & Now' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'short_answer', 'State your thesis comparing how your two chosen texts present the American Dream.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: American Dream Then & Now' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'short_answer', 'Identify one specific rhetorical choice, including precise word choice, from each text.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: American Dream Then & Now' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & American Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Explain your connection to The Great Gatsby.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Building a Sustained Literary Argument' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'An interpretive literary argument differs from a simple observation because it:', '["States an obvious fact with no need for defense", "Makes a specific, debatable claim that requires evidence and reasoning to support", "Avoids using any evidence", "Only summarizes the plot"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Building a Sustained Literary Argument' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'Integrating evidence smoothly means:', '["Dropping a quote in with no context or analysis", "Weaving the quote into your own sentence and following it with analysis connecting it to your claim", "Never using direct quotes", "Using only paraphrase and no quotes at all"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Building a Sustained Literary Argument' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Write an interpretive claim and one full paragraph defending it with smoothly integrated evidence.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Advanced Narrative Voice & Style' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'A distinctive narrative "voice" is created by all of the following EXCEPT:', '["Sentence rhythm and length variation", "Diction and characteristic imagery", "The publisher''s name", "Attitude toward the subject"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Advanced Narrative Voice & Style' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'Studying a strong stylist''s techniques should lead a writer to:', '["Copy their voice exactly forever", "Experiment with how those techniques might serve their own genuine sensibility", "Avoid ever developing a personal voice", "Ignore style entirely"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Advanced Narrative Voice & Style' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Write a short passage in a deliberately chosen voice and identify the techniques you used.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Voice Imitation & Innovation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'short_answer', 'Identify your model passage and the 3 techniques you analyzed.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Voice Imitation & Innovation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'short_answer', 'Submit your imitation passage and your innovation (own-voice) revision.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Voice Imitation & Innovation' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Reflect on what the exercise taught you about your own stylistic tendencies.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'A "sustained" literary argument means:', '["Making one claim and never returning to it", "Every paragraph does real work building the case for a specific claim", "Summarizing the plot chapter by chapter", "Avoiding any interpretive claims"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'Voice in narrative writing is best described as:', '["Only the topic of the story", "The distinctive combination of diction, rhythm, imagery, and attitude that makes writing sound like no one else''s", "The number of characters in a story", "A grammatical rule"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'multiple_choice', 'Which best demonstrates smooth evidence integration?', '["Gatsby was rich. \"He had a lot of money.\" This shows wealth.", "Gatsby''s insistence on being seen as \"an Oxford man,\" despite his brief and incomplete time there, reveals how deeply his identity depends on performed status.", "The book has a quote in it somewhere.", "Quote: money. Money is important in the book."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 4, 'multiple_choice', 'Varying sentence rhythm (short vs. long sentences) primarily affects:', '["Nothing at all", "The pacing and emotional effect of a passage", "Only the word count", "The grammatical correctness of a sentence"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 5, 'short_answer', 'Explain the difference between an observation and a sustained interpretive argument, using an example from the novel.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Independent Research: Formulating a Thesis-Driven Inquiry' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'The correct order for developing a research inquiry is:', '["Thesis, then topic, then question", "Topic, then question, then thesis (developed after genuine research)", "Question only, with no topic or thesis needed", "Thesis first, then find evidence to match it regardless of accuracy"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Independent Research: Formulating a Thesis-Driven Inquiry' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'Confirmation bias in research occurs when a researcher:', '["Seeks out counterevidence deliberately", "Forms a thesis too early and only seeks evidence that confirms it", "Revises their thesis based on new evidence", "Cites multiple credible sources"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Independent Research: Formulating a Thesis-Driven Inquiry' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Narrow a broad topic into a specific question and describe evidence that would support versus challenge a possible thesis.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Adapting Speech for Purpose, Audience, and Task' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'multiple_choice', 'Adapting a message for a different audience should change:', '["The core substance and honesty of your position", "The emphasis, framing, and level of formality, while keeping substance and honesty constant", "Nothing at all, regardless of audience", "Only the volume of your voice"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adapting Speech for Purpose, Audience, and Task' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'multiple_choice', 'An "elevator pitch" is best characterized by:', '["Extreme length and detail", "Extreme brevity and a focus on the most essential point", "Being identical to a formal presentation", "Having no clear purpose"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adapting Speech for Purpose, Audience, and Task' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Draft a 30-second elevator pitch and a formal presentation opening for the same idea, noting what changed.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): The American Dream Today' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 1, 'short_answer', 'Submit your thesis-driven research summary with your specific claim and synthesized evidence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): The American Dream Today' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 2, 'short_answer', 'Explain your connection between The Great Gatsby and your modern research topic.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): The American Dream Today' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 3, 'short_answer', 'Submit your college application-style personal essay.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): The American Dream Today' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & College Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-english-11'))), 4, 'short_answer', 'Write your reflection on your growth as a literary and rhetorical analyst this semester.', NULL, NULL);
