-- Weekly-topic Classwork/Homework rollout for Black Urban Studies I
-- (Venture Studio, Grades 6-7). Adds a curated video and 2 assignments
-- (Classwork + Homework) to each of the course's 9 'lesson'-type entries.
-- The course's existing 'practice'-type entries (Small Projects, Project
-- Workshops, Major Projects) are untouched -- those already are the
-- course's project deliverables. First course in the "Black Urban
-- Studies" batch (task #163).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=O3YJMaL55TM',
    video_caption = 'TED-Ed: Mansa Musa, One of the Wealthiest People Who Ever Lived'
WHERE title = 'West African Kingdoms: Mali, Songhai & Ghana'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=3NXC4Q_4JVg',
    video_caption = 'TED-Ed: The Atlantic Slave Trade - What Too Few Textbooks Told You'
WHERE title = 'The Transatlantic Slave Trade & the Middle Passage'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=83eJfEFFZ74',
    video_caption = 'Crash Course Black American History: The Rise of Cotton'
WHERE title = 'Daily Life, Labor & the Plantation Economy'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Byh-HityBIM',
    video_caption = 'Crash Course Black American History: The Underground Railroad'
WHERE title = 'Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=3duWC5Xp-6I',
    video_caption = 'America''s First Free Black Community: Fort Mose'
WHERE title = 'Arrival & the First Free Black Settlements: Fort Mose'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=2ZIeiIgHl7A',
    video_caption = 'Forty Acres and a Mule | Reconstruction 360'
WHERE title = 'Reconstruction & the Broken Promise of 40 Acres'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=PTngsK3PuzI',
    video_caption = 'Nicodemus, KS: The Black Experience Moving West'
WHERE title = 'Real Black Townships: Nicodemus, Eatonville & Beyond'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Woh63FlFDBk',
    video_caption = 'Crash Course Black American History: The Great Migration'
WHERE title = 'The Great Migration Begins: Push & Pull Factors'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 4:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=vKaegbtcE00',
    video_caption = 'Crash Course Black American History: Arts and Letters of the Harlem Renaissance'
WHERE title = 'The Harlem Renaissance & the Black Urban Renaissance'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 4:%');

-- West African Kingdoms: Mali, Songhai & Ghana --------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='West African Kingdoms: Mali, Songhai & Ghana' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 1:%')),
  'classwork', 'West African Empires Practice Set',
  $t1$Complete all 4 problems.

1. Name all 3 empires from the lesson (Ghana, Mali, Songhai) and state roughly when each was at its height.
2. Explain how the Ghana Empire built its wealth, using the trans-Saharan trade.
3. Describe Mansa Musa's 1324 pilgrimage to Mecca and explain why historians still study it today.
4. Explain why Timbuktu mattered as a city, beyond just trade -- what made it a center of learning?$t1$,
  $r1$Full credit requires all 3 empires correctly named with rough timeframes for problem 1; an accurate trade-based wealth explanation for problem 2; a historically accurate pilgrimage description for problem 3; and an accurate explanation of Timbuktu's role as a learning center for problem 4.$r1$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='West African Kingdoms: Mali, Songhai & Ghana' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 1:%')),
  'homework', 'Kingdom Profile: Getting Started',
  $t2$Begin your Kingdom Profile project (due as part of your Unit 1 project).

1. Choose one of the three kingdoms (Ghana, Mali, or Songhai) or another West African kingdom with approval.
2. Research and record 3 facts about its capital city or a major city within it.
3. Research and record 2 facts about how it built or used its wealth.
4. Write 2-3 sentences explaining why it's important to start Black history with African civilizations that already had cities, trade, and institutions -- rather than starting the story with slavery.$t2$,
  $r2$Meets expectations when: the chosen kingdom's facts are accurate and specific (not vague generalities); the wealth-related facts are accurate; and the closing reflection shows genuine understanding of why starting with African civilizations changes the historical narrative.$r2$,
  20, 1
);

-- The Transatlantic Slave Trade & the Middle Passage -----------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Transatlantic Slave Trade & the Middle Passage' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 1:%')),
  'classwork', 'Triangular Trade Practice Set',
  $t3$Complete all 4 problems.

