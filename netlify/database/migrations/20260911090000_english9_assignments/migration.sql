-- Weekly-topic Classwork/Homework rollout for English 9. Adds a curated
-- video and 2 rigorous assignments (Classwork + Homework) to each of the
-- course's 9 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=tW9TG22U3Go',
    video_caption = 'Khan Academy: Character Actions in Stories'
WHERE title = 'Analyzing Complex Characters & Moral Growth'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=XIfYK4tpl2Y',
    video_caption = 'Khan Academy: How POV Affects Readers'
WHERE title = 'Point of View & Narrative Distance in Coming-of-Age Stories'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=t4ODg51XNYk',
    video_caption = 'Khan Academy: Rhetorical Devices and Appeals'
WHERE title = 'Analyzing Author''s Purpose & Rhetoric in Nonfiction'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=d7fWHXVW4Vo',
    video_caption = 'How Do Hidden Assumptions Affect Argument Validity?'
WHERE title = 'Evaluating Premises, Purposes, and Arguments'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=uhXLW4bU-pI',
    video_caption = 'Khan Academy: All Men Are Created Equal'
WHERE title = 'Analyzing Seminal U.S. Documents'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=G2YuUCKxnK8',
    video_caption = 'How to Write a Counterclaim Paragraph & Defend With Rebuttal'
WHERE title = 'Writing Sophisticated Arguments: Addressing Counterclaims'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=pfGmXVRS_HU',
    video_caption = 'How to Write a Narrative: Part 1'
WHERE title = 'Narrative Craft: Multiple Plot Lines & Pacing'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=-OBeL7PVfJ8',
    video_caption = 'Summary vs. Synthesis: What''s the Difference?'
WHERE title = 'Research: Synthesizing Multiple Sources'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Delivering a Persuasive Presentation'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 4:%');

-- Analyzing Complex Characters & Moral Growth ------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Complex Characters & Moral Growth' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 1:%')),
  'classwork', 'Complex Character Practice Set',
  $t1$Using To Kill a Mockingbird (or another novel with a morally complex character), complete all 4 problems.

1. Choose a character whose understanding of courage, prejudice, or justice changes. Describe their view BEFORE the change.
2. Identify the specific experience or event that triggers the change.
3. Describe their view AFTER the change, citing a specific detail or line.
4. Explain why this character is "complex" rather than simply good or bad -- what contradiction or tension exists in them?$t1$,
  $r1$Full credit requires accurate before/after views with textual support for problems 1 and 3; a genuine, specific triggering experience for problem 2; and a thoughtful complexity analysis (identifying real contradiction, not just "they're nice") for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Complex Characters & Moral Growth' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 1:%')),
  'homework', 'Write a Complex Character Sketch',
  $t2$Invent an original character (or use a real person you know, keeping details general) who resists easy "good or bad" labeling.

1. Describe the character's stated values or self-image.
2. Describe one contradiction: a moment or tendency where their actions don't match their stated values.
3. Describe one experience that could push this character toward moral growth.
4. Explain in 2-3 sentences why complex characters (in fiction or in real leadership) are more relatable and more useful to study than purely "good" or "bad" ones.$t2$,
  $r2$Meets expectations when: the character has genuine, specific values and a real contradiction (not just a flaw mentioned in passing); the growth-triggering experience is plausible and specific; and the reflection shows real understanding of why moral complexity matters for realistic character study.$r2$,
  20, 1
);

-- Point of View & Narrative Distance in Coming-of-Age Stories ---------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Point of View & Narrative Distance in Coming-of-Age Stories' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 1:%')),
  'classwork', 'Narrative Distance Practice Set',
  $t3$Complete all 4 problems.

1. Define narrative distance in your own words.
2. Identify one moment in To Kill a Mockingbird (or another coming-of-age novel) where the adult narrator's understanding seems to shape how a childhood event is told.
3. Explain what would be LOST if the novel were narrated purely from the child's immediate point of view, with no adult reflection.
4. Explain what would be LOST if the novel were narrated purely from the adult's distant, fully-processed point of view, with no childhood immediacy.$t3$,
  $r3$Full credit requires an accurate definition for problem 1; a genuine, specific textual example for problem 2; and thoughtful, distinct answers (not the same point repeated) for problems 3 and 4 that show real understanding of what each perspective uniquely contributes.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Point of View & Narrative Distance in Coming-of-Age Stories' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 1:%')),
  'homework', 'Write a Memory With Two Narrative Distances',
  $t4$Choose a real or invented memory from childhood or early adolescence.

