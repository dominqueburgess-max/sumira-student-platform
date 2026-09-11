-- Weekly-topic Classwork/Homework rollout for Venture English 6, beginning the
-- "Venture English 6-12" batch. Adds a curated video and 2 rigorous
-- assignments (Classwork + Homework) to each of the course's 9 'lesson'-type
-- entries, replacing the old 3-question quiz as each lesson's primary work.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Zr1xLtSMMLo',
    video_caption = 'Khan Academy: The Elements of a Story'
WHERE title = 'Plot & Character: Meeting Brian Robeson'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=INFWXZ_tl4M',
    video_caption = 'Khan Academy: Making Inferences in Literary Texts'
WHERE title = 'How Setting Shapes Survival Decisions'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=G16TgYiRlKM',
    video_caption = 'How to Determine the Central Idea of Informational Text'
WHERE title = 'Finding Central Ideas in Informational Text'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=CiNggzdWkIo',
    video_caption = 'Khan Academy: Using Context Clues to Figure Out New Words'
WHERE title = 'Using Context Clues & Word Parts'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=D0YUpfLofgQ',
    video_caption = 'Khan Academy: The Structures of Informational Texts'
WHERE title = 'How Informational Texts Are Organized'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=pfGmXVRS_HU',
    video_caption = 'How to Write a Narrative: Part 1'
WHERE title = 'Writing a Well-Structured Narrative'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=NXO3KT8bne4',
    video_caption = 'Khan Academy: What Is an Argument?'
WHERE title = 'Introducing Claims: The Basics of Argument Writing'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=v4HhzvSgUpU',
    video_caption = 'Khan Academy: Evaluating a Source''s Reasoning and Evidence'
WHERE title = 'Conducting Short Research Projects'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Presenting Claims & Findings'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 4:%');

-- Plot & Character: Meeting Brian Robeson -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Plot & Character: Meeting Brian Robeson' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 1:%')),
  'classwork', 'Plot & Characterization Practice Set',
  $t1$Complete all 4 problems using the opening of Hatchet (or, if you haven't started the novel yet, any short story or chapter you're currently reading).

1. Identify the exposition of the story: who is the main character, where are they, and what is "normal" for them before the story's problem begins?
2. List 2 specific details the author gives you about the main character (something they say, do, think, or a detail about how they look or act).
3. For each detail in problem 2, explain what it tells you about the character (this is "characterization" -- using details to understand who someone is).
4. Predict one way the character's current situation might change soon, based on clues the author has already given you.$t1$,
  $r1$Full credit requires an accurate, specific exposition summary for problem 1; two genuine, specific details (not vague generalizations) for problem 2; a clear, textually-supported inference about character for each detail in problem 3; and a reasonable, text-supported prediction for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Plot & Character: Meeting Brian Robeson' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 1:%')),
  'homework', 'Write Your Own Exposition',
  $t2$Write the opening (150-200 words) of an original short story, focusing only on the exposition -- do NOT introduce the main conflict yet.

1. Introduce your main character and establish what's "normal" for them.
2. Include at least 2 specific characterization details (something they say, do, think, or a physical/behavioral detail).
3. Establish the setting (where and when).
4. After your exposition, write 2-3 sentences explaining what details you included on purpose to help a reader understand your character, and why you chose them.$t2$,
  $r2$Meets expectations when: the exposition clearly establishes character, setting, and "normal" without jumping into conflict; at least 2 genuine characterization details are present and specific; and the reflection accurately explains the writer's own characterization choices, not just a summary of the passage.$r2$,
  20, 1
);

-- How Setting Shapes Survival Decisions ---------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='How Setting Shapes Survival Decisions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 1:%')),
  'classwork', 'Setting & Plot Practice Set',
  $t3$Complete all 4 problems using Hatchet (or another story with a strong setting).

