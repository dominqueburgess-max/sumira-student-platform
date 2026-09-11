-- Weekly-topic Classwork/Homework rollout for English 10. Adds a curated
-- video and 2 rigorous assignments (Classwork + Homework) to each of the
-- course's 9 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=lzKj-bLvrYQ',
    video_caption = 'Khan Academy: Figurative Language'
WHERE title = 'Understanding Allegory & Symbolism'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=QVmqK6V2eag',
    video_caption = 'Khan Academy: Comparing Text Structures'
WHERE title = 'How Structure Shapes Allegory'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=t4ODg51XNYk',
    video_caption = 'Khan Academy: Rhetorical Devices and Appeals'
WHERE title = 'Techniques of Propaganda & Persuasion'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=xUbgRHeCOyY',
    video_caption = 'Khan Academy: The Value of Historical Context'
WHERE title = 'Analyzing Historical Context of Political Texts'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=-_WqVNxEmiQ',
    video_caption = 'How to Find the Most Factual News Sources Using Media Bias Charts'
WHERE title = 'Evaluating Media Bias & Source Reliability'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=W4JfDtfwOug',
    video_caption = 'Khan Academy: Writing a Thesis Sentence'
WHERE title = 'Crafting a Strong Thesis & Organizing Complex Arguments'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=pfGmXVRS_HU',
    video_caption = 'How to Write a Narrative: Part 1'
WHERE title = 'Symbolism & Allegory in Your Own Narrative Writing'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=PLTOVoHbH5c',
    video_caption = 'Evaluating Sources for Credibility'
WHERE title = 'Evaluating Multiple Sources for Credibility'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Creating Multimedia Presentations'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 4:%');

-- Understanding Allegory & Symbolism ---------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Understanding Allegory & Symbolism' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 1:%')),
  'classwork', 'Allegory & Symbolism Practice Set',
  $t1$Using Animal Farm (or another allegorical text), complete all 4 problems.

1. Identify one symbolic element (a character, rule, or event) and state what real-world idea, group, or event it represents.
2. Support your interpretation with a specific detail from the text.
3. Identify one word or phrase in the text with strong connotative meaning (beyond its literal definition), and explain the emotional effect it creates.
4. Explain why reading "on two levels" (literal story + symbolic meaning) is necessary to fully understand an allegory.$t1$,
  $r1$Full credit requires a genuine, well-reasoned symbolic interpretation with textual support for problems 1-2; an accurate connotation analysis for problem 3; and a thoughtful explanation of dual-level reading for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Understanding Allegory & Symbolism' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 1:%')),
  'homework', 'Build a Mini-Allegory',
  $t2$Choose a real idea you want to comment on (a truth about power, fairness, ambition, or community).

1. Invent a simple story situation (2-3 sentences) that could work as an allegory for your chosen idea.
2. Identify what 2 specific elements of your story (a character, object, or event) would symbolically represent.
3. Explain how your allegory's structure (what happens first, what happens last) supports the point you're making.
4. Explain in 2-3 sentences why allegory can sometimes make a point more powerfully than saying it directly.$t2$,
  $r2$Meets expectations when: the invented allegory genuinely maps onto the chosen idea; the symbolic elements are clearly and specifically identified; the structural reasoning is sound; and the reflection shows real understanding of allegory's persuasive power.$r2$,
  20, 1
);

-- How Structure Shapes Allegory ----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='How Structure Shapes Allegory' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 1:%')),
  'classwork', 'Structural Analysis Practice Set',
  $t3$Using Animal Farm (or another allegorical text), complete all 4 problems.

