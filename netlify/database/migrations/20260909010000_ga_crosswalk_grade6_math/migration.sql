-- Georgia standards crosswalk for Grade 6 Venture Math -- the first state
-- crosswalk authored, covering every distinct NC standards_code string used
-- in this course. Sourced from Georgia's K-12 Mathematics Standards
-- (SY2023-2024 rollout, domains NR/Numerical Reasoning, PAR/Patterning &
-- Algebraic Reasoning, GSR/Geometric & Spatial Reasoning), which replaced
-- the older MGSE code format.

INSERT INTO standards_crosswalk (state, source_code, target_code, target_description) VALUES
('GA', 'NC.6.RP.1', '6.NR.4.1', 'Explain the concept of a ratio and use ratio language to describe a relationship between two quantities.'),
('GA', 'NC.6.RP.2', '6.NR.4.4–4.5', 'Describe rates and unit rate in the context of a ratio relationship, and solve unit rate problems including unit pricing and constant speed.'),
('GA', 'NC.6.RP.3', '6.NR.4.3', 'Solve problems involving ratios and proportional relationships using a variety of student-selected strategies.'),
('GA', 'NC.6.RP.1–3', '6.NR.4', 'Solve a variety of contextual problems involving ratios, unit rates, equivalent ratios, and proportional reasoning.'),
('GA', 'NC.6.NS.1', '6.NR.1', 'Fluently multiply and divide fractions and mixed numbers, and interpret quotients of fractions, using student-selected strategies.'),
('GA', 'NC.6.NS.2, NC.6.NS.3', '6.NR.1', 'Fluently add, subtract, multiply, and divide multi-digit decimal numbers using student-selected strategies.'),
('GA', 'NC.6.NS.5, NC.6.NS.6', '6.NR.3, 6.PAR.8', 'Identify and compare integers, explain the meaning of zero, and graph rational numbers as points in all four quadrants of the coordinate plane.'),
('GA', 'NC.6.RP.1–3, NC.6.NS.1–3, NC.6.NS.5–6', '6.NR.1, 6.NR.3, 6.NR.4, 6.PAR.8', 'Applies fraction/decimal operations, ratio and rate reasoning, and integer/coordinate-plane understanding to a real-world project.'),
('GA', 'NC.6.EE.1, NC.6.EE.2', '6.PAR.6', 'Write, evaluate, and interpret numerical and algebraic expressions as mathematical models to explain real situations.'),
('GA', 'NC.6.EE.6, NC.6.EE.7', '6.PAR.7', 'Write and solve one-step equations as mathematical models to explain real situations.'),
('GA', 'NC.6.EE.5, NC.6.EE.8', '6.PAR.7', 'Write and solve one-step inequalities as mathematical models to explain real situations, and represent solutions on a number line.'),
('GA', 'NC.6.EE.1–8', '6.PAR.6, 6.PAR.7', 'Assesses writing/evaluating expressions and writing/solving one-step equations and inequalities.'),
('GA', 'NC.6.G.1', '6.GSR.5', 'Solve real-world and mathematical problems involving the area of triangles, quadrilaterals, and other polygons.'),
('GA', 'NC.6.G.4', '6.GSR.5', 'Solve real-world and mathematical problems involving surface area, using nets made of rectangles and triangles.'),
('GA', 'NC.6.G.1, NC.6.G.2, NC.6.G.4', '6.GSR.5', 'Solve real-world and mathematical problems involving area, surface area, and volume.')
ON CONFLICT (state, source_code) DO UPDATE SET target_code = EXCLUDED.target_code, target_description = EXCLUDED.target_description;
