-- Georgia standards crosswalk for ELA 8, English 9, English 10, English 11,
-- Earth & Environmental Science, and Biology -- the remaining courses
-- needed for Sage Henderson, Tiara Saunders, and Jamal Hill (all in GA).
--
-- ELA source: Georgia's K-12 English Language Arts Standards (full
-- implementation SY2025-2026), organized into three domains -- Language
-- (L), Texts (T), and Practices (P) -- replacing the old RL/RI/W/SL/L
-- (Common-Core-style) codes. Georgia writes the *standard* itself at a
-- grade-band level (e.g. "STANDARD 6-8.T.T.1", "STANDARD 9-12.T.T.3") even
-- though individual grade-level expectations underneath it are lettered
-- per grade -- so target codes below use the 6-8 or 9-12 band, matching
-- Georgia's own numbering and avoiding a false claim that content shifts
-- domain between adjacent grades in the same band. Big Ideas used: T.T.1
-- Narrative Techniques, T.T.2 Expository Techniques, T.T.3 Argumentative
-- Techniques, T.C.2 Authors & Speakers, T.SS.1 Organization, T.SS.2 Craft,
-- T.RA.1 Research & Inquiry, T.RA.2 Curating Sources & Evidence, P.CP.1
-- Collaboration & Presentation. Because several source codes are reused
-- as-is across English 9 and English 10 (both draw on Common Core's
-- combined "9-10" reading/writing band), each is crosswalked once to a
-- single Georgia band-level target rather than diverging by course.
--
-- Science source: Georgia Standards of Excellence -- Biology (SB1-SB6) and
-- Environmental Science (SEV1-SEV5). A few Earth-systems lessons (plate
-- tectonics, weather vs. climate) predate Georgia's Environmental Science
-- course scope and are mapped to the closest-fit SEV standard rather than
-- left unmapped, since the course itself is titled "Earth & Environmental
-- Science."
--
-- As with prior crosswalk batches, broad cumulative-review and full-scope
-- capstone codes are intentionally left unmapped so the app's fallback
-- ("GA mapping coming soon") shows rather than a misleadingly narrow code.

