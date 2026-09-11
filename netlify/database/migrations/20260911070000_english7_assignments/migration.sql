-- Weekly-topic Classwork/Homework rollout for Venture English 7. Adds a
-- curated video and 2 rigorous assignments (Classwork + Homework) to each
-- of the course's 9 'lesson'-type entries.

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=MAu3e5GZo4k',
    video_caption = 'Khan Academy: Understanding Theme'
WHERE title = 'Understanding Theme Development'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=KC6WY06twwc',
    video_caption = 'Khan Academy: Character Change'
WHERE title = 'Character Development & Motivation'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=R_bgo8j6jxc',
    video_caption = 'Khan Academy: Analyzing an Author''s Purpose'
WHERE title = 'Determining Author''s Point of View & Purpose'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=L3eaXsALPAM',
    video_caption = 'Khan Academy: Analyzing Relationships in Informational Texts'
WHERE title = 'Analyzing Interactions Between Ideas'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=v4HhzvSgUpU',
    video_caption = 'Khan Academy: Evaluating a Source''s Reasoning and Evidence'
WHERE title = 'Evaluating Arguments & Evidence'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Was6whYtbC8',
    video_caption = 'Argumentative Writing: Master Claim, Counterclaim, and Rebuttal'
WHERE title = 'Building Claims & Counterclaims'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=PLTOVoHbH5c',
    video_caption = 'Evaluating Sources for Credibility'
WHERE title = 'Using Credible Sources'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=rwJnjHAY0Ug',
    video_caption = 'Gathering and Evaluating Credible Sources'
WHERE title = 'Conducting Multi-Source Research'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Presenting Claims & Findings'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 4:%');

-- Understanding Theme Development -------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Understanding Theme Development' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 1:%')),
  'classwork', 'Theme Development Practice Set',
  $t1$Using The Giver (or another novel you're reading), complete all 4 problems.

1. State the topic of the story in a few words (not the theme yet -- just the topic, like "conformity" or "memory").
2. Write a full theme statement: a specific, arguable insight the author develops about that topic (not just the topic itself).
3. Identify one early detail/hint in the story that plants the seed of this theme.
4. Identify one later moment that deepens or complicates the theme, and explain how it builds on the earlier hint.$t1$,
  $r1$Full credit requires a genuine topic (not confused with theme) for problem 1; a specific, arguable theme statement (not a one-word topic) for problem 2; an accurate early textual detail for problem 3; and a later moment that logically deepens the same theme, with a clear explanation of the connection, for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Understanding Theme Development' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 1:%')),
  'homework', 'Track a Theme Across a Story of Your Choice',
  $t2$Choose any book, show, or movie you know well.

1. Identify its topic and write a specific, arguable theme statement.
2. Trace the theme's development through 3 stages: an early hint, a turning point, and how it resolves (or remains open) at the end.
3. For each stage, cite a specific detail or moment as evidence.
4. Explain in 2-3 sentences why a well-developed theme is more persuasive or memorable than one that's simply stated outright in the first chapter.$t2$,
  $r2$Meets expectations when: the theme statement is specific and arguable; all 3 developmental stages are accurately identified with genuine textual evidence; and the final reflection shows real understanding of why gradual theme development is a more powerful storytelling choice.$r2$,
  20, 1
);

-- Character Development & Motivation --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Character Development & Motivation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 1:%')),
  'classwork', 'Character Motivation Practice Set',
  $t3$Using The Giver (or another novel), complete all 4 problems.

1. Identify one turning-point moment for the main character.
2. Explain specifically what the character wanted or believed BEFORE this moment.
3. Explain specifically what changed about what they want or believe AFTER this moment.
4. Go beyond a single-word answer: explain what the character wants "freedom from" and "freedom for" (or the equivalent for your chosen desire), using evidence.$t3$,
  $r3$Full credit requires a genuine turning-point moment for problem 1; specific (not vague) before/after motivation descriptions for problems 2 and 3; and a specific, evidence-based "freedom from / freedom for" style analysis (not a single-word answer) for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Character Development & Motivation' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 1:%')),
  'homework', 'Map a Character''s Motivation Like a Founder Studies a Customer',
  $t4$Choose a character from any story (or a real person you know well).

