-- Weekly-topic Classwork/Homework rollout for Black Urban Studies IV
-- (Venture Studio, Grade 12 capstone). Adds a curated video and 2
-- assignments (Classwork + Homework) to each of the course's 6
-- 'lesson'-type entries. The course's existing 'practice'-type entries
-- (Small Projects, Project Workshops, Major Projects) are untouched --
-- those already are the course's project deliverables. Fourth and
-- final course in the "Black Urban Studies" batch (task #163).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Reyo570p_dU',
    video_caption = 'Introduction to Historical Study: Analyzing Primary Sources'
WHERE title = 'Choosing a Research Question & Finding Primary/Secondary Sources'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=q_WyxYuvvis',
    video_caption = 'Historical Source Evaluation Explained'
WHERE title = 'Evaluating Sources & Building an Argument'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=8rgJRzz_zHo',
    video_caption = 'StoryCorps: Listening Is an Act of Love'
WHERE title = 'Data-Gathering: Census Records, Archives & Oral-History Methods'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Js5UMbD9r5U',
    video_caption = 'TEDxUTulsa: Why Data Storytelling Matters to All of Us'
WHERE title = 'Drafting the Case Study: Narrative + Data'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=TukD7RIya40',
    video_caption = 'Democracy Now!: Evanston, Illinois'' Groundbreaking Reparations Program'
WHERE title = 'From History to Policy: Identifying Levers for Change'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=1sOgYNgq88E',
    video_caption = 'TED-Ed: What''s the Best Way to Give a Presentation?'
WHERE title = 'Building the Final Presentation & Portfolio'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 4:%');

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Choosing a Research Question & Finding Primary/Secondary Sources' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 1:%')),
  'classwork', 'Research Question Practice Set',
  $t1$Complete all 4 problems.

1. Explain what makes a research question "good," using the lesson's own criteria (specific, answerable with evidence, genuinely requiring investigation).
2. Rewrite this weak question into a strong one: "Was there racism in your chosen city?" Your rewrite must name a specific policy, era, or neighborhood.
3. Define primary source and secondary source, each with one original example not used in the lesson.
4. List all 4 source types named in the lesson for finding real sources (Census Bureau, library/university archives, historical societies, oral history collections).$t1$,
  $r1$Full credit requires an accurate explanation of a "good" research question for problem 1; a genuinely improved, specific rewrite for problem 2; accurate original examples for both source types in problem 3; and all 4 source-finding avenues for problem 4.$r1$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Choosing a Research Question & Finding Primary/Secondary Sources' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 1:%')),
  'homework', 'Small Project 1: Choosing Your City & Question',
  $t2$Begin your Small Project 1 (Research Proposal), the foundation of your entire capstone.

1. Choose the city you will research for your semester-long case study.
2. Draft 2-3 candidate research questions about that city's Black history and present-day urban condition, following this lesson's "good question" criteria.
3. For your strongest candidate question, list 1 primary source and 1 secondary source you believe might exist to help answer it.$t2$,
  $r2$Meets expectations when: all candidate questions are specific and evidence-based rather than too broad; the strongest question is clearly identified with reasoning; and the listed primary and secondary sources are realistic and relevant to the question.$r2$,
  25, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Sources & Building an Argument' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 1:%')),
  'classwork', 'Source Evaluation Practice Set',
  $t3$Complete all 4 problems.

1. List all 4 evaluation questions from the lesson (who/when created it; creator's purpose; agreement with other sources; whose voice it represents).
2. Explain why a HOLC map is useful evidence but not an objective description of neighborhood quality.
3. Define the claim-evidence-reasoning structure of an argument, using the lesson's Bronzeville example or your own original example.
4. Explain the lesson's warning against cherry-picking evidence, in your own words.$t3$,
  $r3$Full credit requires all 4 evaluation questions accurately listed for problem 1; an accurate explanation of the HOLC map's bias for problem 2; a correctly structured claim-evidence-reasoning example for problem 3; and an accurate cherry-picking explanation for problem 4.$r3$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Evaluating Sources & Building an Argument' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 1:%')),
  'homework', 'Research Proposal: Evaluating Your First Source',
  $t4$Continue your Small Project 1 (Research Proposal).

1. Find one real source related to your chosen city and research question.
2. Evaluate it using all 4 of the lesson's evaluation questions.
3. Write a one-sentence claim-evidence-reasoning argument based on what this source shows.$t4$,
  $r4$Meets expectations when: a real, relevant source is used; all 4 evaluation questions are answered specifically (not generically); and the claim-evidence-reasoning sentence is correctly structured and grounded in the actual source.$r4$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Data-Gathering: Census Records, Archives & Oral-History Methods' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 2:%')),
  'classwork', 'Data-Gathering Methods Practice Set',
  $t5$Complete all 4 problems.

1. Explain what U.S. Census data can show a researcher, and since what year the Census Bureau has published population data.
2. Name 2 places to look for city-specific archives, and explain why noting exactly where and when you accessed a digital source matters.
3. List 3 good oral-history practices from the lesson (preparing questions in advance, open-ended questions, getting permission).
4. Explain why a source log is worth keeping, according to the lesson.$t5$,
  $r5$Full credit requires an accurate Census explanation with the correct start year (1790) for problem 1; 2 real archive types and an accurate access-tracking reason for problem 2; 3 accurate oral-history practices for problem 3; and an accurate source-log rationale for problem 4.$r5$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Data-Gathering: Census Records, Archives & Oral-History Methods' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 2:%')),
  'homework', 'Major Project 1: Building Your Data-Gathering Log',
  $t6$Begin your data-gathering log for your Major Project 1 (City Case Study).

