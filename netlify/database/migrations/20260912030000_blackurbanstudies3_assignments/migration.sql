-- Weekly-topic Classwork/Homework rollout for Black Urban Studies III
-- (Venture Studio, Grades 10-11). Adds a curated video and 2 assignments
-- (Classwork + Homework) to each of the course's 7 'lesson'-type entries.
-- The course's existing 'practice'-type entries (Small Projects, Project
-- Workshops, Major Projects) are untouched -- those already are the
-- course's project deliverables. Third course in the "Black Urban
-- Studies" batch (task #163).

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=NGPAnLDzQYY',
    video_caption = 'Crash Course Black American History: Reconstruction'
WHERE title = 'Black Reconstruction-Era Officeholders & the Rollback of Political Power'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=lkXFb1sMa38',
    video_caption = 'Crash Course US History: The 1960s in America (Selma & the Voting Rights Act)'
WHERE title = 'Disfranchisement, Jim Crow Law & the Long Fight for the Vote'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 1:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=nyrHcgwMIeA',
    video_caption = 'History Channel: Black Wall Street Established in Tulsa, Oklahoma'
WHERE title = 'The Racial Wealth Gap: Data, Causes & Black Wall Streets'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=AOtDWlOr-A0',
    video_caption = 'Madam C.J. Walker: Short Biography of an African American Entrepreneur'
WHERE title = 'Black Entrepreneurship as Economic Resistance'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=4TbKmQoRhg8',
    video_caption = '60 Minutes Archive: Greenwood Massacre - Exhume the Truth'
WHERE title = 'Reading Real Economic Data: Building Your Data Visualization'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Jdb3MTz7xXg',
    video_caption = 'Christie''s: DJ Kool Herc and the Birth of Hip-Hop'
WHERE title = 'The Harlem Renaissance to Hip-Hop: Culture as Political Voice'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 3:%');

UPDATE lessons
SET video_url = 'https://www.youtube.com/watch?v=Jpr0Wsh0UPM',
    video_caption = 'What Is a Community Land Trust, and How Does It Help Communities Thrive?'
WHERE title = 'From History to Policy: Identifying Levers for Change'
  AND unit_id = (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 4:%');

INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Black Reconstruction-Era Officeholders & the Rollback of Political Power' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 1:%')),
  'classwork', 'Reconstruction Officeholders Practice Set',
  $t1$Complete all 4 problems.

1. Name all 3 Reconstruction-era Black officeholders from the lesson (Hiram Revels, Blanche K. Bruce, P.B.S. Pinchback) and the office each held.
2. State approximately how many Black men served in Southern state legislatures during Reconstruction, and name one reform they passed.
3. Explain the Compromise of 1877 and what it caused.
4. Explain how poll taxes, literacy tests, and grandfather clauses worked together to disenfranchise Black voters while technically avoiding an explicit race-based law.$t1$,
  $r1$Full credit requires all 3 officeholders correctly matched to their offices for problem 1; the correct approximate number and a real reform for problem 2; an accurate explanation of the 1877 Compromise and federal troop withdrawal for problem 3; and an accurate explanation of how the three disenfranchisement tools worked for problem 4.$r1$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Black Reconstruction-Era Officeholders & the Rollback of Political Power' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 1:%')),
  'homework', 'Timeline: Your Officeholder Research',
  $t2$Begin your Small Project 1 (Voting Rights Timeline & Policy Brief).

1. Choose one Reconstruction-era Black officeholder (from the lesson or another with approval) to research in depth.
2. Record 3 specific facts about their political career, including at least one date.
3. Write 2-3 sentences explaining why their political power was later rolled back, connecting to the disenfranchisement tools you're studying next.$t2$,
  $r2$Meets expectations when: the chosen officeholder's facts are accurate, specific, and include a real date; and the reflection makes a genuine, historically grounded connection to the later rollback rather than a vague statement.$r2$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Disfranchisement, Jim Crow Law & the Long Fight for the Vote' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 1:%')),
  'classwork', 'Disfranchisement to the Voting Rights Act Practice Set',
  $t3$Complete all 4 problems.

1. Explain what "Bloody Sunday" was, giving the exact date and location.
2. Name 2 leaders or organizers connected to the Selma march, and explain the significance of the Edmund Pettus Bridge.
3. Give the exact date the Voting Rights Act was signed, the president who signed it, and 2 specific practices it banned or changed.
4. Explain the 2013 Shelby County v. Holder decision and why the lesson calls the Voting Rights Act's story "unfinished."$t3$,
  $r3$Full credit requires the correct date (March 7, 1965) and location for problem 1; 2 accurate names and an accurate bridge explanation for problem 2; the correct signing date (August 6, 1965), president (LBJ), and 2 accurate provisions for problem 3; and an accurate explanation of Shelby County v. Holder and its effect for problem 4.$r3$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Disfranchisement, Jim Crow Law & the Long Fight for the Vote' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 1:%')),
  'homework', 'Timeline & Policy Brief: Adding the Voting Rights Act',
  $t4$Continue your Small Project 1 (Voting Rights Timeline & Policy Brief).