1. Describe their surface-level want (what they say they want).
2. Dig deeper: describe the specific, underlying need or belief driving that want.
3. Identify one specific experience or turning point that shaped this underlying motivation.
4. Explain in 2-3 sentences how understanding someone's deeper motivation (not just their surface request) is a skill founders use to build products people actually want.$t4$,
  $r4$Meets expectations when: the surface want and underlying motivation are clearly distinguished (not the same thing restated); a specific, relevant turning point is identified with evidence or reasoning; and the founder connection shows genuine understanding of the "surface want vs. deeper need" distinction in a business context.$r4$,
  20, 1
);

-- Determining Author's Point of View & Purpose -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Determining Author''s Point of View & Purpose' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%')),
  'classwork', 'Point of View & Purpose Practice Set',
  $t5$Find a real short article, ad, or social media post. Complete all 4 problems.

1. State the piece's likely purpose (inform, persuade, entertain, sell, warn, or a combination).
2. Identify 2 specific word choices that reveal the author's point of view or attitude.
3. Identify one thing the piece leaves out that a more neutral piece might include.
4. State who benefits if the reader agrees with or acts on this piece, and explain why.$t5$,
  $r5$Full credit requires an accurate, specific purpose identification for problem 1; 2 genuine word-choice examples with explanation for problem 2; a plausible identified omission for problem 3; and a specific, well-reasoned "who benefits" analysis for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Determining Author''s Point of View & Purpose' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%')),
  'homework', 'Rewrite the Same Fact From Two Points of View',
  $t6$Choose one neutral fact (e.g., "the company raised its prices by 10%").

1. Write a short paragraph (3-4 sentences) presenting this fact from a point of view that supports the change (e.g., a company spokesperson).
2. Write a short paragraph (3-4 sentences) presenting the SAME fact from a point of view that opposes the change (e.g., a frustrated customer).
3. Underline or list the specific word choices in each paragraph that reveal each point of view.
4. Explain in 2-3 sentences what this exercise teaches you about how the "same facts" can be used to build very different arguments.$t6$,
  $r6$Meets expectations when: both paragraphs present the identical underlying fact but with genuinely different, consistent points of view; the word-choice analysis accurately identifies bias-revealing language in each; and the reflection shows real understanding of how framing shapes persuasion.$r6$,
  20, 1
);

-- Analyzing Interactions Between Ideas --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Interactions Between Ideas' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%')),
  'classwork', 'Idea Interactions Practice Set',
  $t7$Complete all 4 problems.

1. "A drought reduces crop yields, which raises food prices, which increases hardship for low-income families." Identify the type of interaction (cause/effect chain, comparison, elaboration, or contradiction) and map out each step.
2. "Some experts argue remote work increases productivity; others argue it decreases team collaboration." Identify the type of interaction.
3. "Small businesses often struggle with cash flow. This is especially true for businesses with seasonal sales, since expenses continue year-round while revenue is concentrated in a few months." Identify the type of interaction.
4. Find or think of 2 related ideas from something you've read. Explain specifically how they interact (cause, contrast, or build on each other).$t7$,
  $r7$Full credit requires the correct interaction type identified with the chain/relationship correctly mapped for problems 1-3; and a genuine, specific interaction (not a vague summary) correctly identified and explained for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Analyzing Interactions Between Ideas' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%')),
  'homework', 'Map a Cause-and-Effect Chain in Your Venture',
  $t8$Think about your own venture idea (or a real business you know).

1. Identify a cause-and-effect chain of at least 3 steps relevant to your venture (A causes B, which causes C).
2. Explain each link in the chain specifically (don't just list the 3 ideas -- explain WHY each one leads to the next).
3. Identify one point in the chain where a different decision could have changed the outcome.
4. Explain in 2-3 sentences why understanding a full chain of cause and effect (instead of just the first cause and final effect) leads to better business decisions.$t8$,
  $r8$Meets expectations when: the 3-step chain is realistic and logically connected; each link is explained with genuine reasoning, not just asserted; the alternative-decision point is specific and plausible; and the final reflection shows real understanding of why full-chain thinking matters for decision-making.$r8$,
  20, 1
);

