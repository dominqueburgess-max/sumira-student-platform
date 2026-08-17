UPDATE lessons SET video_caption = 'A teacher counting ten blocks out loud one at a time, touching each block.' WHERE title = 'Counting to 10';
UPDATE lessons SET video_caption = 'Five crayons being counted one by one, ending on the total count.' WHERE title = 'How Many Are There?';
UPDATE lessons SET video_caption = 'Two piles of blocks, 4 and 7, being compared side by side.' WHERE title = 'More or Fewer';
UPDATE lessons SET video_caption = 'A hand tracing a circle, then a square, then a triangle on paper.' WHERE title = 'Circles, Squares, and Triangles';
UPDATE lessons SET video_caption = 'Simple shapes being combined to build a house and a truck out of paper cutouts.' WHERE title = 'Building with Shapes';
UPDATE lessons SET video_caption = 'Two small groups of counters being pushed together and recounted as one group.' WHERE title = 'Joining Groups Together';
UPDATE lessons SET video_caption = 'A group of objects with some being removed one at a time while counting down.' WHERE title = 'Taking Away';
UPDATE lessons SET video_caption = 'A number sentence with a blank box being solved by counting objects.' WHERE title = 'Finding the Missing Number';
UPDATE lessons SET video_caption = 'Base-ten blocks being grouped into tens and leftover ones to build a two-digit number.' WHERE title = 'Tens and Ones';
UPDATE lessons SET video_caption = 'Tens and ones blocks from two numbers being combined to find a two-digit sum.' WHERE title = 'Adding Two-Digit Numbers';
UPDATE lessons SET video_caption = 'A teacher exaggerating the /m/ sound while saying words like ''mom'' and ''moon.''' WHERE title = 'The Sound of "M"';
UPDATE lessons SET video_caption = 'Picture cards of a cat and a hat being paired to show rhyming words.' WHERE title = 'Rhyming Words';
UPDATE lessons SET video_caption = 'A child writing a simple sentence with a capital letter and ending period highlighted.' WHERE title = 'My First Sentence';
UPDATE lessons SET video_caption = 'Individual letter sounds /c/ /a/ /t/ being slowly blended together into the word ''cat.''' WHERE title = 'Blending Sounds Into Words';
UPDATE lessons SET video_caption = 'A child reading a short illustrated story aloud, pointing to words as they go.' WHERE title = 'Reading a Short Story';
UPDATE lessons SET video_caption = 'A short passage being read with the main idea highlighted among supporting details.' WHERE title = 'Finding the Main Idea';
UPDATE lessons SET video_caption = 'A child drawing pictures for a beginning, middle, and end and writing simple sentences for each.' WHERE title = 'Writing My Own Story';

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Counting to 10'), 1, 'multiple_choice', 'What number do we say last when counting 10 objects?', '["1", "5", "10"]'::jsonb, 2),
((SELECT id FROM lessons WHERE title='Counting to 10'), 2, 'short_answer', 'Count 10 things around your room and name them.', NULL, NULL),
((SELECT id FROM lessons WHERE title='How Many Are There?'), 1, 'multiple_choice', 'If you count 5 crayons and stop, what does the last number tell you?', '["The color", "How many there are in all", "The shape"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='How Many Are There?'), 2, 'short_answer', 'Count a handful of small toys. How many did you get?', NULL, NULL),
((SELECT id FROM lessons WHERE title='More or Fewer'), 1, 'multiple_choice', 'A pile of 7 blocks and a pile of 4 blocks — which has more?', '["The pile of 4", "The pile of 7", "They are the same"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='More or Fewer'), 2, 'short_answer', 'Make two piles of toys. Which one has more?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Circles, Squares, and Triangles'), 1, 'multiple_choice', 'How many sides does a square have?', '["3", "4", "0"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Circles, Squares, and Triangles'), 2, 'short_answer', 'Find one circle, one square, and one triangle in your house.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Building with Shapes'), 1, 'multiple_choice', 'Which two shapes could you use to build a simple house (a square body and a triangle roof)?', '["Circle and circle", "Square and triangle", "Triangle and triangle"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Building with Shapes'), 2, 'short_answer', 'Build something using shapes cut from paper or blocks. What did you make?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Joining Groups Together'), 1, 'multiple_choice', 'If you join a group of 3 and a group of 4, how many do you have in all?', '["6", "7", "8"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Joining Groups Together'), 2, 'short_answer', 'Make up your own joining story using two groups of toys.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Taking Away'), 1, 'multiple_choice', 'If you have 8 objects and take away 3, how many are left?', '["5", "8", "3"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Taking Away'), 2, 'short_answer', 'Act out a subtraction story using toys and describe what happened.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Finding the Missing Number'), 1, 'multiple_choice', '5 + __ = 9. What number goes in the blank?', '["3", "4", "5"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Finding the Missing Number'), 2, 'short_answer', 'Make up your own missing number problem and solve it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Tens and Ones'), 1, 'multiple_choice', 'The number 34 has how many tens?', '["3", "4", "34"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='Tens and Ones'), 2, 'short_answer', 'Use blocks or drawings to show the number 27 as tens and ones.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Adding Two-Digit Numbers'), 1, 'multiple_choice', 'What is 23 + 15?', '["28", "38", "48"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Adding Two-Digit Numbers'), 2, 'short_answer', 'Solve 42 + 26 and explain how you found the answer.', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Sound of "M"'), 1, 'multiple_choice', 'Which word starts with the /m/ sound?', '["Sun", "Moon", "Cat"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='The Sound of "M"'), 2, 'short_answer', 'Say one more word that starts with the /m/ sound.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Rhyming Words'), 1, 'multiple_choice', 'Which word rhymes with ''cat''?', '["Dog", "Hat", "Sun"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Rhyming Words'), 2, 'short_answer', 'Say a word that rhymes with ''sun.''', NULL, NULL),
((SELECT id FROM lessons WHERE title='My First Sentence'), 1, 'multiple_choice', 'What should a sentence end with?', '["A period", "A number", "Nothing"]'::jsonb, 0),
((SELECT id FROM lessons WHERE title='My First Sentence'), 2, 'short_answer', 'Write one simple sentence about your favorite toy.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Blending Sounds Into Words'), 1, 'multiple_choice', 'What word do you get when you blend /c/ /a/ /t/?', '["Cot", "Cat", "Cap"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Blending Sounds Into Words'), 2, 'short_answer', 'Try blending the sounds /d/ /o/ /g/. What word did you make?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reading a Short Story'), 1, 'multiple_choice', 'What should you do if you don''t know a word while reading?', '["Skip the whole book", "Sound it out or ask for help", "Stop reading forever"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Reading a Short Story'), 2, 'short_answer', 'Read a short story and tell one thing that happened in it.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Finding the Main Idea'), 1, 'multiple_choice', 'The main idea of a story is...', '["A tiny unimportant detail", "The most important point of the story", "The last word on the page"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Finding the Main Idea'), 2, 'short_answer', 'Read a short paragraph and write its main idea in one sentence.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Writing My Own Story'), 1, 'multiple_choice', 'Every story needs a beginning, a middle, and a...', '["Title page only", "End", "Cover"]'::jsonb, 1),
((SELECT id FROM lessons WHERE title='Writing My Own Story'), 2, 'short_answer', 'Write a short story with a beginning, middle, and end.', NULL, NULL);
