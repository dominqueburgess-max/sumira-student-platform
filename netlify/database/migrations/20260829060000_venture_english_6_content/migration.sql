-- Grade 6 Venture English (ELA 6): full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Anchor text: Hatchet by Gary Paulsen. Matches the delivered ELA Scope & Sequence / Pacing
-- Calendar: 4 units, 15 lessons, including a small project (L3/L11), two unit quizzes (L4/L12),
-- and two entrepreneurial/real-world major projects (L8 and capstone L15).

UPDATE courses SET status = 'published' WHERE slug = 'venture-ela-6';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-ela-6'), 'Unit 1: Reading Literature — Hatchet', 0),
((SELECT id FROM courses WHERE slug='venture-ela-6'), 'Unit 2: Reading Informational Text & Vocabulary', 1),
((SELECT id FROM courses WHERE slug='venture-ela-6'), 'Unit 3: Narrative & Argument Writing', 2),
((SELECT id FROM courses WHERE slug='venture-ela-6'), 'Unit 4: Research & Capstone', 3);

-- ============================= UNIT 1 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Plot & Character: Meeting Brian Robeson', 1, 'lesson',
  $lesson$## Welcome to English 6: Survival Stories & the Founder's Voice

This year's anchor novel is **Hatchet** by Gary Paulsen — the story of thirteen-year-old Brian Robeson, who survives alone in the Canadian wilderness after the small plane he's flying in crashes. Before we crack open the story, let's build the tools we'll use all year: plot structure and characterization.

### Plot Structure: The Shape of a Story

Every story moves through a shape:

- **Exposition** — we meet the character(s) and setting before the trouble starts
- **Rising Action** — the problem builds, decision by decision
- **Climax** — the most intense turning point
- **Falling Action** — things start to resolve
- **Resolution** — the new normal

In Hatchet's opening chapters, we're in the **exposition**: Brian is a city kid, dealing with his parents' divorce, boarding a small bush plane to visit his father. He's given a hatchet by his mother — a gift that seems small at first, but you should keep an eye on it.

### Characterization: How We Get to Know Brian

Authors reveal character through:

- **What a character says and thinks**
- **What a character does**
- **How other characters react to them**
- **Physical description and details the author chooses to include**

Brian starts the story distracted and anxious — his mind keeps drifting to "The Secret," a piece of knowledge about his parents' divorce that he's carrying alone. That's important: his internal conflict (the secret) exists *before* his external conflict (the crash) even begins.

### Why This Matters for a Founder's Mindset

Every entrepreneur's story has an "exposition" too — the ordinary life before the idea, the challenge, or the crisis that changes everything. Understanding how authors build that beginning helps you tell your *own* origin story clearly later this semester.

### Your Turn

In 3-4 sentences, describe what we learn about Brian in the opening pages — his situation, his emotional state, and one detail the author includes about him. Then predict: why might the hatchet matter later?$lesson$,
  'RL.6.1-3', 'Cite textual evidence and analyze how individuals, events, and ideas develop and interact within a text.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'How Setting Shapes Survival Decisions', 2, 'lesson',
  $lesson$## Setting Isn't Just Background — It's a Force

Once Brian's plane crashes and he's alone in the Canadian wilderness, the **setting** stops being scenery and becomes the single biggest force acting on every decision he makes.

### What Counts as Setting?

- **Place** — dense forest, a lake, rocky shoreline
- **Time** — season, day/night, how much time has passed
- **Atmosphere/mood** — how the setting *feels* (threatening, peaceful, disorienting)

### How Setting Drives Plot in Hatchet

Look at how the wilderness setting forces specific decisions:

- No shelter exists → Brian must build one from what's available
- No food source is obvious → he must learn to identify what's edible and how to get it
- No fire exists → he must discover how to make one (with, eventually, help from a spark and his hatchet)
- No rescue is guaranteed → every choice he makes has to account for the possibility that no one is coming

Notice the pattern: **setting creates a problem, and the character's response to that problem reveals who they are.** A city kid who complained about small inconveniences becomes someone who methodically solves survival problems one at a time.

### Setting & Business Thinking