-- Evaluating Arguments & Evidence --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Arguments & Evidence' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%')),
  'classwork', 'Evaluating Arguments Practice Set',
  $t9$Complete all 4 problems.

1. "This one influencer said the product changed their life, so it must work for everyone." Identify the weakness in this argument (overgeneralizing, irrelevant evidence, emotional appeal, or cherry-picking).
2. "Our new policy is amazing -- imagine how proud and excited everyone will feel!" Identify the weakness in this argument.
3. "Sales went up in March. We only looked at March's numbers, not the whole year." Identify the weakness in this argument.
4. Find a real argumentative text (an ad, op-ed, or persuasive post). Apply the 4 evaluation questions from the lesson and identify at least one specific weakness or gap.$t9$,
  $r9$Full credit requires the correct weakness type correctly identified for problems 1-3 with brief reasoning; and a genuine, specific weakness identified in a real text using the lesson's 4 evaluation questions for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Arguments & Evidence' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 2:%')),
  'homework', 'Strengthen a Weak Argument',
  $t10$Write a deliberately weak argument (3-4 sentences) about any topic, using at least one of the weaknesses from class (overgeneralizing, irrelevant evidence, emotional appeal, or cherry-picking).

1. Present your weak argument.
2. Identify which specific weakness(es) you built into it.
3. Rewrite the argument to fix the weakness, using genuinely relevant, sufficient evidence and sound reasoning.
4. Explain in 2-3 sentences what changed between the weak and strong versions.$t10$,
  $r10$Meets expectations when: the weak argument genuinely demonstrates the named weakness; the weakness is correctly self-identified; the rewritten argument is a real, meaningfully stronger version (not a superficial edit); and the reflection accurately explains the specific improvement made.$r10$,
  20, 1
);

-- Building Claims & Counterclaims ----------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building Claims & Counterclaims' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 3:%')),
  'classwork', 'Claim, Counterclaim & Rebuttal Practice Set',
  $t11$Using The Giver or a real-world issue, complete all 4 parts.

1. Write your claim clearly.
2. Write one reason with specific evidence supporting your claim.
3. Write a fair, honestly-stated counterclaim -- a real objection someone could reasonably raise.
4. Write your rebuttal: explain specifically why your claim still holds despite the counterclaim.$t11$,
  $r11$Full credit requires a clear, specific claim; a genuine reason with relevant evidence; a counterclaim that is a real, fair objection (not a strawman); and a rebuttal that directly and specifically addresses that counterclaim rather than just repeating the original claim.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building Claims & Counterclaims' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 3:%')),
  'homework', 'Pitch Your Venture and Handle the Toughest Objection',
  $t12$Think about your venture idea (or any idea you want people to support).

1. State your claim (why this idea is worth supporting) clearly.
2. Write 2 reasons with specific evidence supporting your claim.
3. Write the SINGLE toughest, most realistic objection someone could raise against your idea.
4. Write your rebuttal, explaining specifically why your idea still holds up despite this objection.
5. Explain in 1-2 sentences why preparing for your toughest objection in advance makes you a stronger communicator than only preparing your best-case pitch.$t12$,
  $r12$Meets expectations when: the claim and 2 reasons are specific and well-supported; the identified objection is genuinely the toughest realistic one (not a softball); the rebuttal directly and convincingly addresses it; and the final reflection shows real understanding of why anticipating objections strengthens credibility.$r12$,
  20, 1
);

-- Using Credible Sources -----------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Using Credible Sources' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 3:%')),
  'classwork', 'Credible Sources Practice Set',
  $t13$Complete all 4 problems.

1. Evaluate this source for credibility: a personal blog post with no citations, written by someone with no stated expertise. What's missing?
2. Evaluate this source for credibility: a peer-reviewed scientific study published in the last 2 years. What makes it strong?
3. Rewrite this weak evidence integration: "Studies show recycling helps." Make it specific and well-integrated (invent a plausible specific source/finding).
4. Explain the 3-step process for integrating a source: introduce it, state the finding, explain why it supports your claim.$t13$,
  $r13$Full credit requires accurate credibility weaknesses identified for problem 1 and strengths for problem 2; a genuinely improved, specific, well-integrated rewrite for problem 3; and an accurate description of the 3-step integration process for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Using Credible Sources' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 3:%')),
  'homework', 'Build Evidence for Your Argument',
  $t14$Choose an argument you're building (on any topic).

