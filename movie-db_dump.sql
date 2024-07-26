--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (id, name) FROM stdin;
1	United States
2	United Kingdom
3	Canada
4	Ukraine
5	France
6	Germany
7	Italy
8	Spain
9	Australia
10	Brazil
11	India
12	China
13	Japan
14	Mexico
15	South Africa
16	South Korea
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, file_name, mime_type, key, url, created_at, updated_at) FROM stdin;
1	avatar1.jpg	image/jpeg	avatar1	https://example.com/avatars/avatar1.jpg	2024-07-26 00:50:37.228352	2024-07-26 00:50:37.228352
2	poster1.jpg	image/jpeg	poster1	https://example.com/posters/poster1.jpg	2024-07-26 00:50:37.228352	2024-07-26 00:50:37.228352
3	profile1.jpg	image/jpeg	profile1	https://example.com/profiles/profile1.jpg	2024-07-26 00:50:37.228352	2024-07-26 00:50:37.228352
4	movie_poster_01.jpg	image/jpeg	movie_poster_01	https://example.com/images/movie_poster_01.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
5	movie_poster_02.jpg	image/jpeg	movie_poster_02	https://example.com/images/movie_poster_02.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
6	actor_photo_01.png	image/png	actor_photo_01	https://example.com/images/actor_photo_01.png	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
7	actor_photo_02.png	image/png	actor_photo_02	https://example.com/images/actor_photo_02.png	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
8	director_photo_01.jpg	image/jpeg	director_photo_01	https://example.com/images/director_photo_01.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
9	director_photo_02.jpg	image/jpeg	director_photo_02	https://example.com/images/director_photo_02.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
10	genre_icon_action.svg	image/svg+xml	genre_icon_action	https://example.com/icons/genre_icon_action.svg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
11	genre_icon_drama.svg	image/svg+xml	genre_icon_drama	https://example.com/icons/genre_icon_drama.svg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
12	cover_art_01.jpg	image/jpeg	cover_art_01	https://example.com/images/cover_art_01.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
13	cover_art_02.jpg	image/jpeg	cover_art_02	https://example.com/images/cover_art_02.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
14	thumbnail_01.png	image/png	thumbnail_01	https://example.com/images/thumbnail_01.png	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
15	thumbnail_02.png	image/png	thumbnail_02	https://example.com/images/thumbnail_02.png	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
16	background_image_01.jpg	image/jpeg	background_image_01	https://example.com/images/background_image_01.jpg	2024-07-26 13:02:05.768429	2024-07-26 13:02:05.768429
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (id, first_name, last_name, biography, date_of_birth, gender, country_id, primary_photo_id, created_at, updated_at) FROM stdin;
1	John	Doe	An acclaimed actor known for various roles in movies.	1980-05-15	male	1	1	2024-07-26 00:54:14.173159	2024-07-26 00:54:14.173159
2	Sundra	Bullock	A renowned director and producer.	1975-11-20	female	2	2	2024-07-26 00:54:14.173159	2024-07-26 00:54:14.173159
3	Akhtem	Seitablaiev	A popular actor from Ukraine.	1985-07-30	male	4	3	2024-07-26 00:54:14.173159	2024-07-26 00:54:14.173159
4	Sophia	Williams	Sophia is a renowned film director and screenwriter known for her innovative storytelling and unique cinematic vision.	1985-03-25	female	1	1	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
5	Jackson	Brown	Jackson is a prolific actor with a career spanning over two decades, known for his versatility and dedication to his craft.	1972-08-14	male	2	2	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
6	Olivia	Jones	Olivia is an accomplished actress recognized for her powerful performances and strong screen presence.	1990-06-10	female	3	3	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
7	Liam	Garcia	Liam is a celebrated cinematographer who has worked on numerous acclaimed films, bringing a unique visual style to each project.	1980-12-04	male	4	4	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
8	Emma	Martinez	Emma is a talented film editor known for her exceptional skills in crafting compelling narratives through editing.	1975-02-28	female	5	5	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
9	Noah	Rodriguez	Noah is a highly respected film producer with a knack for selecting and nurturing groundbreaking projects.	1968-07-21	male	6	6	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
10	Ava	Davis	Ava is a successful costume designer renowned for her creative and detailed costume designs in major productions.	1988-09-16	female	7	7	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
11	William	Hernandez	William is an esteemed sound designer known for his work on films that require intricate soundscapes.	1982-05-19	male	8	8	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
12	Isabella	Lopez	Isabella is a famous actress who has captivated audiences with her emotional and dramatic performances.	1993-11-03	female	9	9	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
13	James	Gonzalez	James is a veteran actor who has been part of many blockbuster films and has received several awards.	1970-01-12	male	10	10	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
14	Charlotte	Wilson	Charlotte is an emerging filmmaker who has gained recognition for her independent films.	1995-04-07	female	11	11	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
15	Benjamin	Anderson	Benjamin is an experienced actor known for his roles in both comedic and dramatic films.	1978-10-22	male	12	12	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
16	Mia	Thomas	Mia is an award-winning actress celebrated for her powerful roles in critically acclaimed films.	1987-03-15	female	13	13	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
17	Lucas	Taylor	Lucas is a distinguished director who has directed several critically acclaimed films.	1983-06-30	male	14	14	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
18	Amelia	Moore	Amelia is a talented screenwriter known for her original and captivating scripts.	1991-08-18	female	15	15	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
19	Alexander	White	Alexander is a versatile actor known for his transformative roles in various genres.	1976-02-05	male	1	6	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
20	Evelyn	Harris	Evelyn is an acclaimed actress recognized for her ability to portray complex characters.	1989-07-25	female	2	5	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
21	Elijah	Clark	Elijah is a celebrated film director whose films often explore deep and meaningful themes.	1981-09-09	male	3	4	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
22	Harper	Lewis	Harper is a promising young actress who has quickly made a name for herself in the industry.	1996-12-17	female	4	3	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
23	Mason	Walker	Mason is a legendary actor with a career that spans decades, known for his dedication to the craft.	1965-11-11	male	5	2	2024-07-26 13:07:21.255369	2024-07-26 13:07:21.255369
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (id, title, description, budget, release_date, duration, director_id, country_id, poster_id, created_at, updated_at) FROM stdin;
1	The Great Adventure	An action-packed journey of discovery.	150000000.00	2024-01-01	120	2	1	1	2024-07-26 00:55:26.751452	2024-07-26 00:55:26.751452
2	Mystery of the Lost City	A thrilling mystery set in a forgotten city.	80000000.00	2024-02-15	90	1	2	2	2024-07-26 00:55:26.751452	2024-07-26 00:55:26.751452
3	The Eternal Voyage	A visually stunning film about the adventures of a group of space explorers on a mission to discover new worlds.	200000000.00	2023-05-17	150	14	1	1	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
4	Mystery in the Forest	A gripping thriller that unravels the secrets hidden deep within a haunted forest.	50000000.00	2022-11-12	110	1	2	2	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
6	Dreams of Tomorrow	A heartfelt drama about dreams, love, and the pursuit of happiness.	30000000.00	2023-08-21	125	4	4	4	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
7	Echoes of the Past	A historical epic that explores the lives of legendary figures and their impact on modern history.	120000000.00	2024-01-30	165	5	5	5	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
8	Whispers in the Dark	A chilling horror film that delves into the realm of supernatural entities and hauntings.	75000000.00	2024-10-13	105	6	6	6	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
9	Rise of the Titans	A blockbuster action movie about ancient warriors resurrected to save the world from impending doom.	220000000.00	2024-07-09	145	7	7	7	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
10	The Silent Witness	A suspenseful crime drama centered around a witness who holds the key to solving a major case.	45000000.00	2022-12-19	115	8	8	8	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
11	The Alchemist’s Secret	A fantasy adventure following a young hero’s quest to uncover the secrets of an ancient alchemist.	130000000.00	2024-09-28	140	9	9	9	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
12	Shadows of the Future	A science fiction thriller about a dystopian future and the fight for survival against a powerful regime.	160000000.00	2023-11-15	155	10	10	10	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
13	The Art of Deception	A clever heist movie that follows master thieves as they attempt an impossible art heist.	40000000.00	2022-05-22	130	11	11	11	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
14	The Forbidden Kingdom	An epic fantasy film about a legendary kingdom hidden from the world and the journey to find it.	180000000.00	2024-03-07	150	12	12	12	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
15	Beyond the Horizon	A visually breathtaking documentary exploring the wonders of nature and the mysteries of the cosmos.	3000000.00	2023-06-10	95	13	13	13	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
16	Revenge of the Fallen	A high-octane action film about a former soldier seeking revenge against a powerful enemy.	170000000.00	2024-02-05	140	14	14	14	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
17	Chronicles of the Ancients	A fantasy epic that takes viewers on a journey through ancient myths and magical worlds.	190000000.00	2024-08-19	165	15	15	15	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
18	The Edge of Reality	A mind-bending science fiction film that explores the boundaries between reality and illusion.	60000000.00	2023-04-01	135	16	1	6	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
19	The Lost City	A thrilling adventure about explorers seeking a legendary city rumored to hold untold treasures.	95000000.00	2022-09-14	120	17	2	5	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
20	The Heart’s Echo	A romantic drama about love, loss, and the healing power of music.	25000000.00	2023-01-18	110	18	3	4	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
21	The Iron Will	An inspiring sports drama about a team’s journey to overcome adversity and achieve greatness.	40000000.00	2023-07-30	125	19	4	3	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
22	Legacy of the Warrior	An action-packed tale of an ancient warrior’s legacy and the fight to uphold his honor.	100000000.00	2024-05-25	145	20	5	2	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
5	The Last Stand	An epic war film depicting the courage and sacrifices of soldiers in their final battle.	150000000.00	2023-03-04	140	3	1	3	2024-07-26 13:11:35.603061	2024-07-26 13:11:35.603061
\.