1. Add the Voting Rights Act of 1965 to your timeline, alongside your Reconstruction-era officeholder from Lesson 1.
2. Add at least one point between 1877 and 1965 that shows the disenfranchisement your officeholder's power was rolled back into (a specific law, event, or practice).
3. Write a short policy-brief paragraph (4-6 sentences) connecting all 3 timeline points: political power built, power stripped away, power partially restored.$t4$,
  $r4$Meets expectations when: the timeline includes all 3 required points with accurate dates; the middle disenfranchisement point is specific (not generic "Jim Crow" with no detail); and the policy-brief paragraph explicitly connects all 3 points into one coherent argument.$r4$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Racial Wealth Gap: Data, Causes & Black Wall Streets' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%')),
  'classwork', 'Wealth Gap & Black Wall Street Practice Set',
  $t5$Complete all 4 problems.

1. Explain the difference between income and wealth, using the lesson's own definitions.
2. Name 3 historical causes of the racial wealth gap identified across this course (from Courses I-III).
3. Describe the Tulsa Race Massacre: the exact dates, the neighborhood destroyed, and an estimated casualty range.
4. Explain how Durham's Hayti district differed from Tulsa's Greenwood District in how and when it was destroyed.$t5$,
  $r5$Full credit requires an accurate income-vs-wealth distinction for problem 1; 3 accurate historical causes for problem 2; the correct dates (May 31-June 1, 1921), neighborhood (Greenwood), and a reasonable casualty estimate for problem 3; and an accurate Hayti-vs-Greenwood comparison for problem 4.$r5$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Racial Wealth Gap: Data, Causes & Black Wall Streets' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%')),
  'homework', 'Major Project 1: Choosing Your Case Study',
  $t6$Begin your Major Project 1 (Economic Justice Case Study).

1. Choose either Greenwood (Tulsa) or Hayti (Durham) -- or another historic Black economic center with approval -- as your case study.
2. Record 3 facts establishing the community's economic scale at its peak (number of businesses, notable institutions, or similar).
3. Record 1 fact about what disrupted or destroyed it.
4. Write 2-3 sentences on why you chose this community and what you want your data visualization to show.$t6$,
  $r6$Meets expectations when: the case study choice is clear; the 3 peak-scale facts and 1 disruption fact are accurate and specific; and the closing reflection identifies a genuine, specific direction for the data visualization (not just "show what happened").$r6$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Black Entrepreneurship as Economic Resistance' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%')),
  'classwork', 'Entrepreneurship as Resistance Practice Set',
  $t7$Complete all 4 problems.

1. Explain why the lesson calls Black entrepreneurship "an act of resistance" rather than just an economic choice.
2. Describe Madam C.J. Walker's background and business, including the approximate year she started and what made her achievement historically significant.
3. Explain why Black-owned insurance companies filled a real, unmet need, using North Carolina Mutual Life Insurance Company as your example (include its founding year and city).
4. Name the "repeating pattern" the lesson says connects this course's institutions (Fort Mose, Freedmen's towns, Black-owned banks, mutual aid societies, Black-owned businesses).$t7$,
  $r7$Full credit requires an accurate resistance explanation for problem 1; an accurate Walker biography with the correct approximate start year (1905) and significance for problem 2; the correct founding year (1898), city (Durham), and need explanation for problem 3; and an accurate description of the exclusion-then-parallel-institution pattern for problem 4.$r7$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Black Entrepreneurship as Economic Resistance' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%')),
  'homework', 'Major Project 1: Entrepreneurship Research',
  $t8$Continue your Major Project 1 case study research.

1. Research how entrepreneurship specifically functioned within your chosen economic center (Greenwood or Hayti, or your approved alternative).
2. Name at least 2 specific Black-owned businesses or institutions from your chosen community, with what they did.
3. Write 2-3 sentences on how these businesses connect to the "parallel institutions" pattern from this lesson.$t8$,
  $r8$Meets expectations when: at least 2 specific, accurate businesses or institutions are named with a real function; and the written connection explicitly applies the "parallel institutions" concept to the student's own case study rather than restating the lesson generically.$r8$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Reading Real Economic Data: Building Your Data Visualization' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%')),
  'classwork', 'Data & Visualization Practice Set',
  $t9$Complete all 4 problems.

