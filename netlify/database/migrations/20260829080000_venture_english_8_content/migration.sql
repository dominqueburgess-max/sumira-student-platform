-- Grade 8 Venture English (ELA 8): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: The Outsiders by S.E. Hinton. Matches the delivered ELA Scope & Sequence / Pacing
-- Calendar: 4 units, 15 lessons, a small project (L3/L11), two unit quizzes (L4/L12), and two
-- major projects (L8 Rhetoric Lab, capstone L15 High School Readiness Portfolio).

UPDATE courses SET status = 'published' WHERE slug = 'venture-ela-8';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-ela-8'), 'Unit 1: Reading Literature — The Outsiders', 0),
((SELECT id FROM courses WHERE slug='venture-ela-8'), 'Unit 2: Reading Informational Text & Rhetoric', 1),
((SELECT id FROM courses WHERE slug='venture-ela-8'), 'Unit 3: Argumentative & Narrative Writing', 2),
((SELECT id FROM courses WHERE slug='venture-ela-8'), 'Unit 4: Research & High School Readiness Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Point of View & Social Perspective', 1, 'lesson',
  $lesson$## Welcome to English 8: Identity, Rhetoric & High School Readiness

This year's anchor novel is **The Outsiders** by S.E. Hinton — narrated by Ponyboy Curtis, a "greaser" navigating class divisions, violence, and identity in 1960s Oklahoma. Hinton wrote the novel as a teenager herself, and its first-person point of view is central to everything the book accomplishes.

### Why Point of View Matters

**Point of view** is the vantage point from which a story is told. The Outsiders is told in **first person** — we experience everything filtered through Ponyboy's perceptions, biases, and blind spots. This is a deliberate choice, not a default.

### What First-Person Narration Does (and Doesn't Do)

- **It builds intimacy** — we feel what Ponyboy feels, in real time
- **It limits our knowledge** — we only know what Ponyboy knows or notices
- **It carries bias** — Ponyboy's opinions about "Socs" (the wealthier rival group) shape how we initially see them, before the novel complicates that view

### Tracking How Perspective Shapes the Story

As you read, notice moments where Ponyboy's assumptions about Socs get challenged — for instance, when he has real conversations with characters like Cherry Valance, who reveals that wealth doesn't protect people from real pain either. Ask yourself: would a different narrator (a Soc, an adult, an outside observer) tell this same story completely differently?

### Why This Matters

Every account of an event — a news story, a coworker's version of what happened in a meeting, a customer's complaint — comes from a specific point of view with its own blind spots. Learning to notice how perspective shapes a story (without dismissing it) is one of the most valuable critical thinking skills you can build.

### Your Turn

Identify one moment where Ponyboy's perspective about Socs (or "greasers") shifts or gets complicated. Explain what caused the shift and what it reveals about the limits of his original point of view.$lesson$,
  'RL.8.6', 'Analyze how differences in the points of view of the characters and the audience or reader create such effects as suspense or humor.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Dialogue & Characterization', 2, 'lesson',
  $lesson$## What Characters Say Reveals Who They Are

Dialogue is one of an author's most powerful characterization tools — and one of the easiest to underanalyze if you just read it as "talking."

### What to Notice in Dialogue

- **Word choice and dialect** — does a character speak formally or casually? Does their vocabulary reveal their background or education?
- **What's said vs. what's meant** — characters (like real people) don't always say exactly what they think
- **How characters respond to each other** — interruptions, silences, and reactions reveal relationships as much as words do
- **Consistency and change** — does a character's way of speaking shift in different situations or as the story goes on?

### Dialogue as Social Commentary in The Outsiders

Hinton uses dialogue to reveal the class divide at the heart of the novel. Notice how greasers and Socs each have their own slang, their own way of talking about violence, loyalty, and toughness. When Ponyboy talks with Cherry Valance across the class divide, the dialogue itself becomes a kind of bridge — two characters using different "languages" to find common ground.

### Incidents That Reveal Character

Beyond dialogue, watch for specific *incidents* — small moments or choices — that reveal character more than any direct description could. An incident like a character choosing to run into danger for a friend tells you more about their loyalty than a narrator simply stating "he was loyal."

### Why This Matters

In real life, you learn far more about people from what they actually say and do under pressure than from what they claim about themselves. Training yourself to notice dialogue and incident as evidence — not just take characters' self-descriptions at face value — makes you a sharper reader of both books and people.

### Your Turn

Choose one specific line of dialogue or incident involving a greaser and a Soc. Explain what it reveals about that character and about the class divide in the novel.$lesson$,
  'RL.8.3', 'Analyze how particular lines of dialogue or incidents in a story propel the action, reveal aspects of a character, or provoke a decision.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Analyzing Theme Interaction — Small Project: Social Class Analysis', 3, 'practice',
  $lesson$## Small Project: Social Class Analysis

The Outsiders develops more than one theme at once — class conflict, loyalty, and the danger of judging people by group identity all interact and reinforce each other. This project asks you to trace how two of the novel's themes work together.

### Step 1: Identify Two Interacting Themes

Choose two from: class conflict/inequality, loyalty and belonging, the danger of stereotyping, growing up and losing innocence, or violence and its consequences. (You may also propose your own, with justification.)

### Step 2: Show How They Interact

For each theme, cite at least 2 specific pieces of textual evidence (moments, quotes paraphrased in your own words, or incidents). Then write 3-4 sentences explaining specifically how your two chosen themes connect — does one cause or intensify the other? Does the novel suggest one theme is the "root" of the other?

### Step 3: Build Your Social Class Comparison

Create a two-column chart comparing greasers and Socs across at least 3 categories (money/resources, how each group is treated by others, and how each group handles conflict or pain). Use specific textual evidence for each entry.

### Step 4: Write Your Analysis

In 4-6 sentences, argue for your strongest overall claim: does The Outsiders suggest that greasers and Socs are more different or more similar underneath their circumstances? Support your claim with specific evidence from your chart.

### Why This Skill Matters

Real social issues are almost never caused by just one factor — recognizing how multiple forces interact and reinforce each other is essential for understanding (and eventually addressing) complex problems, whether in a novel or in real communities.$lesson$,
  'RL.8.1, RL.8.2', 'Cite textual evidence to support analysis; determine a theme and analyze its development, including its relationship to characters and setting.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Unit 1 Quiz: Reading Literature — The Outsiders', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — The Outsiders

This quiz checks your understanding of point of view, dialogue/characterization, and theme interaction in The Outsiders. For the short answer question, support your response with specific textual evidence.$lesson$,
  'RL.8.1-3, RL.8.6', 'Unit 1 assessment covering point of view, dialogue and characterization, and theme interaction.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Evaluating Claims & Evidence', 5, 'lesson',
  $lesson$## Not Every Claim Deserves Your Trust

By 8th grade, you're ready to go beyond just identifying claims and evidence — you're ready to rigorously **evaluate** whether they hold up.

### A Framework for Evaluation

1. **Delineate the argument** — separate the main claim from supporting sub-claims
2. **Check the evidence for each claim** — is it specific, relevant, and sufficient?
3. **Look for gaps** — does the reasoning skip steps, or assume something without proving it?
4. **Consider what's missing** — is there an obvious counterargument or piece of evidence the author ignores?

### A Worked Example

Claim: "This new study method is proven to help every student." Evaluation: Proven how — by what study, with how many students, over what time period? "Every student" is also a red flag — a claim this absolute is rarely fully supported by real evidence. A stronger, more honest claim might be: "In a study of 200 students, this method improved test scores by an average of 12%."

### Sound Reasoning vs. Weak Reasoning

Reasoning is **sound** when the conclusion actually follows logically from the evidence. It's **weak** when there's a gap — like assuming correlation proves causation, or generalizing from too small a sample.

### Why This Matters

Being able to rigorously evaluate claims — not just accept or reject them based on how confident they sound — protects you from being manipulated by weak arguments, and helps you build genuinely strong ones of your own.

### Your Turn

Find a claim from a real article or ad. Evaluate it using the 4-step framework above, and identify one specific gap or weakness in its reasoning or evidence.$lesson$,
  'RI.8.8', 'Delineate and evaluate the argument and specific claims in a text, assessing whether the reasoning is sound and the evidence is relevant and sufficient.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Analyzing Conflicting Information', 6, 'lesson',
  $lesson$## When Sources Disagree

Real informational reading often means encountering sources that present conflicting information on the same topic — and knowing how to handle that conflict productively is a genuinely advanced skill.

### Why Sources Conflict

- **Different data or timeframes** — studies from different years or populations can produce different results
- **Different definitions** — sources might define key terms differently, leading to different conclusions
- **Different purposes or biases** — a source funded by an interested party may emphasize different findings
- **Genuine scientific or scholarly disagreement** — sometimes experts really do disagree, especially on emerging topics

### How to Handle Conflicting Sources

1. **Identify exactly where they conflict** — is it the facts themselves, or the interpretation of the facts?
2. **Investigate why** — check dates, methods, funding sources, and definitions
3. **Decide if the conflict is resolvable** — sometimes more context clears it up; sometimes real disagreement remains
4. **Represent the conflict honestly** in your own writing — acknowledging genuine disagreement is more credible than pretending it doesn't exist

### Why This Matters

Almost every real-world topic worth researching — nutrition science, economic policy, historical interpretation — includes some genuine disagreement among credible sources. Knowing how to navigate that honestly (rather than just picking whichever source agrees with what you already believed) is the mark of a serious researcher.

### Your Turn

Find two sources that present conflicting information on the same topic. Identify specifically what they disagree about, and investigate a possible reason why (different dates, definitions, methods, or genuine disagreement).$lesson$,
  'RI.8.9', 'Analyze a case in which two or more texts provide conflicting information on the same topic and identify where the texts disagree on matters of fact or interpretation.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Rhetorical Techniques in Historical Speeches', 7, 'lesson',
  $lesson$## The Ancient Tools of Persuasion

Rhetoric — the art of persuasive speaking and writing — dates back thousands of years, and its core techniques still power every effective speech, ad, and pitch today.

### The Three Classical Appeals

- **Ethos** — establishing credibility and trustworthiness ("As someone who has worked in this field for twenty years...")
- **Pathos** — appealing to emotion ("Imagine your own child in this situation...")
- **Logos** — appealing to logic and evidence ("The data clearly shows a 40% increase...")

The strongest rhetoric usually combines all three, in the right proportion for the audience and moment.

### Other Rhetorical Techniques Worth Knowing

- **Repetition** — repeating a key phrase to make it memorable and build momentum
- **Rhetorical questions** — questions asked not for an answer, but to make the audience think
- **Parallel structure** — repeating a grammatical pattern for rhythm and emphasis
- **Contrast** — placing two ideas side by side to highlight a difference

### Analyzing a Real Historical Speech

Choose a well-known historical speech (your teacher or this course may point you toward a specific one). As you read or listen, identify at least one moment of ethos, pathos, and logos, plus at least one additional technique (repetition, rhetorical question, parallel structure, or contrast).

### Why This Matters

Every persuasive speech you'll ever give — a class presentation, a college interview, a future pitch to investors or voters — will be more effective if you deliberately use these same techniques instead of relying on instinct alone.

### Your Turn

Identify one example each of ethos, pathos, and logos from a historical speech of your choice, plus one additional rhetorical technique used in the same speech.$lesson$,
  'RI.8.6', 'Determine an author''s point of view or purpose in a text and analyze how the author acknowledges and responds to conflicting evidence or viewpoints.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'MAJOR PROJECT 1: Rhetoric Lab', 8, 'practice',
  $lesson$## Major Project 1: Rhetoric Lab

You've studied how to evaluate claims, handle conflicting sources, and identify rhetorical techniques in historical speeches. Now it's time to build your own.

### Your Task

Write and deliver an original persuasive speech (2-3 minutes when spoken) on a topic you genuinely care about, deliberately using the rhetorical techniques from this unit.

### Requirements

1. **A clear, specific claim** you want your audience to accept or act on
2. **At least one clear example each of ethos, pathos, and logos** — deliberately built into your speech, not accidental
3. **At least one additional rhetorical technique** (repetition, rhetorical question, parallel structure, or contrast)
4. **Evidence that would hold up under evaluation** — specific, relevant, and honest (avoid the weak-reasoning patterns from earlier in this unit)
5. **A strong opening and closing** — your first and last lines should be the most memorable in the whole speech

### Preparing to Deliver

Rhetoric on the page is only half the job — delivery matters too. Practice your pacing (slow down for your most important line), your volume, and your eye contact. A powerful line delivered flatly loses most of its power.

### Deliverable

Submit your full written speech with each rhetorical technique labeled in the margin or in a footnote (identify where you used ethos, pathos, logos, and your additional technique), plus a short reflection on which technique felt hardest to use effectively.$lesson$,
  'RI.8.6, RI.8.8, SL.8.4', 'Analyze rhetoric and evaluate arguments; present claims and findings using appropriate eye contact, volume, and pronunciation.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Writing Arguments With Clear Reasons & Evidence', 9, 'lesson',
  $lesson$## Raising the Bar on Argument Writing

You've built claims, counterclaims, and rebuttals in previous grades. This year, we raise the standard: your reasons and evidence need to be not just present, but genuinely strong under the evaluation lens from Unit 2.

### What "Clear Reasons and Relevant Evidence" Really Means

- **Clear reasons** connect logically and directly to your claim — no vague gestures at relevance
- **Relevant evidence** actually proves the specific reason it's attached to, not just something loosely related
- **Sufficient evidence** means enough support that a skeptical reader would find your case convincing, not just plausible

### Organizing for Maximum Persuasion

A strong argument doesn't just list reasons in random order — it builds, usually saving the strongest reason for last (or sometimes first, to hook the reader immediately, then closing with a powerful final point).

### Formal Style

Academic and professional argument writing uses a **formal style**: avoid slang, contractions in formal contexts, and overly casual phrasing. Formal style signals that you're taking the argument seriously and expect to be taken seriously in return.

### Why This Matters

By high school and beyond, the arguments you write — college essays, cover letters, research papers, project proposals — will be judged by exactly this standard: clear reasons, relevant and sufficient evidence, and appropriate formality for the context.

### Your Turn

Write a claim and two reasons, each with specific, relevant evidence, in formal style. Order your reasons so the stronger one comes last.$lesson$,
  'W.8.1', 'Write arguments to support claims with clear reasons and relevant evidence, using credible sources and demonstrating an understanding of the topic.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Narrative Techniques: Pacing, Description, Reflection', 10, 'lesson',
  $lesson$## Advanced Tools for Narrative Writing

You've written well-structured narratives before. This lesson adds three techniques that separate competent narrative writing from genuinely compelling narrative writing: pacing, description, and reflection.

### Pacing: Controlling Time

Skilled writers don't spend equal time on every moment. A boring afternoon might get one sentence; a moment of real tension might get an entire page of slowed-down detail. **Pacing** is the deliberate choice of how much narrative time to spend on each moment, based on its importance.

### Description: Precision Over Volume

More adjectives isn't better description — more *specific* and *purposeful* description is. Compare: "The old house was scary and creepy" (vague, generic) vs. "The porch step gave a low groan under my foot, like it hadn't held weight in years" (specific, sensory, and it does double duty by suggesting the house is neglected).

### Reflection: The Narrator's Insight

Reflection is when a narrator steps back — even briefly — to consider the meaning of what just happened. Ponyboy does this throughout The Outsiders, moving between action and thoughtful reflection on what his experiences mean about class, loyalty, and growing up. Reflection is what turns "this happened" into "here's what this meant."

### Combining All Three

The strongest narrative moments often combine all three: careful pacing that slows down for the important moment, precise description that makes it vivid, and a flash of reflection that reveals its significance.

### Your Turn

Write a short narrative passage (150-200 words) about a meaningful moment (real or invented). Deliberately slow the pacing for the key moment, include at least one piece of precise sensory description, and end with one sentence of genuine reflection.$lesson$,
  'W.8.3', 'Write narratives using narrative technique, relevant descriptive details, and well-structured event sequences, including pacing and reflection.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Small Project: Formal Argument Paragraph', 11, 'practice',
  $lesson$## Small Project: Formal Argument Paragraph

Time to combine clear reasons, relevant evidence, and formal style into one polished paragraph — a form you'll use constantly in high school and beyond.

### Choose Your Debate Topic

Pick a real, debatable issue (school policy, a community issue, or a question raised by The Outsiders — such as whether the novel suggests real change between social classes is possible).

### Write Your Formal Argument Paragraph

Your paragraph must include:

1. **A clear topic sentence** stating your claim
2. **Two reasons**, each with specific, relevant evidence
3. **Formal style throughout** — no slang, no casual contractions, precise word choice
4. **A concluding sentence** that reinforces your claim's significance

### Self-Check Before Submitting

Read your paragraph aloud. Does every sentence sound like it belongs in a formal, academic piece of writing? Would your reasons and evidence hold up if someone rigorously evaluated them using the framework from Unit 2?

### Why This Matters

The formal argument paragraph is the basic unit of nearly all academic and professional persuasive writing — you'll be building on this exact structure in essays, reports, and proposals for years to come.$lesson$,
  'W.8.1d', 'Establish and maintain a formal style in argumentative writing.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Unit 3 Quiz: Argumentative & Narrative Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Argumentative & Narrative Writing

This quiz checks your understanding of argument writing (clear reasons, relevant evidence, formal style) and narrative technique (pacing, description, reflection). For the short answer question, write in complete, specific sentences.$lesson$,
  'W.8.1, W.8.3', 'Unit 3 assessment covering argument writing standards and narrative technique.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Conducting Sustained Research Projects', 13, 'lesson',
  $lesson$## Research That Goes Deeper

A "sustained" research project means one you dig into over time, refining your question as you learn more — not a quick single-session search.

### Starting With a Self-Generated Question

Unlike earlier grades where questions were sometimes provided, this year you're expected to generate your own research question from genuine curiosity or a real gap you notice in your understanding.

### The Refinement Process

Good researchers don't lock their question in place forever. As you read initial sources, you'll often discover:

- Your question was too broad (narrow it)
- Your question was already well-answered elsewhere (deepen or redirect it)
- A more interesting related question emerges (consider pivoting, carefully)

### Managing a Longer Research Process

1. Set an initial question and a rough timeline
2. Gather sources in rounds — don't try to find everything at once
3. Take notes that track not just facts, but *your own evolving thinking*
4. Revisit and refine your question at least once partway through

### Why This Matters

High school and college research projects (and most meaningful real-world research, including market research for a business) unfold exactly this way — as an evolving process, not a single afternoon of searching. Building this habit now prepares you directly for that next level of rigor.

### Your Turn

State an initial research question you're curious about. Predict one way your question might need to be narrowed or refined once you start researching.$lesson$,
  'W.8.7-8', 'Conduct sustained research projects to answer a self-generated question, refocusing the inquiry when appropriate, and gathering relevant information from multiple sources.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'Presenting With Confidence & Clarity', 14, 'lesson',
  $lesson$## Presentation Skills for High School (and Beyond)

High school presentations — and eventually college interviews and professional meetings — expect a higher standard of delivery than middle school. This lesson sharpens the specific, physical skills of confident presenting.

### The Technical Skills of Delivery

- **Eye contact** — moving your gaze naturally across your whole audience, not staring at one spot or reading straight off a slide
- **Volume** — projecting so the person in the back row hears you clearly, without shouting
- **Pronunciation and pacing** — enunciating clearly, and slowing down (not speeding up) when nervous
- **Body language** — standing with purpose, using natural gestures, avoiding distracting habits (fidgeting, pacing randomly)

### Logical Organization Under Pressure

Even confident delivery falls flat without clear organization. Structure your presentation so a listener can follow your logic even if their attention drifts for a moment and comes back — clear signposting ("My second point is...", "This brings me to...") helps enormously.

### Handling Nerves

Nerves are normal, even for experienced speakers. Two practical techniques: practice your opening line until it's automatic (a strong start builds confidence for the rest), and remember that pausing briefly is far less noticeable to your audience than it feels to you.

### Why This Matters

This is the exact skill set you'll rely on in high school presentations, college interviews, job interviews, and any future pitch — investors and admissions officers respond as much to how confidently and clearly you present as to the content itself.

### Your Turn

Practice delivering your speech or presentation's opening line 5 times until it feels automatic. Write down 2 specific delivery goals (eye contact, volume, pacing, or body language) you'll focus on improving.$lesson$,
  'SL.8.4-5', 'Present claims and findings, using appropriate eye contact, adequate volume, and clear pronunciation; integrate multimedia components to clarify information.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8')),
  'MAJOR PROJECT 2 (CAPSTONE): High School Readiness Portfolio', 15, 'practice',
  $lesson$## Capstone Project: High School Readiness Portfolio