1. Write the memory (100-150 words) as if narrated by your immediate, in-the-moment younger self, with no adult reflection.
2. Write the SAME memory (100-150 words) as if narrated by your current self looking back, with adult understanding woven in.
3. Identify 2 specific differences between the two versions (what's included, what's understood differently).
4. Explain in 2-3 sentences which version feels more "true" to you, and why neither one alone tells the complete story.$t4$,
  $r4$Meets expectations when: both versions describe the same underlying memory but are genuinely distinct in voice and understanding; the identified differences are specific and accurate; and the reflection shows real understanding of how narrative distance shapes meaning.$r4$,
  20, 1
);

-- Analyzing Author's Purpose & Rhetoric in Nonfiction -----------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Author''s Purpose & Rhetoric in Nonfiction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%')),
  'classwork', 'Rhetorical Choices Practice Set',
  $t5$Choose a nonfiction text (an essay, speech, or article). Complete all 4 problems.

1. State the author's purpose (the goal: inform, persuade, entertain, or a combination).
2. Identify the text's structure (chronological, cause/effect, comparison, etc.) and explain why that structure suits the purpose.
3. Identify the text's tone and one specific word choice that creates it.
4. Identify one thing the author emphasizes and one thing the author downplays or omits, and explain why that choice serves the purpose.$t5$,
  $r5$Full credit requires an accurate purpose statement; a correctly identified structure with sound reasoning connecting it to purpose; an accurate tone identification with a specific supporting word choice; and a thoughtful emphasis/omission analysis connected to purpose.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Author''s Purpose & Rhetoric in Nonfiction' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%')),
  'homework', 'Make the Same Rhetorical Choices Yourself',
  $t6$Choose a real issue you want to persuade someone about.

1. State your purpose specifically (who are you persuading, and to do or believe what?).
2. Choose a structure (chronological, cause/effect, comparison, or problem/solution) and explain why it fits your purpose.
3. Write a short paragraph (4-5 sentences) using that structure, with a deliberately chosen tone.
4. Explain what you chose to emphasize and what you chose to downplay or leave out, and why.
5. Explain in 1-2 sentences what you learned about rhetorical choice-making by doing it yourself instead of just analyzing someone else's.$t6$,
  $r6$Meets expectations when: the purpose is specific and clear; the structure choice is well-reasoned; the paragraph genuinely executes the chosen structure and tone; the emphasis/omission choices are deliberate and explained; and the reflection shows genuine insight from the writing process.$r6$,
  20, 1
);

-- Evaluating Premises, Purposes, and Arguments --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Premises, Purposes, and Arguments' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%')),
  'classwork', 'Hidden Premises Practice Set',
  $t7$Complete all 4 problems.

1. "We should adopt this new technology because it's more efficient." Identify the hidden premise (the unstated assumption that must be true for this argument to work).
2. Evaluate whether that hidden premise actually holds up -- is "more efficient" always the right priority? Explain.
3. "This candidate has the most experience, so they'll be the best leader." Identify the hidden premise.
4. Find a real argument (an ad, editorial, or speech). Identify one stated premise and one hidden premise, and evaluate whether each holds up.$t7$,
  $r7$Full credit requires the correct hidden premise identified for problems 1 and 3 with sound reasoning; a genuine, thoughtful evaluation (not just "yes/no") for problem 2; and a real argument with both a stated and hidden premise correctly identified and evaluated for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Premises, Purposes, and Arguments' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%')),
  'homework', 'Surface the Hidden Premise in Your Own Argument',
  $t8$Choose an argument you genuinely believe (about your venture, a policy, or any debatable topic).

1. State your argument's conclusion clearly.
2. State your stated premise(s) -- the reasons you'd normally give.
3. Identify a HIDDEN premise in your own argument -- something you're assuming without stating it.
4. Honestly evaluate whether that hidden premise actually holds up, or whether it's more debatable than you initially assumed.
5. Explain in 1-2 sentences why surfacing your own hidden premises makes you a stronger, more self-aware arguer.$t8$,
  $r8$Meets expectations when: the argument and stated premises are genuine and specific; the hidden premise identified is a real unstated assumption (not just a restated premise); the evaluation is honest, even if it reveals a weakness; and the reflection shows genuine self-awareness about argumentation.$r8$,
  20, 1
);