This is exactly how founders think about their "operating environment." A business's setting — the market conditions, the competition, the resources available — creates constraints. The founders who succeed aren't the ones who wish the constraints were different; they're the ones who study the setting closely and adapt fast, the way Brian has to.

### Your Turn

Choose one specific challenge the wilderness setting creates for Brian. Explain the challenge, and describe one decision he makes (or you predict he'll make) in response. Then connect it: how is "reading the environment" a skill for founders too?$lesson$,
  'RL.6.3', 'Describe how a particular story''s or drama''s plot unfolds in a series of episodes as well as how the characters respond or change as the plot moves toward a resolution.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Analyzing Text Structure — Small Project: Survival Decisions Chart', 3, 'practice',
  $lesson$## Small Project: Survival Decisions Evidence Chart

Great authors build tension chapter by chapter. In this project, you'll map out how Hatchet's structure works *and* practice citing textual evidence — a skill you'll use in every English class from here through senior year.

### Step 1: Understand Episodic Structure

Hatchet is structured as a series of **episodes** — each chapter usually centers on one new problem Brian faces (finding water, making fire, building a shelter, a moose attack, a tornado). Each episode typically follows this shape:

1. A new problem appears
2. Brian tries something that fails or partly works
3. Brian observes, adjusts, and tries again
4. Success (temporary) — until the next problem

### Step 2: Build Your Evidence Chart

Create a chart with four columns: **Problem**, **Brian's First Attempt**, **What He Learned**, **What Changed As a Result**. Fill it in for at least 3 different episodes/chapters from the reading.

For each row, you must **cite specific evidence** — a paraphrased moment or detail from the text, not just a vague summary. (Remember: cite evidence means point to *specific* proof from the story, not just your general impression.)

### Step 3: Look for the Pattern

After filling in your chart, write 2-3 sentences describing the *pattern* you notice in how Brian solves problems over the course of the book. Does he get faster? More confident? Does he start planning ahead instead of just reacting?

### Why This Skill Matters

"Citing evidence" isn't just an English class habit — it's the same skill investors expect when you pitch a business idea (show me the *data*, not just your opinion) and the same skill you'll need for every essay and research paper for the rest of your academic life.$lesson$,
  'RL.6.1, RL.6.5', 'Cite textual evidence to support analysis; analyze how a particular sentence, chapter, or section fits into the overall structure of a text.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Unit 1 Quiz: Reading Literature — Hatchet', 4, 'quiz',
  $lesson$## Unit 1 Quiz: Reading Literature — Hatchet

This quiz checks your understanding of plot structure, characterization, setting, and textual evidence as we've studied them through the opening chapters of Hatchet. Answer each question thoughtfully — for the short answer question, use specific evidence from the text.$lesson$,
  'RL.6.1-3, RL.6.5', 'Unit 1 assessment covering plot structure, characterization, setting, and citing textual evidence.', 20
);

-- ============================= UNIT 2 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Finding Central Ideas in Informational Text', 5, 'lesson',
  $lesson$## Shifting Gears: From Fiction to Informational Text

Now we'll pair Hatchet with real informational texts about wilderness survival — the same kind of nonfiction Brian might have wished he had. This unit builds a completely different but equally important skill: reading for information rather than story.

### What Is a Central Idea?

The **central idea** of an informational text is the main point the author wants you to understand and remember — not just the topic (like "fire-starting"), but the *point being made about* that topic (like "fire-starting in the wild depends more on preparation and patience than on luck").

### How to Find It

1. **Read the title and headings first** — they often signal the central idea directly
2. **Notice what comes up again and again** — repeated ideas usually point to the central idea
3. **Ask: what is this text trying to convince me of, or teach me?**
4. **Check your idea against the details** — do most of the supporting details connect back to it?

### Central Idea vs. Supporting Details

A text about starting fires without matches might include supporting details like "dry tinder is essential," "a spark needs oxygen to catch," and "wind can help or hurt your fire." Each of those is a *detail* — but the *central idea* connecting them might be: "successful fire-starting requires understanding all three elements of fire (fuel, spark, and oxygen) working together."

### Why This Matters