1. Set up a source log with columns for: what the source is, where you found it, and what specific fact or quote you might use.
2. Gather at least 3 new pieces of evidence for your case study (census data points, archival facts, or an interview, if available to you).
3. Write 1-2 sentences on which piece of evidence surprised you most and why.$t6$,
  $r6$Meets expectations when: the log is organized with all 3 required columns; at least 3 pieces of evidence are real, specific, and relevant to the chosen city; and the reflection identifies a genuine, specific point of surprise.$r6$,
  30, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Drafting the Case Study: Narrative + Data' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 2:%')),
  'classwork', 'Narrative + Data Practice Set',
  $t7$Complete all 4 problems.

1. List all 5 sections of a strong case study, in order, from the lesson.
2. Explain the difference between the "weak" and "strong" examples in the lesson, in your own words.
3. Rewrite this weak sentence using the lesson's weaving technique: "The city built a lot of highways in the 1960s." You may invent plausible supporting details in the style of the lesson's example.
4. Explain the lesson's citation rule: why cite as you draft rather than at the end?$t7$,
  $r7$Full credit requires all 5 sections correctly listed in order for problem 1; an accurate weak-vs-strong explanation for problem 2; a genuinely improved, woven rewrite for problem 3; and an accurate citation-timing rationale for problem 4.$r7$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Drafting the Case Study: Narrative + Data' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 2:%')),
  'homework', 'Major Project 1: Drafting Your Case Study',
  $t8$Continue your Major Project 1 (City Case Study).

1. Draft your case study's "Historical background" section, drawing on relevant history from Black Urban Studies I-III (migration, redlining, civil rights organizing, political/economic power) as it applies to your chosen city.
2. Draft your "Your original evidence" section, using at least 2 pieces of evidence from your data-gathering log.
3. Practice weaving data and narrative together in at least one paragraph, following the lesson's technique.$t8$,
  $r8$Meets expectations when: the historical background section accurately connects to the relevant prior-course content; the evidence section uses real, logged evidence; and at least one paragraph clearly demonstrates the weaving technique rather than listing data separately from narrative.$r8$,
  30, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 3:%')),
  'classwork', 'Policy Levers Practice Set',
  $t9$Complete all 4 problems.

1. List the 5 example policy levers named in the lesson.
2. Explain the rule for "matching your lever to your evidence" -- why can't you pick a popular-sounding policy that doesn't connect to your own research?
3. Describe Evanston, Illinois' reparations program as a real-world precedent: what it funds and how it is paid for.
4. Explain why researching real precedent (even an imperfect one) makes a policy recommendation more credible.$t9$,
  $r9$Full credit requires all 5 levers correctly listed for problem 1; an accurate explanation of the evidence-matching rule for problem 2; accurate Evanston program details (down payment/mortgage/repair funds, cannabis tax funding) for problem 3; and an accurate explanation of precedent's value for problem 4.$r9$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 3:%')),
  'homework', 'Small Project 2: Choosing Your Policy Lever',
  $t10$Begin your Small Project 2 (Stakeholder Map & Policy Options Memo).

1. Identify the specific policy lever that responds directly to what your Major Project 1 case study documented.
2. Research one real city or organization that has already tried this lever, even imperfectly.
3. Write 3-4 sentences explaining the explicit connection between your case study's finding and your chosen lever.$t10$,
  $r10$Meets expectations when: the chosen lever is a specific, actionable mechanism directly connected to the student's own case study findings (not a generic or mismatched choice); a real precedent is identified accurately; and the written connection is explicit and evidence-based.$r10$,
  25, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building the Final Presentation & Portfolio' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 4:%')),
  'classwork', 'Presentation Design Practice Set',
  $t11$Complete all 4 problems.

1. List the 3 required components of the final Black Futures portfolio.
2. Explain the purpose of the one-page Executive Summary and why the lesson says it should be "written last."
3. Describe the 3-part structure of the live presentation (hook, walkthrough, closing ask) in your own words.
4. Explain why the lesson says this structure mirrors a "genuine professional skill" rather than just a school assignment.$t11$,
  $r11$Full credit requires all 3 portfolio components correctly listed for problem 1; an accurate explanation of the Executive Summary's purpose and timing for problem 2; an accurate description of all 3 presentation parts for problem 3; and a thoughtful, accurate explanation for problem 4.$r11$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building the Final Presentation & Portfolio' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-4') AND title LIKE 'Unit 4:%')),
  'homework', 'Capstone: Assembling Your Black Futures Portfolio',
  $t12$Assemble your Major Project 2 Capstone (Black Futures Capstone Showcase).

1. Compile your final portfolio: revised City Case Study, Policy Memo & Stakeholder Map, and a draft one-page Executive Summary.
2. Draft your presentation's opening hook: the single most compelling fact or story from your research.
3. Draft your presentation's closing ask: what you want your audience to do or believe after hearing your presentation.$t12$,
  $r12$Meets expectations when: all 3 portfolio components are present and consistent with each other; the opening hook is genuinely compelling and specific to the student's own research; and the closing ask is clear, specific, and directly tied to the policy recommendation.$r12$,
  30, 1
);
