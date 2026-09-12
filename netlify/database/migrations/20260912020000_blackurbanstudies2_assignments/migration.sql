-- Weekly-topic Classwork/Homework rollout for Black Urban Studies II
-- (Venture Studio, Grades 8-9). Adds a curated video and 2 assignments
-- (Classwork + Homework) to each of the course's 7 'lesson'-type entries.
-- The course's existing 'practice'-type entries (Small Projects, Project
-- Workshops, Major Projects) are untouched -- those already are the
-- course's project deliverables. Second course in the "Black Urban
-- Studies" batch (task #163).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Woh63FlFDBk',
    video_caption = 'Crash Course Black American History: The Great Migration'
WHERE title = 'Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=bVqiisegKqg',
    video_caption = 'Chicago''s Bronzeville: A Beacon of Black Creativity and Culture'
WHERE title = 'Building Bronzeville, Harlem & Black Detroit'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=nzQyKwsVWME',
    video_caption = 'What Is Redlining? An Explainer on the HOLC Maps'
WHERE title = 'Redlining & the HOLC Maps'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=FHykbH4Vy8w',
    video_caption = 'PBS Roots of Resistance: The Disturbing History of America''s Highways'
WHERE title = 'Urban Renewal & the Highways Built Through Black Neighborhoods'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=y1XafF5fRfY',
    video_caption = 'Crash Course: The Fair Housing Act and Housing Rights'
WHERE title = 'The Fair Housing Act of 1968 and the Limits of Legal Change'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=ylOpide9dus',
    video_caption = 'Crash Course Black American History: The Montgomery Bus Boycott'
WHERE title = 'Montgomery, Birmingham & the Organizing Playbook'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=ao0Jozn_7HM',
    video_caption = 'Crash Course Black American History: The Black Panther Party'
WHERE title = 'Black Power, Mutual Aid & Community Institution-Building'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 4:%');

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 1:%')),
  'classwork', 'Push & Pull Factor Practice Set',
  $t1$Complete all 4 problems.

1. Name 2 specific push factors that drove Black Southerners to leave, using at least one date or statistic from the lesson (e.g., the boll weevil's spread in the 1910s-20s).
2. Name 2 specific pull factors that drew migrants north, including the role of at least one named employer or industry.
3. Explain the role the Chicago Defender played in the migration, including what the "Great Northern Drive" was.
4. Explain why World War I (1914-1918) mattered to this story, even though it happened mostly in Europe.$t1$,
  $r1$Full credit requires 2 accurate, specific push factors with a date or statistic for problem 1; 2 accurate pull factors naming an industry or employer for problem 2; an accurate description of the Chicago Defender's role for problem 3; and a correct explanation of WWI's labor-shortage connection for problem 4.$r1$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Causes of the Great Migration: Jim Crow, the Boll Weevil & Industrial Jobs' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 1:%')),
  'homework', 'Project Journal: Your Push/Pull Case',
  $t2$Begin your Unit 1 project journal (this feeds into your Small Project 1 city profile).

1. Choose one push factor and one pull factor to research in more depth than the lesson covered.
2. For each, record at least one specific date, number, or named source (e.g., a newspaper, a company, a law).
3. Write 3-4 sentences making the case: if you were a Black family in the rural South in 1917, would this evidence be enough to convince you to move? Explain your reasoning using your researched facts.$t2$,
  $r2$Meets expectations when: both factors are researched beyond the lesson's own examples; each includes a specific, accurate date/number/named source; and the closing case-making reflection is grounded in the researched facts rather than a general opinion.$r2$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building Bronzeville, Harlem & Black Detroit' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 1:%')),
  'classwork', 'Black Metropolis Practice Set',
  $t3$Complete all 4 problems.

1. Name the 3 migration-era neighborhoods covered in the lesson (Bronzeville, Harlem, and the Detroit neighborhoods of Paradise Valley/Black Bottom).
2. Explain what sociologists Drake and Cayton meant by calling Bronzeville a "Black Metropolis" in their 1945 study.
3. List at least 3 types of institutions Black migrants built in these neighborhoods (banks, newspapers, churches, theaters, nightclubs, insurance companies -- any 3).
4. Explain the "common thread" connecting all three cities: how did housing discrimination lead, indirectly, to institution-building?$t3$,
  $r3$Full credit requires all 3 neighborhoods correctly named for problem 1; an accurate explanation of the "Black Metropolis" concept for problem 2; 3 accurate institution types for problem 3; and a clear causal explanation linking discrimination to institution-building for problem 4.$r3$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Building Bronzeville, Harlem & Black Detroit' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 1:%')),
  'homework', 'Neighborhood Profile: Choosing Your Focus',
  $t4$Prepare for your Small Project 1 (Great Migration City Profile), due later this unit.