1. Describe the setting in specific detail (place, time, atmosphere).
2. Identify one specific problem the setting creates for the main character.
3. Describe how the character responds to that problem, and what the response reveals about them.
4. Explain, using evidence, why this problem could NOT have happened in a very different setting (e.g., a city apartment).$t3$,
  $r3$Full credit requires a specific, detailed setting description for problem 1; a genuine setting-caused problem (not just any plot event) for problem 2; a clear connection between the character's response and what it reveals about them for problem 3; and a well-reasoned explanation of setting-dependency for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='How Setting Shapes Survival Decisions' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 1:%')),
  'homework', 'Redesign the Setting, Change the Story',
  $t4$Take a story you know well (Hatchet, another book, or a movie) and imagine moving it to a completely different setting.

1. Describe the original setting and one key problem it creates for the main character.
2. Choose a new, very different setting (a different place, time period, or environment).
3. Explain how at least 2 major plot events would have to change because of the new setting.
4. Explain in 2-3 sentences what this exercise teaches you about how much setting really controls a story's plot, not just its backdrop.
5. Connect this idea to founders: explain briefly how a venture's "setting" (its market, resources, or environment) shapes the decisions a founder has to make.$t4$,
  $r4$Meets expectations when: the original setting and problem are accurately identified; the new setting is genuinely different; at least 2 plot changes are specific and logically follow from the new setting; and the reflection and founder connection both show real understanding, not surface-level restating.$r4$,
  20, 1
);

-- Finding Central Ideas in Informational Text -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Finding Central Ideas in Informational Text' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%')),
  'classwork', 'Central Idea Practice Set',
  $t5$Find or think of a short informational passage about a topic you're curious about (survival, sports, technology, or anything else).

1. State the topic of the passage in a few words.
2. State the central idea in one clear, complete sentence (not just the topic).
3. List 3 supporting details from the passage that connect back to your stated central idea.
4. Explain how you know your sentence is a central idea and not just a supporting detail.$t5$,
  $r5$Full credit requires a clearly stated topic; a central idea sentence that makes a genuine point (not just names the topic) for problem 2; 3 details that authentically support that central idea for problem 3; and an accurate explanation distinguishing central idea from detail for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Finding Central Ideas in Informational Text' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%')),
  'homework', 'Write Your Own Informational Paragraph',
  $t6$Write a short informational paragraph (100-150 words) about a topic you know well (a hobby, a skill, a place, or a survival tip).

1. Write your paragraph with a clear central idea and at least 3 supporting details.
2. After your paragraph, write your central idea as a separate, one-sentence statement.
3. List which details in your paragraph support that central idea, and explain how.
4. Explain in 1-2 sentences why writers should decide on their central idea BEFORE writing supporting details, not after.$t6$,
  $r6$Meets expectations when: the paragraph has a genuine, identifiable central idea with real supporting details; the extracted central-idea sentence accurately matches the paragraph's actual point; the detail-to-idea connections are explained clearly; and the final reflection shows genuine understanding of purposeful writing structure.$r6$,
  20, 1
);

-- Using Context Clues & Word Parts -----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Using Context Clues & Word Parts' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%')),
  'classwork', 'Context Clues Practice Set',
  $t7$Complete all 4 problems.

1. "The hikers were relieved to find a potable stream, since they could finally refill their water bottles safely." Using context, define "potable" and identify the clue type (definition, contrast, example, or general sense).
2. "Unlike the tranquil lake, the rapids downstream were violent and unpredictable." Define "tranquil" using the contrast clue, and explain your reasoning.
3. Break down the word "unbreakable" into its prefix, root, and suffix, and explain what each part contributes to the meaning.
4. Break down the word "misinformation" into its parts and explain the meaning that results.$t7$,
  $r7$Full credit requires the correct definition and clue type identified with reasoning for problems 1 and 2; and correct word-part breakdowns with accurate meaning contributions explained for problems 3 and 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Using Context Clues & Word Parts' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%')),
  'homework', 'Build a Mini Context-Clues Dictionary',
  $t8$Find 4 unfamiliar or content-specific words from anything you're reading this week (a book, article, or even a video game or hobby website).

1. For each word, write the full sentence where you found it.
2. Identify the context clue type (definition, contrast, example, or general sense) OR the word parts that helped you figure out the meaning.
3. Write your best definition for each word based on the clues.
4. Explain in 2-3 sentences why being able to figure out unfamiliar words from context (instead of stopping to look every one up) is a valuable skill for reading complex material quickly.$t8$,
  $r8$Meets expectations when: all 4 words are genuinely unfamiliar or content-specific with real sentences shown; the context clue type or word parts are correctly identified for each; the definitions are reasonable given the clues; and the final explanation shows genuine understanding of why this skill matters for reading efficiency.$r8$,
  20, 1
);

