-- Black Urban Studies I (Grades 6-7) Venture Studio: full unit/lesson/question content for Fall 2026 (Sept 8 - Dec 31).
-- Original Su Mira curriculum, project-based: every assessment is a produced project (short_answer only, no quizzes/multiple_choice).
-- Aligned to the NC Standard Course of Study for Social Studies (Grades 6-7, History/Geography/Economics strands).

UPDATE courses SET status = 'published' WHERE slug = 'venture-black-urban-studies-1';

INSERT INTO units (course_id, title, position) VALUES
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'), 'Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities', 0),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'), 'Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage', 1),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'), 'Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods', 2),
((SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'), 'Unit 4: The Great Migration & the Birth of the Black Urban Renaissance', 3);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'West African Kingdoms: Mali, Songhai & Ghana', 1, 'lesson',
  $lesson$## Before America: Powerful African Civilizations

Long before the transatlantic slave trade began, West Africa was home to some of the wealthiest and most sophisticated civilizations in the world. This is where your Black Urban Studies journey starts — not with slavery, but with power, trade, and cities that rivaled anything in medieval Europe.

### The Empire of Ghana (c. 300–1200 CE)

The Ghana Empire built its wealth controlling the trans-Saharan trade routes that moved gold north and salt south. Its capital, Koumbi Saleh, was a genuine city — with a royal quarter, a merchants' quarter, and mosques serving Muslim traders who came from across North Africa.

### The Empire of Mali (c. 1235–1600 CE)

Mali grew even larger under its founder, Sundiata Keita, and reached its peak under Mansa Musa, who ruled from roughly 1312 to 1337. Mansa Musa's 1324 pilgrimage to Mecca is one of the best-documented events in medieval world history: he reportedly traveled with thousands of attendants and so much gold that he caused inflation in the cities he passed through. Mali's city of Timbuktu became a global center of learning, home to the University of Sankore and a legendary collection of manuscripts on law, astronomy, and medicine.

### The Songhai Empire (c. 1464–1591 CE)

Songhai eventually absorbed much of Mali's territory and became the largest empire in West African history, with a professional army, a system of provincial governors, and a thriving trade in gold, salt, textiles, and enslaved labor (a practice that existed within Africa before European contact, though it operated very differently from the racialized, hereditary chattel slavery Europeans later built in the Americas).

### Why This Matters for Urban Studies

These weren't scattered villages — they were empires with capital cities, trade infrastructure, universities, and governments. Understanding this is the foundation of everything else in this course: the story of Black history in American cities begins with civilizations that were already building cities, economies, and institutions of their own.

### Your Project This Week

You'll choose one of these three kingdoms (or another West African kingdom of your choice, with approval) and begin building a **Kingdom Profile** — the first piece of your Unit 1 project, due next week.$lesson$,
  '6.H.1.1', 'Analyze the political, economic, and cultural development of early West African civilizations and their role in global trade networks.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'The Transatlantic Slave Trade & the Middle Passage', 2, 'lesson',
  $lesson$## From Kingdoms to Kidnapping: How the Slave Trade Began

Last lesson, you learned about African civilizations with real power. This lesson explains the historical turning point that connects those civilizations to the story of Black America: the transatlantic slave trade.

### How It Started

Beginning in the 1500s, European nations — first Portugal and Spain, later England, France, and the Netherlands — built a trade system that forcibly transported enslaved Africans across the Atlantic Ocean to work on plantations and in mines in the Americas. Historians estimate that over roughly 400 years, more than 12 million Africans were forced onto European and American slave ships; about 10.7 million survived the crossing.

### The Triangular Trade

The trade route formed a triangle: ships carried manufactured goods (cloth, guns, alcohol) from Europe to West Africa, where they were traded for captive Africans; those ships then carried the enslaved to the Americas (the Middle Passage); and the third leg carried raw materials — sugar, cotton, tobacco — back to Europe. Some African kingdoms and traders participated in capturing and selling war captives or debtors into this system, but the scale, brutality, and permanent hereditary nature of American chattel slavery had no real precedent in Africa.

### The Middle Passage

The Middle Passage — the ocean crossing itself — typically took 6 to 11 weeks. Enslaved people were chained below deck in extremely cramped, unsanitary conditions. Disease, dehydration, and violence killed an estimated 15% of captives during the crossing itself. Survivors arrived in the Americas traumatized, separated from family and community, and legally defined as property.

### Where They Landed

Enslaved Africans arriving in North America were sold in ports including Charleston, South Carolina (the single largest point of entry, receiving nearly half of all enslaved Africans brought to what became the United States) and Savannah, Georgia. From these ports, they were forced into the plantation economy you'll study in Unit 2.

### Your Project This Week

Continue your Kingdom Profile from Lesson 1, and add a second element: a short primary-source response analyzing a real historical account or document related to the Middle Passage (your teacher/parent guide will provide or help you find an age-appropriate excerpt).$lesson$,
  '6.H.1.2', 'Explain the causes, geography, and human consequences of the transatlantic slave trade, including the Middle Passage.', 30
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Small Project 1: Mapping the Middle Passage', 3, 'practice',
  $lesson$## Small Project 1: Mapping the Middle Passage

This week you'll bring together everything from Lessons 1 and 2 into one finished project: an annotated map and profile connecting a West African kingdom to the transatlantic slave trade.

### The Deliverable

Produce ONE combined project with two parts:

**Part A — Kingdom Profile (from Lesson 1).** A one-page profile of your chosen West African kingdom including: its approximate dates, one ruler or leader, its capital city, and at least two pieces of evidence of its political/economic power.

**Part B — Annotated Middle Passage Map.** A hand-drawn or digital map showing: the West African coast your kingdom traded from, the Atlantic Ocean crossing (the Middle Passage), and at least one North American port of arrival (such as Charleston, SC or Savannah, GA). Label the map with three facts you learned this unit.

### Why This Project Matters

Historians and geographers both use exactly this kind of source — an annotated map paired with a written profile — to help people understand how history and geography are connected. You're not just memorizing facts; you're building the same kind of research artifact a museum curator or historian would produce.

### Submission Checklist

- Kingdom Profile is complete with at least 2 pieces of evidence of power
- Map shows Africa, the Atlantic crossing, and at least one American port
- Map includes at least 3 labeled facts
- Both parts are neatly presented and could be shown in a classroom gallery walk

Next week, you'll bring this project to a Project Workshop for peer feedback before it's considered final.$lesson$,
  '6.H.1.1-2, 6.G.1.1', 'Apply understanding of West African kingdoms and the transatlantic slave trade to produce an original annotated map and research profile.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Project Workshop & Peer Critique: Refining Your Middle Passage Project', 4, 'practice',
  $lesson$## Project Workshop & Peer Critique

This course has no multiple-choice quizzes. Instead, every unit includes a **Project Workshop** — a structured peer-feedback session, exactly like the critiques designers, architects, and founders use to improve real work before it ships.

### How a Project Workshop Works

1. **Gallery Walk.** Post or display your Kingdom Profile & Middle Passage Map project where classmates (or family members, in a homeschool setting) can see it.
2. **Warm Feedback.** Each reviewer names one specific thing that works well — not just "good job," but exactly what and why (e.g., "Your map clearly shows the trade route with arrows").
3. **Cool Feedback.** Each reviewer names one specific thing that could be stronger, framed as a question or suggestion (e.g., "Could you add a date range to your kingdom's timeline?").
4. **Revise.** You take the feedback and make at least one real change to your project.

### Why This Replaces a Quiz

A quiz checks whether you memorized facts for one day. A Project Workshop checks something more useful: can you explain your reasoning, take feedback well, and improve real work? These are the actual skills historians, researchers, and professionals use every week.

### This Week's Task

Run your Kingdom Profile & Middle Passage Map through a Project Workshop, record the feedback you received, and describe the specific revision you made in response.$lesson$,
  '6.H.1.1-3', 'Apply structured peer critique to revise and strengthen an original historical research project.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Daily Life, Labor & the Plantation Economy', 5, 'lesson',
  $lesson$## Understanding the Plantation Economy

To understand Black urban history, you first have to understand the economic system it grew out of: the plantation economy of the American South.

### What Was a Plantation Economy?

A plantation economy is built around large farms (plantations) that grow a single cash crop for export — in the American South, primarily cotton, tobacco, rice, and sugar. This system depended entirely on the forced, unpaid labor of enslaved people. By 1860, roughly 4 million people were enslaved in the United States, and cotton grown by enslaved labor made up more than half of all U.S. exports.

### Daily Life Under Slavery

Enslaved people worked from sunrise to sunset in the fields, in the plantation house, or in skilled trades (blacksmithing, carpentry, midwifery). Families could legally be separated at any time through sale — a constant threat used to control enslaved communities. Enslaved people had no legal rights: they could not own property, testify in court against a white person, or legally marry.

### The Economics of an Unjust System

This is also, uncomfortably, an economics lesson: enslavers built extraordinary wealth by paying no wages at all. Economists who study this today estimate that enslaved people's uncompensated labor is one of the largest unpaid debts in American history — wealth that helped build banks, universities, and infrastructure that still exist. Understanding this economic engine is essential to understanding both the wealth gap you'll study in later Black Urban Studies courses and the origins of urban Black communities after emancipation.

### Your Project This Week

Begin a project journal entry analyzing how the plantation economy worked as an economic system — who benefited, who paid the cost, and how.$lesson$,
  '6.E.1.1', 'Analyze how the plantation economy relied on forced, unpaid labor and evaluate its economic consequences.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance', 6, 'lesson',
  $lesson$## Building Community Under Bondage

Even under the brutal conditions of slavery, enslaved people built rich, resilient communities — and that culture became one of the foundations of Black American identity.

### Music as Survival and Code

Spirituals — religious songs like "Wade in the Water" and "Follow the Drinking Gourd" — carried double meanings. On the surface, they were hymns; underneath, some carried coded directions for escape along the Underground Railroad. Music let enslaved people communicate, preserve African rhythmic traditions, and express hope and grief that could not be spoken openly.

### Faith and the Invisible Church

Enslaved communities often practiced Christianity in secret, nighttime gatherings historians call the "invisible church," blending it with African spiritual traditions. These gatherings were spaces enslavers didn't fully control — places for community, leadership, and hope.

### Family, Against All Odds

Enslavers could legally separate families through sale at any time, yet enslaved people fought to maintain family bonds — through informal marriages, extended kinship networks, and passing down names, stories, and traditions across generations, even after forced separation.

### Everyday Resistance

Resistance wasn't only large rebellions (like Nat Turner's 1831 uprising) — it also included everyday acts: working slowly, breaking tools, feigning illness, learning to read in secret (illegal in most Southern states), and running away, sometimes permanently via the Underground Railroad, a network of secret routes and safe houses that helped an estimated 100,000 enslaved people escape to freedom between 1810 and 1850.

### Your Project This Week

Add to your project journal: choose one form of culture or resistance from this lesson and explain how it helped a community survive.$lesson$,
  '6.H.2.1', 'Explain how enslaved communities used culture, faith, family, and everyday resistance to survive and preserve identity.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Arrival & the First Free Black Settlements: Fort Mose', 7, 'lesson',
  $lesson$## Freedom Before the Revolution: Fort Mose

Most people assume the first free Black settlements in what's now the United States came after the Civil War. They're wrong — by about 125 years.

### Fort Mose, Florida (1738)

In 1738, Spanish Florida's governor granted freedom to enslaved Africans who escaped from British colonies (like the Carolinas) and reached Spanish territory, on the condition that they convert to Catholicism and serve in the Spanish militia. This policy led to the founding of Fort Mose (formally Gracia Real de Santa Teresa de Mose), near St. Augustine — the first legally sanctioned free Black settlement in what is now the United States.

### Why Fort Mose Existed

Spain's offer wasn't pure generosity — it was strategy. Freed Black settlers who owed their freedom to Spain became a loyal, motivated militia defending Spanish Florida against British attacks, and their presence was also a deliberate incentive drawing enslaved people to flee British colonies. Fort Mose's residents built homes, farmed, worshipped, and organized their own community and defense — becoming, in effect, America's first free Black town.

### What Happened to It

Fort Mose was evacuated in 1763 when Spain ceded Florida to Britain; its residents relocated to Cuba. But its existence matters enormously: it proves that Black self-governed communities in North America predate the United States itself, and that the drive to build independent Black towns — which you'll study again in Unit 3 — has deep historical roots.

### Your Project This Week

Finish your Unit 2 project journal with a short comparison: how does Fort Mose's story change what you thought you knew about Black history and freedom in early America?$lesson$,
  '6.H.1.3', 'Explain the significance of Fort Mose as the first legally sanctioned free Black settlement in what is now the United States.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'MAJOR PROJECT 1: Voices of Resistance', 8, 'practice',
  $lesson$## MAJOR PROJECT 1: Voices of Resistance

This is your first major project of the semester — a chance to bring together everything from Unit 2 into one powerful, original piece of historical storytelling.

### Driving Question

**"How did enslaved communities use culture, family, and everyday acts to resist and survive?"**

### The Challenge

Create a first-person narrative or podcast-style script (written or recorded, your choice) told from the perspective of a fictional-but-historically-grounded enslaved person or Fort Mose settler. Your character's story must accurately reflect at least THREE real historical details from this unit:

1. One detail about daily life or labor under the plantation economy
2. One detail about culture, faith, family, or everyday resistance
3. One detail connected to Fort Mose or the broader search for freedom

### Requirements

- 3–5 minutes if performed/recorded, or 500–700 words if written
- Told in first person ("I...")
- Includes a short source log listing the two real primary or secondary sources you used for historical accuracy
- Ends with one sentence reflecting on what your character's story teaches us today

### Why This Is the Assessment (Not a Quiz)

Real historians and documentary makers use exactly this method — oral history and narrative built from verified sources — to make the past feel real. This project asks you to do the same work a professional historian does: research, verify, and tell a true story in a human voice.$lesson$,
  '6.H.1-2, 6.E.1.1', 'Synthesize research on the plantation economy, enslaved culture and resistance, and early free Black settlements into an original historically grounded narrative.', 45
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Reconstruction & the Broken Promise of 40 Acres', 9, 'lesson',
  $lesson$## Reconstruction: Promise and Betrayal

The Civil War ended slavery in 1865. What came next — a period called Reconstruction (1865–1877) — is one of the most important and most misunderstood chapters in American history.

### "40 Acres and a Mule"

In January 1865, General William T. Sherman issued Special Field Order No. 15, setting aside roughly 400,000 acres of coastal land in Georgia and South Carolina to be redistributed to newly freed Black families in 40-acre plots, with the Army lending mules. Roughly 40,000 formerly enslaved people settled this land within months. It was the first large-scale attempt at Black land ownership in American history — and the seed of what could have been a very different economic future.

### The Betrayal

After President Lincoln's assassination in April 1865, President Andrew Johnson reversed the order later that year, returning almost all of that land to its former Confederate owners. The formerly enslaved families who had begun farming it were evicted. This single reversal is one of the most consequential “what if” moments in American economic history — many historians trace the roots of today's Black-white wealth gap directly back to this lost opportunity for land-based wealth.

### Black Codes and the Freedmen's Bureau

Southern states quickly passed "Black Codes" — laws restricting the rights, movement, and labor of newly freed Black people, effectively re-creating conditions close to slavery. The federal Freedmen's Bureau (1865–1872) tried to counter this by building schools, negotiating labor contracts, and providing some aid — but it was chronically underfunded and shut down after just seven years.

### Why This Sets Up Unit 3

Faced with betrayal from the federal government and hostility from local governments, many Black Americans chose a different path: building their own self-governed towns from scratch. That's where this unit goes next.

### Your Project This Week

Start your project journal: trace how the reversal of Special Field Order No. 15 connects to challenges Black communities still face today.$lesson$,
  '6.H.3.1', 'Explain the significance of Reconstruction-era land redistribution policy, its reversal, and its long-term economic consequences.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Real Black Townships: Nicodemus, Eatonville & Beyond', 10, 'lesson',
  $lesson$## Building Their Own Towns

Denied the land they were promised, thousands of Black Americans responded by founding their own self-governed towns — real places, many of which still exist today.

### Nicodemus, Kansas (Founded 1877)

Nicodemus was founded by formerly enslaved people from Kentucky as part of the "Exoduster" movement — a mass migration of roughly 20,000 Black Southerners to Kansas seeking land and self-governance in the late 1870s. Nicodemus residents built their own churches, schools, and businesses, governing the town themselves. It's recognized today as a National Historic Site and is one of the few remaining all-Black towns founded by formerly enslaved people west of the Mississippi.

### Eatonville, Florida (Founded 1887)

Eatonville holds a unique distinction: it was the first self-governed, incorporated all-Black municipality in the United States, meaning it had its own elected Black mayor, town council, and local government — fully recognized by the state. It's also the childhood home of the celebrated author Zora Neale Hurston, whose novels and folklore collections captured Eatonville's culture and independence.

### Why These Towns Mattered

These weren't just neighborhoods — they were acts of self-determination. Founding a town meant writing your own charter, electing your own leaders, running your own schools, and controlling your own economy, free from the direct control of a hostile white-majority government. Dozens of these all-Black towns were founded across the country between the 1870s and 1920s.

### The Challenges They Faced

Most of these towns struggled against discriminatory lending, being excluded from state infrastructure investment (roads, rail lines), and economic isolation — patterns of underinvestment that echo forward into the story of urban redlining you'll study in Black Urban Studies II.

### Your Project This Week

Research one additional historic all-Black town (beyond Nicodemus and Eatonville) to prepare for next week's project: designing your own.$lesson$,
  '6.G.1.1', 'Analyze the geographic and civic significance of self-governed Black townships founded after Reconstruction.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Small Project 2: Design a Freedmen''s Town', 11, 'practice',
  $lesson$## Small Project 2: Design a Freedmen's Town

Now it's your turn to build one. Using Nicodemus and Eatonville as your models, design an original Freedmen's Town of your own.

### The Deliverable

Produce a **Town Design Packet** with two parts:

**Part A — Town Map.** Draw a simple map of your town showing: a main street, at least one church, one school, one type of local business, and the surrounding farmland or land use.

**Part B — Town Charter (one page).** Write a short charter for your town including:
- Your town's name and founding year (choose a year between 1866–1920)
- Who can be a citizen and how leaders are chosen
- One rule protecting land ownership or land rights for residents
- One paragraph explaining what economic activity (farming, trade, a specific industry) will support the town

### Ground Your Design in Real History

At least two features of your town must be modeled directly on something real you learned about Nicodemus or Eatonville (for example: an elected Black town council, like Eatonville's, or an Exoduster-style land claim system, like Nicodemus's).

### Submission Checklist

- Map includes at least 4 labeled features
- Charter includes a founding year, a citizenship/leadership rule, a land-rights rule, and an economic plan
- At least 2 features are explicitly connected to Nicodemus or Eatonville

Next week, you'll bring this project to a Project Workshop for peer feedback.$lesson$,
  '6.H.3.1, 6.G.1.1', 'Apply understanding of Reconstruction-era land policy and self-governed Black townships to design an original, historically grounded town.', 40
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'Project Workshop & Peer Critique: Your Freedmen''s Town Charter', 12, 'practice',
  $lesson$## Project Workshop & Peer Critique

Time to put your Freedmen's Town Design Packet in front of real feedback — the same way a town planner would present a proposal to a review board.

### How This Workshop Works

1. **Present.** Share your town map and charter with a partner, group, or family member.
2. **Reviewer Role-Play.** Have your reviewer act as a state historical society reviewer deciding whether your town charter is historically believable. They should ask: "Is this realistic for the 1870s–1920s? Does the map match the charter?"
3. **Two Questions to Answer.** Your reviewer must ask you: (1) one question about something unclear in your charter, and (2) one question about whether your map and charter actually match each other.
4. **Revise.** Make at least one concrete change based on the feedback.

### Why This Matters

City and town planners still go through review processes like this today before any real plan is approved. You're practicing the exact skill of presenting a plan, defending your reasoning, and improving it under scrutiny — not memorizing facts for a test.

### This Week's Task

Run your Town Design Packet through this workshop process and record what changed.$lesson$,
  '6.H.3.1', 'Apply structured peer critique to revise and strengthen an original town-design project grounded in Reconstruction-era history.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'The Great Migration Begins: Push & Pull Factors', 13, 'lesson',
  $lesson$## The Great Migration: Six Million Journeys

Between 1916 and 1970, roughly six million Black Americans left the rural South for cities in the North, Midwest, and West in what historians call the Great Migration — one of the largest internal movements of people in American history.

### Push Factors: Why People Left

- **Jim Crow segregation laws**, which enforced legal racial separation and denied Black citizens basic rights and protections
- **Racial violence**, including lynching, which was used to terrorize Black communities and suppress political and economic power
- **Limited economic opportunity**, since Southern agriculture (especially after a boll weevil infestation devastated cotton crops in the 1910s–20s) offered few paths to a better life for Black sharecroppers and tenant farmers

### Pull Factors: Why People Chose Northern and Western Cities

- **Industrial jobs** in steel mills, stockyards, and factories in cities like Chicago, Detroit, and Pittsburgh, especially as World War I created labor shortages
- **The Black press**, particularly the *Chicago Defender* newspaper, which actively encouraged Southern Black readers to migrate and published train schedules and job listings
- **The hope of greater (though far from complete) freedom** from the daily threat of racial violence and legal segregation

### The Cities That Grew

Chicago's Black population grew from about 44,000 in 1910 to over 500,000 by 1950. Detroit, Harlem in New York City, and other Northern neighborhoods saw similarly explosive growth, as new arrivals built entirely new Black urban communities — with their own churches, newspapers, businesses, and cultural institutions — almost from scratch.

### Your Project This Week

Begin your capstone research: choose one Great Migration destination city and start a project journal tracing why people moved there and what they built once they arrived.$lesson$,
  '7.H.1.1', 'Analyze the push and pull factors driving the Great Migration and its effect on Northern and Western urban centers.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'The Harlem Renaissance & the Black Urban Renaissance', 14, 'lesson',
  $lesson$## When a Neighborhood Became a Movement

As the Great Migration filled Northern cities with new Black communities, something remarkable happened in one Manhattan neighborhood in particular: Harlem became the center of a cultural explosion known as the Harlem Renaissance (roughly 1918–1937).

### A Renaissance of Art, Writing & Music

Harlem in the 1920s was home to an extraordinary concentration of Black writers, artists, and musicians, including poet Langston Hughes, novelist and folklorist Zora Neale Hurston (the same writer connected to Eatonville, Florida, from Unit 3), and jazz musicians like Duke Ellington, who performed regularly at Harlem's Cotton Club. Their work asserted Black identity, culture, and artistic excellence at a moment when segregation was trying to claim the opposite.

### Not Just Harlem

Similar (if smaller) cultural flowerings happened in Black neighborhoods in Chicago (Bronzeville), Detroit, and other migration-era cities, each building newspapers, jazz clubs, churches, and mutual-aid organizations that anchored entire communities.

### Building Institutions, Not Just Culture

This period also saw the growth of Black-owned banks, insurance companies, and businesses that served communities largely locked out of white-owned financial institutions — institution-building that mirrors the Freedmen's Towns you studied in Unit 3, just now happening at urban scale.

### Connecting the Whole Semester

Look back at everything you've studied: African kingdoms with real institutions and wealth (Unit 1), community and culture surviving slavery (Unit 2), self-governed towns built after betrayal (Unit 3), and now an entire urban cultural and economic renaissance (Unit 4). Your capstone project asks you to design an institution that could carry this legacy forward today.

### Your Project This Week

Finalize your capstone research and begin drafting your Black Cultural Institution design, due next week.$lesson$,
  '7.H.1.2', 'Analyze the cultural, artistic, and economic significance of the Harlem Renaissance and parallel Black urban cultural movements.', 25
);

