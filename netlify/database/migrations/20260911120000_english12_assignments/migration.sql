-- Weekly-topic Classwork/Homework rollout for English 12, completing the
-- "Venture English 6-12" batch. Adds a curated video and 2 rigorous
-- assignments (Classwork + Homework) to each of the course's 9
-- 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=imlwmNO9xlY',
    video_caption = 'Khan Academy: The Elements of a Drama'
WHERE title = 'Analyzing Dramatic Structure & Soliloquy'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=5EebAxgVKhY',
    video_caption = 'Okonkwo as a Tragic Hero: Analyzing the Tragic Hero Archetype'
WHERE title = 'Existential Themes & the Tragic Hero'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=uD5_2p-vUjs',
    video_caption = 'How to Analyze Arguments Like a Philosopher'
WHERE title = 'Analyzing Philosophical & Ethical Arguments in Nonfiction'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=v4HhzvSgUpU',
    video_caption = 'Khan Academy: Evaluating a Source''s Reasoning and Evidence'
WHERE title = 'Evaluating Reasoning in Public Discourse'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=-OBeL7PVfJ8',
    video_caption = 'Summary vs. Synthesis: What''s the Difference?'
WHERE title = 'Synthesizing Perspectives Across Texts and Time Periods'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Tq_BoPJsv-4',
    video_caption = 'Khan Academy: Citing Evidence in Literary Analysis'
WHERE title = 'Constructing a Thesis-Driven Literary Argument at the Senior Level'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=2l2FgUrln1A',
    video_caption = 'Khan Academy: Parallel Structure'
WHERE title = 'Writing With Stylistic Maturity: Syntax & Tone Control'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=71-GucBaM8U',
    video_caption = 'Scribbr: How to Develop a Strong Research Question'
WHERE title = 'Advanced Research Synthesis Across Disciplines'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Delivering a Capstone Presentation With Command'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 4:%');

-- Analyzing Dramatic Structure & Soliloquy --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Dramatic Structure & Soliloquy' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 1:%')),
  'classwork', 'Soliloquy & Structure Practice Set',
  $t1$Using Hamlet (or another play with soliloquies), complete all 4 problems.

1. Choose one soliloquy. Identify the private thought or conflict it reveals that other characters don't have access to.
2. Explain how this soliloquy shapes your understanding of the character differently than dialogue with other characters would.
3. Identify where in the play's overall structure (which act/scene) the central conflict is established, and where the tension reaches its peak.
4. Explain how the order and pacing of these structural beats shapes an audience's experience of mounting tension.$t1$,
  $r1$Full credit requires an accurate soliloquy analysis with genuine private-thought identification for problems 1-2; and an accurate structural mapping with thoughtful pacing analysis for problems 3-4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Dramatic Structure & Soliloquy' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 1:%')),
  'homework', 'Write an Original Soliloquy',
  $t2$Write an original soliloquy (150-200 words) for an invented character facing a genuine internal conflict.

1. Write your soliloquy, revealing a private thought or doubt the character wouldn't say aloud to other characters.
2. Include at least one moment of genuine uncertainty or contradiction (not a character who has everything figured out).
3. After your soliloquy, explain what this device let you reveal that dialogue with another character couldn't.
4. Explain in 1-2 sentences why drama relies on devices like soliloquy to reveal interiority, when a novel could just use narration.$t2$,
  $r2$Meets expectations when: the soliloquy reveals genuine internal conflict rather than simple exposition; uncertainty or contradiction is present; the reflection accurately explains what the device uniquely accomplishes; and the final explanation shows real understanding of drama's structural constraints.$r2$,
  20, 1
);

-- Existential Themes & the Tragic Hero ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Existential Themes & the Tragic Hero' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 1:%')),
  'classwork', 'Tragic Hero Practice Set',
  $t3$Using Hamlet (or another tragedy), complete all 4 problems.

1. Identify the tragic hero's admirable qualities.
2. Identify their specific tragic flaw, and explain how it's paradoxically connected to their admirable qualities (not a separate, unrelated weakness).
3. Identify 2 themes in the play that interact or reinforce each other. Explain the connection.
4. Reflect on whether you think the play resolves these themes neatly, or leaves them genuinely ambiguous -- with textual support either way.$t3$,
  $r3$Full credit requires genuine admirable qualities and a flaw that's shown to be connected (not separate) for problems 1-2; an accurate, specific theme-interaction analysis for problem 3; and a thoughtful, textually-supported ambiguity reflection for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Existential Themes & the Tragic Hero' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 1:%')),
  'homework', 'Design a Modern Tragic Hero',
  $t4$Invent a modern tragic hero (a character in a contemporary setting).

