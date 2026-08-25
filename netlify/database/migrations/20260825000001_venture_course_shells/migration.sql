-- Add a status column to courses so we can ship course "shells" ahead of
-- full lesson content (e.g. Venture Studio grades 6-12), and mark them
-- coming_soon until real lessons are written.
ALTER TABLE courses ADD COLUMN IF NOT EXISTS status TEXT NOT NULL DEFAULT 'published';

-- Venture Studio (Grades 6-12) course shells: Math, ELA, Science.
-- These have no units/lessons yet (content library in progress). They exist
-- now so admin can start assigning students to the right course as soon as
-- content is seeded, without needing another migration + redeploy later.
INSERT INTO courses (slug, title, subject, studio, grade_level, description, source_attribution, color, position, status) VALUES
('venture-math-6', 'Math 6', 'Math', 'venture', '6', 'Ratios, proportional reasoning, and expressions.', 'Su Mira content, aligned to the NC Standard Course of Study (Grade 6 Math)', 'terracotta', 0, 'coming_soon'),
('venture-math-7', 'Math 7', 'Math', 'venture', '7', 'Proportional relationships, expressions, and probability.', 'Su Mira content, aligned to the NC Standard Course of Study (Grade 7 Math)', 'terracotta', 1, 'coming_soon'),
('venture-math-8', 'Math 8', 'Math', 'venture', '8', 'Linear equations, functions, and the foundations of algebra.', 'Su Mira content, aligned to the NC Standard Course of Study (Grade 8 Math)', 'terracotta', 2, 'coming_soon'),
('venture-algebra-1', 'Algebra 1', 'Math', 'venture', '8-9', 'Linear, quadratic, and exponential functions and equations.', 'Su Mira content, aligned to the NC Standard Course of Study (Math I / Algebra 1)', 'terracotta', 3, 'coming_soon'),
('venture-geometry', 'Geometry', 'Math', 'venture', '9-10', 'Proof, congruence, similarity, and coordinate geometry.', 'Su Mira content, aligned to the NC Standard Course of Study (Math II / Geometry)', 'terracotta', 4, 'coming_soon'),
('venture-algebra-2', 'Algebra 2', 'Math', 'venture', '10-11', 'Polynomial, rational, exponential, and logarithmic functions.', 'Su Mira content, aligned to the NC Standard Course of Study (Math III / Algebra 2)', 'terracotta', 5, 'coming_soon'),
('venture-precalculus', 'Pre-Calculus', 'Math', 'venture', '11-12', 'Advanced functions, trigonometry, and preparation for calculus.', 'Su Mira content, aligned to the NC Standard Course of Study (Pre-Calculus)', 'terracotta', 6, 'coming_soon'),

('venture-ela-6', 'ELA 6', 'ELA', 'venture', '6', 'Reading comprehension, argument writing, and vocabulary.', 'Su Mira content, aligned to the NC Standard Course of Study (Grade 6 ELA)', 'sage', 0, 'coming_soon'),
('venture-ela-7', 'ELA 7', 'ELA', 'venture', '7', 'Literary analysis, informational reading, and narrative writing.', 'Su Mira content, aligned to the NC Standard Course of Study (Grade 7 ELA)', 'sage', 1, 'coming_soon'),
('venture-ela-8', 'ELA 8', 'ELA', 'venture', '8', 'Argument, research, and literary analysis across genres.', 'Su Mira content, aligned to the NC Standard Course of Study (Grade 8 ELA)', 'sage', 2, 'coming_soon'),
('venture-english-9', 'English 9', 'ELA', 'venture', '9', 'World literature, composition, and rhetorical skills.', 'Su Mira content, aligned to the NC Standard Course of Study (English I)', 'sage', 3, 'coming_soon'),
('venture-english-10', 'English 10', 'ELA', 'venture', '10', 'World and American literature with expository writing.', 'Su Mira content, aligned to the NC Standard Course of Study (English II)', 'sage', 4, 'coming_soon'),
('venture-english-11', 'English 11', 'ELA', 'venture', '11', 'American literature, rhetoric, and research writing.', 'Su Mira content, aligned to the NC Standard Course of Study (English III)', 'sage', 5, 'coming_soon'),
('venture-english-12', 'English 12', 'ELA', 'venture', '12', 'British/world literature, college composition, and career writing.', 'Su Mira content, aligned to the NC Standard Course of Study (English IV)', 'sage', 6, 'coming_soon'),

('venture-life-science', 'Life Science', 'Science', 'venture', '6-7', 'Cells, heredity, ecosystems, and evolution.', 'Su Mira content, aligned to the NC Standard Course of Study (Life Science)', 'amber', 0, 'coming_soon'),
('venture-earth-environmental-science', 'Earth & Environmental Science', 'Science', 'venture', '7-8', 'Earth systems, weather, climate, and human impact.', 'Su Mira content, aligned to the NC Standard Course of Study (Earth/Environmental Science)', 'amber', 1, 'coming_soon'),
('venture-physical-science', 'Physical Science', 'Science', 'venture', '8-9', 'Matter, energy, motion, and forces.', 'Su Mira content, aligned to the NC Standard Course of Study (Physical Science)', 'amber', 2, 'coming_soon'),
('venture-biology', 'Biology', 'Science', 'venture', '9-10', 'Cell biology, genetics, evolution, and ecology.', 'Su Mira content, aligned to the NC Standard Course of Study (Biology)', 'amber', 3, 'coming_soon'),
('venture-chemistry', 'Chemistry', 'Science', 'venture', '10-11', 'Atomic structure, reactions, stoichiometry, and bonding.', 'Su Mira content, aligned to the NC Standard Course of Study (Chemistry)', 'amber', 4, 'coming_soon'),
('venture-physics', 'Physics', 'Science', 'venture', '11-12', 'Motion, forces, energy, waves, and electricity.', 'Su Mira content, aligned to the NC Standard Course of Study (Physics)', 'amber', 5, 'coming_soon')
ON CONFLICT (slug) DO NOTHING;