Every business plan, research report, and news article you'll ever read has a central idea buried in it. Learning to extract it quickly — instead of getting lost in details — is one of the most useful reading skills you'll build this year.

### Your Turn

Find or think of a short informational passage about a survival skill (fire, water, shelter, or signaling for rescue). State the central idea in one clear sentence, then list two supporting details that connect back to it.$lesson$,
  'RI.6.2', 'Determine a central idea of a text and how it is conveyed through particular details; provide a summary of the text distinct from personal opinions or judgments.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Using Context Clues & Word Parts', 6, 'lesson',
  $lesson$## Becoming Your Own Dictionary

Whether you're reading a survival guide, a novel, or a business article, you're going to hit words you don't know. Good readers don't stop — they use **context clues** and **word parts** to figure meaning out on the spot.

### Types of Context Clues

- **Definition clues** — the meaning is explained right in the sentence ("Brian felt a surge of *hypothermia*, the dangerous drop in body temperature that happens from prolonged cold.")
- **Contrast clues** — the opposite meaning is nearby ("Unlike the *abundant* fish in the lake, food on land was scarce.")
- **Example clues** — examples help you infer meaning ("He gathered *tinder* — dry grass, bark shavings, and thin twigs — to start his fire.")
- **General sense clues** — the overall sentence/paragraph gives you a feel for the word even without a direct definition

### Word Parts: Prefixes, Roots, Suffixes

Breaking an unfamiliar word into parts often unlocks its meaning:

- **Prefix** *hypo-* (under/below) + *therm* (heat) → hypothermia = "below-normal body heat"
- **Prefix** *sub-* (under) + *merge* → submerge = "to put under"
- **Suffix** *-less* (without) → resourceless = "without resources" (the opposite of resourceful, a word that describes Brian well by the end of the book)

### Why This Matters for a Founder

Every industry has its own vocabulary — technical terms, financial terms, legal terms. Entrepreneurs who can't be intimidated by unfamiliar words, and who know how to work out meaning from context, learn new fields fast. That's a real competitive advantage.

### Your Turn

Find 2 unfamiliar or content-specific words from anything you're reading (the novel, a survival article, even a business or gaming article). For each, identify the context clue type OR word parts that help you figure out the meaning, and write your best definition.$lesson$,
  'L.6.4', 'Determine or clarify the meaning of unknown and multiple-meaning words and phrases based on grade 6 reading and content, choosing flexibly from a range of strategies.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'How Informational Texts Are Organized', 7, 'lesson',
  $lesson$## Text Structure: The Blueprint Behind the Words

Just like a story has plot structure, informational text has **organizational structure** — and recognizing the structure helps you understand and remember the content much faster.

### Common Informational Text Structures

- **Cause and Effect** — explains why something happens and what results ("Because wet wood contains moisture, it produces more smoke and less flame.")
- **Problem and Solution** — presents a problem, then one or more solutions ("Finding clean water in the wild is a major challenge; boiling, filtering, and using purification tablets are three solutions.")
- **Sequence/Chronological** — presents steps or events in order (a how-to guide for building a fire, step by step)
- **Compare and Contrast** — shows similarities and differences ("Unlike a teepee-style fire, a log-cabin-style fire burns longer but takes more wood to build.")
- **Description** — provides detailed information about a topic without one of the structures above

### How to Spot the Structure

Look for **signal words**:

- Cause/effect: *because, therefore, as a result, since*
- Problem/solution: *problem, challenge, solution, to solve this*
- Sequence: *first, next, then, finally*
- Compare/contrast: *unlike, similarly, in contrast, both*

### Why It Matters

Recognizing structure lets you predict what's coming and organize your own notes to match — a skill that will save you real time on every research project this year, starting with the one at the end of this unit.

### Your Turn

Take a short informational passage (about survival, or any nonfiction topic) and identify its primary structure. List two signal words or phrases from the text that helped you identify it.$lesson$,
  'RI.6.5', 'Analyze how a particular sentence, paragraph, chapter, or section fits into the overall structure of a text and contributes to the development of the ideas.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'MAJOR PROJECT 1: Survival Guide Startup', 8, 'practice',
  $lesson$## Major Project 1: Survival Guide Startup

