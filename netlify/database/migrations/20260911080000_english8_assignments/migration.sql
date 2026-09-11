-- Weekly-topic Classwork/Homework rollout for Venture English 8. Adds a
-- curated video and 2 rigorous assignments (Classwork + Homework) to each
-- of the course's 9 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=GGS3NcmAZnw',
    video_caption = 'Khan Academy: A Story''s Point of View'
WHERE title = 'Point of View & Social Perspective'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=v7QuOr1PP7o',
    video_caption = 'Khan Academy: Characters'' Thoughts and Feelings'
WHERE title = 'Dialogue & Characterization'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=S_xwx7BcqBw',
    video_caption = 'Evaluating Arguments: How to Spot Strong and Weak Claims'
WHERE title = 'Evaluating Claims & Evidence'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=JdGA0Fexab8',
    video_caption = 'Khan Academy: Comparing Two Accounts of the Same Topic'
WHERE title = 'Analyzing Conflicting Information'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=3klMM9BkW5o',
    video_caption = 'TED-Ed: How to Use Rhetoric to Get What You Want'
WHERE title = 'Rhetorical Techniques in Historical Speeches'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=mm7MeSc2akE',
    video_caption = 'Khan Academy: Formal and Informal Language'
WHERE title = 'Writing Arguments With Clear Reasons & Evidence'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=pfGmXVRS_HU',
    video_caption = 'How to Write a Narrative: Part 1'
WHERE title = 'Narrative Techniques: Pacing, Description, Reflection'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=71-GucBaM8U',
    video_caption = 'Scribbr: How to Develop a Strong Research Question'
WHERE title = 'Conducting Sustained Research Projects'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=4wiJpm43pGs',
    video_caption = 'Present With Confidence: Body Language & Voice'
WHERE title = 'Presenting With Confidence & Clarity'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 4:%');

-- Point of View & Social Perspective -------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Point of View & Social Perspective' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 1:%')),
  'classwork', 'Point of View Practice Set',
  $t1$Using The Outsiders (or another first-person novel), complete all 4 problems.

1. Identify one moment where the narrator's assumption about another character or group gets challenged or complicated.
2. Explain what caused the shift (a conversation, an event, new information).
3. Explain what the narrator's ORIGINAL assumption reveals about the limits of their point of view.
4. Predict how a character from the "other side" (the group the narrator was biased about) might tell this same moment differently.$t1$,
  $r1$Full credit requires a genuine, specific moment of shifted assumption for problem 1; an accurate cause for problem 2; a thoughtful analysis of the original bias's limits for problem 3; and a plausible, specific alternate-perspective retelling idea for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Point of View & Social Perspective' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 1:%')),
  'homework', 'Retell a Scene From a Different Point of View',
  $t2$Choose one scene from The Outsiders (or another book) told from one character's point of view.

1. Summarize the original scene and whose point of view it's told from.
2. Rewrite the same scene (150-200 words) from a DIFFERENT character's point of view -- someone with different knowledge, bias, or stakes in the moment.
3. Identify at least 2 specific details that changed because of the new point of view (what the new narrator notices, assumes, or feels differently).
4. Explain in 2-3 sentences what this exercise reveals about how much point of view shapes what counts as "the truth" of an event.$t2$,
  $r2$Meets expectations when: the original scene is accurately summarized; the rewritten version is genuinely told from a different, consistent point of view; at least 2 specific differences are identified and explained; and the reflection shows real understanding of how perspective shapes narrative "truth."$r2$,
  20, 1
);

-- Dialogue & Characterization -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Dialogue & Characterization' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 1:%')),
  'classwork', 'Dialogue Analysis Practice Set',
  $t3$Using The Outsiders (or another novel with strong dialogue), complete all 4 problems.

1. Choose one line of dialogue. Identify what the character explicitly says.
2. Explain what the character might actually mean or feel, if it's different from what they say directly.
3. Choose one specific incident (not dialogue) that reveals character. Explain what it reveals and why it's more convincing than a narrator simply describing the character's traits.
4. Identify one way dialogue reveals the class divide (or another social divide) between two characters in the story.$t3$,
  $r3$Full credit requires an accurately quoted line with a thoughtful "said vs. meant" analysis for problems 1-2; a genuine incident with a clear explanation of why "showing" is more convincing than "telling" for problem 3; and a specific, textually-supported observation about dialogue and social divide for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Dialogue & Characterization' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 1:%')),
  'homework', 'Write Dialogue That Reveals Character Without Stating It',
  $t4$Write a short dialogue exchange (8-12 lines) between two characters from different backgrounds (invented or from a book), without ever directly stating their personalities.