-- Analyzing Seminal U.S. Documents ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Seminal U.S. Documents' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%')),
  'classwork', 'Seminal Document Practice Set',
  $t9$Choose a seminal U.S. document related to rights or justice (the Declaration of Independence, the Gettysburg Address, or another you've studied). Complete all 4 problems.

1. State the document's central claim about rights, justice, or government.
2. Identify one rhetorical strategy it uses (appeal to shared values, natural rights, precedent, or urgency) and give a specific example.
3. Identify who was included and who was excluded from the document's vision at the time it was written.
4. Identify one later speech, law, or movement that drew on this document's language or ideas.$t9$,
  $r9$Full credit requires an accurate central claim; a correctly identified rhetorical strategy with a specific textual example; an honest, historically accurate inclusion/exclusion analysis; and a genuine, accurate example of later influence.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Seminal U.S. Documents' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 2:%')),
  'homework', 'Connect a Seminal Document to To Kill a Mockingbird',
  $t10$Choose a seminal U.S. document related to justice, rights, or equality.

1. State the document's central claim.
2. Identify one specific way To Kill a Mockingbird explores the gap between this document's stated ideals and the actual practice of justice in the novel's setting.
3. Explain whether you think the novel suggests this gap has closed, narrowed, or remains -- using evidence from the novel.
4. Explain in 2-3 sentences why reading foundational documents alongside literature (rather than in isolation) deepens your understanding of both.$t10$,
  $r10$Meets expectations when: the central claim is accurate; the connection to the novel's exploration of the ideals-vs-practice gap is specific and evidence-based; the assessment of whether the gap has closed is thoughtful and textually supported; and the reflection shows genuine understanding of cross-genre reading's value.$r10$,
  20, 1
);

-- Writing Sophisticated Arguments: Addressing Counterclaims -----------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing Sophisticated Arguments: Addressing Counterclaims' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 3:%')),
  'classwork', 'Fair Counterclaim Practice Set',
  $t11$Complete all 4 parts using a debatable topic of your choice (or a claim about To Kill a Mockingbird).

1. State your claim clearly.
2. Write the STRONGEST, fairest version of the counterclaim (not a strawman -- a version a smart person could actually hold).
3. Acknowledge what's genuinely valid about the counterclaim, if anything.
4. Explain specifically why your claim still holds despite the counterclaim's validity -- through additional evidence, a distinction it misses, or a more important concern it overlooks.$t11$,
  $r11$Full credit requires a clear, specific claim; a genuinely strong, fair counterclaim (not an easily dismissed strawman); an honest acknowledgment of its validity; and a specific, substantive response explaining why the claim still holds.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Writing Sophisticated Arguments: Addressing Counterclaims' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 3:%')),
  'homework', 'Write a Full Sophisticated Argument Paragraph',
  $t12$Choose a claim about your venture idea or a real-world issue you care about.

1. State your claim.
2. Write 2 reasons with specific, relevant evidence.
3. Write the strongest, fairest counterclaim, choosing WHERE to place it (early, to clear the ground, or late, as a final rebuttal) and explain why you chose that placement.
4. Address the counterclaim fairly and specifically, explaining why your claim still holds.
5. Explain in 1-2 sentences how addressing a strong counterclaim (rather than a weak one) makes your argument more credible to a skeptical reader like an investor.$t12$,
  $r12$Meets expectations when: the claim and reasons are specific and well-supported; the counterclaim is genuinely strong and fairly stated; the placement choice is deliberate and justified; the response to the counterclaim is substantive; and the reflection shows real understanding of credibility-building through fair engagement.$r12$,
  20, 1
);

-- Narrative Craft: Multiple Plot Lines & Pacing --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Narrative Craft: Multiple Plot Lines & Pacing' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 3:%')),
  'classwork', 'Multiple Plot Lines Practice Set',
  $t13$Using To Kill a Mockingbird (or another novel with a subplot), complete all 4 problems.