Time to combine everything from this unit — central ideas, vocabulary, and text structure — into a real, publishable product: your own illustrated survival guide.

### Your Task

Write and design an original informational guide teaching one real survival skill (fire-starting, finding water, building a shelter, signaling for rescue, or another skill inspired by Hatchet). Your guide should be written clearly enough that someone with no experience could follow it.

### Requirements

1. **A clear central idea** stated in your introduction — what is the one big takeaway you want readers to walk away with?
2. **At least one clear organizational structure** (sequence/steps is a strong choice for a how-to guide, but cause-effect or problem-solution can work too) — use signal words to make the structure obvious
3. **At least 3 pieces of specific, accurate information** about your chosen skill (do a little real research if needed!)
4. **At least 3 vocabulary words** relevant to your topic, each used in context so a reader could figure out the meaning even without a glossary
5. **A title and short "cover" description**, since you're treating this as a real product you'd publish and sell or share

### Thinking Like a Founder

A "survival guide" is a real product category — think about how outdoor brands, apps, and publishers package this exact kind of information and sell it. Your guide should be something you'd actually be proud to put your name on and share.

### Deliverable

Submit your guide's introduction (with central idea), your step-by-step or organized body content, and a short reflection: what was the hardest part of explaining something clearly to someone who's never done it before?$lesson$,
  'RI.6.2-5, W.6.2, W.6.4', 'Write informative/explanatory texts to examine a topic and convey ideas through the selection, organization, and analysis of relevant content.', 35
);

-- ============================= UNIT 3 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Writing a Well-Structured Narrative', 9, 'lesson',
  $lesson$## Telling Your Own Story, On Purpose

We've spent two units analyzing how Gary Paulsen structures Brian's story. Now it's your turn to build one of your own — with intention, not just "and then this happened."

### The Building Blocks of Narrative

- **Exposition** — establish who, where, and what's normal *before* the story really starts
- **A clear conflict** — something the narrator wants, needs, or must overcome
- **Sequenced events** — one thing leads logically to the next (this is what "well-structured" means)
- **Sensory and descriptive details** — help the reader feel like they're there
- **A resolution or reflection** — what changed, what was learned, or how things settled

### Techniques Worth Stealing From Hatchet

- **Internal thought** — Paulsen lets us hear Brian's panicked, then increasingly focused, thinking
- **Short, tense sentences during action** — sentence length can control pacing; short sentences speed things up
- **Concrete, specific details** — not "he found some wood" but the kind of wood, how it looked, how it felt

### Planning Before You Write

Before drafting, sketch your sequence of events as a simple list: beginning situation → problem/trigger → 3-4 key events in order → turning point → ending. This is exactly the kind of planning that keeps a narrative from wandering.

### Why This Matters for a Founder

Every founder eventually needs to tell their "origin story" — clearly, in order, with the right details highlighted. That's a narrative writing skill, and you're building it right now.

### Your Turn

Draft a beginning-situation-to-conflict opening (150-250 words) for a personal or invented narrative. Focus on establishing who/where/what's normal, then introduce one clear problem or trigger event.$lesson$,
  'W.6.3', 'Write narratives to develop real or imagined experiences or events using effective technique, relevant descriptive details, and well-structured event sequences.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Introducing Claims: The Basics of Argument Writing', 10, 'lesson',
  $lesson$## Making a Case, Not Just Sharing an Opinion

Narrative writing tells a story. **Argument writing** makes a case — and the difference between a strong argument and a weak one usually comes down to whether it's built on reasons and evidence, or just feelings.

### The Anatomy of an Argument

