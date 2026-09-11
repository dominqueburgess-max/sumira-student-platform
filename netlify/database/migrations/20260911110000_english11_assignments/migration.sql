-- Weekly-topic Classwork/Homework rollout for English 11. Adds a curated
-- video and 2 rigorous assignments (Classwork + Homework) to each of the
-- course's 9 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=D2FFijvA00I',
    video_caption = 'Khan Academy: Developing Themes'
WHERE title = 'Analyzing the American Dream Through Symbol & Setting'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=GGS3NcmAZnw',
    video_caption = 'Khan Academy: A Story''s Point of View'
WHERE title = 'Unreliable Narration & Narrative Perspective'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=5ZiAvxKXmws',
    video_caption = 'Founding Documents (High School/College Level)'
WHERE title = 'Analyzing Foundational American Rhetoric'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=_11QgROQ9mY',
    video_caption = 'Khan Academy: How Parts of an Argument Make a Whole'
WHERE title = 'Evaluating Complex Arguments & Premises'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=l3yWmXbC36s',
    video_caption = 'Khan Academy: Analyzing Tone Through Word Choice'
WHERE title = 'Analyzing Word Choice & Rhetorical Effect at the Advanced Level'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Tq_BoPJsv-4',
    video_caption = 'Khan Academy: Citing Evidence in Literary Analysis'
WHERE title = 'Building a Sustained Literary Argument'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=yL1uD-N12b4',
    video_caption = 'How to Develop Your Writer''s Voice'
WHERE title = 'Advanced Narrative Voice & Style'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=71-GucBaM8U',
    video_caption = 'Scribbr: How to Develop a Strong Research Question'
WHERE title = 'Independent Research: Formulating a Thesis-Driven Inquiry'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Adapting Speech for Purpose, Audience, and Task'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 4:%');

-- Analyzing the American Dream Through Symbol & Setting ---------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing the American Dream Through Symbol & Setting' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 1:%')),
  'classwork', 'Symbol & Setting Practice Set',
  $t1$Using The Great Gatsby (or another novel with deliberate setting/symbol use), complete all 4 problems.

1. Identify one recurring symbol. State what it appears to mean at its FIRST appearance.
2. Identify a LATER appearance of the same symbol. Explain how its meaning has shifted or deepened.
3. Describe 2 distinct settings in the novel and what each represents about wealth, status, or morality.
4. Explain how a character's movement between these settings marks a shift in the story's stakes.$t1$,
  $r1$Full credit requires an accurate first-appearance meaning for problem 1; a genuine, specific shift analysis (not the same meaning restated) for problem 2; 2 accurately characterized settings for problem 3; and a specific, textually-supported movement analysis for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing the American Dream Through Symbol & Setting' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 1:%')),
  'homework', 'Build a Symbol That Develops Across a Setting',
  $t2$Plan (don't fully write) an original story exploring a version of the American Dream (or another culturally significant idea).

1. Invent a recurring symbol and describe its meaning at first appearance.
2. Describe how that symbol's meaning will shift or deepen by a later point in the story.
3. Invent 2 distinct settings that represent different relationships to your chosen idea (wealth, status, opportunity, or belonging).
4. Explain in 2-3 sentences how you'll use your character's movement between settings to mark a shift in stakes.$t2$,
  $r2$Meets expectations when: the symbol's evolving meaning is genuinely tracked, not static; the 2 settings are meaningfully distinct in what they represent; and the movement-between-settings plan shows real understanding of setting as an active thematic tool, not mere backdrop.$r2$,
  20, 1
);

-- Unreliable Narration & Narrative Perspective ------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Unreliable Narration & Narrative Perspective' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 1:%')),
  'classwork', 'Unreliable Narrator Practice Set',
  $t3$Using The Great Gatsby (or another novel with a subjective narrator), complete all 4 problems.

1. Identify a claim the narrator makes about themselves (e.g., Nick's claim to be "one of the few honest people").
2. Identify one moment where the narrator's own actions seem to contradict that self-description.
3. Explain what other evidence in the novel complicates or contradicts the narrator's framing of another character or event.
4. Explain why the narrator might be unreliable about SOME things while still trustworthy about others -- unreliability is a spectrum, not all-or-nothing.$t3$,
  $r3$Full credit requires an accurate self-description claim for problem 1; a genuine contradicting action for problem 2; specific complicating evidence for problem 3; and a thoughtful explanation of partial/spectrum unreliability for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Unreliable Narration & Narrative Perspective' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 1:%')),
  'homework', 'Write an Unreliable Narrator Passage',
  $t4$Write a short passage (150-200 words) narrated by a character who unintentionally reveals their own bias or self-interest.