--
-- Data for Name: character; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."character" (id, name, description, role, movie_id, actor_id, created_at, updated_at) FROM stdin;
1	Hero	The main protagonist of the movie.	leading	1	1	2024-07-26 00:55:42.723035	2024-07-26 00:55:42.723035
2	Villain	The main antagonist of the movie.	supporting	1	1	2024-07-26 00:55:42.723035	2024-07-26 00:55:42.723035
3	Detective	A sharp detective solving the mystery.	leading	2	3	2024-07-26 00:55:42.723035	2024-07-26 00:55:42.723035
4	Captain Alex Mason	The fearless leader of the space exploration team, known for his strategic mind and unwavering determination.	leading	1	2	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
5	Dr. Emily Carter	A brilliant scientist with a deep understanding of alien worlds and technologies.	supporting	1	3	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
6	Lieutenant Mark Rivers	A skilled pilot with a rebellious streak, always ready for a new challenge.	supporting	1	4	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
7	Engineer Lucy Tran	The tech genius responsible for maintaining the spaceship’s systems.	background	1	5	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
8	Navigator Tom Collins	An expert in interstellar navigation, crucial for the team’s success.	background	1	6	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
9	Professor Eleanor Woods	An expert in ancient languages, tasked with deciphering the mysteries of the haunted forest.	leading	2	7	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
10	Detective John O'Connor	A seasoned detective with a sharp eye for detail, on a quest to solve the forest murders.	supporting	2	8	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
11	Sergeant Sarah Blake	A determined officer aiding the investigation, known for her bravery and loyalty.	supporting	2	9	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
12	Local Guide Mike Parker	A local guide who knows the forest like the back of his hand.	background	2	10	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
13	Villager Anna Green	A villager with tales of supernatural occurrences in the forest.	background	2	11	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
14	General Thomas Wright	The respected leader of the army, commanding his troops in the last stand against the enemy.	leading	3	12	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
15	Major Lisa Hart	The second-in-command, known for her tactical skills and courage.	supporting	3	13	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
16	Private Danny Hill	A young soldier with a personal vendetta against the enemy.	supporting	3	14	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
17	Medic Jenny Kim	The field medic, tending to wounded soldiers on the battlefield.	background	3	15	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
18	Sniper Jack Reed	The expert marksman with an unerring aim.	background	3	16	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
19	Sophia Bennett	A young woman on a journey to find her true calling and happiness.	leading	4	17	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
20	James Carter	A supportive friend who helps Sophia along her path.	supporting	4	18	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
21	Oliver Stone	Sophia’s mentor, guiding her through life’s challenges.	supporting	4	19	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
22	Emily Roberts	A rival who challenges Sophia’s aspirations.	background	4	20	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
23	Grandma Rose	Sophia’s grandmother, offering wisdom and comfort.	background	4	1	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
24	King Arthur	The legendary king with a vision for a united kingdom.	leading	5	2	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
25	Queen Guinevere	The queen, known for her grace and intelligence.	supporting	5	3	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
26	Sir Lancelot	The brave knight with a complex relationship with the king and queen.	supporting	5	4	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
27	Wizard Merlin	The enigmatic wizard with powerful magic.	background	5	5	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
28	Squire Ben	The young squire learning the ways of knighthood.	background	5	6	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
29	Ghost Hunter Jack Ryan	A seasoned ghost hunter exploring haunted locations.	leading	6	7	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
30	Medium Samantha Hayes	A psychic medium connecting with spirits.	supporting	6	8	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
31	Historian Tim Clark	A historian providing insights into haunted sites.	supporting	6	9	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
32	Camera Operator Dave Lee	The cameraman capturing paranormal activities.	background	6	10	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
33	Editor Jane Doe	The editor piecing together the ghost hunter’s footage.	background	6	11	2024-07-26 13:15:48.288046	2024-07-26 13:15:48.288046
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, first_name, last_name, email, password, avatar_id, created_at, updated_at) FROM stdin;
1	john_doe	John	Doe	john.doe@example.com	qwerty123	1	2024-07-26 00:58:05.235126	2024-07-26 00:58:05.235126
2	jane_smith	Jane	Smith	jane.smith@example.com	qwerty456	2	2024-07-26 00:58:05.235126	2024-07-26 00:58:05.235126
6	alexsmith	Alex	Smith	alexsmith@example.com	pass789	3	2024-07-26 13:18:31.159483	2024-07-26 13:18:31.159483
7	emilyjones	Emily	Jones	emilyjones@example.com	474747	4	2024-07-26 13:18:31.159483	2024-07-26 13:18:31.159483
8	michaelbrown	Michael	Brown	michaelbrown@example.com	111111111	5	2024-07-26 13:18:31.159483	2024-07-26 13:18:31.159483
\.


--
-- Data for Name: favoritemovies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favoritemovies (user_id, movie_id) FROM stdin;
1	1
2	2
1	3
2	4
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (id, name) FROM stdin;
1	Action
2	Comedy
3	Drama
4	Horror
5	Science Fiction
6	Romance
7	Fantasy
8	Adventure
9	Mystery
\.


--
-- Data for Name: moviegenre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moviegenre (movie_id, genre_id) FROM stdin;
1	1
2	3
2	4
4	2
4	3
5	1
5	4
6	5
6	2
\.


--
-- Name: character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.character_id_seq', 33, true);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 16, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 18, true);


--
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_id_seq', 9, true);


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_id_seq', 22, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_id_seq', 23, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