- **Claim** — your position, stated clearly (e.g., "Brian's biggest strength in Hatchet is his ability to adapt his plan when something fails.")
- **Reasons** — the "why" behind your claim (2 or more)
- **Evidence** — specific support for each reason, from the text or from research
- **Acknowledgment** — a strong argument shows awareness that someone could disagree (we'll go deeper on this next year)

### From Opinion to Claim

"I think Brian is smart" is an opinion — vague and hard to argue with because it's not specific. "Brian's greatest survival skill is his willingness to abandon a failed plan quickly instead of stubbornly repeating it" is a **claim** — specific, arguable, and provable with evidence.

### Building Your First Argument Paragraph

1. State your claim in one clear sentence
2. Give your first reason, with a specific piece of evidence
3. Give a second reason, with its own piece of evidence
4. Close with a sentence that restates why your claim matters

### Why This Matters for a Founder

A pitch *is* an argument: "You should invest in my idea" is a claim, and everything else in a pitch is reasons and evidence supporting it. The paragraph structure you're learning today is the skeleton of every future pitch you'll write.

### Your Turn

Write a claim about a character (from Hatchet or another book) or a real-world issue you care about. Then write one full reason with a specific piece of evidence supporting it.$lesson$,
  'W.6.1', 'Write arguments to support claims with clear reasons and relevant evidence.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Precise Language — Small Project: Sensory Snapshot', 11, 'practice',
  $lesson$## Small Project: Sensory Snapshot

Vague writing is forgettable. Precise, sensory writing is what makes a reader feel like they're standing right next to your narrator. This project builds that muscle directly.

### What Makes Language "Precise"?

Compare these two sentences:

- Vague: "It was cold and he was scared."
- Precise: "The wind cut through his jacket like it wasn't there, and his hands shook too hard to tie the knot."

The second version doesn't *tell* us cold and scared — it *shows* specific, sensory proof of both.

### The Five Senses Toolkit

For any scene, ask what a character would:

- **See** (specific visual detail, not just "it was dark")
- **Hear** (specific sounds)
- **Feel** (physical sensation, texture, temperature)
- **Smell** (often overlooked, but powerful)
- **Taste** (when relevant)

### Your Task

Write a "sensory snapshot" — a single tightly-written paragraph (100-150 words) describing one moment of tension or discovery, either from Brian's experience in Hatchet or from an original scene of your own. Use at least **3 of the 5 senses**, and avoid vague words like "nice," "bad," "good," or "scary" — replace every one with something specific and precise.

### Why This Matters

Precise language isn't just for stories. A product description, a marketing pitch, or a college essay that uses vague language ("our product is really good") gets ignored. Specific, sensory, precise language ("our product cuts setup time from twenty minutes to under two") is what actually persuades people.$lesson$,
  'W.6.3d, L.6.3', 'Use precise words and phrases, relevant descriptive details, and sensory language to convey experiences and events.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Unit 3 Quiz: Narrative & Argument Writing', 12, 'quiz',
  $lesson$## Unit 3 Quiz: Narrative & Argument Writing

This quiz checks your understanding of narrative structure, argument claims/reasons/evidence, and precise sensory language. For the short answer question, write in complete, specific sentences.$lesson$,
  'W.6.1, W.6.3, L.6.3', 'Unit 3 assessment covering narrative structure, argument writing basics, and precise/sensory language.', 20
);

-- ============================= UNIT 4 =============================

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Conducting Short Research Projects', 13, 'lesson',
  $lesson$## Research: Answering Your Own Real Question

Every great research project starts with real curiosity, not just an assignment. This lesson builds the habits you'll use for every research project for the rest of your time at Su Mira.

### Step 1: Ask a Focused Question

"Wilderness survival" is a topic, not a question. "What are the three most important priorities in the first 24 hours after being stranded, and why?" is a **focused research question** you can actually answer well.

### Step 2: Find Credible Sources

Not all sources are equal. Ask:

- Who wrote this, and what's their expertise?
- Is this information current and accurate?
- Does more than one source agree on the key facts?

### Step 3: Take Organized Notes

Use a simple system: for each source, note the key facts *and* where they came from, so you can give credit and double-check later. Group notes by subtopic as you go, not just in the order you found them.

### Step 4: Look for Patterns Across Sources

If two or three sources agree on the same key point, that's a strong sign it belongs in your final piece. If sources disagree, that's worth noting too — it might become part of your argument.

### Why This Matters for a Founder

Every successful product starts with research: understanding a real problem before proposing a solution. The habit of asking a focused question and checking multiple credible sources is exactly what separates a founder with real market insight from one who's just guessing.

### Your Turn