1. Identify one real or realistic source that would support your claim (name the type of source: a study, an expert, a government report, etc.).
2. Evaluate its credibility using the 4 criteria from class (expertise, currency, objectivity, verifiability).
3. Write 2-3 sentences that introduce the source, state its relevant finding, and explain why it supports your claim.
4. Explain in 1-2 sentences why "citing something" is different from actually using it as credible, well-integrated evidence.$t14$,
  $r14$Meets expectations when: the source type is realistic and relevant; the credibility evaluation genuinely applies all 4 criteria; the 3-sentence integration follows the introduce/state/explain structure correctly; and the final reflection shows real understanding of the citing-vs-integrating distinction.$r14$,
  20, 1
);

-- Conducting Multi-Source Research --------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conducting Multi-Source Research' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 4:%')),
  'classwork', 'Multi-Source Research Practice Set',
  $t15$Complete all 4 steps for a research question of your choice (connected to a civic or community issue).

1. State your focused research question.
2. Identify 3 different TYPES of credible sources you would gather (e.g., a news article, a data report, an expert interview).
3. Invent a plausible finding from each of your 3 sources (2-3 sentences per source).
4. Write one sentence that SYNTHESIZES your 3 invented findings -- not listing them, but combining them into your own original understanding.$t15$,
  $r15$Full credit requires a genuinely focused research question; 3 truly different source types (not variations of the same type); plausible findings for each; and a real synthesis sentence in problem 4 that combines the findings into new understanding rather than just listing them.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Conducting Multi-Source Research' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 4:%')),
  'homework', 'Research a Real Question From Multiple Angles',
  $t16$Choose a real question you're curious about (connected to The Giver's themes, a civic issue, or your venture idea).

1. State your focused research question.
2. Find or describe 2-3 real or realistic sources with genuinely different angles or types.
3. Note where your sources agree, and note anywhere they might disagree or offer different perspectives.
4. Write a 3-4 sentence synthesis paragraph that combines what you learned across sources into your own original understanding (not a source-by-source list).
5. Explain in 1-2 sentences why disagreement between sources can actually be useful information, not just a problem to ignore.$t16$,
  $r16$Meets expectations when: the research question is focused; the sources are genuinely varied in type or angle; agreement/disagreement is accurately identified; the synthesis paragraph is genuine synthesis (not "Source A says... Source B says..."); and the final reflection shows real understanding of productive use of disagreement.$r16$,
  20, 1
);

-- Presenting Claims & Findings --------------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 4:%')),
  'classwork', 'Presentation Structure Practice Set',
  $t17$Using your research question and findings from the last lesson, complete all 4 parts of the presentation structure.

1. State the issue: what's the problem or question, and why should your specific audience care?
2. State your key findings in order of IMPORTANCE (not the order you found them).
3. State what it means: your interpretation or claim based on the findings.
4. State what should happen next: a specific call to action or recommendation.$t17$,
  $r17$Full credit requires a genuine issue statement connected to a specific audience's interest; findings reordered by importance (not chronological discovery order); a clear interpretive claim that follows from the findings; and a specific, actionable next-step recommendation.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Presenting Claims & Findings' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-ela-7') AND title LIKE 'Unit 4:%')),
  'homework', 'Prepare for Pushback in Your Presentation',
  $t18$Using your full 4-part presentation outline (issue, findings, meaning, next steps), prepare to handle challenges.

1. Write your complete 4-part outline.
2. Choose your 2-3 strongest, most specific details to support your findings (not everything you found).
3. Write one realistic counterpoint someone in your audience might raise.
4. Write your response: acknowledge the counterpoint honestly, then explain why your conclusion still stands.
5. Explain in 1-2 sentences why handling pushback calmly and directly makes a presenter more persuasive, not less.$t18$,
  $r18$Meets expectations when: the 4-part outline is complete and logically sequenced; the chosen details are genuinely the strongest available; the counterpoint is realistic and fairly stated; the response directly and convincingly addresses it; and the final reflection shows real understanding of composed pushback-handling as a credibility builder.$r18$,
  20, 1
);