1. Write the passage in first person, having the narrator make a confident claim about themselves or someone else.
2. Include at least one detail that subtly contradicts or complicates that claim, without the narrator acknowledging it.
3. After your passage, explain what an attentive reader would notice that the narrator doesn't seem to notice about themselves.
4. Explain in 1-2 sentences why unreliable narration requires more active reading than a straightforward, trustworthy narrator.$t4$,
  $r4$Meets expectations when: the narrator's self-serving claim is clear and specific; the contradicting detail is genuinely present but not over-explained by the narrator; the reader-noticing explanation accurately identifies the gap; and the reflection shows real understanding of the active reading unreliable narration demands.$r4$,
  20, 1
);

-- Analyzing Foundational American Rhetoric -------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Foundational American Rhetoric' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%')),
  'classwork', 'Foundational Rhetoric Practice Set',
  $t5$Choose a foundational American document or piece of rhetoric about opportunity or equality. Complete all 4 problems.

1. State its central claim about opportunity or equality -- what exactly is promised, and to whom?
2. Identify one rhetorical strategy it uses to make this claim persuasive and enduring.
3. Identify one specific way this promise was historically limited or unevenly applied at the time it was written.
4. Identify one later writer, speech, or movement that invoked or reinterpreted this rhetoric to extend its promise to a group originally excluded.$t5$,
  $r5$Full credit requires an accurate central claim; a correctly identified rhetorical strategy with reasoning; an honest, historically accurate limitation analysis; and a genuine, accurate example of later reinterpretation.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Foundational American Rhetoric' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%')),
  'homework', 'Connect Foundational Rhetoric to Gatsby''s Skepticism',
  $t6$Choose a foundational American document about opportunity or equality.

1. State its central claim.
2. Explain how The Great Gatsby can be read as a skeptical response to this claim -- does the novel show the promise holding up, or failing, for Gatsby specifically?
3. Cite one specific piece of textual evidence from the novel supporting your reading.
4. Explain in 2-3 sentences why reading a canonical document alongside a canonical novel gives you a richer understanding of the American Dream as a genuinely contested idea, not a settled one.$t6$,
  $r6$Meets expectations when: the central claim is accurate; the connection to the novel's skepticism is specific and well-reasoned; the textual evidence genuinely supports the claim; and the reflection shows real understanding of contested cultural ideas.$r6$,
  20, 1
);

-- Evaluating Complex Arguments & Premises --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Complex Arguments & Premises' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%')),
  'classwork', 'Complex Argument Evaluation Practice Set',
  $t7$Choose a complex, multi-part argument (an op-ed or policy essay). Complete all 4 problems.

1. State the argument's overall thesis precisely.
2. Identify one of its sub-arguments and evaluate whether it holds up individually.
3. Identify the premise underlying that sub-argument. Is it explicit or hidden? Would a fair-minded reader accept it?
4. Evaluate whether the argument seriously engages with its strongest opposing evidence, or selectively ignores it.$t7$,
  $r7$Full credit requires an accurate, precise thesis statement; a genuine sub-argument evaluation for problem 2; correct identification and fair evaluation of the underlying premise for problem 3; and an honest assessment of counterevidence engagement for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Complex Arguments & Premises' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%')),
  'homework', 'Stress-Test a Sophisticated Argument of Your Own',
  $t8$Write a multi-part argument (2-3 sub-arguments) about a genuinely complex, debatable topic.

1. State your overall thesis precisely.
2. Write your 2-3 sub-arguments, each with its own premise and evidence.
3. Identify the strongest possible counterevidence against your WEAKEST sub-argument, and honestly evaluate whether your argument survives it.
4. Explain in 2-3 sentences what you'd need to change or strengthen if your argument doesn't fully survive that counterevidence.$t8$,
  $r8$Meets expectations when: the thesis is precise and the sub-arguments are genuinely distinct with real premises; the identified counterevidence is genuinely strong (not a weak strawman); the self-evaluation is honest even if it reveals a weakness; and the final reflection shows real intellectual honesty about argument revision.$r8$,
  20, 1
);

-- Analyzing Word Choice & Rhetorical Effect at the Advanced Level ---------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Word Choice & Rhetorical Effect at the Advanced Level' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%')),
  'classwork', 'Precision Word Choice Practice Set',
  $t9$Complete all 4 problems.