INSERT INTO lessons (unit_id, title, position, content_type, content_body, standards_code, standards_description, estimated_minutes)
VALUES (
  (SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1')),
  'MAJOR PROJECT 2 CAPSTONE: Design a Black Cultural Institution', 15, 'practice',
  $lesson$## MAJOR PROJECT 2 (Capstone): Design a Black Cultural Institution

This is it — your final project of the semester, bringing together everything from all four units.

### Driving Question

**"What does a community need from a museum, cultural center, or landmark that truly honors its history?"**

### The Challenge

Design an original Black Cultural Institution — a museum, community center, library wing, or landmark — that could exist in a real or fictional-but-realistic city. Your design must draw on at least THREE units from this semester:

1. **From Unit 1 or 2:** one exhibit or program honoring African origins, the Middle Passage, or enslaved communities' culture and resistance
2. **From Unit 3:** one exhibit or program honoring Reconstruction, Fort Mose, or self-governed Black towns
3. **From Unit 4:** one exhibit or program honoring the Great Migration or the Harlem Renaissance/Black urban cultural movements

### Requirements

- **Mission statement** (1–2 sentences: what is this institution for, and who is it for?)
- **Site plan** showing at least 3 named spaces (e.g., "Middle Passage Memorial Hall," "Freedmen's Town Model Room," "Harlem Renaissance Listening Lounge")
- **Three core exhibits/programs**, one per required unit above, each with a one-sentence description
- **A 3-minute pitch** (written script or recorded) presenting your institution to a mock board of directors deciding whether to fund it

### Why This Is Your Final Assessment

Museum designers, historians, and nonprofit founders do exactly this kind of work: turning historical research into something the public can walk through and feel. This capstone asks you to do the same — combine a full semester of real history into one institution you could actually defend and fund.$lesson$,
  '7.H.1.1-2, 6.H.1-3', 'Synthesize the full semester''s historical content into an original, research-grounded cultural institution design and funding pitch.', 45
);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='West African Kingdoms: Mali, Songhai & Ghana' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Which kingdom are you profiling, and why did you choose it?', NULL, NULL),
((SELECT id FROM lessons WHERE title='West African Kingdoms: Mali, Songhai & Ghana' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Name two pieces of evidence that this kingdom had real political and economic power (e.g., trade goods, army, capital city, university).', NULL, NULL),
((SELECT id FROM lessons WHERE title='West African Kingdoms: Mali, Songhai & Ghana' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'What is one question you still want to research about this kingdom before finishing your Kingdom Profile?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Transatlantic Slave Trade & the Middle Passage' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'In your own words, describe what the Middle Passage was and roughly how long it lasted.', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Transatlantic Slave Trade & the Middle Passage' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Name one European country and one African region involved in the triangular trade.', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Transatlantic Slave Trade & the Middle Passage' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Based on what you read, what is one detail from a primary source that helped you understand what the Middle Passage was really like?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 1: Mapping the Middle Passage' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Paste or describe your Kingdom Profile''s three key facts here.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Mapping the Middle Passage' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'List the three labeled facts you included on your Middle Passage map.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 1: Mapping the Middle Passage' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'What was the hardest part of connecting the kingdom''s location to the slave-trade route, and how did you solve it?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining Your Middle Passage Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Write down one piece of warm feedback and one piece of cool feedback you received.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining Your Middle Passage Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'What specific change did you make to your project based on that feedback?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Refining Your Middle Passage Project' AND unit_id=(SELECT id FROM units WHERE title='Unit 1: Africa to America — Origins, the Middle Passage & the First Black Communities' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Why do you think historians and researchers rely on peer review before publishing their work?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Daily Life, Labor & the Plantation Economy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'In your own words, explain how enslavers profited from paying no wages.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Daily Life, Labor & the Plantation Economy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Name one legal right enslaved people were denied.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Daily Life, Labor & the Plantation Economy' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Why do you think understanding this economic system matters for understanding wealth today?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Choose one example (music, faith, family, or everyday resistance) and explain how it helped enslaved people survive.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'What does the double meaning in spirituals like ''Follow the Drinking Gourd'' tell you about how enslaved people communicated?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Enslaved Communities'' Culture: Music, Faith, Family & Everyday Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Why do you think historians consider quiet, everyday acts of resistance just as important as large rebellions?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Arrival & the First Free Black Settlements: Fort Mose' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'In one sentence, explain why Fort Mose was founded in 1738.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Arrival & the First Free Black Settlements: Fort Mose' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Why did Spain benefit from offering freedom to enslaved people who escaped British colonies?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Arrival & the First Free Black Settlements: Fort Mose' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'How does learning about Fort Mose change what you thought you knew about early Black history in America?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Voices of Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Paste your first-person narrative or podcast script here (or a link/description if recorded).', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Voices of Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'List your two sources in your source log.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 1: Voices of Resistance' AND unit_id=(SELECT id FROM units WHERE title='Unit 2: Slavery, Resistance & Freedom — Building Community Under Bondage' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Write your closing reflection sentence: what does your character''s story teach us today?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Reconstruction & the Broken Promise of 40 Acres' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'In your own words, what was Special Field Order No. 15 supposed to do?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reconstruction & the Broken Promise of 40 Acres' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'What happened to that land after President Johnson reversed the order?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Reconstruction & the Broken Promise of 40 Acres' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Why do some historians connect this reversal to the racial wealth gap that still exists today?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Real Black Townships: Nicodemus, Eatonville & Beyond' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'What made Eatonville, Florida historically unique compared to other towns of its time?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Real Black Townships: Nicodemus, Eatonville & Beyond' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Name one challenge these all-Black towns commonly faced.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Real Black Townships: Nicodemus, Eatonville & Beyond' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Which additional historic all-Black town did you research, and where was it located?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Small Project 2: Design a Freedmen''s Town' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Describe your town''s name, founding year, and main economic activity.', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Design a Freedmen''s Town' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Which two features of your town are modeled on Nicodemus or Eatonville, specifically?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Small Project 2: Design a Freedmen''s Town' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'What was the hardest design decision you had to make, and why?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Your Freedmen''s Town Charter' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'What two questions did your reviewer ask you?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Your Freedmen''s Town Charter' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'What specific change did you make to your map or charter based on their feedback?', NULL, NULL),
((SELECT id FROM lessons WHERE title='Project Workshop & Peer Critique: Your Freedmen''s Town Charter' AND unit_id=(SELECT id FROM units WHERE title='Unit 3: Reconstruction & the Rise of Black Towns and Neighborhoods' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Why do real town planners still use a review process like this today?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Great Migration Begins: Push & Pull Factors' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Name one push factor and one pull factor of the Great Migration.', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Great Migration Begins: Push & Pull Factors' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'Which destination city did you choose to research, and why?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Great Migration Begins: Push & Pull Factors' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'How did the Chicago Defender newspaper actively encourage migration?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='The Harlem Renaissance & the Black Urban Renaissance' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Name two real figures or places from the Harlem Renaissance.', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Harlem Renaissance & the Black Urban Renaissance' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'How did Black-owned institutions (banks, businesses) connect to what you studied about Freedmen''s Towns in Unit 3?', NULL, NULL),
((SELECT id FROM lessons WHERE title='The Harlem Renaissance & the Black Urban Renaissance' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'What is one idea from this semester you want to carry into your capstone Cultural Institution design?', NULL, NULL);

INSERT INTO questions (lesson_id, position, question_type, prompt, options, correct_option_index) VALUES
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Design a Black Cultural Institution' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 1, 'short_answer', 'Write your mission statement.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Design a Black Cultural Institution' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 2, 'short_answer', 'List your three core exhibits/programs and which unit each one is drawn from.', NULL, NULL),
((SELECT id FROM lessons WHERE title='MAJOR PROJECT 2 CAPSTONE: Design a Black Cultural Institution' AND unit_id=(SELECT id FROM units WHERE title='Unit 4: The Great Migration & the Birth of the Black Urban Renaissance' AND course_id=(SELECT id FROM courses WHERE slug='venture-black-urban-studies-1'))), 3, 'short_answer', 'Paste your 3-minute pitch script (or describe it, if recorded).', NULL, NULL);