1. Describe their admirable qualities.
2. Describe their tragic flaw, making sure it's genuinely connected to (not separate from) their admirable qualities.
3. Describe the downfall their flaw would lead to.
4. Identify 2 existential or ethical questions your character's story would raise (about action vs. inaction, truth, mortality, or another enduring question).
5. Explain in 1-2 sentences why tragic heroes remain compelling even though we know from the start their flaw will likely cause their downfall.$t4$,
  $r4$Meets expectations when: the qualities and flaw are genuinely intertwined (not two unrelated traits); the downfall follows logically from the flaw; the identified existential questions are genuine and relevant; and the reflection shows real understanding of why tragedy remains compelling despite predictability.$r4$,
  20, 1
);

-- Analyzing Philosophical & Ethical Arguments in Nonfiction -----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Philosophical & Ethical Arguments in Nonfiction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%')),
  'classwork', 'Philosophical Argument Practice Set',
  $t5$Choose a philosophical or ethical text addressing a question resonant with Hamlet's dilemmas. Complete all 4 problems.

1. State the specific question the text addresses (defined precisely, not vaguely).
2. Identify the author's method of reasoning (logical argument, thought experiment, appeal to lived experience, or a combination).
3. Identify where the argument acknowledges its own limits or what it hasn't fully resolved.
4. Connect the text's approach to one specific moment in Hamlet, explaining what it illuminates or complicates about your reading of the play.$t5$,
  $r5$Full credit requires a precisely stated question for problem 1; an accurate method-of-reasoning identification for problem 2; a genuine, specific acknowledged limit for problem 3; and a well-reasoned, specific connection to the play for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Philosophical & Ethical Arguments in Nonfiction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%')),
  'homework', 'Write Your Own Philosophical Reflection',
  $t6$Choose a genuinely difficult ethical or existential question (connected to Hamlet's themes or your own life).

1. State the question precisely, defining its scope before attempting to answer it.
2. Present your own reasoning (logical argument, a thought experiment, or an appeal to lived experience).
3. Explicitly acknowledge one limit of your own reasoning -- something you haven't fully resolved.
4. Explain in 2-3 sentences why acknowledging your argument's limits makes it MORE credible, not less, to a serious reader.$t6$,
  $r6$Meets expectations when: the question is precisely defined; the reasoning is genuine and substantive; the acknowledged limit is honest and specific (not a throwaway disclaimer); and the reflection shows real understanding of intellectual humility's role in credibility.$r6$,
  20, 1
);

-- Evaluating Reasoning in Public Discourse -----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Reasoning in Public Discourse' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%')),
  'classwork', 'False Certainty Practice Set',
  $t7$Find a piece of public discourse (an op-ed, debate clip transcript, or panel discussion) on a genuinely contested issue. Complete all 4 problems.

1. Identify what's genuinely contested in the issue versus what's actually settled fact.
2. Evaluate whether the piece acknowledges legitimate complexity, or flattens it into false certainty. Explain your reasoning.
3. Identify whether emotional appeals are substituting for reasoning, or genuinely supplementing sound reasoning.
4. Describe what a thoughtful person on the other side would say, and evaluate whether the piece has actually engaged with that view.$t7$,
  $r7$Full credit requires an accurate contested-vs-settled distinction; a well-reasoned false-certainty evaluation with specific textual support; an honest emotional-appeals assessment; and a fair, substantive opposing-view analysis.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Reasoning in Public Discourse' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%')),
  'homework', 'Write a Genuinely Ambiguous Analysis',
  $t8$Choose a genuinely contested issue you have an opinion on.

1. State the issue and your general position.
2. Identify the STRONGEST evidence or reasoning on the OTHER side -- not a weak version, the real thing.
3. Honestly assess whether your position fully accounts for that evidence, or whether real uncertainty remains.
4. Write a short paragraph (4-5 sentences) that represents the issue's genuine complexity honestly, resisting the urge to force false certainty in either direction.
5. Explain in 1-2 sentences why acknowledging genuine ambiguity is a sign of rigorous thinking, not indecisiveness.$t8$,
  $r8$Meets expectations when: the opposing evidence identified is genuinely strong, not a strawman; the self-assessment is honest, even if uncomfortable; the final paragraph resists false certainty while still being substantive; and the reflection shows real understanding of ambiguity as intellectual rigor.$r8$,
  20, 1
);