1. Write the dialogue exchange.
2. Include at least one moment where a character says something different from what they actually mean or feel.
3. After your dialogue, explain what a reader should be able to infer about each character's personality or background just from how they speak.
4. Explain in 2-3 sentences why "show, don't tell" through dialogue is a more powerful characterization tool than direct narrator description.$t4$,
  $r4$Meets expectations when: the dialogue is realistic and reveals character indirectly through word choice and subtext; the "said vs. meant" moment is genuinely present; the follow-up explanation accurately identifies the inferences a reader could make; and the reflection shows real understanding of "show, don't tell."$r4$,
  20, 1
);

-- Evaluating Claims & Evidence -----------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Claims & Evidence' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%')),
  'classwork', 'Evaluating Claims Practice Set',
  $t5$Complete all 4 problems using the 4-step evaluation framework (delineate, check evidence, look for gaps, consider what's missing).

1. "This supplement is proven to boost energy." Evaluate this claim using the framework -- what's missing or vague?
2. "Every successful entrepreneur dropped out of college." Evaluate this claim -- what's the reasoning flaw?
3. Rewrite the claim in problem 1 to be honest and well-supported (invent a plausible specific source/finding).
4. Find a real claim from an ad or article. Apply the full 4-step framework and identify one specific gap.$t5$,
  $r5$Full credit requires accurate identification of vagueness/missing proof for problem 1; correct identification of overgeneralization for problem 2; a genuinely improved, specific rewrite for problem 3; and a real, correctly-applied 4-step evaluation with a specific gap identified for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Claims & Evidence' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%')),
  'homework', 'Stress-Test Your Own Venture Claim',
  $t6$Think of a claim you might make about your venture idea (e.g., "customers will love this product").

1. State your claim.
2. Apply the 4-step evaluation framework to your OWN claim, honestly.
3. Identify at least one gap or weakness in your current reasoning or evidence.
4. Rewrite your claim to be more specific, honest, and well-supported (even if that means it's a smaller, more modest claim).
5. Explain in 1-2 sentences why founders should evaluate their own claims this rigorously, not just claims made by others.$t6$,
  $r6$Meets expectations when: the original claim is genuine (not a strawman); the framework is honestly applied to reveal a real weakness; the rewritten claim is meaningfully more specific and supportable; and the final reflection shows genuine understanding of self-scrutiny's business value.$r6$,
  20, 1
);

-- Analyzing Conflicting Information --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Conflicting Information' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%')),
  'classwork', 'Conflicting Sources Practice Set',
  $t7$Complete all 4 problems.

1. Source A says a diet trend is effective; Source B says it isn't. Both cite studies. List 2 possible reasons they might disagree (different populations, timeframes, definitions, funding).
2. Explain the difference between a conflict over FACTS versus a conflict over INTERPRETATION of the same facts.
3. Find two real sources that present conflicting information on the same topic. Identify specifically what they disagree about.
4. Investigate a possible reason for the disagreement you found in problem 3 (check dates, funding, definitions, or methods).$t7$,
  $r7$Full credit requires 2 plausible, specific reasons for disagreement in problem 1; an accurate fact-vs-interpretation distinction for problem 2; a genuine identified disagreement between 2 real sources for problem 3; and a well-reasoned investigation of the cause for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Conflicting Information' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%')),
  'homework', 'Write an Honest Account of a Real Disagreement',
  $t8$Find 2 real sources that disagree about a topic you're curious about (health, technology, history, or current events).

1. Summarize what each source claims.
2. Identify specifically where and how they disagree (facts, interpretation, or both).
3. Investigate and explain a plausible reason for the disagreement.
4. Write a short paragraph (4-5 sentences) that represents the disagreement honestly to a reader -- without pretending one side is obviously right if the conflict isn't actually resolved.
5. Explain in 1-2 sentences why honestly representing disagreement makes you MORE credible as a writer, not less.$t8$,
  $r8$Meets expectations when: both source summaries are accurate; the disagreement is specifically and correctly characterized; the investigated reason is plausible and well-reasoned; the honest-representation paragraph avoids false balance or false certainty; and the reflection shows genuine understanding of credibility through honesty.$r8$,
  20, 1
);