This is your send-off project — proof, in your own writing, that you're ready for the independence and rigor of high school English.

### Your Task

Compile a portfolio of your strongest writing from this semester (argument, narrative, and informative pieces), and present a short "This Is Me" multimedia pitch introducing yourself as a reader, writer, and thinker heading into high school.

### Portfolio Requirements

1. **One argument piece** (revised from this semester, or new) demonstrating clear reasons, relevant evidence, and formal style
2. **One narrative piece** (revised or new) demonstrating pacing, precise description, and reflection
3. **A brief informative piece** explaining one thing you learned this semester that surprised or changed you
4. **A portfolio introduction** (150-250 words) reflecting on your growth as a writer this semester — be specific about what got easier and what's still challenging

### The "This Is Me" Pitch

Prepare a 2-3 minute presentation introducing yourself heading into high school: what kind of reader and writer are you, what are you proud of from this semester, and what do you want to work on next? Use the delivery skills from the previous lesson — eye contact, volume, clear organization.

### Deliverable

Submit your complete portfolio (argument piece, narrative piece, informative piece, and reflective introduction) plus your "This Is Me" pitch outline.$lesson$,
  'W.8.1-3, W.8.7-9, SL.8.4-5', 'Compile and reflect on a portfolio of argument, narrative, and informative writing; present with clear organization and confident delivery.', 40
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Point of View & Social Perspective' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'The Outsiders is narrated in which point of view?', '["Third person omniscient", "First person", "Second person", "Third person limited"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Point of View & Social Perspective' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'A limitation of first-person narration is that:', '["The reader only knows what the narrator knows or notices", "It always makes stories boring", "It cannot include any emotion", "It only works in nonfiction"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Point of View & Social Perspective' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Identify a moment where Ponyboy''s view of Socs shifts, and explain what caused the shift.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Dialogue & Characterization' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'Which is NOT something to notice when analyzing dialogue?', '["Word choice and dialect", "What''s said versus what''s meant", "The exact number of words in the sentence", "How characters respond to each other"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Dialogue & Characterization' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'An "incident" that reveals character is best described as:', '["A direct statement by the narrator about a character''s traits", "A specific moment or choice that reveals character without stating it directly", "The title of a chapter", "A description of the weather"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Dialogue & Characterization' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Choose one incident or line of dialogue between a greaser and a Soc and explain what it reveals.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Theme Interaction — Small Project: Social Class Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'short_answer', 'Name your two chosen themes and cite 2 pieces of evidence for each.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Theme Interaction — Small Project: Social Class Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'short_answer', 'Explain how your two themes interact or reinforce each other.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Theme Interaction — Small Project: Social Class Analysis' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Argue your strongest claim: are greasers and Socs more different or more similar underneath their circumstances?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Outsiders' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'How does first-person narration shape a reader''s understanding of Socs early in the novel?', '["It has no effect at all", "It filters our early impressions through Ponyboy''s biases before the novel complicates them", "It makes the Socs the narrator", "It removes all bias from the story"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Outsiders' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'Dialogue between greasers and Socs in the novel primarily serves to:', '["Fill space with unimportant chatter", "Reveal the class divide and characters'' differing worldviews", "Confuse the reader on purpose", "Replace the need for a narrator"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Outsiders' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'multiple_choice', 'Which best shows two themes interacting?', '["Class conflict exists, and so does loyalty, with no connection between them", "The pressure of class conflict makes loyalty within one''s own group even more essential for survival", "Themes never interact in a novel", "One theme always replaces another"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Outsiders' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 4, 'multiple_choice', 'Which is the strongest use of textual evidence?', '["\"I feel like the Socs are mean.\"", "\"Cherry Valance tells Ponyboy that Socs have real problems too, revealing that wealth doesn''t prevent emotional pain.\"", "\"This book is good.\"", "\"The book has many chapters.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — The Outsiders' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — The Outsiders' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 5, 'short_answer', 'Using specific evidence, explain how point of view shapes what readers understand (and don''t understand) about the Socs.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Evaluating Claims & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'Which claim is most likely overstated and needs scrutiny?', '["\"In a study of 200 students, scores improved by 12% on average.\"", "\"This method is proven to help every student.\"", "\"Results varied depending on prior preparation.\"", "\"Further research is recommended.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Claims & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'Reasoning is "sound" when:', '["It sounds confident", "The conclusion actually follows logically from the evidence", "It is stated in a formal tone", "It is the longest explanation offered"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Evaluating Claims & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Evaluate a real claim using the 4-step framework and identify one weakness.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Conflicting Information' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'Which is NOT a common reason sources conflict?', '["Different data or timeframes", "Different definitions of key terms", "The font size used", "Genuine scholarly disagreement"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Analyzing Conflicting Information' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'When representing a genuine disagreement between sources in your own writing, you should:', '["Pretend the disagreement doesn''t exist", "Only mention the source you personally agree with", "Represent the conflict honestly", "Ignore both sources"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Analyzing Conflicting Information' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Find two conflicting sources on the same topic and explain a possible reason for the disagreement.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Rhetorical Techniques in Historical Speeches' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'Which appeal relies on establishing credibility and trustworthiness?', '["Pathos", "Logos", "Ethos", "Repetition"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Rhetorical Techniques in Historical Speeches' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'A rhetorical question is asked primarily to:', '["Get a direct spoken answer", "Make the audience think, not to receive an answer", "Confuse the audience", "Fill time in a speech"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Rhetorical Techniques in Historical Speeches' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Identify one example each of ethos, pathos, and logos from a historical speech of your choice.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Rhetoric Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'short_answer', 'State your speech''s claim and write your opening line.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Rhetoric Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'short_answer', 'Label where you used ethos, pathos, and logos in your speech.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Rhetoric Lab' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Rhetoric' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Identify your additional rhetorical technique and reflect on which technique felt hardest to use effectively.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing Arguments With Clear Reasons & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', '"Sufficient evidence" means:', '["Any evidence at all, regardless of amount", "Enough support that a skeptical reader would find the case convincing", "Evidence that is very long", "Evidence from only one source"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing Arguments With Clear Reasons & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'Formal style in argument writing means:', '["Using slang and casual contractions", "Avoiding slang, using precise word choice, and maintaining a serious tone", "Writing as short as possible with no explanation", "Only using questions"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing Arguments With Clear Reasons & Evidence' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Write a claim and two reasons with specific, relevant evidence, in formal style.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Narrative Techniques: Pacing, Description, Reflection' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', '"Pacing" in narrative writing refers to:', '["The font size of the text", "The deliberate choice of how much narrative time to spend on each moment", "The number of characters in a story", "The title of the story"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Narrative Techniques: Pacing, Description, Reflection' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'Which sentence uses precise, purposeful description?', '["The old house was scary and creepy.", "The porch step gave a low groan under my foot, like it hadn''t held weight in years.", "The house was old.", "It was a bad-looking house."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Narrative Techniques: Pacing, Description, Reflection' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Write a 150-200 word narrative passage using slowed pacing, precise description, and a moment of reflection.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project: Formal Argument Paragraph' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'short_answer', 'Write your complete formal argument paragraph (topic sentence, two reasons with evidence, concluding sentence).', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project: Formal Argument Paragraph' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'short_answer', 'Explain how you maintained formal style throughout your paragraph.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'A formal style in argument writing avoids:', '["Precise word choice", "Slang and overly casual phrasing", "Clear reasons", "Relevant evidence"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'Reflection in narrative writing is best described as:', '["A list of events", "The narrator stepping back to consider the meaning of what happened", "A description of the weather", "Dialogue between two characters"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'multiple_choice', 'Which shows effective pacing?', '["Spending equal time on every single moment in a story", "Slowing down for the most important or tense moment, and speeding through less important time", "Skipping the climax entirely", "Describing only the setting"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 4, 'multiple_choice', 'Which is the stronger, more formal argument sentence?', '["This idea is basically pretty good, I guess.", "This policy demonstrably reduces costs while improving outcomes for the majority of participants.", "It''s a good idea, trust me.", "Everyone knows this works."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Argumentative & Narrative Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Argumentative & Narrative Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 5, 'short_answer', 'Explain the difference between narrative reflection and simply describing an event, using an example.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Conducting Sustained Research Projects' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'A "sustained" research project is best described as:', '["A single quick search session", "A project you dig into over time, refining your question as you learn more", "A project with no research question", "A project completed entirely from memory"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conducting Sustained Research Projects' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'If your research question turns out to be too broad, you should:', '["Give up on the project", "Narrow the question based on what you''ve learned so far", "Ignore the problem and continue anyway", "Switch to a completely unrelated topic with no connection"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conducting Sustained Research Projects' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'State a research question and predict one way it might need refining once you start researching.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Presenting With Confidence & Clarity' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'multiple_choice', 'Which is a technical delivery skill discussed in this lesson?', '["Choosing a research topic", "Eye contact, volume, and pacing", "Writing a bibliography", "Selecting sources"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Presenting With Confidence & Clarity' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'multiple_choice', 'A helpful technique for managing presentation nerves is:', '["Speaking as fast as possible to finish quickly", "Practicing your opening line until it feels automatic", "Avoiding eye contact entirely", "Reading directly off your slides word for word"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Presenting With Confidence & Clarity' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Write down 2 specific delivery goals you will focus on for your next presentation.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): High School Readiness Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 1, 'short_answer', 'Submit or summarize your argument piece, noting your claim and strongest evidence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): High School Readiness Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 2, 'short_answer', 'Submit or summarize your narrative piece, noting your pacing and reflection choices.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): High School Readiness Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 3, 'short_answer', 'Write your portfolio introduction reflecting on your growth as a writer this semester.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): High School Readiness Portfolio' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & High School Readiness Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-8'))), 4, 'short_answer', 'Outline your "This Is Me" pitch: what kind of reader/writer are you, and what do you want to work on next?', NULL, NULL);