1. Identify one instance of repetition with variation (a phrase or rule repeated but subtly altered).
2. Explain the effect this repetition-with-variation creates for the reader.
3. Compare the novel's beginning and ending. What argument does this structural "bookending" make?
4. Explain why the corruption in the story happens gradually rather than all at once, and what that pacing choice argues about how power actually changes hands.$t3$,
  $r3$Full credit requires a genuine repetition example with an accurate effect explanation for problems 1-2; a thoughtful beginning/ending comparison for problem 3; and a well-reasoned analysis of gradual pacing as argument for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='How Structure Shapes Allegory' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 1:%')),
  'homework', 'Design a Structural Choice That Makes an Argument',
  $t4$Plan a short allegorical story (don't write the whole thing) about gradual change (in power, trust, or values).

1. Describe your story's basic premise.
2. Plan one phrase or rule that will repeat with subtle variation throughout, and explain what shift each variation will represent.
3. Describe your beginning and your planned ending, and explain what structural argument the comparison will make.
4. Explain in 2-3 sentences why you chose gradual, incremental structure (rather than one big dramatic turn) to make your point.$t4$,
  $r4$Meets expectations when: the premise is clear and allegorically apt; the planned repetition device is specific with meaningful variations; the beginning/ending comparison makes a genuine structural argument; and the reflection shows real understanding of pacing as a meaning-making tool.$r4$,
  20, 1
);

-- Techniques of Propaganda & Persuasion -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Techniques of Propaganda & Persuasion' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%')),
  'classwork', 'Propaganda Techniques Practice Set',
  $t5$Complete all 5 problems.

1. "Everyone's already switched to this brand -- don't get left behind." Name the propaganda technique.
2. "Our opponent is a dangerous radical." Name the propaganda technique.
3. "Freedom. Progress. A better tomorrow." (with no specific policy mentioned) Name the propaganda technique.
4. A political ad only shows statistics that support its position, omitting contradicting data. Name the propaganda technique.
5. Find a real example of a propaganda technique (in an ad, political message, or historical source). Name the specific technique and explain how it works.$t5$,
  $r5$Full credit requires all 4 named techniques correctly identified for problems 1-4 (bandwagon, name-calling, glittering generalities, card stacking); and a genuine real-world example correctly named and explained for problem 5.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Techniques of Propaganda & Persuasion' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%')),
  'homework', 'Write and Then Defuse a Propaganda Message',
  $t6$Choose a real or invented product, cause, or idea.

1. Write a short persuasive message (2-3 sentences) that deliberately uses ONE named propaganda technique.
2. Identify which technique you used and explain exactly how it works to bypass fair evaluation.
3. Rewrite the same message as HONEST persuasion -- using genuine evidence and transparent reasoning instead.
4. Explain in 2-3 sentences the key difference between your propaganda version and your honest version.$t6$,
  $r6$Meets expectations when: the propaganda message genuinely and clearly uses the named technique; the technique explanation is accurate; the honest rewrite is a real, evidence-based alternative (not just softer wording); and the reflection accurately articulates the propaganda-vs-honest-persuasion distinction.$r6$,
  20, 1
);

-- Analyzing Historical Context of Political Texts -------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Historical Context of Political Texts' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%')),
  'classwork', 'Historical Context Practice Set',
  $t7$Choose a historical political text or speech. Complete all 4 problems.

1. Identify what events immediately preceded the text (a war, crisis, revolution, or major event).
2. Identify the intended audience and what they were likely feeling or fearing at the time.
3. Identify what the author or speaker stood to gain from the specific claims made.
4. Explain how this context changes or deepens your understanding of a specific passage in the text.$t7$,
  $r7$Full credit requires accurate historical context identified for problems 1-3 with specific, researched details; and a genuine, textually-grounded explanation of how context changes interpretation for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Historical Context of Political Texts' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%')),
  'homework', 'Connect Animal Farm to Its Historical Moment',
  $t8$Research the historical context Orwell was responding to when he wrote Animal Farm (the Russian Revolution and rise of Stalinism).

1. Summarize the key historical events Orwell was allegorizing.
2. Identify 2 specific elements in the novel (a character, event, or rule) and connect each to a specific historical figure or event.
3. Explain one way understanding this context deepens your reading of the novel.
4. Explain in 1-2 sentences why Orwell might have chosen to write an allegory rather than a direct historical essay to make this argument.$t8$,
  $r8$Meets expectations when: the historical summary is accurate; both novel-to-history connections are specific and correct; the deepened-understanding explanation is genuine (not generic); and the final reflection shows real understanding of why allegory can be a more effective vehicle than direct argument.$r8$,
  20, 1
);

-- Evaluating Media Bias & Source Reliability --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Media Bias & Source Reliability' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%')),
  'classwork', 'Media Bias Practice Set',
  $t9$Complete all 4 problems.