Write one focused research question about a topic connected to Hatchet, survival, or another topic you're curious about. Then identify what would count as a credible source to help you answer it.$lesson$,
  'W.6.7-8', 'Conduct short research projects to answer a question, drawing on several sources and generating additional related, focused questions.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'Presenting Claims & Findings', 14, 'lesson',
  $lesson$## Turning Research Into a Presentation People Actually Remember

Great research deserves a great presentation. Whether it's a class presentation, a school pitch, or someday a real business meeting, how you present your findings matters as much as the findings themselves.

### Structuring a Strong Presentation

1. **Hook** — start with a surprising fact, question, or short story that earns attention
2. **Claim/main point** — tell your audience clearly what you found or believe
3. **Supporting details** — 2-3 of your strongest, most specific pieces of evidence (not everything you found — just the best of it)
4. **So what?** — explain why this matters to your audience specifically
5. **Clear close** — end with a memorable final line, not just "that's it"

### Delivery Matters Too

- **Eye contact** connects you to your audience
- **Pacing** — slow down on your most important point
- **Volume and clarity** — speak like you believe what you're saying
- **Visual aids** should support you, not replace you — don't just read slides word for word

### The "Elevator Pitch" Version

Practice condensing your entire presentation into 30 seconds. If you can't explain your main point that fast, it usually means the point itself isn't focused enough yet — go back and sharpen it.

### Why This Matters

This is the exact skill behind every future class presentation, college interview, and — yes — startup pitch. Presenting isn't a "soft skill" extra; it's often the difference between a great idea that goes nowhere and one that gets funded, published, or noticed.

### Your Turn

Outline a 5-part presentation (hook, claim, 2-3 details, so-what, close) for the research question you wrote in the last lesson, even if you haven't finished the research yet.$lesson$,
  'SL.6.4', 'Present claims and findings, sequencing ideas logically and using pertinent descriptions, facts, and details to accentuate main ideas or themes.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6')),
  'MAJOR PROJECT 2 (CAPSTONE): Founder''s Story', 15, 'practice',
  $lesson$## Capstone Project: Founder's Story

This is it — the project that pulls together everything you've built this semester: narrative structure, precise language, and presenting with confidence.

### Your Task

Write and present a personal narrative "origin story," styled the way an entrepreneur might describe how their venture began. Think about how founders of companies you know (or invent one) describe the moment they realized they needed to build something, and the early struggle before things worked.

### Your Story Should Include

1. **A clear "before" moment** — what was normal, before the idea or challenge appeared (your exposition)
2. **The trigger** — the specific moment, problem, or realization that started everything
3. **At least one real setback or struggle** — no origin story is a straight line; show something that didn't go as planned
4. **Precise, sensory details** — at least one moment written with specific, concrete language (not vague summary)
5. **A reflection or "resolution"** — what you learned, or how you (or your invented founder) came out the other side

### This Can Be Real or Invented

You can write about a real moment from your own life (a time you started something, solved a problem, or changed your mind about something important), or you can invent a founder character and their origin story. Either way, the structure and craft matter most.

### Presenting Your Story

Prepare to read or present a 1-2 minute excerpt of your story aloud, using what you learned about presentation delivery — eye contact, pacing, and a strong close.

### Deliverable

Submit your full written narrative (300-500 words) plus a one-sentence "pitch" version of your origin story, the kind you'd say if someone asked "so how did this all start?" and you only had 15 seconds to answer.$lesson$,
  'W.6.3, SL.6.4-5', 'Write narratives using effective technique and well-structured sequences; present claims using appropriate eye contact, volume, and clear pronunciation.', 40
);