INSERT INTO standards_crosswalk (state, source_code, target_code, target_description) VALUES
-- ELA 8 (Venture English 8) -- Georgia 6-8 band
('GA', 'RL.8.6', '6-8.T.T.1', 'Analyze how narrative techniques, including point of view, are used across a text to develop plot, characters, and setting.'),
('GA', 'RL.8.3', '6-8.T.T.1', 'Analyze how narrative techniques, including dialogue, are used across a text to develop plot, characters, and setting.'),
('GA', 'RL.8.1, RL.8.2', '6-8.T.T.1', 'Analyze how authors convey and reveal themes through characters, events, and plot structure.'),
('GA', 'RL.8.1-3, RL.8.6', '6-8.T.T.1', 'Analyze how narrative techniques -- point of view, dialogue, and theme development -- are used across a text.'),
('GA', 'RI.8.8', '6-8.T.T.3', 'Analyze the development of argumentative techniques used to present and design content, including an author''s claim and supporting relevant evidence.'),
('GA', 'RI.8.9', '6-8.T.T.2', 'Analyze and evaluate how two or more authors writing about the same topic shape their presentations of key information by emphasizing different evidence.'),
('GA', 'RI.8.6, RI.8.8, SL.8.4', '6-8.T.C.2', 'Identify an author''s or speaker''s bias and determine how that bias impacts text credibility.'),
('GA', 'W.8.1', '6-8.T.T.3', 'Apply argumentative techniques, including an author''s claim, supporting relevant and logical evidence, an identified counterclaim, a rebuttal, and a conclusion.'),
('GA', 'W.8.3', '6-8.T.T.1', 'Apply narrative techniques to enhance writing, engage audiences, and achieve specific purposes.'),
('GA', 'W.8.1d', '6-8.T.T.3', 'Apply argumentative techniques in a focused paragraph, including a claim, supporting evidence, and a logical conclusion.'),
('GA', 'W.8.7-8', '6-8.T.RA.1', 'Conduct research by locating, gathering, curating, and integrating information from credible sources about texts and related topics.'),
('GA', 'SL.8.4-5', '6-8.P.CP.1', 'Build and share knowledge as they engage with others in a range of settings and for a variety of presentation purposes.'),
-- English 9 & English 10 (Venture English 9 / 10) -- Georgia 9-12 band;
-- codes shared by both courses (Common Core's combined 9-10 band) are
-- crosswalked once.
('GA', 'RL.9-10.3', '9-12.T.T.1', 'Analyze how narrative techniques are used across a text to develop complex characters and their moral growth.'),
('GA', 'RL.9-10.6', '9-12.T.T.1', 'Analyze how narrative point of view and narrative distance are used to develop a text.'),
('GA', 'RL.9-10.2', '9-12.T.T.1', 'Compare and contrast how themes are developed and expressed in texts through characters, events, and plot structure.'),
('GA', 'RL.9-10.2-3, RL.9-10.6', '9-12.T.T.1', 'Analyze theme development, characterization, and point of view across a text.'),
('GA', 'RI.9-10.8', '9-12.T.C.2', 'Determine an author''s perspective in a text, analyzing bias, evidence, and how both impact credibility.'),
('GA', 'RI.9-10.9', '9-12.T.T.3', 'Analyze the argumentative techniques used in a foundational, historically significant, or persuasive/propaganda nonfiction text.'),
('GA', 'RI.9-10.6, RI.9-10.8, RI.9-10.9', '9-12.T.T.3', 'Analyze argumentative techniques, rhetorical choices, and potential bias or propaganda used to present and design content in nonfiction texts.'),
('GA', 'W.9-10.1', '9-12.T.T.3', 'Apply argumentative techniques, including an author''s claim, supporting relevant evidence, an identified counterclaim, and a logical conclusion.'),
('GA', 'W.9-10.3', '9-12.T.T.1', 'Apply narrative techniques -- including multiple plot lines, pacing, symbolism, and allegory -- to enhance writing and engage audiences.'),
('GA', 'W.9-10.1b', '9-12.T.T.3', 'Apply argumentative techniques, including an identified counterclaim and rebuttal, in a focused paragraph.'),
('GA', 'W.9-10.7-8', '9-12.T.RA.2', 'Utilize multiple print and digital texts to address a specific topic, assessing source credibility and synthesizing evidence properly to avoid plagiarism.'),
('GA', 'SL.9-10.4', '9-12.P.CP.1', 'Build and share knowledge as they engage with others in a range of settings, including delivering a persuasive presentation.'),
('GA', 'RL.9-10.4', '9-12.T.SS.2', 'Analyze how figurative language, connotative language, and literary devices -- including allegory and symbolism -- are used strategically to achieve specific purposes.'),
('GA', 'RL.9-10.2, RL.9-10.3', '9-12.T.SS.1', 'Analyze how authors modify organizational structures or features -- such as extended allegory -- to convey meaning and achieve specific purposes.'),
('GA', 'RL.9-10.2-5', '9-12.T.SS.2', 'Analyze theme, structure, and figurative/connotative language choices across an allegorical text.'),
('GA', 'W.9-10.1a', '9-12.T.T.3', 'Apply argumentative techniques, crafting a strong thesis and organizing complex arguments.'),
('GA', 'W.9-10.3d', '9-12.T.T.1', 'Apply narrative techniques in a focused allegorical short-story opening.'),
('GA', 'W.9-10.8', '9-12.T.RA.2', 'Utilize multiple print and digital texts to address a specific topic, evaluating multiple sources for credibility.'),
('GA', 'SL.9-10.5', '9-12.P.CP.1', 'Build and share knowledge as they engage with others, including creating multimedia presentations.'),
('GA', 'RI.9-10.6, W.9-10.8, SL.9-10.5', '9-12.T.T.3', 'Apply argumentative and research techniques to analyze and present findings on modern propaganda.'),
-- English 11 (Venture English 11) -- Georgia 9-12 band
('GA', 'RL.11-12.2', '9-12.T.SS.2', 'Analyze how figurative language, connotative language, and literary devices -- including symbol and setting -- are used strategically to achieve specific purposes.'),
('GA', 'RL.11-12.6', '9-12.T.T.1', 'Analyze how unreliable narration and narrative perspective are used across a text to shape meaning.'),
('GA', 'RL.11-12.1-3, RL.11-12.6', '9-12.T.T.1', 'Analyze narrative techniques, including unreliable narration and perspective, across a complex text.'),
('GA', 'RI.11-12.9', '9-12.T.T.3', 'Analyze the argumentative techniques used in foundational American rhetoric.'),
('GA', 'RI.11-12.8', '9-12.T.T.3', 'Evaluate complex arguments and premises for soundness of reasoning and sufficiency of evidence.'),
('GA', 'RI.11-12.4', '9-12.T.SS.2', 'Analyze how word choice and rhetorical effect are used strategically to achieve specific purposes for target audiences.'),
('GA', 'RI.11-12.4, RI.11-12.8, RI.11-12.9', '9-12.T.T.3', 'Analyze argumentative technique, word choice, and rhetorical effect across foundational American texts.'),
('GA', 'W.11-12.1', '9-12.T.T.3', 'Apply argumentative techniques to build a sustained literary argument.'),
('GA', 'W.11-12.3', '9-12.T.T.1', 'Apply advanced narrative techniques, including voice and style, to enhance writing and engage audiences.'),
('GA', 'W.11-12.3d', '9-12.T.T.1', 'Apply advanced narrative voice and style in a focused imitation and innovation exercise.'),
('GA', 'W.11-12.7', '9-12.T.RA.1', 'Conduct independent research, formulating a thesis-driven inquiry from a self-generated question.'),
('GA', 'SL.11-12.4', '9-12.P.CP.1', 'Build and share knowledge as they engage with others, adapting speech for purpose, audience, and task.'),
-- Earth & Environmental Science
('GA', '7.E.1.2', 'SEV2', 'Construct explanations of stability and change in Earth''s systems, including plate tectonics and the geologic features it produces.'),
('GA', '7.E.1.1', 'SEV2', 'Construct explanations of stability and change in Earth''s systems, including mapping plate boundaries and predicting related geologic hazards.'),
('GA', '7.E.2.2', 'SEV2', 'Construct explanations of the stability and structure of Earth''s systems.'),
('GA', '7.E.2.3', 'SEV2', 'Construct explanations of stability and change in Earth''s systems, distinguishing long-term climate patterns from short-term weather.'),
('GA', '7.E.2.1–3', 'SEV2', 'Apply understanding of weather and climate systems to build and interpret a real-world forecasting model.'),
('GA', '8.E.1.2', 'SEV3', 'Evaluate the types, availability, allocation, and sustainability of water and energy resources.'),
('GA', '8.E.1.1–2', 'SEV3', 'Evaluate the types, availability, allocation, and sustainability of water and energy resources.'),
('GA', '8.E.1.3', 'SEV2', 'Construct explanations of stability and change in Earth''s ecosystems, including evidence and causes of climate change.'),
('GA', '8.E.1.4', 'SEV4', 'Analyze human impact on natural resources, including conservation and sustainable practices.'),
-- Biology (Venture Biology)
('GA', '9.L.1.1', 'SB1', 'Analyze the nature of the relationships between structures and functions in living cells, including the chemistry of biomolecules.'),
('GA', '9.L.1.2', 'SB1', 'Analyze the nature of the relationships between structures and functions in living cells, including cell organelles.'),
('GA', '9.L.1.3', 'SB1', 'Analyze cell structures and functions, including cellular respiration and photosynthesis as energy-transformation processes.'),
('GA', '9.L.1.1–3', 'SB1', 'Analyze the nature of the relationships between structures and functions in living cells.'),
('GA', '9.L.2.1', 'SB2', 'Analyze how genetic information is expressed in cells, including DNA replication and protein synthesis.'),
('GA', '9.L.2.2', 'SB2', 'Analyze how genetic information is expressed in cells, including how mutations create genetic variation.'),
('GA', '9.L.2.3', 'SB3', 'Analyze how biological traits are passed on to successive generations, including meiosis and genetic diversity.'),
('GA', '9.L.2.1–3', 'SB2', 'Analyze how genetic information is expressed and passed on, applied to a genetic-disorder case study.'),
('GA', '9.L.3.1', 'SB6', 'Assess the theory of evolution, including evidence for evolution.'),
('GA', '9.L.3.2', 'SB6', 'Assess the theory of evolution, including speciation and biodiversity.'),
('GA', '9.L.3.1–2', 'SB6', 'Assess the theory of evolution, including evidence for evolution, speciation, and classification.'),
('GA', '9.L.4.1', 'SB5', 'Assess the interdependence of all organisms on one another and their environment, including ecosystem dynamics and population growth.'),
('GA', '9.L.4.2', 'SB5', 'Assess the interdependence of all organisms on one another and their environment, including human impact and conservation biology.')
ON CONFLICT (state, source_code) DO UPDATE SET target_code = EXCLUDED.target_code, target_description = EXCLUDED.target_description;
