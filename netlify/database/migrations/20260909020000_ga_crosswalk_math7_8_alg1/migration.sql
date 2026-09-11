-- Georgia standards crosswalk for Venture Math 7, Venture Math 8, and
-- Algebra 1 -- covering every distinct source standards_code string used in
-- each course. Sourced from Georgia's K-12 Mathematics Standards
-- (SY2023-2024 rollout):
--   Grade 7 domains: NR (Numerical Reasoning), PAR (Patterning & Algebraic
--     Reasoning), GSR (Geometric & Spatial Reasoning), PR (Probability
--     Reasoning).
--   Grade 8 domains: NR, PAR, FGR (Functions & Graphical Reasoning), GSR.
--   Algebra: Concepts & Connections (10 top-level standards): A.MM.1,
--     A.FGR.2, A.GSR.3, A.PAR.4, A.NR.5, A.PAR.6, A.FGR.7, A.PAR.8,
--     A.FGR.9, A.DSR.10.
-- A few cumulative-review lessons intentionally span nearly every standard
-- in the course; those are left out of the crosswalk so the app's fallback
-- ("GA mapping coming soon") shows rather than a misleadingly narrow code.

INSERT INTO standards_crosswalk (state, source_code, target_code, target_description) VALUES
-- Venture Math 7
('GA', '7.RP.A.2', '7.PAR.4', 'Recognize proportional relationships in relevant, mathematical problems; represent, solve, and explain these relationships with tables, graphs, and equations.'),
('GA', '7.RP.A.2b-d', '7.PAR.4', 'Represent proportional relationships with equations and graphs, and interpret the constant of proportionality within a real-world context.'),
('GA', '7.RP.A.3', '7.NR.1', 'Solve relevant, multi-step problems involving the four operations with rational numbers and quantities in any form, including percentages such as tax, tip, markup, discount, and simple interest.'),
('GA', '7.RP.A.3, 7.NS.A.1-3', '7.NR.1', 'Solve relevant, multi-step problems involving the four operations with rational numbers, applied to a percent- and profit-based project.'),
('GA', '7.NS.A.1', '7.NR.1', 'Solve relevant, mathematical problems, including multi-step problems, involving addition and subtraction of rational numbers in any form.'),
('GA', '7.NS.A.2', '7.NR.1', 'Solve relevant, mathematical problems, including multi-step problems, involving multiplication and division of rational numbers in any form.'),
('GA', '7.NS.A.3', '7.NR.1', 'Solve relevant, multi-step mathematical problems involving the four operations with rational numbers.'),
('GA', '7.EE.A.1-2', '7.PAR.2', 'Use properties of operations to generate equivalent expressions and interpret those expressions to explain a real-world situation.'),
('GA', '7.EE.B.3-4a', '7.PAR.3', 'Represent authentic situations using equations with variables; solve multi-step equations symbolically, using the properties of equality.'),
('GA', '7.EE.B.4b', '7.PAR.3', 'Represent authentic situations using inequalities with variables; solve inequalities symbolically and explain the solution in context.'),
('GA', '7.G.A.1', '7.PAR.4', 'Solve problems involving scale drawings of geometric figures, including computing actual lengths and areas from a scale drawing, as an application of proportional relationships.'),
('GA', '7.G.A.4-5, 7.G.B.4', '7.GSR.5', 'Solve practical problems involving angle measurement, circles, and area/circumference of circles.'),
('GA', '7.G.A.1, 7.RP.A.2-3', '7.PAR.4', 'Apply scale drawings and proportional relationships (ratios, rates, percent) to a capstone modeling project.'),
-- Venture Math 8
('GA', '8.NS.A.1-2', '8.NR.1', 'Solve problems involving irrational numbers and rational approximations of irrational numbers to explain realistic applications.'),
('GA', '8.EE.A.1', '8.NR.2', 'Solve problems involving integer exponents, including relevant application situations.'),
('GA', '8.EE.A.2-4', '8.NR.2', 'Solve problems involving radicals, integer exponents, and scientific notation to explain real phenomena.'),
('GA', '8.EE.A.3-4', '8.NR.2', 'Apply place value understanding with scientific notation and use it to explain real phenomena involving very large or very small numbers.'),
('GA', '8.EE.C.7', '8.PAR.3', 'Create, interpret, and solve linear equations in one variable, including equations with variables on both sides, to model and explain real phenomena.'),
('GA', '8.EE.C.8a-b', '8.FGR.7', 'Understand and represent solutions to systems of two linear equations, introducing solving by graphing and substitution.'),
('GA', '8.EE.C.8c', '8.FGR.7', 'Solve systems of two linear equations by graphing and substitution to model and explain real phenomena.'),
('GA', '8.F.A.1-2', '8.FGR.5', 'Compare properties of functions represented algebraically, graphically, numerically, and verbally, applied to a break-even business project.'),
('GA', '8.F.A.3, 8.F.B.4', '8.FGR.5', 'Show and explain the connections between linear functions, their rate of change, and their graphical/algebraic representations.'),
('GA', '8.F.B.5', '8.FGR.5', 'Describe qualitatively the functional relationship between two quantities by analyzing a graph, and sketch a graph exhibiting the qualitative features of a function.'),
('GA', '8.G.A.1-3', '8.GSR.8', 'Solve geometric problems involving transformations (translations, reflections, and rotations) to explain real phenomena.'),
('GA', '8.G.A.4-5, 8.G.B.6-8', '8.GSR.8', 'Solve geometric problems involving congruence, similarity, dilations, and the Pythagorean Theorem to explain real phenomena.'),
('GA', '8.G.B, 8.F.A-B', '8.FGR.5', 'Apply function modeling and geometric reasoning together in a capstone product-launch pitch project.'),
-- Algebra 1 (Algebra: Concepts & Connections)
('GA', 'HSA-SSE.A.1', 'A.PAR.6', 'Interpret and build equivalent forms of expressions, extended in Georgia''s Algebra course through quadratic expressions and equations; order-of-operations/property fluency is a Grade 8 prerequisite.'),
('GA', 'HSA-REI.A.1, HSA-REI.B.3', 'A.PAR.4', 'Solve linear equations, extending the equation-solving fluency this standard''s work with linear inequalities and systems of linear inequalities builds on.'),
('GA', 'HSA-CED.A.4', 'A.GSR.3', 'Rearrange formulas to solve for a given variable, applied here alongside distance, midpoint, slope, area, and perimeter formulas.'),
('GA', 'HSA-REI.B.3, HSA-REI.D.12', 'A.PAR.4', 'Create, analyze, and solve linear inequalities in two variables to model and explain real-life phenomena.'),
('GA', 'HSA-CED.A.1-3', 'A.MM.1', 'Create equations and inequalities from a real-life context and use them to model and explain a mathematically applicable situation.'),
('GA', 'HSF-IF.B.6, HSF-LE.A.1', 'A.FGR.2', 'Construct and interpret linear functions algebraically and graphically, using formal notation and comparing linear vs. non-linear behavior, to model real-life phenomena.'),
('GA', 'HSF-LE.A.2', 'A.FGR.2', 'Construct linear functions, including writing an equation of a line given key features such as slope and a point.'),
('GA', 'HSA-REI.C.6', 'A.PAR.4', 'Solve a system by combining it with the standard''s work on systems of linear inequalities and linear modeling.'),
('GA', 'HSN-RN.A.1-2', 'A.NR.5', 'Rewrite algebraic and numeric expressions involving radicals and rational exponents.'),
('GA', 'HSF-IF.C.7e, HSF-LE.A.1-2', 'A.FGR.9', 'Graph and analyze the key characteristics of exponential functions based on mathematically applicable situations, distinguishing exponential growth/decay from linear change.'),
('GA', 'HSA-REI.C.6, HSF-LE.A', 'A.FGR.9', 'Apply exponential function modeling (growth) alongside systems-based linear modeling in a capstone business-pitch project.')
ON CONFLICT (state, source_code) DO UPDATE SET target_code = EXCLUDED.target_code, target_description = EXCLUDED.target_description;