-- Rhetorical Techniques in Historical Speeches -------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Rhetorical Techniques in Historical Speeches' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%')),
  'classwork', 'Rhetorical Appeals Practice Set',
  $t9$Choose a well-known historical speech. Complete all 4 problems.

1. Identify one moment of ethos (credibility-building) and explain how it works.
2. Identify one moment of pathos (emotional appeal) and explain how it works.
3. Identify one moment of logos (logical/evidence-based appeal) and explain how it works.
4. Identify one additional technique (repetition, rhetorical question, parallel structure, or contrast) and explain its effect.$t9$,
  $r9$Full credit requires all 3 classical appeals correctly identified with accurate examples and explanations, plus one additional technique correctly identified with a clear explanation of its persuasive effect.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Rhetorical Techniques in Historical Speeches' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 2:%')),
  'homework', 'Write a Persuasive Paragraph Using All Three Appeals',
  $t10$Choose a cause or idea you genuinely want to persuade someone to support (real or venture-related).

1. Write one sentence establishing your ethos (why you or your source should be trusted on this).
2. Write one sentence using pathos (a genuine emotional appeal, not manipulative).
3. Write one sentence using logos (a specific fact, statistic, or logical point).
4. Combine all 3 into a short persuasive paragraph (5-6 sentences), plus one additional technique (repetition, rhetorical question, or parallel structure).
5. Explain in 1-2 sentences why combining all three appeals is more persuasive than relying on just one.$t10$,
  $r10$Meets expectations when: all 3 appeals are genuinely present and correctly executed (not just labeled); the combined paragraph reads as a coherent persuasive piece, not 3 disconnected sentences; an additional technique is used effectively; and the reflection shows real understanding of why combining appeals works better than any single one.$r10$,
  20, 1
);

-- Writing Arguments With Clear Reasons & Evidence --------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing Arguments With Clear Reasons & Evidence' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 3:%')),
  'classwork', 'Formal Argument Practice Set',
  $t11$Complete all 4 problems.

1. Rewrite this informal sentence in formal style: "This idea is basically a total game-changer, no cap."
2. Identify which of these two reasons is stronger evidence for the claim "Remote learning improves focus for some students": (a) "I feel more focused at home," or (b) "A 2022 study of 500 students found a 15% improvement in assignment completion when working in a quiet home environment." Explain why.
3. Write a claim and 2 reasons (each with specific evidence) in formal style, ordering your stronger reason last.
4. Identify one slang phrase or contraction in your own writing (from any recent assignment) and rewrite it formally.$t11$,
  $r11$Full credit requires an accurate formal rewrite for problem 1; correct identification of the stronger evidence with sound reasoning for problem 2; a genuine claim with 2 well-supported reasons in formal style, correctly ordered, for problem 3; and an accurate self-identified informalism with a correct formal rewrite for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing Arguments With Clear Reasons & Evidence' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 3:%')),
  'homework', 'Write a Full Formal Argument Paragraph',
  $t12$Choose a claim about a real-world issue or your venture idea.

1. State your claim in formal style.
2. Write your first reason with specific, relevant, and sufficient evidence.
3. Write your second (stronger) reason with its own specific evidence, placed last for maximum persuasive impact.
4. Write a closing sentence that restates your claim's significance, avoiding slang or overly casual phrasing throughout.
5. Explain in 1-2 sentences why formal style signals seriousness to a skeptical reader (like an investor or a school board).$t12$,
  $r12$Meets expectations when: the claim and both reasons are genuinely specific and well-supported; ordering places the stronger reason last for effect; the entire paragraph maintains consistent formal style; and the reflection shows real understanding of formality's persuasive function.$r12$,
  20, 1
);

-- Narrative Techniques: Pacing, Description, Reflection ---------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Narrative Techniques: Pacing, Description, Reflection' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 3:%')),
  'classwork', 'Narrative Techniques Practice Set',
  $t13$Complete all 4 problems.