1. Describe all 3 legs of the triangular trade route, and what was carried on each leg.
2. Explain approximately how long the Middle Passage crossing took, and describe the conditions enslaved people faced.
3. Explain why the text is careful to distinguish the scale and permanence of American chattel slavery from forms of captivity that existed within Africa before European contact.
4. Name the port that received the largest share of enslaved Africans brought to what became the United States.$t3$,
  $r3$Full credit requires all 3 trade-route legs accurately described for problem 1; an accurate crossing-time and conditions description for problem 2; a thoughtful, historically accurate distinction for problem 3; and the correct port (Charleston) for problem 4.$r3$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Transatlantic Slave Trade & the Middle Passage' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 1:%')),
  'homework', 'Primary Source Response',
  $t4$Continue your Unit 1 project: with your teacher or parent guide's help, find an age-appropriate primary-source excerpt related to the Middle Passage (a firsthand account, ship record, or similar document).

1. Identify the source and who wrote or recorded it.
2. Summarize what it describes, in your own words.
3. Identify one detail in the source that connects to something you learned in this lesson.
4. Explain in 2-3 sentences why primary sources like this matter for understanding history, compared to only reading a summary in a textbook.$t4$,
  $r4$Meets expectations when: the source is correctly identified and appropriately chosen; the summary is accurate and in the student's own words; a genuine connection to the lesson is made; and the reflection shows real understanding of why primary sources matter.$r4$,
  20, 1
);

-- Daily Life, Labor & the Plantation Economy ---------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Daily Life, Labor & the Plantation Economy' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%')),
  'classwork', 'Plantation Economy Practice Set',
  $t5$Complete all 4 problems.

1. Define what a plantation economy is, and name the major cash crops of the American South.
2. Explain why enslaved people had no legal rights, and give 2 examples from the lesson.
3. Explain, in your own words, why economists describe enslaved people's uncompensated labor as one of the largest unpaid debts in American history.
4. Explain how the wealth built by the plantation economy still connects to institutions that exist today.$t5$,
  $r5$Full credit requires an accurate definition and correct crops for problem 1; 2 accurate examples of legal powerlessness for problem 2; a thoughtful economic explanation for problem 3; and a sound connection to lasting institutions for problem 4.$r5$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Daily Life, Labor & the Plantation Economy' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%')),
  'homework', 'Project Journal: Who Benefited, Who Paid',
  $t6$Begin a project journal entry analyzing the plantation economy as an economic system.

1. Identify who benefited from this system, and how.
2. Identify who paid the cost, and how.
3. Explain one way this system's effects lasted beyond the end of slavery itself.
4. Explain in 2-3 sentences why understanding this economic history matters for understanding wealth and opportunity in America today.$t6$,
  $r6$Meets expectations when: both who-benefited and who-paid analyses are specific and accurate; the lasting-effect example is historically sound; and the final reflection shows genuine understanding of the connection between this history and the present.$r6$,
  20, 1
);

-- Enslaved Communities' Culture: Music, Faith, Family & Everyday Resistance -----------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%')),
  'classwork', 'Culture & Resistance Practice Set',
  $t7$Complete all 4 problems.

1. Explain how spirituals could serve two purposes at once, using an example from the lesson.
2. Describe what historians mean by the "invisible church," and why it mattered.
3. List 3 examples of everyday resistance from the lesson, beyond large rebellions.
4. Explain what the Underground Railroad was, and approximately how many people it's estimated to have helped between 1810 and 1850.$t7$,
  $r7$Full credit requires an accurate double-meaning explanation for problem 1; a correct invisible-church explanation for problem 2; 3 valid everyday-resistance examples for problem 3; and an accurate Underground Railroad description with the correct estimate for problem 4.$r7$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%')),
  'homework', 'Project Journal: Survival Through Culture',
  $t8$Add to your project journal.

1. Choose one form of culture or resistance from this lesson (music, faith, family bonds, or everyday resistance).
2. Explain specifically how it helped a community survive under conditions designed to break down community and family.
3. Explain why enslavers tried to suppress or control this particular thing (why was it seen as dangerous to the system of slavery)?
4. Explain in 2-3 sentences why building and preserving culture, even in captivity, can itself be understood as a form of resistance.$t8$,
  $r8$Meets expectations when: the chosen form of culture/resistance is accurately explained; the survival mechanism is specific and thoughtful; the suppression reasoning is historically sound; and the final reflection shows genuine understanding of culture as resistance.$r8$,
  20, 1
);

