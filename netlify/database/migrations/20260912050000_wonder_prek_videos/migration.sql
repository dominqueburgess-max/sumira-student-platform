-- Curated videos for Wonder Studio PreK courses (math-prek, ela-prek).
-- Per Dominque's direction, Wonder Studio (PreK-2) gets ONLY curated
-- videos added to each lesson -- no Classwork/Homework assignment cards
-- (those don't fit pre-readers/early readers who work with a parent).
-- The existing quiz-question practice mechanism is left in place.
-- First pass of task #164.

-- ===== math-prek (18 lessons) =====
UPDATE lessons SET video_url='https://www.youtube.com/watch?v=TShHga40XgQ', video_caption='Jack Hartmann: We Can Count Together (a counting song for young learners)'
WHERE title='Counting to 5' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=v6Y1ojGjQE8', video_caption='What Comes Next? Pattern Game for Kids with Bubbles and Friends'
WHERE title='What Comes Next?' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=oqzWr5ILxDM', video_caption='Same and Different for Preschool and Kindergarten: Sorting and Matching Activities'
WHERE title='Same or Different' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=jqNuEJCxkLg', video_caption='Scratch Garden: The Shape Song'
WHERE title='Finding Shapes' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=MBjjxSx45-Q', video_caption='Scratch Garden: The Patterns Practice Song'
WHERE title='Patterns All Around' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=lqX1NdKAhHo', video_caption='Jack Hartmann: I Can Count to 10'
WHERE title='Counting to 10' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=DWTEvb94mPo', video_caption='Matching and Counting Math Sets'
WHERE title='Matching Sets to Numbers' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=jXm74Me7E6g', video_caption='Big and Small Song for Kids: Fun Size Comparison Learning Song'
WHERE title='Big and Small' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=P2Dn8wMyxnA', video_caption='Sorting Song for Kids: Learn Colors, Shapes & Sizes'
WHERE title='Sorting by Color and Shape' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=kAThrCCX4ZM', video_caption='More and Less: Comparison for Kids, Preschool & Kindergarten Learning Video'
WHERE title='More and Less Comparisons' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=W8lXg28JaOI', video_caption='Count and Match Numbers 1-5'
WHERE title='Number Recognition 1-5' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=47O16y3ZMtU', video_caption='Counting to Ten: Number Recognition 1-10 for Kids'
WHERE title='Number Recognition 6-10' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=fAFkZ9ICTEA', video_caption='Fun Jigsaw Puzzles for Toddlers & Preschool Learning'
WHERE title='Simple Puzzles and Spatial Awareness' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=Clf21HQAnlw', video_caption='Jack Hartmann: Here We Go - Directions Song for Kids (Positional Words & Spatial Awareness)'
WHERE title='Positional Words: Over, Under, Beside' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=bAs5Hf_zlRo', video_caption='Match Numbers with Pictures: Fun Counting Game for Kids'
WHERE title='Counting Collections' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=VPUSrsudOzo', video_caption='One More, One Less Song for Kids'
WHERE title='One More, One Less' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ZnZYK83utu0', video_caption='3D Shapes Song for Kids: Spheres, Cylinders, Pyramids, Cubes & Cones'
WHERE title='Exploring 3D Shapes' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=Yz6mcKsst0o', video_caption='Building Blocks: Kids STEM Toys, Educational Making Shapes'
WHERE title='Building with Blocks' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='math-prek'));

-- ===== ela-prek (18 lessons) =====
UPDATE lessons SET video_url='https://www.youtube.com/watch?v=JVYa4Vv4mYY', video_caption='Jack Hartmann: Beginning Sounds Song (Word Play)'
WHERE title='Listening for Sounds' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=vwxNBQnhRrM', video_caption='Jack Hartmann: Learning Letter Sounds - Alphabet Song for Kids'
WHERE title='My Name Starts With...' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=ygw4KWfi-jg', video_caption='Storytime: Maisy Goes to Preschool - Read Aloud Stories for Children'
WHERE title='Story Time Together' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=cR-Qr1V8e_w', video_caption='Super Simple Songs: The Alphabet Chant, ABC Songs for Preschool'
WHERE title='Finding Letters' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=lpf_g_1czfU', video_caption='Concepts of Print in Kindergarten (reading left to right, top to bottom)'
WHERE title='Left to Right' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=RVophT8naUM', video_caption='Jack Hartmann: I Love to Rhyme'
WHERE title='Rhyming Fun' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=2Czm2p3stVM', video_caption='Jack Hartmann: Clap Our Syllables'
WHERE title='Clapping Syllables' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=Y88p4V_BCEU', video_caption='Super Simple Songs: The ABC Song (Easy Alphabet Song)'
WHERE title='The Alphabet Song' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=6ZHcgs9I3BI', video_caption='How to Use Puppets to Teach Children (for Parents and Teachers)'
WHERE title='Retelling with Puppets' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=4yZvgPOoI6Q', video_caption='Letter Recognition and Identification, Part One: Learn Letters A to E'
WHERE title='Letter Recognition A-E' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=OAW09Wddsck', video_caption='Learn the Alphabet A to Z: Letter Recognition for Kids with Bubbles and Friends'
WHERE title='Letter Recognition F-J' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=QSPZKmVF6ck', video_caption='Initial / Beginning Sounds for Kids - Video 2'
WHERE title='Letter Sound Match Games' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=Ffoa9_vfwHo', video_caption='Initial / Beginning Sounds for Kids!'
WHERE title='Beginning Sounds Sort' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=TBqC36-auI8', video_caption='Story Sequencing: First, Next, Then, Last'
WHERE title='Story Sequencing: First, Next, Last' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=S5-jPc6N5Xk', video_caption='Making Predictions: Comprehension for Kids'
WHERE title='Predicting What Happens Next' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=69ZhNfdaRtw', video_caption='The Feels: A Story About You and Your Feelings (Kids Learn Emotions)'
WHERE title='Talking About Characters' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=rVwtaLdO7Q4', video_caption='Draw and Tell Story'
WHERE title='Drawing to Tell a Story' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));

UPDATE lessons SET video_url='https://www.youtube.com/watch?v=UxsVx3m9xiU', video_caption='Preschool Show and Tell: Planning and Tips for New Teachers'
WHERE title='Sharing News: Show and Tell' AND unit_id IN (SELECT id FROM units WHERE course_id=(SELECT id FROM courses WHERE slug='ela-prek'));