1. Explain the difference between a source having a "perspective" and a source being "unreliable."
2. "Officials clashed with protesters" vs. "Police brutally attacked peaceful demonstrators" -- describe the same event. Identify the loaded language in each and its likely effect on a reader.
3. List 2 specific things you'd check to evaluate a news source's funding and ownership.
4. Find a real news story covered by 2 different sources. Compare their word choice and what each emphasizes or omits.$t9$,
  $r9$Full credit requires an accurate perspective-vs-unreliability distinction for problem 1; correctly identified loaded language with accurate effect analysis for problem 2; 2 legitimate funding/ownership checks for problem 3; and a genuine, specific comparison of 2 real sources for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Media Bias & Source Reliability' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 2:%')),
  'homework', 'Build a Media Bias Comparison Report',
  $t10$Choose a current news topic covered by at least 2 different outlets with different apparent perspectives.

1. Summarize how each source covers the story.
2. Identify specific word choice differences between the two.
3. Identify what each source emphasizes and what each omits.
4. Evaluate which (if either) shows signs of bias distorting accuracy, versus honest differences in perspective.
5. Explain in 1-2 sentences a personal habit you could build to consistently evaluate media bias going forward.$t10$,
  $r10$Meets expectations when: both source summaries are accurate; the word-choice comparison is specific; the emphasis/omission analysis is genuine; the bias-vs-perspective evaluation is well-reasoned and fair; and the final reflection proposes a real, actionable habit.$r10$,
  20, 1
);

-- Crafting a Strong Thesis & Organizing Complex Arguments -------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Crafting a Strong Thesis & Organizing Complex Arguments' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 3:%')),
  'classwork', 'Thesis & Organization Practice Set',
  $t11$Complete all 4 problems.

1. Evaluate this thesis: "Propaganda is bad." Explain why it's too weak/obvious to be a strong thesis.
2. Rewrite it into a specific, defensible, non-obvious thesis about a propaganda technique's effectiveness.
3. Outline 3 supporting points for your new thesis, in a logical order (simplest to most complex).
4. Write one transition phrase connecting your first point to your second that shows a precise logical relationship (not just "also").$t11$,
  $r11$Full credit requires an accurate critique of the weak thesis for problem 1; a genuinely specific, defensible, non-obvious rewritten thesis for problem 2; 3 logically ordered supporting points for problem 3; and a transition phrase that shows genuine logical precision (not a generic connector) for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Crafting a Strong Thesis & Organizing Complex Arguments' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 3:%')),
  'homework', 'Build a Full Argument Outline',
  $t12$Choose a specific, defensible thesis about propaganda, media bias, or Animal Farm.

1. State your thesis, making sure it's specific, defensible but not obvious, and appropriately scoped.
2. Outline 3-4 supporting points in a logical sequence, building toward your most powerful point.
3. Write a precise transition phrase connecting each pair of consecutive points (not "also" or "another reason" -- use words like "consequently," "in contrast," or "building on this").
4. Explain in 2-3 sentences why the ORDER of your points matters, not just their content.$t12$,
  $r12$Meets expectations when: the thesis meets all 3 criteria (specific, defensible, appropriately scoped); the points are logically sequenced and build in complexity; the transitions show genuine, precise logical relationships; and the reflection demonstrates real understanding of ordering as a rhetorical choice.$r12$,
  20, 1
);

-- Symbolism & Allegory in Your Own Narrative Writing --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Symbolism & Allegory in Your Own Narrative Writing' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 3:%')),
  'classwork', 'Symbolic Writing Practice Set',
  $t13$Complete all 4 steps.

1. Identify a real idea you want to explore (a truth about power, fear, ambition, or community).
2. Invent a concrete story situation or image that could embody this idea (don't state the idea directly -- let the image imply it).
3. Explain how you would make the symbol recur with subtle variation, rather than mentioning it only once.
4. Explain why over-explaining the symbolic meaning directly would weaken the writing, using the "trust your reader" principle.$t13$,
  $r13$Full credit requires a genuine real idea for problem 1; a concrete, non-preachy symbolic image for problem 2; a specific recurrence plan for problem 3; and a thoughtful explanation of why subtlety strengthens symbolic writing for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Symbolism & Allegory in Your Own Narrative Writing' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 3:%')),
  'homework', 'Draft a Symbolic Story Opening',
  $t14$Draft the opening of a short story (200-250 words) built around one symbolic element representing a real idea.