-- How Informational Texts Are Organized -------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='How Informational Texts Are Organized' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%')),
  'classwork', 'Text Structure Practice Set',
  $t9$Complete all 4 problems.

1. "Because the campfire had no dry fuel, it produced thick smoke instead of flame." Identify the text structure and name the signal word(s).
2. "Finding clean water in the wild is difficult; boiling, filtering, and using purification tablets are three possible solutions." Identify the text structure and name the signal word(s).
3. "First, gather dry tinder. Next, arrange it in a small pile. Then, add a spark. Finally, feed the flame with small sticks." Identify the text structure and name the signal word(s).
4. "Unlike a teepee-style fire, which needs less wood but burns faster, a log-cabin-style fire needs more wood but burns longer." Identify the text structure and name the signal word(s).$t9$,
  $r9$Full credit requires the correct structure name (cause/effect, problem/solution, sequence, compare/contrast) AND the correct signal word(s) identified for each of the 4 problems.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='How Informational Texts Are Organized' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 2:%')),
  'homework', 'Write in 2 Different Text Structures',
  $t10$Choose one topic you know well (a hobby, a skill, or a survival tip).

1. Write a short paragraph (3-5 sentences) about your topic using the CAUSE AND EFFECT structure, including at least one signal word.
2. Write a short paragraph (3-5 sentences) about the SAME topic using the PROBLEM AND SOLUTION structure, including at least one signal word.
3. Underline or note the signal words you used in each paragraph.
4. Explain in 2-3 sentences how writing about the same topic in 2 different structures changed what information you included or emphasized.$t10$,
  $r10$Meets expectations when: both paragraphs genuinely follow their assigned structure (not just contain the topic); each includes a real signal word; and the reflection shows genuine understanding of how structure choice shapes content and emphasis.$r10$,
  20, 1
);

-- Writing a Well-Structured Narrative ------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing a Well-Structured Narrative' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 3:%')),
  'classwork', 'Narrative Planning Practice Set',
  $t11$Complete all 4 steps to plan a narrative (you will not write the full story yet).

1. Write your beginning situation: who is the narrator/main character, and what's normal for them?
2. Write your problem or trigger event: what happens to disrupt the "normal"?
3. List 3-4 key events, in order, that happen as a result of the problem (this is your rising action).
4. Write your turning point and a one-sentence idea of how the story ends.$t11$,
  $r11$Full credit requires a clear, specific beginning situation; a genuine disruptive problem/trigger event; 3-4 events that follow logically from the problem and from each other, in order; and a clear turning point connected to a sensible ending idea.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing a Well-Structured Narrative' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 3:%')),
  'homework', 'Draft Your Narrative Opening',
  $t12$Using your plan from class (or a new one), draft the opening of your narrative (200-300 words).

1. Write your exposition and the problem/trigger event, using at least 2 specific sensory or descriptive details.
2. Include at least one piece of internal thought (what the character is thinking or feeling).
3. Vary at least one sentence's length intentionally to control pacing (a short, tense sentence during an intense moment, or a longer one during a calm moment).
4. After your draft, write 2-3 sentences identifying where you used sensory detail, internal thought, and sentence-length variation.$t12$,
  $r12$Meets expectations when: the draft includes a clear exposition and problem with genuine sensory/descriptive detail; internal thought is present and reveals character; sentence length is deliberately varied for effect; and the reflection accurately identifies where each technique was used.$r12$,
  20, 1
);

-- Introducing Claims: The Basics of Argument Writing ------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Introducing Claims: The Basics of Argument Writing' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 3:%')),
  'classwork', 'Claims & Evidence Practice Set',
  $t13$Complete all 4 problems.