-- ============================= QUESTIONS =============================

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Plot & Character: Meeting Brian Robeson' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'Which part of plot structure introduces the characters and setting before the main conflict begins?', '["Climax", "Exposition", "Resolution", "Falling Action"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Plot & Character: Meeting Brian Robeson' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Which of the following is NOT one of the four ways authors reveal character?', '["What a character says and thinks", "The chapter number", "What a character does", "How other characters react to them"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Plot & Character: Meeting Brian Robeson' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Describe Brian''s situation and emotional state at the start of the story, using at least one specific detail.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='How Setting Shapes Survival Decisions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'Which of these is part of "setting"?', '["A character''s internal thoughts", "The time period and place of a story", "The main conflict", "The theme"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Setting Shapes Survival Decisions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'In Hatchet, the wilderness setting mainly functions as a...', '["Peaceful backdrop with no effect on the plot", "Force that creates problems the character must solve", "Symbol with no real impact on events", "Minor detail the author rarely returns to"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Setting Shapes Survival Decisions' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Describe one specific challenge the setting creates for Brian and one decision he makes in response.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Analyzing Text Structure — Small Project: Survival Decisions Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'short_answer', 'List 3 problems from the story and Brian''s first attempt to solve each one.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Text Structure — Small Project: Survival Decisions Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'short_answer', 'For each problem, explain what Brian learned and what changed as a result.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Analyzing Text Structure — Small Project: Survival Decisions Chart' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Describe the overall pattern you notice in how Brian solves problems across the episodes you charted.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hatchet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'What is the correct order of the five parts of plot structure?', '["Climax, Exposition, Rising Action, Falling Action, Resolution", "Exposition, Rising Action, Climax, Falling Action, Resolution", "Exposition, Climax, Rising Action, Resolution, Falling Action", "Resolution, Rising Action, Climax, Exposition, Falling Action"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hatchet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Which best describes how setting functions in Hatchet?', '["It has no real effect on the plot", "It creates the problems that drive Brian''s decisions and growth", "It only matters in the first chapter", "It is identical to the theme of the book"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hatchet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'multiple_choice', 'Which of these is an example of citing textual evidence?', '["I think Brian is brave.", "Brian seems like a normal kid.", "Brian starts a fire using sparks from his hatchet striking a rock, after several failed attempts.", "The book is about survival."]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hatchet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 4, 'multiple_choice', 'Authors reveal character primarily through all of the following EXCEPT:', '["Dialogue and thoughts", "Actions", "The book''s page count", "Reactions of other characters"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Unit 1 Quiz: Reading Literature — Hatchet' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Reading Literature — Hatchet' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 5, 'short_answer', 'Using at least one specific detail from the text, explain how Brian changes from the beginning of the story to where you''ve currently read.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Finding Central Ideas in Informational Text' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'The central idea of an informational text is best described as...', '["The topic of the text", "The main point the author wants you to understand", "The first sentence of the text", "A list of all the facts in the text"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Finding Central Ideas in Informational Text' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Which strategy is LEAST helpful for finding a central idea?', '["Reading titles and headings", "Noticing repeated ideas", "Only reading the very last sentence", "Checking details against your idea"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Finding Central Ideas in Informational Text' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'State a central idea (in one sentence) for a survival-skill topic of your choice, plus two supporting details.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Using Context Clues & Word Parts' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'The prefix "hypo-" most likely means:', '["Above/over", "Under/below", "Around", "Against"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Using Context Clues & Word Parts' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Which type of context clue is used here: "Unlike the abundant fish in the lake, food on land was scarce"?', '["Definition clue", "Contrast clue", "Example clue", "No clue given"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Using Context Clues & Word Parts' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Find 2 unfamiliar words from something you''re reading and explain how context clues or word parts helped you figure out their meaning.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='How Informational Texts Are Organized' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'Which signal words point to a cause-and-effect structure?', '["First, next, then", "Because, therefore, as a result", "Unlike, similarly", "Problem, solution"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Informational Texts Are Organized' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'A step-by-step guide to building a fire is most likely organized using which structure?', '["Compare and contrast", "Sequence/chronological", "Cause and effect", "Description only"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Informational Texts Are Organized' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Identify the organizational structure of a text you''ve recently read and name two signal words that helped you identify it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Survival Guide Startup' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'short_answer', 'State your chosen survival skill and your guide''s central idea in one clear sentence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Survival Guide Startup' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'short_answer', 'Write your step-by-step or organized body content (at least 3 pieces of specific, accurate information).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Survival Guide Startup' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'List your 3 vocabulary words, each used in a sentence that makes the meaning clear from context.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Survival Guide Startup' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Reading Informational Text & Vocabulary' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 4, 'short_answer', 'Write your reflection: what was the hardest part of explaining something clearly to a total beginner?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Writing a Well-Structured Narrative' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'Which of the following is a "trigger event" in narrative structure?', '["The final resolution", "The moment that disrupts the normal situation and starts the real conflict", "A minor detail about setting", "The narrator''s name"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing a Well-Structured Narrative' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Why does Paulsen often use short, quick sentences during Hatchet''s most tense moments?', '["He ran out of things to say", "Short sentences can speed up pacing and build tension", "It''s a mistake in the writing", "Short sentences are easier to read aloud"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing a Well-Structured Narrative' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Draft an opening (150-250 words) establishing a normal situation and then a clear trigger event or problem.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Introducing Claims: The Basics of Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'Which of these is a strong, specific claim (not just an opinion)?', '["Brian is a good character.", "Hatchet is an interesting book.", "Brian''s greatest survival skill is his willingness to abandon a failed plan quickly.", "I liked the ending."]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Introducing Claims: The Basics of Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'In argument writing, "evidence" refers to:', '["Your personal feelings about the topic", "Specific support for a reason, from text or research", "The claim itself", "A summary of the whole text"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Introducing Claims: The Basics of Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Write a claim about a character or real-world issue, plus one full reason with specific evidence.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Precise Language — Small Project: Sensory Snapshot' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'short_answer', 'Write your 100-150 word sensory snapshot paragraph, using at least 3 of the 5 senses.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Precise Language — Small Project: Sensory Snapshot' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'short_answer', 'Identify which vague words you avoided and what precise, specific language you used instead.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Narrative & Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'A well-structured narrative needs events that:', '["Can appear in any random order", "Follow a logical sequence, one leading to the next", "Skip the conflict entirely", "Only describe the setting"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Narrative & Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Which sentence uses precise, sensory language?', '["It was cold outside.", "The wind cut through his jacket like it wasn''t there.", "The weather was bad.", "He felt uncomfortable."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Narrative & Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'multiple_choice', 'A claim in argument writing should be:', '["Vague enough that no one could disagree", "Specific and arguable, supported by reasons and evidence", "Just a restatement of the topic", "The same as a summary"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Narrative & Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 4, 'multiple_choice', 'Which is an example of a reason (not evidence) supporting a claim?', '["\"On page 45, Brian starts a fire using sparks.\"", "\"Because he learns from every failed attempt.\"", "\"The book has 195 pages.\"", "\"I really liked this part.\""]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Unit 3 Quiz: Narrative & Argument Writing' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Narrative & Argument Writing' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 5, 'short_answer', 'Explain the difference between a claim and an opinion, using an example of each.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Conducting Short Research Projects' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'Which is a well-focused research question?', '["Wilderness survival", "What are the three most important priorities in the first 24 hours after being stranded, and why?", "Tell me about survival.", "Nature is interesting."]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conducting Short Research Projects' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'Which is a sign of a credible source?', '["It has an anonymous author with no expertise listed", "Multiple independent sources agree on the key facts", "It was written a long time ago and never updated", "It only presents one side with no evidence"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Conducting Short Research Projects' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Write one focused research question and describe what would count as a credible source to help answer it.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'multiple_choice', 'What should come first in a strong presentation?', '["A long list of every fact you found", "A hook that earns the audience''s attention", "A slide full of small text", "An apology for being nervous"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'multiple_choice', 'An "elevator pitch" is best described as:', '["A 30-second, focused summary of your main point", "A word-for-word reading of your notes", "A presentation with no clear point", "Something only used in Science class"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Outline your 5-part presentation: hook, claim, 2-3 details, so-what, and close.', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Founder''s Story' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 1, 'short_answer', 'Write the "before" moment of your origin story — what was normal before the trigger or idea appeared?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Founder''s Story' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 2, 'short_answer', 'Write the trigger moment and at least one real setback or struggle.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Founder''s Story' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 3, 'short_answer', 'Write your reflection/resolution: what did you (or your founder) learn, or how did things settle?', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 (CAPSTONE): Founder''s Story' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: Research & Capstone' AND course_id=(SELECT id FROM courses WHERE slug='venture-ela-6'))), 4, 'short_answer', 'Write your one-sentence "pitch" version of your origin story.', NULL, NULL);