1. Compare "claimed" vs. "insisted" vs. "argued" in the sentence "The senator ___ the policy would help workers." Explain the distinct shade of meaning each creates.
2. Find a passage with a deliberate pattern of word choice (words sharing a connotation, used repeatedly). Identify the pattern.
3. Explain the cumulative rhetorical effect this pattern creates across the passage (not just what one word does).
4. Choose one word from the passage and explain what would be LOST if the author had used a close synonym instead.$t9$,
  $r9$Full credit requires 3 genuinely distinct shade-of-meaning explanations for problem 1; an accurate identified pattern for problem 2; a real cumulative-effect analysis (not a single-word restatement) for problem 3; and a specific synonym-comparison analysis for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Word Choice & Rhetorical Effect at the Advanced Level' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 2:%')),
  'homework', 'Build a Word-Choice Pattern On Purpose',
  $t10$Write a persuasive paragraph (5-6 sentences) about a topic of your choice.

1. Deliberately choose a consistent connotative pattern of words to describe one side of your topic (e.g., words associated with instability, or words associated with strength).
2. Write your paragraph using this pattern consistently.
3. Underline or list the specific words that form your pattern.
4. Explain in 2-3 sentences the cumulative rhetorical effect you were trying to create, and why a reader might not consciously notice the pattern while still being persuaded by it.$t10$,
  $r10$Meets expectations when: the word-choice pattern is genuinely consistent and deliberate; the paragraph reads naturally while still executing the pattern; the identified words accurately reflect the pattern; and the reflection shows real understanding of how cumulative, subtle word choice shapes reader perception.$r10$,
  20, 1
);

-- Building a Sustained Literary Argument ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building a Sustained Literary Argument' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 3:%')),
  'classwork', 'Interpretive Claim Practice Set',
  $t11$Complete all 4 problems using The Great Gatsby or another novel you're studying.

1. Write an OBSERVATION (not yet an argument) about a character or theme.
2. Turn that observation into a specific, debatable INTERPRETIVE CLAIM that requires defending.
3. Choose one piece of textual evidence and integrate it smoothly into your own sentence (not dropped in as a standalone quote).
4. Write 1-2 sentences of analysis immediately following your evidence, explaining exactly how it supports your specific claim.$t11$,
  $r11$Full credit requires a genuine observation-to-argument transformation (not just a reworded observation) for problems 1-2; smoothly integrated evidence (not a floating quote) for problem 3; and analysis that connects specifically to the claim, not a generic restatement, for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building a Sustained Literary Argument' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 3:%')),
  'homework', 'Write a Full Sustained Argument Paragraph',
  $t12$Write one full paragraph (6-8 sentences) defending an interpretive claim about The Great Gatsby (or another novel).

1. State your interpretive claim clearly at the start.
2. Include at least 2 pieces of textual evidence, each integrated smoothly into your own sentences.
3. Follow each piece of evidence with specific analysis connecting it back to your claim (not left to speak for itself).
4. Make sure every sentence in the paragraph does real work toward proving your specific claim, not just discussing the text generally.
5. Explain in 1-2 sentences the difference between "sustaining" an argument across a paragraph and just listing related observations.$t12$,
  $r12$Meets expectations when: the claim is specific and debatable; both pieces of evidence are smoothly integrated; each is followed by real analysis, not left unexplained; every sentence serves the argument (no drift into general discussion); and the reflection accurately articulates what "sustained" argumentation means.$r12$,
  20, 1
);

-- Advanced Narrative Voice & Style -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Advanced Narrative Voice & Style' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 3:%')),
  'classwork', 'Voice Analysis Practice Set',
  $t13$Using a passage from The Great Gatsby (or another stylistically distinctive text), complete all 4 problems.

1. Describe the sentence rhythm (short and punchy, or long and flowing) and its effect.
2. Describe the diction (formal/casual, concrete/abstract, plain/ornate) with specific word examples.
3. Identify one characteristic type of image or comparison the author tends to use.
4. Describe the author's apparent attitude toward the subject (ironic distance, earnest sincerity, wry humor) and cite evidence.$t13$,
  $r13$Full credit requires an accurate rhythm description with effect explained for problem 1; a specific, example-supported diction analysis for problem 2; a genuine characteristic image type identified for problem 3; and an accurate, evidence-supported attitude analysis for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Advanced Narrative Voice & Style' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 3:%')),
  'homework', 'Write in a Deliberately Chosen Voice',
  $t14$Write a passage (150-200 words) in a deliberately chosen voice (formal and ornate, spare and direct, or wry and ironic).