1. Rewrite this opinion as a specific, arguable claim: "I think recycling is good."
2. Rewrite this opinion as a specific, arguable claim: "Brian is a strong character."
3. For your claim in problem 2, write one reason supporting it, with a specific piece of evidence (from Hatchet or another book).
4. Write a second reason supporting the same claim, with its own specific evidence.$t13$,
  $r13$Full credit requires each opinion rewritten into a genuinely specific, arguable claim (not just a rephrased opinion) for problems 1 and 2; and 2 distinct reasons, each with specific, relevant evidence, for problems 3 and 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Introducing Claims: The Basics of Argument Writing' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 3:%')),
  'homework', 'Write a Full Argument Paragraph',
  $t14$Choose a claim about a character (from any book) OR a real-world issue you care about.

1. State your claim in one clear, specific sentence.
2. Write your first reason, with a specific piece of evidence.
3. Write your second reason, with its own specific piece of evidence.
4. Write a closing sentence that restates why your claim matters.
5. Explain in 1-2 sentences how this paragraph structure is similar to a founder's investor pitch.$t14$,
  $r14$Meets expectations when: the claim is specific and arguable; both reasons are genuinely distinct and each has specific, relevant evidence; the closing sentence meaningfully restates significance (not just repeats the claim word-for-word); and the founder-pitch connection is accurate and specific.$r14$,
  20, 1
);

-- Conducting Short Research Projects ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conducting Short Research Projects' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 4:%')),
  'classwork', 'Research Question & Sources Practice Set',
  $t15$Complete all 4 steps.

1. Turn this topic into a focused research question: "wilderness survival."
2. Turn this topic into a focused research question: "starting a small business."
3. For your question in problem 1, list 2 things you would check to determine if a source is credible.
4. Explain why "wilderness survival" alone would make a poor research project topic, using what you know about focused questions.$t15$,
  $r15$Full credit requires genuinely focused, answerable research questions (not restated topics) for problems 1 and 2; 2 legitimate credibility criteria for problem 3; and an accurate explanation of why broad topics fail as research questions for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conducting Short Research Projects' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 4:%')),
  'homework', 'Plan Your Own Research Project',
  $t16$Choose a topic you're genuinely curious about (connected to Hatchet, survival, or anything else).

1. Write one focused research question about your topic.
2. Identify what would count as a credible source to help answer it, and explain why.
3. Write 2 subtopics or related questions your main question might lead you to explore.
4. Explain in 2-3 sentences how this research process (focused question, credible sources, following up on patterns) is similar to how a founder researches a business idea before launching it.$t16$,
  $r16$Meets expectations when: the research question is genuinely focused and answerable; the credibility criteria are specific and well-reasoned; the follow-up subtopics logically extend from the main question; and the founder-research connection is accurate and specific, not generic.$r16$,
  20, 1
);

-- Presenting Claims & Findings ------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 4:%')),
  'classwork', 'Presentation Structure Practice Set',
  $t17$Using the research question and findings you developed in the last lesson (or a new topic), complete all 4 parts.

1. Write a "hook" -- an opening line (a surprising fact, question, or short story) that would earn your audience's attention.
2. Write your claim/main point in one clear sentence.
3. List your 2-3 strongest, most specific supporting details (not everything you know -- just the best of it).
4. Write your "so what?" -- one sentence explaining why this matters to your specific audience.$t17$,
  $r17$Full credit requires a genuine attention-earning hook (not a generic opener) for problem 1; a clear, specific claim for problem 2; 2-3 details that are specific and truly the strongest available (not just any facts) for problem 3; and a "so what" that connects meaningfully to a specific audience for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-6') AND title LIKE 'Unit 4:%')),
  'homework', 'Write Your Full Presentation Outline',
  $t18$Write a complete 5-part presentation outline (hook, claim, 2-3 details, so-what, close) for your research topic.

1. Write your hook.
2. Write your claim/main point.
3. List your 2-3 strongest supporting details.
4. Write your "so what?"
5. Write a memorable closing line (not just "that's it" or "thank you").
6. Condense your entire presentation into a 30-second "elevator pitch" version, and explain what you had to cut and why.$t18$,
  $r18$Meets expectations when: all 5 outline parts are present, specific, and well-sequenced; the closing line is genuinely memorable rather than generic; and the 30-second elevator pitch keeps the core claim intact while showing thoughtful judgment about what to cut.$r18$,
  20, 1
);