-- Synthesizing Perspectives Across Texts and Time Periods --------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Synthesizing Perspectives Across Texts and Time Periods' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%')),
  'classwork', 'Cross-Era Synthesis Practice Set',
  $t9$Choose an enduring question connected to Hamlet's themes (how do we choose right action, what do we owe to truth, how does mortality shape meaning). Complete all 4 steps.

1. State your enduring question clearly.
2. Find 2 texts addressing it from meaningfully different time periods (centuries apart, when possible).
3. Identify what each era's treatment assumes or takes for granted that the other might not.
4. Identify one significant difference and one surprising constant between the two treatments.$t9$,
  $r9$Full credit requires a genuine enduring question; 2 texts that are meaningfully distant in time period; accurate era-specific assumptions identified for both; and a genuine, specific difference and constant identified for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Synthesizing Perspectives Across Texts and Time Periods' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 2:%')),
  'homework', 'Write a Cross-Era Synthesis Paragraph',
  $t10$Using your enduring question and 2 texts from the classwork (or new ones), write a synthesis paragraph.

1. State your enduring question.
2. Write a paragraph (6-8 sentences) that puts both eras' texts into genuine conversation -- not "Text A says X, Text B says Y" but a synthesized understanding of what's changed and what's constant.
3. Cite specific evidence from each text.
4. Explain in 2-3 sentences why certain human questions recur across every era despite (or because of) not having a final, settled answer.$t10$,
  $r10$Meets expectations when: the paragraph is genuinely synthesized (not source-by-source restated); specific evidence from both eras is cited; and the final reflection shows real understanding of why enduring questions persist across history.$r10$,
  20, 1
);

-- Constructing a Thesis-Driven Literary Argument at the Senior Level -----------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Constructing a Thesis-Driven Literary Argument at the Senior Level' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 3:%')),
  'classwork', 'Arguing About Ambiguity Practice Set',
  $t11$Using Hamlet, complete all 4 problems.

1. Identify a specific ambiguity or tension in the play that isn't neatly resolved.
2. Write a simple, resolution-forcing thesis about it (e.g., "Hamlet should have acted sooner").
3. Rewrite it into a sophisticated thesis arguing that the AMBIGUITY ITSELF is meaningful, rather than trying to resolve it.
4. Outline how an essay defending your sophisticated thesis would build in increasing sophistication (starting with a simple observation, then complicating it).$t11$,
  $r11$Full credit requires a genuine, real ambiguity identified for problem 1; an accurate simple thesis for problem 2; a genuinely more sophisticated ambiguity-embracing thesis for problem 3; and a logical increasing-sophistication outline for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Constructing a Thesis-Driven Literary Argument at the Senior Level' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 3:%')),
  'homework', 'Write a Senior-Level Argument Paragraph',
  $t12$Write one full paragraph (7-9 sentences) defending your sophisticated, ambiguity-embracing thesis from the classwork.

1. State your sophisticated thesis clearly.
2. Choose evidence that could seem to cut both ways, and carefully analyze it to show why it actually supports your specific interpretation.
3. Make sure the paragraph builds toward increasing nuance, not just accumulating evidence flatly.
4. Explain in 1-2 sentences why arguing FOR ambiguity is a more sophisticated move than forcing a text into false resolution.$t12$,
  $r12$Meets expectations when: the thesis is genuinely sophisticated and ambiguity-embracing; the chosen evidence is complex and carefully analyzed rather than one-sided; the paragraph structure builds in nuance; and the reflection shows real understanding of why ambiguity-arguments represent advanced literary thinking.$r12$,
  20, 1
);

-- Writing With Stylistic Maturity: Syntax & Tone Control --------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing With Stylistic Maturity: Syntax & Tone Control' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 3:%')),
  'classwork', 'Syntax & Tone Practice Set',
  $t13$Complete all 4 problems.