1. Write your passage, maintaining the chosen voice consistently throughout.
2. Identify 2-3 specific techniques you used to create that voice (sentence rhythm, diction, characteristic imagery, or attitude).
3. Explain how your techniques would need to change if you rewrote the SAME content in a completely different voice.
4. Explain in 1-2 sentences the difference between "imitating" a writer's voice and "developing your own" voice using techniques you noticed in their work.$t14$,
  $r14$Meets expectations when: the passage genuinely and consistently executes the chosen voice; the identified techniques are specific and accurate; the alternative-voice comparison shows real understanding of how technique choices change; and the reflection shows genuine insight into imitation versus development.$r14$,
  20, 1
);

-- Independent Research: Formulating a Thesis-Driven Inquiry -----------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Independent Research: Formulating a Thesis-Driven Inquiry' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 4:%')),
  'classwork', 'Topic-to-Thesis Practice Set',
  $t15$Complete all 4 steps.

1. State a broad topic you're genuinely interested in.
2. Narrow it into a specific, researchable question.
3. Propose a possible thesis (a specific, evidence-supported claim) you might argue after researching -- clearly labeled as a STARTING hypothesis, not a locked-in conclusion.
4. Identify what kind of evidence would need to exist to CHALLENGE your possible thesis, not just confirm it.$t15$,
  $r15$Full credit requires a genuine broad topic; a specific, researchable (not overly broad) question; a real starting hypothesis clearly framed as provisional; and specific, plausible challenging evidence identified for problem 4 (not just more confirming evidence restated).$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Independent Research: Formulating a Thesis-Driven Inquiry' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 4:%')),
  'homework', 'Design Your Own Inquiry Process',
  $t16$Choose a research topic connected to your capstone project or a personal interest.

1. State your narrowed research question.
2. Propose your starting hypothesis/possible thesis.
3. Plan at least one checkpoint where you'll deliberately revisit and possibly revise your thesis based on what you've learned.
4. Deliberately identify one source or type of evidence that might CHALLENGE your current thinking, and commit to seeking it out rather than avoiding it.
5. Explain in 2-3 sentences why confirmation bias is a genuine risk in research, and how your plan above specifically guards against it.$t16$,
  $r16$Meets expectations when: the question and hypothesis are specific and genuine; the revision checkpoint is concretely planned; the challenging-evidence commitment is specific, not vague; and the reflection shows real understanding of confirmation bias and how the plan counters it.$r16$,
  20, 1
);

-- Adapting Speech for Purpose, Audience, and Task ---------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Adapting Speech for Purpose, Audience, and Task' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 4:%')),
  'classwork', 'Audience Adaptation Practice Set',
  $t17$Take one idea from your research (or a topic of your choice). Complete all 4 parts.

1. Draft a 30-second "elevator pitch" version for someone you just met.
2. Draft a formal presentation opening (2-3 sentences) for a classroom audience.
3. Identify 2 specific things that changed between the two versions (word choice, level of detail, formality, structure).
4. Explain what stayed CONSTANT between both versions -- your core substance and honesty.$t17$,
  $r17$Full credit requires 2 genuinely distinct versions appropriate to their stated context; 2 specific, accurate identified changes; and an accurate identification of what remained constant, showing real understanding of adaptation vs. misrepresentation.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Adapting Speech for Purpose, Audience, and Task' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-11') AND title LIKE 'Unit 4:%')),
  'homework', 'Adapt Your Idea for Three Real Contexts',
  $t18$Take one idea from your research. Prepare 3 versions.

1. Write a formal 3-minute presentation opening for a classroom.
2. Write a 30-second "elevator pitch" for someone you just met.
3. Write a short paragraph version (4-5 sentences) for a scholarship or college application.
4. Explain what changed across all 3 (purpose, audience assumptions, formality, length) and what stayed constant.
5. Explain in 2-3 sentences why this adaptability is a skill colleges, employers, and audiences specifically value, beyond just "being a good writer."$t18$,
  $r18$Meets expectations when: all 3 versions are genuinely distinct and appropriate to their stated context; the cross-version comparison is specific and accurate; and the final reflection shows real understanding of why audience-adaptive communication is a distinct, valuable skill.$r18$,
  20, 1
);