1. Choose one migration-era neighborhood to profile: Bronzeville, Harlem, Black Detroit, or another with your teacher's approval.
2. Record 3 facts about the institutions or businesses that were built there.
3. Record 1 fact about the housing discrimination or segregation that shaped why the neighborhood formed where it did.
4. Write 2-3 sentences on what you personally find most striking about this neighborhood's story so far.$t4$,
  $r4$Meets expectations when: the neighborhood choice is clear; the 3 institution/business facts are accurate and specific; the discrimination fact is accurate; and the reflection shows genuine engagement rather than a restatement of the lesson.$r4$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Redlining & the HOLC Maps' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%')),
  'classwork', 'HOLC Map Practice Set',
  $t5$Complete all 4 problems.

1. Name the federal agency behind redlining, the year it was created, and what "residential security maps" were used for.
2. Explain the 4-letter grading scale (A-D) and which color and grade corresponded to "hazardous."
3. Explain, using evidence from the lesson, how race -- not just income or home condition -- factored directly into a neighborhood's grade.
4. Describe one measurable long-term effect of redlining that researchers can still detect in cities today.$t5$,
  $r5$Full credit requires the correct agency (HOLC), year (1933), and map purpose for problem 1; an accurate grading scale explanation for problem 2; specific evidence that race was an explicit factor for problem 3; and an accurate, specific long-term effect for problem 4.$r5$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Redlining & the HOLC Maps' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%')),
  'homework', 'Project Journal: Reading a Real HOLC Map',
  $t6$Begin your Unit 2 project journal (this feeds into your Major Project 1: Redlining Then & Now).

1. With a parent or teacher's help, find a real digitized HOLC map of a U.S. city using a free public or university archive.
2. Identify at least one neighborhood graded "D" (red) and one graded "A" or "B" on the map.
3. Record what the map's own written notes say about each neighborhood (if available in the archive).
4. Write 2-3 sentences comparing the two neighborhoods you found and any modern differences you notice or can research (home values, tree cover, etc.).$t6$,
  $r6$Meets expectations when: a real archival HOLC map was used (not a hypothetical); both a "D" and an "A"/"B" neighborhood are correctly identified; recorded notes are accurate to the source; and the comparison reflects genuine research rather than assumption.$r6$,
  25, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Urban Renewal & the Highways Built Through Black Neighborhoods' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%')),
  'classwork', 'Urban Renewal Practice Set',
  $t7$Complete all 4 problems.

1. Name the 1956 federal law that funded the interstate highway system, and explain why highways were often routed through Black neighborhoods.
2. Name at least 2 of the 3 specific examples from the lesson (Durham's Hayti, Detroit's Black Bottom/Paradise Valley, Miami's Overtown) and what was destroyed in each.
3. Explain what James Baldwin meant when he said "urban renewal" means "Negro removal," and when he said it.
4. Describe Durham's Hayti district before the Durham Freeway was built, using at least 2 specific facts (e.g., named institutions).$t7$,
  $r7$Full credit requires the correct law (Federal-Aid Highway Act of 1956) and reasoning for problem 1; 2 accurate examples with what was destroyed for problem 2; an accurate Baldwin quote explanation with the 1963 date for problem 3; and 2 specific, accurate Hayti facts for problem 4.$r7$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Urban Renewal & the Highways Built Through Black Neighborhoods' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%')),
  'homework', 'Project Journal: Connecting Redlining to Renewal',
  $t8$Continue your Unit 2 project journal.

1. Using the same city from your HOLC map research (or a new one, with approval), research whether a highway or urban renewal project was later built through or near a redlined area.
2. Record the name of the highway or project and the approximate year it was built.
3. Write 3-4 sentences explaining the connection you found (or didn't find) between the earlier redlining grade and the later highway/renewal decision.$t8$,
  $r8$Meets expectations when: the research connects back to the specific city and area from the HOLC map assignment; the highway/project name and year are accurate; and the written connection is evidence-based rather than assumed.$r8$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Fair Housing Act of 1968 and the Limits of Legal Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%')),
  'classwork', 'Law vs. Reality Practice Set',
  $t9$Complete all 4 problems.

1. Give the exact date the Fair Housing Act was signed, and explain what national event happened just one week earlier that helped push it through Congress.
2. Explain what the Act made illegal, and name one practice it specifically banned that HOLC itself had done decades earlier.
3. Explain why passing this law did not immediately undo the effects of redlining and urban renewal. Use at least 1 specific reason from the lesson.
4. Define "steering" and explain how it let discrimination continue in a less obvious form after 1968.$t9$,
  $r9$Full credit requires the correct date (April 11, 1968) and correct connection to Dr. King's assassination for problem 1; an accurate description of the ban and its HOLC connection for problem 2; a specific, accurate reason for problem 3; and an accurate definition of steering for problem 4.$r9$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Fair Housing Act of 1968 and the Limits of Legal Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 2:%')),
  'homework', 'Unit 2 Project Journal: Synthesis',
  $t10$Finalize your Unit 2 project journal, ahead of your Major Project 1: Redlining Then & Now.