1. Rewrite this passage using varied sentence length for effect: "I walked into the room. It was dark. I was scared. Something moved in the corner. I froze."
2. Write a periodic sentence (one that withholds its main point until the end) about a topic of your choice.
3. Write a paragraph in a consistent, serious tone, then add ONE deliberate tonal shift (a moment of unexpected humor or a sudden serious turn) that's controlled, not accidental.
4. Read your paragraph from problem 3 aloud (or describe how it would sound) and explain whether the tonal shift feels purposeful or jarring, and why.$t13$,
  $r13$Full credit requires a genuinely improved, varied rewrite for problem 1; a correctly constructed periodic sentence for problem 2; a deliberate, controlled tonal shift for problem 3; and an honest, specific self-evaluation for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing With Stylistic Maturity: Syntax & Tone Control' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 3:%')),
  'homework', 'Revise for Syntax and Tone Control',
  $t14$Take a paragraph you've written earlier this semester (or write a new one, 5-7 sentences).

1. Read it aloud (or read it carefully) and identify where the sentence rhythms support your meaning versus fight against it.
2. Revise it specifically for sentence-length variation (add at least one short, blunt sentence and one longer, complex one).
3. Revise it for tone consistency, making sure your tone feels deliberate throughout rather than wobbling unintentionally.
4. Write a brief "before and after" comparison explaining exactly what you changed and why.$t14$,
  $r14$Meets expectations when: the revision shows genuine, deliberate sentence-length variation; the tone is more consistent or purposefully controlled after revision; and the before/after comparison accurately and specifically explains the craft choices made.$r14$,
  20, 1
);

-- Advanced Research Synthesis Across Disciplines --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Advanced Research Synthesis Across Disciplines' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 4:%')),
  'classwork', 'Cross-Disciplinary Research Practice Set',
  $t15$Identify a complex question relevant to your senior capstone. Complete all 4 steps.

1. State your core question.
2. Name 2 disciplines genuinely relevant to answering it fully (not just tangentially related).
3. Identify one point of genuine connection between how the 2 disciplines would approach the question.
4. Identify one point of genuine tension or disagreement between how the 2 disciplines would approach it.$t15$,
  $r15$Full credit requires a genuinely complex, cross-disciplinary question; 2 disciplines that are truly relevant (not superficially name-dropped); and a genuine, specific connection AND tension identified between them.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Advanced Research Synthesis Across Disciplines' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 4:%')),
  'homework', 'Draft a Cross-Disciplinary Research Plan',
  $t16$For your senior capstone question, draft a research plan drawing on 2 disciplines.

1. State your core question.
2. For each of your 2 disciplines, identify one credible type of source you'd seek out, respecting that field's own standards of evidence.
3. Describe how you'd look for genuine points of connection or tension between the disciplines, rather than writing parallel, unconnected summaries.
4. Explain in 2-3 sentences what conclusion your cross-disciplinary approach might reach that neither discipline alone could reach.$t16$,
  $r16$Meets expectations when: both disciplines' source types are appropriate and specific; the connection-seeking method is concrete, not vague; and the final reflection genuinely explains an insight only possible through synthesis, not surface-level combination.$r16$,
  20, 1
);

-- Delivering a Capstone Presentation With Command ---------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Delivering a Capstone Presentation With Command' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 4:%')),
  'classwork', 'Command & Poise Practice Set',
  $t17$For your capstone project, complete all 4 parts.

1. Identify 2 challenging questions someone might ask about your project.
2. Draft a thoughtful, honest response to each.
3. For one question you genuinely might not fully know the answer to, draft an honest response explaining what you'd say and how you'd find out.
4. Explain one way you'll practice explaining your most complex point in MULTIPLE different ways, so you're not dependent on one phrasing.$t17$,
  $r17$Full credit requires 2 genuinely challenging (not softball) questions with thoughtful responses; an honest "I don't know, but here's how I'd find out" response for problem 3; and a concrete practice plan for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Delivering a Capstone Presentation With Command' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-12') AND title LIKE 'Unit 4:%')),
  'homework', 'Rehearse for Command, Not Memorization',
  $t18$Rehearse your capstone presentation using the "command" standard, not memorization.

1. Practice explaining your single most complex point in 2 different ways (different phrasing, different examples).
2. Practice fielding one of your 2 challenging questions from the classwork out loud.
3. Identify one moment where you'll use a deliberate pause, and explain why that moment calls for it.
4. Explain in 2-3 sentences the difference between "command" (genuine authority, adaptable) and "memorized performance" (rigid, script-dependent), and which one you're aiming for.$t18$,
  $r18$Meets expectations when: both explanations of the complex point are genuinely different, not just reworded; the practiced question response is substantive; the identified pause has real rhetorical purpose; and the final reflection accurately and thoughtfully distinguishes command from memorization.$r18$,
  20, 1
);