1. Name 2 reliable sources for historic or present-day economic data mentioned in the lesson.
2. Explain when a timeline, a bar chart, and a map are each the right visualization choice, using an example from your own case study for each.
3. Explain the "historian's responsibility" the lesson describes when a historical figure is disputed or estimated differently by different sources.
4. Find one specific, sourced figure related to your case study (a dollar estimate, a number of businesses, a population count) and note where it came from.$t9$,
  $r9$Full credit requires 2 accurate data sources for problem 1; correct visualization choices with a real example from the student's own case study for problem 2; an accurate description of citing disputed figures rather than presenting one as fact for problem 3; and a real, sourced figure for problem 4.$r9$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='Reading Real Economic Data: Building Your Data Visualization' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 2:%')),
  'homework', 'Major Project 1: Finalize Data & Visualization',
  $t10$Finalize your Major Project 1 (Economic Justice Case Study), due next week.

1. Choose your final visualization format (timeline, bar chart, or map) based on what best shows your case study's story.
2. Gather at least 3 sourced data points to include, noting the source for each.
3. Draft your visualization (sketch or digital) along with a short written case-study summary (1 paragraph) that presents your findings responsibly, noting any disputed figures.$t10$,
  $r10$Meets expectations when: the chosen visualization format fits the data being shown; at least 3 data points are sourced and accurate; and the written summary is responsible about disputed or estimated figures rather than overstating certainty.$r10$,
  30, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Harlem Renaissance to Hip-Hop: Culture as Political Voice' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 3:%')),
  'classwork', 'Culture as Resistance Practice Set',
  $t11$Complete all 4 problems.

1. Explain what Langston Hughes asserted in his 1926 poem "I, Too," and why it mattered given the segregation of that era.
2. Explain how blues and jazz functioned as "testimony," including where each genre developed.
3. Describe the birth of hip-hop: the exact date, location, and the DJ credited with it, and explain his key musical innovation.
4. Explain why the lesson connects 1970s Bronx disinvestment to the redlining and urban renewal patterns from Course II.$t11$,
  $r11$Full credit requires an accurate explanation of "I, Too" and its significance for problem 1; accurate genre-and-origin descriptions for problem 2; the correct date (August 11, 1973), location (the Bronx), DJ (Kool Herc), and innovation (extending breakbeats) for problem 3; and an accurate connection between Bronx disinvestment and earlier redlining/urban renewal patterns for problem 4.$r11$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='The Harlem Renaissance to Hip-Hop: Culture as Political Voice' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 3:%')),
  'homework', 'Small Project 2: Choosing Your Artifact',
  $t12$Begin your Small Project 2 (Cultural Artifact Analysis).

1. Choose one song, poem, or artwork from any era studied in this course (spirituals, blues, jazz, Harlem Renaissance, or hip-hop) to analyze as a primary source.
2. Record its title, creator, and approximate date or era.
3. Write 3-4 sentences identifying the political or economic testimony embedded in the artifact, connecting it to a specific historical condition you've studied this semester.$t12$,
  $r12$Meets expectations when: the artifact is clearly identified with accurate title, creator, and date/era; and the written analysis draws a specific, accurate connection between the artifact's content and a real historical condition from the course, not a generic statement about art and politics.$r12$,
  20, 1
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 4:%')),
  'classwork', 'Policy Levers Practice Set',
  $t13$Complete all 4 problems.

1. Explain the difference between a policy "goal" and a policy "lever," using the lesson's own example.
2. List all 5 real policy levers named in the lesson and briefly explain what each one does.
3. Explain what a community land trust is and how it prevents displacement.
4. Explain why the lesson says a good policy analysis "traces a specific historical harm to a specific, logically connected solution," using one example connecting a harm from this course to one of the 5 levers.$t13$,
  $r13$Full credit requires an accurate goal-vs-lever distinction for problem 1; all 5 levers correctly listed with accurate explanations for problem 2; an accurate community land trust explanation for problem 3; and a specific, logically sound harm-to-lever connection for problem 4.$r13$,
  20, 0
);
INSERT INTO lesson_assignments (lesson_id, assignment_type, title, instructions, rubric, estimated_minutes, position)
VALUES (
  (SELECT id FROM lessons WHERE title='From History to Policy: Identifying Levers for Change' AND unit_id=(SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-3') AND title LIKE 'Unit 4:%')),
  'homework', 'Capstone: Choosing Your Issue & Lever',
  $t14$Begin your Major Project 2 Capstone (Policy Memo & Advocacy Campaign).

1. Choose one present-day urban issue connected to something you've studied this semester (voting access, wealth gap, displacement, cultural erasure, or another with approval).
2. Choose the specific policy lever you believe best addresses it, from the lesson's list or a researched alternative.
3. Write a 1-paragraph justification explicitly tracing the historical harm you identified to the mechanism of your chosen lever.$t14$,
  $r14$Meets expectations when: the chosen issue is specific and clearly connected to course content; the chosen lever is a real, actionable mechanism (not a vague goal); and the justification paragraph draws an explicit, logical line from the historical harm to how the lever addresses it.$r14$,
  25, 1
);