1. Pull together your HOLC map research, your highway/renewal research, and this lesson into one written synthesis (aim for 1-2 solid paragraphs).
2. Your synthesis must explicitly connect all 3 pieces: the original redlining grade, what was later built or not built there, and how the 1968 law did or did not change the outcome for that specific area.
3. End with 1-2 sentences on what you still want to research further for your Major Project.$t10$,
  $r10$Meets expectations when: all 3 research threads (HOLC, highway/renewal, Fair Housing Act) are explicitly connected rather than described separately; the synthesis is specific to the student's chosen city/area rather than generic; and the closing next-steps are genuine and specific.$r10$,
  25, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Montgomery, Birmingham & the Organizing Playbook' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 3:%')),
  'classwork', 'Organizing Playbook Practice Set',
  $t11$Complete all 4 problems.

1. Explain why Rosa Parks' December 1, 1955 arrest led to an already-prepared response rather than a spontaneous one. Name the group that had been preparing.
2. Name the organization and its president that ran the Montgomery boycott, and state how long the boycott lasted and how it legally ended.
3. Explain why Birmingham was specifically chosen for the 1963 campaign, and what the "Children's Crusade" was.
4. List all 4 organizing elements from the lesson (specific goal, coalition, sustained tactic, media strategy) and briefly explain each in your own words.$t11$,
  $r11$Full credit requires an accurate explanation naming the Women's Political Council for problem 1; the correct organization (Montgomery Improvement Association), president (Dr. King), duration (381 days), and legal outcome (Browder v. Gayle) for problem 2; accurate reasoning and Children's Crusade description for problem 3; and all 4 organizing elements correctly explained for problem 4.$r11$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Montgomery, Birmingham & the Organizing Playbook' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 3:%')),
  'homework', 'Campaign Analysis: Getting Started',
  $t12$Begin your Small Project 2 (Organize a Movement) using the organizing playbook.

1. Choose Montgomery, Birmingham, or another historic urban civil rights campaign you research with approval.
2. Using the 4 organizing elements (goal, coalition, tactic, media strategy), analyze your chosen campaign element by element.
3. Write 1-2 sentences per element citing a specific fact or detail from your research (not just a definition).$t12$,
  $r12$Meets expectations when: all 4 elements are analyzed for the chosen campaign; each element's write-up includes a specific researched fact rather than a generic definition; and the analysis accurately reflects the real history of the chosen campaign.$r12$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Black Power, Mutual Aid & Community Institution-Building' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 4:%')),
  'classwork', 'Mutual Aid Practice Set',
  $t13$Complete all 4 problems.

1. Name the founders of the Black Panther Party, the city and year it was founded, and explain what "Survival Programs" were.
2. Describe the Free Breakfast for Children Program: when it started and one lasting effect it had beyond the communities it directly served.
3. Name 2 Black-owned financial institutions from Durham, NC mentioned in the lesson, their founding years, and what need they filled.
4. Explain the "core idea" the lesson says connects the Panthers' survival programs and NC's Black-owned banks.$t13$,
  $r13$Full credit requires the correct founders (Newton and Seale), city (Oakland), and year (1966) plus an accurate Survival Programs explanation for problem 1; an accurate program description with the 1969 start date and a real lasting effect for problem 2; both institutions with correct founding years and purpose for problem 3; and an accurate explanation of the shared "build a parallel institution" idea for problem 4.$r13$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Black Power, Mutual Aid & Community Institution-Building' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-2') AND title LIKE 'Unit 4:%')),
  'homework', 'Capstone: Design Your Community Revitalization Plan',
  $t14$Begin your Major Project 2 Capstone (Community Revitalization Plan).

1. Choose one historic mutual-aid institution (a survival program, bank, insurance company, or credit union) to research as your model.
2. Identify a real need in a community (historic or present-day) that a similar institution could address today.
3. Draft an outline of your own community revitalization plan: what institution would you build, what specific need does it meet, and which historic model most directly inspired it?$t14$,
  $r14$Meets expectations when: the historic model is researched accurately with specific facts; the identified community need is real and clearly stated; and the outline draws a clear, explicit line between the historic model and the student's own proposed institution.$r14$,
  25, 1
);