1. Rewrite this vague description with specific, sensory detail: "The room was messy and gross."
2. Explain the difference between pacing a boring moment (fast, brief) and pacing a tense moment (slow, detailed), using an example of each from any story you know.
3. Write one sentence of narrator reflection (stepping back to consider meaning) that could follow this event: "She won the competition after months of practice."
4. Identify one moment from The Outsiders (or another book) that combines pacing, description, AND reflection, and explain how each technique contributes.$t13$,
  $r13$Full credit requires a genuinely specific, sensory rewrite for problem 1; accurate, example-supported pacing explanations for problem 2; a genuine reflective sentence (not just a restated fact) for problem 3; and an accurate, specific 3-technique analysis for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Narrative Techniques: Pacing, Description, Reflection' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 3:%')),
  'homework', 'Write a Narrative Passage Using All Three Techniques',
  $t14$Write a narrative passage (200-250 words) about a meaningful moment (real or invented).

1. Deliberately speed through unimportant moments in 1 sentence or less.
2. Slow down for the key moment using specific, sensory description (not generic adjectives).
3. End with a genuine moment of reflection -- the narrator considering what the experience meant.
4. After your passage, label which sentences show pacing choices, which show description, and which show reflection.$t14$,
  $r14$Meets expectations when: pacing is deliberately varied (fast for minor moments, slow for the key moment); the description is specific and sensory, not generic; the reflection genuinely interprets meaning rather than just restating the event; and the labeling accurately identifies each technique's location.$r14$,
  20, 1
);

-- Conducting Sustained Research Projects ----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conducting Sustained Research Projects' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 4:%')),
  'classwork', 'Research Question Refinement Practice Set',
  $t15$Complete all 4 steps.

1. State an initial research question about a topic you're genuinely curious about.
2. Explain one way this question might turn out to be too broad, and how you'd narrow it.
3. Explain one way you might discover your question is already well-answered elsewhere, and how you'd redirect it.
4. Write a revised, more focused version of your original question, as if you'd already done some initial reading.$t15$,
  $r15$Full credit requires a genuine initial question; realistic, specific reasoning about how/why it might need narrowing for problem 2; realistic reasoning about redirection for problem 3; and a meaningfully more focused revised question for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conducting Sustained Research Projects' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 4:%')),
  'homework', 'Plan a Multi-Round Research Process',
  $t16$Choose a self-generated research question (connected to a personal interest, a civic issue, or your venture idea).

1. State your initial research question.
2. Plan your research in 2 rounds: what would you search for in Round 1, and what new, more specific questions might Round 1 lead you to for Round 2?
3. Describe how you would take notes that track your OWN evolving thinking, not just facts from sources.
4. Explain in 2-3 sentences why refining your question partway through research produces better final work than locking in your first question and never revisiting it.$t16$,
  $r16$Meets expectations when: the initial question is genuine and focused; the 2-round plan shows realistic, logical progression from broad to specific; the note-taking approach genuinely captures evolving thinking (not just fact collection); and the reflection shows real understanding of iterative research value.$r16$,
  20, 1
);

-- Presenting With Confidence & Clarity --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Presenting With Confidence & Clarity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 4:%')),
  'classwork', 'Delivery Skills Practice Set',
  $t17$Complete all 4 parts.

1. Write your presentation's opening line for a topic of your choice.
2. Identify 2 specific signposting phrases you could use to help your audience follow your logic (e.g., "My second point is...").
3. List 2 specific delivery goals you personally need to work on (eye contact, volume, pacing, or body language), and explain why each matters for that specific goal.
4. Describe one technique for handling nerves during a presentation, and explain why it works.$t17$,
  $r17$Full credit requires a genuine, considered opening line; 2 real, usable signposting phrases; 2 specific, self-aware delivery goals with accurate reasoning; and an accurately described nerve-management technique with sound reasoning.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Presenting With Confidence & Clarity' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-8') AND title LIKE 'Unit 4:%')),
  'homework', 'Practice and Reflect on Your Delivery',
  $t18$Practice delivering your speech or presentation's opening line 5 times until it feels automatic (out loud, even if just to yourself).

1. Write your final opening line.
2. Describe how your delivery changed between attempt 1 and attempt 5 (more confident, smoother, better paced, etc.).
3. Identify 2 specific delivery goals you'll focus on improving (eye contact, volume, pacing, or body language) during your actual presentation.
4. Explain in 2-3 sentences why practicing an opening line specifically (rather than the whole speech generally) is an effective way to build overall presentation confidence.$t18$,
  $r18$Meets expectations when: the opening line is genuinely polished; the described change between attempts is specific and believable; the 2 delivery goals are specific and personally relevant; and the reflection shows real understanding of why a strong opening builds momentum for the rest of a presentation.$r18$,
  20, 1
);