1. Identify the main plot and one subplot in the novel.
2. Explain how the subplot reflects or contrasts with the main plot's theme.
3. Identify one moment where the two plot lines intersect or influence each other.
4. Explain how the story would be thematically weaker if the subplot were removed entirely.$t13$,
  $r13$Full credit requires accurately identified main plot and subplot; a genuine, specific thematic connection for problem 2; a real intersection point for problem 3; and a thoughtful explanation of the subplot's necessity for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Narrative Craft: Multiple Plot Lines & Pacing' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 3:%')),
  'homework', 'Plan a Story With a Main Plot and Subplot',
  $t14$Plan (but don't fully write) an original short story with a main plot and a subplot.

1. Describe your main plot: the central conflict and characters.
2. Describe your subplot: a secondary storyline involving different or overlapping characters.
3. Explain specifically how the subplot will reflect or contrast with the main plot's theme.
4. Describe how and when the two plot lines will intersect or come together by the story's end.
5. Explain in 1-2 sentences what pacing decision you'll need to make about how much space to give each plot line.$t14$,
  $r14$Meets expectations when: both plot lines are clearly described and distinct; the thematic relationship between them is specific and genuine (not superficial); the intersection point is planned and logical; and the pacing reflection shows real understanding of the craft challenge involved.$r14$,
  20, 1
);

-- Research: Synthesizing Multiple Sources ---------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Research: Synthesizing Multiple Sources' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 4:%')),
  'classwork', 'Synthesis Practice Set',
  $t15$Complete all 4 steps for a research question of your choice.

1. State your research question.
2. Find or invent 2 plausible sources addressing it, and state each one's key claim.
3. Identify where the 2 sources agree, disagree, or each add a different piece of the picture.
4. Write ONE synthesized sentence that combines both sources into your own new understanding (with an in-text citation idea for each), NOT a summary of each source separately.$t15$,
  $r15$Full credit requires a genuine, focused research question; 2 plausible sources with clear claims; an accurate agreement/disagreement/complementary analysis; and a real synthesis sentence (not "Source A says X, Source B says Y" restated) for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Research: Synthesizing Multiple Sources' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 4:%')),
  'homework', 'Write a Synthesized Research Paragraph',
  $t16$Choose a research question connected to your venture idea or a civic issue.

1. State your research question.
2. Find or invent 3 sources addressing different aspects of it.
3. Group the sources' claims by sub-theme (which sources address the same aspect of your topic?).
4. Write a full synthesized paragraph (5-6 sentences) organized by IDEA, not by source, with each idea supported by 1-2 of your sources (cited).
5. Explain in 1-2 sentences the difference between what you just wrote and a paper that summarizes each source one after another.$t16$,
  $r16$Meets expectations when: the research question is genuine and focused; the 3 sources address distinct but related aspects; the paragraph is organized by idea rather than source-by-source; each idea is genuinely supported by multiple sources; and the reflection accurately articulates the synthesis-vs-summary distinction.$r16$,
  20, 1
);

-- Delivering a Persuasive Presentation --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Delivering a Persuasive Presentation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 4:%')),
  'classwork', 'Persuasive Presentation Structure Practice Set',
  $t17$Using a research topic or venture idea, complete the 5-part structure.

1. Write a hook that establishes why this issue matters right now.
2. State your claim clearly.
3. List your strongest evidence, organized logically (not randomly).
4. Address the strongest counterclaim directly.
5. Write a clear call to action -- what do you want your audience to think or do differently?$t17$,
  $r17$Full credit requires a genuine, urgency-establishing hook; a clear claim; logically organized, genuinely strong evidence; a direct and substantive counterclaim response; and a specific, actionable call to action.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Delivering a Persuasive Presentation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-english-9') AND title LIKE 'Unit 4:%')),
  'homework', 'Adapt Your Presentation for Two Different Audiences',
  $t18$Using your presentation outline from class, adapt it for two different audiences.

1. Describe Audience 1 (e.g., your classmates) and what they likely already believe or care about.
2. Adjust your evidence and tone for Audience 1, and explain your choices.
3. Describe Audience 2 (e.g., a school board or community group) and what they likely already believe or care about.
4. Adjust your evidence and tone for Audience 2, and explain your choices.
5. Explain in 2-3 sentences why the SAME claim might need genuinely different evidence or framing depending on the audience.$t18$,
  $r18$Meets expectations when: both audiences are realistically and specifically described; the adaptations (evidence and tone) are genuinely different and well-justified for each; and the final reflection shows real understanding of audience-appropriate rhetoric.$r18$,
  20, 1
);