-- Arrival & the First Free Black Settlements: Fort Mose ------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Arrival & the First Free Black Settlements: Fort Mose' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%')),
  'classwork', 'Fort Mose Practice Set',
  $t9$Complete all 4 problems.

1. State when Fort Mose was founded, and where.
2. Explain the condition Spanish Florida's governor placed on freedom for escaped enslaved people.
3. Explain why Spain's offer of freedom was also a strategic decision, not just generosity.
4. Explain what happened to Fort Mose in 1763, and why.$t9$,
  $r9$Full credit requires the correct date and location for problem 1; the accurate condition (conversion and militia service) for problem 2; sound strategic reasoning for problem 3; and an accurate account of the 1763 evacuation for problem 4.$r9$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Arrival & the First Free Black Settlements: Fort Mose' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 2:%')),
  'homework', 'Project Journal: Rewriting the Timeline',
  $t10$Finish your Unit 2 project journal with a short comparison.

1. Write down what you thought you knew about the history of free Black settlements in America before this lesson.
2. Explain how Fort Mose's story changes or complicates that understanding.
3. Explain why Fort Mose predating the United States itself (by decades) matters historically.
4. Explain in 1-2 sentences why this story connects forward to the self-governed Black towns you'll study in Unit 3.$t10$,
  $r10$Meets expectations when: the before/after comparison is honest and specific; the historical significance of the timing is accurately explained; and the connection to Unit 3 shows genuine understanding of the throughline.$r10$,
  20, 1
);

-- Reconstruction & the Broken Promise of 40 Acres --------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Reconstruction & the Broken Promise of 40 Acres' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 3:%')),
  'classwork', '40 Acres Practice Set',
  $t11$Complete all 4 problems.

1. Explain what Special Field Order No. 15 was, who issued it, and what it set aside.
2. Explain what happened to the order after President Lincoln's assassination.
3. Define Black Codes and the Freedmen's Bureau, explaining what each did.
4. Explain why many historians trace today's Black-white wealth gap back to the reversal of this order.$t11$,
  $r11$Full credit requires an accurate description of the order for problem 1; a correct account of its reversal for problem 2; accurate definitions of both Black Codes and the Freedmen's Bureau for problem 3; and sound historical reasoning connecting the reversal to the wealth gap for problem 4.$r11$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Reconstruction & the Broken Promise of 40 Acres' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 3:%')),
  'homework', 'Project Journal: Tracing the Consequences',
  $t12$Start your project journal for this unit.

1. Explain, step-by-step, how the reversal of Special Field Order No. 15 unfolded.
2. Identify one specific challenge Black communities faced afterward as a direct result.
3. Explain how that historical challenge connects to a challenge Black communities still face today (land ownership, homeownership, or generational wealth).
4. Explain in 1-2 sentences why understanding this "what if" moment matters for understanding American history honestly.$t12$,
  $r12$Meets expectations when: the step-by-step account is historically accurate; the identified challenge is specific and well-supported; the connection to today is thoughtful and reasonable; and the final reflection shows genuine historical understanding.$r12$,
  20, 1
);

-- Real Black Townships: Nicodemus, Eatonville & Beyond -----------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Real Black Townships: Nicodemus, Eatonville & Beyond' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 3:%')),
  'classwork', 'Black Townships Practice Set',
  $t13$Complete all 4 problems.

1. Explain what the "Exoduster" movement was, and how Nicodemus, Kansas connects to it.
2. Explain what makes Eatonville, Florida's founding unique among Black communities of its time.
3. Explain what founding your own town (writing a charter, electing leaders, running schools) meant as an act of self-determination.
4. Describe 2 challenges these all-Black towns commonly faced.$t13$,
  $r13$Full credit requires an accurate Exoduster/Nicodemus connection for problem 1; the correct distinction (first self-governed incorporated all-Black municipality) for problem 2; a thoughtful self-determination explanation for problem 3; and 2 accurate challenges for problem 4.$r13$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Real Black Townships: Nicodemus, Eatonville & Beyond' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 3:%')),
  'homework', 'Research a Third Township',
  $t14$Research one additional historic all-Black town (beyond Nicodemus and Eatonville) to prepare for your Freedmen's Town design project.