1. Write your story opening, making sure it works as a genuinely engaging LITERAL story even for a reader who doesn't notice the symbolism.
2. Include your symbolic element at least twice, with some variation between mentions.
3. After your draft, state the real idea your symbol represents (without having stated it directly in the story).
4. Explain in 1-2 sentences one specific choice you made to avoid over-explaining the symbolism to your reader.$t14$,
  $r14$Meets expectations when: the opening works as a genuine literal story, not just a vehicle for the symbol; the symbolic element appears at least twice with meaningful variation; the stated underlying idea is coherent with what's on the page; and the reflection shows genuine restraint and craft awareness.$r14$,
  20, 1
);

-- Evaluating Multiple Sources for Credibility -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Multiple Sources for Credibility' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 4:%')),
  'classwork', 'CREDIBLE Checklist Practice Set',
  $t15$Choose 2 sources on the same topic. Complete all 4 problems.

1. Apply the CREDIBLE checklist (credentials, recency, evidence, design/purpose, independent verification, bias check, logical consistency, editing) to Source 1. Note strengths and weaknesses.
2. Apply the same checklist to Source 2.
3. Decide which (if either) you'd cite in serious research, and explain your reasoning using at least 3 specific checklist categories.
4. Identify one category where a source could score well but still be misleading overall, and explain why.$t15$,
  $r15$Full credit requires a genuine, specific application of the checklist to both sources for problems 1-2; a well-reasoned citation decision referencing specific categories for problem 3; and a thoughtful example for problem 4 showing nuanced understanding of the checklist's limits.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Multiple Sources for Credibility' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 4:%')),
  'homework', 'Vet Your Research Sources',
  $t16$For a research topic of your choice, find or invent 3 potential sources.

1. Apply the CREDIBLE checklist to each of the 3 sources.
2. Identify which source(s) fail multiple categories at once and should be treated with real skepticism or excluded.
3. Identify which source(s) you'd confidently cite, and explain why using specific checklist categories.
4. Explain in 2-3 sentences why vetting sources BEFORE using them (rather than after being challenged) is a professional research habit worth building now.$t16$,
  $r16$Meets expectations when: all 3 sources are genuinely evaluated against the checklist; the exclusion decision is well-reasoned; the citation decision references specific, accurate checklist categories; and the reflection shows real understanding of proactive source vetting as a professional habit.$r16$,
  20, 1
);

-- Creating Multimedia Presentations -------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Creating Multimedia Presentations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 4:%')),
  'classwork', 'Multimedia Choices Practice Set',
  $t17$Complete all 4 problems for your capstone project or another presentation topic.

1. Identify one point in your presentation that would benefit from a chart or graph, and explain what quantitative trend it would show.
2. Identify one point that would benefit from an image, and explain what concrete example or emotional resonance it would add.
3. Identify one multimedia mistake (overloading a slide, decorative-only visuals, or reading text off a slide) and explain how you'll avoid it.
4. Explain the general rule for WHEN to use multimedia (what it should do that words alone can't do as efficiently).$t17$,
  $r17$Full credit requires a genuine chart/graph opportunity with accurate reasoning for problem 1; a genuine image opportunity with accurate reasoning for problem 2; an honestly identified mistake with a real avoidance plan for problem 3; and an accurate statement of the "when to use multimedia" principle for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Creating Multimedia Presentations' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-10') AND title LIKE 'Unit 4:%')),
  'homework', 'Plan Your Capstone Multimedia Elements',
  $t18$For your capstone project (Modern Propaganda Exposed, or another presentation), plan your multimedia elements.

1. Identify 2-3 specific pieces of multimedia (charts, images, or clips) you'll use.
2. For each, explain exactly what point it supports that words alone wouldn't convey as effectively.
3. Explain how you'll avoid overloading any single moment with too much visual information.
4. Explain in 1-2 sentences how you'll make sure your visuals support (not replace) what you're saying aloud.$t18$,
  $r18$Meets expectations when: each multimedia choice is specific and genuinely tied to a real point in the presentation; the "supports vs. replaces" reasoning is sound for each; the overload-avoidance plan is concrete; and the final reflection shows real understanding of multimedia as support, not decoration.$r18$,
  20, 1
);