1. Name the town and where and when it was founded.
2. Describe 2 things its residents built or accomplished (schools, businesses, government, churches).
3. Describe one challenge it faced.
4. Explain in 1-2 sentences what this town has in common with Nicodemus and Eatonville.$t14$,
  $r14$Meets expectations when: the researched town is real and accurately described; the accomplishments and challenge are specific and historically grounded; and the comparison to Nicodemus/Eatonville is accurate.$r14$,
  20, 1
);

-- The Great Migration Begins: Push & Pull Factors -------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Great Migration Begins: Push & Pull Factors' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 4:%')),
  'classwork', 'Push & Pull Factors Practice Set',
  $t15$Complete all 4 problems.

1. Define "push factor" and "pull factor," and name at least 2 of each from the lesson.
2. Explain what role the Chicago Defender newspaper played in the Great Migration.
3. Explain how World War I created new opportunities for Black workers in Northern cities.
4. Describe how Chicago's Black population changed between 1910 and 1950, and explain what that growth would have required (housing, jobs, institutions).$t15$,
  $r15$Full credit requires accurate push/pull definitions with valid examples for problem 1; a correct Chicago Defender explanation for problem 2; sound WWI-labor reasoning for problem 3; and accurate population data with thoughtful inference for problem 4.$r15$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Great Migration Begins: Push & Pull Factors' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 4:%')),
  'homework', 'Capstone Research: Choose Your City',
  $t16$Begin your capstone research project.

1. Choose one Great Migration destination city (Chicago, Detroit, New York/Harlem, Pittsburgh, or another).
2. Research and record 2 specific push factors that likely drove people to leave the South for this city.
3. Research and record 2 specific pull factors that drew people to this particular city.
4. Write 2-3 sentences on what you're most curious to learn about this city's Black community next.$t16$,
  $r16$Meets expectations when: the chosen city is a genuine Great Migration destination; the push and pull factors are specific and historically accurate to that city; and the closing reflection shows genuine engagement with the upcoming research.$r16$,
  20, 1
);

-- The Harlem Renaissance & the Black Urban Renaissance ------------------------------------------------

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Harlem Renaissance & the Black Urban Renaissance' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 4:%')),
  'classwork', 'Harlem Renaissance Practice Set',
  $t17$Complete all 4 problems.

1. Name 3 figures from the Harlem Renaissance mentioned in the lesson, and their field (writing, music, etc.).
2. Explain what the Harlem Renaissance asserted about Black identity and culture, and why that mattered given the era's segregation.
3. Name one other city (beyond Harlem) that had a similar cultural flowering, and its neighborhood name.
4. Explain what kinds of institutions (beyond art) were being built during this period, and why they mattered.$t17$,
  $r17$Full credit requires 3 accurately named figures with correct fields for problem 1; a thoughtful cultural-assertion explanation for problem 2; a correct additional city/neighborhood for problem 3; and an accurate institution-building explanation for problem 4.$r17$,
  20, 0
);

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Harlem Renaissance & the Black Urban Renaissance' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1') AND title LIKE 'Unit 4:%')),
  'homework', 'Capstone: Design Your Black Cultural Institution',
  $t18$Finalize your capstone research and begin drafting your Black Cultural Institution design.

1. Look back across all 4 units (African kingdoms, community and culture under slavery, self-governed towns, the urban renaissance) and choose one thread that inspires your institution.
2. Describe the institution you'll design (a school, newspaper, business, cultural center, or another type).
3. Explain what specific need in your chosen city (from Lesson 8) this institution would address.
4. Explain in 2-3 sentences how your institution carries forward the legacy of self-determination you've studied all semester.$t18$,
  $r18$Meets expectations when: the chosen thread genuinely connects to earlier units; the institution design is specific and grounded in the chosen city's real needs; and the final reflection shows genuine synthesis of the semester's throughline of self-determination.$r18$,
  20, 1
);
