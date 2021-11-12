--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artists (
    artist_id integer,
    artist_name text
);


--
-- Name: songs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.songs (
    song_id integer,
    artist_id integer,
    song_name text,
    url text,
    release_date_year integer,
    release_date_month integer,
    release_date_day integer,
    danceability numeric,
    energy numeric,
    speechiness numeric,
    liveliness numeric,
    tempo numeric,
    duration numeric,
    valance numeric
);


--
-- Name: weekly_ranks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weekly_ranks (
    week_num integer,
    song_id integer,
    artist_id integer,
    week_start_year integer,
    week_start_month integer,
    week_start_day integer,
    week_end_year integer,
    week_end_month integer,
    week_end_day integer,
    ranking integer
);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.artists (artist_id, artist_name) FROM stdin;
1	The Weeknd
2	Drake
3	SAINt JHN
4	Dua Lipa
5	Roddy Ricch
6	Powfu
7	Tones And I
8	Lil Mosey
9	Doja Cat
10	Justin Bieber
11	Trevor Daniel
12	Surfaces
13	Bad Bunny
14	BENEE
15	Arizona Zervas
16	KAROL G
17	Lewis Capaldi
18	Megan Thee Stallion
19	Post Malone
20	J Balvin
21	Harry Styles
22	Maroon 5
23	PARTYNEXTDOOR
24	Future
25	Jack Harlow
26	Eminem
27	DaBaby
28	Billie Eilish
29	Shawn Mendes
30	DripReport
31	NAV
32	Rauw Alejandro
33	Kygo
34	JP Saxe
35	Regard
36	Dímelo Flow
37	MEDUZA
38	Halsey
39	Black Eyed Peas
40	blackbear
41	Camila Cabello
42	24kGoldn
43	Topic
44	Myke Towers
45	Ed Sheeran
46	Ashe
47	Surf Mesa
48	Juice WRLD
49	Dan + Shay
50	Lil Uzi Vert
51	Ava Max
52	Lady Gaga
53	Khalid
54	YNW Melly
55	Dalex
56	Travis Scott
57	Mustard
58	Robin Schulz
59	Y2K
60	Jonas Brothers
61	Ali Gatie
62	Imagine Dragons
63	Ariana Grande
64	Selena Gomez
65	Madison Beer
66	Anuel AA
67	Kina
68	Marshmello
69	Lil Tecca
70	XXXTENTACION
71	JACKBOYS
72	Lil Yachty
73	Queen
74	Camilo
75	Lil Nas X
76	Shakira
77	Conan Gray
78	Nicky Jam
79	Demi Lovato
80	James Arthur
81	PUBLIC
82	BROCKHAMPTON
83	G Herbo
84	Jhay Cortez
85	Polo G
86	Don Toliver
87	Noah Cyrus
88	ITZY
89	Sam Smith
90	Feid
91	G-Eazy
92	Pop Smoke
93	Alex Rose
94	benny blanco
95	Alan Walker
96	Tory Lanez
97	Tame Impala
98	5 Seconds of Summer
99	Alec Benjamin
100	Gusttavo Lima
101	Dean Lewis
102	John Legend
103	Dominic Fike
104	The Chainsmokers
105	Ellie Goulding
106	Lauv
107	Panic! At The Disco
108	Rod Wave
109	Luísa Sonza
110	Lil Baby
111	Lunay
112	Lizzo
113	Vicetone
114	Sub Urban
115	Bazzi
116	StaySolidRocky
117	THE SCOTTS
118	6ix9ine
119	Beyoncé
120	ROSALÍA
121	Melanie Martinez
122	Jawsh 685
123	Sech
124	Nio Garcia
125	Tyla Yaweh
126	The Kid LAROI
127	Sleepy Hallow
128	Harry Nach
129	S1mba
130	Ozuna
131	NLE Choppa
132	TWICE
133	Sam Fischer
134	Chris Brown
135	Nea
136	Bosh
137	Gunna
138	Katy Perry
139	Justin Quiles
140	Shablo
141	Ufo361
142	Alexander 23
143	Conkarah
144	Pashanim
145	Niack
146	Natalie Taylor
147	Jason Mraz
148	Vance Joy
149	The Killers
150	Twenty One Pilots
151	Shirin David
152	Playboi Carti
153	Joji
154	Arcangel
155	KSI
156	The 1975
157	Internet Money
158	BTS
159	Maluma
160	Cardi B
161	Tate McRae
162	Joel Corry
163	Ritt Momney
164	Farruko
165	Lele Pons
166	Manuel Turizo
167	Jay Wheeler
168	Jason Derulo
169	Miley Cyrus
170	Fleetwood Mac
171	BLACKPINK
172	DJ Khaled
173	Wisin
174	Ashnikko
175	Clairo
176	Jerry Di
177	K/DA
178	Fousheé
179	Machine Gun Kelly
180	Sebastian Yatra
181	Luke Combs
182	salem ilese
183	Clean Bandit
184	Ty Dolla $ign
185	The Neighbourhood
186	Tainy
187	BØRNS
188	Kane Brown
189	Octavian
190	Aya Nakamura
191	CJ
192	Master KG
193	BANNERS
194	21 Savage
195	Vedo
196	Daddy Yankee
197	Os Barões Da Pisadinha
198	Michael Jackson
199	MAX
200	Super Yei
201	Ofenbach
202	Nelly Furtado
203	CORPSE
204	DDG
205	Bonez MC
206	Tiësto
207	KHEA
208	AC/DC
209	Labrinth
210	Mariah Carey
211	Jonas Esticado
212	Anitta
213	Money Man
214	Wallows
215	Cali Y El Dandee
216	Pink Sweat$
217	Lil Peep
218	Rvssian
219	Wham!
220	Brenda Lee
221	Michael Bublé
222	Bobby Helms
223	Andy Williams
224	Kelly Clarkson
225	Dean Martin
226	José Feliciano
227	The Ronettes
228	Band Aid
229	Sia
230	Frank Sinatra
231	Chris Rea
232	Paul McCartney
233	John Lennon
234	Taylor Swift
235	Nat King Cole
236	Shakin' Stevens
237	Bing Crosby
238	Burl Ives
239	The Pogues
240	Kylie Minogue
241	Boza
242	The Jackson 5
243	Perry Como
244	Elvis Presley
245	Chuck Berry
246	Elton John
247	Darlene Love
248	Daryl Hall & John Oates
249	Coldplay
250	Britney Spears
251	Brett Eldredge
252	Gwen Stefani
253	HVME
254	Bizarrap
255	Idina Menzel
256	Eartha Kitt
257	Mykola Dmytrovych Leontovych
258	Stevie Wonder
259	Bruce Springsteen
260	Leona Lewis
261	The Beach Boys
262	Liam Payne
263	Meghan Trainor
264	Kid Cudi
265	Pentatonix
266	C. Tangana
267	Donny Hathaway
268	Tony Bennett
269	*NSYNC
270	Migrantes
271	Eagles
272	Tyga
273	Mac Miller
274	Joker Bra
275	Lil Wayne
276	Stormzy
277	Ant Saunders
278	Rich Music LTD
279	Reik
280	SHAED
281	Henrique & Juliano
282	TOKYO’S REVENGE
283	A Boogie Wit da Hoodie
284	Samra
285	Red Velvet
286	Major Lazer
287	Matthew Wilder
288	Tyler, The Creator
289	DJ Snake
290	Piso 21
291	Juju
292	Olivia Rodrigo
293	J. Cole
294	Riton
295	Meek Mill
296	Thiaguinho MT
297	French Montana
298	Pedro Capó
299	Niall Horan
300	Mabel
301	Calvin Harris
302	Apache 207
303	PEDRO SAMPAIO
304	Avicii
305	Macklemore & Ryan Lewis
306	Anne-Marie
307	Trippie Redd
308	Sam Feldt
309	Gradur
310	Jorge & Mateus
311	Dadá Boladão
312	Studio Killers
313	Trio Vegabajeño
314	Trueno
315	Curtis Waters
316	Headie One
317	Peach Tree Rascals
318	A$AP Ferg
319	Mc Zaac
320	El Alfa
321	Juanfran
322	Passenger
323	VIZE
324	Bebe Rexha
325	Big Sean
326	13 Organisé
327	ZAYN
328	Linkin Park
329	Hozier
330	Oasis
331	Little Mix
332	Miksu / Macloud
333	Kanye West
334	Bring Me The Horizon
335	iann dior
336	Boomdabash
337	SZA
338	Tarcísio do Acordeon
339	Glass Animals
340	Petter Ferraz
341	Arctic Monkeys
342	Mother Mother
343	K CAMP
344	Saweetie
345	Jowell & Randy
346	twocolors
347	Capital Bra
348	Banda MS de Sergio Lizárraga
349	IU
350	Kontra K
351	Red Velvet - IRENE & SEULGI
352	Morgan Wallen
353	Kendrick Lamar
354	KitschKrieg
355	Kofs
356	Bea Miller
357	Cordae
358	Sfera Ebbasta
359	Christian Nodal
360	Justin Timberlake
361	Bryson Tiller
362	WhoHeem
363	Bausa
364	One Direction
365	Luciano
366	Nicki Minaj
367	Yandel
368	Migos
369	Journey
370	The Police
371	Earth, Wind & Fire
372	Damso
373	KC Rebell
374	Childish Gambino
375	AK AUSSERKONTROLLE
376	KALIM
377	Adele
378	Lana Del Rey
379	Gambi
380	Maes
381	Dardan
382	Jhené Aiko
383	Residente
384	Martin Garrix
385	Shiva
386	Zuna
387	Agust D
388	jxdn
389	Ninho
390	Loredana
391	Lil Tjay
392	Kehlani
393	Matuê
394	Gzuz
395	Murda
396	Logic
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.songs (song_id, artist_id, song_name, url, release_date_year, release_date_month, release_date_day, danceability, energy, speechiness, liveliness, tempo, duration, valance) FROM stdin;
1	1	Blinding Lights	https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b	2020	3	20	0.514	0.73	0.0598	0.0897	171.005	200040	0.334
2	2	Toosie Slide	https://open.spotify.com/track/127QTOFJsJQp5LbJbu3A1y	2020	4	3	0.834	0.454	0.201	0.114	81.618	247059	0.837
3	3	Roses - Imanbek Remix	https://open.spotify.com/track/24Yi9hE78yPEbZ4kxyoXAI	2020	11	20	0.769	0.719	0.0474	0.359	121.955	176867	0.863
4	4	Don't Start Now	https://open.spotify.com/track/3PfIrDoz19wz7qK7tYeu62	2019	10	31	0.793	0.793	0.083	0.0951	123.95	183290	0.679
5	5	The Box	https://open.spotify.com/track/0nbXyq5TXYPCO7pr3N8S4I	2019	12	6	0.896	0.586	0.0559	0.79	116.971	196653	0.642
6	6	death bed (coffee for your head)	https://open.spotify.com/track/7eJMfftS33KTjuF7lTsMCx	2020	2	8	0.726	0.431	0.135	0.696	144.026	173333	0.348
7	7	Dance Monkey	https://open.spotify.com/track/1rgnBhdG2JDFTbYkYRZAku	2019	10	17	0.824	0.588	0.0924	0.149	98.027	209438	0.513
8	8	Blueberry Faygo	https://open.spotify.com/track/22LAwLoDA5b4AaGSkg6bKW	2020	2	7	0.774	0.554	0.0383	0.132	99.034	162547	0.349
9	9	Say So	https://open.spotify.com/track/3Dv1eDb0MEgF93GpLXlucZ	2019	11	7	0.787	0.673	0.159	0.0904	110.962	237893	0.779
10	10	Intentions (feat. Quavo)	https://open.spotify.com/track/4umIPjkehX1r7uhmGvXiSV	2020	2	14	0.806	0.546	0.0575	0.102	147.986	212867	0.874
11	4	Break My Heart	https://open.spotify.com/track/017PF4Q3l4DBUiWoXk4OWT	2020	3	27	0.73	0.729	0.0884	0.349	113.011	221820	0.467
12	11	Falling	https://open.spotify.com/track/2rRJrJEo19S2J82BDsQ3F7	2019	12	13	0.567	0.267	0.0299	0.089	110.011	240133	0.0592
13	12	Sunday Best	https://open.spotify.com/track/1Cv1YLb4q0RzL6pybtaMLo	2019	1	6	0.878	0.525	0.0578	0.0714	112.022	158571	0.694
14	13	Safaera	https://open.spotify.com/track/2DEZmgHKAvm41k4J3R2E9Y	2020	2	29	0.607	0.829	0.379	0.107	96.172	295177	0.685
15	14	Supalonely	https://open.spotify.com/track/4nK5YrxbMGZstTLbvj6Gxw	2019	11	15	0.863	0.631	0.0534	0.123	128.977	223480	0.817
16	4	Physical	https://open.spotify.com/track/3AzjcOeAmA57TIOr9zF1ZW	2020	3	27	0.647	0.844	0.0457	0.102	146.967	193829	0.746
17	1	In Your Eyes	https://open.spotify.com/track/7szuecWAPwGoV1e5vGu8tl	2020	3	20	0.667	0.719	0.0346	0.0736	100.021	237520	0.717
18	13	Yo Perreo Sola	https://open.spotify.com/track/0SqqAgdovOE24BzxIClpjw	2020	2	29	0.86	0.758	0.0695	0.344	97.014	172127	0.453
19	15	ROXANNE	https://open.spotify.com/track/696DnlkuDOXcMAnKlTgXXK	2019	10	10	0.621	0.601	0.148	0.46	116.735	163636	0.457
20	16	Tusa	https://open.spotify.com/track/7k4t7uLgtOxPwTpFmtJNTY	2019	11	7	0.803	0.715	0.298	0.0574	101.085	200960	0.574
21	17	Someone You Loved	https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf	2019	5	17	0.501	0.405	0.0319	0.105	109.891	182161	0.446
22	18	Savage	https://open.spotify.com/track/55CHeLEfn5iJ0IIkgaa4si	2020	3	6	0.843	0.741	0.334	0.096	168.983	155497	0.68
23	19	Circles	https://open.spotify.com/track/21jGcNKet2qwijlDFuPiPb	2019	9	6	0.695	0.762	0.0395	0.0863	120.042	215280	0.553
24	9	Boss Bitch	https://open.spotify.com/track/78qd8dvwea0Gosb6Fe6j3k	2020	1	23	0.707	0.955	0.222	0.202	125.989	134240	0.575
25	20	Rojo	https://open.spotify.com/track/380HmhwTE2NJgawn1NwkXi	2020	8	9	0.652	0.595	0.117	0.0836	172.277	151147	0.421
26	21	Adore You	https://open.spotify.com/track/3jjujdWJ72nww5eGnfs2E7	2019	12	13	0.676	0.771	0.0483	0.102	99.048	207133	0.569
27	22	Memories	https://open.spotify.com/track/2b8fOow8UzyDFAE27YhOZM	2019	6	11	0.775	0.327	0.0557	0.0821	91.05	189486	0.595
28	23	BELIEVE IT	https://open.spotify.com/track/4HDCLYli2SUdkq9OjmvhSD	2020	3	27	0.43	0.7	0.264	0.216	158.373	183219	0.731
29	24	Life Is Good (feat. Drake)	https://open.spotify.com/track/5yY9lUy8nbvjM1Uyo1Uqoc	2020	1	10	0.676	0.609	0.481	0.152	142.037	237735	0.508
30	25	WHATS POPPIN	https://open.spotify.com/track/1jaTQ3nqY3oAAYyCTbIvnM	2020	6	24	0.904	0.723	0.26	0.185	145.013	227478	0.835
31	26	Godzilla (feat. Juice WRLD)	https://open.spotify.com/track/7FIWs0pqAYbP91WWM0vlTQ	2020	1	17	0.808	0.745	0.342	0.292	165.995	210800	0.829
32	27	FIND MY WAY	https://open.spotify.com/track/1lGHa2pwYzxQHFBUynhLtO	2020	4	17	0.836	0.624	0.184	0.138	103.0	139890	0.7
33	28	bad guy	https://open.spotify.com/track/2Fxmhks0bxGSBdJ92vM42m	2019	4	29	0.701	0.425	0.375	0.1	135.128	194088	0.562
34	28	everything i wanted	https://open.spotify.com/track/3ZCTVFBt2Brf31RLEnCkWJ	2019	11	10	0.704	0.225	0.0994	0.106	120.006	245426	0.243
35	13	La Difícil	https://open.spotify.com/track/6NfrH0ANGmgBXyxgV2PeXt	2020	2	29	0.685	0.848	0.0858	0.0783	179.87	163084	0.761
36	17	Before You Go	https://open.spotify.com/track/2gMXnyrvIjhVBUZwvLZDMP	2019	11	22	0.459	0.575	0.0573	0.0885	111.881	215107	0.183
37	29	Señorita	https://open.spotify.com/track/6v3KW9xbzN5yKLt9YKDYA2	2019	6	21	0.759	0.54	0.0287	0.0945	116.947	190960	0.75
38	13	Si Veo a Tu Mamá	https://open.spotify.com/track/41wtwzCZkXwpnakmwJ239F	2020	2	29	0.9	0.603	0.0646	0.134	129.928	170972	0.824
39	13	Ignorantes	https://open.spotify.com/track/38RIEav39FGi86jppxO0du	2020	2	14	0.85	0.536	0.0599	0.0996	96.029	210607	0.505
40	30	Skechers	https://open.spotify.com/track/2alc8VZAzDgdAsL2QMk3hu	2020	1	12	0.903	0.327	0.0877	0.108	100.008	106000	0.274
41	1	After Hours	https://open.spotify.com/track/2p8IUWQDrpjuFltbdgLOag	2020	3	20	0.664	0.572	0.0305	0.121	108.959	361027	0.143
42	31	Turks (feat. Travis Scott)	https://open.spotify.com/track/0lSZh5W0wDeurkGzLYY6hf	2020	3	27	0.893	0.618	0.112	0.542	119.099	161377	0.389
43	10	Yummy	https://open.spotify.com/track/16wAOAZ2OkqoIDN7TpChjR	2020	1	3	0.687	0.514	0.0897	0.116	145.921	210427	0.494
44	20	Amarillo	https://open.spotify.com/track/6zEgnpM0qYmHLDnh8WPejL	2020	3	19	0.641	0.857	0.301	0.0695	122.728	157733	0.961
45	32	Tattoo	https://open.spotify.com/track/7na7Bk98usp84FaOJFPv3d	2020	7	9	0.848	0.637	0.156	0.0521	96.988	222680	0.698
46	33	Like It Is	https://open.spotify.com/track/3frUvGrmGcay91lvFbOgsN	2020	3	27	0.794	0.728	0.114	0.227	105.024	183067	0.36
47	34	If the World Was Ending (feat. Julia Michaels)	https://open.spotify.com/track/2kJwzbxV2ppxnQoYw4GLBZ	2020	10	17	\N	\N	\N	\N	\N	\N	\N
48	35	Ride It	https://open.spotify.com/track/2tnVG71enUj33Ic2nFN6kZ	2019	7	26	0.88	0.751	0.0874	0.106	117.948	157606	0.884
49	36	Sigues Con El	https://open.spotify.com/track/7sQKy5vlPQllr0k9IjYJv3	2019	12	13	0.883	0.668	0.113	0.0734	87.972	226533	0.676
50	5	High Fashion (feat. Mustard)	https://open.spotify.com/track/07KXEDMj78x68D884wgVEm	2019	12	6	0.831	0.499	0.114	0.3	97.956	220487	0.511
51	28	lovely (with Khalid)	https://open.spotify.com/track/0u2P5u6lvoDfwTYjAADbn4	2018	4	19	0.351	0.296	0.0333	0.095	115.284	200186	0.12
52	20	Morado	https://open.spotify.com/track/35KmOEIUqAGn02t7n4qaIr	2020	1	9	0.881	0.696	0.0797	0.0927	97.002	200667	0.781
53	37	Lose Control	https://open.spotify.com/track/7CHi4DtfK4heMlQaudCuHK	2019	10	11	0.598	0.526	0.0415	0.14	123.935	168387	0.529
54	19	Sunflower - Spider-Man: Into the Spider-Verse	https://open.spotify.com/track/0RiRZpuVRbi7oqRdSMwhQY	2018	12	14	0.76	0.479	0.0466	0.0703	89.911	158040	0.913
55	38	You should be sad	https://open.spotify.com/track/7lidXGPXPYLNThITAOTlkK	2020	1	17	0.591	0.585	0.0277	0.109	110.94	205473	0.324
56	39	RITMO (Bad Boys For Life)	https://open.spotify.com/track/6cy3ki60hLwimwIje7tALf	2019	10	12	0.721	0.716	0.0657	0.237	104.994	221714	0.667
57	5	Walk Em Down (feat. Roddy Ricch)	https://open.spotify.com/track/4cSSL3YafYjM3yjgFO1vJg	2020	3	19	0.867	0.744	0.227	0.0713	84.005	173288	0.645
58	40	hot girl bummer	https://open.spotify.com/track/7aiClxsDWFRQ0Kzk5KI5ku	2020	8	21	0.782	0.559	0.0767	0.385	129.992	188344	0.685
59	13	Vete	https://open.spotify.com/track/2n7ohqg1s68ToAHh4u9mcW	2019	11	21	0.886	0.672	0.188	0.101	91.976	192024	0.526
60	41	My Oh My (feat. DaBaby)	https://open.spotify.com/track/3yOlyBJuViE2YSGn3nVE1K	2019	12	6	0.724	0.491	0.0296	0.0887	105.046	170746	0.383
61	42	CITY OF ANGELS	https://open.spotify.com/track/6ap9lSRJ0iLriGLqoJ44cq	2019	11	22	0.686	0.541	0.0493	0.0675	120.082	112493	0.724
62	43	Breaking Me	https://open.spotify.com/track/3H7ihDc1dqLriiWXwsc2po	2019	12	19	0.789	0.72	0.218	0.129	122.031	166794	0.664
63	44	Diosa	https://open.spotify.com/track/3JHpk0DOTOzyh0777JFAky	2020	1	24	0.801	0.745	0.063	0.153	104.965	214013	0.245
64	45	I Don't Care (with Justin Bieber)	https://open.spotify.com/track/0hVXuCcriWRGvwMV1r5Yn9	2019	5	10	0.798	0.675	0.0442	0.0894	101.956	219947	0.842
65	13	La Santa	https://open.spotify.com/track/69vlMrzHwATKzupwNcUPyK	2020	2	29	0.744	0.868	0.047	0.0822	93.037	206420	0.586
66	46	Moral of the Story	https://open.spotify.com/track/2nC3QhMI9reBIOWutbU3Tj	2019	2	14	0.572	0.406	0.0427	0.102	119.812	201084	0.265
67	1	Heartless	https://open.spotify.com/track/6bnF93Rx87YqUBLSgjiMU8	2020	3	20	0.537	0.746	0.15	0.156	170.062	198267	0.252
68	47	ily (i love you baby) (feat. Emilee)	https://open.spotify.com/track/62aP9fBQKYKxi7PDXwcUAS	2019	11	26	0.674	0.774	0.0892	0.393	112.05	176547	0.33
69	48	Lucid Dreams	https://open.spotify.com/track/285pBltuF7vW8TeWk8hdRR	2018	12	10	0.511	0.566	0.2	0.34	83.903	239836	0.218
70	49	10,000 Hours (with Justin Bieber)	https://open.spotify.com/track/2wrJq5XKLnmhRXHIAf9xBa	2019	10	4	0.654	0.63	0.0259	0.111	89.991	167693	0.43
71	9	Like That (feat. Gucci Mane)	https://open.spotify.com/track/4EivmOT13NMpNSfTKn9p4s	2019	11	7	0.879	0.498	0.18	0.0967	106.044	163173	0.405
72	50	P2	https://open.spotify.com/track/3kW4z2pIj5VY5fLjBrMRL5	2020	3	6	0.775	0.72	0.193	0.114	155.086	234627	0.49
73	51	Salt	https://open.spotify.com/track/7vgv8KZBSo0TPzyIWG9yzV	2019	12	12	0.693	0.835	0.0624	0.073	128.052	180283	0.744
74	28	when the party's over	https://open.spotify.com/track/43zdsphuZLzwA9k4DJhU0I	2018	10	16	0.484	0.103	0.0627	0.0895	124.011	199931	0.194
75	45	Beautiful People (feat. Khalid)	https://open.spotify.com/track/70eFcWOvlMObDhURTqT4Fv	2019	6	28	0.64	0.648	0.187	0.0802	92.977	197867	0.548
76	52	Stupid Love	https://open.spotify.com/track/2kJu14V7hbZw3I4K8L8SXb	2020	2	28	0.68	0.825	0.0702	0.27	117.987	193533	0.784
77	53	Know Your Worth	https://open.spotify.com/track/0TrPqhAMoaKUFLR7iYDokf	2020	2	4	0.79	0.694	0.0708	0.281	103.007	181436	0.508
78	54	Suicidal (Remix) [feat. Juice WRLD]	https://open.spotify.com/track/4S2uhQE8L9V6p7rj7SiauJ	2020	3	13	0.655	0.441	0.0629	0.099	139.957	225857	0.273
79	55	Hola - Remix	https://open.spotify.com/track/5stPVcRqb4qixbafP9e8lt	2019	11	1	0.654	0.672	0.311	0.0781	181.857	249520	0.343
80	33	I'll Wait	https://open.spotify.com/track/6Q3K9gVUZRMZqZKrXovbM2	2020	4	3	0.611	0.651	0.0589	0.105	122.983	215361	0.351
81	52	Shallow	https://open.spotify.com/track/2VxeLyX666F8uXCJ0dZF8B	2018	10	5	0.572	0.385	0.0308	0.231	95.799	215733	0.323
82	56	HIGHEST IN THE ROOM	https://open.spotify.com/track/3eekarcy7kvN4yt5ZFzltW	2019	10	4	0.598	0.427	0.0317	0.21	76.469	175721	0.0605
83	57	Ballin' (with Roddy Ricch)	https://open.spotify.com/track/3QzAOrNlsabgbMwlZt7TAY	2019	6	28	0.809	0.545	0.0735	0.151	97.008	180435	0.244
84	58	In Your Eyes (feat. Alida)	https://open.spotify.com/track/61ZM92T2zaXIVsqncThQzC	2020	1	10	0.57	0.672	0.0716	0.0768	120.018	208222	0.461
85	28	No Time To Die	https://open.spotify.com/track/73SpzrcaHk0RQPFP73vqVR	2020	2	13	0.38	0.219	0.0358	0.0827	73.537	242265	0.0517
86	50	That Way - Bonus Track	https://open.spotify.com/track/2ajzBr7vwHTEBeqDzcsNRC	2020	3	6	0.712	0.598	0.0388	0.154	130.007	212354	0.504
87	59	Lalala	https://open.spotify.com/track/51Fjme0JiitpyXKuyQiCDo	2019	6	28	0.843	0.39	0.0846	0.137	129.972	160627	0.495
88	10	Forever (feat. Post Malone & Clever)	https://open.spotify.com/track/2ZlCGeK30BLRNSPC832pNZ	2020	2	14	0.825	0.483	0.08	0.204	139.98	219933	0.892
89	60	What A Man Gotta Do	https://open.spotify.com/track/4wNIkl5XGiAACjFBlDWuSd	2020	1	17	0.852	0.698	0.0629	0.0773	113.039	180645	0.324
90	61	What If I Told You That I Love You	https://open.spotify.com/track/3cqPu20DGTGUoZtbJH2Dmi	2020	1	23	0.596	0.366	0.115	0.0554	84.394	193668	0.229
91	61	It's You	https://open.spotify.com/track/5DqdesEfbRyOlSS3Tf6c29	2019	11	8	0.732	0.463	0.0287	0.194	95.971	212607	0.397
92	1	Save Your Tears	https://open.spotify.com/track/5QO79kh1waicV47BqGRL3g	2020	11	24	0.65	0.825	0.0325	0.0936	118.091	191014	0.593
93	62	Believer	https://open.spotify.com/track/0pqnGHJpmpxLKifKRmU6WP	2017	6	23	0.776	0.78	0.128	0.081	124.949	204347	0.666
94	19	rockstar (feat. 21 Savage)	https://open.spotify.com/track/0e7ipj03S05BNilyu5bRzt	2018	4	27	0.585	0.52	0.0712	0.131	159.801	218147	0.129
95	63	7 rings	https://open.spotify.com/track/6ocbgoVGwYJhOv1GgI9NsF	2019	2	8	0.778	0.317	0.334	0.0881	140.048	178627	0.327
96	50	Myron	https://open.spotify.com/track/56uXDJRCuoS7abX3SkzHKQ	2020	3	13	0.771	0.654	0.298	0.214	155.047	224955	0.573
97	64	Lose You To Love Me	https://open.spotify.com/track/4l0Mvzj72xxOpRrp6h8nHi	2020	1	10	0.488	0.343	0.0436	0.21	102.819	206459	0.0978
98	65	Selfish	https://open.spotify.com/track/4PV0uE5pZSh44E3NqNNDEH	2020	2	14	0.375	0.461	0.0279	0.386	75.217	223270	0.233
99	21	Watermelon Sugar	https://open.spotify.com/track/6UelLqGlWMcVH1E5c4H7lY	2019	12	13	0.548	0.816	0.0465	0.335	95.39	174000	0.557
100	66	Keii	https://open.spotify.com/track/5eEQCfq7MXQr6aHLNRUZLs	2020	2	7	0.708	0.797	0.0391	0.096	88.015	210000	0.51
101	67	Get You The Moon (feat. Snøw)	https://open.spotify.com/track/4ZLzoOkj0MPWrTLvooIuaa	2018	10	8	0.498	0.235	0.188	0.144	118.917	179080	0.0895
102	27	BOP	https://open.spotify.com/track/6Ozh9Ok6h4Oi1wUSLtBseN	2019	9	27	0.769	0.787	0.367	0.129	126.77	159715	0.836
103	68	Happier	https://open.spotify.com/track/2dpaYNEQHiRxtZbfNsse99	2018	8	17	0.687	0.792	0.0452	0.167	100.015	214290	0.671
104	69	Ransom	https://open.spotify.com/track/1lOe9qE0vR9zwWQAOk6CoO	2019	8	30	0.745	0.642	0.287	0.0658	179.974	131240	0.226
105	7	Never Seen the Rain	https://open.spotify.com/track/2grAr8pWMuLWn8ZYEE9wDV	2019	7	16	0.742	0.464	0.0318	0.284	92.107	200742	0.281
106	66	China	https://open.spotify.com/track/2ksOAxtIxY8yElEWw8RhgK	2019	7	19	0.786	0.808	0.0882	0.0822	105.027	301714	0.609
107	70	Jocelyn Flores	https://open.spotify.com/track/7m9OqQk4RVRkw9JJdeAw96	2017	8	25	0.872	0.391	0.242	0.297	134.021	119133	0.437
108	48	Bandit (with YoungBoy Never Broke Again)	https://open.spotify.com/track/6Gg1gjgKi2AK4e0qzsR7sd	2019	10	4	0.474	0.631	0.343	0.132	180.051	189323	0.425
109	70	SAD!	https://open.spotify.com/track/3ee8Jmje8o58CHK66QrVC2	2018	3	16	0.74	0.613	0.145	0.123	75.023	166606	0.473
110	32	Elegí (feat. Dímelo Flow)	https://open.spotify.com/track/50ZC4PM7hywH27RcCfViau	2020	3	26	0.824	0.631	0.0809	0.0531	171.965	197721	0.678
111	71	OUT WEST (feat. Young Thug)	https://open.spotify.com/track/6gi6y1xwmVszDWkUqab1qw	2019	12	27	0.802	0.591	0.225	0.196	139.864	157712	0.309
112	72	Oprah’s Bank Account (Lil Yachty & DaBaby feat. Drake)	https://open.spotify.com/track/7wsmIIm0xWmtP7TmACXkJn	2020	3	9	0.836	0.617	0.0534	0.319	138.066	206702	0.866
113	54	Suicidal	https://open.spotify.com/track/1iSqfoUFnQwV0QW1EfUit8	2020	3	13	0.655	0.441	0.0629	0.099	139.957	225857	0.273
114	19	Goodbyes (Feat. Young Thug)	https://open.spotify.com/track/6vBdBCoOhKHiYDDOcorfNo	2019	9	6	0.548	0.653	0.081	0.103	150.068	174853	0.163
115	73	Bohemian Rhapsody - Remastered 2011	https://open.spotify.com/track/4u7EnebtmKWzUH433cf5Qv	1975	11	21	0.392	0.402	0.0536	0.243	143.883	354320	0.228
116	74	Favorito	https://open.spotify.com/track/0Snbzbd74RLfL0i4nn1vU5	2020	3	26	0.611	0.851	0.0598	0.232	178.032	211613	0.823
117	17	Bruises	https://open.spotify.com/track/4Of7rzpRpV1mWRbhp5rAqG	2019	5	17	0.736	0.308	0.0677	0.186	111.202	220492	0.361
118	38	Without Me	https://open.spotify.com/track/6FZDfxM3a3UCqtzo5pxSLZ	2018	10	4	0.752	0.488	0.0705	0.0936	136.041	201661	0.533
119	75	Old Town Road - Remix	https://open.spotify.com/track/2YpeDb67231RjR0MgVLzsG	2019	6	21	0.878	0.619	0.102	0.113	136.041	157067	0.639
120	76	Me Gusta	https://open.spotify.com/track/5Xhqh4lwJPtMUTsdBztN1a	2020	1	13	0.775	0.696	0.0681	0.157	92.007	190570	0.775
121	20	LA CANCIÓN	https://open.spotify.com/track/0fea68AdmYNygeTGI4RC18	2019	6	28	0.754	0.646	0.317	0.108	176.089	242573	0.429
122	20	Azul	https://open.spotify.com/track/2lCkncy6bIB0LTMT7kvrD1	2020	3	19	0.843	0.836	0.0695	0.0532	94.018	205933	0.65
123	45	Shape of You	https://open.spotify.com/track/7qiZfU4dY1lWllzX7mPBI3	2017	3	3	0.825	0.652	0.0802	0.0931	95.977	233713	0.931
124	77	Maniac	https://open.spotify.com/track/6KfoDhO4XUWSbnyKjNp9c4	2020	3	20	0.628	0.639	0.0435	0.354	108.045	185773	0.493
125	78	Muévelo	https://open.spotify.com/track/4VgYtXCVJ7IbWAZ5ryfvEQ	2020	1	8	0.594	0.808	0.0489	0.565	188.09	194892	0.919
126	79	I Love Me	https://open.spotify.com/track/2IHLaN6wwYKQ3S24NsQqpA	2020	3	6	0.664	0.561	0.0495	0.0764	150.093	203672	0.713
127	16	Follow	https://open.spotify.com/track/2w1rq80FIrbxeJy9WYURxw	2020	4	1	0.735	0.787	0.16	0.0721	168.997	203093	0.455
128	80	Say You Won't Let Go	https://open.spotify.com/track/5uCax9HTNlzGybIStD3vDh	2016	10	28	0.358	0.557	0.059	0.0902	85.043	211467	0.494
129	81	Make You Mine	https://open.spotify.com/track/5iFwAOB2TFkPJk8sMlxP8g	2019	8	9	0.606	0.799	0.0261	0.15	103.014	232907	0.638
130	67	Can We Kiss Forever?	https://open.spotify.com/track/58wyJLv6yH1La9NIZPl3ne	2018	8	31	0.522	0.128	0.0357	0.0941	109.986	187932	0.124
131	2	Money In The Grave (Drake ft. Rick Ross)	https://open.spotify.com/track/5ry2OE6R2zPQFDO85XkgRb	2019	6	15	0.831	0.502	0.046	0.122	100.541	205427	0.101
132	32	Fantasias	https://open.spotify.com/track/6mAN61JH0dzyZpWslS11jy	2019	8	29	0.879	0.703	0.0701	0.0569	94.004	199711	0.788
133	82	SUGAR	https://open.spotify.com/track/6U0FIYXCQ3TGrk4tFpLrEA	2019	8	23	0.453	0.538	0.0638	0.19	122.973	204533	0.516
134	83	PTSD	https://open.spotify.com/track/3jT2LKH0RSbQ8jIUNFzXm5	2020	2	28	0.883	0.808	0.182	0.207	119.01	232065	0.806
135	20	Blanco	https://open.spotify.com/track/5pXy29xzxR3aTB0SYRI590	2019	11	15	0.87	0.706	0.126	0.0872	100.013	145800	0.593
136	13	A Tu Merced	https://open.spotify.com/track/4r9jkMEnArtWGH2rL2FZl0	2020	2	29	0.86	0.791	0.0568	0.106	92.023	175918	0.887
137	51	Kings & Queens	https://open.spotify.com/track/76nqCfJOcFFWBJN32PAksn	2020	9	18	0.637	0.69	0.0405	0.124	129.857	162399	0.457
138	45	Perfect	https://open.spotify.com/track/0tgVpDi06FyKpA1z0VMD4v	2017	3	3	0.599	0.448	0.0232	0.106	95.05	263400	0.168
139	60	Sucker	https://open.spotify.com/track/22vgEDb5hykfaTwLuskFGD	2019	6	7	0.842	0.734	0.0588	0.106	137.958	181027	0.952
140	33	Higher Love	https://open.spotify.com/track/6oJ6le65B3SEqPwMRNXWjY	2019	6	28	0.693	0.678	0.0324	0.101	103.952	228267	0.404
141	84	No Me Conoce - Remix	https://open.spotify.com/track/4R8BJggjosTswLxtkw8V7P	2019	5	24	0.806	0.786	0.0741	0.0935	91.973	309120	0.58
142	4	Levitating	https://open.spotify.com/track/39LLxExYz6ewLAcYrzQQyP	2020	10	1	0.702	0.825	0.0601	0.0674	102.977	203064	0.915
143	85	Go Stupid (feat. NLE Choppa & Mike WiLL Made-It)	https://open.spotify.com/track/74fV8TuLZKVzSIOOGu8wwI	2020	5	15	0.922	0.813	0.251	0.0539	141.087	165726	0.724
144	86	No Idea	https://open.spotify.com/track/7AzlLxHn24DxjgQX73F9fU	2020	3	13	0.652	0.631	0.0893	0.165	127.998	154424	0.35
145	19	Wow.	https://open.spotify.com/track/7xQAfvXzm3AkraOtGPWIZg	2019	9	6	0.829	0.539	0.208	0.103	99.96	149547	0.388
146	87	July	https://open.spotify.com/track/5a6pdCHlWS2ekOOQ70QnAr	2020	5	15	0.708	0.186	0.042	0.0779	72.541	156106	0.322
147	13	Callaita	https://open.spotify.com/track/2TH65lNHgvLxCKXM3apjxI	2019	5	31	0.61	0.624	0.309	0.243	176.169	250534	0.244
148	88	WANNABE	https://open.spotify.com/track/6tCssnvTUREcperDOUTqvA	2020	3	9	0.809	0.911	0.0617	0.181	122.035	191242	0.64
149	89	To Die For	https://open.spotify.com/track/2ZTYlnhhV1UAReg7wIGolx	2020	2	14	0.483	0.361	0.0738	0.098	171.649	193795	0.307
150	48	Robbery	https://open.spotify.com/track/6Hj9jySrnFppAI0sEMCZpJ	2019	3	8	0.685	0.692	0.0457	0.153	159.966	240051	0.578
151	90	PORFA	https://open.spotify.com/track/3iQOfefMGDVDwo8dZoco8T	2020	6	26	0.843	0.549	0.164	0.155	83.982	233000	0.542
152	91	Still Be Friends (feat. Tory Lanez & Tyga)	https://open.spotify.com/track/0JjM9bKm4wrwohMslcm892	2020	2	7	0.803	0.759	0.0494	0.0921	104.0	213308	0.284
153	51	Sweet but Psycho	https://open.spotify.com/track/25sgk305KZfyuqVBQIahim	2020	9	18	0.72	0.706	0.0473	0.166	133.002	187436	0.62
154	28	ocean eyes	https://open.spotify.com/track/2uIX8YMNjGMD7441kqyyNU	2016	11	18	0.358	0.372	0.0464	0.0877	144.833	200387	0.16
155	92	Dior	https://open.spotify.com/track/79s5XnCN4TJKTVMSmOx8Ep	2019	7	26	0.548	0.805	0.351	0.408	142.094	216387	0.648
156	37	Piece Of Your Heart	https://open.spotify.com/track/1DFD5Fotzgn6yYXkYsKiGs	2019	2	1	0.677	0.744	0.0295	0.074	124.08	152913	0.631
157	93	Jangueo	https://open.spotify.com/track/5m3jpKkgkfoMcym1qjToFg	2019	11	8	0.861	0.678	0.0536	0.106	103.994	259600	0.723
158	56	goosebumps	https://open.spotify.com/track/6gBFPUFcJLzWGx4lenP6h2	2016	12	13	0.841	0.593	0.0379	0.124	124.917	162803	0.808
159	94	Eastside (with Halsey & Khalid)	https://open.spotify.com/track/7FGq80cy8juXBCD2nrqdWU	2018	7	12	0.56	0.68	0.321	0.116	89.391	173800	0.319
160	89	How Do You Sleep?	https://open.spotify.com/track/6b2RcmUt1g9N9mQ3CbjX2Y	2019	7	19	0.477	0.682	0.0925	0.0763	110.567	202205	0.345
161	32	Fantasias - Remix	https://open.spotify.com/track/0A37XY67wSdGqkGjtfW6aV	2020	3	6	0.816	0.72	0.0684	0.277	94.004	267242	0.78
162	70	Moonlight	https://open.spotify.com/track/0JP9xo3adEtGSdUEISiszL	2018	3	16	0.921	0.537	0.0804	0.102	128.009	135090	0.711
163	95	Alone, Pt. II	https://open.spotify.com/track/0bMbDctzMmTyK2j74j3nF3	2019	12	27	0.67	0.668	0.0422	0.133	88.033	179053	0.608
164	96	The Take (feat. Chris Brown)	https://open.spotify.com/track/0Odu228D0yGcFySGuxU4rY	2019	11	15	0.464	0.547	0.339	0.155	67.003	221492	0.423
165	56	SICKO MODE	https://open.spotify.com/track/2xLMifQCjDGFmkHkpNLD9h	2018	8	3	0.834	0.73	0.222	0.124	155.008	312820	0.446
166	97	The Less I Know The Better	https://open.spotify.com/track/6K4t31amVTZDgR3sKmwUJJ	2015	7	17	0.64	0.74	0.0284	0.167	116.879	216320	0.785
167	4	Hallucinate	https://open.spotify.com/track/1nYeVF5vIBxMxfPoL0SIWg	2020	3	27	0.627	0.69	0.139	0.0742	122.053	208505	0.627
168	89	Dancing With A Stranger (with Normani)	https://open.spotify.com/track/6Qs4SXO9dwPj5GKvVOv8Ki	2019	1	11	0.741	0.52	0.0656	0.222	102.998	171030	0.347
169	98	Old Me	https://open.spotify.com/track/4POHzEwNTCYaIvqCUp3NnO	2020	3	27	0.722	0.62	0.0483	0.26	127.978	186786	0.474
170	99	Let Me Down Slowly	https://open.spotify.com/track/2qxmye6gAegTMjLKEBoR3d	2018	11	16	0.652	0.557	0.0318	0.124	150.073	169354	0.483
171	100	A Gente Fez Amor - Ao Vivo	https://open.spotify.com/track/3tv697PZNnaQN0Mn2zGhS5	2019	12	5	0.794	0.937	0.0336	0.962	134.012	237517	0.826
172	13	Pero Ya No	https://open.spotify.com/track/75pQqzwgCjUOSSy5CpmAjy	2020	2	29	0.882	0.612	0.118	0.182	147.982	160638	0.742
173	101	Be Alright	https://open.spotify.com/track/5qrSlOut2rNAWv3ubArkNy	2018	6	29	0.553	0.586	0.0362	0.0813	126.684	196373	0.443
174	102	All of Me	https://open.spotify.com/track/3U4isOIWM3VvDubwSI3y7a	2013	8	30	0.422	0.264	0.0322	0.132	119.93	269560	0.331
175	21	Lights Up	https://open.spotify.com/track/4jAIqgrPjKLTY9Gbez25Qb	2019	12	13	0.575	0.621	0.032	0.141	101.987	172213	0.27
176	103	3 Nights	https://open.spotify.com/track/0uI7yAKUf52Cn7y3sYyjiX	2018	10	16	0.815	0.518	0.0897	0.104	151.891	177667	0.877
177	104	Takeaway	https://open.spotify.com/track/3g0mEQx3NTanacLseoP0Gw	2019	12	6	0.528	0.511	0.0324	0.101	100.1	209880	0.351
178	98	Youngblood	https://open.spotify.com/track/2iUXsYOEPhVqEBwsqP70rE	2018	6	15	0.596	0.854	0.463	0.124	120.274	203418	0.152
179	105	Hate Me (with Juice WRLD)	https://open.spotify.com/track/6kls8cSlUyHW2BUOkDJIZE	2019	6	26	0.657	0.768	0.0507	0.144	75.025	186223	0.759
180	1	Hardest To Love	https://open.spotify.com/track/6kWxIqQDsKFYCJGbU4AjCX	2020	3	20	0.467	0.608	0.0707	0.125	80.957	211400	0.108
181	106	I Like Me Better	https://open.spotify.com/track/2P91MQbaiQOfbiz9VqhqKQ	2018	5	31	0.752	0.505	0.253	0.104	91.97	197437	0.419
182	104	Something Just Like This	https://open.spotify.com/track/6RUKPb4LETWmmr3iAEQktW	2017	4	7	0.617	0.635	0.0317	0.164	103.019	247160	0.446
183	29	If I Can't Have You	https://open.spotify.com/track/2bT1PH7Cw3J9p3t7nlXCdh	2019	5	3	0.692	0.809	0.0602	0.147	123.911	190800	0.864
184	19	Better Now	https://open.spotify.com/track/7dt6x5M1jzdTEt8oCbisTK	2018	4	27	0.68	0.578	0.04	0.135	145.038	231267	0.341
185	22	Girls Like You (feat. Cardi B) - Cardi B Version	https://open.spotify.com/track/7fa9MBXhVfQ8P8Df9OEbD8	2018	5	30	\N	\N	\N	\N	\N	\N	\N
186	2	God's Plan	https://open.spotify.com/track/6DCZcSspjsKoFjzjrWoCdn	2018	6	29	0.754	0.449	0.109	0.552	77.169	198973	0.357
187	63	thank u, next	https://open.spotify.com/track/3e9HZxeyfWwjeyPAMmWSSQ	2019	2	8	0.717	0.653	0.0658	0.101	106.966	207320	0.412
188	107	High Hopes	https://open.spotify.com/track/1rqqCSm0Qe4I9rUvWncaom	2018	6	22	0.579	0.904	0.0618	0.064	82.014	190947	0.681
189	108	Heart On Ice	https://open.spotify.com/track/6fWa5CRgy0z30OeGZyMBvD	2019	6	14	0.733	0.389	0.0738	0.141	157.878	159670	0.244
190	109	BRABA	https://open.spotify.com/track/2WlZuBDgLfT7Kc0admhFdg	2020	3	18	0.812	0.689	0.0619	0.0784	144.011	129782	0.663
191	110	Woah	https://open.spotify.com/track/02RCbjb9czvQKNGBmEmWob	2019	11	8	0.882	0.602	0.245	0.178	142.959	183011	0.43
192	70	changes	https://open.spotify.com/track/7AFASza1mXqntmGtbxXprO	2018	3	16	0.669	0.308	0.029	0.0984	64.934	121887	0.52
193	111	La Cama - Remix	https://open.spotify.com/track/2tGENA8xef0wABdHvyXwv9	2020	3	27	0.737	0.832	0.0798	0.255	173.986	330240	0.865
194	112	Good as Hell (feat. Ariana Grande)	https://open.spotify.com/track/2rjjNUYONZqC7wSd1i6OFq	2016	6	17	0.668	0.892	0.0645	0.735	95.927	159011	0.478
195	113	Astronomia	https://open.spotify.com/track/665AK0ovB11McZRwfa852G	2016	9	16	0.653	0.945	0.096	0.439	126.093	198095	0.326
196	50	XO Tour Llif3	https://open.spotify.com/track/7GX5flRQZVHRAGd6B4TmDO	2017	8	25	0.732	0.75	0.231	0.109	155.096	182707	0.401
197	114	Cradles	https://open.spotify.com/track/1y4jsQt7MjnZhiD1L6qFBC	2019	1	4	0.534	0.589	0.325	0.176	78.616	209829	0.632
198	4	Pretty Please	https://open.spotify.com/track/6DXZiYUbrYgrVIhfX3U9Z2	2020	3	27	0.906	0.474	0.194	0.286	106.976	194607	0.656
199	115	I.F.L.Y.	https://open.spotify.com/track/4a6q8CR2hzLk2plDkSxkfD	2019	8	9	0.812	0.519	0.0385	0.13	104.954	165714	0.554
200	27	ROCKSTAR (feat. Roddy Ricch)	https://open.spotify.com/track/7ytR5pFWmSjzHJIeQkgog4	2020	4	17	0.746	0.69	0.164	0.101	89.977	181733	0.497
201	52	Rain On Me (with Ariana Grande)	https://open.spotify.com/track/7ju97lgwC2rKQ6wwsf9no9	2020	5	22	0.672	0.855	0.0397	0.323	123.056	182200	0.646
202	116	Party Girl	https://open.spotify.com/track/5RqR4ZCCKJDcBLIn4sih9l	2020	4	21	0.728	0.431	0.0622	0.0996	130.022	147800	0.629
203	117	THE SCOTTS	https://open.spotify.com/track/39Yp9wwQiSRIDOvrVg7mbk	2020	4	24	0.716	0.537	0.0514	0.157	129.979	165978	0.28
204	63	Stuck with U (with Justin Bieber)	https://open.spotify.com/track/4HBZA5flZLE435QTztThqH	2020	5	8	0.597	0.45	0.0418	0.382	178.765	228482	0.537
205	118	GOOBA	https://open.spotify.com/track/4NhDYoQTYCdWHTvlbGVgwo	2020	5	8	0.611	0.688	0.341	0.251	178.462	132303	0.393
206	118	TROLLZ (with Nicki Minaj)	https://open.spotify.com/track/3dVvWnj4D8JGkKvo6Hucso	2020	6	12	0.744	0.422	0.294	0.11	180.006	202667	0.493
207	119	Savage Remix (feat. Beyoncé)	https://open.spotify.com/track/5v4GgrXPMghOnBBLmveLac	2020	4	29	0.822	0.743	0.28	0.127	84.459	242001	0.636
208	39	MAMACITA	https://open.spotify.com/track/2g1ukx0VolwI31t8z5vprw	2020	4	10	0.894	0.635	0.0473	0.0823	105.013	249143	0.428
209	120	TKN (feat. Travis Scott)	https://open.spotify.com/track/4w47S36wQGBhGg073q3nt7	2020	5	28	0.776	0.509	0.467	0.115	94.634	129371	0.485
210	66	Hasta Que Dios Diga	https://open.spotify.com/track/06s3QtMJVXw1AJX3UfvZG1	2020	5	29	0.691	0.765	0.111	0.203	174.021	246000	0.855
211	121	Play Date	https://open.spotify.com/track/4DpNNXFMMxQEKl7r0ykkWA	2015	8	14	0.68	0.729	0.0475	0.224	123.97	179867	0.446
212	52	Sour Candy (with BLACKPINK)	https://open.spotify.com/track/1IWNylpZ477gIVUDpJL66u	2020	5	28	0.752	0.87	0.0623	0.489	120.006	157707	0.784
213	33	Lose Somebody	https://open.spotify.com/track/1sgDyuLooyvEML4oHspNza	2020	5	29	0.58	0.586	0.0357	0.0755	147.988	199549	0.507
214	68	Be Kind (with Halsey)	https://open.spotify.com/track/3Z8FwOEN59mRMxDCtb8N0A	2020	5	1	0.63	0.633	0.0457	0.0541	93.995	172762	0.452
215	110	The Bigger Picture	https://open.spotify.com/track/44gRhRi2OhEf7moAUj6MD1	2020	6	12	0.59	0.618	0.334	0.244	96.459	252729	0.153
216	122	Savage Love (Laxed - Siren Beat)	https://open.spotify.com/track/1xQ6trAsedVPCdbtDAmk0c	2020	6	11	0.767	0.481	0.0803	0.269	150.076	171375	0.761
217	123	Relación	https://open.spotify.com/track/3ZG8N7aWw2meb6UrI5ZmnZ	2020	9	4	0.793	0.771	0.0959	0.284	171.943	247308	0.835
218	86	After Party	https://open.spotify.com/track/527k23H0A4Q0UJN3vGs0Da	2020	3	13	0.629	0.692	0.0376	0.603	162.948	167916	0.453
219	124	La Jeepeta - Remix	https://open.spotify.com/track/1mohfLaTJtB2RplHLQVM70	2020	4	24	0.815	0.715	0.207	0.091	176.007	345241	0.786
220	125	Tommy Lee (feat. Post Malone)	https://open.spotify.com/track/5QZKcQDp0tCcvMdyqEciBV	2020	6	12	0.457	0.621	0.138	0.0944	85.359	224638	0.634
221	126	GO (feat. Juice WRLD)	https://open.spotify.com/track/2t7D3y0jvYjR8IP9Bosyew	2020	7	24	0.487	0.74	0.0944	0.612	73.779	181688	0.522
222	2	Chicago Freestyle (feat. Giveon)	https://open.spotify.com/track/4wVOKKEHUJxHCFFNUWDn0B	2020	5	1	0.735	0.449	0.347	0.113	122.947	220488	0.0397
223	35	Secrets	https://open.spotify.com/track/66W1rVTnEv86dIkFhoiElg	2020	4	24	0.848	0.768	0.0373	0.195	118.961	176767	0.777
224	127	Deep End Freestyle	https://open.spotify.com/track/2AlYncTpVHKwHb55F9lF6O	2020	6	5	0.868	0.479	0.445	0.102	133.928	115200	0.776
225	9	Say So (feat. Nicki Minaj)	https://open.spotify.com/track/11VApNQCWLJdzxWrlmwzUa	2020	5	1	0.856	0.641	0.204	0.427	111.004	206221	0.745
226	27	ROCKSTAR (feat. Roddy Ricch) - BLM REMIX	https://open.spotify.com/track/4Aykm3xrOFSHrAnv80KUhh	2020	6	12	0.747	0.689	0.242	0.0884	89.901	204547	0.75
227	128	Tak Tiki Tak	https://open.spotify.com/track/6Hw21Z5CmEV78jrncFpMwz	2020	7	10	0.801	0.579	0.0813	0.172	99.994	212406	0.231
228	129	Rover (feat. DTG)	https://open.spotify.com/track/4slSrbTK1sNK4I1mDYEthf	2020	3	4	0.613	0.624	0.206	0.283	62.948	167917	0.804
229	84	CÓMO SE SIENTE - Remix	https://open.spotify.com/track/2tFwfmceQa1Y6nRPhYbEtC	2020	5	9	0.807	0.606	0.088	0.119	92.988	227520	0.304
230	48	Righteous	https://open.spotify.com/track/0OyQns5ayNK2OVaES0Vb8t	2020	7	10	0.706	0.625	0.0314	0.129	142.948	242181	0.225
231	130	Caramelo	https://open.spotify.com/track/3gD4J3RUHy4OUuZ3qAiaiG	2020	6	11	0.728	0.806	0.0623	0.153	168.084	217547	0.698
232	131	Shotta Flow 5	https://open.spotify.com/track/1orjH4IkSH9VrWmRCToKV8	2020	6	12	0.806	0.749	0.328	0.0621	140.032	145167	0.77
233	92	Make It Rain	https://open.spotify.com/track/4TgHt7vKCimpywaiKfl0uj	2020	6	12	0.54	0.77	0.389	0.372	159.494	204000	0.565
234	132	MORE & MORE	https://open.spotify.com/track/2bAAj29XGc4h1G4oEGYCmg	2020	6	1	0.739	0.841	0.06	0.173	106.99	199653	0.562
235	133	This City	https://open.spotify.com/track/3H3r2nKWa3Yk5gt8xgmsEt	2019	12	11	0.605	0.377	0.0443	0.0808	73.877	194853	0.519
236	134	Go Crazy	https://open.spotify.com/track/1IIKrJVP1C9N7iPtG6eOsK	2020	5	8	0.755	0.578	0.145	0.25	94.148	176960	0.581
237	135	Some Say - Felix Jaehn Remix	https://open.spotify.com/track/7C1trmcQQ5n5RNy4l6ziCv	2019	9	6	\N	\N	\N	\N	\N	\N	\N
238	32	El Efecto	https://open.spotify.com/track/4SJHHpKhcuXwDsCsPqshXj	2019	3	15	0.849	0.781	0.159	0.0801	84.041	217143	0.893
239	136	Djomb - Bien ou quoi	https://open.spotify.com/track/0KBwGCY9RYD9t2zjeW4h48	2020	5	29	0.945	0.676	0.207	0.322	123.109	141893	0.631
240	137	DOLLAZ ON MY HEAD (feat. Young Thug)	https://open.spotify.com/track/3nS9a01VvXHQriLqJYwRqG	2020	5	22	0.825	0.458	0.0577	0.102	145.115	197760	0.161
241	66	Fútbol & Rumba (feat. Enrique Iglesias)	https://open.spotify.com/track/2hDe0Ls5mVqs1XJqv7sbcM	2020	5	29	0.735	0.916	0.117	0.0918	167.994	221429	0.691
242	138	Daisies	https://open.spotify.com/track/4uqh9bualXNHXXwO2wPorc	2020	5	15	0.639	0.546	0.0407	0.122	122.179	173124	0.149
243	139	PAM	https://open.spotify.com/track/0eeKDrQxjqNl5bX5VCHDcn	2020	5	1	0.889	0.863	0.0757	0.0798	112.953	201000	0.776
244	48	Tell Me U Luv Me (with Trippie Redd)	https://open.spotify.com/track/4CNcRgjGw1v9VQaTaytdnD	2020	7	10	0.66	0.76	0.0787	0.632	127.984	180129	0.394
245	85	Flex (feat. Juice WRLD)	https://open.spotify.com/track/2QqJTIlGKRLJC3onkavYEz	2020	5	15	0.752	0.673	0.153	0.133	164.009	163902	0.35
246	140	M' Manc (con Geolier & Sfera Ebbasta)	https://open.spotify.com/track/0MLu1cFYL4ikdRTdasCQT9	2020	6	11	0.703	0.704	0.0641	0.41	139.933	180000	0.725
247	19	Goodbyes (feat. Young Thug)	https://open.spotify.com/track/0t3ZvGKlmYmVsDzBJAXK8C	2019	9	6	0.548	0.653	0.081	0.103	150.068	174853	0.163
248	110	Emotionally Scarred	https://open.spotify.com/track/7ge7BHazYbVKi8qyZUX1Bm	2020	2	28	0.585	0.641	0.133	0.316	88.284	197530	0.266
249	141	Emotions 2.0	https://open.spotify.com/track/3yZCjDTxzZxx1kll1sRjGc	2020	6	12	0.788	0.491	0.109	0.107	98.543	146028	0.271
250	13	PA' ROMPERLA	https://open.spotify.com/track/5XqCz18k96K8tx6DAYM97i	2020	5	10	0.772	0.83	0.0599	0.0843	94.011	194200	0.697
251	142	IDK You Yet	https://open.spotify.com/track/47EWMOElkkbMp5m9SBkx7d	2020	6	23	0.648	0.308	0.04	0.124	76.997	184638	0.198
252	143	Banana (feat. Shaggy) - DJ FLe - Minisiren Remix	https://open.spotify.com/track/0dZpw3h6KZhcHec61qwevZ	2020	5	15	0.824	0.854	0.177	0.117	95.114	210329	0.896
253	144	Airwaves	https://open.spotify.com/track/5CqkgDH8QZjSqqI3HmYxDD	2020	5	14	0.885	0.578	0.0783	0.102	131.999	178933	0.388
254	32	El Efecto - Remix	https://open.spotify.com/track/74j34STf8L6uADnTN69ohv	2019	12	13	0.771	0.769	0.0694	0.345	167.969	289899	0.931
255	145	Na Raba Toma Tapão	https://open.spotify.com/track/0AGS6ZRgzobrazmCi6pYMe	2020	6	6	0.962	0.787	0.0554	0.176	130.003	165231	0.968
256	146	Surrender	https://open.spotify.com/track/0ecC8p17cDNlxHXkuYqeR6	2019	10	29	0.39	0.448	0.0276	0.107	144.89	183103	0.077
257	31	Turks (with Gunna & ft. Travis Scott)	https://open.spotify.com/track/7IMwEtpAiJanqF6vQteZN2	2020	5	8	0.894	0.618	0.129	0.558	119.1	161320	0.379
258	13	BYE ME FUI	https://open.spotify.com/track/0FktnzDqjClqU6iqOZVEs2	2020	5	10	0.712	0.599	0.112	0.103	179.788	178000	0.588
259	147	I'm Yours	https://open.spotify.com/track/3S0OXQeoh0w6AY8WQVckRW	2008	5	12	0.686	0.457	0.0468	0.105	150.953	242187	0.718
260	48	All Girls Are The Same	https://open.spotify.com/track/4VXIryQMWpIdGgYR4TrjT1	2018	12	10	0.671	0.529	0.307	0.0856	161.989	165820	0.203
261	104	Closer	https://open.spotify.com/track/7BKLCZ1jbUBVqRi2FVlTVw	2016	7	29	0.748	0.524	0.0338	0.111	95.01	244960	0.661
262	148	Riptide	https://open.spotify.com/track/7yq4Qj7cqayVTp3FF9CWbm	2014	9	9	0.484	0.731	0.0379	0.151	101.654	204280	0.51
263	149	Mr. Brightside	https://open.spotify.com/track/7d8GetOsjbxYnlo6Y9e5Kw	2004	6	15	0.356	0.924	0.0808	0.0953	148.017	222587	0.232
264	73	Don't Stop Me Now - Remastered 2011	https://open.spotify.com/track/5T8EDUDqKcs6OSOwEsfqG7	1978	11	10	0.563	0.865	0.16	0.77	156.271	209413	0.601
265	89	I’m Ready (with Demi Lovato)	https://open.spotify.com/track/1fipvP2zmef6vN2IwXfJhY	2020	4	16	0.501	0.674	0.0408	0.282	155.051	200838	0.152
266	56	STARGAZING	https://open.spotify.com/track/7wBJfHzpfI3032CSD7CE2m	2018	8	3	0.487	0.789	0.044	0.189	150.007	270715	0.0564
267	56	BUTTERFLY EFFECT	https://open.spotify.com/track/6xcJyGpfZbuuiequtnlKt4	2018	8	3	0.763	0.628	0.05	0.114	140.958	190557	0.193
268	150	Level of Concern	https://open.spotify.com/track/6xZ4Q2k2ompmDppyeESIY8	2020	4	9	0.754	0.583	0.0432	0.144	122.012	220051	0.77
269	141	Emotions	https://open.spotify.com/track/6lU4BQWZomCWRfKSowfezE	2020	6	12	0.788	0.491	0.109	0.107	98.543	146028	0.271
270	64	Boyfriend	https://open.spotify.com/track/4QnC1bIaMSfDQvF4XDhV5M	2020	4	9	0.811	0.512	0.17	0.0768	92.046	161188	0.346
271	151	90-60-111	https://open.spotify.com/track/3ZdDYeaZzeYnrP4crgXzPk	2020	4	23	0.8	0.628	0.285	0.391	143.979	141387	0.745
272	56	YOSEMITE	https://open.spotify.com/track/7lAK3oHbfEnvUQWosrMMpR	2018	8	3	0.785	0.554	0.0409	0.116	128.047	150043	0.144
273	152	@ MEH	https://open.spotify.com/track/5UusfWUMMLEXLMc1ViNZoe	2020	4	16	0.877	0.492	0.153	0.0678	151.042	166799	0.4
274	153	Gimme Love	https://open.spotify.com/track/2hfoyc7ve6xM4ZEiNIiU1B	2020	4	16	\N	\N	\N	\N	\N	\N	\N
275	154	Sigues Con El - Remix	https://open.spotify.com/track/4Pu0a2TuHOYtI4CCE3HEXI	2020	4	10	0.747	0.693	0.298	0.0872	175.994	189567	0.736
276	74	Por Primera Vez	https://open.spotify.com/track/0pgj4EzB1XRqgZemoMNG5D	2020	3	9	0.716	0.588	0.116	0.0847	165.896	183547	0.707
277	155	Houdini (feat. Swarmz & Tion Wayne)	https://open.spotify.com/track/3lay6f81Lhy0qp2Uvp4cNJ	2020	4	24	0.572	0.519	0.243	0.129	100.453	169355	0.704
278	50	Sasuke	https://open.spotify.com/track/0ROE31C8Wu4neZoR9stM9e	2020	4	24	0.859	0.477	0.428	0.0819	145.979	251336	0.153
279	153	SLOW DANCING IN THE DARK	https://open.spotify.com/track/0rKtyWc8bvkriBthvHKY8d	2018	10	26	0.515	0.479	0.0261	0.191	88.964	209274	0.284
280	156	If You’re Too Shy (Let Me Know) - Edit	https://open.spotify.com/track/3iEqGBZ2wcpVzhiAcwXVC6	2020	4	23	0.651	0.806	0.0311	0.0927	125.641	239877	0.386
281	96	Broke In A Minute	https://open.spotify.com/track/4xqIYGwwZTEem9U8A42SPF	2020	4	10	0.929	0.7	0.0906	0.349	120.009	132024	0.802
282	74	Tutu	https://open.spotify.com/track/1Ol5LmdNDNpFu1oNwfgkux	2019	8	9	0.731	0.832	0.0503	0.0665	146.013	178613	0.94
283	63	positions	https://open.spotify.com/track/35mvY5S1H3J2QZyna3TFe0	2020	10	30	0.737	0.802	0.0878	0.0931	144.015	172325	0.682
284	13	DÁKITI	https://open.spotify.com/track/47EiUVwUp4C9fGccaPuUCS	2020	11	27	0.731	0.573	0.0544	0.113	109.928	205090	0.145
285	42	Mood (feat. iann dior)	https://open.spotify.com/track/3tjFYV6RSFtuktYl3ZtYcq	2020	7	24	0.701	0.716	0.0361	0.324	91.007	140533	0.732
286	157	Lemonade (feat. Gunna, Don Toliver & NAV)	https://open.spotify.com/track/7hxHWCCAIIxFLCzvDgnQHX	2020	8	14	0.799	0.66	0.079	0.111	140.04	195429	0.471
287	63	34+35	https://open.spotify.com/track/6Im9k8u9iIzKMrmV7BWtlF	2020	10	30	\N	\N	\N	\N	\N	\N	\N
288	92	What You Know Bout Love	https://open.spotify.com/track/1tkg4EHVoqnhR6iFEXb60y	2020	7	3	0.709	0.548	0.353	0.133	83.995	160000	0.543
289	158	Dynamite	https://open.spotify.com/track/0t1kP63rueHleOhQkYSXFY	2020	11	20	0.746	0.765	0.0993	0.0936	114.044	199054	0.737
290	10	Lonely (with benny blanco)	https://open.spotify.com/track/4y4spB9m0Q6026KfkAvy9Q	2020	10	16	0.631	0.239	0.0398	0.116	79.859	149297	0.0927
291	159	Hawái	https://open.spotify.com/track/1yoMvmasuxZfqHEipJhRbp	2020	11	5	0.766	0.788	0.312	0.142	179.984	200482	0.609
292	160	WAP (feat. Megan Thee Stallion)	https://open.spotify.com/track/4Oun2ylbjFKMPTiaSbbCih	2020	8	7	0.935	0.454	0.375	0.0824	133.073	187541	0.357
293	10	Holy (feat. Chance The Rapper)	https://open.spotify.com/track/5u1n1kITHCxxp8twBcZxWy	2020	9	18	0.673	0.704	0.36	0.0898	86.919	212093	0.372
294	92	For The Night (feat. Lil Baby & DaBaby)	https://open.spotify.com/track/0PvFJmanyNQMseIFrU708S	2020	7	3	0.823	0.586	0.2	0.193	125.971	190476	0.347
295	63	motive (with Doja Cat)	https://open.spotify.com/track/5GkQIP5mWPi4KZLLXeuFTT	2020	10	30	0.789	0.742	0.0652	0.166	116.965	167990	0.661
296	161	you broke me first	https://open.spotify.com/track/45bE4HXI0AwGZXfZtMp8JR	2020	4	17	0.667	0.373	0.05	0.0906	124.148	169266	0.0823
297	162	Head & Heart (feat. MNEK)	https://open.spotify.com/track/6cx06DFPPHchuUAcTxznu9	2020	7	3	0.734	0.874	0.0662	0.0489	122.953	166028	0.905
298	123	Relación - Remix	https://open.spotify.com/track/35UUpTmrcFXNIVIN26ujXl	2020	9	4	0.793	0.771	0.0959	0.284	171.943	247308	0.835
299	163	Put Your Records On	https://open.spotify.com/track/6AGOKlMZWLCaEJGnaROtF9	2020	4	24	0.399	0.491	0.0538	0.11	91.066	210463	0.151
300	63	off the table (with The Weeknd)	https://open.spotify.com/track/7E1jVNoWuemqUryI4FxsVD	2020	10	30	0.411	0.522	0.0981	0.398	88.332	239949	0.382
301	2	Laugh Now Cry Later (feat. Lil Durk)	https://open.spotify.com/track/2SAqBLGA283SUiwJ3xOUVI	2020	8	14	0.761	0.518	0.134	0.107	133.976	261493	0.522
302	63	pov	https://open.spotify.com/track/3UoULw70kMsiVXxW0L3A33	2020	10	30	0.487	0.534	0.0555	0.1	131.798	201882	0.173
303	77	Heather	https://open.spotify.com/track/4xqrdfXkTW4T0RauPLv3WA	2020	3	20	0.357	0.425	0.0333	0.322	102.078	198040	0.27
304	63	just like magic	https://open.spotify.com/track/7Dx9Z6Aon1qPS2N0rHSWTe	2020	10	30	0.719	0.607	0.165	0.125	128.006	149900	0.464
305	29	Wonder	https://open.spotify.com/track/5KCbr5ndeby4y4ggthdiAb	2020	12	4	0.333	0.637	0.0581	0.149	139.898	172693	0.132
306	164	La Tóxica	https://open.spotify.com/track/15OjBeqNX3bShsGYQbteRv	2020	7	24	0.659	0.701	0.164	0.0866	91.97	180520	0.623
307	165	Se Te Nota (with Guaynaa)	https://open.spotify.com/track/11EnQRgRMJwMAesfkB5pnu	2020	9	2	0.905	0.686	0.0664	0.266	103.013	155825	0.963
308	74	Vida de Rico	https://open.spotify.com/track/73nAK3HgQK8dak83Y2WQ8F	2020	9	21	0.824	0.457	0.0543	0.041	87.977	187427	0.95
309	63	shut up	https://open.spotify.com/track/3ko9jEHNt4O5fjKN65ULJp	2020	10	30	0.499	0.462	0.0312	0.0946	127.698	157710	0.599
310	20	UN DIA (ONE DAY) (Feat. Tainy)	https://open.spotify.com/track/0EhpEsp4L0oRGM0vmeaN5e	2020	7	24	0.571	0.693	0.0545	0.173	168.169	232253	0.393
311	166	La Nota	https://open.spotify.com/track/7ndTONDDRFGiPnnhOzOXxq	2020	10	8	0.736	0.632	0.0648	0.349	92.03	216107	0.503
312	167	La Curiosidad	https://open.spotify.com/track/4HYDUMY0xSpeBr0AMY9cUz	2020	6	12	0.845	0.677	0.136	0.108	90.013	219048	0.68
313	168	Take You Dancing	https://open.spotify.com/track/59qrUpoplZxbIZxk6X0Bm3	2020	7	22	0.789	0.711	0.041	0.0876	112.985	190306	0.753
314	63	safety net (feat. Ty Dolla $ign)	https://open.spotify.com/track/14gkWVFMwdxBMyqBw1wmIg	2020	10	30	0.552	0.599	0.0404	0.0986	161.884	208457	0.0916
315	4	Levitating (feat. DaBaby)	https://open.spotify.com/track/6OqrJqDMu15AGJHJazg9Nr	2020	10	1	0.702	0.825	0.0601	0.0674	102.977	203064	0.915
316	130	Una Locura	https://open.spotify.com/track/5y7DaS3jAc9eZzcSOoUIwU	2020	9	4	0.714	0.761	0.0427	0.241	168.022	230693	0.906
317	139	Jeans	https://open.spotify.com/track/3GtnId3Cm1Xa6joCj08nzW	2020	8	14	0.807	0.656	0.105	0.0693	83.943	185840	0.89
318	63	nasty	https://open.spotify.com/track/0sci7ppTZFm4mjcH3nu8yO	2020	10	30	0.772	0.506	0.139	0.182	127.894	200733	0.456
319	169	Midnight Sky	https://open.spotify.com/track/27ycaQnQAxaPiyeg3nr2aB	2020	8	14	0.705	0.814	0.0346	0.203	110.0	223279	0.259
320	170	Dreams - 2004 Remaster	https://open.spotify.com/track/0ofHAoxe9vBkTCp2UQIavz	1977	2	4	0.828	0.492	0.0276	0.128	120.151	257800	0.789
321	16	Ay, DiOs Mío!	https://open.spotify.com/track/7x4ASXYEKfQBCewcZhK776	2020	6	6	0.715	0.706	0.195	0.106	179.997	189840	0.522
322	63	my hair	https://open.spotify.com/track/6u7gmPOz7pzzaeR9xSBpsR	2020	10	30	0.686	0.526	0.0374	0.144	92.013	158436	0.372
323	171	Ice Cream (with Selena Gomez)	https://open.spotify.com/track/4JUPEh2DVSXFGExu4Uxevz	2020	10	2	0.79	0.701	0.365	0.0311	159.972	177813	0.91
324	63	six thirty	https://open.spotify.com/track/2IKJtXeR5UsaUjZB46fTOK	2020	10	30	0.739	0.516	0.0539	0.151	120.109	183874	0.434
325	130	Despeinada	https://open.spotify.com/track/0JAZWvvqttGFm4UMDsPQXC	2020	9	4	0.734	0.775	0.0614	0.123	166.039	224187	0.72
326	159	Parce (feat. Justin Quiles)	https://open.spotify.com/track/4RJz8NfIe09gpKMiRUWKhJ	2020	8	21	0.691	0.739	0.229	0.11	83.897	248345	0.884
327	172	POPSTAR (feat. Drake)	https://open.spotify.com/track/6EDO9iiTtwNv6waLwa1UUq	2020	7	17	0.8	0.56	0.261	0.134	163.071	200221	0.45
328	21	Golden	https://open.spotify.com/track/45S5WTQEGOB1VHr1Q4FuPl	2019	12	13	0.448	0.838	0.0557	0.131	139.863	208907	0.254
329	173	Mi Niña	https://open.spotify.com/track/2bgcUk2A3jjKbCJ7KPquTi	2020	9	23	\N	\N	\N	\N	\N	\N	\N
330	48	Come & Go (with Marshmello)	https://open.spotify.com/track/2Y0wPrPQBrGhoLn14xRYCG	2020	7	10	0.625	0.814	0.0657	0.158	144.991	205485	0.535
331	171	Lovesick Girls	https://open.spotify.com/track/4Ws314Ylb27BVsvlZOy30C	2020	10	2	0.654	0.707	0.0664	0.0873	127.97	194765	0.448
332	63	obvious	https://open.spotify.com/track/0q85C1JiECyYIQthz1posA	2020	10	30	0.624	0.672	0.106	0.155	159.852	146959	0.26
333	174	Daisy	https://open.spotify.com/track/0AUvWawuP0ibk4SQ3sIZjk	2020	7	9	0.834	0.663	0.133	0.372	121.876	146523	0.774
334	32	Tattoo - Remix with Camilo	https://open.spotify.com/track/4ZRrLHqzhGRXYj2qcB4s5S	2020	7	9	0.848	0.637	0.156	0.0521	96.988	222680	0.698
335	89	Diamonds	https://open.spotify.com/track/1hJIbOjWpid6LtnozHmzRS	2020	9	17	0.653	0.667	0.0423	0.107	104.181	213869	0.556
336	92	Mood Swings (feat. Lil Tjay)	https://open.spotify.com/track/5rZlwNFl01HqLWBQGryKSm	2020	7	3	0.48	0.602	0.368	0.0848	179.798	213333	0.269
337	175	Sofia	https://open.spotify.com/track/7B3z0ySL9Rr0XvZEAjWZzM	2019	8	2	0.744	0.619	0.039	0.231	112.997	188387	0.641
338	63	love language	https://open.spotify.com/track/6NYtLvyThMT0oALFdJFdzq	2020	10	30	0.688	0.573	0.208	0.0749	110.034	179861	0.553
339	63	west side	https://open.spotify.com/track/1whfVLMKWqAX3uk97VXsNN	2020	10	30	0.688	0.455	0.199	0.0794	87.865	132279	0.557
340	132	I CAN'T STOP ME	https://open.spotify.com/track/3apeXzypBMnUfYcZYNX6DH	2020	10	26	0.657	0.88	0.102	0.463	150.084	205493	0.769
341	25	Tyler Herro	https://open.spotify.com/track/4DuUwzP4ALMqpquHU0ltAB	2020	10	22	0.794	0.756	0.136	0.247	123.066	156498	0.775
342	171	How You Like That	https://open.spotify.com/track/4SFknyjLcyTLJFPKD2m96o	2020	10	2	0.812	0.761	0.0812	0.0601	130.032	182956	0.344
343	176	Mi Cuarto	https://open.spotify.com/track/6fmQjRuo7XvRFCK2qex5hQ	2020	4	3	0.854	0.525	0.214	0.146	97.054	197587	0.63
344	177	MORE	https://open.spotify.com/track/6juLaduD4STCUDWT0AYun4	2020	10	28	0.66	0.787	0.032	0.323	142.018	217088	0.199
345	178	Deep End	https://open.spotify.com/track/6HlE9t71z9DjGi7KqSyEpA	2020	6	5	0.868	0.479	0.445	0.102	133.928	115200	0.776
346	48	Wishing Well	https://open.spotify.com/track/2U5WueTLIK5WJLD7mvDODv	2020	7	10	0.65	0.613	0.128	0.267	149.972	194621	0.0804
347	4	Fever	https://open.spotify.com/track/3F1P0QzdXtBz0MXy7KIO5w	2020	10	29	0.868	0.693	0.181	0.106	114.999	156911	0.396
348	179	my ex's best friend (with blackbear)	https://open.spotify.com/track/7kDUspsoYfLkWnZR7qwHZl	2020	9	25	0.731	0.675	0.0434	0.141	124.939	139461	0.298
349	180	Chica Ideal	https://open.spotify.com/track/21N4Buj4xsyLb218lYle61	2020	10	16	0.574	0.891	0.157	0.16	100.978	183240	0.707
350	16	BICHOTA	https://open.spotify.com/track/7vrJn5hDSXRmdXoR30KgF1	2020	10	23	0.863	0.666	0.152	0.103	163.908	178947	0.838
351	80	Train Wreck	https://open.spotify.com/track/55Am8neGJkdj2ADaM3aw5H	2016	10	28	0.311	0.485	0.0365	0.0726	77.355	208827	0.225
352	126	SO DONE	https://open.spotify.com/track/5psEZhQu6lukjhavJo4AbC	2020	10	23	0.719	0.598	0.077	0.115	142.592	126521	0.303
353	181	Forever After All	https://open.spotify.com/track/6IBcOGPsniK3Pso1wHIhew	2020	10	23	0.487	0.65	0.0253	0.0933	151.964	232533	0.456
354	182	Mad at Disney	https://open.spotify.com/track/7aGyRfJWtLqgJaZoG9lJhE	2020	7	24	0.738	0.621	0.0486	0.692	113.968	136839	0.715
355	96	WHATS POPPIN (feat. DaBaby, Tory Lanez & Lil Wayne) - Remix	https://open.spotify.com/track/2MbdDtCv5LUVjYy9RuGTgC	2020	6	24	0.904	0.723	0.26	0.185	145.013	227478	0.835
356	183	Tick Tock (feat. 24kGoldn)	https://open.spotify.com/track/27u7t9d7ZQoyjsCROHuZJ3	2020	8	21	0.779	0.705	0.0344	0.124	101.022	178374	0.946
357	32	Reloj	https://open.spotify.com/track/7r9ZhitdQBONTFOiJW5mr8	2020	10	22	0.823	0.537	0.209	0.123	175.946	231595	0.615
358	184	Spicy (feat. Post Malone)	https://open.spotify.com/track/5IUtvfNvOyVYZUa6AJFrnP	2020	10	23	0.782	0.51	0.0419	0.115	99.993	143375	0.118
359	185	Sweater Weather	https://open.spotify.com/track/2QjOHCTQ1Jl3zawyYOpxh6	2013	4	19	0.612	0.807	0.0336	0.101	124.053	240400	0.398
360	171	Pretty Savage	https://open.spotify.com/track/1XnpzbOGptRwfJhZgLbmSr	2020	10	2	0.701	0.556	0.0414	0.106	152.045	201122	0.333
361	186	Agua (with J Balvin) - Music From "Sponge On The Run" Movie	https://open.spotify.com/track/1pqnQ41XbfKjaFu6M0eGJp	2020	7	9	\N	\N	\N	\N	\N	\N	\N
362	92	The Woo (feat. 50 Cent & Roddy Ricch)	https://open.spotify.com/track/1H7KnK26kc1YyellpbINEn	2020	7	3	0.49	0.618	0.104	0.259	99.7	201600	0.286
363	187	Electric Love	https://open.spotify.com/track/2GiJYvgVaD2HtM8GqD9EgQ	2015	10	16	0.611	0.797	0.0533	0.26	120.041	218107	0.518
364	188	Be Like That - feat. Swae Lee & Khalid	https://open.spotify.com/track/5f1joOtoMeyppIcJGZQvqJ	2020	7	10	0.727	0.626	0.0726	0.126	86.97	191406	0.322
365	189	Papi Chulo	https://open.spotify.com/track/6Juv5N0dNU1imms9c9u1dA	2020	3	13	0.866	0.563	0.108	0.0889	127.954	161668	0.307
366	190	Djadja (feat. Maluma) - Remix	https://open.spotify.com/track/13vDU8nPsvTGEVTMB8Vw7g	2020	6	12	0.791	0.682	0.158	0.0926	98.031	166851	0.672
367	191	Whoopty	https://open.spotify.com/track/1RSzyxqtIO4yX3EyiV4zT5	2020	8	20	0.719	0.648	0.125	0.127	140.201	123263	0.66
368	192	Jerusalema (feat. Nomcebo Zikode)	https://open.spotify.com/track/2MlOUXmcofMackX3bxfSwi	2020	1	24	0.88	0.483	0.0505	0.0607	124.009	342613	0.827
369	193	Someone To You	https://open.spotify.com/track/2f0pn9DkEJwAzXApnFh5cr	2019	10	4	0.52	0.903	0.042	0.254	74.988	219801	0.652
370	48	Smile (with The Weeknd)	https://open.spotify.com/track/6wQlQrTY5mVS8EGaFZVwVF	2020	7	10	0.694	0.685	0.133	0.124	158.831	196180	0.306
371	32	Enchule	https://open.spotify.com/track/3ThrfRAmijYU098H9q9tAs	2020	9	18	0.763	0.666	0.194	0.301	90.086	185719	0.587
372	85	Martin & Gina	https://open.spotify.com/track/1VLtjHwRWOVJiE5Py7JxoQ	2020	5	15	0.832	0.534	0.253	0.165	93.924	132833	0.116
373	194	Mr. Right Now (feat. Drake)	https://open.spotify.com/track/4Q34FP1AT7GEl9oLgNtiWj	2020	10	2	0.647	0.667	0.304	0.133	172.08	193839	0.704
374	195	You Got It	https://open.spotify.com/track/4lsHZ92XCFOQfzJFBTluk8	2020	3	27	0.762	0.433	0.187	0.118	122.074	203145	0.394
375	196	Don Don	https://open.spotify.com/track/3kml9ZdpT7UYk1ugkjqOzt	2020	9	11	0.838	0.819	0.211	0.224	105.027	275893	0.656
376	197	Recairei - Ao Vivo	https://open.spotify.com/track/2JTir3y1VuJQmexiTCMcTP	2020	4	17	0.582	0.937	0.0858	0.684	168.096	166838	0.939
377	198	Thriller	https://open.spotify.com/track/3S2R0EVwBSAVMd5UMgKTL0	2017	9	27	0.764	0.887	0.0744	0.847	118.427	358053	0.72
378	199	Blueberry Eyes (feat. SUGA of BTS)	https://open.spotify.com/track/6sI8Q7TTJeA9exw6hxEqq3	2020	9	15	0.746	0.611	0.101	0.133	149.967	172245	0.411
379	172	GREECE (feat. Drake)	https://open.spotify.com/track/35RJhm1pEovTBwnNR0zWad	2020	7	16	0.695	0.343	0.0432	0.107	85.84	218902	0.229
380	200	Lean (feat. Towy, Osquel, Beltito & Sammy & Falsetto)	https://open.spotify.com/track/5DoLhdU27owX1NMrKLUbUl	2017	3	31	\N	\N	\N	\N	\N	\N	\N
381	201	Head Shoulders Knees & Toes (feat. Norma Jean Martine)	https://open.spotify.com/track/6i7zAdNhzUN2k1HcrBxPHG	2020	5	8	0.798	0.828	0.193	0.121	124.962	156960	0.6
382	166	Quiéreme Mientras Se Pueda	https://open.spotify.com/track/34LI7rwi9H8w2S5KTHnv1M	2020	5	1	0.793	0.782	0.0582	0.124	143.86	191945	0.81
383	202	Promiscuous	https://open.spotify.com/track/2gam98EZKrF9XuOkU13ApN	2006	1	1	0.808	0.97	0.0506	0.154	114.328	242293	0.868
384	203	E-GIRLS ARE RUINING MY LIFE!	https://open.spotify.com/track/7bCfHiRcfUjG0YVVNUL7Ve	2020	9	25	0.614	0.937	0.115	0.103	84.98	105176	0.386
385	185	Daddy Issues	https://open.spotify.com/track/5E30LdtzQTGqRvNd7l6kG5	2015	10	30	0.588	0.521	0.0329	0.123	85.012	260173	0.337
386	204	Moonwalking in Calabasas (feat. Blueface) - Remix	https://open.spotify.com/track/7o4gBbTM6UBLkOYPw9xMCz	2020	12	2	0.928	0.341	0.103	0.162	129.966	170233	0.745
387	205	Angeklagt	https://open.spotify.com/track/5FLkxbVtsn88ejcLR62L4T	2020	10	29	0.658	0.624	0.0915	0.116	181.942	168991	0.314
388	37	Paradise (feat. Dermot Kennedy)	https://open.spotify.com/track/6ft4hAq6yde8jPZY2i5zLr	2020	10	30	0.632	0.595	0.0401	0.209	124.114	167903	0.435
389	122	Savage Love (Laxed – Siren Beat) [BTS Remix]	https://open.spotify.com/track/4TgxFMOn5yoESW6zCidCXL	2020	10	2	0.758	0.598	0.0868	0.295	149.836	184905	0.658
390	206	The Business	https://open.spotify.com/track/6f3Slt0GbA2bPZlz0aIFXN	2020	9	16	0.798	0.62	0.232	0.112	120.031	164000	0.235
391	207	Ayer Me Llamó Mi Ex (feat. Lenny Santos)	https://open.spotify.com/track/6C6mUonH6MNdSg5pw7kOc9	2020	8	20	0.752	0.716	0.0325	0.243	117.007	206760	0.553
392	89	Kids Again	https://open.spotify.com/track/1ABS9lKaZ1uXkXCqr9zFO7	2020	10	30	0.666	0.726	0.0262	0.0892	128.044	207528	0.468
393	130	Caramelo - Remix	https://open.spotify.com/track/67jvGGbJmOmVonlyX3mNkV	2020	8	17	0.754	0.796	0.139	0.204	168.045	233160	0.62
394	194	Runnin	https://open.spotify.com/track/5SWnsxjhdcEDc7LJjq9UHk	2020	10	2	0.819	0.626	0.202	0.167	143.01	195906	0.415
395	208	Highway to Hell	https://open.spotify.com/track/2zYzyRzz6pRmhPzyfMEC8s	1979	7	27	0.574	0.913	0.133	0.156	115.728	208400	0.423
396	159	Madrid (feat. Myke Towers)	https://open.spotify.com/track/19OXtYzrJyCrQvTbfukt4H	2020	8	21	0.764	0.741	0.101	0.107	170.081	198570	0.802
397	92	Got It On Me	https://open.spotify.com/track/25zlnOAzbVoOzIeXSvQFf1	2020	7	3	0.688	0.647	0.19	0.095	88.834	164580	0.195
398	209	Still Don't Know My Name	https://open.spotify.com/track/6N22FZs2ZhPBYi3b9XPajV	2019	10	4	0.316	0.63	0.117	0.205	89.643	153294	0.313
399	92	Hello (feat. A Boogie Wit da Hoodie)	https://open.spotify.com/track/2r6OAV3WsYtXuXjvJ1lIDi	2020	7	20	0.905	0.647	0.107	0.282	130.97	190534	0.367
400	210	All I Want for Christmas Is You	https://open.spotify.com/track/0bYg9bo50gSsH3LtXe2SQn	1994	11	1	0.336	0.627	0.0384	0.0708	150.273	241107	0.35
401	211	Investe Em Mim	https://open.spotify.com/track/15k1TDabqSEmyXOwMq9RM7	2019	12	13	0.632	0.953	0.0325	0.125	160.061	186533	0.798
402	212	Me Gusta (with Cardi B & Myke Towers)	https://open.spotify.com/track/7e1VoRlNumuEkXlITMHKLE	2020	9	18	0.91	0.604	0.082	0.0863	110.075	180788	0.807
403	213	24 (feat. Lil Baby)	https://open.spotify.com/track/0xUvi7wldroBzaZCengPa5	2020	8	21	0.868	0.638	0.0736	0.0931	126.03	182857	0.459
404	214	Are You Bored Yet? (feat. Clairo)	https://open.spotify.com/track/57RA3JGafJm5zRtKJiKPIm	2019	3	22	0.682	0.683	0.0287	0.273	120.023	178000	0.64
405	215	Nada	https://open.spotify.com/track/4K8cyoCDovlc4FvtUr2Hfx	2020	8	14	0.684	0.808	0.061	0.0858	173.905	174027	0.712
406	216	At My Worst	https://open.spotify.com/track/0ri0Han4IRJhzvERHOZTMr	2020	7	17	0.813	0.415	0.0349	0.131	91.921	170345	0.667
407	56	FRANCHISE (feat. Young Thug & M.I.A.)	https://open.spotify.com/track/4jVBIpuOiMj1crqd8LoCrJ	2020	9	25	0.835	0.699	0.277	0.195	154.981	202795	0.547
408	217	Star Shopping	https://open.spotify.com/track/30bqVoKjX479ab90a8Pafp	2015	4	19	0.585	0.471	0.0616	0.115	93.099	142000	0.323
409	27	PICK UP (feat. Quavo)	https://open.spotify.com/track/5gNOINI5dXZVom2b36LMOd	2020	4	17	0.915	0.612	0.407	0.115	129.93	118547	0.758
410	33	Freedom	https://open.spotify.com/track/5Gj1wG8b12VQdEd3hUuSwo	2020	4	17	0.715	0.635	0.0791	0.0862	112.887	198635	0.39
411	27	JUMP (feat. YoungBoy Never Broke Again)	https://open.spotify.com/track/0oT9ElXYSxvnOOagP9efDq	2020	4	17	0.896	0.72	0.355	0.252	140.1	212093	0.966
412	27	LIGHTSKIN SH*T (feat. Future & jetsonmade)	https://open.spotify.com/track/16oi4OiKmkO51l60F5R9kR	2020	4	17	0.932	0.578	0.366	0.115	129.991	111173	0.623
413	218	No Me Ame	https://open.spotify.com/track/2AuWgceaQyfMoI3EGavwGb	2020	4	17	0.68	0.766	0.0923	0.116	160.095	180000	0.28
414	27	BLAME IT ON BABY	https://open.spotify.com/track/0jWm0VyD8p3MrSInczpows	2020	4	17	0.875	0.687	0.387	0.141	109.791	125907	0.864
415	219	Last Christmas	https://open.spotify.com/track/2FRnf9qhLbvw8fu4IBXx78	1984	11	29	0.735	0.478	0.0293	0.355	107.682	262960	0.947
416	63	Santa Tell Me	https://open.spotify.com/track/0lizgQ7Qw35od7CYaoMBZb	2014	11	24	0.525	0.621	0.116	0.294	191.9	204093	0.591
417	220	Rockin' Around The Christmas Tree	https://open.spotify.com/track/2EjXfH91m7f8HiJN1yQg97	1964	10	19	0.589	0.472	0.0502	0.505	67.196	126267	0.898
418	221	It's Beginning to Look a Lot like Christmas	https://open.spotify.com/track/0lLdorYw7lVrJydTINhWdI	2012	11	9	0.339	0.214	0.0375	0.341	94.775	206640	0.363
419	222	Jingle Bell Rock	https://open.spotify.com/track/7vQbuQcyTflfCIOu3Uzzya	1957	12	2	0.754	0.424	0.0363	0.0652	119.705	130973	0.806
420	223	It's the Most Wonderful Time of the Year	https://open.spotify.com/track/1IcR6RlgvDczfvoWJSSY2A	1963	11	24	0.24	0.598	0.0369	0.117	201.629	151933	0.776
421	224	Underneath the Tree	https://open.spotify.com/track/3nAp4IvdMPPWEH9uuXFFV5	2013	10	29	0.509	0.812	0.0537	0.214	159.878	229640	0.689
422	225	Let It Snow! Let It Snow! Let It Snow!	https://open.spotify.com/track/2uFaJJtFpPDc5Pa95XzTvg	1959	1	1	0.451	0.24	0.0351	0.175	134.009	117147	0.701
423	226	Feliz Navidad	https://open.spotify.com/track/3qCeq0rWK67SoBDgFd2sId	2002	9	24	0.513	0.831	0.0383	0.336	148.837	182067	0.963
424	10	Mistletoe	https://open.spotify.com/track/7xapw9Oy21WpfEcib2ErSA	2011	1	1	0.657	0.56	0.0467	0.0794	161.993	182947	0.854
425	227	Sleigh Ride	https://open.spotify.com/track/7fUYUcWy853HS8YJn0b3Sr	1963	11	22	0.529	0.772	0.0287	0.316	91.751	181267	0.853
426	228	Do They Know It's Christmas? - 1984 Version	https://open.spotify.com/track/0247StOpd3AkeBQzANX4Zf	2004	1	1	0.599	0.642	0.0363	0.0992	115.412	222533	0.349
427	229	Snowman	https://open.spotify.com/track/7uoFMmxln0GPXQ0AcCBXRq	2018	11	1	0.716	0.512	0.0331	0.0928	104.957	165907	0.326
428	230	Let It Snow! Let It Snow! Let It Snow! (with The B. Swanson Quartet)	https://open.spotify.com/track/4kKdvXD0ez7jp1296JmAts	1994	11	8	0.652	0.259	0.0595	0.362	142.169	155453	0.836
429	221	Holly Jolly Christmas	https://open.spotify.com/track/6tjituizSxwSmBB5vtgHZE	2012	11	9	0.647	0.465	0.0428	0.0882	151.251	119787	0.699
430	231	Driving Home for Christmas - 2019 Remaster	https://open.spotify.com/track/27qAMKrDdKEs8HDXcvR24R	2019	12	24	\N	\N	\N	\N	\N	\N	\N
431	232	Wonderful Christmastime - Edited Version / Remastered 2011	https://open.spotify.com/track/1SV1fxF65n9NhRHp3KlBuu	1980	5	16	0.774	0.511	0.0319	0.0672	94.736	227653	0.771
432	233	Happy Xmas (War Is Over) - Remastered 2010	https://open.spotify.com/track/27RYrbL6S02LNVhDWVl38b	2010	10	5	0.321	0.64	0.0324	0.718	146.172	214333	0.414
433	13	LA NOCHE DE ANOCHE	https://open.spotify.com/track/2XIc1pqjXV3Cr2BQUGNBck	2020	11	27	0.856	0.618	0.286	0.0866	81.993	203201	0.391
434	234	willow	https://open.spotify.com/track/3Uo7WG0vmLQ07WB4BDwy7D	2020	12	11	0.392	0.574	0.17	0.145	81.112	214707	0.529
435	28	Therefore I Am	https://open.spotify.com/track/54bFM56PmE4YLRnqpW6Tha	2020	11	12	0.889	0.34	0.0697	0.055	94.009	174321	0.716
436	126	WITHOUT YOU	https://open.spotify.com/track/27OeeYzk6klgBh83TSvGMA	2020	11	6	0.662	0.413	0.0299	0.134	93.005	161385	0.467
437	235	The Christmas Song (Merry Christmas To You)	https://open.spotify.com/track/4PS1e8f2LvuTFgUs1Cn3ON	1962	10	15	0.319	0.21	0.0341	0.138	78.696	192160	0.209
438	75	HOLIDAY	https://open.spotify.com/track/6zFMeegAMYQo0mt8rXtrli	2020	11	13	0.81	0.511	0.164	0.0832	151.947	154998	0.837
439	29	Monster (Shawn Mendes & Justin Bieber)	https://open.spotify.com/track/1HbA4N1MiOsPthALesGFR1	2020	11	20	0.652	0.383	0.0516	0.0828	145.765	178994	0.549
440	236	Merry Christmas Everyone	https://open.spotify.com/track/2TE4xW3ImvpltVU0cPcKUn	1991	11	25	0.534	0.904	0.0369	0.128	202.899	220160	0.96
441	237	White Christmas	https://open.spotify.com/track/4so0Wek9Ig1p6CRCHuINwW	1942	1	1	0.317	0.158	0.0381	0.338	130.503	177480	0.247
442	238	A Holly Jolly Christmas - Single Version	https://open.spotify.com/track/77khP2fIVhSW23NwxrRluh	1965	1	1	0.683	0.375	0.0303	0.076	140.467	135533	0.888
443	239	Fairytale of New York (feat. Kirsty MacColl)	https://open.spotify.com/track/3VTNVsTTu05dmTsVFrmGpK	1988	9	5	0.271	0.551	0.0457	0.256	78.111	272467	0.428
444	169	Prisoner (feat. Dua Lipa)	https://open.spotify.com/track/2Oycxb8QbPkpHTo8ZrmG0B	2020	11	20	0.781	0.67	0.0452	0.0761	127.99	169333	0.595
445	240	Santa Baby	https://open.spotify.com/track/2SBr3MK1sdMs8IxdRcN6qz	2010	11	30	0.685	0.391	0.0435	0.142	87.101	202547	0.443
446	241	Hecha Pa' Mi	https://open.spotify.com/track/3VvA1wSxukMLsvXoXtlwWx	2020	7	31	0.725	0.756	0.0572	0.103	100.07	186133	0.828
447	242	Santa Claus Is Coming To Town	https://open.spotify.com/track/6a1hzBiTkgqTsDA0Xgfh9z	1970	10	15	0.691	0.776	0.0341	0.33	146.861	144080	0.961
448	243	It's Beginning to Look a Lot Like Christmas (with Mitchell Ayres & His Orchestra)	https://open.spotify.com/track/2pXpURmn6zC5ZYDMms6fwa	1999	8	20	0.724	0.276	0.0599	0.116	112.874	155933	0.718
449	244	Blue Christmas	https://open.spotify.com/track/3QiAAp20rPC3dcAtKtMaqQ	1957	10	15	0.465	0.27	0.0425	0.145	94.518	129173	0.58
450	13	TE MUDASTE	https://open.spotify.com/track/5RubKOuDoPn5Kj5TLVxSxY	2020	11	27	0.811	0.637	0.0591	0.118	92.025	130014	0.471
451	245	Run Rudolph Run - Single Version	https://open.spotify.com/track/2pnPe4pJtq7689i5ydzvJJ	1958	11	19	0.647	0.876	0.185	0.26	151.925	162897	0.949
452	246	Step Into Christmas	https://open.spotify.com/track/6sBWmE23q6xQHlnEZ8jYPT	1973	10	5	0.526	0.925	0.0363	0.305	140.308	272394	0.819
453	247	Christmas (Baby Please Come Home)	https://open.spotify.com/track/47ohYW8e7dxCYn9qbUMBCI	1963	11	22	0.325	0.759	0.053	0.0773	126.627	166453	0.36
454	248	Jingle Bell Rock - Daryl's Version	https://open.spotify.com/track/6pVW5LRWgeLaHudxauOTJU	1983	11	1	0.666	0.841	0.0312	0.113	128.706	126360	0.84
455	74	BEBÉ	https://open.spotify.com/track/7D7EH7MGyNHWSkqrszerI1	2020	11	25	0.862	0.72	0.0379	0.0604	129.972	198707	0.965
456	73	Thank God It's Christmas - Non-Album Single	https://open.spotify.com/track/2xGO2UjzxeVQSIkyg98vck	1984	11	26	\N	\N	\N	\N	\N	\N	\N
457	249	Christmas Lights	https://open.spotify.com/track/4fzyvSu73BhGvi96p2zwjL	2016	12	16	0.295	0.496	0.0327	0.858	132.062	268521	0.224
458	234	champagne problems	https://open.spotify.com/track/0sY6ZUTh4yoctD8VIXz339	2020	12	11	0.462	0.24	0.0377	0.113	171.319	244000	0.32
459	158	Life Goes On	https://open.spotify.com/track/249gnXrbfmV8NG6jTEMSwD	2020	11	20	0.566	0.716	0.0424	0.37	81.068	207481	0.45
460	89	Have Yourself A Merry Little Christmas	https://open.spotify.com/track/1Qi2wh8fFgDV7tl4Sj3f2K	2014	12	5	0.438	0.178	0.0414	0.316	75.248	170964	0.344
461	229	Santa's Coming for Us	https://open.spotify.com/track/1N1ZpYUJc9fwrqk53FGgWv	2018	11	1	0.547	0.814	0.12	0.0475	92.986	205267	0.724
462	250	My Only Wish (This Year)	https://open.spotify.com/track/0YWUHZPJVg4iujddsJDwhM	2000	11	14	0.669	0.843	0.0268	0.195	147.08	255400	0.702
463	251	Baby, It's Cold Outside (feat. Meghan Trainor)	https://open.spotify.com/track/5Q2P43CJra0uRAogjHyJDK	2016	10	28	0.583	0.572	0.0366	0.266	113.998	173560	0.684
464	60	Like It's Christmas	https://open.spotify.com/track/1OjmlSFuzYflWjSMTCyTJv	2019	11	8	0.725	0.571	0.102	0.0519	146.035	200880	0.61
465	234	no body, no crime (feat. HAIM)	https://open.spotify.com/track/6NriykdkRrjQMZo1sfVYUo	2020	12	11	0.546	0.613	0.0264	0.103	79.015	215627	0.535
466	18	Body	https://open.spotify.com/track/0A1hoCfMLkiAgvhWkkucJa	2020	11	20	0.883	0.674	0.357	0.0678	141.02	278085	0.73
467	51	Christmas Without You	https://open.spotify.com/track/1QLZKzC2pjP4ySf4ALrNhm	2020	10	15	0.654	0.596	0.0458	0.11	118.078	169245	0.382
468	252	You Make It Feel Like Christmas (feat. Blake Shelton)	https://open.spotify.com/track/2OQ6a4CfUeYskpTTgyawyJ	2017	10	6	0.635	0.87	0.04	0.118	93.0	156773	0.912
469	26	Gnat	https://open.spotify.com/track/6cS9PmLky2NhLOhpIsUlow	2020	12	18	0.835	0.869	0.27	0.462	140.945	224656	0.82
470	253	Goosebumps	https://open.spotify.com/track/20McUFi8KCIVdNDLrkTDuZ	2020	6	12	0.841	0.593	0.0379	0.124	124.917	162803	0.808
471	235	Joy To The World	https://open.spotify.com/track/1VuAamHM7P3VQQEXYGG3Uu	1960	10	15	0.59	0.305	0.032	0.14	102.103	86760	0.545
472	254	Nathy Peluso: Bzrp Music Sessions, Vol. 36	https://open.spotify.com/track/78SeXVRJ7KCqVmOwTiFjnI	2020	11	27	0.65	0.655	0.405	0.0691	94.059	171215	0.735
473	221	Santa Claus Is Coming to Town	https://open.spotify.com/track/5Ber68jZ7ytegr2UISEdb7	2012	11	9	0.594	0.389	0.0517	0.0313	122.331	171093	0.396
474	48	Reminds Me Of You	https://open.spotify.com/track/5YSHygGN9D0mID1NsVd5my	2020	12	8	0.613	0.631	0.12	0.169	149.992	158033	0.33
475	255	Baby It's Cold Outside (duet with Michael Bublé)	https://open.spotify.com/track/0Ie5uiv54KgCr7P4sYDTHl	2014	10	10	0.553	0.476	0.0649	0.281	113.401	166147	0.558
476	234	‘tis the damn season	https://open.spotify.com/track/4GBkffrtA51p17JH35irGA	2020	12	11	0.575	0.434	0.0312	0.105	145.916	229840	0.348
477	242	I Saw Mommy Kissing Santa Claus	https://open.spotify.com/track/3lkYS3iMpWMVpaJ0yJAFrJ	1970	10	15	0.583	0.712	0.0538	0.817	128.897	181267	0.614
478	256	Santa Baby (with Henri René & His Orchestra)	https://open.spotify.com/track/1foCxQtxBweJtZmdxhEHVO	2002	10	15	0.7	0.139	0.0607	0.185	84.485	206067	0.49
479	257	Carol of the Bells	https://open.spotify.com/track/4tHqQMWSqmL6YjXwsqthDI	1990	11	10	0.418	0.106	0.0448	0.179	46.718	85267	0.8
480	39	GIRL LIKE ME	https://open.spotify.com/track/2vBET2pmrQqafaS6zIaYta	2020	11	2	0.965	0.485	0.191	0.0655	124.025	222523	0.312
481	234	gold rush	https://open.spotify.com/track/5BK0uqwY9DNfZ630STAEaq	2020	12	11	0.512	0.462	0.0408	0.121	112.05	185320	0.353
482	258	What Christmas Means To Me	https://open.spotify.com/track/3h1EREJfCwyv6cG7CGak5d	1967	12	25	0.545	0.7	0.0323	0.1	83.506	148147	0.799
483	45	Afterglow	https://open.spotify.com/track/0E4Y1XIbs8GrAT1YqVy6dq	2020	12	21	0.641	0.324	0.0299	0.328	110.184	185487	0.273
484	159	Hawái - Remix	https://open.spotify.com/track/0GzuHFG4Ql6DoyxFRnIk3F	2020	11	5	0.766	0.788	0.312	0.142	179.984	200482	0.609
485	29	The Christmas Song (Shawn Mendes & Camila Cabello)	https://open.spotify.com/track/66VenHDtrQAw7FCjyF2J56	2020	12	7	0.341	0.181	0.0366	0.137	83.608	196254	0.212
486	44	Bandido	https://open.spotify.com/track/1xK1Gg9SxG8fy2Ya373oqb	2020	12	10	0.713	0.617	0.0887	0.0962	168.021	232853	0.682
487	225	Baby, It's Cold Outside	https://open.spotify.com/track/4MrfQL4TYQXJBlZYpAHTuE	1959	1	1	0.469	0.196	0.0571	0.0513	130.036	143733	0.537
488	259	Santa Claus Is Comin' to Town - Live at C.W. Post College, Greenvale, NY - December 1975	https://open.spotify.com/track/6s2wpWPFPAgKg2LXxi1Oee	1981	12	12	0.357	0.668	0.0479	0.727	139.986	267600	0.407
489	260	One More Sleep	https://open.spotify.com/track/78pn8k7RogKo2oxl0DyX6d	2013	12	2	0.638	0.813	0.0362	0.344	112.986	239587	0.754
490	261	Little Saint Nick - 1991 Remix	https://open.spotify.com/track/5xlS0QkVrSH7ssEbBgBzbM	1999	1	1	0.602	0.553	0.0328	0.0512	130.594	118840	0.971
491	262	Naughty List (with Dixie)	https://open.spotify.com/track/2Y0ktCGrGoGcQFXsGztvhi	2020	10	30	0.619	0.771	0.0601	0.114	81.966	154747	0.704
492	263	I'll Be Home	https://open.spotify.com/track/0lTurWECr2XL607eJAj1A3	2015	1	9	0.542	0.37	0.0257	0.108	84.796	219653	0.289
493	78	Polvo	https://open.spotify.com/track/68mrW6gXHgupgSiDHgaDi5	2020	11	20	0.763	0.621	0.066	0.106	82.042	211130	0.582
494	225	Rudolph The Red-Nosed Reindeer	https://open.spotify.com/track/2L9QLAhrvtP4EYg1lY0Tnw	1959	1	1	0.478	0.201	0.0332	0.0854	136.471	135760	0.857
495	230	Mistletoe And Holly - Remastered 1999	https://open.spotify.com/track/7faDzZnZYqTyYThx2sbHVQ	1957	9	17	0.607	0.103	0.0404	0.076	110.378	136427	0.341
496	230	Jingle Bells - Remastered 1999	https://open.spotify.com/track/4HEOgBHRCExyYVeTyrXsnL	1957	9	17	0.512	0.339	0.0498	0.0977	174.609	120693	0.951
497	210	Oh Santa! (feat. Ariana Grande & Jennifer Hudson)	https://open.spotify.com/track/2VkuxjlbnbaBiWYpdBGVol	2020	12	4	0.648	0.938	0.115	0.0564	78.496	200467	0.849
498	237	Do You Hear What I Hear? - Remastered 2006	https://open.spotify.com/track/35z5xJpu76nakf65i1BCMl	2006	1	1	0.566	0.246	0.0276	0.195	101.529	165667	0.412
499	264	Show Out (with Skepta & Pop Smoke)	https://open.spotify.com/track/5CFJRZRq6sdKKtRwNPWbYv	2020	12	11	0.619	0.589	0.124	0.378	143.896	174960	0.158
500	265	Hallelujah	https://open.spotify.com/track/550rQQCGkrTzvp4SfpOPzx	2017	12	6	0.364	0.378	0.0331	0.339	89.918	268960	0.366
501	264	Tequila Shots	https://open.spotify.com/track/30KctD1WsHKTIYczXjip5a	2020	12	11	0.712	0.556	0.0531	0.527	90.494	193293	0.22
502	266	Tú Me Dejaste De Querer	https://open.spotify.com/track/0XinBYhf1X3kdvKQHOX971	2020	11	5	0.823	0.723	0.229	0.0998	83.97	198493	0.505
503	267	This Christmas	https://open.spotify.com/track/7MSYSOobsombc1mbDWFxtD	1990	4	3	0.634	0.645	0.0376	0.246	93.047	231173	0.677
504	268	Winter Wonderland	https://open.spotify.com/track/4ricyQVd20UQde1jpXCSuJ	2014	12	9	0.604	0.497	0.0319	0.102	126.011	149307	0.72
505	234	Christmas Tree Farm	https://open.spotify.com/track/2mvabkN1i2gLnGAPUVdwek	2019	12	6	0.598	0.68	0.0331	0.324	134.002	228027	0.437
506	138	Cozy Little Christmas	https://open.spotify.com/track/02FaKXXL7KUtRc7K0k54tL	2018	11	15	0.774	0.608	0.128	0.0895	137.494	182521	0.56
507	269	Merry Christmas, Happy Holidays	https://open.spotify.com/track/15coTBAzEN1bOeipoNDZAR	1998	10	30	0.643	0.939	0.0463	0.881	104.999	255307	0.756
508	234	tolerate it	https://open.spotify.com/track/0PurA4JVJ8YQgSVopY8fn6	2020	12	11	0.316	0.361	0.0488	0.0797	74.952	245440	0.221
509	270	Si Me Tomo Una Cerveza	https://open.spotify.com/track/3lCbsHaN1wCxyDzcNN2x4N	2020	11	7	0.72	0.613	0.0572	0.155	84.974	182199	0.857
510	271	Please Come Home for Christmas - 2013 Remaster	https://open.spotify.com/track/3QIoEi8Enr9uHffwInGIsC	2013	10	15	0.612	0.289	0.0421	0.0561	183.18	177440	0.466
511	123	La Luz	https://open.spotify.com/track/5zj8WNkBrEzlI5FKeYV4ol	2020	10	31	0.665	0.697	0.154	0.599	94.053	216747	0.556
512	25	Way Out (feat. Big Sean)	https://open.spotify.com/track/57VeLYXrvNxe8Vs18K2M9W	2020	12	9	0.945	0.582	0.0719	0.103	108.025	168906	0.907
513	263	My Kind Of Present	https://open.spotify.com/track/2rkb8ijsPapKDMEh0cSe8I	2020	10	30	0.485	0.444	0.195	0.0969	179.967	161013	0.777
514	13	HACIENDO QUE ME AMAS	https://open.spotify.com/track/26QApq0cuO9brJigr0C0W4	2020	11	27	0.584	0.411	0.0838	0.0955	169.934	217769	0.412
515	64	Rare	https://open.spotify.com/track/7HMmFQsKsljwTw8bS7lu19	2020	1	10	0.838	0.545	0.0706	0.103	114.998	220590	0.631
516	10	Get Me	https://open.spotify.com/track/6zGPytJiZmFuyVq7RTNO9G	2020	2	14	0.832	0.508	0.149	0.107	109.352	185427	0.75
517	272	Ayy Macarena	https://open.spotify.com/track/6LcauUZjF1eXQrgqMUecHX	2019	11	13	0.816	0.629	0.226	0.0692	96.493	131607	0.714
518	273	Good News	https://open.spotify.com/track/1DWZUa5Mzf2BwzpHtgbHPY	2020	1	17	0.794	0.32	0.173	0.112	174.088	342040	0.241
519	158	Black Swan	https://open.spotify.com/track/24NuEDgyRIljwSyY0lsr7b	2020	2	21	0.719	0.758	0.0851	0.129	147.023	198261	0.49
520	234	Only The Young - Featured in Miss Americana	https://open.spotify.com/track/2slqvGLwzZZYsT4K4Y1GBC	2020	1	31	0.56	0.78	0.0517	0.0714	93.516	157507	0.602
521	78	Whine Up	https://open.spotify.com/track/2pWOMNQJW3g2zmGjP0Vkb0	2019	11	1	0.817	0.665	0.0758	0.103	104.957	215460	0.662
522	274	Baby	https://open.spotify.com/track/1V7JaMp11LKGwKiVmSetf0	2020	1	30	0.771	0.921	0.109	0.119	128.021	148125	0.56
523	27	TOES (feat. Lil Baby & Moneybagg Yo)	https://open.spotify.com/track/2FvD20Z8aoWIePi7PoN8sG	2019	9	27	0.816	0.582	0.341	0.0916	160.004	136366	0.542
524	275	I Do It (ft. Big Sean, Lil Baby)	https://open.spotify.com/track/1bRO28yzxgO3y3UmNR29TZ	2020	1	31	0.804	0.528	0.378	0.41	138.005	184440	0.321
525	53	Eleven	https://open.spotify.com/track/1ToprX3cpBiXoAe5eNSk74	2020	5	1	0.679	0.408	0.0882	0.23	129.079	206080	0.151
526	186	Adicto (with Anuel AA & Ozuna)	https://open.spotify.com/track/3jbT1Y5MoPwEIpZndDDwVq	2019	8	22	0.734	0.836	0.0735	0.179	80.002	270741	0.623
527	50	Futsal Shuffle 2020	https://open.spotify.com/track/2Ec33AVlkTTq8BHFgBTdQs	2019	12	12	0.881	0.457	0.156	0.231	136.97	198913	0.296
528	45	South of the Border (feat. Camila Cabello & Cardi B)	https://open.spotify.com/track/4vUmTMuQqjdnvlZmAH61Qk	2019	7	12	0.857	0.621	0.0825	0.0865	97.989	204467	0.668
529	196	Que Tire Pa Lante	https://open.spotify.com/track/6RyaV7owmVU6fzEPE17sF1	2019	10	18	0.658	0.901	0.0357	0.12	93.979	210520	0.708
530	111	Aventura	https://open.spotify.com/track/37zdqI4r1gswIzczSBkRon	2019	10	25	0.729	0.726	0.0422	0.101	92.025	217130	0.876
531	276	Own It (feat. Ed Sheeran & Burna Boy)	https://open.spotify.com/track/4QPEwDdOMhY7rNS05mTyMR	2019	12	13	0.817	0.781	0.112	0.123	104.0	216707	0.359
532	55	Bellaquita - Remix	https://open.spotify.com/track/1Xnn1TPyr5h0hpRAT4B4EA	2019	11	22	0.795	0.715	0.0838	0.179	165.941	304733	0.758
533	33	Forever Yours - Avicii Tribute	https://open.spotify.com/track/3o1CUVeHIid49sabk6A6Nf	2020	1	24	0.53	0.612	0.0518	0.246	119.255	193847	0.433
534	28	bury a friend	https://open.spotify.com/track/4SSnFejRGlZikf02HLewEF	2019	1	30	0.887	0.388	0.349	0.106	120.035	193143	0.205
535	27	VIBEZ	https://open.spotify.com/track/0fySG6A6qLE8IvDpayb5bM	2019	9	27	0.768	0.652	0.307	0.107	154.187	144935	0.777
536	56	HIGHEST IN THE ROOM (feat. ROSALÍA & Lil Baby) - REMIX	https://open.spotify.com/track/7h0d2h0fUmzbs7zeFigJPn	2019	12	27	0.559	0.491	0.0346	0.0992	153.131	244874	0.114
537	277	Yellow Hearts	https://open.spotify.com/track/2W4yABdLc4Jnds67Poi5Nl	2019	6	18	0.866	0.438	0.0719	0.0743	129.039	223258	0.695
538	79	Anyone	https://open.spotify.com/track/18ssFhD04lWo1RzpcohnrG	2020	1	26	0.686	0.538	0.0345	0.113	115.884	190779	0.584
539	278	Quizas	https://open.spotify.com/track/5Id5B3dxJZhPcV9GzgYZZe	2019	10	11	0.727	0.815	0.153	0.231	176.075	216067	0.677
540	40	me & ur ghost	https://open.spotify.com/track/4yJiXq86uM56uIfIZgE440	2020	8	21	0.742	0.679	0.0259	0.0754	100.041	201398	0.856
541	279	Indeciso	https://open.spotify.com/track/59s0s39NFWScuHDbHytI14	2019	8	23	0.738	0.748	0.0453	0.109	94.949	217253	0.896
542	112	Good as Hell (feat. Ariana Grande) - Remix	https://open.spotify.com/track/07Oz5StQ7GRoygNLaXs2pd	2016	3	8	0.668	0.892	0.0645	0.735	95.927	159011	0.478
543	15	FML	https://open.spotify.com/track/6lruHh1jF7ezgbLv72xYmf	2018	6	3	0.822	0.575	0.0934	0.106	100.087	223000	0.616
544	280	Trampoline (with ZAYN)	https://open.spotify.com/track/2ez6qvOTHKeI3ss80NGqnI	2019	9	26	0.619	0.459	0.0334	0.137	126.803	184280	0.498
545	281	Liberdade Provisória - Ao Vivo	https://open.spotify.com/track/3Ghyp3X5Ua9ypHnBIgOObI	2020	1	31	0.668	0.684	0.0527	0.923	108.138	187986	0.7
546	123	Si Te Vas	https://open.spotify.com/track/6Y4PDQv4XjYjHLeLmvyOt0	2019	9	26	0.73	0.644	0.132	0.143	174.101	204907	0.554
547	282	GOODMORNINGTOKYO!	https://open.spotify.com/track/0Q2n5yzl2XRqYbV77tZNYp	2019	10	18	0.907	0.539	0.36	0.253	124.918	150115	0.664
548	120	Yo x Ti, Tu x Mi	https://open.spotify.com/track/7BlBVFwvbWvcwNcUarQmjk	2019	8	15	0.78	0.759	0.225	0.143	91.952	201040	0.579
549	112	Truth Hurts	https://open.spotify.com/track/3HWzoMvoF3TQfYg4UPszDq	2019	4	19	0.715	0.624	0.114	0.123	158.087	173325	0.412
550	283	King Of My City	https://open.spotify.com/track/4GyMIm2BEMoOXjmIvSpfLi	2020	1	31	0.679	0.679	0.167	0.153	119.921	148676	0.245
551	28	all the good girls go to hell	https://open.spotify.com/track/6IRdLKIyS4p7XNiP8r6rsx	2019	3	29	0.726	0.444	0.372	0.177	185.044	168840	0.569
552	111	Soltera - Remix	https://open.spotify.com/track/4t9a07PAghtQMRAIP9FQ7Z	2019	5	10	0.795	0.783	0.0432	0.437	92.01	266087	0.799
553	26	Those Kinda Nights (feat. Ed Sheeran)	https://open.spotify.com/track/0VSzREd1OjEWJ9tXoFHRQH	2020	1	17	0.794	0.637	0.339	0.0919	103.868	177693	0.393
554	44	Girl	https://open.spotify.com/track/43NqTeL8pgBxKHPMiJKUP5	2020	1	24	0.733	0.708	0.0937	0.324	93.021	186427	0.694
555	284	Mon Ami	https://open.spotify.com/track/1R4xkZXQUQ8QJtAdwHkSgC	2020	1	29	0.801	0.731	0.383	0.111	105.666	138409	0.537
556	234	You Need To Calm Down	https://open.spotify.com/track/6RRNNciQGZEXnqk8SQ9yv5	2019	8	23	0.771	0.671	0.0553	0.0637	85.026	171360	0.714
557	154	Infeliz	https://open.spotify.com/track/4z6wo6PJG4Fve45OXK6D9m	2019	12	20	0.713	0.798	0.219	0.246	176.073	221103	0.721
558	278	Perreo en La Luna	https://open.spotify.com/track/0RDgqtvOHLwcI6yz9bjsZV	2019	10	11	0.711	0.757	0.29	0.367	174.013	218587	0.724
559	134	No Guidance (feat. Drake)	https://open.spotify.com/track/6XHVuErjQ4XNm6nDPVCxVX	2019	6	28	0.696	0.454	0.153	0.155	92.928	260640	0.136
560	28	wish you were gay	https://open.spotify.com/track/3Fj47GNK2kUF0uaEDgXLaD	2019	3	29	0.853	0.351	0.241	0.752	118.028	221543	0.282
561	285	Psycho	https://open.spotify.com/track/3CYH422oy1cZNoo0GTG1TK	2019	12	23	0.664	0.666	0.0446	0.0854	139.987	210560	0.405
562	28	i love you	https://open.spotify.com/track/6CcJMwBtXByIz4zQLzFkKc	2019	3	29	0.42	0.131	0.0382	0.109	137.421	291796	0.12
563	110	Sum 2 Prove	https://open.spotify.com/track/2u3EyuCqqV31woqGvO9LBz	2020	1	10	0.823	0.552	0.324	0.122	124.038	205760	0.418
564	286	Que Calor (with J Balvin & El Alfa)	https://open.spotify.com/track/1G2CAJeP7rCwOZjlSJ0Zw3	2019	12	13	0.873	0.656	0.068	0.0726	125.982	206811	0.546
565	287	Break My Stride	https://open.spotify.com/track/1mCsF9Tw4AkIZOjvZbZZdT	1983	3	19	0.917	0.588	0.0607	0.0914	110.077	184480	0.828
566	120	Con Altura	https://open.spotify.com/track/2qG5sZ7Si6sdK74qLxedYM	2019	3	28	0.882	0.689	0.124	0.0501	97.963	161627	0.746
567	288	EARFQUAKE	https://open.spotify.com/track/5hVghJ4KaYES3BFUATCYn0	2019	5	17	0.554	0.498	0.0685	0.795	79.635	190067	0.413
568	139	DJ No Pare (feat. Zion, Dalex, Lenny Tavárez) - Remix	https://open.spotify.com/track/1ndyl3wJCFs872XZ3ztPk6	2019	9	6	0.743	0.709	0.0879	0.0809	170.001	258600	0.831
569	289	Loco Contigo (feat. J. Balvin & Tyga)	https://open.spotify.com/track/6osaMSJh9NguagEDQcZaKx	2019	7	25	0.694	0.758	0.218	0.102	192.091	185195	0.371
570	20	QUE PRETENDES	https://open.spotify.com/track/25ZAibhr3bdlMCLmubZDVt	2019	6	28	0.639	0.791	0.253	0.362	92.603	222347	0.939
571	290	Pa' Olvidarme De Ella	https://open.spotify.com/track/1cVlW9WQiGlFdWUXFdFZGh	2019	9	6	0.728	0.542	0.0514	0.136	90.016	227234	0.637
572	291	Kein Wort	https://open.spotify.com/track/1hoLUVBx0ixX3kn0EX0P5n	2020	1	16	0.746	0.592	0.0914	0.187	160.065	162094	0.629
573	292	All I Want - From "High School Musical: The Musical: The Series"	https://open.spotify.com/track/4Yxc55NX3tAXC2mHRAhtcW	2019	11	27	0.376	0.43	0.0328	0.0912	77.599	177323	0.129
574	27	Suge	https://open.spotify.com/track/2gwkD6igEhQbDQegRCcdoB	2019	3	1	0.876	0.662	0.426	0.127	75.445	163320	0.844
575	56	Hot (Remix) [feat. Gunna and Travis Scott]	https://open.spotify.com/track/4ea9w8c4ROqiZpJVhfBA3m	2019	11	1	0.845	0.631	0.216	0.0806	111.983	279907	0.545
576	196	Con Calma	https://open.spotify.com/track/5w9c2J52mkdntKOmRLeM2m	2019	1	24	0.737	0.86	0.0594	0.0574	93.989	193227	0.656
577	28	you should see me in a crown	https://open.spotify.com/track/3XF5xLJHOQQRbWya6hBp7d	2018	7	18	0.683	0.534	0.189	0.148	150.469	180567	0.284
578	38	Graveyard	https://open.spotify.com/track/2ufmtcIFdFpuUYBPXK5f67	2020	1	17	0.667	0.583	0.0747	0.181	92.043	181806	0.187
579	155	Wake Up Call (feat. Trippie Redd)	https://open.spotify.com/track/5MYzajZVxBaPT2JUSRa99L	2020	1	27	0.642	0.669	0.0486	0.119	156.084	175067	0.227
580	60	Only Human	https://open.spotify.com/track/0DiDStADDVh3SvAsoJAFMk	2019	6	7	0.795	0.496	0.0722	0.0645	94.01	183000	0.874
581	123	Otro Trago - Remix	https://open.spotify.com/track/4bTZeO72FwMa6wKOiqoynL	2019	7	26	0.725	0.79	0.197	0.0602	175.988	287773	0.763
582	53	Talk (feat. Disclosure)	https://open.spotify.com/track/6TqXcAFInzjp0bODyvrWEq	2019	4	5	0.9	0.4	0.127	0.0599	135.984	197573	0.346
583	293	MIDDLE CHILD	https://open.spotify.com/track/2JvzF1RMd7lE3KmFlsyZD8	2019	1	23	0.837	0.364	0.276	0.271	123.984	213594	0.463
584	294	Turn Me On (feat. Vula)	https://open.spotify.com/track/0qaWEvPkts34WF68r8Dzx9	2019	9	13	0.737	0.828	0.0396	0.0862	124.051	208474	0.517
585	76	Hips Don't Lie (feat. Wyclef Jean)	https://open.spotify.com/track/3ZFTkvIE7kyPt6Nu3PEa7V	2005	11	28	0.778	0.824	0.0707	0.405	100.024	218093	0.758
586	41	Liar	https://open.spotify.com/track/073ILU1C3APNRGF66VhtyA	2019	9	4	0.74	0.498	0.0456	0.319	98.016	207039	0.652
587	295	Going Bad (feat. Drake)	https://open.spotify.com/track/2IRZnDFmlqMuOrYOLnZZyc	2018	11	30	0.889	0.496	0.0905	0.252	86.003	180522	0.544
588	234	ME! (feat. Brendon Urie of Panic! At The Disco)	https://open.spotify.com/track/2Rk4JlNc2TPmZe2af99d45	2019	8	23	0.61	0.83	0.0571	0.118	182.162	193000	0.728
589	75	Panini	https://open.spotify.com/track/1000nHvUdawXuUHgBod4Wv	2019	9	13	0.703	0.594	0.0752	0.123	153.848	114893	0.475
590	106	Mean It	https://open.spotify.com/track/2uiOyiRxtNix52dpeaDQPM	2020	3	6	0.746	0.45	0.0872	0.172	95.998	232853	0.336
591	28	idontwannabeyouanymore	https://open.spotify.com/track/40T5GIqQ1CegGm2PTEl8Bu	2017	12	22	0.483	0.412	0.0402	0.116	170.163	203569	0.247
592	293	The London (feat. J. Cole & Travis Scott)	https://open.spotify.com/track/3s4mrPrEFFPF0LmAfutW0n	2019	5	23	0.796	0.586	0.147	0.132	97.981	200107	0.179
593	296	Tudo Ok	https://open.spotify.com/track/4HUZBG98TYbxSR9V1V2DWS	2019	11	15	0.814	0.755	0.0942	0.306	79.976	178500	0.963
594	54	223's (feat. 9lokknine)	https://open.spotify.com/track/29ZXwWOOLz9t5fa3eT3i7T	2019	8	9	0.932	0.547	0.333	0.0924	94.998	176640	0.695
595	71	GANG GANG	https://open.spotify.com/track/6uJONCdr2rC65BNmCnTBWK	2019	12	27	0.859	0.6	0.301	0.353	123.017	244761	0.568
596	71	WHAT TO DO? (feat. Don Toliver)	https://open.spotify.com/track/4AO1XhrgJczQ9bNVxdfKQe	2019	12	27	0.643	0.594	0.0312	0.115	118.037	250142	0.195
597	86	Had Enough (feat. Quavo & Offset)	https://open.spotify.com/track/2jrAaawDRCn1JjeouxAyDN	2019	12	27	0.75	0.789	0.108	0.129	147.957	157133	0.673
598	280	Trampoline	https://open.spotify.com/track/4HBvwhhYo7YiYXkUDrOHzS	2019	9	26	0.619	0.459	0.0334	0.137	126.803	184280	0.498
599	71	GATTI	https://open.spotify.com/track/40mjsnRjCpycdUw3xhS20g	2019	12	27	0.594	0.676	0.344	0.163	143.477	181145	0.472
600	255	Into the Unknown	https://open.spotify.com/track/3Z0oQ8r78OUaHvGPiDBR3W	2019	11	15	0.323	0.405	0.0413	0.138	145.104	194848	0.274
601	64	Look At Her Now	https://open.spotify.com/track/4yI3HpbSFSgFZtJP2kDe5m	2019	10	24	0.753	0.564	0.251	0.359	77.341	162596	0.55
602	53	Up All Night	https://open.spotify.com/track/1mpD5Q8IM32I4bF6eCpU74	2019	11	14	0.665	0.712	0.0527	0.102	93.992	157220	0.669
603	104	Family	https://open.spotify.com/track/3TKpJrY9q49Mj1JOsM9zGL	2019	12	6	0.584	0.607	0.0356	0.101	117.817	194827	0.374
604	297	Writing on the Wall (feat. Post Malone, Cardi B & Rvssian)	https://open.spotify.com/track/7ntUbTIwmwOD6ygCMRZT6e	2019	9	27	0.773	0.836	0.153	0.0828	112.01	201271	0.497
605	48	Legends	https://open.spotify.com/track/1Knctxx9vGZxpZfF66BIEa	2018	6	22	0.594	0.798	0.0844	0.143	142.049	191840	0.381
606	9	Candy	https://open.spotify.com/track/1VJwtWR6z7SpZRwipI12be	2018	3	30	0.689	0.516	0.0444	0.163	124.876	190920	0.209
607	298	Calma - Remix	https://open.spotify.com/track/5iwz1NiezX7WWjnCgY5TH4	2018	10	5	0.826	0.773	0.0524	0.143	126.899	238200	0.761
608	8	Stuck In A Dream (feat. Gunna)	https://open.spotify.com/track/7iHHxY2NLlJRAmlAmC4ahQ	2019	11	8	0.748	0.648	0.0816	0.126	139.952	123560	0.726
609	299	Nice To Meet Ya	https://open.spotify.com/track/3cphb8kdsjElYR7r5icK3H	2019	10	4	0.591	0.841	0.0304	0.395	109.034	158805	0.392
610	300	Don't Call Me Up	https://open.spotify.com/track/5WHTFyqSii0lmT9R21abT8	2019	1	18	0.674	0.881	0.147	0.0793	98.994	178480	0.234
611	71	JACKBOYS	https://open.spotify.com/track/62zKJrpbLxz6InR3tGyr7o	2019	12	27	0.413	0.13	0.0336	0.111	123.342	46837	0.0676
612	301	One Kiss (with Dua Lipa)	https://open.spotify.com/track/7ef4DlsgrMEH11cDZd32M6	2018	4	6	0.791	0.862	0.11	0.0814	123.994	214847	0.592
613	19	Take What You Want (feat. Ozzy Osbourne & Travis Scott)	https://open.spotify.com/track/7CZyCXKG6d5ALeq41sLzbw	2019	9	6	0.499	0.8	0.0502	0.147	139.919	229573	0.272
614	302	Roller	https://open.spotify.com/track/6hw1Sy9wZ8UCxYGdpKrU6M	2019	10	25	0.941	0.758	0.17	0.193	128.017	157093	0.683
615	289	Taki Taki (feat. Selena Gomez, Ozuna & Cardi B)	https://open.spotify.com/track/0KoiMHhqKLoL4xM54rcWYY	2019	7	25	0.842	0.801	0.228	0.0642	95.881	212500	0.617
616	303	SENTADÃO	https://open.spotify.com/track/4lKuzrdZrJuCAedbIslF3A	2019	11	22	0.68	0.869	0.0589	0.223	173.997	143448	0.924
617	212	Combatchy (feat. MC Rebecca)	https://open.spotify.com/track/2bPtwnrpFNEe8N7Q85kLHw	2019	11	20	0.826	0.73	0.0809	0.0197	150.134	157600	0.605
618	159	11 PM	https://open.spotify.com/track/7KbF6AdprOXEEHlsq11Z6d	2019	5	17	0.777	0.712	0.277	0.091	95.692	175733	0.68
619	304	Wake Me Up	https://open.spotify.com/track/4h8VwCb1MTGoLKueQ1WgbD	2013	1	1	0.532	0.783	0.0523	0.161	124.08	247427	0.643
620	75	Old Town Road	https://open.spotify.com/track/0F7FA14euOIX8KcbEturGH	2019	6	21	0.878	0.619	0.102	0.113	136.041	157067	0.639
621	42	VALENTINO	https://open.spotify.com/track/6piAUJJQFD8oHDUr0b7l7q	2019	11	22	0.746	0.717	0.179	0.132	150.964	179133	0.523
622	62	Thunder	https://open.spotify.com/track/1zB4vmk8tFRmM9UULNzbLB	2017	6	23	0.605	0.822	0.0438	0.147	167.997	187147	0.288
623	305	Can't Hold Us - feat. Ray Dalton	https://open.spotify.com/track/3bidbhpOYeV4knp8AIu8Xn	2012	10	9	0.641	0.922	0.0786	0.0862	146.078	258343	0.847
624	306	2002	https://open.spotify.com/track/2BgEsaKNfHUdlh97KmvFyo	2018	4	27	0.697	0.683	0.117	0.137	96.133	186987	0.603
625	307	Death	https://open.spotify.com/track/3Kd6Wp3lG5HXMB2dlvuy7y	2019	11	22	0.802	0.82	0.146	0.149	164.005	172196	0.613
626	308	Post Malone (feat. RANI)	https://open.spotify.com/track/36orMWv2PgvnzXsd5CJ0yL	2019	5	24	0.59	0.642	0.122	0.105	107.356	174444	0.651
627	48	Let Me Know (I Wonder Why Freestyle)	https://open.spotify.com/track/3wwo0bJvDSorOpNfzEkfXx	2019	12	7	0.635	0.537	0.0832	0.418	125.028	215381	0.383
628	309	Ne reviens pas	https://open.spotify.com/track/4TnFANpjVwVKWzkxNzIyFH	2019	11	29	0.932	0.778	0.0638	0.168	124.996	188613	0.933
629	130	Fantasía	https://open.spotify.com/track/40rXWke6SnXiGkSmaT8ZUr	2019	11	29	0.695	0.719	0.0903	0.0884	180.074	175187	0.781
630	73	Another One Bites The Dust - Remastered 2011	https://open.spotify.com/track/5vdp5UmvTsnMEMESIF2Ym7	1980	6	27	0.933	0.528	0.162	0.163	109.975	214653	0.756
631	4	New Rules	https://open.spotify.com/track/2xJCMIJfcNYDc5iR0sAm2O	2017	6	2	0.762	0.7	0.0694	0.153	116.073	209320	0.608
632	310	Cheirosa - Ao Vivo	https://open.spotify.com/track/2PWjKmjyTZeDpmOUa3a5da	2019	10	11	0.528	0.87	0.0851	0.333	152.37	181930	0.714
633	41	Havana (feat. Young Thug)	https://open.spotify.com/track/1rfofaqEpACxVEHIZBJe6W	2018	1	12	0.765	0.523	0.03	0.132	104.988	217307	0.394
634	311	Surtada - Remix Brega Funk	https://open.spotify.com/track/5F8ffc8KWKNawllr5WsW0r	2019	9	25	0.832	0.55	0.0587	0.182	154.064	152784	0.881
635	234	Lover (Remix) [feat. Shawn Mendes]	https://open.spotify.com/track/3i9UVldZOE0aD0JnyfAZZ0	2019	11	13	0.448	0.603	0.064	0.0862	205.272	221307	0.422
636	48	Real Shit (with benny blanco)	https://open.spotify.com/track/3uVPLtkmDu8pDkYEAVqbgS	2020	12	2	0.703	0.703	0.133	0.12	76.017	183783	0.697
637	13	YO VISTO ASÍ	https://open.spotify.com/track/5fROvzNghPid8mbKNDYvpJ	2020	11	27	0.688	0.881	0.0474	0.0804	123.013	191526	0.677
638	29	Teach Me How To Love	https://open.spotify.com/track/5LZtB6nxvjIhUoElp3Zqk0	2020	12	4	0.592	0.885	0.0807	0.0843	98.991	202357	0.731
639	13	BOOKER T	https://open.spotify.com/track/26w9NTiE9NGjW1ZvIOd1So	2020	11	27	0.883	0.6	0.37	0.0931	113.903	156430	0.691
640	1	Blinding Lights (with ROSALÍA) - Remix	https://open.spotify.com/track/7MXgrcOQAJ5VwSNUL0lDd3	2020	12	4	0.49	0.694	0.0618	0.0946	170.903	216123	0.249
641	13	TE DESEO LO MEJOR	https://open.spotify.com/track/23XjN1s3DZC8Q9ZwuorYY4	2020	11	27	0.763	0.597	0.0416	0.111	126.054	139576	0.194
642	110	Errbody	https://open.spotify.com/track/6eVxH9Kyanzrw636zJRPcw	2020	12	3	0.887	0.606	0.324	0.151	139.995	210699	0.272
643	169	Angels Like You	https://open.spotify.com/track/1daDRI9ahBonbWD8YcxOIB	2020	11	27	0.672	0.642	0.0313	0.1	121.981	196453	0.494
644	158	Blue & Grey	https://open.spotify.com/track/0n2moJpAEWHwaPYYjkzMDl	2020	11	20	0.547	0.605	0.0415	0.125	121.953	254950	0.364
645	13	LA DROGA	https://open.spotify.com/track/67ACYA3UI6QMNtHX6b34wX	2020	11	27	0.643	0.727	0.0389	0.123	90.019	162299	0.295
646	312	Jenny (I Wanna Ruin Our Friendship)	https://open.spotify.com/track/7lgA34nFXxjqQgyLkPUcLv	2020	12	4	0.668	0.798	0.0334	0.277	133.928	215280	0.575
647	42	Mood (Remix) feat. Justin Bieber, J Balvin & iann dior	https://open.spotify.com/track/6FuGJB290AQMAHTfjOYVaK	2020	11	6	0.721	0.745	0.0366	0.372	90.988	192745	0.699
648	13	HOY COBRÉ	https://open.spotify.com/track/0tjZv2hChdHZCW1zFXpy1J	2020	11	27	0.86	0.725	0.249	0.0994	145.001	162151	0.375
649	13	MALDITA POBREZA	https://open.spotify.com/track/0Lsis3LB0XAK6XlTHXaJk2	2020	11	27	0.762	0.861	0.0652	0.0956	133.037	213609	0.588
650	13	EL MUNDO ES MÍO	https://open.spotify.com/track/36DHxTW2xdr9GG15T9oK9L	2020	11	27	0.716	0.522	0.0582	0.113	76.993	165199	0.224
651	13	ANTES QUE SE ACABE	https://open.spotify.com/track/7kjEqI6eZ7YlFrGhxixnlN	2020	11	27	0.693	0.549	0.0577	0.324	139.988	221187	0.473
652	13	SORRY PAPI	https://open.spotify.com/track/5jZ32WOU7sqzDYbzINwMUk	2020	11	27	0.612	0.561	0.0851	0.145	191.911	163053	0.393
653	13	120	https://open.spotify.com/track/3KJ3opyV29269SXkPrc19l	2020	11	27	\N	\N	\N	\N	\N	\N	\N
654	13	TRELLAS	https://open.spotify.com/track/09WAnxdBuebQopKhJT3oZS	2020	11	27	0.43	0.412	0.0281	0.324	90.872	157673	0.0508
655	232	Wonderful Christmastime [Edited Version] - Remastered 2011 / Edited Version	https://open.spotify.com/track/7Lbxvt42JsNSKVCaN63qhD	1980	5	16	0.774	0.511	0.0319	0.0672	94.736	227653	0.771
656	158	Fly To My Room	https://open.spotify.com/track/3QH8rQGNFX8VLbCgZ7uPTS	2020	11	20	0.764	0.526	0.212	0.0718	114.91	222243	0.588
657	158	Telepathy	https://open.spotify.com/track/2FVpOsjT1iquZ3SpCjZ9Ne	2020	11	20	0.787	0.669	0.0428	0.123	104.994	202313	0.57
658	158	Dis-ease	https://open.spotify.com/track/54DmTIv86D3sYdiawjULQ0	2020	11	20	0.731	0.845	0.132	0.0782	101.085	239722	0.484
659	158	Stay	https://open.spotify.com/track/3ndCsZfq8OVwwkz9mmZvUz	2020	11	20	0.582	0.693	0.0465	0.13	125.904	204800	0.341
660	169	Heart Of Glass (Live from the iHeart Festival)	https://open.spotify.com/track/5GK1GYXH16RdfmltogHhAk	2020	9	29	0.58	0.908	0.0341	0.087	115.016	213672	0.427
661	313	CANTARES DE NAVIDAD	https://open.spotify.com/track/2Iv6YBslkxslMJQsxshZh5	2020	11	27	0.764	0.523	0.0406	0.352	118.671	199720	0.962
662	169	Plastic Hearts	https://open.spotify.com/track/6qCsKKS7Ol63SJW3LOIX5R	2020	11	27	0.551	0.756	0.0652	0.0765	175.984	205733	0.618
663	32	De Cora <3	https://open.spotify.com/track/22Sh5dlwbERqJAq1fZk5b2	2020	11	13	0.811	0.683	0.241	0.128	176.037	190101	0.571
664	28	my future	https://open.spotify.com/track/2ygvZOXrIeVL4xZmAWJT2C	2020	7	30	0.456	0.285	0.0979	0.307	104.89	210005	0.0809
665	234	cardigan	https://open.spotify.com/track/4R2kfaDFhslZEMJqAFNpdd	2020	7	24	0.613	0.581	0.0424	0.25	130.033	239560	0.551
666	234	exile (feat. Bon Iver)	https://open.spotify.com/track/4pvb0WLRcMtbPGmtejJJ6y	2020	7	24	0.298	0.38	0.0287	0.11	75.602	285634	0.152
667	234	the 1	https://open.spotify.com/track/0Jlcvv8IykzHaSmj49uNW8	2020	7	24	0.777	0.357	0.0522	0.108	139.883	210252	0.172
668	314	Mamichula - con Nicki Nicole	https://open.spotify.com/track/4pXW6ZAHBz7ODXTRKklWrM	2020	7	23	0.696	0.678	0.0735	0.134	91.985	219202	0.346
669	234	the last great american dynasty	https://open.spotify.com/track/2Eeur20xVqfUoM3Q7EFPFt	2020	7	24	0.686	0.662	0.0413	0.109	147.922	230999	0.706
670	234	my tears ricochet	https://open.spotify.com/track/1MgV7FIyNxIG7WzMRJV5HC	2020	7	24	0.456	0.263	0.0332	0.0749	129.86	255894	0.111
671	234	august	https://open.spotify.com/track/3hUxzQpSfdDqwM3ZTFQY0K	2020	7	24	0.532	0.623	0.0331	0.0925	89.937	261923	0.403
672	22	Nobody's Love	https://open.spotify.com/track/3kwgqoBqTwoAH4nT29TYrq	2020	7	24	0.485	0.567	0.0388	0.0949	93.676	211254	0.157
673	234	mirrorball	https://open.spotify.com/track/0ZNU020wNYvgW84iljPkPP	2020	7	24	0.553	0.413	0.0334	0.0594	110.107	208978	0.379
674	234	seven	https://open.spotify.com/track/6KJqZcs9XDgVck7Lg9QOTC	2020	7	24	0.596	0.488	0.0274	0.091	94.926	208907	0.415
675	234	invisible string	https://open.spotify.com/track/6VsvKPJ4xjVNKpI8VVZ3SV	2020	7	24	0.653	0.452	0.055	0.108	83.433	252881	0.45
676	48	Conversations	https://open.spotify.com/track/2fZTS0VboxRpF0FdfY7E5P	2020	7	10	0.747	0.622	0.0838	0.151	159.93	181661	0.57
677	234	this is me trying	https://open.spotify.com/track/7kt9e9LFSpN1zQtYEl19o1	2020	7	24	0.515	0.476	0.0328	0.171	135.886	195097	0.412
678	315	Stunnin' (feat. Harm Franklin)	https://open.spotify.com/track/2D0dj3hVkRQJCp63cxCPEx	2020	10	9	0.885	0.685	0.0627	0.148	99.954	144000	0.937
679	234	illicit affairs	https://open.spotify.com/track/2NmsngXHeC1GQ9wWrzhOMf	2020	7	24	0.559	0.31	0.0338	0.106	119.845	190898	0.46
680	48	Hate The Other Side (with Marshmello & The Kid Laroi)	https://open.spotify.com/track/66FgjA5ZQJJuypFG1bc8se	2020	7	10	0.701	0.65	0.104	0.112	90.003	160212	0.647
681	108	Rags2Riches (feat. ATR Son Son)	https://open.spotify.com/track/1ENdcyhqdylaLsPVgB83qq	2020	4	3	0.904	0.26	0.101	0.121	117.967	167147	0.231
682	90	PORFA Remix ( Feat. Maluma, Nicky Jam, Sech) - Remix	https://open.spotify.com/track/7lUdbnz7wsv3C9zzf4WHl9	2020	6	26	0.793	0.737	0.0785	0.0747	167.969	333800	0.697
683	234	betty	https://open.spotify.com/track/5kI4eCXXzyuIUXjQra0Cxi	2020	7	24	0.593	0.377	0.0253	0.0976	95.939	294521	0.502
684	48	Life's A Mess (feat. Halsey)	https://open.spotify.com/track/4h5N4KyWZMtpeH9vhXSXjd	2020	7	10	0.63	0.446	0.0351	0.166	143.078	202193	0.177
685	89	My Oasis (feat. Burna Boy)	https://open.spotify.com/track/2KoHxhRyWxJzA0VafWd5Nk	2020	7	30	0.691	0.474	0.0583	0.099	143.783	179917	0.381
686	234	mad woman	https://open.spotify.com/track/2QDyYdZyhlP2fp79KZX8Bi	2020	7	24	0.592	0.699	0.0471	0.114	141.916	237258	0.506
687	316	Only You Freestyle	https://open.spotify.com/track/4OENnoidV0h8gJV6bhrw7r	2020	7	20	0.68	0.826	0.27	0.254	146.95	248937	0.804
688	110	We Paid (feat. 42 Dugg)	https://open.spotify.com/track/6gxKUmycQX7uyMwJcweFjp	2020	5	1	0.926	0.542	0.293	0.0877	135.14	181929	0.564
689	234	epiphany	https://open.spotify.com/track/08fa9LFcFBTcilB3iq2e2A	2020	7	24	0.354	0.267	0.0281	0.0858	94.219	289749	0.113
690	317	Mariposa	https://open.spotify.com/track/4ja2gzrNh9VNigzoXfmbwD	2019	8	28	0.676	0.525	0.028	0.356	112.011	210000	0.421
691	145	Oh Juliana	https://open.spotify.com/track/4xWzZmX4K1yyrdtRfbUvjt	2020	6	30	0.799	0.568	0.25	0.0892	129.63	153078	0.963
692	234	peace	https://open.spotify.com/track/7MbT4I8qGntX4fMdqMQgke	2020	7	24	0.647	0.272	0.0916	0.0918	150.044	234000	0.339
693	58	Alane	https://open.spotify.com/track/2u6Jm2klS4yvAlbSHlxUwI	2020	6	19	0.581	0.799	0.164	0.11	124.002	175016	0.662
694	302	Bläulich	https://open.spotify.com/track/2WRTnY0slmFgWcrmEr8dPj	2020	7	31	0.79	0.704	0.417	0.113	154.007	196213	0.212
695	318	Move Ya Hips (feat. Nicki Minaj & MadeinTYO)	https://open.spotify.com/track/5esKpsrB3TbGHwFaAjIGMx	2020	9	25	0.808	0.676	0.223	0.11	144.018	144973	0.0763
696	302	Sie ruft	https://open.spotify.com/track/4CyCHkhRsDXUeP5K4Y3xjU	2020	7	31	0.819	0.507	0.0881	0.105	130.009	152013	0.634
697	205	Tilidin Weg	https://open.spotify.com/track/1g3J9W88hTG173ySZR6E9S	2020	9	10	0.882	0.526	0.237	0.0835	109.075	180950	0.182
698	24	Over Your Head	https://open.spotify.com/track/0Tcw8w9pvPrZoORgxsNASW	2020	7	31	0.773	0.742	0.162	0.558	148.949	186843	0.35
699	33	What's Love Got to Do with It	https://open.spotify.com/track/3Be7CLdHZpyzsVijme39cW	2020	7	17	0.75	0.664	0.154	0.0632	105.023	208156	0.617
700	74	El Mismo Aire - con Pablo Alborán	https://open.spotify.com/track/5EbtodsuLbxrFDH6j5avVS	2020	6	10	0.483	0.492	0.295	0.323	144.511	188213	0.66
701	234	hoax	https://open.spotify.com/track/6MWoRt97mnSTXZhu3ggi9C	2020	7	24	0.662	0.181	0.0415	0.133	118.819	220043	0.429
702	319	Desce Pro Play (PA PA PA)	https://open.spotify.com/track/4zGtfOglDBfVUypabBwIjQ	2020	6	26	0.935	0.71	0.158	0.173	100.009	168507	0.635
703	190	Jolie nana	https://open.spotify.com/track/34FbkFgAbv4ffvhL2XQMVm	2020	11	13	0.813	0.64	0.272	0.131	92.989	147076	0.488
704	48	Blood On My Jeans	https://open.spotify.com/track/3MmCFghNjzZMn3HKqbVizn	2020	7	10	0.868	0.55	0.226	0.109	117.943	154767	0.464
705	302	Unterwegs	https://open.spotify.com/track/7oJW8vNkosiWuKJtsq3mZs	2020	8	7	0.88	0.607	0.0777	0.15	126.039	233905	0.823
706	66	Reggaetonera	https://open.spotify.com/track/6yVkakCN460KOVol9ZazjH	2020	5	29	0.694	0.796	0.0565	0.108	93.064	212312	0.515
707	131	Narrow Road (feat. Lil Baby)	https://open.spotify.com/track/3GZd1aDsgKL71Kt3VIp0hc	2020	7	30	0.614	0.553	0.169	0.203	159.999	240297	0.161
708	85	21	https://open.spotify.com/track/3JKgcAa7r07ocVWcV8bS0H	2020	5	15	0.783	0.479	0.541	0.101	176.027	163798	0.533
709	320	Singapur	https://open.spotify.com/track/4QfZYDhGZc0T2RDvGiI69E	2020	5	15	0.853	0.909	0.229	0.129	112.987	178407	0.803
710	184	Ego Death (feat. Kanye West, FKA twigs & Skrillex)	https://open.spotify.com/track/4JB0EAT4BkLShTyTt50FmO	2020	10	22	0.818	0.598	0.113	0.634	111.052	231618	0.331
711	321	Como Llora	https://open.spotify.com/track/52zq2a71SGs3f1vJuv59ui	2020	2	7	0.827	0.629	0.185	0.084	88.064	187500	0.486
712	322	Let Her Go	https://open.spotify.com/track/2jyjhRf6DVbMPU5zxagN2h	2013	2	17	0.479	0.545	0.0688	0.0963	74.897	252733	0.243
713	323	Never Let Me Down	https://open.spotify.com/track/5TGcyccg8Hkgn9jB7gUpMN	2020	4	24	0.758	0.848	0.0457	0.114	127.96	153149	0.706
714	168	Coño	https://open.spotify.com/track/5DV4ZSCqbFv74ui3ZhimXo	2020	7	3	0.899	0.528	0.181	0.105	100.037	111852	0.456
715	171	Bet You Wanna (feat. Cardi B)	https://open.spotify.com/track/7iAgNZdotu40NwtoIWJHFe	2020	10	2	0.653	0.662	0.162	0.0626	111.712	161168	0.674
716	324	Baby, I'm Jealous (feat. Doja Cat)	https://open.spotify.com/track/2fTdRdN73RgIgcUZN33dvt	2020	10	9	0.737	0.867	0.0458	0.32	98.05	175873	0.506
717	171	Love To Hate Me	https://open.spotify.com/track/7iKDsPfLT0d5mu2htfMKBZ	2020	10	2	0.686	0.64	0.159	0.0801	162.225	171798	0.597
718	171	Crazy Over You	https://open.spotify.com/track/7qq0EOPW4RRlqdvMBmdd73	2020	10	2	0.804	0.633	0.0612	0.102	115.002	163946	0.67
719	325	Wolves (feat. Post Malone)	https://open.spotify.com/track/33gwZOGJWEZ7dRWPqPxBEZ	2020	9	4	0.724	0.675	0.0867	0.351	160.048	199758	0.325
720	326	Bande organisée	https://open.spotify.com/track/6YzQOngfcV0W9F8UOTnEEK	2020	8	15	0.901	0.939	0.274	0.0643	142.948	356347	0.805
721	171	You Never Know	https://open.spotify.com/track/39kzWAiVPpycdMpr745oPj	2020	10	2	0.535	0.434	0.0505	0.253	144.497	229236	0.271
722	68	OK Not To Be OK	https://open.spotify.com/track/0zzVTGyRrWpQu8Fr28NRAv	2020	9	10	0.743	0.837	0.0649	0.0743	103.072	159863	0.263
723	194	Glock In My Lap	https://open.spotify.com/track/6pcywuOeGGWeOQzdUyti6k	2020	10	2	0.847	0.733	0.16	0.151	130.029	193591	0.202
724	327	Better	https://open.spotify.com/track/1dLXLETYiZohIZWnse4ypG	2020	9	25	0.637	0.418	0.301	0.131	84.295	174517	0.0807
725	328	In the End	https://open.spotify.com/track/60a0Rd6pjrkxjPbaKzXjfq	2000	10	24	0.556	0.864	0.0584	0.209	105.143	216880	0.4
726	45	Photograph	https://open.spotify.com/track/6fxVffaTuwjgEk5h9QyRjy	2014	6	21	0.614	0.379	0.0476	0.0986	107.989	258987	0.201
727	45	Thinking out Loud	https://open.spotify.com/track/1Slwb6dOYkBlWal1PGtnNg	2014	6	21	0.781	0.445	0.0295	0.184	78.998	281560	0.591
728	329	Take Me To Church	https://open.spotify.com/track/3dYD57lRAUcMHufyqn9GcI	2014	9	19	0.566	0.664	0.0464	0.116	128.945	241693	0.437
729	158	Boy With Luv (feat. Halsey)	https://open.spotify.com/track/5KawlOMHjWeUjQtnuRs22c	2019	4	12	0.645	0.862	0.0965	0.192	119.991	229773	0.798
730	179	forget me too (feat. Halsey)	https://open.spotify.com/track/1VSuFS7PahCN3SWbOcQ98m	2020	9	25	0.654	0.875	0.0744	0.194	99.975	171621	0.522
731	330	Wonderwall - Remastered	https://open.spotify.com/track/5qqabIl2vWzo9ApSC317sa	1995	10	30	0.375	0.893	0.0406	0.187	174.323	258773	0.434
732	24	Drankin N Smokin	https://open.spotify.com/track/0k7wmahjkn389wAZdz19Cv	2020	11	13	0.752	0.658	0.342	0.0927	151.951	213520	0.387
733	126	ALWAYS DO	https://open.spotify.com/track/3QCU8BT0zDS9LPVfEhRFEE	2020	11	6	0.762	0.426	0.113	0.0858	167.827	151705	0.582
734	24	Stripes Like Burberry	https://open.spotify.com/track/6lt8iodSkYWEV0ifKCSlfg	2020	11	13	0.758	0.574	0.217	0.144	144.081	274313	0.706
735	331	Sweet Melody	https://open.spotify.com/track/76Tuo484SLohJakHLnGI3B	2020	11	6	0.448	0.824	0.057	0.113	119.965	213693	0.419
736	24	That’s It	https://open.spotify.com/track/5n6gBhdEjCuj3obgCoTEFD	2020	11	13	0.94	0.532	0.358	0.0925	123.043	228796	0.599
737	249	Yellow	https://open.spotify.com/track/3AJwUDP919kvQ9QcozQPxg	2000	7	10	0.429	0.661	0.0281	0.234	173.372	266773	0.285
738	119	BLACK PARADE	https://open.spotify.com/track/2qzUpSVI4NnPyWxbXwumTj	2020	6	19	0.824	0.555	0.05	0.217	120.002	281273	0.0611
739	158	Stay Gold	https://open.spotify.com/track/0UwQTbq7ZtBJ7v530mpaxP	2020	7	14	0.723	0.634	0.0542	0.0787	129.017	243267	0.582
740	332	XXL	https://open.spotify.com/track/0p3euGPg5LgFeQGC7bBFuR	2020	6	26	0.798	0.527	0.0447	0.108	114.008	166173	0.548
741	11	Past Life (with Selena Gomez)	https://open.spotify.com/track/4P6IttK2PRBjyr3fm0pP7t	2020	6	26	0.575	0.543	0.0529	0.176	159.905	186480	0.283
742	333	Wash Us In The Blood	https://open.spotify.com/track/7mEUjhl6aTztdHCrxoTgBG	2020	6	30	0.67	0.847	0.409	0.304	137.22	189827	0.381
743	18	Girls in the Hood	https://open.spotify.com/track/6WbTTAGKrQtCQvmc5BuYfh	2020	6	26	0.821	0.863	0.353	0.0377	180.013	154324	0.874
744	334	Parasite Eve	https://open.spotify.com/track/5OxclJsdFESni44YlpNpkR	2020	6	25	0.589	0.797	0.15	0.383	102.489	291813	0.232
745	335	Prospect (ft. Lil Baby)	https://open.spotify.com/track/4iHSE5R1U8jf84tRn52xRt	2020	6	12	0.816	0.579	0.0867	0.127	120.078	226314	0.43
746	336	Karaoke	https://open.spotify.com/track/0D4GpOPInKiPxEfQMchu4p	2020	6	11	0.929	0.625	0.14	0.386	122.03	156493	0.578
747	171	Kill This Love	https://open.spotify.com/track/4pUCKHjJ4Ijewc37rRrvHn	2019	4	5	0.763	0.835	0.191	0.225	131.875	191050	0.645
748	337	Good Days	https://open.spotify.com/track/3YJJjQPAbDT7mGpX3WtQ9A	2020	12	25	0.436	0.655	0.0583	0.688	121.002	279204	0.412
749	109	MODO TURBO	https://open.spotify.com/track/0YqTL3nSL36OFdHwHoqCag	2020	4	26	0.655	0.726	0.0796	0.232	160.064	150260	0.766
750	152	Slay3r	https://open.spotify.com/track/1eMNW1HQjF1dbb4GtnmpaX	2020	12	25	0.885	0.661	0.141	0.334	140.028	164591	0.436
751	338	Meia Noite (Você tem meu Whatsapp)	https://open.spotify.com/track/6sPBi0qLI6KM3yXX56NxsA	2020	12	17	0.709	0.816	0.0346	0.146	150.06	237900	0.921
752	168	Love Not War (The Tampa Beat)	https://open.spotify.com/track/4Lt6GXGzYsa1tgkv3nGSTm	2020	11	20	0.738	0.85	0.0642	0.23	98.013	192921	0.865
753	339	Heat Waves	https://open.spotify.com/track/02MWAaffLxlfxAUY7c5dvx	2020	8	7	0.761	0.525	0.0944	0.0921	80.87	238805	0.531
754	340	Amor ou o Litrão	https://open.spotify.com/track/7qmnP8Woc47dLSrMD5MxL1	2020	10	16	0.934	0.707	0.0646	0.0628	138.023	173913	0.961
755	25	Whats Poppin (feat. DaBaby, Tory Lanez & Lil Wayne) [Remix] - Bonus Track	https://open.spotify.com/track/0ZLuW8uOXdFNWcI40C0OC2	2020	12	11	0.904	0.723	0.26	0.185	145.013	227478	0.835
756	58	All We Got (feat. KIDDO)	https://open.spotify.com/track/1FP9s72rDYty6mfoOEYKnE	2020	10	16	0.504	0.76	0.0426	0.151	183.933	190218	0.64
757	197	Basta Você Me Ligar - Ao Vivo	https://open.spotify.com/track/3rRin3LyLY92kpEbkCgwf4	2020	5	29	0.599	0.914	0.0629	0.694	168.008	182977	0.831
758	341	Why'd You Only Call Me When You're High?	https://open.spotify.com/track/48q0vSHcJdhK3IiXH8C5WJ	2013	9	9	0.691	0.631	0.0368	0.104	92.004	161124	0.8
759	341	Do I Wanna Know?	https://open.spotify.com/track/3rq5w4bQGigXOfdN30ATJt	2013	9	9	0.548	0.532	0.0323	0.217	85.03	272394	0.405
760	310	Lance Individual	https://open.spotify.com/track/7GLWWrk1YlkPYqJK3ynIA0	2020	11	13	0.752	0.62	0.0509	0.075	117.399	164459	0.962
761	139	Ponte Pa' Mi	https://open.spotify.com/track/4C6BlqqMwjFzOXzqpTeoWR	2020	11	20	0.878	0.713	0.0948	0.0822	92.028	202373	0.615
762	342	Hayloft	https://open.spotify.com/track/2kS6td1yvmpNgZTt1q5pQq	2008	9	23	0.527	0.922	0.0728	0.422	95.975	181680	0.49
763	158	ON	https://open.spotify.com/track/2QyuXBcV1LJ2rq01KhreMF	2020	2	21	0.583	0.817	0.0987	0.338	105.936	246381	0.438
764	158	ON (Feat. Sia)	https://open.spotify.com/track/3IB5qOeMayvpOdHxYCL5tZ	2020	2	21	0.591	0.848	0.0828	0.372	105.922	246816	0.386
765	64	Feel Me	https://open.spotify.com/track/6XXYdF6pJR1K3wKvuxmu7n	2020	2	21	0.71	0.808	0.0433	0.0734	99.989	226003	0.392
766	158	Filter	https://open.spotify.com/track/0ono6UCNVZ1XqOm6j78Blu	2020	2	21	0.781	0.762	0.0626	0.121	110.042	180221	0.86
767	158	Louder than bombs	https://open.spotify.com/track/3op7HNwLli54MBjFGzIlZO	2020	2	21	0.643	0.667	0.152	0.0904	145.999	217404	0.485
768	158	UGH!	https://open.spotify.com/track/1aKuG1GG76xPLUkjBbQo3W	2020	2	21	0.72	0.824	0.128	0.0509	165.998	225012	0.333
769	158	My Time	https://open.spotify.com/track/4vTgx6h4seHvkuFh84JXYP	2020	2	21	0.674	0.64	0.0339	0.0925	99.908	234458	0.664
770	158	00:00 (Zero O’Clock)	https://open.spotify.com/track/4AlihYDqxXshKhvh5tnMfP	2020	2	21	0.566	0.548	0.0579	0.11	157.999	250296	0.196
771	158	Friends	https://open.spotify.com/track/7w05lsU2VLSeiT8Nukrv5M	2020	2	21	0.55	0.747	0.0407	0.0536	79.98	199339	0.648
772	158	We are Bulletproof : the Eternal	https://open.spotify.com/track/44WLOqH7QayQOQdeUHeKUK	2020	2	21	0.526	0.575	0.0309	0.108	84.047	261543	0.19
773	158	Inner Child	https://open.spotify.com/track/4BKOjYosPhw334moS3wlbO	2020	2	21	0.589	0.696	0.0725	0.0808	134.953	233266	0.332
774	158	Moon	https://open.spotify.com/track/1xfXXujIlLZAx5wpu46Nyk	2020	2	21	0.703	0.646	0.0596	0.191	141.87	208590	0.64
775	283	Numbers (feat. Roddy Ricch, Gunna and London On Da Track)	https://open.spotify.com/track/733c1CWmIGymoQXdp7Us88	2020	2	14	0.819	0.654	0.136	0.0996	133.503	188563	0.455
776	84	Medusa	https://open.spotify.com/track/3qM0vBxIe4VUbK0Z0smuVP	2020	2	5	0.886	0.604	0.208	0.107	98.023	305333	0.383
777	158	Outro : Ego	https://open.spotify.com/track/3r9FFjLrAIQjoR8pSHVPC9	2020	2	21	0.808	0.903	0.0958	0.0993	116.988	196199	0.473
778	106	Modern Loneliness	https://open.spotify.com/track/7MZF7YLxOP2to9iblSulLc	2020	3	6	0.702	0.508	0.035	0.108	82.008	252337	0.143
779	158	Interlude : Shadow	https://open.spotify.com/track/2Nib4r0saYQf2pUV4RFDhl	2020	2	21	0.385	0.798	0.483	0.181	149.756	259821	0.141
780	158	Respect	https://open.spotify.com/track/37TSJmYKLxXmx8OehFpqMN	2020	2	21	0.661	0.84	0.116	0.287	91.457	237540	0.524
781	24	Life Is Good (feat. Drake, DaBaby & Lil Baby) - Remix	https://open.spotify.com/track/4iiWcajF1fEUpwcUewc464	2020	2	15	0.81	0.566	0.433	0.122	142.069	315346	0.582
782	196	Definitivamente	https://open.spotify.com/track/113PlnpZbHd3WIqeYjhZWv	2020	1	31	0.813	0.764	0.105	0.253	100.047	217773	0.429
783	299	No Judgement	https://open.spotify.com/track/5IUOU5xkzGHsRFOYNu3GSK	2020	2	7	0.723	0.726	0.0472	0.057	100.051	176283	0.962
784	1	Starboy	https://open.spotify.com/track/7MXVkk9YMctZqd1Srtv4MB	2016	11	25	0.679	0.587	0.276	0.137	186.003	230453	0.486
785	26	Lose Yourself - From "8 Mile" Soundtrack	https://open.spotify.com/track/1v7L65Lzy0j0vdpRjJewt1	2005	12	6	0.692	0.744	0.257	0.359	171.374	326467	0.0612
786	343	Lottery (Renegade)	https://open.spotify.com/track/4dZTZbmJBCCofAExHwefda	2019	6	21	0.915	0.556	0.216	0.0733	148.964	170947	0.67
787	141	Rich Rich	https://open.spotify.com/track/3VFT90E0yYjdHSFoGv02us	2020	4	24	0.548	0.648	0.292	0.123	141.937	204319	0.232
788	55	Mejor	https://open.spotify.com/track/1mF6sMUsRU9MisrdB9qWvg	2020	3	19	0.524	0.577	0.18	0.103	175.396	201361	0.19
789	1	Call Out My Name	https://open.spotify.com/track/09mEdoA6zrmBPgTEN5qXmN	2018	3	30	0.461	0.593	0.0356	0.307	134.17	228373	0.175
790	153	Daylight	https://open.spotify.com/track/6Ed1q0X8oSKSm4IIhiQbYg	2020	8	6	0.528	0.749	0.0479	0.0949	163.944	163906	0.729
791	344	Tap In	https://open.spotify.com/track/4Hpib09wXgD84w4uwTPnYD	2020	6	17	0.954	0.696	0.204	0.0754	100.036	139413	0.432
792	27	BLIND (feat. Young Thug)	https://open.spotify.com/track/2T5NBwKRySiCR78vVk08vr	2020	8	4	0.709	0.679	0.346	0.0971	162.973	153467	0.754
793	9	Freak	https://open.spotify.com/track/3aA6xB0tOilDDX17fIJ0Bl	2020	8	7	0.688	0.716	0.0385	0.0989	116.912	284480	0.373
794	118	PUNANI	https://open.spotify.com/track/41xKiK40e7MFu1bqcGSz1d	2020	8	2	0.841	0.541	0.229	0.123	97.961	115255	0.42
795	345	Anaranjado	https://open.spotify.com/track/0cRgJuB6TRtb5RZ2HkjSLh	2020	7	16	0.763	0.58	0.144	0.154	175.937	212011	0.608
796	108	Rags2Riches 2 (feat. Lil Baby)	https://open.spotify.com/track/0qJeyYAgv6UpvewUxRXAhb	2020	8	7	0.874	0.443	0.241	0.124	118.004	235988	0.298
797	346	Lovefool	https://open.spotify.com/track/51Of5p3lKZeOg6itfs4og4	2020	5	8	0.677	0.766	0.0568	0.129	123.062	190488	0.198
798	2	Pain 1993 (with Playboi Carti)	https://open.spotify.com/track/6Kj17Afjo1OKJYpf5VzCeo	2020	5	1	0.825	0.373	0.108	0.368	77.271	149078	0.12
799	24	D4L	https://open.spotify.com/track/5fHrHoJKfCgBd35zwIBmUK	2020	5	1	0.718	0.706	0.06	0.352	170.004	189176	0.815
800	2	Demons (feat. Fivio Foreign & Sosa Geek)	https://open.spotify.com/track/05aZ9sAU1YXndHv0FMi9iW	2020	5	1	0.543	0.766	0.343	0.155	106.869	204805	0.729
801	2	Time Flies	https://open.spotify.com/track/5H4mXWKcicuLKDn4Jy0sK7	2020	5	1	0.864	0.477	0.224	0.182	86.46	192932	0.5
802	2	Desires (with Future)	https://open.spotify.com/track/7eYAHC0RbBF9eaqWzT34Aq	2020	5	1	0.812	0.506	0.116	0.325	145.074	237946	0.554
803	2	Not You Too (feat. Chris Brown)	https://open.spotify.com/track/3Q4gttWQ6hxqWOa3tHoTNi	2020	5	1	0.458	0.452	0.047	0.0703	86.318	269680	0.316
804	2	Landed	https://open.spotify.com/track/3KixNgUEaDtrKJVzdqjU5q	2020	5	1	0.881	0.636	0.287	0.111	163.949	152195	0.715
805	2	When To Say When	https://open.spotify.com/track/5TCBWmEBrin7etRa4Lswr1	2020	5	1	0.41	0.82	0.533	0.538	170.718	223124	0.526
806	347	Nicht verdient	https://open.spotify.com/track/7v8OynJxOxHoeS5C2UA9Y7	2020	4	29	0.719	0.65	0.232	0.167	77.981	176953	0.488
807	2	Deep Pockets	https://open.spotify.com/track/3IvMYBE7A3c7to1aEcfFJk	2020	5	1	0.473	0.824	0.163	0.605	77.888	222929	0.374
808	348	Qué Maldición	https://open.spotify.com/track/2RxC2peY3FtrurYmbbmanr	2020	5	1	0.755	0.531	0.196	0.13	177.951	203360	0.683
809	2	War	https://open.spotify.com/track/1I55Ea0zVoSKs6MqW7DQ3i	2020	5	1	0.749	0.792	0.0826	0.109	144.064	180000	0.239
810	2	From Florida With Love	https://open.spotify.com/track/0YkUwXxnTkeJBvt5upeEtP	2020	5	1	0.787	0.477	0.199	0.104	80.506	234783	0.476
811	2	Losses	https://open.spotify.com/track/6fLVTVaHWaEfVKfEgbkf4D	2020	5	1	0.551	0.57	0.351	0.424	85.687	271184	0.505
812	349	eight(Prod.&Feat. SUGA of BTS)	https://open.spotify.com/track/0pYacDCZuRhcrwGUA5nTBe	2020	5	6	0.676	0.869	0.0423	0.132	120.029	167573	0.594
813	234	happiness	https://open.spotify.com/track/73YUReisjb3A9ActdLLjJQ	2020	12	11	0.559	0.334	0.0376	0.114	122.079	315147	0.211
814	234	ivy	https://open.spotify.com/track/19CSr8rwW05VJL2F91KFNK	2020	12	11	0.515	0.545	0.0353	0.0921	88.856	260440	0.535
815	234	dorothea	https://open.spotify.com/track/3w9VRlKPvNxj40RdUGRweH	2020	12	11	0.605	0.488	0.0264	0.129	119.966	225880	0.354
816	234	coney island (feat. The National)	https://open.spotify.com/track/4tyX1rw9X309WkEdh2As4B	2020	12	11	0.537	0.537	0.0617	0.142	107.895	275320	0.292
817	234	evermore (feat. Bon Iver)	https://open.spotify.com/track/0AaV4MJrgmLV3XhoiWXjjb	2020	12	11	0.39	0.27	0.0308	0.111	125.177	304107	0.32
818	234	long story short	https://open.spotify.com/track/0vVMlbdYx2080Oa9FndPZr	2020	12	11	0.546	0.73	0.0417	0.0972	157.895	215920	0.573
819	234	cowboy like me	https://open.spotify.com/track/1XjHRolIXL2M1EEOUsGGR4	2020	12	11	0.604	0.517	0.0347	0.123	127.967	275040	0.511
820	234	marjorie	https://open.spotify.com/track/7vBNFh3NIZTj6tB5s1IBjE	2020	12	11	0.535	0.561	0.0484	0.115	96.103	257773	0.287
821	234	closure	https://open.spotify.com/track/3uayvzcbqFydIbgUeC6EJh	2020	12	11	0.689	0.704	0.245	0.134	151.884	180653	0.92
822	264	She Knows This	https://open.spotify.com/track/1xzUQMiCoY5pdego0pHMeV	2020	12	11	0.39	0.724	0.0889	0.393	165.945	216560	0.312
823	264	Another Day	https://open.spotify.com/track/6myUpr3GDR80Dg3zqNTmmG	2020	12	11	0.646	0.758	0.0708	0.335	172.995	199787	0.0642
824	264	Solo Dolo, Pt. III	https://open.spotify.com/track/27oVCAziETRbNuo5A8LNpg	2020	12	11	0.589	0.727	0.0866	0.164	152.058	242267	0.52
825	264	Dive	https://open.spotify.com/track/7Hc3YL8oDiAzbiAW32KXrw	2020	12	11	0.64	0.621	0.0679	0.36	123.105	148707	0.332
826	264	Heaven On Earth	https://open.spotify.com/track/2koUj1Fn5TKFEkChSmBPIb	2020	12	11	0.786	0.61	0.0558	0.0765	130.036	201093	0.228
827	264	Sad People	https://open.spotify.com/track/4nuAslShoN77tq12fzwjUq	2020	12	11	0.636	0.647	0.0381	0.113	158.073	176027	0.416
828	264	Damaged	https://open.spotify.com/track/2n7Ao4nyESBa5ti8gcAbBt	2020	12	11	0.625	0.581	0.0316	0.254	142.04	150853	0.267
829	264	Beautiful Trip	https://open.spotify.com/track/4IIuCotvqijraSdnVLaFnM	2020	12	11	0.331	0.513	0.632	0.882	133.971	37013	0.42
830	264	The Void	https://open.spotify.com/track/2yg7MXp8nSPaf61HVkhEr3	2020	12	11	0.464	0.459	0.0314	0.117	142.017	325413	0.0786
831	116	Party Girl (Remix)	https://open.spotify.com/track/0XkmeG97T4mtYlWRJcrxec	2020	7	10	0.752	0.375	0.204	0.175	129.995	147673	0.591
832	48	Titanic	https://open.spotify.com/track/1QoG0Yqz1onMsdbOibZVke	2020	7	10	0.567	0.545	0.0448	0.112	174.146	176650	0.234
833	48	Bad Energy	https://open.spotify.com/track/0JoWBcL61YWLXM5vW0YTHO	2020	7	10	0.654	0.452	0.0439	0.114	138.034	186749	0.532
834	48	Fighting Demons	https://open.spotify.com/track/0jo6Nd4iJU0UFHqS0Xd4l4	2020	7	10	0.707	0.67	0.257	0.098	163.099	200629	0.235
835	48	Stay High	https://open.spotify.com/track/1AnkdcHl86kEhDvhaKDuIe	2020	7	10	0.745	0.5	0.135	0.0943	76.968	168685	0.433
836	48	Up Up And Away	https://open.spotify.com/track/5lcIegmdblnWqT9nS9EhZj	2020	7	10	0.661	0.665	0.053	0.0981	75.059	147548	0.486
837	48	Screw Juice	https://open.spotify.com/track/2XSO13Gyndo7MDdtYibIxO	2020	7	10	0.595	0.528	0.0935	0.142	150.075	179464	0.515
838	48	I Want It	https://open.spotify.com/track/6RsRMf9e4KUyo3MecGffNL	2020	7	10	0.288	0.638	0.0779	0.14	66.424	173114	0.147
839	48	Man Of The Year	https://open.spotify.com/track/1uA914Md6wsy9NDryyBypH	2020	7	10	0.621	0.695	0.0911	0.086	173.966	136408	0.298
840	48	Can't Die	https://open.spotify.com/track/6DuHcOuuGWXNvF3uocsrBa	2020	7	10	0.652	0.671	0.0756	0.107	84.008	182922	0.274
841	264	The Adventures of Moon Man & Slim Shady (with Eminem)	https://open.spotify.com/track/38iBrrbbXyWaSPkmuDNgjZ	2020	7	10	0.88	0.787	0.118	0.12	113.018	264834	0.588
842	48	Anxiety - Intro	https://open.spotify.com/track/0YevRlTDW9tyIwViCyke8Q	2020	7	10	0.307	0.528	0.108	0.222	174.795	70395	0.58
843	48	Juice WRLD Speaks From Heaven - Outro	https://open.spotify.com/track/2GriTXl7gRSBv1A2IGZtnL	2020	7	10	0.392	0.373	0.0968	0.545	121.678	30583	0.519
844	48	The Man, The Myth, The Legend - Interlude	https://open.spotify.com/track/0veNpTQFqfmTX0rsJmO2rO	2020	7	10	0.667	0.447	0.761	0.612	83.534	136545	0.829
845	350	Tiefschwarz (feat. Samra)	https://open.spotify.com/track/7bDSLyTjZ1VjU5kPHTL3Ko	2020	9	25	0.751	0.783	0.22	0.114	94.003	189739	0.379
846	92	Gangstas	https://open.spotify.com/track/1hg3RlqFZXJb5YgRoK9qmF	2020	7	3	0.548	0.506	0.102	0.0788	119.987	160000	0.557
847	351	Monster	https://open.spotify.com/track/6c1QaQHdDhtFMfUkhueuXK	2020	7	6	0.631	0.748	0.0488	0.537	115.665	178413	0.351
848	118	YAYA	https://open.spotify.com/track/6EfBMJQwe2xLgldra6DaYp	2020	7	3	0.672	0.733	0.0566	0.199	105.043	149857	0.354
849	66	Narcos	https://open.spotify.com/track/7mcdgAXmb35dakBnfDIv3q	2020	5	29	0.614	0.746	0.196	0.0874	168.072	259250	0.601
850	92	Make It Rain (feat. Rowdy Rebel)	https://open.spotify.com/track/71d7LaAgPcNcUopu3OzmP7	2020	7	3	0.5	0.767	0.403	0.385	159.477	202443	0.58
851	92	Something Special	https://open.spotify.com/track/5kkaSMcf4BFlhRRICCKZb6	2020	7	3	0.739	0.616	0.0338	0.101	91.071	158466	0.654
852	126	TRAGIC (feat. Youngboy Never Broke Again & Internet Money)	https://open.spotify.com/track/13EW51DKru044OJDJ9Bm8o	2020	11	6	0.779	0.642	0.116	0.2	82.363	153147	0.388
853	352	7 Summers	https://open.spotify.com/track/0Z0kNthq0sS4lvGz9SSlBF	2020	8	14	0.466	0.786	0.0328	0.125	203.903	210507	0.571
854	157	Lemonade	https://open.spotify.com/track/02kDW379Yfd5PzW5A6vuGt	2020	8	14	0.799	0.66	0.079	0.111	140.04	195429	0.471
855	4	Levitating (feat. Madonna and Missy Elliott) [The Blessed Madonna Remix]	https://open.spotify.com/track/0pk1hxhJLBSZZ5RKBhcwOa	2020	8	13	0.808	0.655	0.139	0.208	116.029	250280	0.56
856	353	Money Trees	https://open.spotify.com/track/2HbKqm4o0w5wEeEFXm2sD4	2012	10	22	0.716	0.531	0.122	0.224	71.994	386907	0.344
857	169	When I Look At You	https://open.spotify.com/track/6ZfXA2xakAvphXOSOJ3u1W	2009	1	1	0.459	0.545	0.0282	0.105	137.941	248587	0.194
858	301	Over Now (with The Weeknd)	https://open.spotify.com/track/58AGoOGbwsQMhBbH0eFLRR	2020	8	28	0.612	0.884	0.0454	0.247	178.043	210795	0.679
859	157	Blastoff (feat. Juice Wrld & Trippie Redd)	https://open.spotify.com/track/2rFsFjq0D9JAmc0APpCO6P	2020	8	29	0.761	0.517	0.0927	0.157	147.912	174730	0.46
860	177	THE BADDEST	https://open.spotify.com/track/2V4Fx72svQRxrFvNT1eq5f	2020	8	27	0.676	0.857	0.0438	0.254	149.981	162600	0.717
861	56	The Plan - From the Motion Picture "TENET"	https://open.spotify.com/track/551xyaSJsg8hILXFq9JdST	2020	8	22	0.433	0.443	0.0361	0.117	79.903	185851	0.0363
862	88	Not Shy	https://open.spotify.com/track/4ecVWqbtW6phQGpZMAyqIU	2020	8	17	0.776	0.911	0.131	0.268	101.027	177728	0.56
863	138	Cry About It Later	https://open.spotify.com/track/1RsD951uUUlJx0MRioZfev	2020	8	26	0.676	0.794	0.0366	0.0723	125.957	159286	0.161
864	159	ADMV	https://open.spotify.com/track/4j3iq13kHs5PB94jdTp3Y3	2020	4	23	0.565	0.39	0.0556	0.126	163.781	193700	0.708
865	356	feel something	https://open.spotify.com/track/7JDWhC422Gtk1Bq0mL3OTC	2019	6	21	0.74	0.415	0.0707	0.319	136.029	180161	0.156
866	316	Ain't It Different (feat. AJ Tracey & Stormzy)	https://open.spotify.com/track/6NJfIydBMYrXvlaXsFxmc8	2020	8	20	0.767	0.569	0.216	0.109	77.052	196363	0.524
867	357	Gifted (feat. Roddy Ricch)	https://open.spotify.com/track/0mb3uDw5vfFUcZfJYFOMRu	2020	8	27	0.653	0.603	0.171	0.18	151.016	168477	0.551
868	55	+Linda	https://open.spotify.com/track/5cBrOhKDyiJF9bPGUHKkG0	2020	4	18	\N	\N	\N	\N	\N	\N	\N
869	158	Skit	https://open.spotify.com/track/4GVwjLRT7oSsKby7Vy8EHr	2020	11	20	0.703	0.321	0.884	0.908	114.822	179548	0.544
870	358	Baby (with J Balvin)	https://open.spotify.com/track/4L5ZhW0VJeQ6je2iqvqZ4X	2020	12	18	0.755	0.882	0.0532	0.103	99.984	193555	0.606
871	352	Somebody’s Problem	https://open.spotify.com/track/0SErdEdRcVX1uJCf1eTGYH	2020	11	20	0.657	0.54	0.0287	0.123	136.97	161773	0.625
872	359	Dime Cómo Quieres	https://open.spotify.com/track/4jcxBTrNvyqMJdMDyyjdYV	2020	11	13	0.839	0.667	0.031	0.244	124.889	171360	0.878
873	358	Tik Tok (feat. Marracash & Guè Pequeno)	https://open.spotify.com/track/11jGgkrtDbYaKlN0y1nPbC	2020	12	18	0.723	0.673	0.137	0.323	120.046	230389	0.302
874	358	Abracadabra (feat. Future)	https://open.spotify.com/track/0lSVjlxmAMSJGFSjVB1FtU	2020	12	18	0.846	0.681	0.174	0.112	131.988	192965	0.809
875	360	Mirrors	https://open.spotify.com/track/4rHZZAmHpZrA3iH5zx8frV	2013	3	15	0.574	0.512	0.0503	0.0946	76.899	484147	0.512
876	358	Hollywood (feat. Diplo)	https://open.spotify.com/track/4CvW0iHAs7yJhbpnJ3NSnS	2020	12	18	0.848	0.708	0.0366	0.0948	137.973	191869	0.926
877	194	Rich Nigga Shit (feat. Young Thug)	https://open.spotify.com/track/3ruoIF2UnoXdzK8mR61ebq	2020	10	2	0.825	0.733	0.0969	0.112	97.974	190331	0.62
878	194	Many Men	https://open.spotify.com/track/3CDVMejYHnB1SkEEx0T1N4	2020	10	2	0.635	0.793	0.0322	0.113	77.594	201856	0.281
879	194	Slidin	https://open.spotify.com/track/7fxSLnklnayJNBIKntXedZ	2020	10	2	0.774	0.706	0.355	0.104	152.891	185037	0.382
880	361	Outta Time (feat. Drake)	https://open.spotify.com/track/4SCnCPOUOUXUmCX2uHb3r7	2020	10	2	0.714	0.582	0.0808	0.0774	92.819	198822	0.338
881	194	My Dawg	https://open.spotify.com/track/42Tohunwlh34o0mgxYx5iq	2020	10	2	0.831	0.532	0.301	0.464	140.105	181716	0.364
882	194	Snitches & Rats (feat. Young Nudy)	https://open.spotify.com/track/3WaDoMDQRqDdgtCDLxanpN	2020	10	2	0.821	0.671	0.18	0.0972	145.953	187773	0.494
883	194	Brand New Draco	https://open.spotify.com/track/4V9ynsDPwHtdItksqjuRu0	2020	10	2	0.697	0.709	0.298	0.0886	155.023	202420	0.439
884	157	Lemonade (Feat. Roddy Ricch & Don Toliver) [Remix]	https://open.spotify.com/track/5sBplhIrmzA4kQGyIOpmDf	2020	9	30	0.832	0.549	0.0602	0.11	140.045	181496	0.384
885	153	Your Man	https://open.spotify.com/track/6Vgtvd7I5yopJdBuxqjBd2	2020	9	24	0.785	0.818	0.099	0.149	117.98	163759	0.0503
886	194	No Opp Left Behind	https://open.spotify.com/track/50I7FNN2rl2rWiNwGxS146	2020	10	2	0.823	0.703	0.298	0.294	178.043	194214	0.26
887	362	Lets Link	https://open.spotify.com/track/6fMzgFFGzWCwiHMzDzNpp5	2020	8	20	0.839	0.683	0.165	0.241	120.003	159955	0.522
888	194	RIP Luv	https://open.spotify.com/track/1wGnp7ejkCuXRsehXx0PNP	2020	10	2	0.63	0.399	0.178	0.234	183.016	214192	0.0657
889	194	Steppin On Niggas	https://open.spotify.com/track/7FtZFla3ZH6PqsAJ9MvVCM	2020	10	2	0.849	0.635	0.254	0.062	89.484	140833	0.798
890	64	Vulnerable	https://open.spotify.com/track/11OwAR3GlBj9E35Cznf7Lj	2020	1	10	0.695	0.573	0.167	0.156	100.031	192172	0.38
891	64	Dance Again	https://open.spotify.com/track/5sK3o66yupTNIK6gWgzGjf	2020	1	10	0.784	0.552	0.0871	0.192	111.984	170498	0.465
892	64	Ring	https://open.spotify.com/track/11Ey4yJVeWEsA73KjACkVY	2020	1	10	0.873	0.51	0.0661	0.0738	110.953	148776	0.871
893	64	Crowded Room (feat. 6LACK)	https://open.spotify.com/track/2C0hTkdEoikhKzDCJl32QZ	2020	1	10	0.724	0.415	0.0518	0.103	89.999	186459	0.328
894	64	People You Know	https://open.spotify.com/track/63mdJr3NMY3wReOkNE6c6W	2020	1	10	0.695	0.62	0.0521	0.111	150.032	194900	0.62
895	64	Let Me Get Me	https://open.spotify.com/track/0uFForNKQPvgSCnxlZIhQy	2020	1	10	0.826	0.571	0.0426	0.215	121.06	189145	0.475
896	64	A Sweeter Place (feat. Kid Cudi)	https://open.spotify.com/track/4bb94wZVF1cX66vQjNeJTX	2020	1	10	0.583	0.777	0.185	0.108	190.054	263306	0.31
897	5	Tip Toe (feat. A Boogie Wit da Hoodie)	https://open.spotify.com/track/6ztvsy3C6hPjVg9j4x1XKJ	2019	12	6	0.757	0.673	0.141	0.338	92.958	185806	0.574
898	5	Start Wit Me (feat. Gunna)	https://open.spotify.com/track/7A20WnLkjtZU2d7hIB6Ziu	2019	12	6	0.886	0.479	0.334	0.135	130.029	158692	0.408
899	18	Diamonds (with Normani)	https://open.spotify.com/track/0PQsrLxPbOBBwwmXCnGvcF	2020	1	10	0.785	0.753	0.0873	0.265	94.012	199301	0.488
900	64	Cut You Off	https://open.spotify.com/track/4OtHGdb0KqEbaWb6edUnR9	2020	1	10	0.855	0.294	0.286	0.091	139.745	182017	0.842
901	64	Kinda Crazy	https://open.spotify.com/track/59iGOjPSOcPLGl3vqEStUp	2020	1	10	0.691	0.446	0.0472	0.183	93.03	212436	0.534
902	347	Frühstück in Paris	https://open.spotify.com/track/6qAxQhNfM909QrDGLYEocf	2020	9	17	0.744	0.644	0.0641	0.204	96.852	151360	0.577
903	363	2012	https://open.spotify.com/track/6bM4daGlfZHtKMQp8tEqVz	2020	8	21	0.805	0.619	0.0771	0.114	98.995	170200	0.476
904	40	if i were u (with Lauv)	https://open.spotify.com/track/4Rh4UxgPaRTaFfKumWtUbM	2020	8	19	0.666	0.628	0.0623	0.189	82.992	186468	0.767
905	364	What Makes You Beautiful	https://open.spotify.com/track/4cluDES4hQEUhmXj6TXkSo	2012	5	25	0.726	0.787	0.0737	0.0596	124.99	199987	0.888
906	365	Never Know (feat. SHIRIN DAVID)	https://open.spotify.com/track/5Hkj1XjMJv5QCGc9NwZm6z	2020	7	16	0.874	0.542	0.344	0.181	142.016	196933	0.481
907	10	Intentions	https://open.spotify.com/track/364dI1bYnvamSnBJ8JcNzN	2020	2	14	0.806	0.546	0.0575	0.102	147.986	212867	0.874
908	153	Run	https://open.spotify.com/track/6p8eEdiZLKJH8tcjGZuNTK	2020	2	6	0.682	0.72	0.0381	0.148	117.003	169011	0.673
909	98	No Shame	https://open.spotify.com/track/5JSVa5i6lFPoyOzK4gj0Ox	2020	3	27	0.576	0.807	0.0374	0.0963	90.932	192737	0.479
910	366	Yikes	https://open.spotify.com/track/75dLEqanQTupF3dtP9exT5	2020	2	7	0.911	0.637	0.447	0.238	149.996	156882	0.66
911	306	Birthday	https://open.spotify.com/track/5hff5RQeE84pznOt8WEWeO	2020	2	7	0.609	0.785	0.0891	0.171	151.995	181467	0.756
912	89	Too Good At Goodbyes	https://open.spotify.com/track/1mXVgsBdtIVeCLJnSnmtdV	2017	11	3	0.681	0.372	0.0432	0.169	91.873	201000	0.476
913	284	Weiss	https://open.spotify.com/track/38YP1STiBe3AZevFFJILf4	2020	2	7	0.6	0.525	0.423	0.111	96.989	162702	0.436
914	24	Solitaires (feat. Travis Scott)	https://open.spotify.com/track/4kfeRwpq5KUaqTkgi4TbDF	2020	5	15	0.691	0.632	0.0513	0.0646	169.982	205666	0.488
915	13	BAD CON NICKY	https://open.spotify.com/track/5bmSver2b3ZXyuyLKtgnFI	2020	5	10	0.59	0.729	0.0893	0.659	93.094	202240	0.712
916	367	CANCIÓN CON YANDEL	https://open.spotify.com/track/3pm4XtcsRIFFtH2UErk62R	2020	5	10	0.75	0.741	0.402	0.121	79.968	209180	0.495
917	302	Fame	https://open.spotify.com/track/3goH7O78TLkV9RhCAyM4AT	2020	5	8	0.811	0.645	0.104	0.103	129.967	173761	0.474
918	13	MÁS DE UNA CITA	https://open.spotify.com/track/4EJHKSnHENfjOxXWryyNtL	2020	5	10	0.865	0.5	0.0861	0.098	92.976	183520	0.317
919	60	X (with KAROL G)	https://open.spotify.com/track/77fvnWALKJR0ws1VUx09CY	2020	5	15	0.715	0.827	0.0617	0.321	117.977	185277	0.75
920	24	All Bad (feat. Lil Uzi Vert)	https://open.spotify.com/track/021lWIHJrURZrmvYQ1xcM8	2020	5	15	0.931	0.667	0.318	0.15	142.039	207739	0.667
921	24	Trillionaire (feat. Youngboy Never Broke Again)	https://open.spotify.com/track/740kQ8xwSGloumdiKR5Cwz	2020	5	15	0.768	0.526	0.209	0.139	139.999	167552	0.473
922	85	Go Stupid	https://open.spotify.com/track/4PklAHGXT5ityno3IA8SKd	2020	5	15	0.92	0.833	0.253	0.0596	141.034	165726	0.645
923	368	Racks 2 Skinny	https://open.spotify.com/track/568OIKgeHyGRD3uWR44JbO	2020	5	11	0.814	0.584	0.0819	0.0646	141.016	178025	0.405
924	85	Be Something (feat. Lil Baby)	https://open.spotify.com/track/65jw6GhwQW3Db55PxlPEpS	2020	5	15	0.829	0.52	0.294	0.134	136.103	194118	0.248
925	13	BENDICIONES	https://open.spotify.com/track/2CoMYp2uIKsT09nreEZnZn	2020	5	10	0.828	0.581	0.0725	0.103	143.995	155060	0.843
926	307	Excitement	https://open.spotify.com/track/3WnTQDd9A3bpBfzCziElU9	2020	10	30	0.443	0.536	0.0378	0.1	121.967	283285	0.0391
927	92	Aim For The Moon (feat. Quavo)	https://open.spotify.com/track/6O7fPYTsb2mY0PiFt2ymDB	2020	7	3	0.713	0.605	0.107	0.115	142.025	175756	0.432
928	92	44 BullDog	https://open.spotify.com/track/7sjFIZ1g5QLJLGja3k592K	2020	7	3	0.8	0.564	0.4	0.112	139.989	150857	0.318
929	92	Creature (feat. Swae Lee)	https://open.spotify.com/track/3eV2WT9YhfzkxbufnBF8wK	2020	7	3	0.794	0.717	0.251	0.195	141.881	202816	0.372
930	92	Yea Yea	https://open.spotify.com/track/0bjgQ24UZGwKikldIyEOgf	2020	7	3	0.717	0.474	0.403	0.139	123.906	185804	0.448
931	92	Enjoy Yourself (feat. Karol G)	https://open.spotify.com/track/3NWrHCwvyII4fTx05PN3IO	2020	7	3	0.764	0.676	0.0927	0.215	97.02	197938	0.461
932	92	Bad Bitch From Tokyo (Intro)	https://open.spotify.com/track/4OGIeHtYhRTJ8iW21UUyZW	2020	7	3	0.645	0.64	0.179	0.286	140.248	48000	0.674
933	92	Snitching (feat. Quavo & Future)	https://open.spotify.com/track/2FhEj9lvEIaJihjFprRrGt	2020	7	3	0.944	0.579	0.191	0.253	135.033	259346	0.769
934	92	West Coast Shit (feat. Tyga & Quavo)	https://open.spotify.com/track/1JDhNQ0oOT7XpclZn3aQ8F	2020	7	3	0.831	0.762	0.207	0.107	99.999	192000	0.495
935	92	Tunnel Vision (Outro)	https://open.spotify.com/track/2SxR5RitJdsG6wINvJLBSD	2020	7	3	0.718	0.66	0.325	0.159	142.879	132587	0.659
936	66	El Manual	https://open.spotify.com/track/7kOf0qHO4Rcwk6QJifZDRJ	2020	5	29	0.843	0.845	0.0503	0.0527	126.989	210624	0.898
937	369	Don't Stop Believin'	https://open.spotify.com/track/4bHsxqR3GMrXTxEPLuK5ue	1981	6	20	0.5	0.748	0.0363	0.447	118.852	250987	0.514
938	272	VACATION	https://open.spotify.com/track/6q2uIyLqASSpv2SIv2ehWK	2020	6	19	0.821	0.61	0.0959	0.185	110.973	192936	0.47
939	205	Big Body Benz	https://open.spotify.com/track/2WOJ7D52Ng3myrKlEf4Azj	2020	6	18	0.884	0.451	0.393	0.268	94.024	148284	0.311
940	347	Ich weiß nicht mal wie sie heißt	https://open.spotify.com/track/4KfL3Ne8bc9bC2PUB8QGwA	2020	6	18	0.498	0.836	0.184	0.0994	199.846	168750	0.609
941	283	Bleed	https://open.spotify.com/track/5XzombolzpiaOSTdj1W0VS	2020	6	19	0.698	0.572	0.198	0.154	71.446	176959	0.391
942	293	Snow On Tha Bluff	https://open.spotify.com/track/1oOEkBNp4zWnkD7nWjJdog	2020	6	16	0.586	0.512	0.0668	0.119	75.857	235480	0.235
943	370	Every Breath You Take	https://open.spotify.com/track/1JSTJqkT5qHq8MDJnJbRE1	1983	6	17	0.82	0.452	0.0348	0.0714	117.401	253920	0.74
944	371	September	https://open.spotify.com/track/4f2GB5ZC7vOUYPAg69N2Xw	1978	11	23	0.697	0.832	0.0298	0.269	125.926	215093	0.979
945	372	BXL ZOO	https://open.spotify.com/track/7BO3y8lmogACezwHqZ1HTB	2020	9	17	0.745	0.656	0.203	0.11	137.997	201333	0.405
946	372	DEUX TOILES DE MER	https://open.spotify.com/track/7yN9Qx1HtE4c1fhakBz8Ay	2020	9	22	0.521	0.39	0.128	0.112	104.106	315640	0.157
947	69	Dolly (with Lil Uzi Vert)	https://open.spotify.com/track/77Xwqkw7VrV8E5FCq9JhO8	2020	9	18	0.664	0.586	0.238	0.216	88.502	179813	0.589
948	33	Hot Stuff	https://open.spotify.com/track/00ETaeHUQ6lops3oWU1Wrt	2020	9	18	0.681	0.773	0.148	0.11	119.961	199008	0.429
949	51	Who's Laughing Now	https://open.spotify.com/track/2ICse7t8MB60EFk6o9aUyw	2020	9	18	0.648	0.641	0.0389	0.109	184.021	180348	0.505
950	302	Boot	https://open.spotify.com/track/0rqY8g1Y1zaA4YwU6vhBQg	2020	7	31	0.534	0.565	0.307	0.112	194.034	193360	0.529
951	70	Riot	https://open.spotify.com/track/4aOOExMBUyxKnEYb39SrTg	2020	6	1	0.509	0.542	0.442	0.23	97.767	78681	0.151
952	373	VALLA NEIN (feat. Luciano)	https://open.spotify.com/track/2rxxXYtTIFKyrhJpofeoIX	2020	6	5	0.761	0.657	0.138	0.356	135.909	182040	0.589
953	374	This Is America	https://open.spotify.com/track/0b9oOr2ZgvyQu88wzixux9	2018	5	6	0.854	0.463	0.137	0.354	120.024	225773	0.549
954	52	911	https://open.spotify.com/track/6qI0MU175Dk2DeoUjlrOpy	2020	9	18	0.816	0.71	0.0398	0.292	93.02	208631	0.784
955	52	Alice	https://open.spotify.com/track/41A89rj3GoMG6ktN37L7PG	2020	5	29	0.723	0.88	0.038	0.0632	123.036	177600	0.323
956	52	Free Woman	https://open.spotify.com/track/4L6ihclQPu1hqP9r3WNJjQ	2020	5	29	0.731	0.927	0.0781	0.187	119.006	191467	0.478
957	52	Fun Tonight	https://open.spotify.com/track/6hyQVqfHFvsJDjcmj4qrHf	2020	5	29	0.645	0.923	0.0725	0.14	117.945	173427	0.323
958	52	Sine From Above (with Elton John)	https://open.spotify.com/track/0zzsyWc45eUcSjw4FNHxeN	2020	5	29	0.642	0.792	0.0488	0.68	122.965	244880	0.0903
959	52	Enigma	https://open.spotify.com/track/7JDbfYUHjDzQPFSDh5lzGs	2020	5	29	0.669	0.804	0.036	0.694	116.001	179760	0.184
960	52	Replay	https://open.spotify.com/track/7sKbyYeJnITO1Eh9xd0lKd	2020	5	29	0.658	0.878	0.123	0.944	122.015	186653	0.683
961	52	Plastic Doll	https://open.spotify.com/track/3CidPLqWXqgesJlwYVJZdy	2020	5	29	0.743	0.853	0.04	0.0872	121.028	221667	0.422
962	52	Chromatica II	https://open.spotify.com/track/0oQc0F6KUE7QY7k5TU6bic	2020	5	29	0.184	0.297	0.0359	0.527	75.824	41867	0.113
963	52	Babylon	https://open.spotify.com/track/5DttNeiizFqWUON9hZBqTY	2020	5	29	0.698	0.799	0.0342	0.215	115.957	161733	0.351
964	52	Chromatica I	https://open.spotify.com/track/3CGZ7wfk4skmuyQgua1C1K	2020	5	29	0.184	0.297	0.0359	0.527	75.824	41867	0.113
965	52	1000 Doves	https://open.spotify.com/track/62hTXlVQacy3pjBW4ntRPl	2020	5	29	0.668	0.826	0.0383	0.474	122.973	215480	0.388
966	33	Broken Glass	https://open.spotify.com/track/78ldtCaBRJVp2i91B715L0	2020	5	29	0.526	0.633	0.134	0.129	171.044	203947	0.272
967	375	In meinem Benz	https://open.spotify.com/track/6BXyD6UUPizpRpA7iOi99r	2020	5	9	\N	\N	\N	\N	\N	\N	\N
968	373	FLY	https://open.spotify.com/track/1WoM4mof0Nl1xPtwf6h6ow	2020	5	29	0.835	0.596	0.297	0.164	100.706	174893	0.897
969	376	SKRR	https://open.spotify.com/track/0U9dP3BUlAgq9KkJXOijBH	2020	9	24	0.803	0.649	0.132	0.152	125.038	119040	0.584
970	72	T.D (Lil Yachty & Tierra Whack feat. A$AP Rocky & Tyler, The Creator)	https://open.spotify.com/track/0gO3E51A3fqp0ypJ26QbVP	2020	5	29	0.784	0.632	0.347	0.605	124.603	232839	0.746
971	72	Oprah's Bank Account (Lil Yachty & DaBaby feat. Drake)	https://open.spotify.com/track/0LEFmgIj8ABU7CelzGh5Bs	2020	3	9	0.836	0.617	0.0534	0.319	138.066	206702	0.866
972	205	Roadrunner	https://open.spotify.com/track/0BwO44CBPFWxAIO5ZbPf3N	2020	9	10	0.804	0.606	0.242	0.111	99.024	149028	0.247
973	368	Give No Fxk	https://open.spotify.com/track/6ZelF5APDN5r6XnFqcnvWR	2020	2	14	0.904	0.627	0.222	0.0923	145.976	224243	0.236
974	10	Come Around Me	https://open.spotify.com/track/2o9LAypwGH4ctV0i9boo6d	2020	2	14	0.648	0.681	0.0378	0.0971	157.941	200773	0.767
975	10	Habitual	https://open.spotify.com/track/40qyPyljksBEqlNw5sW37T	2020	2	14	0.764	0.443	0.0439	0.0749	138.999	168200	0.63
976	10	All Around Me	https://open.spotify.com/track/5Py8zRKGkZvgHniVVtvNCN	2020	2	14	0.566	0.438	0.0367	0.212	117.127	136907	0.692
977	10	Get Me (feat. Kehlani)	https://open.spotify.com/track/5VwwpU7KsLhgfbMEecedhJ	2020	2	14	0.832	0.508	0.149	0.107	109.352	185427	0.75
978	10	Second Emotion (feat. Travis Scott)	https://open.spotify.com/track/1PnAx788sAvcI3ZxTlEyX8	2020	2	14	0.796	0.777	0.0567	0.095	141.97	202720	0.96
979	10	Running Over (feat. Lil Dicky)	https://open.spotify.com/track/75nKBP8jQu681pTNCtrEnn	2020	2	14	0.774	0.603	0.0591	0.0869	149.982	179627	0.977
980	10	Available	https://open.spotify.com/track/1b6tPXXCV2fSNtR3SKWUQA	2020	2	14	0.702	0.608	0.0359	0.129	75.012	195333	0.597
981	97	Breathe Deeper	https://open.spotify.com/track/3LbZIhU0smEU5SUnxod4j4	2020	2	14	0.664	0.848	0.0322	0.172	104.998	372867	0.502
982	10	Changes	https://open.spotify.com/track/521Os1SMlxmsoevsqyjNmJ	2020	2	14	0.485	0.412	0.042	0.12	64.062	135493	0.612
983	10	Confirmation	https://open.spotify.com/track/60brXKLTC15vK0av5gIldm	2020	2	14	0.438	0.315	0.0375	0.151	190.064	170587	0.449
984	365	Mios mit Bars	https://open.spotify.com/track/7Ek9e3eIuktIFjpDRQfmHE	2020	2	13	0.677	0.633	0.0467	0.217	145.012	232147	0.404
985	10	E.T.A.	https://open.spotify.com/track/6PzOPrXx8tJEqace76yrv2	2020	2	14	0.465	0.494	0.066	0.127	127.298	176733	0.457
986	97	Borderline	https://open.spotify.com/track/5hM5arv9KDbCHS0k9uqwjr	2020	2	14	0.621	0.873	0.0369	0.0824	97.96	237800	0.873
987	10	Take It Out On Me	https://open.spotify.com/track/39nTNk5MfyiiRupTwn1iyC	2020	2	14	0.772	0.616	0.102	0.104	129.967	178013	0.279
988	283	Might Not Give Up (feat. Young Thug)	https://open.spotify.com/track/4l2rsMfr20dj6nf6i6F3Y8	2020	2	14	0.687	0.592	0.224	0.279	178.83	225266	0.246
989	10	That's What Love Is	https://open.spotify.com/track/2hLu8L8SNfCN4yKyPdX0h3	2020	2	14	0.639	0.437	0.0355	0.12	147.575	165120	0.751
990	97	One More Year	https://open.spotify.com/track/5ozqshq2dtU7SYCpCBu0NE	2020	2	14	0.602	0.88	0.0354	0.284	114.009	324013	0.493
991	97	Lost In Yesterday	https://open.spotify.com/track/5JWPUEov2wlX7c0jhYZpeB	2020	2	14	0.569	0.84	0.118	0.0995	183.059	249587	0.749
992	10	At Least For Now	https://open.spotify.com/track/6VLkgf5YmLixsabdqiCVGU	2020	2	14	0.375	0.304	0.0325	0.196	83.832	149653	0.295
993	106	Fake	https://open.spotify.com/track/4Gt2kh3QbAGU6yquOWn4aW	2020	10	13	0.703	0.657	0.0783	0.093	82.96	146375	0.455
994	377	Someone Like You	https://open.spotify.com/track/4kflIGfjdZJW4ot2ioixTB	2011	1	24	0.556	0.319	0.0281	0.0996	135.187	285240	0.294
995	337	Hit Different	https://open.spotify.com/track/7Bar1kLTmsRmH6FCKKMEyU	2020	9	4	0.679	0.516	0.0452	0.0965	120.074	202008	0.716
996	130	Del Mar	https://open.spotify.com/track/5cpJFiNwYyWwFLH0V6B3N8	2020	9	4	0.759	0.636	0.0369	0.166	109.976	214507	0.536
997	205	Fuckst mich nur ab	https://open.spotify.com/track/4iD5KYizD5e0KrCsk58P2r	2020	9	10	0.817	0.468	0.287	0.0905	104.875	182931	0.237
998	325	Lithuania (feat. Travis Scott)	https://open.spotify.com/track/4VLTxHOyFX5FRtkpsFm5Pc	2020	9	4	0.676	0.82	0.0554	0.615	152.028	199250	0.618
999	344	Tap In (feat. Post Malone, DaBaby & Jack Harlow)	https://open.spotify.com/track/5woaU1FNkqCwg6WzWiQPW5	2020	8	28	0.948	0.63	0.219	0.0737	100.032	253569	0.425
1000	91	Hate The Way (feat. blackbear)	https://open.spotify.com/track/3QGppKBPd9gHOgHJzRbVIw	2020	10	16	0.569	0.865	0.266	0.312	82.011	214363	0.361
1001	378	Let Me Love You Like A Woman	https://open.spotify.com/track/4HvE2E9rXJDcQhE4YfeNuG	2020	10	16	0.303	0.249	0.111	0.117	66.932	200661	0.131
1002	26	Darkness	https://open.spotify.com/track/5SiZJoLXp3WOl3J4C8IK0d	2020	1	17	0.671	0.623	0.308	0.643	75.055	337147	0.195
1003	26	You Gon’ Learn (feat. Royce Da 5'9" & White Gold)	https://open.spotify.com/track/0GQ5bFTVFFKpwNPc7KwQnB	2020	1	17	0.68	0.82	0.151	0.597	140.033	234653	0.243
1004	26	Unaccommodating (feat. Young M.A)	https://open.spotify.com/track/0q2vG0UVuy6ajjcpkQHdZM	2020	1	17	0.852	0.752	0.0597	0.394	89.95	216600	0.389
1005	273	Blue World	https://open.spotify.com/track/2hwOoMtWPtTSSn6WHV7Vp5	2020	1	17	0.742	0.553	0.419	0.0694	84.931	209440	0.508
1006	26	Leaving Heaven (feat. Skylar Grey)	https://open.spotify.com/track/5CpsIb7SMFHjmAG8RvIWfq	2020	1	17	0.661	0.748	0.206	0.254	171.983	265947	0.509
1007	26	In Too Deep	https://open.spotify.com/track/7Dj2wqPYXfSRFwa6qyOztr	2020	1	17	0.72	0.767	0.214	0.202	88.966	194707	0.595
1008	26	Premonition - Intro	https://open.spotify.com/track/7ccTcabbJlCJiIqtrSSwBk	2020	1	17	0.847	0.637	0.367	0.382	165.979	173893	0.511
1009	273	I Can See	https://open.spotify.com/track/3R8CyhJfVjvgIROd5RSGhQ	2020	1	17	0.699	0.503	0.0882	0.0996	114.86	220853	0.0546
1010	273	Hand Me Downs	https://open.spotify.com/track/2Yv2mHzr5AQavVdwQjEokV	2020	1	17	0.677	0.33	0.149	0.064	68.985	298440	0.336
1011	26	No Regrets (feat. Don Toliver)	https://open.spotify.com/track/1lO9CZo6eDrOy0S7khgryG	2020	1	17	0.756	0.747	0.046	0.588	134.935	200947	0.0687
1012	273	Complicated	https://open.spotify.com/track/3WfSNAoj2D8C9noPSGZZFM	2020	1	17	0.831	0.36	0.052	0.0703	75.014	232212	0.601
1013	26	Lock It Up (feat. Anderson .Paak)	https://open.spotify.com/track/1qwMkkRiD5jqLeUUjfgblh	2020	1	17	0.848	0.745	0.221	0.0796	137.024	170227	0.516
1014	26	Marsh	https://open.spotify.com/track/34d7sGX6WUqq8f04e7CSNF	2020	1	17	0.871	0.493	0.205	0.385	144.989	200573	0.0495
1015	26	Stepdad	https://open.spotify.com/track/3QVHSV8YKYq4L8tI5rnFgj	2020	1	17	0.779	0.805	0.178	0.321	145.68	213413	0.557
1016	26	Yah Yah (feat. Royce Da 5'9", Black Thought, Q-Tip & Denaun)	https://open.spotify.com/track/5mZXWEH2eh8zMZGCxT5aW0	2020	1	17	0.458	0.966	0.384	0.11	183.586	286960	0.356
1017	26	Never Love Again	https://open.spotify.com/track/40YbWniIEmqy6s58fYXLUh	2020	1	17	0.747	0.899	0.246	0.486	92.029	177547	0.581
1018	273	Woods	https://open.spotify.com/track/3Qa944OTMZkg8DHjET8JQv	2020	1	17	0.779	0.362	0.0474	0.111	85.011	286387	0.46
1019	26	Farewell	https://open.spotify.com/track/74gykWHknHDrg4eMdcmdRq	2020	1	17	0.89	0.664	0.106	0.257	93.007	247733	0.467
1020	273	Everybody	https://open.spotify.com/track/1OuN92HcVG6NVpWbeESNB3	2020	1	17	0.875	0.599	0.138	0.113	152.061	256507	0.112
1021	26	Alfred - Interlude	https://open.spotify.com/track/4EmunTy7kNBYQivOa8F6b8	2020	1	17	0.429	0.231	0.402	0.279	74.545	30133	0.914
1022	26	Little Engine	https://open.spotify.com/track/4qNWEOMyexn7b8Icyk29t9	2020	1	17	0.769	0.811	0.228	0.0451	155.081	177293	0.76
1023	26	I Will (feat. KXNG Crooked, Royce Da 5'9" & Joell Ortiz)	https://open.spotify.com/track/3CJbxqRQ0JNCqboWDNUUeX	2020	1	17	0.635	0.543	0.067	0.272	98.743	303000	0.036
1024	38	Still Learning	https://open.spotify.com/track/2Mfv5HaqnI18Q9JRv9hqnn	2020	1	17	0.708	0.661	0.0546	0.113	102.046	211784	0.317
1025	273	Surf	https://open.spotify.com/track/1kwnxJNVl7cwcU98RvMBaR	2020	1	17	0.828	0.182	0.166	0.15	147.279	330507	0.231
1026	273	That's On Me	https://open.spotify.com/track/0udOCZp7yk0Ml92C0k8H8D	2020	1	17	0.583	0.499	0.0261	0.33	155.199	217868	0.342
1027	273	Once A Day	https://open.spotify.com/track/26G5nmIx7Yvq79bIIluyZV	2020	1	17	0.762	0.054	0.0503	0.124	96.838	160267	0.339
1028	141	Big Drip	https://open.spotify.com/track/4qOesAYiMiMFiZrn2wfkl6	2020	4	24	0.791	0.535	0.311	0.129	158.922	173785	0.443
1029	273	Hands	https://open.spotify.com/track/6CrnvqCxBKVWahSiQwOesM	2020	1	17	0.739	0.627	0.171	0.159	74.962	199981	0.542
1030	379	Dans l'espace (feat. Heuss l'Enfoiré)	https://open.spotify.com/track/2KAkkba3PaYFegfmYpUITv	2020	1	17	0.916	0.57	0.18	0.0851	110.05	169702	0.7
1031	380	Blanche	https://open.spotify.com/track/5GyyPRvEwdI4wJSUbzxHQv	2020	1	16	0.776	0.713	0.143	0.306	127.987	193453	0.551
1032	1	Alone Again	https://open.spotify.com/track/6b5P51m8xx2XA6U7sdNZ5E	2020	3	20	0.218	0.652	0.0641	0.172	65.375	250053	0.0599
1033	1	Scared To Live	https://open.spotify.com/track/4BGZF4oLbTL0pWm7C18pbv	2020	3	20	0.504	0.498	0.0499	0.0929	87.221	191307	0.196
1034	1	Too Late	https://open.spotify.com/track/2K9Ovn1o2bTGqbsABGC6m3	2020	3	20	0.638	0.863	0.132	0.685	120.077	239973	0.226
1035	1	Snowchild	https://open.spotify.com/track/3WlbeuhfRSqU7ylK2Ui5U7	2020	3	20	0.55	0.611	0.137	0.121	148.062	247187	0.243
1036	1	Faith	https://open.spotify.com/track/3orEOtd8CPL8GFlpRpKuoE	2020	3	20	0.375	0.605	0.0729	0.147	175.946	283227	0.128
1037	1	Escape From LA	https://open.spotify.com/track/1sOW4PuG5X3Ie3EXUhAopJ	2020	3	20	0.404	0.524	0.0593	0.199	145.74	355960	0.168
1038	1	Repeat After Me (Interlude)	https://open.spotify.com/track/40U8d12pC5UHqmHwXjHjjl	2020	3	20	0.555	0.619	0.0314	0.0917	95.032	195813	0.141
1039	1	Until I Bleed Out	https://open.spotify.com/track/2BcnxwxBuar5wjCaLqm5N3	2020	3	20	0.245	0.394	0.0374	0.093	115.233	190173	0.148
1040	20	Rosa	https://open.spotify.com/track/464uJVLmr0fDJGXOnciaDe	2020	3	19	0.651	0.561	0.25	0.435	175.992	189827	0.369
1041	20	Gris	https://open.spotify.com/track/1syf62zw48zu4FrPwMtDHk	2020	3	19	0.849	0.709	0.0794	0.329	93.06	176627	0.916
1042	20	Negro	https://open.spotify.com/track/2hsA9YWuF3C9Gosi4dpjJN	2020	3	19	0.795	0.911	0.0875	0.131	164.081	182093	0.8
1043	20	Verde	https://open.spotify.com/track/3HTbI3yUJQw3fP0Po8qLcD	2020	3	19	0.828	0.738	0.0516	0.0917	94.995	142547	0.818
1044	50	Baby Pluto	https://open.spotify.com/track/7hav1MHURQf5SAoPk0egqh	2020	3	6	0.772	0.634	0.212	0.432	160.052	210261	0.671
1045	13	Bichiyal	https://open.spotify.com/track/4j4w4CXm6BSr0s25wAWrrX	2020	2	29	0.737	0.766	0.0458	0.114	93.956	196500	0.662
1046	50	Lo Mein	https://open.spotify.com/track/6CUP2khYzdphXebxVTfPE3	2020	3	6	0.855	0.676	0.325	0.144	133.082	195299	0.509
1047	50	Futsal Shuffle 2020 - Bonus Track	https://open.spotify.com/track/2fOlBMkWR7lXJfqp5VTbDG	2020	3	6	0.879	0.448	0.222	0.224	136.985	198913	0.278
1048	20	Arcoíris	https://open.spotify.com/track/5zzbORcD0GwLY0wQHP1Xs1	2020	3	19	0.731	0.787	0.0721	0.316	92.971	186693	0.393
1049	381	H <3 T E L	https://open.spotify.com/track/4n0Ke1KJsPHvd7xRoU29E2	2020	5	22	0.726	0.646	0.0977	0.112	134.999	163253	0.58
1050	13	25/8	https://open.spotify.com/track/4NqQaovM14WR2hNPMFxgjb	2020	2	29	0.761	0.732	0.0549	0.0716	151.982	243276	0.542
1051	359	Se Me Olvidó	https://open.spotify.com/track/5Xitt5a5uLQ1QtYdFxmi9e	2020	5	29	0.65	0.558	0.0309	0.303	141.82	159533	0.725
1052	382	B.S. (feat. H.E.R.)	https://open.spotify.com/track/63wx9vdskaXbYxyDx4oJCZ	2020	3	6	0.617	0.525	0.12	0.135	135.781	212867	0.377
1053	13	Soliá	https://open.spotify.com/track/7sOfmPd18RWp3FoCzpa7Kw	2020	2	29	0.71	0.81	0.0854	0.154	92.041	159282	0.184
1054	13	Está Cabrón Ser Yo	https://open.spotify.com/track/4saHEjXw7O1NXJOzBkUKKG	2020	2	29	0.81	0.854	0.254	0.123	154.083	227939	0.879
1055	383	René	https://open.spotify.com/track/6gm12xlADJwiBbHIKBXzGW	2020	2	27	0.486	0.388	0.126	0.196	90.471	457592	0.467
1056	50	That Way	https://open.spotify.com/track/5raTDhlbxFDnpn89bxArdH	2020	3	1	0.719	0.611	0.0403	0.155	129.962	212354	0.489
1057	13	Que Malo	https://open.spotify.com/track/53v2u51nq3CxiKUNphRzP1	2020	2	29	0.802	0.787	0.0599	0.153	94.026	167975	0.446
1058	13	La Zona	https://open.spotify.com/track/5kqNIqFjijuzvVLhuY9B8j	2020	2	29	0.762	0.801	0.0409	0.254	93.992	136893	0.81
1059	110	Heatin Up (feat. Gunna)	https://open.spotify.com/track/7KSSdFCBHCfq4KPzz78ghk	2020	2	28	0.788	0.436	0.364	0.0979	129.847	177314	0.341
1060	13	<3	https://open.spotify.com/track/4MZSqgwlE71CWZ6qQ3gkKm	2020	2	29	0.631	0.665	0.229	0.152	80.353	157967	0.634
1061	13	Una Vez	https://open.spotify.com/track/5J7teKIJGtqVypgYI6sqXj	2020	2	29	0.55	0.598	0.0831	0.0955	83.836	232496	0.543
1062	13	Hablamos Mañana	https://open.spotify.com/track/1V8XneTrX6kKeoxYbk4x6h	2020	2	29	0.683	0.677	0.0469	0.0998	156.019	240253	0.514
1063	337	The Other Side (from Trolls World Tour)	https://open.spotify.com/track/463PQggkmk5tTw8ug0ahOX	2020	2	26	0.76	0.607	0.0964	0.132	105.979	188187	0.709
1064	13	P FKN R	https://open.spotify.com/track/0fgsKar6uBO08vzHXkTjWi	2020	2	29	0.82	0.635	0.0772	0.244	101.024	258280	0.528
1065	13	Puesto Pa' Guerrial	https://open.spotify.com/track/5gCg2qMPzKkW4jS4dBKdDs	2020	2	29	0.867	0.686	0.221	0.1	139.968	190207	0.658
1066	110	Live Off My Closet (feat. Future)	https://open.spotify.com/track/6AyWdCtEn1DdxjnxPeojR2	2020	2	28	0.807	0.678	0.177	0.0986	147.004	173061	0.21
1067	110	Commercial (feat. Lil Uzi Vert)	https://open.spotify.com/track/3tDqEKKUs6gf8zMvSuLyLA	2020	2	28	0.892	0.486	0.384	0.146	120.998	214215	0.535
1068	302	Matrix	https://open.spotify.com/track/7ygVaACDENw4PgLbN1awFE	2020	2	24	0.789	0.509	0.291	0.272	114.957	183793	0.418
1069	347	100k Cash	https://open.spotify.com/track/033if6Adj8fwBYsQzHOfQ8	2020	2	27	0.701	0.714	0.524	0.0883	86.91	173353	0.604
1070	384	Drown (feat. Clinton Kane)	https://open.spotify.com/track/4RVtBlHFKj51Ipvpfv5ER4	2020	2	27	0.573	0.739	0.0581	0.175	120.077	174062	0.363
1071	4	Cool	https://open.spotify.com/track/2nMOodYNHBAQ3Kc1QNimZU	2020	3	27	0.469	0.785	0.0664	0.0931	89.719	209583	0.79
1072	4	Future Nostalgia	https://open.spotify.com/track/6zrJLhslleCHby0wbUnvVy	2020	3	27	0.875	0.813	0.0579	0.321	114.993	184882	0.859
1073	4	Love Again	https://open.spotify.com/track/4rPkN1FMzQyFNP9cLUGIIB	2020	3	27	0.659	0.667	0.0339	0.1	115.982	258004	0.468
1074	4	Good In Bed	https://open.spotify.com/track/6uAFJ75WDAoAPyCWJAtvks	2020	3	27	0.68	0.701	0.0917	0.168	94.06	218754	0.649
1075	4	Boys Will Be Boys	https://open.spotify.com/track/0vQcyuMEfRBd21ojZ62N2L	2020	3	27	0.768	0.486	0.0353	0.098	125.021	166266	0.519
1076	385	Auto Blu	https://open.spotify.com/track/2chEq24EHjyw9Zjmwq0hlS	2020	3	26	0.82	0.783	0.0621	0.0938	130.015	166087	0.653
1077	386	Du bist mein	https://open.spotify.com/track/719aY5gAzJbx2PHjyalZQu	2020	3	27	0.761	0.556	0.364	0.0976	187.81	160357	0.521
1078	98	Wildflower	https://open.spotify.com/track/353IDEfNzPJmGNRnOi5kJ1	2020	3	27	0.644	0.768	0.0455	0.469	108.992	220536	0.598
1079	141	Allein sein	https://open.spotify.com/track/2TrhpvxwuF6hrboTdRXwnS	2020	3	27	0.774	0.588	0.225	0.258	75.978	147353	0.392
1080	331	Break Up Song	https://open.spotify.com/track/3fEoJxnPpfIHwFHKiFtqbA	2020	11	6	0.631	0.75	0.0394	0.286	90.019	200293	0.593
1081	98	Teeth	https://open.spotify.com/track/26wLOs3ZuHJa2Ihhx6QIE6	2019	8	23	0.749	0.461	0.0416	0.0738	139.02	204887	0.42
1082	387	Daechwita	https://open.spotify.com/track/0H4ugk6rhnXmTl47ayy9O5	2020	5	22	0.65	0.827	0.0599	0.121	144.995	225668	0.223
1083	137	COOLER THAN A BITCH (feat. Roddy Ricch)	https://open.spotify.com/track/5LHHKZOwV8XW4LJP2C64mw	2020	5	22	0.837	0.586	0.0807	0.134	117.066	197000	0.618
1084	1	In Your Eyes (with Doja Cat) - Remix	https://open.spotify.com/track/0UnTaVkntyh3vqvLEvbpQx	2020	5	21	0.679	0.731	0.0319	0.0614	99.984	237912	0.727
1085	137	WUNNA	https://open.spotify.com/track/0y7Ao3CVJsyKFmqdjutiIF	2020	5	22	0.89	0.455	0.255	0.11	148.009	158240	0.313
1086	347	Komm Komm	https://open.spotify.com/track/3US6RbELvvrPw3DcvtJmis	2020	5	21	0.485	0.793	0.426	0.146	87.629	160667	0.371
1087	137	TOP FLOOR (feat. Travis Scott)	https://open.spotify.com/track/4YhJ3a6kBPGJWX4Ek77sDd	2020	5	22	0.823	0.504	0.16	0.417	112.985	169907	0.481
1088	229	Together	https://open.spotify.com/track/5id3Rqn7SPj1LX4FfY4nGz	2020	5	20	0.521	0.877	0.0683	0.0929	180.007	205208	0.199
1089	388	ANGELS & DEMONS	https://open.spotify.com/track/4GUj9MfPPkjpZskxb45uiX	2020	5	18	0.554	0.8	0.0395	0.629	115.056	160120	0.463
1090	123	Confía	https://open.spotify.com/track/5kbps8unnGH4raN5WduZuq	2020	5	21	0.722	0.757	0.0782	0.0657	167.987	202308	0.763
1091	153	Ew	https://open.spotify.com/track/3Nc86B5XmDlG1KuEeSLD8x	2020	9	25	0.48	0.373	0.0278	0.12	114.078	207710	0.0376
1092	85	Epidemic	https://open.spotify.com/track/170DNUSnQRp1tGpppF26pA	2020	9	25	0.616	0.617	0.52	0.177	175.929	177273	0.476
1093	179	bloody valentine	https://open.spotify.com/track/6mADjHs6FXdroPzEGW6KVJ	2020	9	25	0.533	0.858	0.0766	0.148	160.057	205159	0.506
1094	153	MODUS	https://open.spotify.com/track/5BibcbKVdZUuTttSG02JTp	2020	9	25	0.738	0.533	0.0492	0.115	132.008	207265	0.262
1095	153	Tick Tock	https://open.spotify.com/track/2Imn5iTu2xD3gXCqpBqubu	2020	9	25	0.781	0.613	0.0524	0.0976	80.53	132215	0.613
1096	153	Sanctuary	https://open.spotify.com/track/5F1ZmucV0uJY14y2dYKePa	2019	6	14	0.552	0.65	0.128	0.372	167.788	180019	0.316
1097	153	Pretty Boy (feat. Lil Yachty)	https://open.spotify.com/track/0f1G5SHFoFC9lO03gHCGVS	2020	9	25	0.656	0.776	0.0672	0.372	156.049	156759	0.638
1098	153	Afterthought	https://open.spotify.com/track/1ggYjU6zdFHgANcku82boU	2020	9	25	0.668	0.547	0.0353	0.0931	83.5	194871	0.192
1099	179	drunk face	https://open.spotify.com/track/3k0YJnqMKRZb8swo86vCkq	2020	9	25	0.691	0.77	0.0367	0.497	90.024	143901	0.344
1100	50	Silly Watch	https://open.spotify.com/track/5egD7A5x9AHdVO2fMo3Wbo	2020	3	6	0.903	0.535	0.286	0.0851	130.117	195692	0.157
1101	50	Homecoming	https://open.spotify.com/track/6vxU64pcIuQ38O015Zy4qj	2020	3	6	0.929	0.563	0.49	0.244	129.957	213885	0.353
1102	50	I'm Sorry	https://open.spotify.com/track/1xcOYJxDa5pObgxY1r0I9c	2020	3	6	0.858	0.547	0.29	0.104	128.02	211883	0.303
1103	50	Prices	https://open.spotify.com/track/4YcWzLSnGqLjSCycuSMHnn	2020	3	6	0.786	0.683	0.205	0.706	126.002	233333	0.57
1104	50	POP	https://open.spotify.com/track/1jDbQz6tr52WgScCTXMnaN	2020	3	6	0.741	0.599	0.419	0.785	139.891	227474	0.276
1105	50	Celebration Station	https://open.spotify.com/track/25B5fGr9K0VdZJiRFsnMO4	2020	3	6	0.748	0.771	0.15	0.135	142.086	195058	0.792
1106	50	Bigger Than Life	https://open.spotify.com/track/2oHDJHNondITqbl8xZ9vPn	2020	3	6	0.776	0.752	0.193	0.33	140.013	192705	0.716
1107	50	Venetia	https://open.spotify.com/track/3BYIzNZ3t9lRQCACXSMLrT	2020	3	6	0.775	0.757	0.175	0.148	142.933	188800	0.562
1108	50	You Better Move	https://open.spotify.com/track/6YAxCn4juTWn5hWl2hzHGw	2020	3	6	0.842	0.556	0.442	0.204	118.836	196639	0.306
1109	50	Chrome Heart Tags	https://open.spotify.com/track/46mT9NR7N9Zf5MolcrBgE3	2020	3	6	0.702	0.768	0.0669	0.105	70.056	212821	0.574
1110	50	Bust Me	https://open.spotify.com/track/4wBcaYqLPm7EtDVoJQORU4	2020	3	6	0.734	0.703	0.355	0.413	151.923	194452	0.608
1111	106	Who (feat. BTS)	https://open.spotify.com/track/2qG81jL9UIP54uS8gYyP4k	2020	3	6	0.632	0.345	0.0349	0.104	141.641	180413	0.0818
1112	50	Secure The Bag	https://open.spotify.com/track/7gHZGXSJzM29WA384suYY2	2020	3	6	0.803	0.719	0.392	0.425	129.945	238425	0.549
1113	389	Lettre à une femme	https://open.spotify.com/track/5HEtuK03ygUzqca6yfgOYZ	2020	3	7	0.487	0.398	0.0697	0.12	149.367	157766	0.905
1114	50	Urgency (feat. Syd)	https://open.spotify.com/track/5KlPy74NOEAt8jC3FYURnQ	2020	3	6	0.619	0.784	0.123	0.315	156.035	181161	0.471
1115	390	Angst	https://open.spotify.com/track/3R3rQ7FbTJdsi5She10YvI	2020	3	5	0.599	0.79	0.386	0.0778	100.119	201501	0.528
1116	137	SKYBOX	https://open.spotify.com/track/7GwYENSg87oERcW0Wacd6m	2020	3	6	0.779	0.707	0.16	0.0934	140.894	178097	0.343
1117	115	Young & Alive	https://open.spotify.com/track/5RsKelNxucrDxgMbZ3vd3W	2020	3	5	0.716	0.563	0.0425	0.119	86.005	160465	0.495
1118	106	i'm so tired...	https://open.spotify.com/track/4vjpLMyL3ZO6aphdYr8XYw	2020	3	6	0.599	0.733	0.203	0.242	102.211	162583	0.534
1119	19	I Fall Apart	https://open.spotify.com/track/75ZvA4QfFiZvzhj2xkaWAh	2016	12	9	0.556	0.538	0.0382	0.196	143.95	223347	0.291
1120	106	fuck, i'm lonely (with Anne-Marie)	https://open.spotify.com/track/09PGubKAMryhOWv1LHpCYz	2020	3	6	0.806	0.558	0.0683	0.0618	95.016	198973	0.678
1121	106	fuck, i'm lonely (with Anne-Marie) - from “13 Reasons Why: Season 3”	https://open.spotify.com/track/1DEkGXICCGLjDF7C65KBFw	2019	8	1	\N	\N	\N	\N	\N	\N	\N
1122	138	Never Really Over	https://open.spotify.com/track/5PYQUBXc7NYeI1obMKSJK0	2019	5	31	0.77	0.882	0.0602	0.316	99.991	223523	0.385
1123	96	Stupid Again	https://open.spotify.com/track/1fPnUpoXCpD2NDI4vPVeLw	2020	4	10	0.775	0.823	0.0635	0.309	120.059	174848	0.65
1124	205	Shotz Fired	https://open.spotify.com/track/0dy5NFDnx5fuZvE8ZXEX35	2020	4	9	0.839	0.594	0.139	0.165	76.007	179844	0.58
1125	284	BaeBae	https://open.spotify.com/track/1yYBOIXO2H9LDqEPui42GM	2020	4	9	0.628	0.712	0.156	0.156	86.627	167827	0.45
1126	13	SI ELLA SALE	https://open.spotify.com/track/1zaDh3qaGSeSmulNyWlUxm	2020	5	10	0.869	0.727	0.123	0.107	147.967	143240	0.92
1127	13	RONCA FREESTYLE	https://open.spotify.com/track/3XZeOzJ9tqnu58YP6cqApI	2020	5	10	0.856	0.656	0.131	0.0998	90.041	150060	0.586
1128	391	Zoo York (feat. Fivio Foreign & Pop Smoke)	https://open.spotify.com/track/3Ddny34bFoYBb8dIGq5lwp	2020	5	8	0.565	0.569	0.379	0.106	92.466	214825	0.303
1129	13	EN CASITA	https://open.spotify.com/track/2DhNdoHxavs7Qtf5MnhZD0	2020	5	10	0.779	0.764	0.0938	0.0909	158.093	176440	0.675
1130	392	Can I	https://open.spotify.com/track/0uDdI4fAXCuNhQbmxENdsO	2020	5	8	0.574	0.791	0.11	0.0982	119.537	167810	0.612
1131	393	Máquina do Tempo	https://open.spotify.com/track/5oI9blwsXC8AkTWw6wASY8	2020	9	10	0.629	0.727	0.0499	0.138	149.978	230400	0.132
1132	205	Ihr Hobby	https://open.spotify.com/track/4aZfvvgfoSfmSZpfwQYzC0	2020	9	10	0.774	0.814	0.0584	0.118	109.019	185330	0.254
1133	394	Donuts	https://open.spotify.com/track/2nNGV59DJJwk7D5ImGf6uc	2020	2	13	0.784	0.703	0.236	0.0754	141.035	162938	0.556
1134	284	Zu Ende	https://open.spotify.com/track/0Vl4eICpXMjtiK0RhdaWov	2020	1	23	0.707	0.747	0.279	0.183	80.025	197861	0.491
1135	18	B.I.T.C.H.	https://open.spotify.com/track/06scTb0zbkxYNgpAB3J9fN	2020	1	24	0.742	0.731	0.306	0.131	174.019	183143	0.547
1136	395	Bi Sonraki Hayatımda Gel	https://open.spotify.com/track/7BjmOMyfT4PBKbZuSCwWPc	2020	8	28	0.933	0.448	0.136	0.104	103.981	167350	0.737
1137	50	Bean (Kobe) [feat. Chief Keef]	https://open.spotify.com/track/0IpnZchq8ek2A6pGEP2Qb1	2020	3	13	0.733	0.567	0.319	0.382	75.491	238816	0.319
1138	50	Yessirskiii	https://open.spotify.com/track/59JWp4PjZ9TRM8cmtaDYB1	2020	3	13	0.895	0.739	0.283	0.102	140.007	219340	0.763
1139	86	Cardigan	https://open.spotify.com/track/0Li1OuXXfi7950ilZUFGkF	2020	3	13	0.747	0.497	0.0401	0.138	142.046	158709	0.0663
1140	50	Lotus	https://open.spotify.com/track/4SnlSaLJJ7reJMCHM5YUuX	2020	3	13	0.802	0.748	0.207	0.165	150.063	193861	0.516
1141	50	Leaders (feat. NAV)	https://open.spotify.com/track/4D7NrSeqkTarBrJ80b2sBc	2020	3	13	0.95	0.654	0.307	0.138	132.936	194844	0.886
1142	50	Strawberry Peels (feat. Young Thug & Gunna)	https://open.spotify.com/track/4lAQfuREAHG8IC0PiiigBt	2020	3	13	0.862	0.65	0.355	0.568	131.194	115350	0.658
1143	50	Wassup (feat. Future)	https://open.spotify.com/track/19Ec2gbNtQTE44IizcPjtD	2020	3	13	0.762	0.622	0.223	0.145	130.019	193314	0.626
1144	50	Moon Relate	https://open.spotify.com/track/4sWGHlZGM1XA7TyWdtBAbA	2020	3	13	0.867	0.768	0.0791	0.254	102.021	181826	0.34
1145	299	Black And White	https://open.spotify.com/track/7rpNuuoMbid56XkDsx2FjE	2020	3	13	0.443	0.582	0.0482	0.127	147.589	193090	0.239
1146	50	Trap This Way (This Way)	https://open.spotify.com/track/7vTspUAmMKFkUpKL9HLZNL	2020	3	13	0.71	0.586	0.381	0.193	175.987	185439	0.207
1147	50	Got The Guap (feat. Young Thug)	https://open.spotify.com/track/1HF6P40Z7nfExGaB1Gk99v	2020	3	13	0.837	0.601	0.198	0.0928	142.977	176756	0.749
1148	50	I Can Show You	https://open.spotify.com/track/0AhJag7VI8uFf3mJFsTwvf	2020	3	13	0.817	0.656	0.277	0.115	139.915	120076	0.314
1149	7	Bad Child	https://open.spotify.com/track/1qCmZnC1FUpNgOydIzqIPC	2020	3	12	0.756	0.553	0.0343	0.158	117.992	221467	0.597
1150	141	Bad Girls, Good Vibes	https://open.spotify.com/track/7IxGslFZA5QhgXbUsDmcjf	2020	3	13	0.826	0.368	0.133	0.0914	127.977	107446	0.158
1151	293	Lion King On Ice	https://open.spotify.com/track/1ZvBVbsaNqHEP6ymXaPGlj	2020	7	22	0.732	0.663	0.192	0.115	139.964	210587	0.227
1152	293	t h e . c l i m b . b a c k	https://open.spotify.com/track/0FlfN5cbUUpIHCRH8X1M44	2020	7	22	0.618	0.632	0.346	0.353	81.446	306257	0.319
1153	347	Andere Welt	https://open.spotify.com/track/5PAAUJTKLT0nCmHUlLdPXb	2020	7	23	0.692	0.764	0.113	0.106	84.029	189686	0.564
1154	126	TELL ME WHY	https://open.spotify.com/track/3jlxX3VXPiY3lvBBbppQD3	2020	7	24	0.6	0.723	0.158	0.167	149.881	195268	0.463
1155	141	Shit Changed	https://open.spotify.com/track/3JDPPLA5oReVAkrEDcBllG	2020	10	2	0.824	0.528	0.175	0.104	157.005	183839	0.32
1156	364	Story of My Life	https://open.spotify.com/track/4nVBt6MZDDP6tRVdQTgxJg	2013	11	25	0.6	0.663	0.0477	0.119	121.07	245493	0.286
1157	396	Hit My Line	https://open.spotify.com/track/24FR8mXTaiGZPrxnkf1kcP	2020	7	24	0.62	0.786	0.167	0.46	164.057	265191	0.679
\.


--
-- Data for Name: weekly_ranks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weekly_ranks (week_num, song_id, artist_id, week_start_year, week_start_month, week_start_day, week_end_year, week_end_month, week_end_day, ranking) FROM stdin;
1	1	1	2020	4	3	2020	4	10	1
1	2	2	2020	4	3	2020	4	10	2
1	3	3	2020	4	3	2020	4	10	3
1	4	4	2020	4	3	2020	4	10	4
1	5	5	2020	4	3	2020	4	10	5
1	6	6	2020	4	3	2020	4	10	6
1	7	7	2020	4	3	2020	4	10	7
1	8	8	2020	4	3	2020	4	10	8
1	9	9	2020	4	3	2020	4	10	9
1	10	10	2020	4	3	2020	4	10	10
1	11	4	2020	4	3	2020	4	10	11
1	12	11	2020	4	3	2020	4	10	12
1	13	12	2020	4	3	2020	4	10	13
1	14	13	2020	4	3	2020	4	10	14
1	15	14	2020	4	3	2020	4	10	15
1	16	4	2020	4	3	2020	4	10	16
1	17	1	2020	4	3	2020	4	10	17
1	18	13	2020	4	3	2020	4	10	18
1	19	15	2020	4	3	2020	4	10	19
1	20	16	2020	4	3	2020	4	10	20
1	21	17	2020	4	3	2020	4	10	21
1	22	18	2020	4	3	2020	4	10	22
1	23	19	2020	4	3	2020	4	10	23
1	24	9	2020	4	3	2020	4	10	24
1	25	20	2020	4	3	2020	4	10	25
1	26	21	2020	4	3	2020	4	10	26
1	27	22	2020	4	3	2020	4	10	27
1	28	23	2020	4	3	2020	4	10	28
1	29	24	2020	4	3	2020	4	10	29
1	30	25	2020	4	3	2020	4	10	30
1	31	26	2020	4	3	2020	4	10	31
1	32	27	2020	4	3	2020	4	10	32
1	33	28	2020	4	3	2020	4	10	33
1	34	28	2020	4	3	2020	4	10	34
1	35	13	2020	4	3	2020	4	10	35
1	36	17	2020	4	3	2020	4	10	36
1	37	29	2020	4	3	2020	4	10	37
1	38	13	2020	4	3	2020	4	10	38
1	39	13	2020	4	3	2020	4	10	39
1	40	30	2020	4	3	2020	4	10	40
1	41	1	2020	4	3	2020	4	10	41
1	42	31	2020	4	3	2020	4	10	42
1	43	10	2020	4	3	2020	4	10	43
1	44	20	2020	4	3	2020	4	10	44
1	45	32	2020	4	3	2020	4	10	45
1	46	33	2020	4	3	2020	4	10	46
1	47	34	2020	4	3	2020	4	10	47
1	48	35	2020	4	3	2020	4	10	48
1	49	36	2020	4	3	2020	4	10	49
1	50	5	2020	4	3	2020	4	10	50
1	51	28	2020	4	3	2020	4	10	51
1	52	20	2020	4	3	2020	4	10	52
1	53	37	2020	4	3	2020	4	10	53
1	54	19	2020	4	3	2020	4	10	54
1	55	38	2020	4	3	2020	4	10	55
1	56	39	2020	4	3	2020	4	10	56
1	57	5	2020	4	3	2020	4	10	57
1	58	40	2020	4	3	2020	4	10	58
1	59	13	2020	4	3	2020	4	10	59
1	60	41	2020	4	3	2020	4	10	60
1	61	42	2020	4	3	2020	4	10	61
1	62	43	2020	4	3	2020	4	10	62
1	63	44	2020	4	3	2020	4	10	63
1	64	45	2020	4	3	2020	4	10	64
1	65	13	2020	4	3	2020	4	10	65
1	66	46	2020	4	3	2020	4	10	66
1	67	1	2020	4	3	2020	4	10	67
1	68	47	2020	4	3	2020	4	10	68
1	69	48	2020	4	3	2020	4	10	69
1	70	49	2020	4	3	2020	4	10	70
1	71	9	2020	4	3	2020	4	10	71
1	72	50	2020	4	3	2020	4	10	72
1	73	51	2020	4	3	2020	4	10	73
1	74	28	2020	4	3	2020	4	10	74
1	75	45	2020	4	3	2020	4	10	75
1	76	52	2020	4	3	2020	4	10	76
1	77	53	2020	4	3	2020	4	10	77
1	78	54	2020	4	3	2020	4	10	78
1	79	55	2020	4	3	2020	4	10	79
1	80	33	2020	4	3	2020	4	10	80
1	81	52	2020	4	3	2020	4	10	81
1	82	56	2020	4	3	2020	4	10	82
1	83	57	2020	4	3	2020	4	10	83
1	84	58	2020	4	3	2020	4	10	84
1	85	28	2020	4	3	2020	4	10	85
1	86	50	2020	4	3	2020	4	10	86
1	87	59	2020	4	3	2020	4	10	87
1	88	10	2020	4	3	2020	4	10	88
1	89	60	2020	4	3	2020	4	10	89
1	90	61	2020	4	3	2020	4	10	90
1	91	61	2020	4	3	2020	4	10	91
1	92	1	2020	4	3	2020	4	10	92
1	93	62	2020	4	3	2020	4	10	93
1	12	21	2020	4	3	2020	4	10	94
1	94	19	2020	4	3	2020	4	10	95
1	95	63	2020	4	3	2020	4	10	96
1	96	50	2020	4	3	2020	4	10	97
1	97	64	2020	4	3	2020	4	10	98
1	98	65	2020	4	3	2020	4	10	99
1	99	21	2020	4	3	2020	4	10	100
1	100	66	2020	4	3	2020	4	10	101
1	101	67	2020	4	3	2020	4	10	102
1	102	27	2020	4	3	2020	4	10	103
1	103	68	2020	4	3	2020	4	10	104
1	104	69	2020	4	3	2020	4	10	105
1	105	7	2020	4	3	2020	4	10	106
1	106	66	2020	4	3	2020	4	10	107
1	107	70	2020	4	3	2020	4	10	108
1	108	48	2020	4	3	2020	4	10	109
1	109	70	2020	4	3	2020	4	10	110
1	110	32	2020	4	3	2020	4	10	111
1	111	71	2020	4	3	2020	4	10	112
1	112	72	2020	4	3	2020	4	10	113
1	113	54	2020	4	3	2020	4	10	114
1	114	19	2020	4	3	2020	4	10	115
1	115	73	2020	4	3	2020	4	10	116
1	116	74	2020	4	3	2020	4	10	117
1	117	17	2020	4	3	2020	4	10	118
1	118	38	2020	4	3	2020	4	10	119
1	119	75	2020	4	3	2020	4	10	120
1	120	76	2020	4	3	2020	4	10	121
1	121	20	2020	4	3	2020	4	10	122
1	122	20	2020	4	3	2020	4	10	123
1	123	45	2020	4	3	2020	4	10	124
1	124	77	2020	4	3	2020	4	10	125
1	125	78	2020	4	3	2020	4	10	126
1	126	79	2020	4	3	2020	4	10	127
1	127	16	2020	4	3	2020	4	10	128
1	128	80	2020	4	3	2020	4	10	129
1	129	81	2020	4	3	2020	4	10	130
1	130	67	2020	4	3	2020	4	10	131
1	131	2	2020	4	3	2020	4	10	132
1	132	32	2020	4	3	2020	4	10	133
1	133	82	2020	4	3	2020	4	10	134
1	134	83	2020	4	3	2020	4	10	135
1	135	20	2020	4	3	2020	4	10	136
1	136	13	2020	4	3	2020	4	10	137
1	137	51	2020	4	3	2020	4	10	138
1	138	45	2020	4	3	2020	4	10	139
1	139	60	2020	4	3	2020	4	10	140
1	140	33	2020	4	3	2020	4	10	141
1	141	84	2020	4	3	2020	4	10	142
1	142	4	2020	4	3	2020	4	10	143
1	143	85	2020	4	3	2020	4	10	144
1	144	86	2020	4	3	2020	4	10	145
1	145	19	2020	4	3	2020	4	10	146
1	146	87	2020	4	3	2020	4	10	147
1	147	13	2020	4	3	2020	4	10	148
1	148	88	2020	4	3	2020	4	10	149
1	149	89	2020	4	3	2020	4	10	150
1	150	48	2020	4	3	2020	4	10	151
1	151	90	2020	4	3	2020	4	10	152
1	152	91	2020	4	3	2020	4	10	153
1	153	51	2020	4	3	2020	4	10	154
1	154	28	2020	4	3	2020	4	10	155
1	155	92	2020	4	3	2020	4	10	156
1	156	37	2020	4	3	2020	4	10	157
1	157	93	2020	4	3	2020	4	10	158
1	158	56	2020	4	3	2020	4	10	159
1	159	94	2020	4	3	2020	4	10	160
1	160	89	2020	4	3	2020	4	10	161
1	161	32	2020	4	3	2020	4	10	162
1	162	70	2020	4	3	2020	4	10	163
1	163	95	2020	4	3	2020	4	10	164
1	164	96	2020	4	3	2020	4	10	165
1	165	56	2020	4	3	2020	4	10	166
1	166	97	2020	4	3	2020	4	10	167
1	167	4	2020	4	3	2020	4	10	168
1	168	89	2020	4	3	2020	4	10	169
1	169	98	2020	4	3	2020	4	10	170
1	170	99	2020	4	3	2020	4	10	171
1	171	100	2020	4	3	2020	4	10	172
1	172	13	2020	4	3	2020	4	10	173
1	173	101	2020	4	3	2020	4	10	174
1	174	102	2020	4	3	2020	4	10	175
1	175	21	2020	4	3	2020	4	10	176
1	176	103	2020	4	3	2020	4	10	177
1	177	104	2020	4	3	2020	4	10	178
1	178	98	2020	4	3	2020	4	10	179
1	179	105	2020	4	3	2020	4	10	180
1	180	1	2020	4	3	2020	4	10	181
1	181	106	2020	4	3	2020	4	10	182
1	182	104	2020	4	3	2020	4	10	183
1	183	29	2020	4	3	2020	4	10	184
1	184	19	2020	4	3	2020	4	10	185
1	185	22	2020	4	3	2020	4	10	186
1	186	2	2020	4	3	2020	4	10	187
1	187	63	2020	4	3	2020	4	10	188
1	188	107	2020	4	3	2020	4	10	189
1	189	108	2020	4	3	2020	4	10	190
1	190	109	2020	4	3	2020	4	10	191
1	191	110	2020	4	3	2020	4	10	192
1	192	70	2020	4	3	2020	4	10	193
1	193	111	2020	4	3	2020	4	10	194
1	194	112	2020	4	3	2020	4	10	195
1	195	113	2020	4	3	2020	4	10	196
1	196	50	2020	4	3	2020	4	10	197
1	197	114	2020	4	3	2020	4	10	198
1	198	4	2020	4	3	2020	4	10	199
1	199	115	2020	4	3	2020	4	10	200
2	1	1	2020	6	12	2020	6	19	1
2	200	27	2020	6	12	2020	6	19	2
2	3	3	2020	6	12	2020	6	19	3
2	201	52	2020	6	12	2020	6	19	4
2	6	6	2020	6	12	2020	6	19	5
2	2	2	2020	6	12	2020	6	19	6
2	99	21	2020	6	12	2020	6	19	7
2	4	4	2020	6	12	2020	6	19	8
2	202	116	2020	6	12	2020	6	19	9
2	68	47	2020	6	12	2020	6	19	10
2	7	7	2020	6	12	2020	6	19	11
2	11	4	2020	6	12	2020	6	19	12
2	8	8	2020	6	12	2020	6	19	13
2	203	117	2020	6	12	2020	6	19	14
2	15	14	2020	6	12	2020	6	19	15
2	204	63	2020	6	12	2020	6	19	16
2	205	118	2020	6	12	2020	6	19	17
2	5	5	2020	6	12	2020	6	19	18
2	62	43	2020	6	12	2020	6	19	19
2	206	118	2020	6	12	2020	6	19	20
2	10	10	2020	6	12	2020	6	19	21
2	21	17	2020	6	12	2020	6	19	22
2	12	11	2020	6	12	2020	6	19	23
2	207	119	2020	6	12	2020	6	19	24
2	13	12	2020	6	12	2020	6	19	25
2	30	25	2020	6	12	2020	6	19	26
2	208	39	2020	6	12	2020	6	19	27
2	209	120	2020	6	12	2020	6	19	28
2	23	19	2020	6	12	2020	6	19	29
2	9	9	2020	6	12	2020	6	19	30
2	17	1	2020	6	12	2020	6	19	31
2	210	66	2020	6	12	2020	6	19	32
2	211	121	2020	6	12	2020	6	19	33
2	158	56	2020	6	12	2020	6	19	34
2	36	17	2020	6	12	2020	6	19	35
2	20	16	2020	6	12	2020	6	19	36
2	19	15	2020	6	12	2020	6	19	37
2	212	52	2020	6	12	2020	6	19	38
2	213	33	2020	6	12	2020	6	19	39
2	18	13	2020	6	12	2020	6	19	40
2	29	24	2020	6	12	2020	6	19	41
2	214	68	2020	6	12	2020	6	19	42
2	82	56	2020	6	12	2020	6	19	43
2	26	21	2020	6	12	2020	6	19	44
2	14	13	2020	6	12	2020	6	19	45
2	165	56	2020	6	12	2020	6	19	46
2	215	110	2020	6	12	2020	6	19	47
2	27	22	2020	6	12	2020	6	19	48
2	24	9	2020	6	12	2020	6	19	49
2	216	122	2020	6	12	2020	6	19	50
2	37	29	2020	6	12	2020	6	19	51
2	217	123	2020	6	12	2020	6	19	52
2	137	51	2020	6	12	2020	6	19	53
2	218	86	2020	6	12	2020	6	19	54
2	219	124	2020	6	12	2020	6	19	55
2	33	28	2020	6	12	2020	6	19	56
2	54	19	2020	6	12	2020	6	19	57
2	220	125	2020	6	12	2020	6	19	58
2	25	20	2020	6	12	2020	6	19	59
2	221	126	2020	6	12	2020	6	19	60
2	110	32	2020	6	12	2020	6	19	61
2	151	90	2020	6	12	2020	6	19	62
2	57	5	2020	6	12	2020	6	19	63
2	116	74	2020	6	12	2020	6	19	64
2	222	2	2020	6	12	2020	6	19	65
2	48	35	2020	6	12	2020	6	19	66
2	47	34	2020	6	12	2020	6	19	67
2	34	28	2020	6	12	2020	6	19	68
2	51	28	2020	6	12	2020	6	19	69
2	31	26	2020	6	12	2020	6	19	70
2	69	48	2020	6	12	2020	6	19	71
2	16	4	2020	6	12	2020	6	19	72
2	223	35	2020	6	12	2020	6	19	73
2	224	127	2020	6	12	2020	6	19	74
2	225	9	2020	6	12	2020	6	19	75
2	226	27	2020	6	12	2020	6	19	76
2	227	128	2020	6	12	2020	6	19	77
2	58	40	2020	6	12	2020	6	19	78
2	40	30	2020	6	12	2020	6	19	79
2	81	52	2020	6	12	2020	6	19	80
2	64	45	2020	6	12	2020	6	19	81
2	53	37	2020	6	12	2020	6	19	82
2	228	129	2020	6	12	2020	6	19	83
2	22	18	2020	6	12	2020	6	19	84
2	45	32	2020	6	12	2020	6	19	85
2	229	84	2020	6	12	2020	6	19	86
2	122	20	2020	6	12	2020	6	19	87
2	230	48	2020	6	12	2020	6	19	88
2	44	20	2020	6	12	2020	6	19	89
2	231	130	2020	6	12	2020	6	19	90
2	56	39	2020	6	12	2020	6	19	91
2	93	62	2020	6	12	2020	6	19	92
2	232	131	2020	6	12	2020	6	19	93
2	95	63	2020	6	12	2020	6	19	94
2	35	13	2020	6	12	2020	6	19	95
2	83	57	2020	6	12	2020	6	19	96
2	233	92	2020	6	12	2020	6	19	97
2	63	44	2020	6	12	2020	6	19	98
2	94	19	2020	6	12	2020	6	19	99
2	107	70	2020	6	12	2020	6	19	100
2	234	132	2020	6	12	2020	6	19	101
2	74	28	2020	6	12	2020	6	19	102
2	75	45	2020	6	12	2020	6	19	103
2	52	20	2020	6	12	2020	6	19	104
2	235	133	2020	6	12	2020	6	19	105
2	236	134	2020	6	12	2020	6	19	106
2	77	53	2020	6	12	2020	6	19	107
2	237	135	2020	6	12	2020	6	19	108
2	70	49	2020	6	12	2020	6	19	109
2	238	32	2020	6	12	2020	6	19	110
2	109	70	2020	6	12	2020	6	19	111
2	39	13	2020	6	12	2020	6	19	112
2	239	136	2020	6	12	2020	6	19	113
2	150	48	2020	6	12	2020	6	19	114
2	12	21	2020	6	12	2020	6	19	115
2	240	137	2020	6	12	2020	6	19	116
2	103	68	2020	6	12	2020	6	19	117
2	115	73	2020	6	12	2020	6	19	118
2	123	45	2020	6	12	2020	6	19	119
2	43	10	2020	6	12	2020	6	19	120
2	104	69	2020	6	12	2020	6	19	121
2	241	66	2020	6	12	2020	6	19	122
2	242	138	2020	6	12	2020	6	19	123
2	73	51	2020	6	12	2020	6	19	124
2	128	80	2020	6	12	2020	6	19	125
2	138	45	2020	6	12	2020	6	19	126
2	111	71	2020	6	12	2020	6	19	127
2	50	5	2020	6	12	2020	6	19	128
2	38	13	2020	6	12	2020	6	19	129
2	243	139	2020	6	12	2020	6	19	130
2	244	48	2020	6	12	2020	6	19	131
2	96	50	2020	6	12	2020	6	19	132
2	79	55	2020	6	12	2020	6	19	133
2	157	93	2020	6	12	2020	6	19	134
2	76	52	2020	6	12	2020	6	19	135
2	106	66	2020	6	12	2020	6	19	136
2	118	38	2020	6	12	2020	6	19	137
2	245	85	2020	6	12	2020	6	19	138
2	246	140	2020	6	12	2020	6	19	139
2	108	48	2020	6	12	2020	6	19	140
2	247	19	2020	6	12	2020	6	19	141
2	248	110	2020	6	12	2020	6	19	142
2	249	141	2020	6	12	2020	6	19	143
2	250	13	2020	6	12	2020	6	19	144
2	155	92	2020	6	12	2020	6	19	145
2	91	61	2020	6	12	2020	6	19	146
2	178	98	2020	6	12	2020	6	19	147
2	87	59	2020	6	12	2020	6	19	148
2	49	36	2020	6	12	2020	6	19	149
2	102	27	2020	6	12	2020	6	19	150
2	174	102	2020	6	12	2020	6	19	151
2	251	142	2020	6	12	2020	6	19	152
2	140	33	2020	6	12	2020	6	19	153
2	145	19	2020	6	12	2020	6	19	154
2	153	51	2020	6	12	2020	6	19	155
2	144	86	2020	6	12	2020	6	19	156
2	119	75	2020	6	12	2020	6	19	157
2	101	67	2020	6	12	2020	6	19	158
2	252	143	2020	6	12	2020	6	19	159
2	253	144	2020	6	12	2020	6	19	160
2	162	70	2020	6	12	2020	6	19	161
2	166	97	2020	6	12	2020	6	19	162
2	72	50	2020	6	12	2020	6	19	163
2	98	65	2020	6	12	2020	6	19	164
2	141	84	2020	6	12	2020	6	19	165
2	254	32	2020	6	12	2020	6	19	166
2	71	9	2020	6	12	2020	6	19	167
2	146	87	2020	6	12	2020	6	19	168
2	117	17	2020	6	12	2020	6	19	169
2	121	20	2020	6	12	2020	6	19	170
2	84	58	2020	6	12	2020	6	19	171
2	139	60	2020	6	12	2020	6	19	172
2	255	145	2020	6	12	2020	6	19	173
2	256	146	2020	6	12	2020	6	19	174
2	257	31	2020	6	12	2020	6	19	175
2	173	101	2020	6	12	2020	6	19	176
2	97	64	2020	6	12	2020	6	19	177
2	65	13	2020	6	12	2020	6	19	178
2	175	21	2020	6	12	2020	6	19	179
2	181	106	2020	6	12	2020	6	19	180
2	258	13	2020	6	12	2020	6	19	181
2	129	81	2020	6	12	2020	6	19	182
2	182	104	2020	6	12	2020	6	19	183
2	59	13	2020	6	12	2020	6	19	184
2	46	33	2020	6	12	2020	6	19	185
2	184	19	2020	6	12	2020	6	19	186
2	259	147	2020	6	12	2020	6	19	187
2	131	2	2020	6	12	2020	6	19	188
2	187	63	2020	6	12	2020	6	19	189
2	188	107	2020	6	12	2020	6	19	190
2	260	48	2020	6	12	2020	6	19	191
2	60	41	2020	6	12	2020	6	19	192
2	261	104	2020	6	12	2020	6	19	193
2	168	89	2020	6	12	2020	6	19	194
2	170	99	2020	6	12	2020	6	19	195
2	28	23	2020	6	12	2020	6	19	196
2	262	148	2020	6	12	2020	6	19	197
2	156	37	2020	6	12	2020	6	19	198
2	263	149	2020	6	12	2020	6	19	199
2	264	73	2020	6	12	2020	6	19	200
3	203	117	2020	4	24	2020	5	1	1
3	1	1	2020	4	24	2020	5	1	2
3	3	3	2020	4	24	2020	5	1	3
3	2	2	2020	4	24	2020	5	1	4
3	6	6	2020	4	24	2020	5	1	5
3	4	4	2020	4	24	2020	5	1	6
3	165	56	2020	4	24	2020	5	1	7
3	5	5	2020	4	24	2020	5	1	8
3	7	7	2020	4	24	2020	5	1	9
3	230	48	2020	4	24	2020	5	1	10
3	8	8	2020	4	24	2020	5	1	11
3	9	9	2020	4	24	2020	5	1	12
3	158	56	2020	4	24	2020	5	1	13
3	200	27	2020	4	24	2020	5	1	14
3	11	4	2020	4	24	2020	5	1	15
3	15	14	2020	4	24	2020	5	1	16
3	82	56	2020	4	24	2020	5	1	17
3	10	10	2020	4	24	2020	5	1	18
3	12	11	2020	4	24	2020	5	1	19
3	13	12	2020	4	24	2020	5	1	20
3	22	18	2020	4	24	2020	5	1	21
3	21	17	2020	4	24	2020	5	1	22
3	24	9	2020	4	24	2020	5	1	23
3	18	13	2020	4	24	2020	5	1	24
3	19	15	2020	4	24	2020	5	1	25
3	23	19	2020	4	24	2020	5	1	26
3	14	13	2020	4	24	2020	5	1	27
3	68	47	2020	4	24	2020	5	1	28
3	20	16	2020	4	24	2020	5	1	29
3	30	25	2020	4	24	2020	5	1	30
3	17	1	2020	4	24	2020	5	1	31
3	16	4	2020	4	24	2020	5	1	32
3	26	21	2020	4	24	2020	5	1	33
3	29	24	2020	4	24	2020	5	1	34
3	116	74	2020	4	24	2020	5	1	35
3	27	22	2020	4	24	2020	5	1	36
3	33	28	2020	4	24	2020	5	1	37
3	25	20	2020	4	24	2020	5	1	38
3	36	17	2020	4	24	2020	5	1	39
3	47	34	2020	4	24	2020	5	1	40
3	40	30	2020	4	24	2020	5	1	41
3	37	29	2020	4	24	2020	5	1	42
3	34	28	2020	4	24	2020	5	1	43
3	265	89	2020	4	24	2020	5	1	44
3	31	26	2020	4	24	2020	5	1	45
3	266	56	2020	4	24	2020	5	1	46
3	45	32	2020	4	24	2020	5	1	47
3	48	35	2020	4	24	2020	5	1	48
3	62	43	2020	4	24	2020	5	1	49
3	51	28	2020	4	24	2020	5	1	50
3	267	56	2020	4	24	2020	5	1	51
3	57	5	2020	4	24	2020	5	1	52
3	44	20	2020	4	24	2020	5	1	53
3	35	13	2020	4	24	2020	5	1	54
3	53	37	2020	4	24	2020	5	1	55
3	151	90	2020	4	24	2020	5	1	56
3	54	19	2020	4	24	2020	5	1	57
3	39	13	2020	4	24	2020	5	1	58
3	69	48	2020	4	24	2020	5	1	59
3	43	10	2020	4	24	2020	5	1	60
3	38	13	2020	4	24	2020	5	1	61
3	58	40	2020	4	24	2020	5	1	62
3	268	150	2020	4	24	2020	5	1	63
3	52	20	2020	4	24	2020	5	1	64
3	56	39	2020	4	24	2020	5	1	65
3	63	44	2020	4	24	2020	5	1	66
3	111	71	2020	4	24	2020	5	1	67
3	64	45	2020	4	24	2020	5	1	68
3	28	23	2020	4	24	2020	5	1	69
3	73	51	2020	4	24	2020	5	1	70
3	46	33	2020	4	24	2020	5	1	71
3	61	42	2020	4	24	2020	5	1	72
3	50	5	2020	4	24	2020	5	1	73
3	218	86	2020	4	24	2020	5	1	74
3	70	49	2020	4	24	2020	5	1	75
3	55	38	2020	4	24	2020	5	1	76
3	71	9	2020	4	24	2020	5	1	77
3	110	32	2020	4	24	2020	5	1	78
3	98	65	2020	4	24	2020	5	1	79
3	74	28	2020	4	24	2020	5	1	80
3	83	57	2020	4	24	2020	5	1	81
3	60	41	2020	4	24	2020	5	1	82
3	81	52	2020	4	24	2020	5	1	83
3	72	50	2020	4	24	2020	5	1	84
3	269	141	2020	4	24	2020	5	1	85
3	77	53	2020	4	24	2020	5	1	86
3	79	55	2020	4	24	2020	5	1	87
3	42	31	2020	4	24	2020	5	1	88
3	211	121	2020	4	24	2020	5	1	89
3	75	45	2020	4	24	2020	5	1	90
3	49	36	2020	4	24	2020	5	1	91
3	270	64	2020	4	24	2020	5	1	92
3	59	13	2020	4	24	2020	5	1	93
3	66	46	2020	4	24	2020	5	1	94
3	84	58	2020	4	24	2020	5	1	95
3	12	21	2020	4	24	2020	5	1	96
3	93	62	2020	4	24	2020	5	1	97
3	195	113	2020	4	24	2020	5	1	98
3	94	19	2020	4	24	2020	5	1	99
3	95	63	2020	4	24	2020	5	1	100
3	65	13	2020	4	24	2020	5	1	101
3	32	27	2020	4	24	2020	5	1	102
3	87	59	2020	4	24	2020	5	1	103
3	41	1	2020	4	24	2020	5	1	104
3	107	70	2020	4	24	2020	5	1	105
3	108	48	2020	4	24	2020	5	1	106
3	99	21	2020	4	24	2020	5	1	107
3	78	54	2020	4	24	2020	5	1	108
3	103	68	2020	4	24	2020	5	1	109
3	96	50	2020	4	24	2020	5	1	110
3	109	70	2020	4	24	2020	5	1	111
3	271	151	2020	4	24	2020	5	1	112
3	104	69	2020	4	24	2020	5	1	113
3	91	61	2020	4	24	2020	5	1	114
3	272	56	2020	4	24	2020	5	1	115
3	235	133	2020	4	24	2020	5	1	116
3	137	51	2020	4	24	2020	5	1	117
3	273	152	2020	4	24	2020	5	1	118
3	274	153	2020	4	24	2020	5	1	119
3	144	86	2020	4	24	2020	5	1	120
3	102	27	2020	4	24	2020	5	1	121
3	157	93	2020	4	24	2020	5	1	122
3	115	73	2020	4	24	2020	5	1	123
3	67	1	2020	4	24	2020	5	1	124
3	123	45	2020	4	24	2020	5	1	125
3	150	48	2020	4	24	2020	5	1	126
3	97	64	2020	4	24	2020	5	1	127
3	101	67	2020	4	24	2020	5	1	128
3	89	60	2020	4	24	2020	5	1	129
3	128	80	2020	4	24	2020	5	1	130
3	134	83	2020	4	24	2020	5	1	131
3	114	19	2020	4	24	2020	5	1	132
3	76	52	2020	4	24	2020	5	1	133
3	118	38	2020	4	24	2020	5	1	134
3	90	61	2020	4	24	2020	5	1	135
3	117	17	2020	4	24	2020	5	1	136
3	208	39	2020	4	24	2020	5	1	137
3	138	45	2020	4	24	2020	5	1	138
3	106	66	2020	4	24	2020	5	1	139
3	129	81	2020	4	24	2020	5	1	140
3	275	154	2020	4	24	2020	5	1	141
3	119	75	2020	4	24	2020	5	1	142
3	146	87	2020	4	24	2020	5	1	143
3	121	20	2020	4	24	2020	5	1	144
3	141	84	2020	4	24	2020	5	1	145
3	132	32	2020	4	24	2020	5	1	146
3	105	7	2020	4	24	2020	5	1	147
3	276	74	2020	4	24	2020	5	1	148
3	145	19	2020	4	24	2020	5	1	149
3	85	28	2020	4	24	2020	5	1	150
3	277	155	2020	4	24	2020	5	1	151
3	139	60	2020	4	24	2020	5	1	152
3	124	77	2020	4	24	2020	5	1	153
3	131	2	2020	4	24	2020	5	1	154
3	171	100	2020	4	24	2020	5	1	155
3	100	66	2020	4	24	2020	5	1	156
3	125	78	2020	4	24	2020	5	1	157
3	113	54	2020	4	24	2020	5	1	158
3	122	20	2020	4	24	2020	5	1	159
3	153	51	2020	4	24	2020	5	1	160
3	173	101	2020	4	24	2020	5	1	161
3	130	67	2020	4	24	2020	5	1	162
3	166	97	2020	4	24	2020	5	1	163
3	154	28	2020	4	24	2020	5	1	164
3	174	102	2020	4	24	2020	5	1	165
3	278	50	2020	4	24	2020	5	1	166
3	140	33	2020	4	24	2020	5	1	167
3	162	70	2020	4	24	2020	5	1	168
3	156	37	2020	4	24	2020	5	1	169
3	147	13	2020	4	24	2020	5	1	170
3	168	89	2020	4	24	2020	5	1	171
3	170	99	2020	4	24	2020	5	1	172
3	178	98	2020	4	24	2020	5	1	173
3	136	13	2020	4	24	2020	5	1	174
3	133	82	2020	4	24	2020	5	1	175
3	159	94	2020	4	24	2020	5	1	176
3	160	89	2020	4	24	2020	5	1	177
3	184	19	2020	4	24	2020	5	1	178
3	207	119	2020	4	24	2020	5	1	179
3	188	107	2020	4	24	2020	5	1	180
3	279	153	2020	4	24	2020	5	1	181
3	120	76	2020	4	24	2020	5	1	182
3	280	156	2020	4	24	2020	5	1	183
3	182	104	2020	4	24	2020	5	1	184
3	281	96	2020	4	24	2020	5	1	185
3	163	95	2020	4	24	2020	5	1	186
3	282	74	2020	4	24	2020	5	1	187
3	196	50	2020	4	24	2020	5	1	188
3	175	21	2020	4	24	2020	5	1	189
3	260	48	2020	4	24	2020	5	1	190
3	187	63	2020	4	24	2020	5	1	191
3	179	105	2020	4	24	2020	5	1	192
3	186	2	2020	4	24	2020	5	1	193
3	181	106	2020	4	24	2020	5	1	194
3	155	92	2020	4	24	2020	5	1	195
3	183	29	2020	4	24	2020	5	1	196
3	152	91	2020	4	24	2020	5	1	197
3	161	32	2020	4	24	2020	5	1	198
3	185	22	2020	4	24	2020	5	1	199
3	135	20	2020	4	24	2020	5	1	200
4	283	63	2020	10	30	2020	11	6	1
4	284	13	2020	10	30	2020	11	6	2
4	285	42	2020	10	30	2020	11	6	3
4	286	157	2020	10	30	2020	11	6	4
4	287	63	2020	10	30	2020	11	6	5
4	288	92	2020	10	30	2020	11	6	6
4	289	158	2020	10	30	2020	11	6	7
4	290	10	2020	10	30	2020	11	6	8
4	291	159	2020	10	30	2020	11	6	9
4	292	160	2020	10	30	2020	11	6	10
4	1	1	2020	10	30	2020	11	6	11
4	293	10	2020	10	30	2020	11	6	12
4	294	92	2020	10	30	2020	11	6	13
4	295	63	2020	10	30	2020	11	6	14
4	99	21	2020	10	30	2020	11	6	15
4	296	161	2020	10	30	2020	11	6	16
4	297	162	2020	10	30	2020	11	6	17
4	298	123	2020	10	30	2020	11	6	18
4	299	163	2020	10	30	2020	11	6	19
4	300	63	2020	10	30	2020	11	6	20
4	200	27	2020	10	30	2020	11	6	21
4	301	2	2020	10	30	2020	11	6	22
4	302	63	2020	10	30	2020	11	6	23
4	303	77	2020	10	30	2020	11	6	24
4	304	63	2020	10	30	2020	11	6	25
4	305	29	2020	10	30	2020	11	6	26
4	306	164	2020	10	30	2020	11	6	27
4	307	165	2020	10	30	2020	11	6	28
4	216	122	2020	10	30	2020	11	6	29
4	308	74	2020	10	30	2020	11	6	30
4	309	63	2020	10	30	2020	11	6	31
4	21	17	2020	10	30	2020	11	6	32
4	310	20	2020	10	30	2020	11	6	33
4	311	166	2020	10	30	2020	11	6	34
4	312	167	2020	10	30	2020	11	6	35
4	313	168	2020	10	30	2020	11	6	36
4	3	3	2020	10	30	2020	11	6	37
4	314	63	2020	10	30	2020	11	6	38
4	315	4	2020	10	30	2020	11	6	39
4	316	130	2020	10	30	2020	11	6	40
4	317	139	2020	10	30	2020	11	6	41
4	318	63	2020	10	30	2020	11	6	42
4	36	17	2020	10	30	2020	11	6	43
4	319	169	2020	10	30	2020	11	6	44
4	62	43	2020	10	30	2020	11	6	45
4	7	7	2020	10	30	2020	11	6	46
4	320	170	2020	10	30	2020	11	6	47
4	321	16	2020	10	30	2020	11	6	48
4	322	63	2020	10	30	2020	11	6	49
4	323	171	2020	10	30	2020	11	6	50
4	324	63	2020	10	30	2020	11	6	51
4	325	130	2020	10	30	2020	11	6	52
4	326	159	2020	10	30	2020	11	6	53
4	327	172	2020	10	30	2020	11	6	54
4	328	21	2020	10	30	2020	11	6	55
4	329	173	2020	10	30	2020	11	6	56
4	330	48	2020	10	30	2020	11	6	57
4	331	171	2020	10	30	2020	11	6	58
4	332	63	2020	10	30	2020	11	6	59
4	333	174	2020	10	30	2020	11	6	60
4	334	32	2020	10	30	2020	11	6	61
4	335	89	2020	10	30	2020	11	6	62
4	336	92	2020	10	30	2020	11	6	63
4	337	175	2020	10	30	2020	11	6	64
4	338	63	2020	10	30	2020	11	6	65
4	339	63	2020	10	30	2020	11	6	66
4	219	124	2020	10	30	2020	11	6	67
4	340	132	2020	10	30	2020	11	6	68
4	341	25	2020	10	30	2020	11	6	69
4	4	4	2020	10	30	2020	11	6	70
4	342	171	2020	10	30	2020	11	6	71
4	6	6	2020	10	30	2020	11	6	72
4	343	176	2020	10	30	2020	11	6	73
4	344	177	2020	10	30	2020	11	6	74
4	204	63	2020	10	30	2020	11	6	75
4	8	8	2020	10	30	2020	11	6	76
4	201	52	2020	10	30	2020	11	6	77
4	345	178	2020	10	30	2020	11	6	78
4	23	19	2020	10	30	2020	11	6	79
4	346	48	2020	10	30	2020	11	6	80
4	347	4	2020	10	30	2020	11	6	81
4	231	130	2020	10	30	2020	11	6	82
4	348	179	2020	10	30	2020	11	6	83
4	26	21	2020	10	30	2020	11	6	84
4	349	180	2020	10	30	2020	11	6	85
4	27	22	2020	10	30	2020	11	6	86
4	158	56	2020	10	30	2020	11	6	87
4	350	16	2020	10	30	2020	11	6	88
4	351	80	2020	10	30	2020	11	6	89
4	69	48	2020	10	30	2020	11	6	90
4	5	5	2020	10	30	2020	11	6	91
4	33	28	2020	10	30	2020	11	6	92
4	236	134	2020	10	30	2020	11	6	93
4	37	29	2020	10	30	2020	11	6	94
4	51	28	2020	10	30	2020	11	6	95
4	54	19	2020	10	30	2020	11	6	96
4	352	126	2020	10	30	2020	11	6	97
4	353	181	2020	10	30	2020	11	6	98
4	354	182	2020	10	30	2020	11	6	99
4	12	11	2020	10	30	2020	11	6	100
4	150	48	2020	10	30	2020	11	6	101
4	355	96	2020	10	30	2020	11	6	102
4	356	183	2020	10	30	2020	11	6	103
4	82	56	2020	10	30	2020	11	6	104
4	357	32	2020	10	30	2020	11	6	105
4	137	51	2020	10	30	2020	11	6	106
4	358	184	2020	10	30	2020	11	6	107
4	20	16	2020	10	30	2020	11	6	108
4	81	52	2020	10	30	2020	11	6	109
4	359	185	2020	10	30	2020	11	6	110
4	10	10	2020	10	30	2020	11	6	111
4	68	47	2020	10	30	2020	11	6	112
4	11	4	2020	10	30	2020	11	6	113
4	47	34	2020	10	30	2020	11	6	114
4	165	56	2020	10	30	2020	11	6	115
4	12	21	2020	10	30	2020	11	6	116
4	360	171	2020	10	30	2020	11	6	117
4	2	2	2020	10	30	2020	11	6	118
4	122	20	2020	10	30	2020	11	6	119
4	93	62	2020	10	30	2020	11	6	120
4	361	186	2020	10	30	2020	11	6	121
4	29	24	2020	10	30	2020	11	6	122
4	362	92	2020	10	30	2020	11	6	123
4	155	92	2020	10	30	2020	11	6	124
4	363	187	2020	10	30	2020	11	6	125
4	128	80	2020	10	30	2020	11	6	126
4	95	63	2020	10	30	2020	11	6	127
4	19	15	2020	10	30	2020	11	6	128
4	364	188	2020	10	30	2020	11	6	129
4	365	189	2020	10	30	2020	11	6	130
4	366	190	2020	10	30	2020	11	6	131
4	367	191	2020	10	30	2020	11	6	132
4	107	70	2020	10	30	2020	11	6	133
4	202	116	2020	10	30	2020	11	6	134
4	368	192	2020	10	30	2020	11	6	135
4	260	48	2020	10	30	2020	11	6	136
4	369	193	2020	10	30	2020	11	6	137
4	48	35	2020	10	30	2020	11	6	138
4	370	48	2020	10	30	2020	11	6	139
4	371	32	2020	10	30	2020	11	6	140
4	372	85	2020	10	30	2020	11	6	141
4	373	194	2020	10	30	2020	11	6	142
4	374	195	2020	10	30	2020	11	6	143
4	375	196	2020	10	30	2020	11	6	144
4	376	197	2020	10	30	2020	11	6	145
4	377	198	2020	10	30	2020	11	6	146
4	378	199	2020	10	30	2020	11	6	147
4	379	172	2020	10	30	2020	11	6	148
4	380	200	2020	10	30	2020	11	6	149
4	381	201	2020	10	30	2020	11	6	150
4	138	45	2020	10	30	2020	11	6	151
4	34	28	2020	10	30	2020	11	6	152
4	58	40	2020	10	30	2020	11	6	153
4	214	68	2020	10	30	2020	11	6	154
4	382	166	2020	10	30	2020	11	6	155
4	173	101	2020	10	30	2020	11	6	156
4	383	202	2020	10	30	2020	11	6	157
4	384	203	2020	10	30	2020	11	6	158
4	174	102	2020	10	30	2020	11	6	159
4	385	185	2020	10	30	2020	11	6	160
4	9	9	2020	10	30	2020	11	6	161
4	386	204	2020	10	30	2020	11	6	162
4	123	45	2020	10	30	2020	11	6	163
4	64	45	2020	10	30	2020	11	6	164
4	25	20	2020	10	30	2020	11	6	165
4	109	70	2020	10	30	2020	11	6	166
4	168	89	2020	10	30	2020	11	6	167
4	387	205	2020	10	30	2020	11	6	168
4	388	37	2020	10	30	2020	11	6	169
4	116	74	2020	10	30	2020	11	6	170
4	389	122	2020	10	30	2020	11	6	171
4	31	26	2020	10	30	2020	11	6	172
4	115	73	2020	10	30	2020	11	6	173
4	390	206	2020	10	30	2020	11	6	174
4	391	207	2020	10	30	2020	11	6	175
4	392	89	2020	10	30	2020	11	6	176
4	393	130	2020	10	30	2020	11	6	177
4	394	194	2020	10	30	2020	11	6	178
4	395	208	2020	10	30	2020	11	6	179
4	210	66	2020	10	30	2020	11	6	180
4	94	19	2020	10	30	2020	11	6	181
4	396	159	2020	10	30	2020	11	6	182
4	397	92	2020	10	30	2020	11	6	183
4	398	209	2020	10	30	2020	11	6	184
4	399	92	2020	10	30	2020	11	6	185
4	400	210	2020	10	30	2020	11	6	186
4	401	211	2020	10	30	2020	11	6	187
4	402	212	2020	10	30	2020	11	6	188
4	118	38	2020	10	30	2020	11	6	189
4	403	213	2020	10	30	2020	11	6	190
4	404	214	2020	10	30	2020	11	6	191
4	17	1	2020	10	30	2020	11	6	192
4	14	13	2020	10	30	2020	11	6	193
4	405	215	2020	10	30	2020	11	6	194
4	74	28	2020	10	30	2020	11	6	195
4	406	216	2020	10	30	2020	11	6	196
4	217	123	2020	10	30	2020	11	6	197
4	407	56	2020	10	30	2020	11	6	198
4	218	86	2020	10	30	2020	11	6	199
4	408	217	2020	10	30	2020	11	6	200
5	1	1	2020	4	17	2020	4	24	1
5	2	2	2020	4	17	2020	4	24	2
5	3	3	2020	4	17	2020	4	24	3
5	6	6	2020	4	17	2020	4	24	4
5	4	4	2020	4	17	2020	4	24	5
5	7	7	2020	4	17	2020	4	24	6
5	5	5	2020	4	17	2020	4	24	7
5	8	8	2020	4	17	2020	4	24	8
5	9	9	2020	4	17	2020	4	24	9
5	200	27	2020	4	17	2020	4	24	10
5	11	4	2020	4	17	2020	4	24	11
5	15	14	2020	4	17	2020	4	24	12
5	10	10	2020	4	17	2020	4	24	13
5	12	11	2020	4	17	2020	4	24	14
5	13	12	2020	4	17	2020	4	24	15
5	22	18	2020	4	17	2020	4	24	16
5	14	13	2020	4	17	2020	4	24	17
5	21	17	2020	4	17	2020	4	24	18
5	18	13	2020	4	17	2020	4	24	19
5	19	15	2020	4	17	2020	4	24	20
5	24	9	2020	4	17	2020	4	24	21
5	23	19	2020	4	17	2020	4	24	22
5	17	1	2020	4	17	2020	4	24	23
5	20	16	2020	4	17	2020	4	24	24
5	16	4	2020	4	17	2020	4	24	25
5	30	25	2020	4	17	2020	4	24	26
5	265	89	2020	4	17	2020	4	24	27
5	26	21	2020	4	17	2020	4	24	28
5	116	74	2020	4	17	2020	4	24	29
5	29	24	2020	4	17	2020	4	24	30
5	27	22	2020	4	17	2020	4	24	31
5	273	152	2020	4	17	2020	4	24	32
5	33	28	2020	4	17	2020	4	24	33
5	68	47	2020	4	17	2020	4	24	34
5	25	20	2020	4	17	2020	4	24	35
5	40	30	2020	4	17	2020	4	24	36
5	36	17	2020	4	17	2020	4	24	37
5	47	34	2020	4	17	2020	4	24	38
5	31	26	2020	4	17	2020	4	24	39
5	34	28	2020	4	17	2020	4	24	40
5	37	29	2020	4	17	2020	4	24	41
5	45	32	2020	4	17	2020	4	24	42
5	32	27	2020	4	17	2020	4	24	43
5	35	13	2020	4	17	2020	4	24	44
5	44	20	2020	4	17	2020	4	24	45
5	51	28	2020	4	17	2020	4	24	46
5	53	37	2020	4	17	2020	4	24	47
5	48	35	2020	4	17	2020	4	24	48
5	39	13	2020	4	17	2020	4	24	49
5	57	5	2020	4	17	2020	4	24	50
5	268	150	2020	4	17	2020	4	24	51
5	43	10	2020	4	17	2020	4	24	52
5	82	56	2020	4	17	2020	4	24	53
5	38	13	2020	4	17	2020	4	24	54
5	62	43	2020	4	17	2020	4	24	55
5	54	19	2020	4	17	2020	4	24	56
5	28	23	2020	4	17	2020	4	24	57
5	274	153	2020	4	17	2020	4	24	58
5	151	90	2020	4	17	2020	4	24	59
5	52	20	2020	4	17	2020	4	24	60
5	56	39	2020	4	17	2020	4	24	61
5	58	40	2020	4	17	2020	4	24	62
5	46	33	2020	4	17	2020	4	24	63
5	165	56	2020	4	17	2020	4	24	64
5	61	42	2020	4	17	2020	4	24	65
5	63	44	2020	4	17	2020	4	24	66
5	64	45	2020	4	17	2020	4	24	67
5	270	64	2020	4	17	2020	4	24	68
5	69	48	2020	4	17	2020	4	24	69
5	50	5	2020	4	17	2020	4	24	70
5	55	38	2020	4	17	2020	4	24	71
5	42	31	2020	4	17	2020	4	24	72
5	73	51	2020	4	17	2020	4	24	73
5	71	9	2020	4	17	2020	4	24	74
5	70	49	2020	4	17	2020	4	24	75
5	83	57	2020	4	17	2020	4	24	76
5	60	41	2020	4	17	2020	4	24	77
5	409	27	2020	4	17	2020	4	24	78
5	98	65	2020	4	17	2020	4	24	79
5	74	28	2020	4	17	2020	4	24	80
5	59	13	2020	4	17	2020	4	24	81
5	158	56	2020	4	17	2020	4	24	82
5	72	50	2020	4	17	2020	4	24	83
5	81	52	2020	4	17	2020	4	24	84
5	110	32	2020	4	17	2020	4	24	85
5	77	53	2020	4	17	2020	4	24	86
5	41	1	2020	4	17	2020	4	24	87
5	79	55	2020	4	17	2020	4	24	88
5	66	46	2020	4	17	2020	4	24	89
5	75	45	2020	4	17	2020	4	24	90
5	49	36	2020	4	17	2020	4	24	91
5	65	13	2020	4	17	2020	4	24	92
5	84	58	2020	4	17	2020	4	24	93
5	12	21	2020	4	17	2020	4	24	94
5	93	62	2020	4	17	2020	4	24	95
5	76	52	2020	4	17	2020	4	24	96
5	95	63	2020	4	17	2020	4	24	97
5	87	59	2020	4	17	2020	4	24	98
5	410	33	2020	4	17	2020	4	24	99
5	96	50	2020	4	17	2020	4	24	100
5	94	19	2020	4	17	2020	4	24	101
5	411	27	2020	4	17	2020	4	24	102
5	276	74	2020	4	17	2020	4	24	103
5	104	69	2020	4	17	2020	4	24	104
5	195	113	2020	4	17	2020	4	24	105
5	67	1	2020	4	17	2020	4	24	106
5	78	54	2020	4	17	2020	4	24	107
5	99	21	2020	4	17	2020	4	24	108
5	103	68	2020	4	17	2020	4	24	109
5	107	70	2020	4	17	2020	4	24	110
5	91	61	2020	4	17	2020	4	24	111
5	102	27	2020	4	17	2020	4	24	112
5	111	71	2020	4	17	2020	4	24	113
5	218	86	2020	4	17	2020	4	24	114
5	109	70	2020	4	17	2020	4	24	115
5	89	60	2020	4	17	2020	4	24	116
5	90	61	2020	4	17	2020	4	24	117
5	97	64	2020	4	17	2020	4	24	118
5	101	67	2020	4	17	2020	4	24	119
5	275	154	2020	4	17	2020	4	24	120
5	115	73	2020	4	17	2020	4	24	121
5	106	66	2020	4	17	2020	4	24	122
5	144	86	2020	4	17	2020	4	24	123
5	108	48	2020	4	17	2020	4	24	124
5	129	81	2020	4	17	2020	4	24	125
5	123	45	2020	4	17	2020	4	24	126
5	134	83	2020	4	17	2020	4	24	127
5	118	38	2020	4	17	2020	4	24	128
5	114	19	2020	4	17	2020	4	24	129
5	128	80	2020	4	17	2020	4	24	130
5	117	17	2020	4	17	2020	4	24	131
5	85	28	2020	4	17	2020	4	24	132
5	137	51	2020	4	17	2020	4	24	133
5	119	75	2020	4	17	2020	4	24	134
5	157	93	2020	4	17	2020	4	24	135
5	105	7	2020	4	17	2020	4	24	136
5	138	45	2020	4	17	2020	4	24	137
5	235	133	2020	4	17	2020	4	24	138
5	121	20	2020	4	17	2020	4	24	139
5	113	54	2020	4	17	2020	4	24	140
5	132	32	2020	4	17	2020	4	24	141
5	141	84	2020	4	17	2020	4	24	142
5	131	2	2020	4	17	2020	4	24	143
5	100	66	2020	4	17	2020	4	24	144
5	146	87	2020	4	17	2020	4	24	145
5	125	78	2020	4	17	2020	4	24	146
5	150	48	2020	4	17	2020	4	24	147
5	124	77	2020	4	17	2020	4	24	148
5	145	19	2020	4	17	2020	4	24	149
5	130	67	2020	4	17	2020	4	24	150
5	139	60	2020	4	17	2020	4	24	151
5	153	51	2020	4	17	2020	4	24	152
5	281	96	2020	4	17	2020	4	24	153
5	208	39	2020	4	17	2020	4	24	154
5	140	33	2020	4	17	2020	4	24	155
5	412	27	2020	4	17	2020	4	24	156
5	156	37	2020	4	17	2020	4	24	157
5	154	28	2020	4	17	2020	4	24	158
5	282	74	2020	4	17	2020	4	24	159
5	168	89	2020	4	17	2020	4	24	160
5	86	50	2020	4	17	2020	4	24	161
5	413	218	2020	4	17	2020	4	24	162
5	133	82	2020	4	17	2020	4	24	163
5	92	1	2020	4	17	2020	4	24	164
5	162	70	2020	4	17	2020	4	24	165
5	173	101	2020	4	17	2020	4	24	166
5	147	13	2020	4	17	2020	4	24	167
5	122	20	2020	4	17	2020	4	24	168
5	160	89	2020	4	17	2020	4	24	169
5	166	97	2020	4	17	2020	4	24	170
5	174	102	2020	4	17	2020	4	24	171
5	170	99	2020	4	17	2020	4	24	172
5	120	76	2020	4	17	2020	4	24	173
5	80	33	2020	4	17	2020	4	24	174
5	279	153	2020	4	17	2020	4	24	175
5	178	98	2020	4	17	2020	4	24	176
5	159	94	2020	4	17	2020	4	24	177
5	155	92	2020	4	17	2020	4	24	178
5	112	72	2020	4	17	2020	4	24	179
5	414	27	2020	4	17	2020	4	24	180
5	127	16	2020	4	17	2020	4	24	181
5	135	20	2020	4	17	2020	4	24	182
5	152	91	2020	4	17	2020	4	24	183
5	188	107	2020	4	17	2020	4	24	184
5	184	19	2020	4	17	2020	4	24	185
5	163	95	2020	4	17	2020	4	24	186
5	136	13	2020	4	17	2020	4	24	187
5	175	21	2020	4	17	2020	4	24	188
5	182	104	2020	4	17	2020	4	24	189
5	187	63	2020	4	17	2020	4	24	190
5	176	103	2020	4	17	2020	4	24	191
5	186	2	2020	4	17	2020	4	24	192
5	181	106	2020	4	17	2020	4	24	193
5	183	29	2020	4	17	2020	4	24	194
5	164	96	2020	4	17	2020	4	24	195
5	161	32	2020	4	17	2020	4	24	196
5	171	100	2020	4	17	2020	4	24	197
5	185	22	2020	4	17	2020	4	24	198
5	196	50	2020	4	17	2020	4	24	199
5	179	105	2020	4	17	2020	4	24	200
6	400	210	2020	12	18	2020	12	25	1
6	415	219	2020	12	18	2020	12	25	2
6	416	63	2020	12	18	2020	12	25	3
6	284	13	2020	12	18	2020	12	25	4
6	417	220	2020	12	18	2020	12	25	5
6	418	221	2020	12	18	2020	12	25	6
6	419	222	2020	12	18	2020	12	25	7
6	420	223	2020	12	18	2020	12	25	8
6	421	224	2020	12	18	2020	12	25	9
6	350	16	2020	12	18	2020	12	25	10
6	422	225	2020	12	18	2020	12	25	11
6	285	42	2020	12	18	2020	12	25	12
6	283	63	2020	12	18	2020	12	25	13
6	423	226	2020	12	18	2020	12	25	14
6	424	10	2020	12	18	2020	12	25	15
6	425	227	2020	12	18	2020	12	25	16
6	426	228	2020	12	18	2020	12	25	17
6	427	229	2020	12	18	2020	12	25	18
6	428	230	2020	12	18	2020	12	25	19
6	1	1	2020	12	18	2020	12	25	20
6	429	221	2020	12	18	2020	12	25	21
6	430	231	2020	12	18	2020	12	25	22
6	431	232	2020	12	18	2020	12	25	23
6	432	233	2020	12	18	2020	12	25	24
6	433	13	2020	12	18	2020	12	25	25
6	287	63	2020	12	18	2020	12	25	26
6	286	157	2020	12	18	2020	12	25	27
6	289	158	2020	12	18	2020	12	25	28
6	434	234	2020	12	18	2020	12	25	29
6	435	28	2020	12	18	2020	12	25	30
6	436	126	2020	12	18	2020	12	25	31
6	437	235	2020	12	18	2020	12	25	32
6	367	191	2020	12	18	2020	12	25	33
6	288	92	2020	12	18	2020	12	25	34
6	438	75	2020	12	18	2020	12	25	35
6	291	159	2020	12	18	2020	12	25	36
6	439	29	2020	12	18	2020	12	25	37
6	440	236	2020	12	18	2020	12	25	38
6	441	237	2020	12	18	2020	12	25	39
6	292	160	2020	12	18	2020	12	25	40
6	315	4	2020	12	18	2020	12	25	41
6	442	238	2020	12	18	2020	12	25	42
6	290	10	2020	12	18	2020	12	25	43
6	99	21	2020	12	18	2020	12	25	44
6	296	161	2020	12	18	2020	12	25	45
6	357	32	2020	12	18	2020	12	25	46
6	443	239	2020	12	18	2020	12	25	47
6	297	162	2020	12	18	2020	12	25	48
6	311	166	2020	12	18	2020	12	25	49
6	444	169	2020	12	18	2020	12	25	50
6	200	27	2020	12	18	2020	12	25	51
6	445	240	2020	12	18	2020	12	25	52
6	294	92	2020	12	18	2020	12	25	53
6	446	241	2020	12	18	2020	12	25	54
6	349	180	2020	12	18	2020	12	25	55
6	7	7	2020	12	18	2020	12	25	56
6	21	17	2020	12	18	2020	12	25	57
6	298	123	2020	12	18	2020	12	25	58
6	447	242	2020	12	18	2020	12	25	59
6	448	243	2020	12	18	2020	12	25	60
6	3	3	2020	12	18	2020	12	25	61
6	449	244	2020	12	18	2020	12	25	62
6	306	164	2020	12	18	2020	12	25	63
6	450	13	2020	12	18	2020	12	25	64
6	451	245	2020	12	18	2020	12	25	65
6	452	246	2020	12	18	2020	12	25	66
6	308	74	2020	12	18	2020	12	25	67
6	390	206	2020	12	18	2020	12	25	68
6	453	247	2020	12	18	2020	12	25	69
6	293	10	2020	12	18	2020	12	25	70
6	454	248	2020	12	18	2020	12	25	71
6	455	74	2020	12	18	2020	12	25	72
6	456	73	2020	12	18	2020	12	25	73
6	457	249	2020	12	18	2020	12	25	74
6	4	4	2020	12	18	2020	12	25	75
6	303	77	2020	12	18	2020	12	25	76
6	458	234	2020	12	18	2020	12	25	77
6	329	173	2020	12	18	2020	12	25	78
6	459	158	2020	12	18	2020	12	25	79
6	316	130	2020	12	18	2020	12	25	80
6	312	167	2020	12	18	2020	12	25	81
6	307	165	2020	12	18	2020	12	25	82
6	460	89	2020	12	18	2020	12	25	83
6	36	17	2020	12	18	2020	12	25	84
6	461	229	2020	12	18	2020	12	25	85
6	462	250	2020	12	18	2020	12	25	86
6	301	2	2020	12	18	2020	12	25	87
6	359	185	2020	12	18	2020	12	25	88
6	463	251	2020	12	18	2020	12	25	89
6	310	20	2020	12	18	2020	12	25	90
6	216	122	2020	12	18	2020	12	25	91
6	464	60	2020	12	18	2020	12	25	92
6	317	139	2020	12	18	2020	12	25	93
6	321	16	2020	12	18	2020	12	25	94
6	305	29	2020	12	18	2020	12	25	95
6	302	63	2020	12	18	2020	12	25	96
6	388	37	2020	12	18	2020	12	25	97
6	465	234	2020	12	18	2020	12	25	98
6	466	18	2020	12	18	2020	12	25	99
6	5	5	2020	12	18	2020	12	25	100
6	326	159	2020	12	18	2020	12	25	101
6	467	51	2020	12	18	2020	12	25	102
6	299	163	2020	12	18	2020	12	25	103
6	468	252	2020	12	18	2020	12	25	104
6	313	168	2020	12	18	2020	12	25	105
6	62	43	2020	12	18	2020	12	25	106
6	469	26	2020	12	18	2020	12	25	107
6	6	6	2020	12	18	2020	12	25	108
6	470	253	2020	12	18	2020	12	25	109
6	352	126	2020	12	18	2020	12	25	110
6	471	235	2020	12	18	2020	12	25	111
6	472	254	2020	12	18	2020	12	25	112
6	453	210	2020	12	18	2020	12	25	113
6	54	19	2020	12	18	2020	12	25	114
6	23	19	2020	12	18	2020	12	25	115
6	20	16	2020	12	18	2020	12	25	116
6	473	221	2020	12	18	2020	12	25	117
6	474	48	2020	12	18	2020	12	25	118
6	475	255	2020	12	18	2020	12	25	119
6	476	234	2020	12	18	2020	12	25	120
6	69	48	2020	12	18	2020	12	25	121
6	8	8	2020	12	18	2020	12	25	122
6	477	242	2020	12	18	2020	12	25	123
6	334	32	2020	12	18	2020	12	25	124
6	51	28	2020	12	18	2020	12	25	125
6	478	256	2020	12	18	2020	12	25	126
6	479	257	2020	12	18	2020	12	25	127
6	480	39	2020	12	18	2020	12	25	128
6	481	234	2020	12	18	2020	12	25	129
6	27	22	2020	12	18	2020	12	25	130
6	445	63	2020	12	18	2020	12	25	131
6	346	48	2020	12	18	2020	12	25	132
6	482	258	2020	12	18	2020	12	25	133
6	328	21	2020	12	18	2020	12	25	134
6	158	56	2020	12	18	2020	12	25	135
6	325	130	2020	12	18	2020	12	25	136
6	483	45	2020	12	18	2020	12	25	137
6	484	159	2020	12	18	2020	12	25	138
6	351	80	2020	12	18	2020	12	25	139
6	485	29	2020	12	18	2020	12	25	140
6	26	21	2020	12	18	2020	12	25	141
6	37	29	2020	12	18	2020	12	25	142
6	486	44	2020	12	18	2020	12	25	143
6	487	225	2020	12	18	2020	12	25	144
6	488	259	2020	12	18	2020	12	25	145
6	82	56	2020	12	18	2020	12	25	146
6	489	260	2020	12	18	2020	12	25	147
6	319	169	2020	12	18	2020	12	25	148
6	490	261	2020	12	18	2020	12	25	149
6	491	262	2020	12	18	2020	12	25	150
6	330	48	2020	12	18	2020	12	25	151
6	492	263	2020	12	18	2020	12	25	152
6	493	78	2020	12	18	2020	12	25	153
6	150	48	2020	12	18	2020	12	25	154
6	12	11	2020	12	18	2020	12	25	155
6	494	225	2020	12	18	2020	12	25	156
6	495	230	2020	12	18	2020	12	25	157
6	31	26	2020	12	18	2020	12	25	158
6	496	230	2020	12	18	2020	12	25	159
6	497	210	2020	12	18	2020	12	25	160
6	498	237	2020	12	18	2020	12	25	161
6	33	28	2020	12	18	2020	12	25	162
6	204	63	2020	12	18	2020	12	25	163
6	219	124	2020	12	18	2020	12	25	164
6	499	264	2020	12	18	2020	12	25	165
6	337	175	2020	12	18	2020	12	25	166
6	500	265	2020	12	18	2020	12	25	167
6	29	24	2020	12	18	2020	12	25	168
6	333	174	2020	12	18	2020	12	25	169
6	201	52	2020	12	18	2020	12	25	170
6	320	170	2020	12	18	2020	12	25	171
6	336	92	2020	12	18	2020	12	25	172
6	501	264	2020	12	18	2020	12	25	173
6	502	266	2020	12	18	2020	12	25	174
6	503	267	2020	12	18	2020	12	25	175
6	11	4	2020	12	18	2020	12	25	176
6	343	176	2020	12	18	2020	12	25	177
6	81	52	2020	12	18	2020	12	25	178
6	399	92	2020	12	18	2020	12	25	179
6	504	268	2020	12	18	2020	12	25	180
6	505	234	2020	12	18	2020	12	25	181
6	506	138	2020	12	18	2020	12	25	182
6	381	201	2020	12	18	2020	12	25	183
6	507	269	2020	12	18	2020	12	25	184
6	508	234	2020	12	18	2020	12	25	185
6	509	270	2020	12	18	2020	12	25	186
6	406	216	2020	12	18	2020	12	25	187
6	93	62	2020	12	18	2020	12	25	188
6	345	178	2020	12	18	2020	12	25	189
6	342	171	2020	12	18	2020	12	25	190
6	260	48	2020	12	18	2020	12	25	191
6	510	271	2020	12	18	2020	12	25	192
6	511	123	2020	12	18	2020	12	25	193
6	512	25	2020	12	18	2020	12	25	194
6	2	2	2020	12	18	2020	12	25	195
6	327	172	2020	12	18	2020	12	25	196
6	513	263	2020	12	18	2020	12	25	197
6	48	35	2020	12	18	2020	12	25	198
6	107	70	2020	12	18	2020	12	25	199
6	514	13	2020	12	18	2020	12	25	200
7	7	7	2020	1	31	2020	2	7	1
7	5	5	2020	1	31	2020	2	7	2
7	1	1	2020	1	31	2020	2	7	3
7	20	16	2020	1	31	2020	2	7	4
7	4	4	2020	1	31	2020	2	7	5
7	43	10	2020	1	31	2020	2	7	6
7	31	26	2020	1	31	2020	2	7	7
7	12	11	2020	1	31	2020	2	7	8
7	19	15	2020	1	31	2020	2	7	9
7	29	24	2020	1	31	2020	2	7	10
7	34	28	2020	1	31	2020	2	7	11
7	27	22	2020	1	31	2020	2	7	12
7	23	19	2020	1	31	2020	2	7	13
7	21	17	2020	1	31	2020	2	7	14
7	33	28	2020	1	31	2020	2	7	15
7	56	39	2020	1	31	2020	2	7	16
7	37	29	2020	1	31	2020	2	7	17
7	16	4	2020	1	31	2020	2	7	18
7	55	38	2020	1	31	2020	2	7	19
7	26	21	2020	1	31	2020	2	7	20
7	49	36	2020	1	31	2020	2	7	21
7	36	17	2020	1	31	2020	2	7	22
7	60	41	2020	1	31	2020	2	7	23
7	97	64	2020	1	31	2020	2	7	24
7	9	9	2020	1	31	2020	2	7	25
7	113	54	2020	1	31	2020	2	7	26
7	59	13	2020	1	31	2020	2	7	27
7	48	35	2020	1	31	2020	2	7	28
7	79	55	2020	1	31	2020	2	7	29
7	53	37	2020	1	31	2020	2	7	30
7	515	64	2020	1	31	2020	2	7	31
7	89	60	2020	1	31	2020	2	7	32
7	52	20	2020	1	31	2020	2	7	33
7	3	3	2020	1	31	2020	2	7	34
7	90	61	2020	1	31	2020	2	7	35
7	132	32	2020	1	31	2020	2	7	36
7	83	57	2020	1	31	2020	2	7	37
7	133	82	2020	1	31	2020	2	7	38
7	102	27	2020	1	31	2020	2	7	39
7	58	40	2020	1	31	2020	2	7	40
7	54	19	2020	1	31	2020	2	7	41
7	74	28	2020	1	31	2020	2	7	42
7	64	45	2020	1	31	2020	2	7	43
7	125	78	2020	1	31	2020	2	7	44
7	516	10	2020	1	31	2020	2	7	45
7	82	56	2020	1	31	2020	2	7	46
7	120	76	2020	1	31	2020	2	7	47
7	517	272	2020	1	31	2020	2	7	48
7	106	66	2020	1	31	2020	2	7	49
7	518	273	2020	1	31	2020	2	7	50
7	50	5	2020	1	31	2020	2	7	51
7	108	48	2020	1	31	2020	2	7	52
7	144	86	2020	1	31	2020	2	7	53
7	51	28	2020	1	31	2020	2	7	54
7	70	49	2020	1	31	2020	2	7	55
7	75	45	2020	1	31	2020	2	7	56
7	519	158	2020	1	31	2020	2	7	57
7	69	48	2020	1	31	2020	2	7	58
7	99	21	2020	1	31	2020	2	7	59
7	47	34	2020	1	31	2020	2	7	60
7	520	234	2020	1	31	2020	2	7	61
7	95	63	2020	1	31	2020	2	7	62
7	141	84	2020	1	31	2020	2	7	63
7	521	78	2020	1	31	2020	2	7	64
7	121	20	2020	1	31	2020	2	7	65
7	147	13	2020	1	31	2020	2	7	66
7	87	59	2020	1	31	2020	2	7	67
7	522	274	2020	1	31	2020	2	7	68
7	523	27	2020	1	31	2020	2	7	69
7	524	275	2020	1	31	2020	2	7	70
7	13	12	2020	1	31	2020	2	7	71
7	525	53	2020	1	31	2020	2	7	72
7	81	52	2020	1	31	2020	2	7	73
7	119	75	2020	1	31	2020	2	7	74
7	526	186	2020	1	31	2020	2	7	75
7	91	61	2020	1	31	2020	2	7	76
7	191	110	2020	1	31	2020	2	7	77
7	114	19	2020	1	31	2020	2	7	78
7	135	20	2020	1	31	2020	2	7	79
7	111	71	2020	1	31	2020	2	7	80
7	67	1	2020	1	31	2020	2	7	81
7	527	50	2020	1	31	2020	2	7	82
7	528	45	2020	1	31	2020	2	7	83
7	160	89	2020	1	31	2020	2	7	84
7	163	95	2020	1	31	2020	2	7	85
7	529	196	2020	1	31	2020	2	7	86
7	530	111	2020	1	31	2020	2	7	87
7	531	276	2020	1	31	2020	2	7	88
7	118	38	2020	1	31	2020	2	7	89
7	104	69	2020	1	31	2020	2	7	90
7	532	55	2020	1	31	2020	2	7	91
7	105	7	2020	1	31	2020	2	7	92
7	103	68	2020	1	31	2020	2	7	93
7	533	33	2020	1	31	2020	2	7	94
7	146	87	2020	1	31	2020	2	7	95
7	117	17	2020	1	31	2020	2	7	96
7	534	28	2020	1	31	2020	2	7	97
7	535	27	2020	1	31	2020	2	7	98
7	536	56	2020	1	31	2020	2	7	99
7	139	60	2020	1	31	2020	2	7	100
7	93	62	2020	1	31	2020	2	7	101
7	537	277	2020	1	31	2020	2	7	102
7	538	79	2020	1	31	2020	2	7	103
7	150	48	2020	1	31	2020	2	7	104
7	94	19	2020	1	31	2020	2	7	105
7	154	28	2020	1	31	2020	2	7	106
7	145	19	2020	1	31	2020	2	7	107
7	539	278	2020	1	31	2020	2	7	108
7	540	40	2020	1	31	2020	2	7	109
7	541	279	2020	1	31	2020	2	7	110
7	131	2	2020	1	31	2020	2	7	111
7	542	112	2020	1	31	2020	2	7	112
7	543	15	2020	1	31	2020	2	7	113
7	115	73	2020	1	31	2020	2	7	114
7	175	21	2020	1	31	2020	2	7	115
7	123	45	2020	1	31	2020	2	7	116
7	101	67	2020	1	31	2020	2	7	117
7	156	37	2020	1	31	2020	2	7	118
7	544	280	2020	1	31	2020	2	7	119
7	545	281	2020	1	31	2020	2	7	120
7	109	70	2020	1	31	2020	2	7	121
7	546	123	2020	1	31	2020	2	7	122
7	547	282	2020	1	31	2020	2	7	123
7	165	56	2020	1	31	2020	2	7	124
7	548	120	2020	1	31	2020	2	7	125
7	128	80	2020	1	31	2020	2	7	126
7	549	112	2020	1	31	2020	2	7	127
7	550	283	2020	1	31	2020	2	7	128
7	187	63	2020	1	31	2020	2	7	129
7	551	28	2020	1	31	2020	2	7	130
7	168	89	2020	1	31	2020	2	7	131
7	552	111	2020	1	31	2020	2	7	132
7	553	26	2020	1	31	2020	2	7	133
7	282	74	2020	1	31	2020	2	7	134
7	554	44	2020	1	31	2020	2	7	135
7	555	284	2020	1	31	2020	2	7	136
7	107	70	2020	1	31	2020	2	7	137
7	179	105	2020	1	31	2020	2	7	138
7	159	94	2020	1	31	2020	2	7	139
7	556	234	2020	1	31	2020	2	7	140
7	153	51	2020	1	31	2020	2	7	141
7	557	154	2020	1	31	2020	2	7	142
7	558	278	2020	1	31	2020	2	7	143
7	138	45	2020	1	31	2020	2	7	144
7	130	67	2020	1	31	2020	2	7	145
7	140	33	2020	1	31	2020	2	7	146
7	559	134	2020	1	31	2020	2	7	147
7	185	22	2020	1	31	2020	2	7	148
7	560	28	2020	1	31	2020	2	7	149
7	561	285	2020	1	31	2020	2	7	150
7	562	28	2020	1	31	2020	2	7	151
7	124	77	2020	1	31	2020	2	7	152
7	158	56	2020	1	31	2020	2	7	153
7	563	110	2020	1	31	2020	2	7	154
7	564	286	2020	1	31	2020	2	7	155
7	176	103	2020	1	31	2020	2	7	156
7	565	287	2020	1	31	2020	2	7	157
7	566	120	2020	1	31	2020	2	7	158
7	184	19	2020	1	31	2020	2	7	159
7	567	288	2020	1	31	2020	2	7	160
7	568	139	2020	1	31	2020	2	7	161
7	12	21	2020	1	31	2020	2	7	162
7	162	70	2020	1	31	2020	2	7	163
7	569	289	2020	1	31	2020	2	7	164
7	570	20	2020	1	31	2020	2	7	165
7	571	290	2020	1	31	2020	2	7	166
7	181	106	2020	1	31	2020	2	7	167
7	572	291	2020	1	31	2020	2	7	168
7	177	104	2020	1	31	2020	2	7	169
7	183	29	2020	1	31	2020	2	7	170
7	573	292	2020	1	31	2020	2	7	171
7	199	115	2020	1	31	2020	2	7	172
7	574	27	2020	1	31	2020	2	7	173
7	188	107	2020	1	31	2020	2	7	174
7	174	102	2020	1	31	2020	2	7	175
7	30	25	2020	1	31	2020	2	7	176
7	575	56	2020	1	31	2020	2	7	177
7	576	196	2020	1	31	2020	2	7	178
7	577	28	2020	1	31	2020	2	7	179
7	578	38	2020	1	31	2020	2	7	180
7	173	101	2020	1	31	2020	2	7	181
7	178	98	2020	1	31	2020	2	7	182
7	579	155	2020	1	31	2020	2	7	183
7	580	60	2020	1	31	2020	2	7	184
7	581	123	2020	1	31	2020	2	7	185
7	170	99	2020	1	31	2020	2	7	186
7	582	53	2020	1	31	2020	2	7	187
7	583	293	2020	1	31	2020	2	7	188
7	584	294	2020	1	31	2020	2	7	189
7	585	76	2020	1	31	2020	2	7	190
7	586	41	2020	1	31	2020	2	7	191
7	587	295	2020	1	31	2020	2	7	192
7	588	234	2020	1	31	2020	2	7	193
7	589	75	2020	1	31	2020	2	7	194
7	590	106	2020	1	31	2020	2	7	195
7	591	28	2020	1	31	2020	2	7	196
7	186	2	2020	1	31	2020	2	7	197
7	592	293	2020	1	31	2020	2	7	198
7	593	296	2020	1	31	2020	2	7	199
7	594	54	2020	1	31	2020	2	7	200
8	7	7	2019	12	27	2020	1	3	1
8	19	15	2019	12	27	2020	1	3	2
8	20	16	2019	12	27	2020	1	3	3
8	27	22	2019	12	27	2020	1	3	4
8	12	11	2019	12	27	2020	1	3	5
8	23	19	2019	12	27	2020	1	3	6
8	4	4	2019	12	27	2020	1	3	7
8	1	1	2019	12	27	2020	1	3	8
8	37	29	2019	12	27	2020	1	3	9
8	34	28	2019	12	27	2020	1	3	10
8	56	39	2019	12	27	2020	1	3	11
8	21	17	2019	12	27	2020	1	3	12
8	5	5	2019	12	27	2020	1	3	13
8	33	28	2019	12	27	2020	1	3	14
8	26	21	2019	12	27	2020	1	3	15
8	536	56	2019	12	27	2020	1	3	16
8	60	41	2019	12	27	2020	1	3	17
8	97	64	2019	12	27	2020	1	3	18
8	58	40	2019	12	27	2020	1	3	19
8	59	13	2019	12	27	2020	1	3	20
8	48	35	2019	12	27	2020	1	3	21
8	99	21	2019	12	27	2020	1	3	22
8	82	56	2019	12	27	2020	1	3	23
8	54	19	2019	12	27	2020	1	3	24
8	106	66	2019	12	27	2020	1	3	25
8	102	27	2019	12	27	2020	1	3	26
8	111	71	2019	12	27	2020	1	3	27
8	64	45	2019	12	27	2020	1	3	28
8	67	1	2019	12	27	2020	1	3	29
8	75	45	2019	12	27	2020	1	3	30
8	69	48	2019	12	27	2020	1	3	31
8	144	86	2019	12	27	2020	1	3	32
8	108	48	2019	12	27	2020	1	3	33
8	132	32	2019	12	27	2020	1	3	34
8	36	17	2019	12	27	2020	1	3	35
8	595	71	2019	12	27	2020	1	3	36
8	527	50	2019	12	27	2020	1	3	37
8	596	71	2019	12	27	2020	1	3	38
8	597	86	2019	12	27	2020	1	3	39
8	53	37	2019	12	27	2020	1	3	40
8	95	63	2019	12	27	2020	1	3	41
8	160	89	2019	12	27	2020	1	3	42
8	121	20	2019	12	27	2020	1	3	43
8	119	75	2019	12	27	2020	1	3	44
8	70	49	2019	12	27	2020	1	3	45
8	87	59	2019	12	27	2020	1	3	46
8	528	45	2019	12	27	2020	1	3	47
8	79	55	2019	12	27	2020	1	3	48
8	517	272	2019	12	27	2020	1	3	49
8	147	13	2019	12	27	2020	1	3	50
8	49	36	2019	12	27	2020	1	3	51
8	113	54	2019	12	27	2020	1	3	52
8	521	78	2019	12	27	2020	1	3	53
8	561	285	2019	12	27	2020	1	3	54
8	141	84	2019	12	27	2020	1	3	55
8	104	69	2019	12	27	2020	1	3	56
8	83	57	2019	12	27	2020	1	3	57
8	114	19	2019	12	27	2020	1	3	58
8	598	280	2019	12	27	2020	1	3	59
8	529	196	2019	12	27	2020	1	3	60
8	526	186	2019	12	27	2020	1	3	61
8	12	21	2019	12	27	2020	1	3	62
8	81	52	2019	12	27	2020	1	3	63
8	74	28	2019	12	27	2020	1	3	64
8	542	112	2019	12	27	2020	1	3	65
8	103	68	2019	12	27	2020	1	3	66
8	51	28	2019	12	27	2020	1	3	67
8	175	21	2019	12	27	2020	1	3	68
8	531	276	2019	12	27	2020	1	3	69
8	537	277	2019	12	27	2020	1	3	70
8	3	3	2019	12	27	2020	1	3	71
8	599	71	2019	12	27	2020	1	3	72
8	91	61	2019	12	27	2020	1	3	73
8	145	19	2019	12	27	2020	1	3	74
8	156	37	2019	12	27	2020	1	3	75
8	150	48	2019	12	27	2020	1	3	76
8	590	106	2019	12	27	2020	1	3	77
8	530	111	2019	12	27	2020	1	3	78
8	139	60	2019	12	27	2020	1	3	79
8	123	45	2019	12	27	2020	1	3	80
8	115	73	2019	12	27	2020	1	3	81
8	549	112	2019	12	27	2020	1	3	82
8	94	19	2019	12	27	2020	1	3	83
8	135	20	2019	12	27	2020	1	3	84
8	179	105	2019	12	27	2020	1	3	85
8	541	279	2019	12	27	2020	1	3	86
8	47	34	2019	12	27	2020	1	3	87
8	187	63	2019	12	27	2020	1	3	88
8	569	289	2019	12	27	2020	1	3	89
8	539	278	2019	12	27	2020	1	3	90
8	153	51	2019	12	27	2020	1	3	91
8	131	2	2019	12	27	2020	1	3	92
8	165	56	2019	12	27	2020	1	3	93
8	185	22	2019	12	27	2020	1	3	94
8	548	120	2019	12	27	2020	1	3	95
8	118	38	2019	12	27	2020	1	3	96
8	282	74	2019	12	27	2020	1	3	97
8	93	62	2019	12	27	2020	1	3	98
8	545	281	2019	12	27	2020	1	3	99
8	532	55	2019	12	27	2020	1	3	100
8	566	120	2019	12	27	2020	1	3	101
8	600	255	2019	12	27	2020	1	3	102
8	535	27	2019	12	27	2020	1	3	103
8	546	123	2019	12	27	2020	1	3	104
8	576	196	2019	12	27	2020	1	3	105
8	552	111	2019	12	27	2020	1	3	106
8	578	38	2019	12	27	2020	1	3	107
8	559	134	2019	12	27	2020	1	3	108
8	601	64	2019	12	27	2020	1	3	109
8	602	53	2019	12	27	2020	1	3	110
8	534	28	2019	12	27	2020	1	3	111
8	109	70	2019	12	27	2020	1	3	112
8	168	89	2019	12	27	2020	1	3	113
8	586	41	2019	12	27	2020	1	3	114
8	191	110	2019	12	27	2020	1	3	115
8	188	107	2019	12	27	2020	1	3	116
8	575	56	2019	12	27	2020	1	3	117
8	140	33	2019	12	27	2020	1	3	118
8	146	87	2019	12	27	2020	1	3	119
8	574	27	2019	12	27	2020	1	3	120
8	564	286	2019	12	27	2020	1	3	121
8	184	19	2019	12	27	2020	1	3	122
8	594	54	2019	12	27	2020	1	3	123
8	603	104	2019	12	27	2020	1	3	124
8	604	297	2019	12	27	2020	1	3	125
8	605	48	2019	12	27	2020	1	3	126
8	9	9	2019	12	27	2020	1	3	127
8	606	9	2019	12	27	2020	1	3	128
8	159	94	2019	12	27	2020	1	3	129
8	186	2	2019	12	27	2020	1	3	130
8	584	294	2019	12	27	2020	1	3	131
8	154	28	2019	12	27	2020	1	3	132
8	607	298	2019	12	27	2020	1	3	133
8	589	75	2019	12	27	2020	1	3	134
8	582	53	2019	12	27	2020	1	3	135
8	581	123	2019	12	27	2020	1	3	136
8	608	8	2019	12	27	2020	1	3	137
8	264	73	2019	12	27	2020	1	3	138
8	609	299	2019	12	27	2020	1	3	139
8	610	300	2019	12	27	2020	1	3	140
8	261	104	2019	12	27	2020	1	3	141
8	158	56	2019	12	27	2020	1	3	142
8	611	71	2019	12	27	2020	1	3	143
8	138	45	2019	12	27	2020	1	3	144
8	612	301	2019	12	27	2020	1	3	145
8	570	20	2019	12	27	2020	1	3	146
8	128	80	2019	12	27	2020	1	3	147
8	613	19	2019	12	27	2020	1	3	148
8	183	29	2019	12	27	2020	1	3	149
8	614	302	2019	12	27	2020	1	3	150
8	400	210	2019	12	27	2020	1	3	151
8	583	293	2019	12	27	2020	1	3	152
8	615	289	2019	12	27	2020	1	3	153
8	105	7	2019	12	27	2020	1	3	154
8	616	303	2019	12	27	2020	1	3	155
8	617	212	2019	12	27	2020	1	3	156
8	618	159	2019	12	27	2020	1	3	157
8	558	278	2019	12	27	2020	1	3	158
8	178	98	2019	12	27	2020	1	3	159
8	117	17	2019	12	27	2020	1	3	160
8	162	70	2019	12	27	2020	1	3	161
8	551	28	2019	12	27	2020	1	3	162
8	592	293	2019	12	27	2020	1	3	163
8	107	70	2019	12	27	2020	1	3	164
8	101	67	2019	12	27	2020	1	3	165
8	177	104	2019	12	27	2020	1	3	166
8	130	67	2019	12	27	2020	1	3	167
8	619	304	2019	12	27	2020	1	3	168
8	181	106	2019	12	27	2020	1	3	169
8	260	48	2019	12	27	2020	1	3	170
8	568	139	2019	12	27	2020	1	3	171
8	170	99	2019	12	27	2020	1	3	172
8	163	95	2019	12	27	2020	1	3	173
8	556	234	2019	12	27	2020	1	3	174
8	173	101	2019	12	27	2020	1	3	175
8	571	290	2019	12	27	2020	1	3	176
8	580	60	2019	12	27	2020	1	3	177
8	620	75	2019	12	27	2020	1	3	178
8	621	42	2019	12	27	2020	1	3	179
8	182	104	2019	12	27	2020	1	3	180
8	622	62	2019	12	27	2020	1	3	181
8	623	305	2019	12	27	2020	1	3	182
8	624	306	2019	12	27	2020	1	3	183
8	174	102	2019	12	27	2020	1	3	184
8	625	307	2019	12	27	2020	1	3	185
8	626	308	2019	12	27	2020	1	3	186
8	627	48	2019	12	27	2020	1	3	187
8	176	103	2019	12	27	2020	1	3	188
8	124	77	2019	12	27	2020	1	3	189
8	628	309	2019	12	27	2020	1	3	190
8	279	153	2019	12	27	2020	1	3	191
8	629	130	2019	12	27	2020	1	3	192
8	630	73	2019	12	27	2020	1	3	193
8	560	28	2019	12	27	2020	1	3	194
8	631	4	2019	12	27	2020	1	3	195
8	632	310	2019	12	27	2020	1	3	196
8	633	41	2019	12	27	2020	1	3	197
8	634	311	2019	12	27	2020	1	3	198
8	635	234	2019	12	27	2020	1	3	199
8	587	295	2019	12	27	2020	1	3	200
9	284	13	2020	12	4	2020	12	11	1
9	400	210	2020	12	4	2020	12	11	2
9	415	219	2020	12	4	2020	12	11	3
9	283	63	2020	12	4	2020	12	11	4
9	285	42	2020	12	4	2020	12	11	5
9	1	1	2020	12	4	2020	12	11	6
9	416	63	2020	12	4	2020	12	11	7
9	350	16	2020	12	4	2020	12	11	8
9	433	13	2020	12	4	2020	12	11	9
9	418	221	2020	12	4	2020	12	11	10
9	289	158	2020	12	4	2020	12	11	11
9	417	220	2020	12	4	2020	12	11	12
9	435	28	2020	12	4	2020	12	11	13
9	439	29	2020	12	4	2020	12	11	14
9	286	157	2020	12	4	2020	12	11	15
9	419	222	2020	12	4	2020	12	11	16
9	287	63	2020	12	4	2020	12	11	17
9	420	223	2020	12	4	2020	12	11	18
9	421	224	2020	12	4	2020	12	11	19
9	288	92	2020	12	4	2020	12	11	20
9	99	21	2020	12	4	2020	12	11	21
9	444	169	2020	12	4	2020	12	11	22
9	290	10	2020	12	4	2020	12	11	23
9	291	159	2020	12	4	2020	12	11	24
9	292	160	2020	12	4	2020	12	11	25
9	367	191	2020	12	4	2020	12	11	26
9	424	10	2020	12	4	2020	12	11	27
9	438	75	2020	12	4	2020	12	11	28
9	450	13	2020	12	4	2020	12	11	29
9	296	161	2020	12	4	2020	12	11	30
9	422	225	2020	12	4	2020	12	11	31
9	459	158	2020	12	4	2020	12	11	32
9	200	27	2020	12	4	2020	12	11	33
9	315	4	2020	12	4	2020	12	11	34
9	297	162	2020	12	4	2020	12	11	35
9	423	226	2020	12	4	2020	12	11	36
9	425	227	2020	12	4	2020	12	11	37
9	305	29	2020	12	4	2020	12	11	38
9	294	92	2020	12	4	2020	12	11	39
9	436	126	2020	12	4	2020	12	11	40
9	21	17	2020	12	4	2020	12	11	41
9	426	228	2020	12	4	2020	12	11	42
9	303	77	2020	12	4	2020	12	11	43
9	429	221	2020	12	4	2020	12	11	44
9	428	230	2020	12	4	2020	12	11	45
9	7	7	2020	12	4	2020	12	11	46
9	298	123	2020	12	4	2020	12	11	47
9	3	3	2020	12	4	2020	12	11	48
9	311	166	2020	12	4	2020	12	11	49
9	293	10	2020	12	4	2020	12	11	50
9	430	231	2020	12	4	2020	12	11	51
9	431	232	2020	12	4	2020	12	11	52
9	349	180	2020	12	4	2020	12	11	53
9	4	4	2020	12	4	2020	12	11	54
9	306	164	2020	12	4	2020	12	11	55
9	432	233	2020	12	4	2020	12	11	56
9	308	74	2020	12	4	2020	12	11	57
9	36	17	2020	12	4	2020	12	11	58
9	302	63	2020	12	4	2020	12	11	59
9	301	2	2020	12	4	2020	12	11	60
9	466	18	2020	12	4	2020	12	11	61
9	357	32	2020	12	4	2020	12	11	62
9	312	167	2020	12	4	2020	12	11	63
9	317	139	2020	12	4	2020	12	11	64
9	310	20	2020	12	4	2020	12	11	65
9	307	165	2020	12	4	2020	12	11	66
9	299	163	2020	12	4	2020	12	11	67
9	329	173	2020	12	4	2020	12	11	68
9	5	5	2020	12	4	2020	12	11	69
9	359	185	2020	12	4	2020	12	11	70
9	352	126	2020	12	4	2020	12	11	71
9	316	130	2020	12	4	2020	12	11	72
9	321	16	2020	12	4	2020	12	11	73
9	636	48	2020	12	4	2020	12	11	74
9	6	6	2020	12	4	2020	12	11	75
9	216	122	2020	12	4	2020	12	11	76
9	514	13	2020	12	4	2020	12	11	77
9	23	19	2020	12	4	2020	12	11	78
9	326	159	2020	12	4	2020	12	11	79
9	390	206	2020	12	4	2020	12	11	80
9	313	168	2020	12	4	2020	12	11	81
9	62	43	2020	12	4	2020	12	11	82
9	319	169	2020	12	4	2020	12	11	83
9	484	159	2020	12	4	2020	12	11	84
9	54	19	2020	12	4	2020	12	11	85
9	437	235	2020	12	4	2020	12	11	86
9	51	28	2020	12	4	2020	12	11	87
9	637	13	2020	12	4	2020	12	11	88
9	69	48	2020	12	4	2020	12	11	89
9	8	8	2020	12	4	2020	12	11	90
9	346	48	2020	12	4	2020	12	11	91
9	388	37	2020	12	4	2020	12	11	92
9	328	21	2020	12	4	2020	12	11	93
9	26	21	2020	12	4	2020	12	11	94
9	330	48	2020	12	4	2020	12	11	95
9	440	236	2020	12	4	2020	12	11	96
9	20	16	2020	12	4	2020	12	11	97
9	27	22	2020	12	4	2020	12	11	98
9	337	175	2020	12	4	2020	12	11	99
9	158	56	2020	12	4	2020	12	11	100
9	446	241	2020	12	4	2020	12	11	101
9	351	80	2020	12	4	2020	12	11	102
9	334	32	2020	12	4	2020	12	11	103
9	638	29	2020	12	4	2020	12	11	104
9	442	238	2020	12	4	2020	12	11	105
9	441	237	2020	12	4	2020	12	11	106
9	333	174	2020	12	4	2020	12	11	107
9	150	48	2020	12	4	2020	12	11	108
9	204	63	2020	12	4	2020	12	11	109
9	37	29	2020	12	4	2020	12	11	110
9	325	130	2020	12	4	2020	12	11	111
9	12	11	2020	12	4	2020	12	11	112
9	33	28	2020	12	4	2020	12	11	113
9	82	56	2020	12	4	2020	12	11	114
9	320	170	2020	12	4	2020	12	11	115
9	201	52	2020	12	4	2020	12	11	116
9	336	92	2020	12	4	2020	12	11	117
9	639	13	2020	12	4	2020	12	11	118
9	341	25	2020	12	4	2020	12	11	119
9	443	239	2020	12	4	2020	12	11	120
9	29	24	2020	12	4	2020	12	11	121
9	81	52	2020	12	4	2020	12	11	122
9	345	178	2020	12	4	2020	12	11	123
9	11	4	2020	12	4	2020	12	11	124
9	342	171	2020	12	4	2020	12	11	125
9	502	266	2020	12	4	2020	12	11	126
9	34	28	2020	12	4	2020	12	11	127
9	219	124	2020	12	4	2020	12	11	128
9	343	176	2020	12	4	2020	12	11	129
9	327	172	2020	12	4	2020	12	11	130
9	10	10	2020	12	4	2020	12	11	131
9	260	48	2020	12	4	2020	12	11	132
9	47	34	2020	12	4	2020	12	11	133
9	448	243	2020	12	4	2020	12	11	134
9	19	15	2020	12	4	2020	12	11	135
9	2	2	2020	12	4	2020	12	11	136
9	12	21	2020	12	4	2020	12	11	137
9	640	1	2020	12	4	2020	12	11	138
9	470	253	2020	12	4	2020	12	11	139
9	381	201	2020	12	4	2020	12	11	140
9	107	70	2020	12	4	2020	12	11	141
9	355	96	2020	12	4	2020	12	11	142
9	455	74	2020	12	4	2020	12	11	143
9	93	62	2020	12	4	2020	12	11	144
9	348	179	2020	12	4	2020	12	11	145
9	128	80	2020	12	4	2020	12	11	146
9	155	92	2020	12	4	2020	12	11	147
9	493	78	2020	12	4	2020	12	11	148
9	447	242	2020	12	4	2020	12	11	149
9	48	35	2020	12	4	2020	12	11	150
9	165	56	2020	12	4	2020	12	11	151
9	323	171	2020	12	4	2020	12	11	152
9	335	89	2020	12	4	2020	12	11	153
9	31	26	2020	12	4	2020	12	11	154
9	511	123	2020	12	4	2020	12	11	155
9	399	92	2020	12	4	2020	12	11	156
9	231	130	2020	12	4	2020	12	11	157
9	331	171	2020	12	4	2020	12	11	158
9	641	13	2020	12	4	2020	12	11	159
9	445	240	2020	12	4	2020	12	11	160
9	68	47	2020	12	4	2020	12	11	161
9	9	9	2020	12	4	2020	12	11	162
9	236	134	2020	12	4	2020	12	11	163
9	385	185	2020	12	4	2020	12	11	164
9	449	244	2020	12	4	2020	12	11	165
9	509	270	2020	12	4	2020	12	11	166
9	642	110	2020	12	4	2020	12	11	167
9	643	169	2020	12	4	2020	12	11	168
9	17	1	2020	12	4	2020	12	11	169
9	452	246	2020	12	4	2020	12	11	170
9	460	89	2020	12	4	2020	12	11	171
9	453	247	2020	12	4	2020	12	11	172
9	138	45	2020	12	4	2020	12	11	173
9	463	251	2020	12	4	2020	12	11	174
9	472	254	2020	12	4	2020	12	11	175
9	454	248	2020	12	4	2020	12	11	176
9	122	20	2020	12	4	2020	12	11	177
9	95	63	2020	12	4	2020	12	11	178
9	644	158	2020	12	4	2020	12	11	179
9	109	70	2020	12	4	2020	12	11	180
9	451	245	2020	12	4	2020	12	11	181
9	408	217	2020	12	4	2020	12	11	182
9	74	28	2020	12	4	2020	12	11	183
9	58	40	2020	12	4	2020	12	11	184
9	457	249	2020	12	4	2020	12	11	185
9	115	73	2020	12	4	2020	12	11	186
9	347	4	2020	12	4	2020	12	11	187
9	464	60	2020	12	4	2020	12	11	188
9	406	216	2020	12	4	2020	12	11	189
9	362	92	2020	12	4	2020	12	11	190
9	340	132	2020	12	4	2020	12	11	191
9	354	182	2020	12	4	2020	12	11	192
9	14	13	2020	12	4	2020	12	11	193
9	645	13	2020	12	4	2020	12	11	194
9	221	126	2020	12	4	2020	12	11	195
9	646	312	2020	12	4	2020	12	11	196
9	174	102	2020	12	4	2020	12	11	197
9	453	210	2020	12	4	2020	12	11	198
9	647	42	2020	12	4	2020	12	11	199
9	462	250	2020	12	4	2020	12	11	200
10	284	13	2020	11	27	2020	12	4	1
10	433	13	2020	11	27	2020	12	4	2
10	283	63	2020	11	27	2020	12	4	3
10	400	210	2020	11	27	2020	12	4	4
10	285	42	2020	11	27	2020	12	4	5
10	289	158	2020	11	27	2020	12	4	6
10	1	1	2020	11	27	2020	12	4	7
10	435	28	2020	11	27	2020	12	4	8
10	415	219	2020	11	27	2020	12	4	9
10	350	16	2020	11	27	2020	12	4	10
10	286	157	2020	11	27	2020	12	4	11
10	450	13	2020	11	27	2020	12	4	12
10	439	29	2020	11	27	2020	12	4	13
10	416	63	2020	11	27	2020	12	4	14
10	459	158	2020	11	27	2020	12	4	15
10	444	169	2020	11	27	2020	12	4	16
10	637	13	2020	11	27	2020	12	4	17
10	418	221	2020	11	27	2020	12	4	18
10	287	63	2020	11	27	2020	12	4	19
10	288	92	2020	11	27	2020	12	4	20
10	514	13	2020	11	27	2020	12	4	21
10	290	10	2020	11	27	2020	12	4	22
10	417	220	2020	11	27	2020	12	4	23
10	419	222	2020	11	27	2020	12	4	24
10	99	21	2020	11	27	2020	12	4	25
10	292	160	2020	11	27	2020	12	4	26
10	420	223	2020	11	27	2020	12	4	27
10	291	159	2020	11	27	2020	12	4	28
10	641	13	2020	11	27	2020	12	4	29
10	296	161	2020	11	27	2020	12	4	30
10	294	92	2020	11	27	2020	12	4	31
10	421	224	2020	11	27	2020	12	4	32
10	639	13	2020	11	27	2020	12	4	33
10	297	162	2020	11	27	2020	12	4	34
10	293	10	2020	11	27	2020	12	4	35
10	438	75	2020	11	27	2020	12	4	36
10	315	4	2020	11	27	2020	12	4	37
10	367	191	2020	11	27	2020	12	4	38
10	200	27	2020	11	27	2020	12	4	39
10	303	77	2020	11	27	2020	12	4	40
10	648	13	2020	11	27	2020	12	4	41
10	298	123	2020	11	27	2020	12	4	42
10	645	13	2020	11	27	2020	12	4	43
10	649	13	2020	11	27	2020	12	4	44
10	424	10	2020	11	27	2020	12	4	45
10	311	166	2020	11	27	2020	12	4	46
10	21	17	2020	11	27	2020	12	4	47
10	650	13	2020	11	27	2020	12	4	48
10	302	63	2020	11	27	2020	12	4	49
10	422	225	2020	11	27	2020	12	4	50
10	349	180	2020	11	27	2020	12	4	51
10	306	164	2020	11	27	2020	12	4	52
10	651	13	2020	11	27	2020	12	4	53
10	319	169	2020	11	27	2020	12	4	54
10	308	74	2020	11	27	2020	12	4	55
10	307	165	2020	11	27	2020	12	4	56
10	305	29	2020	11	27	2020	12	4	57
10	7	7	2020	11	27	2020	12	4	58
10	652	13	2020	11	27	2020	12	4	59
10	3	3	2020	11	27	2020	12	4	60
10	301	2	2020	11	27	2020	12	4	61
10	423	226	2020	11	27	2020	12	4	62
10	653	13	2020	11	27	2020	12	4	63
10	425	227	2020	11	27	2020	12	4	64
10	299	163	2020	11	27	2020	12	4	65
10	654	13	2020	11	27	2020	12	4	66
10	310	20	2020	11	27	2020	12	4	67
10	36	17	2020	11	27	2020	12	4	68
10	426	228	2020	11	27	2020	12	4	69
10	317	139	2020	11	27	2020	12	4	70
10	428	230	2020	11	27	2020	12	4	71
10	484	159	2020	11	27	2020	12	4	72
10	466	18	2020	11	27	2020	12	4	73
10	429	221	2020	11	27	2020	12	4	74
10	329	173	2020	11	27	2020	12	4	75
10	4	4	2020	11	27	2020	12	4	76
10	312	167	2020	11	27	2020	12	4	77
10	357	32	2020	11	27	2020	12	4	78
10	430	231	2020	11	27	2020	12	4	79
10	316	130	2020	11	27	2020	12	4	80
10	326	159	2020	11	27	2020	12	4	81
10	313	168	2020	11	27	2020	12	4	82
10	655	232	2020	11	27	2020	12	4	83
10	321	16	2020	11	27	2020	12	4	84
10	62	43	2020	11	27	2020	12	4	85
10	643	169	2020	11	27	2020	12	4	86
10	352	126	2020	11	27	2020	12	4	87
10	216	122	2020	11	27	2020	12	4	88
10	54	19	2020	11	27	2020	12	4	89
10	328	21	2020	11	27	2020	12	4	90
10	390	206	2020	11	27	2020	12	4	91
10	388	37	2020	11	27	2020	12	4	92
10	51	28	2020	11	27	2020	12	4	93
10	644	158	2020	11	27	2020	12	4	94
10	6	6	2020	11	27	2020	12	4	95
10	23	19	2020	11	27	2020	12	4	96
10	359	185	2020	11	27	2020	12	4	97
10	337	175	2020	11	27	2020	12	4	98
10	5	5	2020	11	27	2020	12	4	99
10	656	158	2020	11	27	2020	12	4	100
10	432	233	2020	11	27	2020	12	4	101
10	351	80	2020	11	27	2020	12	4	102
10	330	48	2020	11	27	2020	12	4	103
10	26	21	2020	11	27	2020	12	4	104
10	325	130	2020	11	27	2020	12	4	105
10	69	48	2020	11	27	2020	12	4	106
10	334	32	2020	11	27	2020	12	4	107
10	346	48	2020	11	27	2020	12	4	108
10	8	8	2020	11	27	2020	12	4	109
10	158	56	2020	11	27	2020	12	4	110
10	27	22	2020	11	27	2020	12	4	111
10	333	174	2020	11	27	2020	12	4	112
10	320	170	2020	11	27	2020	12	4	113
10	204	63	2020	11	27	2020	12	4	114
10	37	29	2020	11	27	2020	12	4	115
10	657	158	2020	11	27	2020	12	4	116
10	336	92	2020	11	27	2020	12	4	117
10	345	178	2020	11	27	2020	12	4	118
10	502	266	2020	11	27	2020	12	4	119
10	82	56	2020	11	27	2020	12	4	120
10	33	28	2020	11	27	2020	12	4	121
10	201	52	2020	11	27	2020	12	4	122
10	150	48	2020	11	27	2020	12	4	123
10	20	16	2020	11	27	2020	12	4	124
10	219	124	2020	11	27	2020	12	4	125
10	658	158	2020	11	27	2020	12	4	126
10	341	25	2020	11	27	2020	12	4	127
10	659	158	2020	11	27	2020	12	4	128
10	342	171	2020	11	27	2020	12	4	129
10	12	11	2020	11	27	2020	12	4	130
10	343	176	2020	11	27	2020	12	4	131
10	81	52	2020	11	27	2020	12	4	132
10	440	236	2020	11	27	2020	12	4	133
10	381	201	2020	11	27	2020	12	4	134
10	437	235	2020	11	27	2020	12	4	135
10	327	172	2020	11	27	2020	12	4	136
10	335	89	2020	11	27	2020	12	4	137
10	11	4	2020	11	27	2020	12	4	138
10	331	171	2020	11	27	2020	12	4	139
10	323	171	2020	11	27	2020	12	4	140
10	12	21	2020	11	27	2020	12	4	141
10	47	34	2020	11	27	2020	12	4	142
10	29	24	2020	11	27	2020	12	4	143
10	348	179	2020	11	27	2020	12	4	144
10	34	28	2020	11	27	2020	12	4	145
10	511	123	2020	11	27	2020	12	4	146
10	399	92	2020	11	27	2020	12	4	147
10	493	78	2020	11	27	2020	12	4	148
10	128	80	2020	11	27	2020	12	4	149
10	93	62	2020	11	27	2020	12	4	150
10	442	238	2020	11	27	2020	12	4	151
10	441	237	2020	11	27	2020	12	4	152
10	260	48	2020	11	27	2020	12	4	153
10	107	70	2020	11	27	2020	12	4	154
10	446	241	2020	11	27	2020	12	4	155
10	155	92	2020	11	27	2020	12	4	156
10	10	10	2020	11	27	2020	12	4	157
10	355	96	2020	11	27	2020	12	4	158
10	231	130	2020	11	27	2020	12	4	159
10	19	15	2020	11	27	2020	12	4	160
10	165	56	2020	11	27	2020	12	4	161
10	470	253	2020	11	27	2020	12	4	162
10	647	42	2020	11	27	2020	12	4	163
10	2	2	2020	11	27	2020	12	4	164
10	660	169	2020	11	27	2020	12	4	165
10	68	47	2020	11	27	2020	12	4	166
10	340	132	2020	11	27	2020	12	4	167
10	122	20	2020	11	27	2020	12	4	168
10	48	35	2020	11	27	2020	12	4	169
10	347	4	2020	11	27	2020	12	4	170
10	661	313	2020	11	27	2020	12	4	171
10	662	169	2020	11	27	2020	12	4	172
10	14	13	2020	11	27	2020	12	4	173
10	236	134	2020	11	27	2020	12	4	174
10	138	45	2020	11	27	2020	12	4	175
10	385	185	2020	11	27	2020	12	4	176
10	354	182	2020	11	27	2020	12	4	177
10	31	26	2020	11	27	2020	12	4	178
10	95	63	2020	11	27	2020	12	4	179
10	646	312	2020	11	27	2020	12	4	180
10	443	239	2020	11	27	2020	12	4	181
10	463	251	2020	11	27	2020	12	4	182
10	17	1	2020	11	27	2020	12	4	183
10	448	243	2020	11	27	2020	12	4	184
10	363	187	2020	11	27	2020	12	4	185
10	406	216	2020	11	27	2020	12	4	186
10	229	84	2020	11	27	2020	12	4	187
10	74	28	2020	11	27	2020	12	4	188
10	362	92	2020	11	27	2020	12	4	189
10	109	70	2020	11	27	2020	12	4	190
10	115	73	2020	11	27	2020	12	4	191
10	376	197	2020	11	27	2020	12	4	192
10	372	85	2020	11	27	2020	12	4	193
10	9	9	2020	11	27	2020	12	4	194
10	509	270	2020	11	27	2020	12	4	195
10	663	32	2020	11	27	2020	12	4	196
10	58	40	2020	11	27	2020	12	4	197
10	174	102	2020	11	27	2020	12	4	198
10	408	217	2020	11	27	2020	12	4	199
10	123	45	2020	11	27	2020	12	4	200
11	216	122	2020	7	31	2020	8	7	1
11	200	27	2020	7	31	2020	8	7	2
11	1	1	2020	7	31	2020	8	7	3
11	99	21	2020	7	31	2020	8	7	4
11	664	28	2020	7	31	2020	8	7	5
11	3	3	2020	7	31	2020	8	7	6
11	665	234	2020	7	31	2020	8	7	7
11	62	43	2020	7	31	2020	8	7	8
11	330	48	2020	7	31	2020	8	7	9
11	666	234	2020	7	31	2020	8	7	10
11	310	20	2020	7	31	2020	8	7	11
11	346	48	2020	7	31	2020	8	7	12
11	219	124	2020	7	31	2020	8	7	13
11	7	7	2020	7	31	2020	8	7	14
11	6	6	2020	7	31	2020	8	7	15
11	201	52	2020	7	31	2020	8	7	16
11	68	47	2020	7	31	2020	8	7	17
11	231	130	2020	7	31	2020	8	7	18
11	361	186	2020	7	31	2020	8	7	19
11	355	96	2020	7	31	2020	8	7	20
11	208	39	2020	7	31	2020	8	7	21
11	334	32	2020	7	31	2020	8	7	22
11	217	123	2020	7	31	2020	8	7	23
11	8	8	2020	7	31	2020	8	7	24
11	11	4	2020	7	31	2020	8	7	25
11	667	234	2020	7	31	2020	8	7	26
11	4	4	2020	7	31	2020	8	7	27
11	312	167	2020	7	31	2020	8	7	28
11	21	17	2020	7	31	2020	8	7	29
11	2	2	2020	7	31	2020	8	7	30
11	327	172	2020	7	31	2020	8	7	31
11	362	92	2020	7	31	2020	8	7	32
11	342	171	2020	7	31	2020	8	7	33
11	202	116	2020	7	31	2020	8	7	34
11	297	162	2020	7	31	2020	8	7	35
11	204	63	2020	7	31	2020	8	7	36
11	668	314	2020	7	31	2020	8	7	37
11	36	17	2020	7	31	2020	8	7	38
11	209	120	2020	7	31	2020	8	7	39
11	379	172	2020	7	31	2020	8	7	40
11	236	134	2020	7	31	2020	8	7	41
11	294	92	2020	7	31	2020	8	7	42
11	366	190	2020	7	31	2020	8	7	43
11	5	5	2020	7	31	2020	8	7	44
11	669	234	2020	7	31	2020	8	7	45
11	15	14	2020	7	31	2020	8	7	46
11	137	51	2020	7	31	2020	8	7	47
11	10	10	2020	7	31	2020	8	7	48
11	670	234	2020	7	31	2020	8	7	49
11	671	234	2020	7	31	2020	8	7	50
11	26	21	2020	7	31	2020	8	7	51
11	20	16	2020	7	31	2020	8	7	52
11	23	19	2020	7	31	2020	8	7	53
11	336	92	2020	7	31	2020	8	7	54
11	37	29	2020	7	31	2020	8	7	55
11	158	56	2020	7	31	2020	8	7	56
11	321	16	2020	7	31	2020	8	7	57
11	291	159	2020	7	31	2020	8	7	58
11	13	12	2020	7	31	2020	8	7	59
11	214	68	2020	7	31	2020	8	7	60
11	33	28	2020	7	31	2020	8	7	61
11	12	11	2020	7	31	2020	8	7	62
11	27	22	2020	7	31	2020	8	7	63
11	203	117	2020	7	31	2020	8	7	64
11	672	22	2020	7	31	2020	8	7	65
11	673	234	2020	7	31	2020	8	7	66
11	674	234	2020	7	31	2020	8	7	67
11	17	1	2020	7	31	2020	8	7	68
11	675	234	2020	7	31	2020	8	7	69
11	676	48	2020	7	31	2020	8	7	70
11	54	19	2020	7	31	2020	8	7	71
11	82	56	2020	7	31	2020	8	7	72
11	9	9	2020	7	31	2020	8	7	73
11	223	35	2020	7	31	2020	8	7	74
11	48	35	2020	7	31	2020	8	7	75
11	69	48	2020	7	31	2020	8	7	76
11	210	66	2020	7	31	2020	8	7	77
11	677	234	2020	7	31	2020	8	7	78
11	34	28	2020	7	31	2020	8	7	79
11	397	92	2020	7	31	2020	8	7	80
11	155	92	2020	7	31	2020	8	7	81
11	678	315	2020	7	31	2020	8	7	82
11	679	234	2020	7	31	2020	8	7	83
11	165	56	2020	7	31	2020	8	7	84
11	19	15	2020	7	31	2020	8	7	85
11	680	48	2020	7	31	2020	8	7	86
11	681	108	2020	7	31	2020	8	7	87
11	682	90	2020	7	31	2020	8	7	88
11	237	135	2020	7	31	2020	8	7	89
11	205	118	2020	7	31	2020	8	7	90
11	110	32	2020	7	31	2020	8	7	91
11	29	24	2020	7	31	2020	8	7	92
11	683	234	2020	7	31	2020	8	7	93
11	51	28	2020	7	31	2020	8	7	94
11	296	161	2020	7	31	2020	8	7	95
11	122	20	2020	7	31	2020	8	7	96
11	213	33	2020	7	31	2020	8	7	97
11	221	126	2020	7	31	2020	8	7	98
11	230	48	2020	7	31	2020	8	7	99
11	14	13	2020	7	31	2020	8	7	100
11	684	48	2020	7	31	2020	8	7	101
11	116	74	2020	7	31	2020	8	7	102
11	211	121	2020	7	31	2020	8	7	103
11	18	13	2020	7	31	2020	8	7	104
11	150	48	2020	7	31	2020	8	7	105
11	685	89	2020	7	31	2020	8	7	106
11	252	143	2020	7	31	2020	8	7	107
11	207	119	2020	7	31	2020	8	7	108
11	25	20	2020	7	31	2020	8	7	109
11	686	234	2020	7	31	2020	8	7	110
11	81	52	2020	7	31	2020	8	7	111
11	30	25	2020	7	31	2020	8	7	112
11	227	128	2020	7	31	2020	8	7	113
11	222	2	2020	7	31	2020	8	7	114
11	64	45	2020	7	31	2020	8	7	115
11	47	34	2020	7	31	2020	8	7	116
11	404	214	2020	7	31	2020	8	7	117
11	687	316	2020	7	31	2020	8	7	118
11	93	62	2020	7	31	2020	8	7	119
11	229	84	2020	7	31	2020	8	7	120
11	31	26	2020	7	31	2020	8	7	121
11	303	77	2020	7	31	2020	8	7	122
11	688	110	2020	7	31	2020	8	7	123
11	12	21	2020	7	31	2020	8	7	124
11	218	86	2020	7	31	2020	8	7	125
11	689	234	2020	7	31	2020	8	7	126
11	228	129	2020	7	31	2020	8	7	127
11	53	37	2020	7	31	2020	8	7	128
11	16	4	2020	7	31	2020	8	7	129
11	690	317	2020	7	31	2020	8	7	130
11	691	145	2020	7	31	2020	8	7	131
11	692	234	2020	7	31	2020	8	7	132
11	58	40	2020	7	31	2020	8	7	133
11	24	9	2020	7	31	2020	8	7	134
11	693	58	2020	7	31	2020	8	7	135
11	107	70	2020	7	31	2020	8	7	136
11	240	137	2020	7	31	2020	8	7	137
11	74	28	2020	7	31	2020	8	7	138
11	694	302	2020	7	31	2020	8	7	139
11	695	318	2020	7	31	2020	8	7	140
11	696	302	2020	7	31	2020	8	7	141
11	95	63	2020	7	31	2020	8	7	142
11	94	19	2020	7	31	2020	8	7	143
11	697	205	2020	7	31	2020	8	7	144
11	75	45	2020	7	31	2020	8	7	145
11	115	73	2020	7	31	2020	8	7	146
11	123	45	2020	7	31	2020	8	7	147
11	109	70	2020	7	31	2020	8	7	148
11	698	24	2020	7	31	2020	8	7	149
11	56	39	2020	7	31	2020	8	7	150
11	699	33	2020	7	31	2020	8	7	151
11	700	74	2020	7	31	2020	8	7	152
11	701	234	2020	7	31	2020	8	7	153
11	128	80	2020	7	31	2020	8	7	154
11	138	45	2020	7	31	2020	8	7	155
11	702	319	2020	7	31	2020	8	7	156
11	364	188	2020	7	31	2020	8	7	157
11	363	187	2020	7	31	2020	8	7	158
11	703	190	2020	7	31	2020	8	7	159
11	103	68	2020	7	31	2020	8	7	160
11	151	90	2020	7	31	2020	8	7	161
11	260	48	2020	7	31	2020	8	7	162
11	313	168	2020	7	31	2020	8	7	163
11	243	139	2020	7	31	2020	8	7	164
11	238	32	2020	7	31	2020	8	7	165
11	704	48	2020	7	31	2020	8	7	166
11	118	38	2020	7	31	2020	8	7	167
11	157	93	2020	7	31	2020	8	7	168
11	705	302	2020	7	31	2020	8	7	169
11	706	66	2020	7	31	2020	8	7	170
11	707	131	2020	7	31	2020	8	7	171
11	70	49	2020	7	31	2020	8	7	172
11	708	85	2020	7	31	2020	8	7	173
11	174	102	2020	7	31	2020	8	7	174
11	162	70	2020	7	31	2020	8	7	175
11	182	104	2020	7	31	2020	8	7	176
11	83	57	2020	7	31	2020	8	7	177
11	44	20	2020	7	31	2020	8	7	178
11	262	148	2020	7	31	2020	8	7	179
11	140	33	2020	7	31	2020	8	7	180
11	709	320	2020	7	31	2020	8	7	181
11	166	97	2020	7	31	2020	8	7	182
11	45	32	2020	7	31	2020	8	7	183
11	153	51	2020	7	31	2020	8	7	184
11	710	184	2020	7	31	2020	8	7	185
11	711	321	2020	7	31	2020	8	7	186
11	712	322	2020	7	31	2020	8	7	187
11	101	67	2020	7	31	2020	8	7	188
11	52	20	2020	7	31	2020	8	7	189
11	173	101	2020	7	31	2020	8	7	190
11	57	5	2020	7	31	2020	8	7	191
11	178	98	2020	7	31	2020	8	7	192
11	111	71	2020	7	31	2020	8	7	193
11	91	61	2020	7	31	2020	8	7	194
11	713	323	2020	7	31	2020	8	7	195
11	264	73	2020	7	31	2020	8	7	196
11	714	168	2020	7	31	2020	8	7	197
11	259	147	2020	7	31	2020	8	7	198
11	154	28	2020	7	31	2020	8	7	199
11	117	17	2020	7	31	2020	8	7	200
12	285	42	2020	10	9	2020	10	16	1
12	286	157	2020	10	9	2020	10	16	2
12	292	160	2020	10	9	2020	10	16	3
12	291	159	2020	10	9	2020	10	16	4
12	289	158	2020	10	9	2020	10	16	5
12	288	92	2020	10	9	2020	10	16	6
12	1	1	2020	10	9	2020	10	16	7
12	294	92	2020	10	9	2020	10	16	8
12	99	21	2020	10	9	2020	10	16	9
12	293	10	2020	10	9	2020	10	16	10
12	297	162	2020	10	9	2020	10	16	11
12	301	2	2020	10	9	2020	10	16	12
12	200	27	2020	10	9	2020	10	16	13
12	296	161	2020	10	9	2020	10	16	14
12	298	123	2020	10	9	2020	10	16	15
12	216	122	2020	10	9	2020	10	16	16
12	305	29	2020	10	9	2020	10	16	17
12	331	171	2020	10	9	2020	10	16	18
12	303	77	2020	10	9	2020	10	16	19
12	320	170	2020	10	9	2020	10	16	20
12	323	171	2020	10	9	2020	10	16	21
12	3	3	2020	10	9	2020	10	16	22
12	312	167	2020	10	9	2020	10	16	23
12	299	163	2020	10	9	2020	10	16	24
12	310	20	2020	10	9	2020	10	16	25
12	308	74	2020	10	9	2020	10	16	26
12	306	164	2020	10	9	2020	10	16	27
12	21	17	2020	10	9	2020	10	16	28
12	62	43	2020	10	9	2020	10	16	29
12	327	172	2020	10	9	2020	10	16	30
12	321	16	2020	10	9	2020	10	16	31
12	313	168	2020	10	9	2020	10	16	32
12	7	7	2020	10	9	2020	10	16	33
12	336	92	2020	10	9	2020	10	16	34
12	36	17	2020	10	9	2020	10	16	35
12	307	165	2020	10	9	2020	10	16	36
12	325	130	2020	10	9	2020	10	16	37
12	330	48	2020	10	9	2020	10	16	38
12	219	124	2020	10	9	2020	10	16	39
12	334	32	2020	10	9	2020	10	16	40
12	342	171	2020	10	9	2020	10	16	41
12	319	169	2020	10	9	2020	10	16	42
12	715	171	2020	10	9	2020	10	16	43
12	6	6	2020	10	9	2020	10	16	44
12	316	130	2020	10	9	2020	10	16	45
12	373	194	2020	10	9	2020	10	16	46
12	4	4	2020	10	9	2020	10	16	47
12	346	48	2020	10	9	2020	10	16	48
12	231	130	2020	10	9	2020	10	16	49
12	343	176	2020	10	9	2020	10	16	50
12	317	139	2020	10	9	2020	10	16	51
12	360	171	2020	10	9	2020	10	16	52
12	8	8	2020	10	9	2020	10	16	53
12	348	179	2020	10	9	2020	10	16	54
12	236	134	2020	10	9	2020	10	16	55
12	201	52	2020	10	9	2020	10	16	56
12	394	194	2020	10	9	2020	10	16	57
12	23	19	2020	10	9	2020	10	16	58
12	407	56	2020	10	9	2020	10	16	59
12	204	63	2020	10	9	2020	10	16	60
12	333	174	2020	10	9	2020	10	16	61
12	158	56	2020	10	9	2020	10	16	62
12	37	29	2020	10	9	2020	10	16	63
12	354	182	2020	10	9	2020	10	16	64
12	355	96	2020	10	9	2020	10	16	65
12	326	159	2020	10	9	2020	10	16	66
12	27	22	2020	10	9	2020	10	16	67
12	5	5	2020	10	9	2020	10	16	68
12	26	21	2020	10	9	2020	10	16	69
12	361	186	2020	10	9	2020	10	16	70
12	137	51	2020	10	9	2020	10	16	71
12	69	48	2020	10	9	2020	10	16	72
12	337	175	2020	10	9	2020	10	16	73
12	315	4	2020	10	9	2020	10	16	74
12	68	47	2020	10	9	2020	10	16	75
12	389	122	2020	10	9	2020	10	16	76
12	362	92	2020	10	9	2020	10	16	77
12	379	172	2020	10	9	2020	10	16	78
12	54	19	2020	10	9	2020	10	16	79
12	150	48	2020	10	9	2020	10	16	80
12	12	11	2020	10	9	2020	10	16	81
12	82	56	2020	10	9	2020	10	16	82
12	10	10	2020	10	9	2020	10	16	83
12	2	2	2020	10	9	2020	10	16	84
12	366	190	2020	10	9	2020	10	16	85
12	335	89	2020	10	9	2020	10	16	86
12	81	52	2020	10	9	2020	10	16	87
12	368	192	2020	10	9	2020	10	16	88
12	11	4	2020	10	9	2020	10	16	89
12	402	212	2020	10	9	2020	10	16	90
12	51	28	2020	10	9	2020	10	16	91
12	33	28	2020	10	9	2020	10	16	92
12	20	16	2020	10	9	2020	10	16	93
12	370	48	2020	10	9	2020	10	16	94
12	380	200	2020	10	9	2020	10	16	95
12	165	56	2020	10	9	2020	10	16	96
12	363	187	2020	10	9	2020	10	16	97
12	374	195	2020	10	9	2020	10	16	98
12	329	173	2020	10	9	2020	10	16	99
12	47	34	2020	10	9	2020	10	16	100
12	202	116	2020	10	9	2020	10	16	101
12	398	209	2020	10	9	2020	10	16	102
12	356	183	2020	10	9	2020	10	16	103
12	391	207	2020	10	9	2020	10	16	104
12	375	196	2020	10	9	2020	10	16	105
12	155	92	2020	10	9	2020	10	16	106
12	93	62	2020	10	9	2020	10	16	107
12	29	24	2020	10	9	2020	10	16	108
12	716	324	2020	10	9	2020	10	16	109
12	12	21	2020	10	9	2020	10	16	110
12	122	20	2020	10	9	2020	10	16	111
12	717	171	2020	10	9	2020	10	16	112
12	19	15	2020	10	9	2020	10	16	113
12	48	35	2020	10	9	2020	10	16	114
12	718	171	2020	10	9	2020	10	16	115
12	116	74	2020	10	9	2020	10	16	116
12	128	80	2020	10	9	2020	10	16	117
12	668	314	2020	10	9	2020	10	16	118
12	359	185	2020	10	9	2020	10	16	119
12	719	325	2020	10	9	2020	10	16	120
12	214	68	2020	10	9	2020	10	16	121
12	372	85	2020	10	9	2020	10	16	122
12	17	1	2020	10	9	2020	10	16	123
12	399	92	2020	10	9	2020	10	16	124
12	364	188	2020	10	9	2020	10	16	125
12	217	123	2020	10	9	2020	10	16	126
12	107	70	2020	10	9	2020	10	16	127
12	397	92	2020	10	9	2020	10	16	128
12	311	166	2020	10	9	2020	10	16	129
12	393	130	2020	10	9	2020	10	16	130
12	34	28	2020	10	9	2020	10	16	131
12	382	166	2020	10	9	2020	10	16	132
12	369	193	2020	10	9	2020	10	16	133
12	138	45	2020	10	9	2020	10	16	134
12	720	326	2020	10	9	2020	10	16	135
12	64	45	2020	10	9	2020	10	16	136
12	403	213	2020	10	9	2020	10	16	137
12	208	39	2020	10	9	2020	10	16	138
12	260	48	2020	10	9	2020	10	16	139
12	123	45	2020	10	9	2020	10	16	140
12	9	9	2020	10	9	2020	10	16	141
12	25	20	2020	10	9	2020	10	16	142
12	95	63	2020	10	9	2020	10	16	143
12	678	315	2020	10	9	2020	10	16	144
12	115	73	2020	10	9	2020	10	16	145
12	210	66	2020	10	9	2020	10	16	146
12	174	102	2020	10	9	2020	10	16	147
12	13	12	2020	10	9	2020	10	16	148
12	109	70	2020	10	9	2020	10	16	149
12	173	101	2020	10	9	2020	10	16	150
12	721	171	2020	10	9	2020	10	16	151
12	203	117	2020	10	9	2020	10	16	152
12	396	159	2020	10	9	2020	10	16	153
12	94	19	2020	10	9	2020	10	16	154
12	218	86	2020	10	9	2020	10	16	155
12	58	40	2020	10	9	2020	10	16	156
12	31	26	2020	10	9	2020	10	16	157
12	722	68	2020	10	9	2020	10	16	158
12	376	197	2020	10	9	2020	10	16	159
12	211	121	2020	10	9	2020	10	16	160
12	75	45	2020	10	9	2020	10	16	161
12	381	201	2020	10	9	2020	10	16	162
12	404	214	2020	10	9	2020	10	16	163
12	209	120	2020	10	9	2020	10	16	164
12	118	38	2020	10	9	2020	10	16	165
12	15	14	2020	10	9	2020	10	16	166
12	18	13	2020	10	9	2020	10	16	167
12	14	13	2020	10	9	2020	10	16	168
12	74	28	2020	10	9	2020	10	16	169
12	240	137	2020	10	9	2020	10	16	170
12	401	211	2020	10	9	2020	10	16	171
12	385	185	2020	10	9	2020	10	16	172
12	723	194	2020	10	9	2020	10	16	173
12	103	68	2020	10	9	2020	10	16	174
12	724	327	2020	10	9	2020	10	16	175
12	725	328	2020	10	9	2020	10	16	176
12	664	28	2020	10	9	2020	10	16	177
12	700	74	2020	10	9	2020	10	16	178
12	110	32	2020	10	9	2020	10	16	179
12	166	97	2020	10	9	2020	10	16	180
12	726	45	2020	10	9	2020	10	16	181
12	727	45	2020	10	9	2020	10	16	182
12	728	329	2020	10	9	2020	10	16	183
12	101	67	2020	10	9	2020	10	16	184
12	660	169	2020	10	9	2020	10	16	185
12	729	158	2020	10	9	2020	10	16	186
12	712	322	2020	10	9	2020	10	16	187
12	408	217	2020	10	9	2020	10	16	188
12	70	49	2020	10	9	2020	10	16	189
12	53	37	2020	10	9	2020	10	16	190
12	730	179	2020	10	9	2020	10	16	191
12	691	145	2020	10	9	2020	10	16	192
12	682	90	2020	10	9	2020	10	16	193
12	731	330	2020	10	9	2020	10	16	194
12	229	84	2020	10	9	2020	10	16	195
12	182	104	2020	10	9	2020	10	16	196
12	213	33	2020	10	9	2020	10	16	197
12	559	134	2020	10	9	2020	10	16	198
12	279	153	2020	10	9	2020	10	16	199
12	91	61	2020	10	9	2020	10	16	200
13	284	13	2020	11	13	2020	11	20	1
13	435	28	2020	11	13	2020	11	20	2
13	283	63	2020	11	13	2020	11	20	3
13	285	42	2020	11	13	2020	11	20	4
13	286	157	2020	11	13	2020	11	20	5
13	290	10	2020	11	13	2020	11	20	6
13	289	158	2020	11	13	2020	11	20	7
13	288	92	2020	11	13	2020	11	20	8
13	1	1	2020	11	13	2020	11	20	9
13	292	160	2020	11	13	2020	11	20	10
13	291	159	2020	11	13	2020	11	20	11
13	99	21	2020	11	13	2020	11	20	12
13	294	92	2020	11	13	2020	11	20	13
13	293	10	2020	11	13	2020	11	20	14
13	296	161	2020	11	13	2020	11	20	15
13	297	162	2020	11	13	2020	11	20	16
13	287	63	2020	11	13	2020	11	20	17
13	350	16	2020	11	13	2020	11	20	18
13	484	159	2020	11	13	2020	11	20	19
13	302	63	2020	11	13	2020	11	20	20
13	298	123	2020	11	13	2020	11	20	21
13	315	4	2020	11	13	2020	11	20	22
13	299	163	2020	11	13	2020	11	20	23
13	200	27	2020	11	13	2020	11	20	24
13	311	166	2020	11	13	2020	11	20	25
13	303	77	2020	11	13	2020	11	20	26
13	21	17	2020	11	13	2020	11	20	27
13	307	165	2020	11	13	2020	11	20	28
13	301	2	2020	11	13	2020	11	20	29
13	306	164	2020	11	13	2020	11	20	30
13	308	74	2020	11	13	2020	11	20	31
13	305	29	2020	11	13	2020	11	20	32
13	313	168	2020	11	13	2020	11	20	33
13	312	167	2020	11	13	2020	11	20	34
13	317	139	2020	11	13	2020	11	20	35
13	310	20	2020	11	13	2020	11	20	36
13	329	173	2020	11	13	2020	11	20	37
13	316	130	2020	11	13	2020	11	20	38
13	216	122	2020	11	13	2020	11	20	39
13	326	159	2020	11	13	2020	11	20	40
13	36	17	2020	11	13	2020	11	20	41
13	349	180	2020	11	13	2020	11	20	42
13	7	7	2020	11	13	2020	11	20	43
13	3	3	2020	11	13	2020	11	20	44
13	319	169	2020	11	13	2020	11	20	45
13	400	210	2020	11	13	2020	11	20	46
13	328	21	2020	11	13	2020	11	20	47
13	62	43	2020	11	13	2020	11	20	48
13	337	175	2020	11	13	2020	11	20	49
13	321	16	2020	11	13	2020	11	20	50
13	352	126	2020	11	13	2020	11	20	51
13	438	75	2020	11	13	2020	11	20	52
13	330	48	2020	11	13	2020	11	20	53
13	325	130	2020	11	13	2020	11	20	54
13	333	174	2020	11	13	2020	11	20	55
13	367	191	2020	11	13	2020	11	20	56
13	320	170	2020	11	13	2020	11	20	57
13	502	266	2020	11	13	2020	11	20	58
13	323	171	2020	11	13	2020	11	20	59
13	51	28	2020	11	13	2020	11	20	60
13	4	4	2020	11	13	2020	11	20	61
13	357	32	2020	11	13	2020	11	20	62
13	334	32	2020	11	13	2020	11	20	63
13	351	80	2020	11	13	2020	11	20	64
13	54	19	2020	11	13	2020	11	20	65
13	327	172	2020	11	13	2020	11	20	66
13	345	178	2020	11	13	2020	11	20	67
13	6	6	2020	11	13	2020	11	20	68
13	341	25	2020	11	13	2020	11	20	69
13	336	92	2020	11	13	2020	11	20	70
13	415	219	2020	11	13	2020	11	20	71
13	23	19	2020	11	13	2020	11	20	72
13	388	37	2020	11	13	2020	11	20	73
13	331	171	2020	11	13	2020	11	20	74
13	346	48	2020	11	13	2020	11	20	75
13	511	123	2020	11	13	2020	11	20	76
13	204	63	2020	11	13	2020	11	20	77
13	27	22	2020	11	13	2020	11	20	78
13	69	48	2020	11	13	2020	11	20	79
13	342	171	2020	11	13	2020	11	20	80
13	26	21	2020	11	13	2020	11	20	81
13	359	185	2020	11	13	2020	11	20	82
13	390	206	2020	11	13	2020	11	20	83
13	343	176	2020	11	13	2020	11	20	84
13	158	56	2020	11	13	2020	11	20	85
13	8	8	2020	11	13	2020	11	20	86
13	335	89	2020	11	13	2020	11	20	87
13	33	28	2020	11	13	2020	11	20	88
13	219	124	2020	11	13	2020	11	20	89
13	647	42	2020	11	13	2020	11	20	90
13	37	29	2020	11	13	2020	11	20	91
13	5	5	2020	11	13	2020	11	20	92
13	295	63	2020	11	13	2020	11	20	93
13	348	179	2020	11	13	2020	11	20	94
13	732	24	2020	11	13	2020	11	20	95
13	340	132	2020	11	13	2020	11	20	96
13	201	52	2020	11	13	2020	11	20	97
13	347	4	2020	11	13	2020	11	20	98
13	150	48	2020	11	13	2020	11	20	99
13	236	134	2020	11	13	2020	11	20	100
13	416	63	2020	11	13	2020	11	20	101
13	82	56	2020	11	13	2020	11	20	102
13	81	52	2020	11	13	2020	11	20	103
13	231	130	2020	11	13	2020	11	20	104
13	47	34	2020	11	13	2020	11	20	105
13	354	182	2020	11	13	2020	11	20	106
13	12	11	2020	11	13	2020	11	20	107
13	12	21	2020	11	13	2020	11	20	108
13	34	28	2020	11	13	2020	11	20	109
13	20	16	2020	11	13	2020	11	20	110
13	128	80	2020	11	13	2020	11	20	111
13	356	183	2020	11	13	2020	11	20	112
13	93	62	2020	11	13	2020	11	20	113
13	355	96	2020	11	13	2020	11	20	114
13	11	4	2020	11	13	2020	11	20	115
13	663	32	2020	11	13	2020	11	20	116
13	418	221	2020	11	13	2020	11	20	117
13	68	47	2020	11	13	2020	11	20	118
13	107	70	2020	11	13	2020	11	20	119
13	417	220	2020	11	13	2020	11	20	120
13	29	24	2020	11	13	2020	11	20	121
13	122	20	2020	11	13	2020	11	20	122
13	155	92	2020	11	13	2020	11	20	123
13	165	56	2020	11	13	2020	11	20	124
13	363	187	2020	11	13	2020	11	20	125
13	419	222	2020	11	13	2020	11	20	126
13	260	48	2020	11	13	2020	11	20	127
13	2	2	2020	11	13	2020	11	20	128
13	364	188	2020	11	13	2020	11	20	129
13	381	201	2020	11	13	2020	11	20	130
13	19	15	2020	11	13	2020	11	20	131
13	48	35	2020	11	13	2020	11	20	132
13	10	10	2020	11	13	2020	11	20	133
13	95	63	2020	11	13	2020	11	20	134
13	385	185	2020	11	13	2020	11	20	135
13	372	85	2020	11	13	2020	11	20	136
13	138	45	2020	11	13	2020	11	20	137
13	74	28	2020	11	13	2020	11	20	138
13	361	186	2020	11	13	2020	11	20	139
13	362	92	2020	11	13	2020	11	20	140
13	394	194	2020	11	13	2020	11	20	141
13	368	192	2020	11	13	2020	11	20	142
13	344	177	2020	11	13	2020	11	20	143
13	137	51	2020	11	13	2020	11	20	144
13	369	193	2020	11	13	2020	11	20	145
13	371	32	2020	11	13	2020	11	20	146
13	376	197	2020	11	13	2020	11	20	147
13	174	102	2020	11	13	2020	11	20	148
13	420	223	2020	11	13	2020	11	20	149
13	733	126	2020	11	13	2020	11	20	150
13	109	70	2020	11	13	2020	11	20	151
13	360	171	2020	11	13	2020	11	20	152
13	734	24	2020	11	13	2020	11	20	153
13	173	101	2020	11	13	2020	11	20	154
13	366	190	2020	11	13	2020	11	20	155
13	365	189	2020	11	13	2020	11	20	156
13	406	216	2020	11	13	2020	11	20	157
13	123	45	2020	11	13	2020	11	20	158
13	214	68	2020	11	13	2020	11	20	159
13	300	63	2020	11	13	2020	11	20	160
13	358	184	2020	11	13	2020	11	20	161
13	370	48	2020	11	13	2020	11	20	162
13	58	40	2020	11	13	2020	11	20	163
13	115	73	2020	11	13	2020	11	20	164
13	374	195	2020	11	13	2020	11	20	165
13	735	331	2020	11	13	2020	11	20	166
13	378	199	2020	11	13	2020	11	20	167
13	736	24	2020	11	13	2020	11	20	168
13	408	217	2020	11	13	2020	11	20	169
13	404	214	2020	11	13	2020	11	20	170
13	64	45	2020	11	13	2020	11	20	171
13	31	26	2020	11	13	2020	11	20	172
13	383	202	2020	11	13	2020	11	20	173
13	379	172	2020	11	13	2020	11	20	174
13	118	38	2020	11	13	2020	11	20	175
13	94	19	2020	11	13	2020	11	20	176
13	202	116	2020	11	13	2020	11	20	177
13	382	166	2020	11	13	2020	11	20	178
13	470	253	2020	11	13	2020	11	20	179
13	304	63	2020	11	13	2020	11	20	180
13	9	9	2020	11	13	2020	11	20	181
13	398	209	2020	11	13	2020	11	20	182
13	737	249	2020	11	13	2020	11	20	183
13	210	66	2020	11	13	2020	11	20	184
13	384	203	2020	11	13	2020	11	20	185
13	70	49	2020	11	13	2020	11	20	186
13	421	224	2020	11	13	2020	11	20	187
13	101	67	2020	11	13	2020	11	20	188
13	386	204	2020	11	13	2020	11	20	189
13	14	13	2020	11	13	2020	11	20	190
13	103	68	2020	11	13	2020	11	20	191
13	13	12	2020	11	13	2020	11	20	192
13	353	181	2020	11	13	2020	11	20	193
13	17	1	2020	11	13	2020	11	20	194
13	380	200	2020	11	13	2020	11	20	195
13	279	153	2020	11	13	2020	11	20	196
13	375	196	2020	11	13	2020	11	20	197
13	399	92	2020	11	13	2020	11	20	198
13	664	28	2020	11	13	2020	11	20	199
13	405	215	2020	11	13	2020	11	20	200
14	200	27	2020	6	26	2020	7	3	1
14	1	1	2020	6	26	2020	7	3	2
14	216	122	2020	6	26	2020	7	3	3
14	342	171	2020	6	26	2020	7	3	4
14	3	3	2020	6	26	2020	7	3	5
14	99	21	2020	6	26	2020	7	3	6
14	6	6	2020	6	26	2020	7	3	7
14	201	52	2020	6	26	2020	7	3	8
14	2	2	2020	6	26	2020	7	3	9
14	7	7	2020	6	26	2020	7	3	10
14	202	116	2020	6	26	2020	7	3	11
14	4	4	2020	6	26	2020	7	3	12
14	62	43	2020	6	26	2020	7	3	13
14	68	47	2020	6	26	2020	7	3	14
14	11	4	2020	6	26	2020	7	3	15
14	8	8	2020	6	26	2020	7	3	16
14	15	14	2020	6	26	2020	7	3	17
14	204	63	2020	6	26	2020	7	3	18
14	5	5	2020	6	26	2020	7	3	19
14	208	39	2020	6	26	2020	7	3	20
14	203	117	2020	6	26	2020	7	3	21
14	21	17	2020	6	26	2020	7	3	22
14	219	124	2020	6	26	2020	7	3	23
14	10	10	2020	6	26	2020	7	3	24
14	355	96	2020	6	26	2020	7	3	25
14	205	118	2020	6	26	2020	7	3	26
14	9	9	2020	6	26	2020	7	3	27
14	13	12	2020	6	26	2020	7	3	28
14	217	123	2020	6	26	2020	7	3	29
14	36	17	2020	6	26	2020	7	3	30
14	12	11	2020	6	26	2020	7	3	31
14	207	119	2020	6	26	2020	7	3	32
14	209	120	2020	6	26	2020	7	3	33
14	17	1	2020	6	26	2020	7	3	34
14	23	19	2020	6	26	2020	7	3	35
14	20	16	2020	6	26	2020	7	3	36
14	211	121	2020	6	26	2020	7	3	37
14	210	66	2020	6	26	2020	7	3	38
14	158	56	2020	6	26	2020	7	3	39
14	214	68	2020	6	26	2020	7	3	40
14	137	51	2020	6	26	2020	7	3	41
14	213	33	2020	6	26	2020	7	3	42
14	26	21	2020	6	26	2020	7	3	43
14	37	29	2020	6	26	2020	7	3	44
14	18	13	2020	6	26	2020	7	3	45
14	27	22	2020	6	26	2020	7	3	46
14	82	56	2020	6	26	2020	7	3	47
14	231	130	2020	6	26	2020	7	3	48
14	14	13	2020	6	26	2020	7	3	49
14	30	25	2020	6	26	2020	7	3	50
14	212	52	2020	6	26	2020	7	3	51
14	165	56	2020	6	26	2020	7	3	52
14	29	24	2020	6	26	2020	7	3	53
14	33	28	2020	6	26	2020	7	3	54
14	54	19	2020	6	26	2020	7	3	55
14	19	15	2020	6	26	2020	7	3	56
14	218	86	2020	6	26	2020	7	3	57
14	222	2	2020	6	26	2020	7	3	58
14	110	32	2020	6	26	2020	7	3	59
14	25	20	2020	6	26	2020	7	3	60
14	48	35	2020	6	26	2020	7	3	61
14	122	20	2020	6	26	2020	7	3	62
14	151	90	2020	6	26	2020	7	3	63
14	69	48	2020	6	26	2020	7	3	64
14	206	118	2020	6	26	2020	7	3	65
14	223	35	2020	6	26	2020	7	3	66
14	47	34	2020	6	26	2020	7	3	67
14	688	110	2020	6	26	2020	7	3	68
14	24	9	2020	6	26	2020	7	3	69
14	221	126	2020	6	26	2020	7	3	70
14	252	143	2020	6	26	2020	7	3	71
14	116	74	2020	6	26	2020	7	3	72
14	34	28	2020	6	26	2020	7	3	73
14	51	28	2020	6	26	2020	7	3	74
14	215	110	2020	6	26	2020	7	3	75
14	227	128	2020	6	26	2020	7	3	76
14	228	129	2020	6	26	2020	7	3	77
14	31	26	2020	6	26	2020	7	3	78
14	64	45	2020	6	26	2020	7	3	79
14	57	5	2020	6	26	2020	7	3	80
14	237	135	2020	6	26	2020	7	3	81
14	81	52	2020	6	26	2020	7	3	82
14	16	4	2020	6	26	2020	7	3	83
14	58	40	2020	6	26	2020	7	3	84
14	236	134	2020	6	26	2020	7	3	85
14	53	37	2020	6	26	2020	7	3	86
14	229	84	2020	6	26	2020	7	3	87
14	93	62	2020	6	26	2020	7	3	88
14	678	315	2020	6	26	2020	7	3	89
14	56	39	2020	6	26	2020	7	3	90
14	45	32	2020	6	26	2020	7	3	91
14	220	125	2020	6	26	2020	7	3	92
14	22	18	2020	6	26	2020	7	3	93
14	44	20	2020	6	26	2020	7	3	94
14	312	167	2020	6	26	2020	7	3	95
14	107	70	2020	6	26	2020	7	3	96
14	40	30	2020	6	26	2020	7	3	97
14	94	19	2020	6	26	2020	7	3	98
14	230	48	2020	6	26	2020	7	3	99
14	95	63	2020	6	26	2020	7	3	100
14	109	70	2020	6	26	2020	7	3	101
14	75	45	2020	6	26	2020	7	3	102
14	150	48	2020	6	26	2020	7	3	103
14	366	190	2020	6	26	2020	7	3	104
14	106	66	2020	6	26	2020	7	3	105
14	235	133	2020	6	26	2020	7	3	106
14	224	127	2020	6	26	2020	7	3	107
14	35	13	2020	6	26	2020	7	3	108
14	123	45	2020	6	26	2020	7	3	109
14	83	57	2020	6	26	2020	7	3	110
14	706	66	2020	6	26	2020	7	3	111
14	74	28	2020	6	26	2020	7	3	112
14	115	73	2020	6	26	2020	7	3	113
14	52	20	2020	6	26	2020	7	3	114
14	103	68	2020	6	26	2020	7	3	115
14	12	21	2020	6	26	2020	7	3	116
14	243	139	2020	6	26	2020	7	3	117
14	238	32	2020	6	26	2020	7	3	118
14	702	319	2020	6	26	2020	7	3	119
14	738	119	2020	6	26	2020	7	3	120
14	245	85	2020	6	26	2020	7	3	121
14	739	158	2020	6	26	2020	7	3	122
14	740	332	2020	6	26	2020	7	3	123
14	128	80	2020	6	26	2020	7	3	124
14	138	45	2020	6	26	2020	7	3	125
14	111	71	2020	6	26	2020	7	3	126
14	70	49	2020	6	26	2020	7	3	127
14	39	13	2020	6	26	2020	7	3	128
14	104	69	2020	6	26	2020	7	3	129
14	240	137	2020	6	26	2020	7	3	130
14	155	92	2020	6	26	2020	7	3	131
14	741	11	2020	6	26	2020	7	3	132
14	742	333	2020	6	26	2020	7	3	133
14	50	5	2020	6	26	2020	7	3	134
14	43	10	2020	6	26	2020	7	3	135
14	63	44	2020	6	26	2020	7	3	136
14	118	38	2020	6	26	2020	7	3	137
14	690	317	2020	6	26	2020	7	3	138
14	119	75	2020	6	26	2020	7	3	139
14	108	48	2020	6	26	2020	7	3	140
14	71	9	2020	6	26	2020	7	3	141
14	157	93	2020	6	26	2020	7	3	142
14	162	70	2020	6	26	2020	7	3	143
14	73	51	2020	6	26	2020	7	3	144
14	404	214	2020	6	26	2020	7	3	145
14	247	19	2020	6	26	2020	7	3	146
14	242	138	2020	6	26	2020	7	3	147
14	38	13	2020	6	26	2020	7	3	148
14	166	97	2020	6	26	2020	7	3	149
14	87	59	2020	6	26	2020	7	3	150
14	174	102	2020	6	26	2020	7	3	151
14	178	98	2020	6	26	2020	7	3	152
14	102	27	2020	6	26	2020	7	3	153
14	117	17	2020	6	26	2020	7	3	154
14	91	61	2020	6	26	2020	7	3	155
14	145	19	2020	6	26	2020	7	3	156
14	153	51	2020	6	26	2020	7	3	157
14	248	110	2020	6	26	2020	7	3	158
14	79	55	2020	6	26	2020	7	3	159
14	121	20	2020	6	26	2020	7	3	160
14	182	104	2020	6	26	2020	7	3	161
14	260	48	2020	6	26	2020	7	3	162
14	96	50	2020	6	26	2020	7	3	163
14	234	132	2020	6	26	2020	7	3	164
14	140	33	2020	6	26	2020	7	3	165
14	743	18	2020	6	26	2020	7	3	166
14	101	67	2020	6	26	2020	7	3	167
14	708	85	2020	6	26	2020	7	3	168
14	744	334	2020	6	26	2020	7	3	169
14	139	60	2020	6	26	2020	7	3	170
14	682	90	2020	6	26	2020	7	3	171
14	49	36	2020	6	26	2020	7	3	172
14	141	84	2020	6	26	2020	7	3	173
14	184	19	2020	6	26	2020	7	3	174
14	254	32	2020	6	26	2020	7	3	175
14	173	101	2020	6	26	2020	7	3	176
14	745	335	2020	6	26	2020	7	3	177
14	261	104	2020	6	26	2020	7	3	178
14	262	148	2020	6	26	2020	7	3	179
14	187	63	2020	6	26	2020	7	3	180
14	181	106	2020	6	26	2020	7	3	181
14	188	107	2020	6	26	2020	7	3	182
14	146	87	2020	6	26	2020	7	3	183
14	622	62	2020	6	26	2020	7	3	184
14	131	2	2020	6	26	2020	7	3	185
14	263	149	2020	6	26	2020	7	3	186
14	264	73	2020	6	26	2020	7	3	187
14	225	9	2020	6	26	2020	7	3	188
14	746	336	2020	6	26	2020	7	3	189
14	77	53	2020	6	26	2020	7	3	190
14	259	147	2020	6	26	2020	7	3	191
14	144	86	2020	6	26	2020	7	3	192
14	619	304	2020	6	26	2020	7	3	193
14	253	144	2020	6	26	2020	7	3	194
14	712	322	2020	6	26	2020	7	3	195
14	747	171	2020	6	26	2020	7	3	196
14	175	21	2020	6	26	2020	7	3	197
14	97	64	2020	6	26	2020	7	3	198
14	185	22	2020	6	26	2020	7	3	199
14	250	13	2020	6	26	2020	7	3	200
15	284	13	2020	12	25	2021	1	1	1
15	285	42	2020	12	25	2021	1	1	2
15	350	16	2020	12	25	2021	1	1	3
15	400	210	2020	12	25	2021	1	1	4
15	1	1	2020	12	25	2021	1	1	5
15	283	63	2020	12	25	2021	1	1	6
15	415	219	2020	12	25	2021	1	1	7
15	287	63	2020	12	25	2021	1	1	8
15	289	158	2020	12	25	2021	1	1	9
15	433	13	2020	12	25	2021	1	1	10
15	286	157	2020	12	25	2021	1	1	11
15	427	229	2020	12	25	2021	1	1	12
15	416	63	2020	12	25	2021	1	1	13
15	417	220	2020	12	25	2021	1	1	14
15	419	222	2020	12	25	2021	1	1	15
15	435	28	2020	12	25	2021	1	1	16
15	367	191	2020	12	25	2021	1	1	17
15	436	126	2020	12	25	2021	1	1	18
15	418	221	2020	12	25	2021	1	1	19
15	288	92	2020	12	25	2021	1	1	20
15	483	45	2020	12	25	2021	1	1	21
15	420	223	2020	12	25	2021	1	1	22
15	438	75	2020	12	25	2021	1	1	23
15	291	159	2020	12	25	2021	1	1	24
15	439	29	2020	12	25	2021	1	1	25
15	315	4	2020	12	25	2021	1	1	26
15	99	21	2020	12	25	2021	1	1	27
15	434	234	2020	12	25	2021	1	1	28
15	292	160	2020	12	25	2021	1	1	29
15	297	162	2020	12	25	2021	1	1	30
15	296	161	2020	12	25	2021	1	1	31
15	200	27	2020	12	25	2021	1	1	32
15	446	241	2020	12	25	2021	1	1	33
15	7	7	2020	12	25	2021	1	1	34
15	290	10	2020	12	25	2021	1	1	35
15	357	32	2020	12	25	2021	1	1	36
15	3	3	2020	12	25	2021	1	1	37
15	421	224	2020	12	25	2021	1	1	38
15	311	166	2020	12	25	2021	1	1	39
15	444	169	2020	12	25	2021	1	1	40
15	423	226	2020	12	25	2021	1	1	41
15	21	17	2020	12	25	2021	1	1	42
15	294	92	2020	12	25	2021	1	1	43
15	349	180	2020	12	25	2021	1	1	44
15	390	206	2020	12	25	2021	1	1	45
15	422	225	2020	12	25	2021	1	1	46
15	428	230	2020	12	25	2021	1	1	47
15	4	4	2020	12	25	2021	1	1	48
15	298	123	2020	12	25	2021	1	1	49
15	424	10	2020	12	25	2021	1	1	50
15	425	227	2020	12	25	2021	1	1	51
15	426	228	2020	12	25	2021	1	1	52
15	455	74	2020	12	25	2021	1	1	53
15	308	74	2020	12	25	2021	1	1	54
15	306	164	2020	12	25	2021	1	1	55
15	450	13	2020	12	25	2021	1	1	56
15	293	10	2020	12	25	2021	1	1	57
15	431	232	2020	12	25	2021	1	1	58
15	429	221	2020	12	25	2021	1	1	59
15	303	77	2020	12	25	2021	1	1	60
15	432	233	2020	12	25	2021	1	1	61
15	216	122	2020	12	25	2021	1	1	62
15	36	17	2020	12	25	2021	1	1	63
15	359	185	2020	12	25	2021	1	1	64
15	486	44	2020	12	25	2021	1	1	65
15	470	253	2020	12	25	2021	1	1	66
15	329	173	2020	12	25	2021	1	1	67
15	388	37	2020	12	25	2021	1	1	68
15	316	130	2020	12	25	2021	1	1	69
15	301	2	2020	12	25	2021	1	1	70
15	459	158	2020	12	25	2021	1	1	71
15	430	231	2020	12	25	2021	1	1	72
15	62	43	2020	12	25	2021	1	1	73
15	312	167	2020	12	25	2021	1	1	74
15	307	165	2020	12	25	2021	1	1	75
15	5	5	2020	12	25	2021	1	1	76
15	305	29	2020	12	25	2021	1	1	77
15	437	235	2020	12	25	2021	1	1	78
15	23	19	2020	12	25	2021	1	1	79
15	299	163	2020	12	25	2021	1	1	80
15	313	168	2020	12	25	2021	1	1	81
15	6	6	2020	12	25	2021	1	1	82
15	317	139	2020	12	25	2021	1	1	83
15	310	20	2020	12	25	2021	1	1	84
15	321	16	2020	12	25	2021	1	1	85
15	302	63	2020	12	25	2021	1	1	86
15	8	8	2020	12	25	2021	1	1	87
15	480	39	2020	12	25	2021	1	1	88
15	326	159	2020	12	25	2021	1	1	89
15	54	19	2020	12	25	2021	1	1	90
15	472	254	2020	12	25	2021	1	1	91
15	466	18	2020	12	25	2021	1	1	92
15	352	126	2020	12	25	2021	1	1	93
15	20	16	2020	12	25	2021	1	1	94
15	69	48	2020	12	25	2021	1	1	95
15	27	22	2020	12	25	2021	1	1	96
15	51	28	2020	12	25	2021	1	1	97
15	748	337	2020	12	25	2021	1	1	98
15	37	29	2020	12	25	2021	1	1	99
15	334	32	2020	12	25	2021	1	1	100
15	33	28	2020	12	25	2021	1	1	101
15	328	21	2020	12	25	2021	1	1	102
15	346	48	2020	12	25	2021	1	1	103
15	26	21	2020	12	25	2021	1	1	104
15	201	52	2020	12	25	2021	1	1	105
15	320	170	2020	12	25	2021	1	1	106
15	158	56	2020	12	25	2021	1	1	107
15	749	109	2020	12	25	2021	1	1	108
15	351	80	2020	12	25	2021	1	1	109
15	441	237	2020	12	25	2021	1	1	110
15	474	48	2020	12	25	2021	1	1	111
15	325	130	2020	12	25	2021	1	1	112
15	12	11	2020	12	25	2021	1	1	113
15	750	152	2020	12	25	2021	1	1	114
15	330	48	2020	12	25	2021	1	1	115
15	381	201	2020	12	25	2021	1	1	116
15	376	197	2020	12	25	2021	1	1	117
15	493	78	2020	12	25	2021	1	1	118
15	484	159	2020	12	25	2021	1	1	119
15	319	169	2020	12	25	2021	1	1	120
15	150	48	2020	12	25	2021	1	1	121
15	458	234	2020	12	25	2021	1	1	122
15	442	238	2020	12	25	2021	1	1	123
15	204	63	2020	12	25	2021	1	1	124
15	337	175	2020	12	25	2021	1	1	125
15	11	4	2020	12	25	2021	1	1	126
15	406	216	2020	12	25	2021	1	1	127
15	29	24	2020	12	25	2021	1	1	128
15	82	56	2020	12	25	2021	1	1	129
15	333	174	2020	12	25	2021	1	1	130
15	399	92	2020	12	25	2021	1	1	131
15	81	52	2020	12	25	2021	1	1	132
15	509	270	2020	12	25	2021	1	1	133
15	443	239	2020	12	25	2021	1	1	134
15	336	92	2020	12	25	2021	1	1	135
15	48	35	2020	12	25	2021	1	1	136
15	219	124	2020	12	25	2021	1	1	137
15	93	62	2020	12	25	2021	1	1	138
15	9	9	2020	12	25	2021	1	1	139
15	31	26	2020	12	25	2021	1	1	140
15	2	2	2020	12	25	2021	1	1	141
15	115	73	2020	12	25	2021	1	1	142
15	385	185	2020	12	25	2021	1	1	143
15	343	176	2020	12	25	2021	1	1	144
15	342	171	2020	12	25	2021	1	1	145
15	107	70	2020	12	25	2021	1	1	146
15	95	63	2020	12	25	2021	1	1	147
15	260	48	2020	12	25	2021	1	1	148
15	440	236	2020	12	25	2021	1	1	149
15	502	266	2020	12	25	2021	1	1	150
15	449	244	2020	12	25	2021	1	1	151
15	155	92	2020	12	25	2021	1	1	152
15	751	338	2020	12	25	2021	1	1	153
15	47	34	2020	12	25	2021	1	1	154
15	10	10	2020	12	25	2021	1	1	155
15	19	15	2020	12	25	2021	1	1	156
15	68	47	2020	12	25	2021	1	1	157
15	327	172	2020	12	25	2021	1	1	158
15	348	179	2020	12	25	2021	1	1	159
15	123	45	2020	12	25	2021	1	1	160
15	138	45	2020	12	25	2021	1	1	161
15	345	178	2020	12	25	2021	1	1	162
15	128	80	2020	12	25	2021	1	1	163
15	451	245	2020	12	25	2021	1	1	164
15	447	242	2020	12	25	2021	1	1	165
15	512	25	2020	12	25	2021	1	1	166
15	752	168	2020	12	25	2021	1	1	167
15	753	339	2020	12	25	2021	1	1	168
15	445	240	2020	12	25	2021	1	1	169
15	341	25	2020	12	25	2021	1	1	170
15	465	234	2020	12	25	2021	1	1	171
15	165	56	2020	12	25	2021	1	1	172
15	754	340	2020	12	25	2021	1	1	173
15	755	25	2020	12	25	2021	1	1	174
15	12	21	2020	12	25	2021	1	1	175
15	34	28	2020	12	25	2021	1	1	176
15	231	130	2020	12	25	2021	1	1	177
15	756	58	2020	12	25	2021	1	1	178
15	514	13	2020	12	25	2021	1	1	179
15	511	123	2020	12	25	2021	1	1	180
15	663	32	2020	12	25	2021	1	1	181
15	448	243	2020	12	25	2021	1	1	182
15	757	197	2020	12	25	2021	1	1	183
15	758	341	2020	12	25	2021	1	1	184
15	453	247	2020	12	25	2021	1	1	185
15	236	134	2020	12	25	2021	1	1	186
15	109	70	2020	12	25	2021	1	1	187
15	64	45	2020	12	25	2021	1	1	188
15	452	246	2020	12	25	2021	1	1	189
15	137	51	2020	12	25	2021	1	1	190
15	501	264	2020	12	25	2021	1	1	191
15	331	171	2020	12	25	2021	1	1	192
15	759	341	2020	12	25	2021	1	1	193
15	499	264	2020	12	25	2021	1	1	194
15	58	40	2020	12	25	2021	1	1	195
15	401	211	2020	12	25	2021	1	1	196
15	760	310	2020	12	25	2021	1	1	197
15	323	171	2020	12	25	2021	1	1	198
15	761	139	2020	12	25	2021	1	1	199
15	762	342	2020	12	25	2021	1	1	200
16	1	1	2020	2	21	2020	2	28	1
16	7	7	2020	2	21	2020	2	28	2
16	5	5	2020	2	21	2020	2	28	3
16	4	4	2020	2	21	2020	2	28	4
16	10	10	2020	2	21	2020	2	28	5
16	20	16	2020	2	21	2020	2	28	6
16	41	1	2020	2	21	2020	2	28	7
16	12	11	2020	2	21	2020	2	28	8
16	19	15	2020	2	21	2020	2	28	9
16	85	28	2020	2	21	2020	2	28	10
16	43	10	2020	2	21	2020	2	28	11
16	29	24	2020	2	21	2020	2	28	12
16	34	28	2020	2	21	2020	2	28	13
16	23	19	2020	2	21	2020	2	28	14
16	39	13	2020	2	21	2020	2	28	15
16	21	17	2020	2	21	2020	2	28	16
16	9	9	2020	2	21	2020	2	28	17
16	27	22	2020	2	21	2020	2	28	18
16	31	26	2020	2	21	2020	2	28	19
16	33	28	2020	2	21	2020	2	28	20
16	26	21	2020	2	21	2020	2	28	21
16	763	158	2020	2	21	2020	2	28	22
16	8	8	2020	2	21	2020	2	28	23
16	3	3	2020	2	21	2020	2	28	24
16	37	29	2020	2	21	2020	2	28	25
16	36	17	2020	2	21	2020	2	28	26
16	56	39	2020	2	21	2020	2	28	27
16	88	10	2020	2	21	2020	2	28	28
16	49	36	2020	2	21	2020	2	28	29
16	55	38	2020	2	21	2020	2	28	30
16	13	12	2020	2	21	2020	2	28	31
16	60	41	2020	2	21	2020	2	28	32
16	16	4	2020	2	21	2020	2	28	33
16	764	158	2020	2	21	2020	2	28	34
16	53	37	2020	2	21	2020	2	28	35
16	52	20	2020	2	21	2020	2	28	36
16	149	89	2020	2	21	2020	2	28	37
16	6	6	2020	2	21	2020	2	28	38
16	59	13	2020	2	21	2020	2	28	39
16	79	55	2020	2	21	2020	2	28	40
16	50	5	2020	2	21	2020	2	28	41
16	765	64	2020	2	21	2020	2	28	42
16	100	66	2020	2	21	2020	2	28	43
16	48	35	2020	2	21	2020	2	28	44
16	113	54	2020	2	21	2020	2	28	45
16	66	46	2020	2	21	2020	2	28	46
16	766	158	2020	2	21	2020	2	28	47
16	519	158	2020	2	21	2020	2	28	48
16	54	19	2020	2	21	2020	2	28	49
16	64	45	2020	2	21	2020	2	28	50
16	132	32	2020	2	21	2020	2	28	51
16	125	78	2020	2	21	2020	2	28	52
16	89	60	2020	2	21	2020	2	28	53
16	767	158	2020	2	21	2020	2	28	54
16	58	40	2020	2	21	2020	2	28	55
16	768	158	2020	2	21	2020	2	28	56
16	90	61	2020	2	21	2020	2	28	57
16	769	158	2020	2	21	2020	2	28	58
16	133	82	2020	2	21	2020	2	28	59
16	63	44	2020	2	21	2020	2	28	60
16	102	27	2020	2	21	2020	2	28	61
16	77	53	2020	2	21	2020	2	28	62
16	30	25	2020	2	21	2020	2	28	63
16	70	49	2020	2	21	2020	2	28	64
16	74	28	2020	2	21	2020	2	28	65
16	51	28	2020	2	21	2020	2	28	66
16	770	158	2020	2	21	2020	2	28	67
16	82	56	2020	2	21	2020	2	28	68
16	83	57	2020	2	21	2020	2	28	69
16	120	76	2020	2	21	2020	2	28	70
16	97	64	2020	2	21	2020	2	28	71
16	106	66	2020	2	21	2020	2	28	72
16	75	45	2020	2	21	2020	2	28	73
16	771	158	2020	2	21	2020	2	28	74
16	772	158	2020	2	21	2020	2	28	75
16	69	48	2020	2	21	2020	2	28	76
16	47	34	2020	2	21	2020	2	28	77
16	81	52	2020	2	21	2020	2	28	78
16	773	158	2020	2	21	2020	2	28	79
16	515	64	2020	2	21	2020	2	28	80
16	141	84	2020	2	21	2020	2	28	81
16	99	21	2020	2	21	2020	2	28	82
16	121	20	2020	2	21	2020	2	28	83
16	774	158	2020	2	21	2020	2	28	84
16	729	158	2020	2	21	2020	2	28	85
16	147	13	2020	2	21	2020	2	28	86
16	144	86	2020	2	21	2020	2	28	87
16	95	63	2020	2	21	2020	2	28	88
16	775	283	2020	2	21	2020	2	28	89
16	67	1	2020	2	21	2020	2	28	90
16	87	59	2020	2	21	2020	2	28	91
16	111	71	2020	2	21	2020	2	28	92
16	105	7	2020	2	21	2020	2	28	93
16	108	48	2020	2	21	2020	2	28	94
16	163	95	2020	2	21	2020	2	28	95
16	91	61	2020	2	21	2020	2	28	96
16	776	84	2020	2	21	2020	2	28	97
16	523	27	2020	2	21	2020	2	28	98
16	119	75	2020	2	21	2020	2	28	99
16	114	19	2020	2	21	2020	2	28	100
16	191	110	2020	2	21	2020	2	28	101
16	517	272	2020	2	21	2020	2	28	102
16	169	98	2020	2	21	2020	2	28	103
16	777	158	2020	2	21	2020	2	28	104
16	103	68	2020	2	21	2020	2	28	105
16	160	89	2020	2	21	2020	2	28	106
16	521	78	2020	2	21	2020	2	28	107
16	778	106	2020	2	21	2020	2	28	108
16	779	158	2020	2	21	2020	2	28	109
16	531	276	2020	2	21	2020	2	28	110
16	45	32	2020	2	21	2020	2	28	111
16	93	62	2020	2	21	2020	2	28	112
16	61	42	2020	2	21	2020	2	28	113
16	135	20	2020	2	21	2020	2	28	114
16	554	44	2020	2	21	2020	2	28	115
16	152	91	2020	2	21	2020	2	28	116
16	94	19	2020	2	21	2020	2	28	117
16	155	92	2020	2	21	2020	2	28	118
16	117	17	2020	2	21	2020	2	28	119
16	780	158	2020	2	21	2020	2	28	120
16	154	28	2020	2	21	2020	2	28	121
16	104	69	2020	2	21	2020	2	28	122
16	115	73	2020	2	21	2020	2	28	123
16	139	60	2020	2	21	2020	2	28	124
16	118	38	2020	2	21	2020	2	28	125
16	532	55	2020	2	21	2020	2	28	126
16	145	19	2020	2	21	2020	2	28	127
16	781	24	2020	2	21	2020	2	28	128
16	528	45	2020	2	21	2020	2	28	129
16	782	196	2020	2	21	2020	2	28	130
16	123	45	2020	2	21	2020	2	28	131
16	526	186	2020	2	21	2020	2	28	132
16	101	67	2020	2	21	2020	2	28	133
16	150	48	2020	2	21	2020	2	28	134
16	131	2	2020	2	21	2020	2	28	135
16	128	80	2020	2	21	2020	2	28	136
16	530	111	2020	2	21	2020	2	28	137
16	529	196	2020	2	21	2020	2	28	138
16	194	112	2020	2	21	2020	2	28	139
16	12	21	2020	2	21	2020	2	28	140
16	535	27	2020	2	21	2020	2	28	141
16	175	21	2020	2	21	2020	2	28	142
16	547	282	2020	2	21	2020	2	28	143
16	165	56	2020	2	21	2020	2	28	144
16	168	89	2020	2	21	2020	2	28	145
16	109	70	2020	2	21	2020	2	28	146
16	146	87	2020	2	21	2020	2	28	147
16	107	70	2020	2	21	2020	2	28	148
16	143	85	2020	2	21	2020	2	28	149
16	540	40	2020	2	21	2020	2	28	150
16	124	77	2020	2	21	2020	2	28	151
16	138	45	2020	2	21	2020	2	28	152
16	156	37	2020	2	21	2020	2	28	153
16	593	296	2020	2	21	2020	2	28	154
16	539	278	2020	2	21	2020	2	28	155
16	783	299	2020	2	21	2020	2	28	156
16	545	281	2020	2	21	2020	2	28	157
16	544	280	2020	2	21	2020	2	28	158
16	159	94	2020	2	21	2020	2	28	159
16	153	51	2020	2	21	2020	2	28	160
16	534	28	2020	2	21	2020	2	28	161
16	181	106	2020	2	21	2020	2	28	162
16	187	63	2020	2	21	2020	2	28	163
16	185	22	2020	2	21	2020	2	28	164
16	158	56	2020	2	21	2020	2	28	165
16	527	50	2020	2	21	2020	2	28	166
16	130	67	2020	2	21	2020	2	28	167
16	784	1	2020	2	21	2020	2	28	168
16	140	33	2020	2	21	2020	2	28	169
16	174	102	2020	2	21	2020	2	28	170
16	549	112	2020	2	21	2020	2	28	171
16	558	278	2020	2	21	2020	2	28	172
16	179	105	2020	2	21	2020	2	28	173
16	785	26	2020	2	21	2020	2	28	174
16	162	70	2020	2	21	2020	2	28	175
16	184	19	2020	2	21	2020	2	28	176
16	573	292	2020	2	21	2020	2	28	177
16	551	28	2020	2	21	2020	2	28	178
16	556	234	2020	2	21	2020	2	28	179
16	616	303	2020	2	21	2020	2	28	180
16	199	115	2020	2	21	2020	2	28	181
16	786	343	2020	2	21	2020	2	28	182
16	546	123	2020	2	21	2020	2	28	183
16	564	286	2020	2	21	2020	2	28	184
16	177	104	2020	2	21	2020	2	28	185
16	787	141	2020	2	21	2020	2	28	186
16	178	98	2020	2	21	2020	2	28	187
16	183	29	2020	2	21	2020	2	28	188
16	541	279	2020	2	21	2020	2	28	189
16	282	74	2020	2	21	2020	2	28	190
16	188	107	2020	2	21	2020	2	28	191
16	559	134	2020	2	21	2020	2	28	192
16	562	28	2020	2	21	2020	2	28	193
16	173	101	2020	2	21	2020	2	28	194
16	166	97	2020	2	21	2020	2	28	195
16	788	55	2020	2	21	2020	2	28	196
16	279	153	2020	2	21	2020	2	28	197
16	552	111	2020	2	21	2020	2	28	198
16	557	154	2020	2	21	2020	2	28	199
16	789	1	2020	2	21	2020	2	28	200
17	216	122	2020	8	7	2020	8	14	1
17	292	160	2020	8	7	2020	8	14	2
17	200	27	2020	8	7	2020	8	14	3
17	1	1	2020	8	7	2020	8	14	4
17	99	21	2020	8	7	2020	8	14	5
17	3	3	2020	8	7	2020	8	14	6
17	370	48	2020	8	7	2020	8	14	7
17	62	43	2020	8	7	2020	8	14	8
17	330	48	2020	8	7	2020	8	14	9
17	310	20	2020	8	7	2020	8	14	10
17	346	48	2020	8	7	2020	8	14	11
17	7	7	2020	8	7	2020	8	14	12
17	6	6	2020	8	7	2020	8	14	13
17	664	28	2020	8	7	2020	8	14	14
17	219	124	2020	8	7	2020	8	14	15
17	665	234	2020	8	7	2020	8	14	16
17	231	130	2020	8	7	2020	8	14	17
17	297	162	2020	8	7	2020	8	14	18
17	201	52	2020	8	7	2020	8	14	19
17	336	92	2020	8	7	2020	8	14	20
17	68	47	2020	8	7	2020	8	14	21
17	361	186	2020	8	7	2020	8	14	22
17	208	39	2020	8	7	2020	8	14	23
17	11	4	2020	8	7	2020	8	14	24
17	355	96	2020	8	7	2020	8	14	25
17	334	32	2020	8	7	2020	8	14	26
17	8	8	2020	8	7	2020	8	14	27
17	312	167	2020	8	7	2020	8	14	28
17	666	234	2020	8	7	2020	8	14	29
17	294	92	2020	8	7	2020	8	14	30
17	217	123	2020	8	7	2020	8	14	31
17	4	4	2020	8	7	2020	8	14	32
17	21	17	2020	8	7	2020	8	14	33
17	362	92	2020	8	7	2020	8	14	34
17	2	2	2020	8	7	2020	8	14	35
17	366	190	2020	8	7	2020	8	14	36
17	204	63	2020	8	7	2020	8	14	37
17	202	116	2020	8	7	2020	8	14	38
17	236	134	2020	8	7	2020	8	14	39
17	36	17	2020	8	7	2020	8	14	40
17	342	171	2020	8	7	2020	8	14	41
17	379	172	2020	8	7	2020	8	14	42
17	321	16	2020	8	7	2020	8	14	43
17	137	51	2020	8	7	2020	8	14	44
17	668	314	2020	8	7	2020	8	14	45
17	209	120	2020	8	7	2020	8	14	46
17	327	172	2020	8	7	2020	8	14	47
17	5	5	2020	8	7	2020	8	14	48
17	10	10	2020	8	7	2020	8	14	49
17	26	21	2020	8	7	2020	8	14	50
17	15	14	2020	8	7	2020	8	14	51
17	23	19	2020	8	7	2020	8	14	52
17	291	159	2020	8	7	2020	8	14	53
17	20	16	2020	8	7	2020	8	14	54
17	667	234	2020	8	7	2020	8	14	55
17	37	29	2020	8	7	2020	8	14	56
17	158	56	2020	8	7	2020	8	14	57
17	214	68	2020	8	7	2020	8	14	58
17	27	22	2020	8	7	2020	8	14	59
17	13	12	2020	8	7	2020	8	14	60
17	12	11	2020	8	7	2020	8	14	61
17	54	19	2020	8	7	2020	8	14	62
17	69	48	2020	8	7	2020	8	14	63
17	223	35	2020	8	7	2020	8	14	64
17	33	28	2020	8	7	2020	8	14	65
17	17	1	2020	8	7	2020	8	14	66
17	48	35	2020	8	7	2020	8	14	67
17	82	56	2020	8	7	2020	8	14	68
17	9	9	2020	8	7	2020	8	14	69
17	678	315	2020	8	7	2020	8	14	70
17	296	161	2020	8	7	2020	8	14	71
17	672	22	2020	8	7	2020	8	14	72
17	210	66	2020	8	7	2020	8	14	73
17	203	117	2020	8	7	2020	8	14	74
17	237	135	2020	8	7	2020	8	14	75
17	155	92	2020	8	7	2020	8	14	76
17	165	56	2020	8	7	2020	8	14	77
17	29	24	2020	8	7	2020	8	14	78
17	19	15	2020	8	7	2020	8	14	79
17	676	48	2020	8	7	2020	8	14	80
17	213	33	2020	8	7	2020	8	14	81
17	110	32	2020	8	7	2020	8	14	82
17	680	48	2020	8	7	2020	8	14	83
17	205	118	2020	8	7	2020	8	14	84
17	51	28	2020	8	7	2020	8	14	85
17	682	90	2020	8	7	2020	8	14	86
17	150	48	2020	8	7	2020	8	14	87
17	122	20	2020	8	7	2020	8	14	88
17	348	179	2020	8	7	2020	8	14	89
17	34	28	2020	8	7	2020	8	14	90
17	303	77	2020	8	7	2020	8	14	91
17	669	234	2020	8	7	2020	8	14	92
17	207	119	2020	8	7	2020	8	14	93
17	116	74	2020	8	7	2020	8	14	94
17	18	13	2020	8	7	2020	8	14	95
17	671	234	2020	8	7	2020	8	14	96
17	14	13	2020	8	7	2020	8	14	97
17	211	121	2020	8	7	2020	8	14	98
17	230	48	2020	8	7	2020	8	14	99
17	81	52	2020	8	7	2020	8	14	100
17	25	20	2020	8	7	2020	8	14	101
17	670	234	2020	8	7	2020	8	14	102
17	252	143	2020	8	7	2020	8	14	103
17	397	92	2020	8	7	2020	8	14	104
17	404	214	2020	8	7	2020	8	14	105
17	93	62	2020	8	7	2020	8	14	106
17	363	187	2020	8	7	2020	8	14	107
17	47	34	2020	8	7	2020	8	14	108
17	64	45	2020	8	7	2020	8	14	109
17	222	2	2020	8	7	2020	8	14	110
17	685	89	2020	8	7	2020	8	14	111
17	364	188	2020	8	7	2020	8	14	112
17	30	25	2020	8	7	2020	8	14	113
17	221	126	2020	8	7	2020	8	14	114
17	681	108	2020	8	7	2020	8	14	115
17	684	48	2020	8	7	2020	8	14	116
17	31	26	2020	8	7	2020	8	14	117
17	227	128	2020	8	7	2020	8	14	118
17	12	21	2020	8	7	2020	8	14	119
17	691	145	2020	8	7	2020	8	14	120
17	229	84	2020	8	7	2020	8	14	121
17	693	58	2020	8	7	2020	8	14	122
17	218	86	2020	8	7	2020	8	14	123
17	53	37	2020	8	7	2020	8	14	124
17	690	317	2020	8	7	2020	8	14	125
17	228	129	2020	8	7	2020	8	14	126
17	16	4	2020	8	7	2020	8	14	127
17	107	70	2020	8	7	2020	8	14	128
17	58	40	2020	8	7	2020	8	14	129
17	688	110	2020	8	7	2020	8	14	130
17	313	168	2020	8	7	2020	8	14	131
17	95	63	2020	8	7	2020	8	14	132
17	94	19	2020	8	7	2020	8	14	133
17	24	9	2020	8	7	2020	8	14	134
17	123	45	2020	8	7	2020	8	14	135
17	675	234	2020	8	7	2020	8	14	136
17	115	73	2020	8	7	2020	8	14	137
17	673	234	2020	8	7	2020	8	14	138
17	790	153	2020	8	7	2020	8	14	139
17	109	70	2020	8	7	2020	8	14	140
17	75	45	2020	8	7	2020	8	14	141
17	240	137	2020	8	7	2020	8	14	142
17	699	33	2020	8	7	2020	8	14	143
17	260	48	2020	8	7	2020	8	14	144
17	674	234	2020	8	7	2020	8	14	145
17	138	45	2020	8	7	2020	8	14	146
17	56	39	2020	8	7	2020	8	14	147
17	74	28	2020	8	7	2020	8	14	148
17	128	80	2020	8	7	2020	8	14	149
17	111	71	2020	8	7	2020	8	14	150
17	791	344	2020	8	7	2020	8	14	151
17	700	74	2020	8	7	2020	8	14	152
17	687	316	2020	8	7	2020	8	14	153
17	103	68	2020	8	7	2020	8	14	154
17	677	234	2020	8	7	2020	8	14	155
17	683	234	2020	8	7	2020	8	14	156
17	792	27	2020	8	7	2020	8	14	157
17	679	234	2020	8	7	2020	8	14	158
17	285	42	2020	8	7	2020	8	14	159
17	702	319	2020	8	7	2020	8	14	160
17	243	139	2020	8	7	2020	8	14	161
17	118	38	2020	8	7	2020	8	14	162
17	151	90	2020	8	7	2020	8	14	163
17	708	85	2020	8	7	2020	8	14	164
17	157	93	2020	8	7	2020	8	14	165
17	703	190	2020	8	7	2020	8	14	166
17	182	104	2020	8	7	2020	8	14	167
17	174	102	2020	8	7	2020	8	14	168
17	162	70	2020	8	7	2020	8	14	169
17	793	9	2020	8	7	2020	8	14	170
17	262	148	2020	8	7	2020	8	14	171
17	57	131	2020	8	7	2020	8	14	172
17	706	66	2020	8	7	2020	8	14	173
17	166	97	2020	8	7	2020	8	14	174
17	238	32	2020	8	7	2020	8	14	175
17	714	168	2020	8	7	2020	8	14	176
17	398	209	2020	8	7	2020	8	14	177
17	83	57	2020	8	7	2020	8	14	178
17	70	49	2020	8	7	2020	8	14	179
17	794	118	2020	8	7	2020	8	14	180
17	712	322	2020	8	7	2020	8	14	181
17	140	33	2020	8	7	2020	8	14	182
17	694	302	2020	8	7	2020	8	14	183
17	795	345	2020	8	7	2020	8	14	184
17	711	321	2020	8	7	2020	8	14	185
17	259	147	2020	8	7	2020	8	14	186
17	796	108	2020	8	7	2020	8	14	187
17	713	323	2020	8	7	2020	8	14	188
17	264	73	2020	8	7	2020	8	14	189
17	22	18	2020	8	7	2020	8	14	190
17	173	101	2020	8	7	2020	8	14	191
17	178	98	2020	8	7	2020	8	14	192
17	101	67	2020	8	7	2020	8	14	193
17	797	346	2020	8	7	2020	8	14	194
17	245	85	2020	8	7	2020	8	14	195
17	167	4	2020	8	7	2020	8	14	196
17	153	51	2020	8	7	2020	8	14	197
17	145	19	2020	8	7	2020	8	14	198
17	108	48	2020	8	7	2020	8	14	199
17	619	304	2020	8	7	2020	8	14	200
18	1	1	2020	5	1	2020	5	8	1
18	2	2	2020	5	1	2020	5	8	2
18	203	117	2020	5	1	2020	5	8	3
18	3	3	2020	5	1	2020	5	8	4
18	6	6	2020	5	1	2020	5	8	5
18	4	4	2020	5	1	2020	5	8	6
18	200	27	2020	5	1	2020	5	8	7
18	7	7	2020	5	1	2020	5	8	8
18	5	5	2020	5	1	2020	5	8	9
18	8	8	2020	5	1	2020	5	8	10
18	9	9	2020	5	1	2020	5	8	11
18	798	2	2020	5	1	2020	5	8	12
18	207	119	2020	5	1	2020	5	8	13
18	11	4	2020	5	1	2020	5	8	14
18	15	14	2020	5	1	2020	5	8	15
18	10	10	2020	5	1	2020	5	8	16
18	165	56	2020	5	1	2020	5	8	17
18	158	56	2020	5	1	2020	5	8	18
18	230	48	2020	5	1	2020	5	8	19
18	12	11	2020	5	1	2020	5	8	20
18	13	12	2020	5	1	2020	5	8	21
18	214	68	2020	5	1	2020	5	8	22
18	222	2	2020	5	1	2020	5	8	23
18	21	17	2020	5	1	2020	5	8	24
18	24	9	2020	5	1	2020	5	8	25
18	18	13	2020	5	1	2020	5	8	26
18	82	56	2020	5	1	2020	5	8	27
18	19	15	2020	5	1	2020	5	8	28
18	23	19	2020	5	1	2020	5	8	29
18	14	13	2020	5	1	2020	5	8	30
18	68	47	2020	5	1	2020	5	8	31
18	20	16	2020	5	1	2020	5	8	32
18	30	25	2020	5	1	2020	5	8	33
18	17	1	2020	5	1	2020	5	8	34
18	26	21	2020	5	1	2020	5	8	35
18	29	24	2020	5	1	2020	5	8	36
18	16	4	2020	5	1	2020	5	8	37
18	116	74	2020	5	1	2020	5	8	38
18	22	18	2020	5	1	2020	5	8	39
18	36	17	2020	5	1	2020	5	8	40
18	27	22	2020	5	1	2020	5	8	41
18	47	34	2020	5	1	2020	5	8	42
18	25	20	2020	5	1	2020	5	8	43
18	33	28	2020	5	1	2020	5	8	44
18	211	121	2020	5	1	2020	5	8	45
18	799	24	2020	5	1	2020	5	8	46
18	37	29	2020	5	1	2020	5	8	47
18	40	30	2020	5	1	2020	5	8	48
18	800	2	2020	5	1	2020	5	8	49
18	34	28	2020	5	1	2020	5	8	50
18	801	2	2020	5	1	2020	5	8	51
18	31	26	2020	5	1	2020	5	8	52
18	802	2	2020	5	1	2020	5	8	53
18	62	43	2020	5	1	2020	5	8	54
18	803	2	2020	5	1	2020	5	8	55
18	54	19	2020	5	1	2020	5	8	56
18	45	32	2020	5	1	2020	5	8	57
18	225	9	2020	5	1	2020	5	8	58
18	48	35	2020	5	1	2020	5	8	59
18	51	28	2020	5	1	2020	5	8	60
18	151	90	2020	5	1	2020	5	8	61
18	265	89	2020	5	1	2020	5	8	62
18	44	20	2020	5	1	2020	5	8	63
18	35	13	2020	5	1	2020	5	8	64
18	57	5	2020	5	1	2020	5	8	65
18	39	13	2020	5	1	2020	5	8	66
18	804	2	2020	5	1	2020	5	8	67
18	805	2	2020	5	1	2020	5	8	68
18	806	347	2020	5	1	2020	5	8	69
18	807	2	2020	5	1	2020	5	8	70
18	808	348	2020	5	1	2020	5	8	71
18	53	37	2020	5	1	2020	5	8	72
18	809	2	2020	5	1	2020	5	8	73
18	69	48	2020	5	1	2020	5	8	74
18	38	13	2020	5	1	2020	5	8	75
18	73	51	2020	5	1	2020	5	8	76
18	58	40	2020	5	1	2020	5	8	77
18	52	20	2020	5	1	2020	5	8	78
18	43	10	2020	5	1	2020	5	8	79
18	56	39	2020	5	1	2020	5	8	80
18	218	86	2020	5	1	2020	5	8	81
18	64	45	2020	5	1	2020	5	8	82
18	63	44	2020	5	1	2020	5	8	83
18	810	2	2020	5	1	2020	5	8	84
18	268	150	2020	5	1	2020	5	8	85
18	110	32	2020	5	1	2020	5	8	86
18	28	23	2020	5	1	2020	5	8	87
18	46	33	2020	5	1	2020	5	8	88
18	811	2	2020	5	1	2020	5	8	89
18	55	38	2020	5	1	2020	5	8	90
18	83	57	2020	5	1	2020	5	8	91
18	61	42	2020	5	1	2020	5	8	92
18	50	5	2020	5	1	2020	5	8	93
18	70	49	2020	5	1	2020	5	8	94
18	81	52	2020	5	1	2020	5	8	95
18	74	28	2020	5	1	2020	5	8	96
18	71	9	2020	5	1	2020	5	8	97
18	98	65	2020	5	1	2020	5	8	98
18	75	45	2020	5	1	2020	5	8	99
18	77	53	2020	5	1	2020	5	8	100
18	60	41	2020	5	1	2020	5	8	101
18	49	36	2020	5	1	2020	5	8	102
18	59	13	2020	5	1	2020	5	8	103
18	93	62	2020	5	1	2020	5	8	104
18	111	71	2020	5	1	2020	5	8	105
18	84	58	2020	5	1	2020	5	8	106
18	95	63	2020	5	1	2020	5	8	107
18	79	55	2020	5	1	2020	5	8	108
18	94	19	2020	5	1	2020	5	8	109
18	235	133	2020	5	1	2020	5	8	110
18	65	13	2020	5	1	2020	5	8	111
18	72	50	2020	5	1	2020	5	8	112
18	66	46	2020	5	1	2020	5	8	113
18	12	21	2020	5	1	2020	5	8	114
18	195	113	2020	5	1	2020	5	8	115
18	202	116	2020	5	1	2020	5	8	116
18	103	68	2020	5	1	2020	5	8	117
18	107	70	2020	5	1	2020	5	8	118
18	99	21	2020	5	1	2020	5	8	119
18	267	56	2020	5	1	2020	5	8	120
18	87	59	2020	5	1	2020	5	8	121
18	109	70	2020	5	1	2020	5	8	122
18	266	56	2020	5	1	2020	5	8	123
18	104	69	2020	5	1	2020	5	8	124
18	157	93	2020	5	1	2020	5	8	125
18	78	54	2020	5	1	2020	5	8	126
18	42	31	2020	5	1	2020	5	8	127
18	137	51	2020	5	1	2020	5	8	128
18	91	61	2020	5	1	2020	5	8	129
18	115	73	2020	5	1	2020	5	8	130
18	812	349	2020	5	1	2020	5	8	131
18	96	50	2020	5	1	2020	5	8	132
18	108	48	2020	5	1	2020	5	8	133
18	123	45	2020	5	1	2020	5	8	134
18	208	39	2020	5	1	2020	5	8	135
18	118	38	2020	5	1	2020	5	8	136
18	144	86	2020	5	1	2020	5	8	137
18	128	80	2020	5	1	2020	5	8	138
18	89	60	2020	5	1	2020	5	8	139
18	102	27	2020	5	1	2020	5	8	140
18	106	66	2020	5	1	2020	5	8	141
18	41	1	2020	5	1	2020	5	8	142
18	138	45	2020	5	1	2020	5	8	143
18	150	48	2020	5	1	2020	5	8	144
18	114	19	2020	5	1	2020	5	8	145
18	270	64	2020	5	1	2020	5	8	146
18	90	61	2020	5	1	2020	5	8	147
18	97	64	2020	5	1	2020	5	8	148
18	101	67	2020	5	1	2020	5	8	149
18	117	17	2020	5	1	2020	5	8	150
18	67	1	2020	5	1	2020	5	8	151
18	129	81	2020	5	1	2020	5	8	152
18	141	84	2020	5	1	2020	5	8	153
18	131	2	2020	5	1	2020	5	8	154
18	119	75	2020	5	1	2020	5	8	155
18	121	20	2020	5	1	2020	5	8	156
18	132	32	2020	5	1	2020	5	8	157
18	122	20	2020	5	1	2020	5	8	158
18	125	78	2020	5	1	2020	5	8	159
18	146	87	2020	5	1	2020	5	8	160
18	139	60	2020	5	1	2020	5	8	161
18	269	141	2020	5	1	2020	5	8	162
18	145	19	2020	5	1	2020	5	8	163
18	134	83	2020	5	1	2020	5	8	164
18	153	51	2020	5	1	2020	5	8	165
18	166	97	2020	5	1	2020	5	8	166
18	136	13	2020	5	1	2020	5	8	167
18	105	7	2020	5	1	2020	5	8	168
18	173	101	2020	5	1	2020	5	8	169
18	275	154	2020	5	1	2020	5	8	170
18	32	27	2020	5	1	2020	5	8	171
18	147	13	2020	5	1	2020	5	8	172
18	174	102	2020	5	1	2020	5	8	173
18	100	66	2020	5	1	2020	5	8	174
18	178	98	2020	5	1	2020	5	8	175
18	154	28	2020	5	1	2020	5	8	176
18	156	37	2020	5	1	2020	5	8	177
18	140	33	2020	5	1	2020	5	8	178
18	130	67	2020	5	1	2020	5	8	179
18	162	70	2020	5	1	2020	5	8	180
18	186	2	2020	5	1	2020	5	8	181
18	170	99	2020	5	1	2020	5	8	182
18	113	54	2020	5	1	2020	5	8	183
18	159	94	2020	5	1	2020	5	8	184
18	168	89	2020	5	1	2020	5	8	185
18	85	28	2020	5	1	2020	5	8	186
18	181	106	2020	5	1	2020	5	8	187
18	171	100	2020	5	1	2020	5	8	188
18	276	74	2020	5	1	2020	5	8	189
18	184	19	2020	5	1	2020	5	8	190
18	274	153	2020	5	1	2020	5	8	191
18	188	107	2020	5	1	2020	5	8	192
18	187	63	2020	5	1	2020	5	8	193
18	273	152	2020	5	1	2020	5	8	194
18	281	96	2020	5	1	2020	5	8	195
18	161	32	2020	5	1	2020	5	8	196
18	183	29	2020	5	1	2020	5	8	197
18	182	104	2020	5	1	2020	5	8	198
18	160	89	2020	5	1	2020	5	8	199
18	133	82	2020	5	1	2020	5	8	200
19	284	13	2020	12	11	2020	12	18	1
19	400	210	2020	12	11	2020	12	18	2
19	434	234	2020	12	11	2020	12	18	3
19	415	219	2020	12	11	2020	12	18	4
19	283	63	2020	12	11	2020	12	18	5
19	285	42	2020	12	11	2020	12	18	6
19	350	16	2020	12	11	2020	12	18	7
19	416	63	2020	12	11	2020	12	18	8
19	417	220	2020	12	11	2020	12	18	9
19	458	234	2020	12	11	2020	12	18	10
19	1	1	2020	12	11	2020	12	18	11
19	418	221	2020	12	11	2020	12	18	12
19	419	222	2020	12	11	2020	12	18	13
19	433	13	2020	12	11	2020	12	18	14
19	465	234	2020	12	11	2020	12	18	15
19	289	158	2020	12	11	2020	12	18	16
19	286	157	2020	12	11	2020	12	18	17
19	287	63	2020	12	11	2020	12	18	18
19	481	234	2020	12	11	2020	12	18	19
19	420	223	2020	12	11	2020	12	18	20
19	435	28	2020	12	11	2020	12	18	21
19	476	234	2020	12	11	2020	12	18	22
19	421	224	2020	12	11	2020	12	18	23
19	508	234	2020	12	11	2020	12	18	24
19	439	29	2020	12	11	2020	12	18	25
19	288	92	2020	12	11	2020	12	18	26
19	367	191	2020	12	11	2020	12	18	27
19	813	234	2020	12	11	2020	12	18	28
19	438	75	2020	12	11	2020	12	18	29
19	436	126	2020	12	11	2020	12	18	30
19	291	159	2020	12	11	2020	12	18	31
19	424	10	2020	12	11	2020	12	18	32
19	292	160	2020	12	11	2020	12	18	33
19	814	234	2020	12	11	2020	12	18	34
19	290	10	2020	12	11	2020	12	18	35
19	422	225	2020	12	11	2020	12	18	36
19	444	169	2020	12	11	2020	12	18	37
19	815	234	2020	12	11	2020	12	18	38
19	816	234	2020	12	11	2020	12	18	39
19	423	226	2020	12	11	2020	12	18	40
19	296	161	2020	12	11	2020	12	18	41
19	99	21	2020	12	11	2020	12	18	42
19	817	234	2020	12	11	2020	12	18	43
19	425	227	2020	12	11	2020	12	18	44
19	818	234	2020	12	11	2020	12	18	45
19	315	4	2020	12	11	2020	12	18	46
19	426	228	2020	12	11	2020	12	18	47
19	428	230	2020	12	11	2020	12	18	48
19	501	264	2020	12	11	2020	12	18	49
19	297	162	2020	12	11	2020	12	18	50
19	200	27	2020	12	11	2020	12	18	51
19	429	221	2020	12	11	2020	12	18	52
19	819	234	2020	12	11	2020	12	18	53
19	499	264	2020	12	11	2020	12	18	54
19	450	13	2020	12	11	2020	12	18	55
19	294	92	2020	12	11	2020	12	18	56
19	820	234	2020	12	11	2020	12	18	57
19	21	17	2020	12	11	2020	12	18	58
19	311	166	2020	12	11	2020	12	18	59
19	431	232	2020	12	11	2020	12	18	60
19	430	231	2020	12	11	2020	12	18	61
19	298	123	2020	12	11	2020	12	18	62
19	357	32	2020	12	11	2020	12	18	63
19	303	77	2020	12	11	2020	12	18	64
19	7	7	2020	12	11	2020	12	18	65
19	349	180	2020	12	11	2020	12	18	66
19	432	233	2020	12	11	2020	12	18	67
19	459	158	2020	12	11	2020	12	18	68
19	3	3	2020	12	11	2020	12	18	69
19	821	234	2020	12	11	2020	12	18	70
19	306	164	2020	12	11	2020	12	18	71
19	293	10	2020	12	11	2020	12	18	72
19	474	48	2020	12	11	2020	12	18	73
19	822	264	2020	12	11	2020	12	18	74
19	308	74	2020	12	11	2020	12	18	75
19	427	229	2020	12	11	2020	12	18	76
19	4	4	2020	12	11	2020	12	18	77
19	305	29	2020	12	11	2020	12	18	78
19	390	206	2020	12	11	2020	12	18	79
19	36	17	2020	12	11	2020	12	18	80
19	312	167	2020	12	11	2020	12	18	81
19	437	235	2020	12	11	2020	12	18	82
19	446	241	2020	12	11	2020	12	18	83
19	359	185	2020	12	11	2020	12	18	84
19	466	18	2020	12	11	2020	12	18	85
19	307	165	2020	12	11	2020	12	18	86
19	317	139	2020	12	11	2020	12	18	87
19	329	173	2020	12	11	2020	12	18	88
19	302	63	2020	12	11	2020	12	18	89
19	301	2	2020	12	11	2020	12	18	90
19	310	20	2020	12	11	2020	12	18	91
19	299	163	2020	12	11	2020	12	18	92
19	455	74	2020	12	11	2020	12	18	93
19	316	130	2020	12	11	2020	12	18	94
19	216	122	2020	12	11	2020	12	18	95
19	321	16	2020	12	11	2020	12	18	96
19	823	264	2020	12	11	2020	12	18	97
19	352	126	2020	12	11	2020	12	18	98
19	5	5	2020	12	11	2020	12	18	99
19	326	159	2020	12	11	2020	12	18	100
19	6	6	2020	12	11	2020	12	18	101
19	313	168	2020	12	11	2020	12	18	102
19	442	238	2020	12	11	2020	12	18	103
19	62	43	2020	12	11	2020	12	18	104
19	388	37	2020	12	11	2020	12	18	105
19	341	25	2020	12	11	2020	12	18	106
19	441	237	2020	12	11	2020	12	18	107
19	440	236	2020	12	11	2020	12	18	108
19	23	19	2020	12	11	2020	12	18	109
19	54	19	2020	12	11	2020	12	18	110
19	51	28	2020	12	11	2020	12	18	111
19	69	48	2020	12	11	2020	12	18	112
19	8	8	2020	12	11	2020	12	18	113
19	346	48	2020	12	11	2020	12	18	114
19	328	21	2020	12	11	2020	12	18	115
19	484	159	2020	12	11	2020	12	18	116
19	351	80	2020	12	11	2020	12	18	117
19	319	169	2020	12	11	2020	12	18	118
19	20	16	2020	12	11	2020	12	18	119
19	27	22	2020	12	11	2020	12	18	120
19	512	25	2020	12	11	2020	12	18	121
19	26	21	2020	12	11	2020	12	18	122
19	158	56	2020	12	11	2020	12	18	123
19	443	239	2020	12	11	2020	12	18	124
19	330	48	2020	12	11	2020	12	18	125
19	824	264	2020	12	11	2020	12	18	126
19	470	253	2020	12	11	2020	12	18	127
19	334	32	2020	12	11	2020	12	18	128
19	825	264	2020	12	11	2020	12	18	129
19	325	130	2020	12	11	2020	12	18	130
19	337	175	2020	12	11	2020	12	18	131
19	150	48	2020	12	11	2020	12	18	132
19	37	29	2020	12	11	2020	12	18	133
19	333	174	2020	12	11	2020	12	18	134
19	12	11	2020	12	11	2020	12	18	135
19	204	63	2020	12	11	2020	12	18	136
19	514	13	2020	12	11	2020	12	18	137
19	448	243	2020	12	11	2020	12	18	138
19	826	264	2020	12	11	2020	12	18	139
19	33	28	2020	12	11	2020	12	18	140
19	82	56	2020	12	11	2020	12	18	141
19	336	92	2020	12	11	2020	12	18	142
19	201	52	2020	12	11	2020	12	18	143
19	447	242	2020	12	11	2020	12	18	144
19	320	170	2020	12	11	2020	12	18	145
19	472	254	2020	12	11	2020	12	18	146
19	827	264	2020	12	11	2020	12	18	147
19	445	240	2020	12	11	2020	12	18	148
19	81	52	2020	12	11	2020	12	18	149
19	755	25	2020	12	11	2020	12	18	150
19	219	124	2020	12	11	2020	12	18	151
19	828	264	2020	12	11	2020	12	18	152
19	343	176	2020	12	11	2020	12	18	153
19	29	24	2020	12	11	2020	12	18	154
19	449	244	2020	12	11	2020	12	18	155
19	345	178	2020	12	11	2020	12	18	156
19	502	266	2020	12	11	2020	12	18	157
19	11	4	2020	12	11	2020	12	18	158
19	399	92	2020	12	11	2020	12	18	159
19	342	171	2020	12	11	2020	12	18	160
19	381	201	2020	12	11	2020	12	18	161
19	493	78	2020	12	11	2020	12	18	162
19	260	48	2020	12	11	2020	12	18	163
19	107	70	2020	12	11	2020	12	18	164
19	93	62	2020	12	11	2020	12	18	165
19	453	247	2020	12	11	2020	12	18	166
19	47	34	2020	12	11	2020	12	18	167
19	637	13	2020	12	11	2020	12	18	168
19	451	245	2020	12	11	2020	12	18	169
19	327	172	2020	12	11	2020	12	18	170
19	348	179	2020	12	11	2020	12	18	171
19	128	80	2020	12	11	2020	12	18	172
19	12	21	2020	12	11	2020	12	18	173
19	385	185	2020	12	11	2020	12	18	174
19	19	15	2020	12	11	2020	12	18	175
19	34	28	2020	12	11	2020	12	18	176
19	452	246	2020	12	11	2020	12	18	177
19	48	35	2020	12	11	2020	12	18	178
19	155	92	2020	12	11	2020	12	18	179
19	2	2	2020	12	11	2020	12	18	180
19	509	270	2020	12	11	2020	12	18	181
19	511	123	2020	12	11	2020	12	18	182
19	829	264	2020	12	11	2020	12	18	183
19	10	10	2020	12	11	2020	12	18	184
19	830	264	2020	12	11	2020	12	18	185
19	165	56	2020	12	11	2020	12	18	186
19	639	13	2020	12	11	2020	12	18	187
19	335	89	2020	12	11	2020	12	18	188
19	457	249	2020	12	11	2020	12	18	189
19	231	130	2020	12	11	2020	12	18	190
19	323	171	2020	12	11	2020	12	18	191
19	68	47	2020	12	11	2020	12	18	192
19	665	234	2020	12	11	2020	12	18	193
19	454	248	2020	12	11	2020	12	18	194
19	31	26	2020	12	11	2020	12	18	195
19	331	171	2020	12	11	2020	12	18	196
19	138	45	2020	12	11	2020	12	18	197
19	460	89	2020	12	11	2020	12	18	198
19	406	216	2020	12	11	2020	12	18	199
19	236	134	2020	12	11	2020	12	18	200
20	200	27	2020	7	10	2020	7	17	1
20	216	122	2020	7	10	2020	7	17	2
20	1	1	2020	7	10	2020	7	17	3
20	330	48	2020	7	10	2020	7	17	4
20	99	21	2020	7	10	2020	7	17	5
20	3	3	2020	7	10	2020	7	17	6
20	346	48	2020	7	10	2020	7	17	7
20	684	48	2020	7	10	2020	7	17	8
20	676	48	2020	7	10	2020	7	17	9
20	831	116	2020	7	10	2020	7	17	10
20	62	43	2020	7	10	2020	7	17	11
20	6	6	2020	7	10	2020	7	17	12
20	201	52	2020	7	10	2020	7	17	13
20	680	48	2020	7	10	2020	7	17	14
20	230	48	2020	7	10	2020	7	17	15
20	342	171	2020	7	10	2020	7	17	16
20	7	7	2020	7	10	2020	7	17	17
20	68	47	2020	7	10	2020	7	17	18
20	2	2	2020	7	10	2020	7	17	19
20	219	124	2020	7	10	2020	7	17	20
20	4	4	2020	7	10	2020	7	17	21
20	11	4	2020	7	10	2020	7	17	22
20	8	8	2020	7	10	2020	7	17	23
20	832	48	2020	7	10	2020	7	17	24
20	704	48	2020	7	10	2020	7	17	25
20	208	39	2020	7	10	2020	7	17	26
20	833	48	2020	7	10	2020	7	17	27
20	204	63	2020	7	10	2020	7	17	28
20	217	123	2020	7	10	2020	7	17	29
20	209	120	2020	7	10	2020	7	17	30
20	355	96	2020	7	10	2020	7	17	31
20	21	17	2020	7	10	2020	7	17	32
20	15	14	2020	7	10	2020	7	17	33
20	362	92	2020	7	10	2020	7	17	34
20	244	48	2020	7	10	2020	7	17	35
20	834	48	2020	7	10	2020	7	17	36
20	835	48	2020	7	10	2020	7	17	37
20	231	130	2020	7	10	2020	7	17	38
20	5	5	2020	7	10	2020	7	17	39
20	10	10	2020	7	10	2020	7	17	40
20	36	17	2020	7	10	2020	7	17	41
20	294	92	2020	7	10	2020	7	17	42
20	836	48	2020	7	10	2020	7	17	43
20	837	48	2020	7	10	2020	7	17	44
20	838	48	2020	7	10	2020	7	17	45
20	839	48	2020	7	10	2020	7	17	46
20	203	117	2020	7	10	2020	7	17	47
20	13	12	2020	7	10	2020	7	17	48
20	840	48	2020	7	10	2020	7	17	49
20	9	9	2020	7	10	2020	7	17	50
20	210	66	2020	7	10	2020	7	17	51
20	23	19	2020	7	10	2020	7	17	52
20	20	16	2020	7	10	2020	7	17	53
20	214	68	2020	7	10	2020	7	17	54
20	17	1	2020	7	10	2020	7	17	55
20	312	167	2020	7	10	2020	7	17	56
20	137	51	2020	7	10	2020	7	17	57
20	207	119	2020	7	10	2020	7	17	58
20	37	29	2020	7	10	2020	7	17	59
20	158	56	2020	7	10	2020	7	17	60
20	12	11	2020	7	10	2020	7	17	61
20	26	21	2020	7	10	2020	7	17	62
20	205	118	2020	7	10	2020	7	17	63
20	211	121	2020	7	10	2020	7	17	64
20	27	22	2020	7	10	2020	7	17	65
20	366	190	2020	7	10	2020	7	17	66
20	841	264	2020	7	10	2020	7	17	67
20	69	48	2020	7	10	2020	7	17	68
20	236	134	2020	7	10	2020	7	17	69
20	213	33	2020	7	10	2020	7	17	70
20	82	56	2020	7	10	2020	7	17	71
20	334	32	2020	7	10	2020	7	17	72
20	14	13	2020	7	10	2020	7	17	73
20	33	28	2020	7	10	2020	7	17	74
20	54	19	2020	7	10	2020	7	17	75
20	155	92	2020	7	10	2020	7	17	76
20	110	32	2020	7	10	2020	7	17	77
20	842	48	2020	7	10	2020	7	17	78
20	165	56	2020	7	10	2020	7	17	79
20	18	13	2020	7	10	2020	7	17	80
20	29	24	2020	7	10	2020	7	17	81
20	30	25	2020	7	10	2020	7	17	82
20	252	143	2020	7	10	2020	7	17	83
20	122	20	2020	7	10	2020	7	17	84
20	19	15	2020	7	10	2020	7	17	85
20	48	35	2020	7	10	2020	7	17	86
20	678	315	2020	7	10	2020	7	17	87
20	397	92	2020	7	10	2020	7	17	88
20	218	86	2020	7	10	2020	7	17	89
20	116	74	2020	7	10	2020	7	17	90
20	25	20	2020	7	10	2020	7	17	91
20	681	108	2020	7	10	2020	7	17	92
20	222	2	2020	7	10	2020	7	17	93
20	223	35	2020	7	10	2020	7	17	94
20	688	110	2020	7	10	2020	7	17	95
20	682	90	2020	7	10	2020	7	17	96
20	227	128	2020	7	10	2020	7	17	97
20	221	126	2020	7	10	2020	7	17	98
20	47	34	2020	7	10	2020	7	17	99
20	150	48	2020	7	10	2020	7	17	100
20	51	28	2020	7	10	2020	7	17	101
20	34	28	2020	7	10	2020	7	17	102
20	228	129	2020	7	10	2020	7	17	103
20	31	26	2020	7	10	2020	7	17	104
20	361	186	2020	7	10	2020	7	17	105
20	81	52	2020	7	10	2020	7	17	106
20	64	45	2020	7	10	2020	7	17	107
20	694	302	2020	7	10	2020	7	17	108
20	24	9	2020	7	10	2020	7	17	109
20	237	135	2020	7	10	2020	7	17	110
20	229	84	2020	7	10	2020	7	17	111
20	843	48	2020	7	10	2020	7	17	112
20	844	48	2020	7	10	2020	7	17	113
20	404	214	2020	7	10	2020	7	17	114
20	706	66	2020	7	10	2020	7	17	115
20	58	40	2020	7	10	2020	7	17	116
20	690	317	2020	7	10	2020	7	17	117
20	93	62	2020	7	10	2020	7	17	118
20	16	4	2020	7	10	2020	7	17	119
20	45	32	2020	7	10	2020	7	17	120
20	53	37	2020	7	10	2020	7	17	121
20	710	184	2020	7	10	2020	7	17	122
20	215	110	2020	7	10	2020	7	17	123
20	57	5	2020	7	10	2020	7	17	124
20	151	90	2020	7	10	2020	7	17	125
20	107	70	2020	7	10	2020	7	17	126
20	56	39	2020	7	10	2020	7	17	127
20	212	52	2020	7	10	2020	7	17	128
20	845	350	2020	7	10	2020	7	17	129
20	75	45	2020	7	10	2020	7	17	130
20	94	19	2020	7	10	2020	7	17	131
20	95	63	2020	7	10	2020	7	17	132
20	109	70	2020	7	10	2020	7	17	133
20	702	319	2020	7	10	2020	7	17	134
20	12	21	2020	7	10	2020	7	17	135
20	260	48	2020	7	10	2020	7	17	136
20	108	48	2020	7	10	2020	7	17	137
20	123	45	2020	7	10	2020	7	17	138
20	44	20	2020	7	10	2020	7	17	139
20	742	333	2020	7	10	2020	7	17	140
20	115	73	2020	7	10	2020	7	17	141
20	103	68	2020	7	10	2020	7	17	142
20	238	32	2020	7	10	2020	7	17	143
20	240	137	2020	7	10	2020	7	17	144
20	74	28	2020	7	10	2020	7	17	145
20	128	80	2020	7	10	2020	7	17	146
20	206	118	2020	7	10	2020	7	17	147
20	40	30	2020	7	10	2020	7	17	148
20	138	45	2020	7	10	2020	7	17	149
20	243	139	2020	7	10	2020	7	17	150
20	22	18	2020	7	10	2020	7	17	151
20	296	161	2020	7	10	2020	7	17	152
20	741	11	2020	7	10	2020	7	17	153
20	364	188	2020	7	10	2020	7	17	154
20	104	69	2020	7	10	2020	7	17	155
20	111	71	2020	7	10	2020	7	17	156
20	245	85	2020	7	10	2020	7	17	157
20	52	20	2020	7	10	2020	7	17	158
20	157	93	2020	7	10	2020	7	17	159
20	35	13	2020	7	10	2020	7	17	160
20	846	92	2020	7	10	2020	7	17	161
20	83	57	2020	7	10	2020	7	17	162
20	118	38	2020	7	10	2020	7	17	163
20	847	351	2020	7	10	2020	7	17	164
20	106	66	2020	7	10	2020	7	17	165
20	63	44	2020	7	10	2020	7	17	166
20	39	13	2020	7	10	2020	7	17	167
20	50	5	2020	7	10	2020	7	17	168
20	693	58	2020	7	10	2020	7	17	169
20	297	162	2020	7	10	2020	7	17	170
20	336	92	2020	7	10	2020	7	17	171
20	739	158	2020	7	10	2020	7	17	172
20	174	102	2020	7	10	2020	7	17	173
20	162	70	2020	7	10	2020	7	17	174
20	70	49	2020	7	10	2020	7	17	175
20	848	118	2020	7	10	2020	7	17	176
20	321	16	2020	7	10	2020	7	17	177
20	43	10	2020	7	10	2020	7	17	178
20	91	61	2020	7	10	2020	7	17	179
20	117	17	2020	7	10	2020	7	17	180
20	119	75	2020	7	10	2020	7	17	181
20	178	98	2020	7	10	2020	7	17	182
20	166	97	2020	7	10	2020	7	17	183
20	262	148	2020	7	10	2020	7	17	184
20	182	104	2020	7	10	2020	7	17	185
20	79	55	2020	7	10	2020	7	17	186
20	849	66	2020	7	10	2020	7	17	187
20	101	67	2020	7	10	2020	7	17	188
20	71	9	2020	7	10	2020	7	17	189
20	235	133	2020	7	10	2020	7	17	190
20	708	85	2020	7	10	2020	7	17	191
20	850	92	2020	7	10	2020	7	17	192
20	153	51	2020	7	10	2020	7	17	193
20	713	323	2020	7	10	2020	7	17	194
20	102	27	2020	7	10	2020	7	17	195
20	700	74	2020	7	10	2020	7	17	196
20	87	59	2020	7	10	2020	7	17	197
20	49	36	2020	7	10	2020	7	17	198
20	851	92	2020	7	10	2020	7	17	199
20	711	321	2020	7	10	2020	7	17	200
21	284	13	2020	11	6	2020	11	13	1
21	283	63	2020	11	6	2020	11	13	2
21	285	42	2020	11	6	2020	11	13	3
21	286	157	2020	11	6	2020	11	13	4
21	290	10	2020	11	6	2020	11	13	5
21	288	92	2020	11	6	2020	11	13	6
21	289	158	2020	11	6	2020	11	13	7
21	292	160	2020	11	6	2020	11	13	8
21	291	159	2020	11	6	2020	11	13	9
21	1	1	2020	11	6	2020	11	13	10
21	293	10	2020	11	6	2020	11	13	11
21	294	92	2020	11	6	2020	11	13	12
21	99	21	2020	11	6	2020	11	13	13
21	296	161	2020	11	6	2020	11	13	14
21	287	63	2020	11	6	2020	11	13	15
21	297	162	2020	11	6	2020	11	13	16
21	484	159	2020	11	6	2020	11	13	17
21	298	123	2020	11	6	2020	11	13	18
21	299	163	2020	11	6	2020	11	13	19
21	200	27	2020	11	6	2020	11	13	20
21	311	166	2020	11	6	2020	11	13	21
21	303	77	2020	11	6	2020	11	13	22
21	301	2	2020	11	6	2020	11	13	23
21	307	165	2020	11	6	2020	11	13	24
21	306	164	2020	11	6	2020	11	13	25
21	21	17	2020	11	6	2020	11	13	26
21	315	4	2020	11	6	2020	11	13	27
21	308	74	2020	11	6	2020	11	13	28
21	305	29	2020	11	6	2020	11	13	29
21	312	167	2020	11	6	2020	11	13	30
21	216	122	2020	11	6	2020	11	13	31
21	310	20	2020	11	6	2020	11	13	32
21	313	168	2020	11	6	2020	11	13	33
21	316	130	2020	11	6	2020	11	13	34
21	647	42	2020	11	6	2020	11	13	35
21	317	139	2020	11	6	2020	11	13	36
21	326	159	2020	11	6	2020	11	13	37
21	36	17	2020	11	6	2020	11	13	38
21	3	3	2020	11	6	2020	11	13	39
21	302	63	2020	11	6	2020	11	13	40
21	329	173	2020	11	6	2020	11	13	41
21	502	266	2020	11	6	2020	11	13	42
21	319	169	2020	11	6	2020	11	13	43
21	7	7	2020	11	6	2020	11	13	44
21	321	16	2020	11	6	2020	11	13	45
21	352	126	2020	11	6	2020	11	13	46
21	295	63	2020	11	6	2020	11	13	47
21	62	43	2020	11	6	2020	11	13	48
21	350	16	2020	11	6	2020	11	13	49
21	325	130	2020	11	6	2020	11	13	50
21	320	170	2020	11	6	2020	11	13	51
21	328	21	2020	11	6	2020	11	13	52
21	337	175	2020	11	6	2020	11	13	53
21	323	171	2020	11	6	2020	11	13	54
21	330	48	2020	11	6	2020	11	13	55
21	349	180	2020	11	6	2020	11	13	56
21	333	174	2020	11	6	2020	11	13	57
21	334	32	2020	11	6	2020	11	13	58
21	327	172	2020	11	6	2020	11	13	59
21	4	4	2020	11	6	2020	11	13	60
21	336	92	2020	11	6	2020	11	13	61
21	331	171	2020	11	6	2020	11	13	62
21	341	25	2020	11	6	2020	11	13	63
21	6	6	2020	11	6	2020	11	13	64
21	511	123	2020	11	6	2020	11	13	65
21	343	176	2020	11	6	2020	11	13	66
21	219	124	2020	11	6	2020	11	13	67
21	345	178	2020	11	6	2020	11	13	68
21	351	80	2020	11	6	2020	11	13	69
21	51	28	2020	11	6	2020	11	13	70
21	342	171	2020	11	6	2020	11	13	71
21	335	89	2020	11	6	2020	11	13	72
21	346	48	2020	11	6	2020	11	13	73
21	23	19	2020	11	6	2020	11	13	74
21	8	8	2020	11	6	2020	11	13	75
21	347	4	2020	11	6	2020	11	13	76
21	204	63	2020	11	6	2020	11	13	77
21	340	132	2020	11	6	2020	11	13	78
21	69	48	2020	11	6	2020	11	13	79
21	27	22	2020	11	6	2020	11	13	80
21	26	21	2020	11	6	2020	11	13	81
21	201	52	2020	11	6	2020	11	13	82
21	158	56	2020	11	6	2020	11	13	83
21	357	32	2020	11	6	2020	11	13	84
21	348	179	2020	11	6	2020	11	13	85
21	54	19	2020	11	6	2020	11	13	86
21	231	130	2020	11	6	2020	11	13	87
21	37	29	2020	11	6	2020	11	13	88
21	5	5	2020	11	6	2020	11	13	89
21	344	177	2020	11	6	2020	11	13	90
21	236	134	2020	11	6	2020	11	13	91
21	150	48	2020	11	6	2020	11	13	92
21	359	185	2020	11	6	2020	11	13	93
21	354	182	2020	11	6	2020	11	13	94
21	400	210	2020	11	6	2020	11	13	95
21	12	11	2020	11	6	2020	11	13	96
21	388	37	2020	11	6	2020	11	13	97
21	367	191	2020	11	6	2020	11	13	98
21	82	56	2020	11	6	2020	11	13	99
21	81	52	2020	11	6	2020	11	13	100
21	355	96	2020	11	6	2020	11	13	101
21	300	63	2020	11	6	2020	11	13	102
21	47	34	2020	11	6	2020	11	13	103
21	33	28	2020	11	6	2020	11	13	104
21	356	183	2020	11	6	2020	11	13	105
21	137	51	2020	11	6	2020	11	13	106
21	12	21	2020	11	6	2020	11	13	107
21	20	16	2020	11	6	2020	11	13	108
21	11	4	2020	11	6	2020	11	13	109
21	68	47	2020	11	6	2020	11	13	110
21	93	62	2020	11	6	2020	11	13	111
21	122	20	2020	11	6	2020	11	13	112
21	10	10	2020	11	6	2020	11	13	113
21	304	63	2020	11	6	2020	11	13	114
21	128	80	2020	11	6	2020	11	13	115
21	155	92	2020	11	6	2020	11	13	116
21	365	189	2020	11	6	2020	11	13	117
21	165	56	2020	11	6	2020	11	13	118
21	361	186	2020	11	6	2020	11	13	119
21	363	187	2020	11	6	2020	11	13	120
21	2	2	2020	11	6	2020	11	13	121
21	353	181	2020	11	6	2020	11	13	122
21	29	24	2020	11	6	2020	11	13	123
21	735	331	2020	11	6	2020	11	13	124
21	260	48	2020	11	6	2020	11	13	125
21	107	70	2020	11	6	2020	11	13	126
21	19	15	2020	11	6	2020	11	13	127
21	95	63	2020	11	6	2020	11	13	128
21	362	92	2020	11	6	2020	11	13	129
21	390	206	2020	11	6	2020	11	13	130
21	360	171	2020	11	6	2020	11	13	131
21	358	184	2020	11	6	2020	11	13	132
21	372	85	2020	11	6	2020	11	13	133
21	369	193	2020	11	6	2020	11	13	134
21	381	201	2020	11	6	2020	11	13	135
21	314	63	2020	11	6	2020	11	13	136
21	364	188	2020	11	6	2020	11	13	137
21	48	35	2020	11	6	2020	11	13	138
21	368	192	2020	11	6	2020	11	13	139
21	733	126	2020	11	6	2020	11	13	140
21	34	28	2020	11	6	2020	11	13	141
21	366	190	2020	11	6	2020	11	13	142
21	138	45	2020	11	6	2020	11	13	143
21	370	48	2020	11	6	2020	11	13	144
21	376	197	2020	11	6	2020	11	13	145
21	385	185	2020	11	6	2020	11	13	146
21	202	116	2020	11	6	2020	11	13	147
21	394	194	2020	11	6	2020	11	13	148
21	378	199	2020	11	6	2020	11	13	149
21	371	32	2020	11	6	2020	11	13	150
21	214	68	2020	11	6	2020	11	13	151
21	174	102	2020	11	6	2020	11	13	152
21	374	195	2020	11	6	2020	11	13	153
21	173	101	2020	11	6	2020	11	13	154
21	58	40	2020	11	6	2020	11	13	155
21	109	70	2020	11	6	2020	11	13	156
21	379	172	2020	11	6	2020	11	13	157
21	415	219	2020	11	6	2020	11	13	158
21	382	166	2020	11	6	2020	11	13	159
21	123	45	2020	11	6	2020	11	13	160
21	375	196	2020	11	6	2020	11	13	161
21	221	126	2020	11	6	2020	11	13	162
21	309	63	2020	11	6	2020	11	13	163
21	383	202	2020	11	6	2020	11	13	164
21	210	66	2020	11	6	2020	11	13	165
21	64	45	2020	11	6	2020	11	13	166
21	318	63	2020	11	6	2020	11	13	167
21	852	126	2020	11	6	2020	11	13	168
21	115	73	2020	11	6	2020	11	13	169
21	391	207	2020	11	6	2020	11	13	170
21	384	203	2020	11	6	2020	11	13	171
21	31	26	2020	11	6	2020	11	13	172
21	380	200	2020	11	6	2020	11	13	173
21	74	28	2020	11	6	2020	11	13	174
21	404	214	2020	11	6	2020	11	13	175
21	94	19	2020	11	6	2020	11	13	176
21	9	9	2020	11	6	2020	11	13	177
21	396	159	2020	11	6	2020	11	13	178
21	406	216	2020	11	6	2020	11	13	179
21	393	130	2020	11	6	2020	11	13	180
21	405	215	2020	11	6	2020	11	13	181
21	118	38	2020	11	6	2020	11	13	182
21	398	209	2020	11	6	2020	11	13	183
21	373	194	2020	11	6	2020	11	13	184
21	386	204	2020	11	6	2020	11	13	185
21	389	122	2020	11	6	2020	11	13	186
21	14	13	2020	11	6	2020	11	13	187
21	399	92	2020	11	6	2020	11	13	188
21	397	92	2020	11	6	2020	11	13	189
21	322	63	2020	11	6	2020	11	13	190
21	408	217	2020	11	6	2020	11	13	191
21	332	63	2020	11	6	2020	11	13	192
21	17	1	2020	11	6	2020	11	13	193
21	75	45	2020	11	6	2020	11	13	194
21	13	12	2020	11	6	2020	11	13	195
21	101	67	2020	11	6	2020	11	13	196
21	116	74	2020	11	6	2020	11	13	197
21	218	86	2020	11	6	2020	11	13	198
21	25	20	2020	11	6	2020	11	13	199
21	70	49	2020	11	6	2020	11	13	200
22	292	160	2020	8	14	2020	8	21	1
22	301	2	2020	8	14	2020	8	21	2
22	216	122	2020	8	14	2020	8	21	3
22	200	27	2020	8	14	2020	8	21	4
22	99	21	2020	8	14	2020	8	21	5
22	1	1	2020	8	14	2020	8	21	6
22	3	3	2020	8	14	2020	8	21	7
22	62	43	2020	8	14	2020	8	21	8
22	370	48	2020	8	14	2020	8	21	9
22	310	20	2020	8	14	2020	8	21	10
22	330	48	2020	8	14	2020	8	21	11
22	336	92	2020	8	14	2020	8	21	12
22	346	48	2020	8	14	2020	8	21	13
22	319	169	2020	8	14	2020	8	21	14
22	297	162	2020	8	14	2020	8	21	15
22	7	7	2020	8	14	2020	8	21	16
22	6	6	2020	8	14	2020	8	21	17
22	231	130	2020	8	14	2020	8	21	18
22	219	124	2020	8	14	2020	8	21	19
22	294	92	2020	8	14	2020	8	21	20
22	201	52	2020	8	14	2020	8	21	21
22	355	96	2020	8	14	2020	8	21	22
22	361	186	2020	8	14	2020	8	21	23
22	312	167	2020	8	14	2020	8	21	24
22	68	47	2020	8	14	2020	8	21	25
22	321	16	2020	8	14	2020	8	21	26
22	334	32	2020	8	14	2020	8	21	27
22	11	4	2020	8	14	2020	8	21	28
22	21	17	2020	8	14	2020	8	21	29
22	362	92	2020	8	14	2020	8	21	30
22	217	123	2020	8	14	2020	8	21	31
22	208	39	2020	8	14	2020	8	21	32
22	291	159	2020	8	14	2020	8	21	33
22	4	4	2020	8	14	2020	8	21	34
22	379	172	2020	8	14	2020	8	21	35
22	36	17	2020	8	14	2020	8	21	36
22	285	42	2020	8	14	2020	8	21	37
22	366	190	2020	8	14	2020	8	21	38
22	236	134	2020	8	14	2020	8	21	39
22	8	8	2020	8	14	2020	8	21	40
22	664	28	2020	8	14	2020	8	21	41
22	665	234	2020	8	14	2020	8	21	42
22	2	2	2020	8	14	2020	8	21	43
22	204	63	2020	8	14	2020	8	21	44
22	137	51	2020	8	14	2020	8	21	45
22	202	116	2020	8	14	2020	8	21	46
22	303	77	2020	8	14	2020	8	21	47
22	342	171	2020	8	14	2020	8	21	48
22	327	172	2020	8	14	2020	8	21	49
22	666	234	2020	8	14	2020	8	21	50
22	209	120	2020	8	14	2020	8	21	51
22	668	314	2020	8	14	2020	8	21	52
22	853	352	2020	8	14	2020	8	21	53
22	5	5	2020	8	14	2020	8	21	54
22	10	10	2020	8	14	2020	8	21	55
22	26	21	2020	8	14	2020	8	21	56
22	23	19	2020	8	14	2020	8	21	57
22	296	161	2020	8	14	2020	8	21	58
22	20	16	2020	8	14	2020	8	21	59
22	158	56	2020	8	14	2020	8	21	60
22	15	14	2020	8	14	2020	8	21	61
22	37	29	2020	8	14	2020	8	21	62
22	54	19	2020	8	14	2020	8	21	63
22	214	68	2020	8	14	2020	8	21	64
22	27	22	2020	8	14	2020	8	21	65
22	12	11	2020	8	14	2020	8	21	66
22	854	157	2020	8	14	2020	8	21	67
22	69	48	2020	8	14	2020	8	21	68
22	13	12	2020	8	14	2020	8	21	69
22	33	28	2020	8	14	2020	8	21	70
22	678	315	2020	8	14	2020	8	21	71
22	82	56	2020	8	14	2020	8	21	72
22	210	66	2020	8	14	2020	8	21	73
22	363	187	2020	8	14	2020	8	21	74
22	17	1	2020	8	14	2020	8	21	75
22	223	35	2020	8	14	2020	8	21	76
22	48	35	2020	8	14	2020	8	21	77
22	9	9	2020	8	14	2020	8	21	78
22	313	168	2020	8	14	2020	8	21	79
22	29	24	2020	8	14	2020	8	21	80
22	155	92	2020	8	14	2020	8	21	81
22	165	56	2020	8	14	2020	8	21	82
22	150	48	2020	8	14	2020	8	21	83
22	203	117	2020	8	14	2020	8	21	84
22	676	48	2020	8	14	2020	8	21	85
22	19	15	2020	8	14	2020	8	21	86
22	667	234	2020	8	14	2020	8	21	87
22	237	135	2020	8	14	2020	8	21	88
22	51	28	2020	8	14	2020	8	21	89
22	397	92	2020	8	14	2020	8	21	90
22	672	22	2020	8	14	2020	8	21	91
22	682	90	2020	8	14	2020	8	21	92
22	34	28	2020	8	14	2020	8	21	93
22	116	74	2020	8	14	2020	8	21	94
22	110	32	2020	8	14	2020	8	21	95
22	364	188	2020	8	14	2020	8	21	96
22	122	20	2020	8	14	2020	8	21	97
22	213	33	2020	8	14	2020	8	21	98
22	205	118	2020	8	14	2020	8	21	99
22	348	179	2020	8	14	2020	8	21	100
22	81	52	2020	8	14	2020	8	21	101
22	398	209	2020	8	14	2020	8	21	102
22	18	13	2020	8	14	2020	8	21	103
22	680	48	2020	8	14	2020	8	21	104
22	14	13	2020	8	14	2020	8	21	105
22	25	20	2020	8	14	2020	8	21	106
22	211	121	2020	8	14	2020	8	21	107
22	93	62	2020	8	14	2020	8	21	108
22	47	34	2020	8	14	2020	8	21	109
22	12	21	2020	8	14	2020	8	21	110
22	230	48	2020	8	14	2020	8	21	111
22	691	145	2020	8	14	2020	8	21	112
22	796	108	2020	8	14	2020	8	21	113
22	31	26	2020	8	14	2020	8	21	114
22	685	89	2020	8	14	2020	8	21	115
22	64	45	2020	8	14	2020	8	21	116
22	30	25	2020	8	14	2020	8	21	117
22	252	143	2020	8	14	2020	8	21	118
22	229	84	2020	8	14	2020	8	21	119
22	222	2	2020	8	14	2020	8	21	120
22	218	86	2020	8	14	2020	8	21	121
22	207	119	2020	8	14	2020	8	21	122
22	227	128	2020	8	14	2020	8	21	123
22	791	344	2020	8	14	2020	8	21	124
22	260	48	2020	8	14	2020	8	21	125
22	690	317	2020	8	14	2020	8	21	126
22	107	70	2020	8	14	2020	8	21	127
22	221	126	2020	8	14	2020	8	21	128
22	16	4	2020	8	14	2020	8	21	129
22	693	58	2020	8	14	2020	8	21	130
22	688	110	2020	8	14	2020	8	21	131
22	95	63	2020	8	14	2020	8	21	132
22	58	40	2020	8	14	2020	8	21	133
22	123	45	2020	8	14	2020	8	21	134
22	94	19	2020	8	14	2020	8	21	135
22	53	37	2020	8	14	2020	8	21	136
22	404	214	2020	8	14	2020	8	21	137
22	115	73	2020	8	14	2020	8	21	138
22	109	70	2020	8	14	2020	8	21	139
22	684	48	2020	8	14	2020	8	21	140
22	138	45	2020	8	14	2020	8	21	141
22	671	234	2020	8	14	2020	8	21	142
22	699	33	2020	8	14	2020	8	21	143
22	75	45	2020	8	14	2020	8	21	144
22	128	80	2020	8	14	2020	8	21	145
22	240	137	2020	8	14	2020	8	21	146
22	669	234	2020	8	14	2020	8	21	147
22	380	200	2020	8	14	2020	8	21	148
22	74	28	2020	8	14	2020	8	21	149
22	24	9	2020	8	14	2020	8	21	150
22	855	4	2020	8	14	2020	8	21	151
22	700	74	2020	8	14	2020	8	21	152
22	708	85	2020	8	14	2020	8	21	153
22	670	234	2020	8	14	2020	8	21	154
22	103	68	2020	8	14	2020	8	21	155
22	56	39	2020	8	14	2020	8	21	156
22	243	139	2020	8	14	2020	8	21	157
22	111	71	2020	8	14	2020	8	21	158
22	118	38	2020	8	14	2020	8	21	159
22	151	90	2020	8	14	2020	8	21	160
22	174	102	2020	8	14	2020	8	21	161
22	706	66	2020	8	14	2020	8	21	162
22	681	108	2020	8	14	2020	8	21	163
22	157	93	2020	8	14	2020	8	21	164
22	182	104	2020	8	14	2020	8	21	165
22	162	70	2020	8	14	2020	8	21	166
22	856	353	2020	8	14	2020	8	21	167
22	245	85	2020	8	14	2020	8	21	168
22	166	97	2020	8	14	2020	8	21	169
22	702	319	2020	8	14	2020	8	21	170
22	262	148	2020	8	14	2020	8	21	171
22	712	322	2020	8	14	2020	8	21	172
22	108	48	2020	8	14	2020	8	21	173
22	795	345	2020	8	14	2020	8	21	174
22	173	101	2020	8	14	2020	8	21	175
22	83	57	2020	8	14	2020	8	21	176
22	70	49	2020	8	14	2020	8	21	177
22	559	134	2020	8	14	2020	8	21	178
22	101	67	2020	8	14	2020	8	21	179
22	228	129	2020	8	14	2020	8	21	180
22	687	316	2020	8	14	2020	8	21	181
22	167	4	2020	8	14	2020	8	21	182
22	238	32	2020	8	14	2020	8	21	183
22	714	168	2020	8	14	2020	8	21	184
22	703	190	2020	8	14	2020	8	21	185
22	264	73	2020	8	14	2020	8	21	186
22	117	17	2020	8	14	2020	8	21	187
22	369	193	2020	8	14	2020	8	21	188
22	797	346	2020	8	14	2020	8	21	189
22	705	354	2020	8	14	2020	8	21	190
22	675	234	2020	8	14	2020	8	21	191
22	857	169	2020	8	14	2020	8	21	192
22	178	98	2020	8	14	2020	8	21	193
22	259	147	2020	8	14	2020	8	21	194
22	140	33	2020	8	14	2020	8	21	195
22	711	321	2020	8	14	2020	8	21	196
22	57	131	2020	8	14	2020	8	21	197
22	146	87	2020	8	14	2020	8	21	198
22	145	19	2020	8	14	2020	8	21	199
22	261	104	2020	8	14	2020	8	21	200
23	292	160	2020	8	28	2020	9	4	1
23	291	159	2020	8	28	2020	9	4	2
23	285	42	2020	8	28	2020	9	4	3
23	289	158	2020	8	28	2020	9	4	4
23	323	171	2020	8	28	2020	9	4	5
23	216	122	2020	8	28	2020	9	4	6
23	99	21	2020	8	28	2020	9	4	7
23	1	1	2020	8	28	2020	9	4	8
23	200	27	2020	8	28	2020	9	4	9
23	301	2	2020	8	28	2020	9	4	10
23	3	3	2020	8	28	2020	9	4	11
23	336	92	2020	8	28	2020	9	4	12
23	62	43	2020	8	28	2020	9	4	13
23	321	16	2020	8	28	2020	9	4	14
23	294	92	2020	8	28	2020	9	4	15
23	310	20	2020	8	28	2020	9	4	16
23	297	162	2020	8	28	2020	9	4	17
23	303	77	2020	8	28	2020	9	4	18
23	312	167	2020	8	28	2020	9	4	19
23	330	48	2020	8	28	2020	9	4	20
23	219	124	2020	8	28	2020	9	4	21
23	334	32	2020	8	28	2020	9	4	22
23	231	130	2020	8	28	2020	9	4	23
23	858	301	2020	8	28	2020	9	4	24
23	7	7	2020	8	28	2020	9	4	25
23	370	48	2020	8	28	2020	9	4	26
23	201	52	2020	8	28	2020	9	4	27
23	286	157	2020	8	28	2020	9	4	28
23	217	123	2020	8	28	2020	9	4	29
23	319	169	2020	8	28	2020	9	4	30
23	6	6	2020	8	28	2020	9	4	31
23	21	17	2020	8	28	2020	9	4	32
23	346	48	2020	8	28	2020	9	4	33
23	361	186	2020	8	28	2020	9	4	34
23	355	96	2020	8	28	2020	9	4	35
23	36	17	2020	8	28	2020	9	4	36
23	296	161	2020	8	28	2020	9	4	37
23	342	171	2020	8	28	2020	9	4	38
23	236	134	2020	8	28	2020	9	4	39
23	4	4	2020	8	28	2020	9	4	40
23	11	4	2020	8	28	2020	9	4	41
23	8	8	2020	8	28	2020	9	4	42
23	379	172	2020	8	28	2020	9	4	43
23	208	39	2020	8	28	2020	9	4	44
23	362	92	2020	8	28	2020	9	4	45
23	366	190	2020	8	28	2020	9	4	46
23	68	47	2020	8	28	2020	9	4	47
23	204	63	2020	8	28	2020	9	4	48
23	391	207	2020	8	28	2020	9	4	49
23	137	51	2020	8	28	2020	9	4	50
23	668	314	2020	8	28	2020	9	4	51
23	202	116	2020	8	28	2020	9	4	52
23	2	2	2020	8	28	2020	9	4	53
23	398	209	2020	8	28	2020	9	4	54
23	23	19	2020	8	28	2020	9	4	55
23	313	168	2020	8	28	2020	9	4	56
23	5	5	2020	8	28	2020	9	4	57
23	26	21	2020	8	28	2020	9	4	58
23	158	56	2020	8	28	2020	9	4	59
23	20	16	2020	8	28	2020	9	4	60
23	343	176	2020	8	28	2020	9	4	61
23	69	48	2020	8	28	2020	9	4	62
23	363	187	2020	8	28	2020	9	4	63
23	665	234	2020	8	28	2020	9	4	64
23	859	157	2020	8	28	2020	9	4	65
23	37	29	2020	8	28	2020	9	4	66
23	12	11	2020	8	28	2020	9	4	67
23	54	19	2020	8	28	2020	9	4	68
23	27	22	2020	8	28	2020	9	4	69
23	10	10	2020	8	28	2020	9	4	70
23	664	28	2020	8	28	2020	9	4	71
23	150	48	2020	8	28	2020	9	4	72
23	209	120	2020	8	28	2020	9	4	73
23	82	56	2020	8	28	2020	9	4	74
23	348	179	2020	8	28	2020	9	4	75
23	33	28	2020	8	28	2020	9	4	76
23	17	1	2020	8	28	2020	9	4	77
23	210	66	2020	8	28	2020	9	4	78
23	380	200	2020	8	28	2020	9	4	79
23	327	172	2020	8	28	2020	9	4	80
23	214	68	2020	8	28	2020	9	4	81
23	860	177	2020	8	28	2020	9	4	82
23	678	315	2020	8	28	2020	9	4	83
23	51	28	2020	8	28	2020	9	4	84
23	155	92	2020	8	28	2020	9	4	85
23	165	56	2020	8	28	2020	9	4	86
23	116	74	2020	8	28	2020	9	4	87
23	48	35	2020	8	28	2020	9	4	88
23	19	15	2020	8	28	2020	9	4	89
23	29	24	2020	8	28	2020	9	4	90
23	682	90	2020	8	28	2020	9	4	91
23	223	35	2020	8	28	2020	9	4	92
23	81	52	2020	8	28	2020	9	4	93
23	9	9	2020	8	28	2020	9	4	94
23	861	56	2020	8	28	2020	9	4	95
23	122	20	2020	8	28	2020	9	4	96
23	203	117	2020	8	28	2020	9	4	97
23	110	32	2020	8	28	2020	9	4	98
23	364	188	2020	8	28	2020	9	4	99
23	666	234	2020	8	28	2020	9	4	100
23	13	12	2020	8	28	2020	9	4	101
23	15	14	2020	8	28	2020	9	4	102
23	47	34	2020	8	28	2020	9	4	103
23	397	92	2020	8	28	2020	9	4	104
23	34	28	2020	8	28	2020	9	4	105
23	93	62	2020	8	28	2020	9	4	106
23	720	355	2020	8	28	2020	9	4	107
23	12	21	2020	8	28	2020	9	4	108
23	25	20	2020	8	28	2020	9	4	109
23	237	135	2020	8	28	2020	9	4	110
23	862	88	2020	8	28	2020	9	4	111
23	326	159	2020	8	28	2020	9	4	112
23	227	128	2020	8	28	2020	9	4	113
23	691	145	2020	8	28	2020	9	4	114
23	393	130	2020	8	28	2020	9	4	115
23	18	13	2020	8	28	2020	9	4	116
23	14	13	2020	8	28	2020	9	4	117
23	211	121	2020	8	28	2020	9	4	118
23	218	86	2020	8	28	2020	9	4	119
23	31	26	2020	8	28	2020	9	4	120
23	64	45	2020	8	28	2020	9	4	121
23	58	40	2020	8	28	2020	9	4	122
23	107	70	2020	8	28	2020	9	4	123
23	260	48	2020	8	28	2020	9	4	124
23	791	344	2020	8	28	2020	9	4	125
23	672	22	2020	8	28	2020	9	4	126
23	229	84	2020	8	28	2020	9	4	127
23	128	80	2020	8	28	2020	9	4	128
23	95	63	2020	8	28	2020	9	4	129
23	404	214	2020	8	28	2020	9	4	130
23	680	48	2020	8	28	2020	9	4	131
23	230	48	2020	8	28	2020	9	4	132
23	30	25	2020	8	28	2020	9	4	133
23	676	48	2020	8	28	2020	9	4	134
23	700	74	2020	8	28	2020	9	4	135
23	138	45	2020	8	28	2020	9	4	136
23	123	45	2020	8	28	2020	9	4	137
23	222	2	2020	8	28	2020	9	4	138
23	94	19	2020	8	28	2020	9	4	139
23	213	33	2020	8	28	2020	9	4	140
23	109	70	2020	8	28	2020	9	4	141
23	115	73	2020	8	28	2020	9	4	142
23	856	353	2020	8	28	2020	9	4	143
23	205	118	2020	8	28	2020	9	4	144
23	240	137	2020	8	28	2020	9	4	145
23	53	37	2020	8	28	2020	9	4	146
23	207	119	2020	8	28	2020	9	4	147
23	863	138	2020	8	28	2020	9	4	148
23	667	234	2020	8	28	2020	9	4	149
23	857	169	2020	8	28	2020	9	4	150
23	74	28	2020	8	28	2020	9	4	151
23	864	159	2020	8	28	2020	9	4	152
23	75	45	2020	8	28	2020	9	4	153
23	16	4	2020	8	28	2020	9	4	154
23	221	126	2020	8	28	2020	9	4	155
23	396	159	2020	8	28	2020	9	4	156
23	729	158	2020	8	28	2020	9	4	157
23	708	85	2020	8	28	2020	9	4	158
23	559	134	2020	8	28	2020	9	4	159
23	853	352	2020	8	28	2020	9	4	160
23	174	102	2020	8	28	2020	9	4	161
23	382	166	2020	8	28	2020	9	4	162
23	24	9	2020	8	28	2020	9	4	163
23	317	139	2020	8	28	2020	9	4	164
23	103	68	2020	8	28	2020	9	4	165
23	688	110	2020	8	28	2020	9	4	166
23	369	193	2020	8	28	2020	9	4	167
23	693	58	2020	8	28	2020	9	4	168
23	157	93	2020	8	28	2020	9	4	169
23	118	38	2020	8	28	2020	9	4	170
23	865	356	2020	8	28	2020	9	4	171
23	699	33	2020	8	28	2020	9	4	172
23	56	39	2020	8	28	2020	9	4	173
23	173	101	2020	8	28	2020	9	4	174
23	182	104	2020	8	28	2020	9	4	175
23	866	316	2020	8	28	2020	9	4	176
23	712	322	2020	8	28	2020	9	4	177
23	166	97	2020	8	28	2020	9	4	178
23	690	317	2020	8	28	2020	9	4	179
23	705	354	2020	8	28	2020	9	4	180
23	101	67	2020	8	28	2020	9	4	181
23	70	49	2020	8	28	2020	9	4	182
23	162	70	2020	8	28	2020	9	4	183
23	252	143	2020	8	28	2020	9	4	184
23	867	357	2020	8	28	2020	9	4	185
23	111	71	2020	8	28	2020	9	4	186
23	117	17	2020	8	28	2020	9	4	187
23	868	55	2020	8	28	2020	9	4	188
23	795	345	2020	8	28	2020	9	4	189
23	706	66	2020	8	28	2020	9	4	190
23	212	52	2020	8	28	2020	9	4	191
23	796	108	2020	8	28	2020	9	4	192
23	401	211	2020	8	28	2020	9	4	193
23	108	48	2020	8	28	2020	9	4	194
23	372	85	2020	8	28	2020	9	4	195
23	243	139	2020	8	28	2020	9	4	196
23	146	87	2020	8	28	2020	9	4	197
23	359	185	2020	8	28	2020	9	4	198
23	702	319	2020	8	28	2020	9	4	199
23	262	148	2020	8	28	2020	9	4	200
24	284	13	2020	11	20	2020	11	27	1
24	289	158	2020	11	20	2020	11	27	2
24	283	63	2020	11	20	2020	11	27	3
24	459	158	2020	11	20	2020	11	27	4
24	435	28	2020	11	20	2020	11	27	5
24	285	42	2020	11	20	2020	11	27	6
24	439	29	2020	11	20	2020	11	27	7
24	286	157	2020	11	20	2020	11	27	8
24	350	16	2020	11	20	2020	11	27	9
24	290	10	2020	11	20	2020	11	27	10
24	444	169	2020	11	20	2020	11	27	11
24	288	92	2020	11	20	2020	11	27	12
24	1	1	2020	11	20	2020	11	27	13
24	292	160	2020	11	20	2020	11	27	14
24	287	63	2020	11	20	2020	11	27	15
24	656	158	2020	11	20	2020	11	27	16
24	291	159	2020	11	20	2020	11	27	17
24	644	158	2020	11	20	2020	11	27	18
24	400	210	2020	11	20	2020	11	27	19
24	99	21	2020	11	20	2020	11	27	20
24	293	10	2020	11	20	2020	11	27	21
24	296	161	2020	11	20	2020	11	27	22
24	294	92	2020	11	20	2020	11	27	23
24	657	158	2020	11	20	2020	11	27	24
24	297	162	2020	11	20	2020	11	27	25
24	658	158	2020	11	20	2020	11	27	26
24	659	158	2020	11	20	2020	11	27	27
24	315	4	2020	11	20	2020	11	27	28
24	298	123	2020	11	20	2020	11	27	29
24	302	63	2020	11	20	2020	11	27	30
24	311	166	2020	11	20	2020	11	27	31
24	415	219	2020	11	20	2020	11	27	32
24	200	27	2020	11	20	2020	11	27	33
24	484	159	2020	11	20	2020	11	27	34
24	303	77	2020	11	20	2020	11	27	35
24	21	17	2020	11	20	2020	11	27	36
24	299	163	2020	11	20	2020	11	27	37
24	307	165	2020	11	20	2020	11	27	38
24	306	164	2020	11	20	2020	11	27	39
24	305	29	2020	11	20	2020	11	27	40
24	349	180	2020	11	20	2020	11	27	41
24	308	74	2020	11	20	2020	11	27	42
24	367	191	2020	11	20	2020	11	27	43
24	301	2	2020	11	20	2020	11	27	44
24	438	75	2020	11	20	2020	11	27	45
24	317	139	2020	11	20	2020	11	27	46
24	312	167	2020	11	20	2020	11	27	47
24	329	173	2020	11	20	2020	11	27	48
24	416	63	2020	11	20	2020	11	27	49
24	326	159	2020	11	20	2020	11	27	50
24	310	20	2020	11	20	2020	11	27	51
24	313	168	2020	11	20	2020	11	27	52
24	316	130	2020	11	20	2020	11	27	53
24	7	7	2020	11	20	2020	11	27	54
24	36	17	2020	11	20	2020	11	27	55
24	418	221	2020	11	20	2020	11	27	56
24	3	3	2020	11	20	2020	11	27	57
24	319	169	2020	11	20	2020	11	27	58
24	417	220	2020	11	20	2020	11	27	59
24	321	16	2020	11	20	2020	11	27	60
24	357	32	2020	11	20	2020	11	27	61
24	328	21	2020	11	20	2020	11	27	62
24	419	222	2020	11	20	2020	11	27	63
24	62	43	2020	11	20	2020	11	27	64
24	216	122	2020	11	20	2020	11	27	65
24	337	175	2020	11	20	2020	11	27	66
24	352	126	2020	11	20	2020	11	27	67
24	330	48	2020	11	20	2020	11	27	68
24	54	19	2020	11	20	2020	11	27	69
24	4	4	2020	11	20	2020	11	27	70
24	325	130	2020	11	20	2020	11	27	71
24	51	28	2020	11	20	2020	11	27	72
24	420	223	2020	11	20	2020	11	27	73
24	388	37	2020	11	20	2020	11	27	74
24	320	170	2020	11	20	2020	11	27	75
24	351	80	2020	11	20	2020	11	27	76
24	333	174	2020	11	20	2020	11	27	77
24	869	158	2020	11	20	2020	11	27	78
24	359	185	2020	11	20	2020	11	27	79
24	6	6	2020	11	20	2020	11	27	80
24	334	32	2020	11	20	2020	11	27	81
24	390	206	2020	11	20	2020	11	27	82
24	23	19	2020	11	20	2020	11	27	83
24	341	25	2020	11	20	2020	11	27	84
24	502	266	2020	11	20	2020	11	27	85
24	345	178	2020	11	20	2020	11	27	86
24	327	172	2020	11	20	2020	11	27	87
24	421	224	2020	11	20	2020	11	27	88
24	346	48	2020	11	20	2020	11	27	89
24	336	92	2020	11	20	2020	11	27	90
24	204	63	2020	11	20	2020	11	27	91
24	69	48	2020	11	20	2020	11	27	92
24	158	56	2020	11	20	2020	11	27	93
24	27	22	2020	11	20	2020	11	27	94
24	37	29	2020	11	20	2020	11	27	95
24	26	21	2020	11	20	2020	11	27	96
24	8	8	2020	11	20	2020	11	27	97
24	343	176	2020	11	20	2020	11	27	98
24	511	123	2020	11	20	2020	11	27	99
24	219	124	2020	11	20	2020	11	27	100
24	5	5	2020	11	20	2020	11	27	101
24	335	89	2020	11	20	2020	11	27	102
24	33	28	2020	11	20	2020	11	27	103
24	323	171	2020	11	20	2020	11	27	104
24	870	358	2020	11	20	2020	11	27	105
24	331	171	2020	11	20	2020	11	27	106
24	82	56	2020	11	20	2020	11	27	107
24	342	171	2020	11	20	2020	11	27	108
24	424	10	2020	11	20	2020	11	27	109
24	81	52	2020	11	20	2020	11	27	110
24	647	42	2020	11	20	2020	11	27	111
24	150	48	2020	11	20	2020	11	27	112
24	201	52	2020	11	20	2020	11	27	113
24	348	179	2020	11	20	2020	11	27	114
24	381	201	2020	11	20	2020	11	27	115
24	20	16	2020	11	20	2020	11	27	116
24	11	4	2020	11	20	2020	11	27	117
24	466	18	2020	11	20	2020	11	27	118
24	12	11	2020	11	20	2020	11	27	119
24	47	34	2020	11	20	2020	11	27	120
24	128	80	2020	11	20	2020	11	27	121
24	347	4	2020	11	20	2020	11	27	122
24	231	130	2020	11	20	2020	11	27	123
24	871	352	2020	11	20	2020	11	27	124
24	12	21	2020	11	20	2020	11	27	125
24	93	62	2020	11	20	2020	11	27	126
24	340	132	2020	11	20	2020	11	27	127
24	422	225	2020	11	20	2020	11	27	128
24	107	70	2020	11	20	2020	11	27	129
24	355	96	2020	11	20	2020	11	27	130
24	354	182	2020	11	20	2020	11	27	131
24	34	28	2020	11	20	2020	11	27	132
24	356	183	2020	11	20	2020	11	27	133
24	155	92	2020	11	20	2020	11	27	134
24	260	48	2020	11	20	2020	11	27	135
24	29	24	2020	11	20	2020	11	27	136
24	122	20	2020	11	20	2020	11	27	137
24	663	32	2020	11	20	2020	11	27	138
24	872	359	2020	11	20	2020	11	27	139
24	165	56	2020	11	20	2020	11	27	140
24	68	47	2020	11	20	2020	11	27	141
24	399	92	2020	11	20	2020	11	27	142
24	425	227	2020	11	20	2020	11	27	143
24	236	134	2020	11	20	2020	11	27	144
24	372	85	2020	11	20	2020	11	27	145
24	138	45	2020	11	20	2020	11	27	146
24	19	15	2020	11	20	2020	11	27	147
24	423	226	2020	11	20	2020	11	27	148
24	295	63	2020	11	20	2020	11	27	149
24	363	187	2020	11	20	2020	11	27	150
24	10	10	2020	11	20	2020	11	27	151
24	48	35	2020	11	20	2020	11	27	152
24	493	78	2020	11	20	2020	11	27	153
24	2	2	2020	11	20	2020	11	27	154
24	429	221	2020	11	20	2020	11	27	155
24	95	63	2020	11	20	2020	11	27	156
24	406	216	2020	11	20	2020	11	27	157
24	428	230	2020	11	20	2020	11	27	158
24	385	185	2020	11	20	2020	11	27	159
24	362	92	2020	11	20	2020	11	27	160
24	109	70	2020	11	20	2020	11	27	161
24	873	358	2020	11	20	2020	11	27	162
24	174	102	2020	11	20	2020	11	27	163
24	115	73	2020	11	20	2020	11	27	164
24	74	28	2020	11	20	2020	11	27	165
24	123	45	2020	11	20	2020	11	27	166
24	137	51	2020	11	20	2020	11	27	167
24	729	158	2020	11	20	2020	11	27	168
24	426	228	2020	11	20	2020	11	27	169
24	368	192	2020	11	20	2020	11	27	170
24	361	186	2020	11	20	2020	11	27	171
24	369	193	2020	11	20	2020	11	27	172
24	173	101	2020	11	20	2020	11	27	173
24	874	358	2020	11	20	2020	11	27	174
24	64	45	2020	11	20	2020	11	27	175
24	58	40	2020	11	20	2020	11	27	176
24	366	190	2020	11	20	2020	11	27	177
24	733	126	2020	11	20	2020	11	27	178
24	470	253	2020	11	20	2020	11	27	179
24	31	26	2020	11	20	2020	11	27	180
24	370	48	2020	11	20	2020	11	27	181
24	408	217	2020	11	20	2020	11	27	182
24	214	68	2020	11	20	2020	11	27	183
24	94	19	2020	11	20	2020	11	27	184
24	360	171	2020	11	20	2020	11	27	185
24	17	1	2020	11	20	2020	11	27	186
24	389	122	2020	11	20	2020	11	27	187
24	875	360	2020	11	20	2020	11	27	188
24	118	38	2020	11	20	2020	11	27	189
24	655	232	2020	11	20	2020	11	27	190
24	737	249	2020	11	20	2020	11	27	191
24	876	358	2020	11	20	2020	11	27	192
24	394	194	2020	11	20	2020	11	27	193
24	404	214	2020	11	20	2020	11	27	194
24	70	49	2020	11	20	2020	11	27	195
24	374	195	2020	11	20	2020	11	27	196
24	382	166	2020	11	20	2020	11	27	197
24	430	231	2020	11	20	2020	11	27	198
24	9	9	2020	11	20	2020	11	27	199
24	202	116	2020	11	20	2020	11	27	200
25	285	42	2020	10	2	2020	10	9	1
25	292	160	2020	10	2	2020	10	9	2
25	289	158	2020	10	2	2020	10	9	3
25	286	157	2020	10	2	2020	10	9	4
25	291	159	2020	10	2	2020	10	9	5
25	331	171	2020	10	2	2020	10	9	6
25	294	92	2020	10	2	2020	10	9	7
25	1	1	2020	10	2	2020	10	9	8
25	293	10	2020	10	2	2020	10	9	9
25	99	21	2020	10	2	2020	10	9	10
25	715	171	2020	10	2	2020	10	9	11
25	305	29	2020	10	2	2020	10	9	12
25	288	92	2020	10	2	2020	10	9	13
25	297	162	2020	10	2	2020	10	9	14
25	323	171	2020	10	2	2020	10	9	15
25	200	27	2020	10	2	2020	10	9	16
25	301	2	2020	10	2	2020	10	9	17
25	296	161	2020	10	2	2020	10	9	18
25	216	122	2020	10	2	2020	10	9	19
25	298	123	2020	10	2	2020	10	9	20
25	303	77	2020	10	2	2020	10	9	21
25	360	171	2020	10	2	2020	10	9	22
25	342	171	2020	10	2	2020	10	9	23
25	394	194	2020	10	2	2020	10	9	24
25	373	194	2020	10	2	2020	10	9	25
25	3	3	2020	10	2	2020	10	9	26
25	327	172	2020	10	2	2020	10	9	27
25	310	20	2020	10	2	2020	10	9	28
25	62	43	2020	10	2	2020	10	9	29
25	312	167	2020	10	2	2020	10	9	30
25	321	16	2020	10	2	2020	10	9	31
25	718	171	2020	10	2	2020	10	9	32
25	21	17	2020	10	2	2020	10	9	33
25	299	163	2020	10	2	2020	10	9	34
25	717	171	2020	10	2	2020	10	9	35
25	313	168	2020	10	2	2020	10	9	36
25	336	92	2020	10	2	2020	10	9	37
25	7	7	2020	10	2	2020	10	9	38
25	308	74	2020	10	2	2020	10	9	39
25	36	17	2020	10	2	2020	10	9	40
25	389	122	2020	10	2	2020	10	9	41
25	334	32	2020	10	2	2020	10	9	42
25	306	164	2020	10	2	2020	10	9	43
25	330	48	2020	10	2	2020	10	9	44
25	219	124	2020	10	2	2020	10	9	45
25	721	171	2020	10	2	2020	10	9	46
25	319	169	2020	10	2	2020	10	9	47
25	325	130	2020	10	2	2020	10	9	48
25	320	170	2020	10	2	2020	10	9	49
25	6	6	2020	10	2	2020	10	9	50
25	407	56	2020	10	2	2020	10	9	51
25	231	130	2020	10	2	2020	10	9	52
25	723	194	2020	10	2	2020	10	9	53
25	307	165	2020	10	2	2020	10	9	54
25	346	48	2020	10	2	2020	10	9	55
25	348	179	2020	10	2	2020	10	9	56
25	316	130	2020	10	2	2020	10	9	57
25	4	4	2020	10	2	2020	10	9	58
25	343	176	2020	10	2	2020	10	9	59
25	355	96	2020	10	2	2020	10	9	60
25	201	52	2020	10	2	2020	10	9	61
25	236	134	2020	10	2	2020	10	9	62
25	354	182	2020	10	2	2020	10	9	63
25	8	8	2020	10	2	2020	10	9	64
25	877	194	2020	10	2	2020	10	9	65
25	204	63	2020	10	2	2020	10	9	66
25	23	19	2020	10	2	2020	10	9	67
25	878	194	2020	10	2	2020	10	9	68
25	158	56	2020	10	2	2020	10	9	69
25	361	186	2020	10	2	2020	10	9	70
25	137	51	2020	10	2	2020	10	9	71
25	37	29	2020	10	2	2020	10	9	72
25	11	4	2020	10	2	2020	10	9	73
25	26	21	2020	10	2	2020	10	9	74
25	68	47	2020	10	2	2020	10	9	75
25	402	212	2020	10	2	2020	10	9	76
25	879	194	2020	10	2	2020	10	9	77
25	317	139	2020	10	2	2020	10	9	78
25	27	22	2020	10	2	2020	10	9	79
25	5	5	2020	10	2	2020	10	9	80
25	379	172	2020	10	2	2020	10	9	81
25	362	92	2020	10	2	2020	10	9	82
25	69	48	2020	10	2	2020	10	9	83
25	880	361	2020	10	2	2020	10	9	84
25	333	174	2020	10	2	2020	10	9	85
25	150	48	2020	10	2	2020	10	9	86
25	82	56	2020	10	2	2020	10	9	87
25	370	48	2020	10	2	2020	10	9	88
25	10	10	2020	10	2	2020	10	9	89
25	366	190	2020	10	2	2020	10	9	90
25	2	2	2020	10	2	2020	10	9	91
25	335	89	2020	10	2	2020	10	9	92
25	12	11	2020	10	2	2020	10	9	93
25	54	19	2020	10	2	2020	10	9	94
25	81	52	2020	10	2	2020	10	9	95
25	51	28	2020	10	2	2020	10	9	96
25	33	28	2020	10	2	2020	10	9	97
25	374	195	2020	10	2	2020	10	9	98
25	398	209	2020	10	2	2020	10	9	99
25	380	200	2020	10	2	2020	10	9	100
25	165	56	2020	10	2	2020	10	9	101
25	20	16	2020	10	2	2020	10	9	102
25	363	187	2020	10	2	2020	10	9	103
25	391	207	2020	10	2	2020	10	9	104
25	368	192	2020	10	2	2020	10	9	105
25	326	159	2020	10	2	2020	10	9	106
25	202	116	2020	10	2	2020	10	9	107
25	668	314	2020	10	2	2020	10	9	108
25	155	92	2020	10	2	2020	10	9	109
25	47	34	2020	10	2	2020	10	9	110
25	356	183	2020	10	2	2020	10	9	111
25	116	74	2020	10	2	2020	10	9	112
25	29	24	2020	10	2	2020	10	9	113
25	719	325	2020	10	2	2020	10	9	114
25	93	62	2020	10	2	2020	10	9	115
25	724	327	2020	10	2	2020	10	9	116
25	48	35	2020	10	2	2020	10	9	117
25	12	21	2020	10	2	2020	10	9	118
25	19	15	2020	10	2	2020	10	9	119
25	375	196	2020	10	2	2020	10	9	120
25	217	123	2020	10	2	2020	10	9	121
25	208	39	2020	10	2	2020	10	9	122
25	730	179	2020	10	2	2020	10	9	123
25	128	80	2020	10	2	2020	10	9	124
25	17	1	2020	10	2	2020	10	9	125
25	214	68	2020	10	2	2020	10	9	126
25	364	188	2020	10	2	2020	10	9	127
25	393	130	2020	10	2	2020	10	9	128
25	122	20	2020	10	2	2020	10	9	129
25	372	85	2020	10	2	2020	10	9	130
25	881	194	2020	10	2	2020	10	9	131
25	210	66	2020	10	2	2020	10	9	132
25	337	175	2020	10	2	2020	10	9	133
25	359	185	2020	10	2	2020	10	9	134
25	107	70	2020	10	2	2020	10	9	135
25	34	28	2020	10	2	2020	10	9	136
25	399	92	2020	10	2	2020	10	9	137
25	882	194	2020	10	2	2020	10	9	138
25	883	194	2020	10	2	2020	10	9	139
25	678	315	2020	10	2	2020	10	9	140
25	315	4	2020	10	2	2020	10	9	141
25	397	92	2020	10	2	2020	10	9	142
25	203	117	2020	10	2	2020	10	9	143
25	9	9	2020	10	2	2020	10	9	144
25	64	45	2020	10	2	2020	10	9	145
25	396	159	2020	10	2	2020	10	9	146
25	138	45	2020	10	2	2020	10	9	147
25	369	193	2020	10	2	2020	10	9	148
25	722	68	2020	10	2	2020	10	9	149
25	720	355	2020	10	2	2020	10	9	150
25	660	169	2020	10	2	2020	10	9	151
25	260	48	2020	10	2	2020	10	9	152
25	884	157	2020	10	2	2020	10	9	153
25	25	20	2020	10	2	2020	10	9	154
25	123	45	2020	10	2	2020	10	9	155
25	13	12	2020	10	2	2020	10	9	156
25	174	102	2020	10	2	2020	10	9	157
25	95	63	2020	10	2	2020	10	9	158
25	382	166	2020	10	2	2020	10	9	159
25	209	120	2020	10	2	2020	10	9	160
25	403	213	2020	10	2	2020	10	9	161
25	115	73	2020	10	2	2020	10	9	162
25	211	121	2020	10	2	2020	10	9	163
25	109	70	2020	10	2	2020	10	9	164
25	218	86	2020	10	2	2020	10	9	165
25	15	14	2020	10	2	2020	10	9	166
25	31	26	2020	10	2	2020	10	9	167
25	665	234	2020	10	2	2020	10	9	168
25	173	101	2020	10	2	2020	10	9	169
25	94	19	2020	10	2	2020	10	9	170
25	404	214	2020	10	2	2020	10	9	171
25	885	153	2020	10	2	2020	10	9	172
25	18	13	2020	10	2	2020	10	9	173
25	58	40	2020	10	2	2020	10	9	174
25	14	13	2020	10	2	2020	10	9	175
25	700	74	2020	10	2	2020	10	9	176
25	75	45	2020	10	2	2020	10	9	177
25	664	28	2020	10	2	2020	10	9	178
25	886	194	2020	10	2	2020	10	9	179
25	240	137	2020	10	2	2020	10	9	180
25	118	38	2020	10	2	2020	10	9	181
25	887	362	2020	10	2	2020	10	9	182
25	381	201	2020	10	2	2020	10	9	183
25	74	28	2020	10	2	2020	10	9	184
25	729	158	2020	10	2	2020	10	9	185
25	691	145	2020	10	2	2020	10	9	186
25	110	32	2020	10	2	2020	10	9	187
25	103	68	2020	10	2	2020	10	9	188
25	166	97	2020	10	2	2020	10	9	189
25	888	194	2020	10	2	2020	10	9	190
25	728	329	2020	10	2	2020	10	9	191
25	53	37	2020	10	2	2020	10	9	192
25	329	173	2020	10	2	2020	10	9	193
25	401	211	2020	10	2	2020	10	9	194
25	682	90	2020	10	2	2020	10	9	195
25	726	45	2020	10	2	2020	10	9	196
25	889	194	2020	10	2	2020	10	9	197
25	385	185	2020	10	2	2020	10	9	198
25	727	45	2020	10	2	2020	10	9	199
25	101	67	2020	10	2	2020	10	9	200
26	7	7	2020	1	10	2020	1	17	1
26	5	5	2020	1	10	2020	1	17	2
26	29	24	2020	1	10	2020	1	17	3
26	43	10	2020	1	10	2020	1	17	4
26	20	16	2020	1	10	2020	1	17	5
26	19	15	2020	1	10	2020	1	17	6
26	1	1	2020	1	10	2020	1	17	7
26	4	4	2020	1	10	2020	1	17	8
26	12	11	2020	1	10	2020	1	17	9
26	27	22	2020	1	10	2020	1	17	10
26	23	19	2020	1	10	2020	1	17	11
26	515	64	2020	1	10	2020	1	17	12
26	34	28	2020	1	10	2020	1	17	13
26	97	64	2020	1	10	2020	1	17	14
26	56	39	2020	1	10	2020	1	17	15
26	37	29	2020	1	10	2020	1	17	16
26	21	17	2020	1	10	2020	1	17	17
26	518	273	2020	1	10	2020	1	17	18
26	26	21	2020	1	10	2020	1	17	19
26	60	41	2020	1	10	2020	1	17	20
26	33	28	2020	1	10	2020	1	17	21
26	58	40	2020	1	10	2020	1	17	22
26	102	27	2020	1	10	2020	1	17	23
26	55	38	2020	1	10	2020	1	17	24
26	59	13	2020	1	10	2020	1	17	25
26	48	35	2020	1	10	2020	1	17	26
26	49	36	2020	1	10	2020	1	17	27
26	36	17	2020	1	10	2020	1	17	28
26	99	21	2020	1	10	2020	1	17	29
26	144	86	2020	1	10	2020	1	17	30
26	82	56	2020	1	10	2020	1	17	31
26	113	54	2020	1	10	2020	1	17	32
26	64	45	2020	1	10	2020	1	17	33
26	108	48	2020	1	10	2020	1	17	34
26	527	50	2020	1	10	2020	1	17	35
26	54	19	2020	1	10	2020	1	17	36
26	132	32	2020	1	10	2020	1	17	37
26	53	37	2020	1	10	2020	1	17	38
26	106	66	2020	1	10	2020	1	17	39
26	517	272	2020	1	10	2020	1	17	40
26	67	1	2020	1	10	2020	1	17	41
26	83	57	2020	1	10	2020	1	17	42
26	79	55	2020	1	10	2020	1	17	43
26	75	45	2020	1	10	2020	1	17	44
26	69	48	2020	1	10	2020	1	17	45
26	9	9	2020	1	10	2020	1	17	46
26	133	82	2020	1	10	2020	1	17	47
26	536	56	2020	1	10	2020	1	17	48
26	160	89	2020	1	10	2020	1	17	49
26	528	45	2020	1	10	2020	1	17	50
26	525	53	2020	1	10	2020	1	17	51
26	3	3	2020	1	10	2020	1	17	52
26	70	49	2020	1	10	2020	1	17	53
26	521	78	2020	1	10	2020	1	17	54
26	544	280	2020	1	10	2020	1	17	55
26	601	64	2020	1	10	2020	1	17	56
26	121	20	2020	1	10	2020	1	17	57
26	87	59	2020	1	10	2020	1	17	58
26	95	63	2020	1	10	2020	1	17	59
26	47	34	2020	1	10	2020	1	17	60
26	125	78	2020	1	10	2020	1	17	61
26	147	13	2020	1	10	2020	1	17	62
26	141	84	2020	1	10	2020	1	17	63
26	114	19	2020	1	10	2020	1	17	64
26	52	20	2020	1	10	2020	1	17	65
26	526	186	2020	1	10	2020	1	17	66
26	531	276	2020	1	10	2020	1	17	67
26	51	28	2020	1	10	2020	1	17	68
26	535	27	2020	1	10	2020	1	17	69
26	74	28	2020	1	10	2020	1	17	70
26	523	27	2020	1	10	2020	1	17	71
26	119	75	2020	1	10	2020	1	17	72
26	81	52	2020	1	10	2020	1	17	73
26	104	69	2020	1	10	2020	1	17	74
26	563	110	2020	1	10	2020	1	17	75
26	529	196	2020	1	10	2020	1	17	76
26	135	20	2020	1	10	2020	1	17	77
26	537	277	2020	1	10	2020	1	17	78
26	91	61	2020	1	10	2020	1	17	79
26	111	71	2020	1	10	2020	1	17	80
26	590	106	2020	1	10	2020	1	17	81
26	146	87	2020	1	10	2020	1	17	82
26	103	68	2020	1	10	2020	1	17	83
26	542	112	2020	1	10	2020	1	17	84
26	530	111	2020	1	10	2020	1	17	85
26	191	110	2020	1	10	2020	1	17	86
26	890	64	2020	1	10	2020	1	17	87
26	175	21	2020	1	10	2020	1	17	88
26	145	19	2020	1	10	2020	1	17	89
26	891	64	2020	1	10	2020	1	17	90
26	150	48	2020	1	10	2020	1	17	91
26	561	285	2020	1	10	2020	1	17	92
26	139	60	2020	1	10	2020	1	17	93
26	12	21	2020	1	10	2020	1	17	94
26	541	279	2020	1	10	2020	1	17	95
26	532	55	2020	1	10	2020	1	17	96
26	131	2	2020	1	10	2020	1	17	97
26	118	38	2020	1	10	2020	1	17	98
26	94	19	2020	1	10	2020	1	17	99
26	93	62	2020	1	10	2020	1	17	100
26	539	278	2020	1	10	2020	1	17	101
26	545	281	2020	1	10	2020	1	17	102
26	156	37	2020	1	10	2020	1	17	103
26	163	95	2020	1	10	2020	1	17	104
26	117	17	2020	1	10	2020	1	17	105
26	115	73	2020	1	10	2020	1	17	106
26	892	64	2020	1	10	2020	1	17	107
26	123	45	2020	1	10	2020	1	17	108
26	546	123	2020	1	10	2020	1	17	109
26	179	105	2020	1	10	2020	1	17	110
26	893	64	2020	1	10	2020	1	17	111
26	282	74	2020	1	10	2020	1	17	112
26	548	120	2020	1	10	2020	1	17	113
26	165	56	2020	1	10	2020	1	17	114
26	50	5	2020	1	10	2020	1	17	115
26	549	112	2020	1	10	2020	1	17	116
26	543	15	2020	1	10	2020	1	17	117
26	153	51	2020	1	10	2020	1	17	118
26	894	64	2020	1	10	2020	1	17	119
26	105	7	2020	1	10	2020	1	17	120
26	586	41	2020	1	10	2020	1	17	121
26	168	89	2020	1	10	2020	1	17	122
26	552	111	2020	1	10	2020	1	17	123
26	559	134	2020	1	10	2020	1	17	124
26	109	70	2020	1	10	2020	1	17	125
26	574	27	2020	1	10	2020	1	17	126
26	185	22	2020	1	10	2020	1	17	127
26	558	278	2020	1	10	2020	1	17	128
26	159	94	2020	1	10	2020	1	17	129
26	187	63	2020	1	10	2020	1	17	130
26	140	33	2020	1	10	2020	1	17	131
26	575	56	2020	1	10	2020	1	17	132
26	534	28	2020	1	10	2020	1	17	133
26	602	53	2020	1	10	2020	1	17	134
26	569	289	2020	1	10	2020	1	17	135
26	101	67	2020	1	10	2020	1	17	136
26	130	67	2020	1	10	2020	1	17	137
26	128	80	2020	1	10	2020	1	17	138
26	557	154	2020	1	10	2020	1	17	139
26	184	19	2020	1	10	2020	1	17	140
26	594	54	2020	1	10	2020	1	17	141
26	154	28	2020	1	10	2020	1	17	142
26	609	299	2020	1	10	2020	1	17	143
26	600	255	2020	1	10	2020	1	17	144
26	158	56	2020	1	10	2020	1	17	145
26	566	120	2020	1	10	2020	1	17	146
26	576	196	2020	1	10	2020	1	17	147
26	138	45	2020	1	10	2020	1	17	148
26	188	107	2020	1	10	2020	1	17	149
26	573	292	2020	1	10	2020	1	17	150
26	584	294	2020	1	10	2020	1	17	151
26	564	286	2020	1	10	2020	1	17	152
26	107	70	2020	1	10	2020	1	17	153
26	124	77	2020	1	10	2020	1	17	154
26	580	60	2020	1	10	2020	1	17	155
26	547	282	2020	1	10	2020	1	17	156
26	570	20	2020	1	10	2020	1	17	157
26	571	290	2020	1	10	2020	1	17	158
26	176	103	2020	1	10	2020	1	17	159
26	183	29	2020	1	10	2020	1	17	160
26	895	64	2020	1	10	2020	1	17	161
26	581	123	2020	1	10	2020	1	17	162
26	583	293	2020	1	10	2020	1	17	163
26	178	98	2020	1	10	2020	1	17	164
26	589	75	2020	1	10	2020	1	17	165
26	896	64	2020	1	10	2020	1	17	166
26	173	101	2020	1	10	2020	1	17	167
26	582	53	2020	1	10	2020	1	17	168
26	162	70	2020	1	10	2020	1	17	169
26	608	8	2020	1	10	2020	1	17	170
26	592	293	2020	1	10	2020	1	17	171
26	181	106	2020	1	10	2020	1	17	172
26	613	19	2020	1	10	2020	1	17	173
26	568	139	2020	1	10	2020	1	17	174
26	177	104	2020	1	10	2020	1	17	175
26	897	5	2020	1	10	2020	1	17	176
26	605	48	2020	1	10	2020	1	17	177
26	170	99	2020	1	10	2020	1	17	178
26	578	38	2020	1	10	2020	1	17	179
26	174	102	2020	1	10	2020	1	17	180
26	199	115	2020	1	10	2020	1	17	181
26	898	5	2020	1	10	2020	1	17	182
26	279	153	2020	1	10	2020	1	17	183
26	618	159	2020	1	10	2020	1	17	184
26	616	303	2020	1	10	2020	1	17	185
26	556	234	2020	1	10	2020	1	17	186
26	899	18	2020	1	10	2020	1	17	187
26	186	2	2020	1	10	2020	1	17	188
26	551	28	2020	1	10	2020	1	17	189
26	610	300	2020	1	10	2020	1	17	190
26	625	307	2020	1	10	2020	1	17	191
26	261	104	2020	1	10	2020	1	17	192
26	587	295	2020	1	10	2020	1	17	193
26	607	298	2020	1	10	2020	1	17	194
26	900	64	2020	1	10	2020	1	17	195
26	901	64	2020	1	10	2020	1	17	196
26	182	104	2020	1	10	2020	1	17	197
26	622	62	2020	1	10	2020	1	17	198
26	624	306	2020	1	10	2020	1	17	199
26	615	289	2020	1	10	2020	1	17	200
27	292	160	2020	8	21	2020	8	28	1
27	289	158	2020	8	21	2020	8	28	2
27	291	159	2020	8	21	2020	8	28	3
27	216	122	2020	8	21	2020	8	28	4
27	301	2	2020	8	21	2020	8	28	5
27	99	21	2020	8	21	2020	8	28	6
27	200	27	2020	8	21	2020	8	28	7
27	1	1	2020	8	21	2020	8	28	8
27	285	42	2020	8	21	2020	8	28	9
27	3	3	2020	8	21	2020	8	28	10
27	62	43	2020	8	21	2020	8	28	11
27	336	92	2020	8	21	2020	8	28	12
27	310	20	2020	8	21	2020	8	28	13
27	297	162	2020	8	21	2020	8	28	14
27	294	92	2020	8	21	2020	8	28	15
27	330	48	2020	8	21	2020	8	28	16
27	321	16	2020	8	21	2020	8	28	17
27	219	124	2020	8	21	2020	8	28	18
27	231	130	2020	8	21	2020	8	28	19
27	370	48	2020	8	21	2020	8	28	20
27	303	77	2020	8	21	2020	8	28	21
27	7	7	2020	8	21	2020	8	28	22
27	312	167	2020	8	21	2020	8	28	23
27	346	48	2020	8	21	2020	8	28	24
27	6	6	2020	8	21	2020	8	28	25
27	334	32	2020	8	21	2020	8	28	26
27	361	186	2020	8	21	2020	8	28	27
27	319	169	2020	8	21	2020	8	28	28
27	217	123	2020	8	21	2020	8	28	29
27	21	17	2020	8	21	2020	8	28	30
27	355	96	2020	8	21	2020	8	28	31
27	201	52	2020	8	21	2020	8	28	32
27	68	47	2020	8	21	2020	8	28	33
27	208	39	2020	8	21	2020	8	28	34
27	36	17	2020	8	21	2020	8	28	35
27	11	4	2020	8	21	2020	8	28	36
27	362	92	2020	8	21	2020	8	28	37
27	366	190	2020	8	21	2020	8	28	38
27	379	172	2020	8	21	2020	8	28	39
27	4	4	2020	8	21	2020	8	28	40
27	236	134	2020	8	21	2020	8	28	41
27	8	8	2020	8	21	2020	8	28	42
27	854	157	2020	8	21	2020	8	28	43
27	342	171	2020	8	21	2020	8	28	44
27	296	161	2020	8	21	2020	8	28	45
27	137	51	2020	8	21	2020	8	28	46
27	204	63	2020	8	21	2020	8	28	47
27	2	2	2020	8	21	2020	8	28	48
27	202	116	2020	8	21	2020	8	28	49
27	668	314	2020	8	21	2020	8	28	50
27	664	28	2020	8	21	2020	8	28	51
27	665	234	2020	8	21	2020	8	28	52
27	5	5	2020	8	21	2020	8	28	53
27	23	19	2020	8	21	2020	8	28	54
27	26	21	2020	8	21	2020	8	28	55
27	158	56	2020	8	21	2020	8	28	56
27	209	120	2020	8	21	2020	8	28	57
27	20	16	2020	8	21	2020	8	28	58
27	327	172	2020	8	21	2020	8	28	59
27	10	10	2020	8	21	2020	8	28	60
27	363	187	2020	8	21	2020	8	28	61
27	37	29	2020	8	21	2020	8	28	62
27	313	168	2020	8	21	2020	8	28	63
27	27	22	2020	8	21	2020	8	28	64
27	12	11	2020	8	21	2020	8	28	65
27	54	19	2020	8	21	2020	8	28	66
27	69	48	2020	8	21	2020	8	28	67
27	82	56	2020	8	21	2020	8	28	68
27	33	28	2020	8	21	2020	8	28	69
27	214	68	2020	8	21	2020	8	28	70
27	861	56	2020	8	21	2020	8	28	71
27	666	234	2020	8	21	2020	8	28	72
27	391	207	2020	8	21	2020	8	28	73
27	210	66	2020	8	21	2020	8	28	74
27	17	1	2020	8	21	2020	8	28	75
27	398	209	2020	8	21	2020	8	28	76
27	678	315	2020	8	21	2020	8	28	77
27	165	56	2020	8	21	2020	8	28	78
27	150	48	2020	8	21	2020	8	28	79
27	48	35	2020	8	21	2020	8	28	80
27	203	117	2020	8	21	2020	8	28	81
27	223	35	2020	8	21	2020	8	28	82
27	155	92	2020	8	21	2020	8	28	83
27	682	90	2020	8	21	2020	8	28	84
27	9	9	2020	8	21	2020	8	28	85
27	791	344	2020	8	21	2020	8	28	86
27	51	28	2020	8	21	2020	8	28	87
27	15	14	2020	8	21	2020	8	28	88
27	19	15	2020	8	21	2020	8	28	89
27	29	24	2020	8	21	2020	8	28	90
27	862	88	2020	8	21	2020	8	28	91
27	13	12	2020	8	21	2020	8	28	92
27	116	74	2020	8	21	2020	8	28	93
27	81	52	2020	8	21	2020	8	28	94
27	122	20	2020	8	21	2020	8	28	95
27	380	200	2020	8	21	2020	8	28	96
27	110	32	2020	8	21	2020	8	28	97
27	397	92	2020	8	21	2020	8	28	98
27	364	188	2020	8	21	2020	8	28	99
27	237	135	2020	8	21	2020	8	28	100
27	343	176	2020	8	21	2020	8	28	101
27	348	179	2020	8	21	2020	8	28	102
27	34	28	2020	8	21	2020	8	28	103
27	93	62	2020	8	21	2020	8	28	104
27	25	20	2020	8	21	2020	8	28	105
27	47	34	2020	8	21	2020	8	28	106
27	720	355	2020	8	21	2020	8	28	107
27	18	13	2020	8	21	2020	8	28	108
27	12	21	2020	8	21	2020	8	28	109
27	213	33	2020	8	21	2020	8	28	110
27	672	22	2020	8	21	2020	8	28	111
27	205	118	2020	8	21	2020	8	28	112
27	14	13	2020	8	21	2020	8	28	113
27	211	121	2020	8	21	2020	8	28	114
27	667	234	2020	8	21	2020	8	28	115
27	227	128	2020	8	21	2020	8	28	116
27	680	48	2020	8	21	2020	8	28	117
27	64	45	2020	8	21	2020	8	28	118
27	326	159	2020	8	21	2020	8	28	119
27	393	130	2020	8	21	2020	8	28	120
27	676	48	2020	8	21	2020	8	28	121
27	31	26	2020	8	21	2020	8	28	122
27	260	48	2020	8	21	2020	8	28	123
27	691	145	2020	8	21	2020	8	28	124
27	853	352	2020	8	21	2020	8	28	125
27	229	84	2020	8	21	2020	8	28	126
27	218	86	2020	8	21	2020	8	28	127
27	729	158	2020	8	21	2020	8	28	128
27	107	70	2020	8	21	2020	8	28	129
27	58	40	2020	8	21	2020	8	28	130
27	30	25	2020	8	21	2020	8	28	131
27	230	48	2020	8	21	2020	8	28	132
27	222	2	2020	8	21	2020	8	28	133
27	207	119	2020	8	21	2020	8	28	134
27	95	63	2020	8	21	2020	8	28	135
27	123	45	2020	8	21	2020	8	28	136
27	690	317	2020	8	21	2020	8	28	137
27	404	214	2020	8	21	2020	8	28	138
27	128	80	2020	8	21	2020	8	28	139
27	109	70	2020	8	21	2020	8	28	140
27	94	19	2020	8	21	2020	8	28	141
27	866	316	2020	8	21	2020	8	28	142
27	700	74	2020	8	21	2020	8	28	143
27	240	137	2020	8	21	2020	8	28	144
27	902	347	2020	8	21	2020	8	28	145
27	138	45	2020	8	21	2020	8	28	146
27	115	73	2020	8	21	2020	8	28	147
27	763	158	2020	8	21	2020	8	28	148
27	53	37	2020	8	21	2020	8	28	149
27	16	4	2020	8	21	2020	8	28	150
27	693	58	2020	8	21	2020	8	28	151
27	74	28	2020	8	21	2020	8	28	152
27	221	126	2020	8	21	2020	8	28	153
27	75	45	2020	8	21	2020	8	28	154
27	856	353	2020	8	21	2020	8	28	155
27	252	143	2020	8	21	2020	8	28	156
27	708	85	2020	8	21	2020	8	28	157
27	688	110	2020	8	21	2020	8	28	158
27	864	159	2020	8	21	2020	8	28	159
27	24	9	2020	8	21	2020	8	28	160
27	699	33	2020	8	21	2020	8	28	161
27	103	68	2020	8	21	2020	8	28	162
27	857	169	2020	8	21	2020	8	28	163
27	174	102	2020	8	21	2020	8	28	164
27	685	89	2020	8	21	2020	8	28	165
27	684	48	2020	8	21	2020	8	28	166
27	118	38	2020	8	21	2020	8	28	167
27	56	39	2020	8	21	2020	8	28	168
27	182	104	2020	8	21	2020	8	28	169
27	111	71	2020	8	21	2020	8	28	170
27	243	139	2020	8	21	2020	8	28	171
27	705	354	2020	8	21	2020	8	28	172
27	166	97	2020	8	21	2020	8	28	173
27	151	90	2020	8	21	2020	8	28	174
27	796	108	2020	8	21	2020	8	28	175
27	162	70	2020	8	21	2020	8	28	176
27	903	363	2020	8	21	2020	8	28	177
27	706	66	2020	8	21	2020	8	28	178
27	173	101	2020	8	21	2020	8	28	179
27	712	322	2020	8	21	2020	8	28	180
27	157	93	2020	8	21	2020	8	28	181
27	559	134	2020	8	21	2020	8	28	182
27	382	166	2020	8	21	2020	8	28	183
27	369	193	2020	8	21	2020	8	28	184
27	671	234	2020	8	21	2020	8	28	185
27	70	49	2020	8	21	2020	8	28	186
27	101	67	2020	8	21	2020	8	28	187
27	904	40	2020	8	21	2020	8	28	188
27	262	148	2020	8	21	2020	8	28	189
27	372	85	2020	8	21	2020	8	28	190
27	108	48	2020	8	21	2020	8	28	191
27	795	345	2020	8	21	2020	8	28	192
27	117	17	2020	8	21	2020	8	28	193
27	146	87	2020	8	21	2020	8	28	194
27	83	57	2020	8	21	2020	8	28	195
27	739	158	2020	8	21	2020	8	28	196
27	264	73	2020	8	21	2020	8	28	197
27	259	147	2020	8	21	2020	8	28	198
27	178	98	2020	8	21	2020	8	28	199
27	669	234	2020	8	21	2020	8	28	200
28	200	27	2020	7	17	2020	7	24	1
28	216	122	2020	7	17	2020	7	24	2
28	1	1	2020	7	17	2020	7	24	3
28	99	21	2020	7	17	2020	7	24	4
28	3	3	2020	7	17	2020	7	24	5
28	330	48	2020	7	17	2020	7	24	6
28	327	172	2020	7	17	2020	7	24	7
28	346	48	2020	7	17	2020	7	24	8
28	62	43	2020	7	17	2020	7	24	9
28	6	6	2020	7	17	2020	7	24	10
28	201	52	2020	7	17	2020	7	24	11
28	7	7	2020	7	17	2020	7	24	12
28	68	47	2020	7	17	2020	7	24	13
28	219	124	2020	7	17	2020	7	24	14
28	355	96	2020	7	17	2020	7	24	15
28	342	171	2020	7	17	2020	7	24	16
28	2	2	2020	7	17	2020	7	24	17
28	11	4	2020	7	17	2020	7	24	18
28	208	39	2020	7	17	2020	7	24	19
28	4	4	2020	7	17	2020	7	24	20
28	8	8	2020	7	17	2020	7	24	21
28	379	172	2020	7	17	2020	7	24	22
28	831	116	2020	7	17	2020	7	24	23
28	217	123	2020	7	17	2020	7	24	24
28	362	92	2020	7	17	2020	7	24	25
28	204	63	2020	7	17	2020	7	24	26
28	231	130	2020	7	17	2020	7	24	27
28	209	120	2020	7	17	2020	7	24	28
28	21	17	2020	7	17	2020	7	24	29
28	334	32	2020	7	17	2020	7	24	30
28	361	186	2020	7	17	2020	7	24	31
28	15	14	2020	7	17	2020	7	24	32
28	684	48	2020	7	17	2020	7	24	33
28	36	17	2020	7	17	2020	7	24	34
28	676	48	2020	7	17	2020	7	24	35
28	294	92	2020	7	17	2020	7	24	36
28	312	167	2020	7	17	2020	7	24	37
28	680	48	2020	7	17	2020	7	24	38
28	10	10	2020	7	17	2020	7	24	39
28	5	5	2020	7	17	2020	7	24	40
28	230	48	2020	7	17	2020	7	24	41
28	13	12	2020	7	17	2020	7	24	42
28	236	134	2020	7	17	2020	7	24	43
28	203	117	2020	7	17	2020	7	24	44
28	366	190	2020	7	17	2020	7	24	45
28	23	19	2020	7	17	2020	7	24	46
28	137	51	2020	7	17	2020	7	24	47
28	20	16	2020	7	17	2020	7	24	48
28	9	9	2020	7	17	2020	7	24	49
28	17	1	2020	7	17	2020	7	24	50
28	214	68	2020	7	17	2020	7	24	51
28	37	29	2020	7	17	2020	7	24	52
28	158	56	2020	7	17	2020	7	24	53
28	12	11	2020	7	17	2020	7	24	54
28	26	21	2020	7	17	2020	7	24	55
28	207	119	2020	7	17	2020	7	24	56
28	27	22	2020	7	17	2020	7	24	57
28	211	121	2020	7	17	2020	7	24	58
28	681	108	2020	7	17	2020	7	24	59
28	210	66	2020	7	17	2020	7	24	60
28	69	48	2020	7	17	2020	7	24	61
28	82	56	2020	7	17	2020	7	24	62
28	54	19	2020	7	17	2020	7	24	63
28	297	162	2020	7	17	2020	7	24	64
28	33	28	2020	7	17	2020	7	24	65
28	205	118	2020	7	17	2020	7	24	66
28	223	35	2020	7	17	2020	7	24	67
28	678	315	2020	7	17	2020	7	24	68
28	155	92	2020	7	17	2020	7	24	69
28	110	32	2020	7	17	2020	7	24	70
28	29	24	2020	7	17	2020	7	24	71
28	213	33	2020	7	17	2020	7	24	72
28	252	143	2020	7	17	2020	7	24	73
28	19	15	2020	7	17	2020	7	24	74
28	14	13	2020	7	17	2020	7	24	75
28	48	35	2020	7	17	2020	7	24	76
28	165	56	2020	7	17	2020	7	24	77
28	18	13	2020	7	17	2020	7	24	78
28	116	74	2020	7	17	2020	7	24	79
28	30	25	2020	7	17	2020	7	24	80
28	682	90	2020	7	17	2020	7	24	81
28	222	2	2020	7	17	2020	7	24	82
28	704	48	2020	7	17	2020	7	24	83
28	122	20	2020	7	17	2020	7	24	84
28	688	110	2020	7	17	2020	7	24	85
28	699	33	2020	7	17	2020	7	24	86
28	227	128	2020	7	17	2020	7	24	87
28	397	92	2020	7	17	2020	7	24	88
28	25	20	2020	7	17	2020	7	24	89
28	237	135	2020	7	17	2020	7	24	90
28	221	126	2020	7	17	2020	7	24	91
28	51	28	2020	7	17	2020	7	24	92
28	47	34	2020	7	17	2020	7	24	93
28	34	28	2020	7	17	2020	7	24	94
28	228	129	2020	7	17	2020	7	24	95
28	218	86	2020	7	17	2020	7	24	96
28	150	48	2020	7	17	2020	7	24	97
28	31	26	2020	7	17	2020	7	24	98
28	835	48	2020	7	17	2020	7	24	99
28	81	52	2020	7	17	2020	7	24	100
28	64	45	2020	7	17	2020	7	24	101
28	832	48	2020	7	17	2020	7	24	102
28	690	317	2020	7	17	2020	7	24	103
28	58	40	2020	7	17	2020	7	24	104
28	833	48	2020	7	17	2020	7	24	105
28	229	84	2020	7	17	2020	7	24	106
28	93	62	2020	7	17	2020	7	24	107
28	244	48	2020	7	17	2020	7	24	108
28	24	9	2020	7	17	2020	7	24	109
28	404	214	2020	7	17	2020	7	24	110
28	16	4	2020	7	17	2020	7	24	111
28	53	37	2020	7	17	2020	7	24	112
28	836	48	2020	7	17	2020	7	24	113
28	839	48	2020	7	17	2020	7	24	114
28	107	70	2020	7	17	2020	7	24	115
28	94	19	2020	7	17	2020	7	24	116
28	834	48	2020	7	17	2020	7	24	117
28	151	90	2020	7	17	2020	7	24	118
28	95	63	2020	7	17	2020	7	24	119
28	75	45	2020	7	17	2020	7	24	120
28	56	39	2020	7	17	2020	7	24	121
28	710	184	2020	7	17	2020	7	24	122
28	109	70	2020	7	17	2020	7	24	123
28	296	161	2020	7	17	2020	7	24	124
28	694	302	2020	7	17	2020	7	24	125
28	703	190	2020	7	17	2020	7	24	126
28	840	48	2020	7	17	2020	7	24	127
28	12	21	2020	7	17	2020	7	24	128
28	123	45	2020	7	17	2020	7	24	129
28	115	73	2020	7	17	2020	7	24	130
28	240	137	2020	7	17	2020	7	24	131
28	57	5	2020	7	17	2020	7	24	132
28	45	32	2020	7	17	2020	7	24	133
28	706	66	2020	7	17	2020	7	24	134
28	103	68	2020	7	17	2020	7	24	135
28	245	85	2020	7	17	2020	7	24	136
28	702	319	2020	7	17	2020	7	24	137
28	128	80	2020	7	17	2020	7	24	138
28	215	110	2020	7	17	2020	7	24	139
28	693	58	2020	7	17	2020	7	24	140
28	238	32	2020	7	17	2020	7	24	141
28	364	188	2020	7	17	2020	7	24	142
28	837	48	2020	7	17	2020	7	24	143
28	44	20	2020	7	17	2020	7	24	144
28	74	28	2020	7	17	2020	7	24	145
28	321	16	2020	7	17	2020	7	24	146
28	138	45	2020	7	17	2020	7	24	147
28	700	74	2020	7	17	2020	7	24	148
28	212	52	2020	7	17	2020	7	24	149
28	243	139	2020	7	17	2020	7	24	150
28	687	316	2020	7	17	2020	7	24	151
28	741	11	2020	7	17	2020	7	24	152
28	157	93	2020	7	17	2020	7	24	153
28	118	38	2020	7	17	2020	7	24	154
28	838	48	2020	7	17	2020	7	24	155
28	104	69	2020	7	17	2020	7	24	156
28	111	71	2020	7	17	2020	7	24	157
28	83	57	2020	7	17	2020	7	24	158
28	22	18	2020	7	17	2020	7	24	159
28	40	30	2020	7	17	2020	7	24	160
28	905	364	2020	7	17	2020	7	24	161
28	108	48	2020	7	17	2020	7	24	162
28	260	48	2020	7	17	2020	7	24	163
28	52	20	2020	7	17	2020	7	24	164
28	63	44	2020	7	17	2020	7	24	165
28	174	102	2020	7	17	2020	7	24	166
28	162	70	2020	7	17	2020	7	24	167
28	70	49	2020	7	17	2020	7	24	168
28	906	365	2020	7	17	2020	7	24	169
28	713	323	2020	7	17	2020	7	24	170
28	140	33	2020	7	17	2020	7	24	171
28	708	85	2020	7	17	2020	7	24	172
28	35	13	2020	7	17	2020	7	24	173
28	91	61	2020	7	17	2020	7	24	174
28	262	148	2020	7	17	2020	7	24	175
28	178	98	2020	7	17	2020	7	24	176
28	206	118	2020	7	17	2020	7	24	177
28	182	104	2020	7	17	2020	7	24	178
28	709	320	2020	7	17	2020	7	24	179
28	336	92	2020	7	17	2020	7	24	180
28	166	97	2020	7	17	2020	7	24	181
28	101	67	2020	7	17	2020	7	24	182
28	153	51	2020	7	17	2020	7	24	183
28	119	75	2020	7	17	2020	7	24	184
28	841	264	2020	7	17	2020	7	24	185
28	711	321	2020	7	17	2020	7	24	186
28	106	66	2020	7	17	2020	7	24	187
28	79	55	2020	7	17	2020	7	24	188
28	39	13	2020	7	17	2020	7	24	189
28	117	17	2020	7	17	2020	7	24	190
28	43	10	2020	7	17	2020	7	24	191
28	50	5	2020	7	17	2020	7	24	192
28	71	9	2020	7	17	2020	7	24	193
28	247	19	2020	7	17	2020	7	24	194
28	173	101	2020	7	17	2020	7	24	195
28	259	147	2020	7	17	2020	7	24	196
28	261	104	2020	7	17	2020	7	24	197
28	102	27	2020	7	17	2020	7	24	198
28	145	19	2020	7	17	2020	7	24	199
28	49	36	2020	7	17	2020	7	24	200
29	5	5	2020	2	7	2020	2	14	1
29	7	7	2020	2	7	2020	2	14	2
29	1	1	2020	2	7	2020	2	14	3
29	4	4	2020	2	7	2020	2	14	4
29	20	16	2020	2	7	2020	2	14	5
29	12	11	2020	2	7	2020	2	14	6
29	907	10	2020	2	7	2020	2	14	7
29	19	15	2020	2	7	2020	2	14	8
29	29	24	2020	2	7	2020	2	14	9
29	43	10	2020	2	7	2020	2	14	10
29	34	28	2020	2	7	2020	2	14	11
29	31	26	2020	2	7	2020	2	14	12
29	23	19	2020	2	7	2020	2	14	13
29	27	22	2020	2	7	2020	2	14	14
29	21	17	2020	2	7	2020	2	14	15
29	56	39	2020	2	7	2020	2	14	16
29	33	28	2020	2	7	2020	2	14	17
29	37	29	2020	2	7	2020	2	14	18
29	55	38	2020	2	7	2020	2	14	19
29	26	21	2020	2	7	2020	2	14	20
29	16	4	2020	2	7	2020	2	14	21
29	36	17	2020	2	7	2020	2	14	22
29	60	41	2020	2	7	2020	2	14	23
29	9	9	2020	2	7	2020	2	14	24
29	49	36	2020	2	7	2020	2	14	25
29	97	64	2020	2	7	2020	2	14	26
29	53	37	2020	2	7	2020	2	14	27
29	113	54	2020	2	7	2020	2	14	28
29	50	5	2020	2	7	2020	2	14	29
29	59	13	2020	2	7	2020	2	14	30
29	908	153	2020	2	7	2020	2	14	31
29	48	35	2020	2	7	2020	2	14	32
29	3	3	2020	2	7	2020	2	14	33
29	89	60	2020	2	7	2020	2	14	34
29	79	55	2020	2	7	2020	2	14	35
29	77	53	2020	2	7	2020	2	14	36
29	100	66	2020	2	7	2020	2	14	37
29	52	20	2020	2	7	2020	2	14	38
29	515	64	2020	2	7	2020	2	14	39
29	90	61	2020	2	7	2020	2	14	40
29	133	82	2020	2	7	2020	2	14	41
29	132	32	2020	2	7	2020	2	14	42
29	54	19	2020	2	7	2020	2	14	43
29	102	27	2020	2	7	2020	2	14	44
29	64	45	2020	2	7	2020	2	14	45
29	58	40	2020	2	7	2020	2	14	46
29	125	78	2020	2	7	2020	2	14	47
29	120	76	2020	2	7	2020	2	14	48
29	83	57	2020	2	7	2020	2	14	49
29	74	28	2020	2	7	2020	2	14	50
29	82	56	2020	2	7	2020	2	14	51
29	106	66	2020	2	7	2020	2	14	52
29	8	8	2020	2	7	2020	2	14	53
29	70	49	2020	2	7	2020	2	14	54
29	13	12	2020	2	7	2020	2	14	55
29	51	28	2020	2	7	2020	2	14	56
29	517	272	2020	2	7	2020	2	14	57
29	75	45	2020	2	7	2020	2	14	58
29	69	48	2020	2	7	2020	2	14	59
29	144	86	2020	2	7	2020	2	14	60
29	47	34	2020	2	7	2020	2	14	61
29	108	48	2020	2	7	2020	2	14	62
29	99	21	2020	2	7	2020	2	14	63
29	121	20	2020	2	7	2020	2	14	64
29	95	63	2020	2	7	2020	2	14	65
29	147	13	2020	2	7	2020	2	14	66
29	909	98	2020	2	7	2020	2	14	67
29	141	84	2020	2	7	2020	2	14	68
29	518	273	2020	2	7	2020	2	14	69
29	87	59	2020	2	7	2020	2	14	70
29	521	78	2020	2	7	2020	2	14	71
29	523	27	2020	2	7	2020	2	14	72
29	81	52	2020	2	7	2020	2	14	73
29	105	7	2020	2	7	2020	2	14	74
29	526	186	2020	2	7	2020	2	14	75
29	91	61	2020	2	7	2020	2	14	76
29	119	75	2020	2	7	2020	2	14	77
29	520	234	2020	2	7	2020	2	14	78
29	191	110	2020	2	7	2020	2	14	79
29	163	95	2020	2	7	2020	2	14	80
29	114	19	2020	2	7	2020	2	14	81
29	111	71	2020	2	7	2020	2	14	82
29	160	89	2020	2	7	2020	2	14	83
29	531	276	2020	2	7	2020	2	14	84
29	776	84	2020	2	7	2020	2	14	85
29	519	158	2020	2	7	2020	2	14	86
29	528	45	2020	2	7	2020	2	14	87
29	103	68	2020	2	7	2020	2	14	88
29	67	1	2020	2	7	2020	2	14	89
29	104	69	2020	2	7	2020	2	14	90
29	135	20	2020	2	7	2020	2	14	91
29	146	87	2020	2	7	2020	2	14	92
29	117	17	2020	2	7	2020	2	14	93
29	530	111	2020	2	7	2020	2	14	94
29	532	55	2020	2	7	2020	2	14	95
29	118	38	2020	2	7	2020	2	14	96
29	93	62	2020	2	7	2020	2	14	97
29	529	196	2020	2	7	2020	2	14	98
29	522	274	2020	2	7	2020	2	14	99
29	139	60	2020	2	7	2020	2	14	100
29	30	25	2020	2	7	2020	2	14	101
29	94	19	2020	2	7	2020	2	14	102
29	527	50	2020	2	7	2020	2	14	103
29	540	40	2020	2	7	2020	2	14	104
29	910	366	2020	2	7	2020	2	14	105
29	537	277	2020	2	7	2020	2	14	106
29	535	27	2020	2	7	2020	2	14	107
29	554	44	2020	2	7	2020	2	14	108
29	154	28	2020	2	7	2020	2	14	109
29	145	19	2020	2	7	2020	2	14	110
29	150	48	2020	2	7	2020	2	14	111
29	115	73	2020	2	7	2020	2	14	112
29	533	33	2020	2	7	2020	2	14	113
29	101	67	2020	2	7	2020	2	14	114
29	534	28	2020	2	7	2020	2	14	115
29	123	45	2020	2	7	2020	2	14	116
29	131	2	2020	2	7	2020	2	14	117
29	782	196	2020	2	7	2020	2	14	118
29	541	279	2020	2	7	2020	2	14	119
29	911	306	2020	2	7	2020	2	14	120
29	536	56	2020	2	7	2020	2	14	121
29	128	80	2020	2	7	2020	2	14	122
29	156	37	2020	2	7	2020	2	14	123
29	542	112	2020	2	7	2020	2	14	124
29	539	278	2020	2	7	2020	2	14	125
29	544	280	2020	2	7	2020	2	14	126
29	175	21	2020	2	7	2020	2	14	127
29	109	70	2020	2	7	2020	2	14	128
29	785	26	2020	2	7	2020	2	14	129
29	165	56	2020	2	7	2020	2	14	130
29	168	89	2020	2	7	2020	2	14	131
29	546	123	2020	2	7	2020	2	14	132
29	107	70	2020	2	7	2020	2	14	133
29	152	91	2020	2	7	2020	2	14	134
29	138	45	2020	2	7	2020	2	14	135
29	187	63	2020	2	7	2020	2	14	136
29	545	281	2020	2	7	2020	2	14	137
29	159	94	2020	2	7	2020	2	14	138
29	124	77	2020	2	7	2020	2	14	139
29	153	51	2020	2	7	2020	2	14	140
29	556	234	2020	2	7	2020	2	14	141
29	130	67	2020	2	7	2020	2	14	142
29	547	282	2020	2	7	2020	2	14	143
29	564	286	2020	2	7	2020	2	14	144
29	524	275	2020	2	7	2020	2	14	145
29	179	105	2020	2	7	2020	2	14	146
29	549	112	2020	2	7	2020	2	14	147
29	558	278	2020	2	7	2020	2	14	148
29	783	299	2020	2	7	2020	2	14	149
29	185	22	2020	2	7	2020	2	14	150
29	140	33	2020	2	7	2020	2	14	151
29	557	154	2020	2	7	2020	2	14	152
29	552	111	2020	2	7	2020	2	14	153
29	158	56	2020	2	7	2020	2	14	154
29	281	96	2020	2	7	2020	2	14	155
29	279	153	2020	2	7	2020	2	14	156
29	573	292	2020	2	7	2020	2	14	157
29	551	28	2020	2	7	2020	2	14	158
29	174	102	2020	2	7	2020	2	14	159
29	181	106	2020	2	7	2020	2	14	160
29	184	19	2020	2	7	2020	2	14	161
29	282	74	2020	2	7	2020	2	14	162
29	559	134	2020	2	7	2020	2	14	163
29	516	10	2020	2	7	2020	2	14	164
29	177	104	2020	2	7	2020	2	14	165
29	176	103	2020	2	7	2020	2	14	166
29	162	70	2020	2	7	2020	2	14	167
29	548	120	2020	2	7	2020	2	14	168
29	562	28	2020	2	7	2020	2	14	169
29	199	115	2020	2	7	2020	2	14	170
29	568	139	2020	2	7	2020	2	14	171
29	183	29	2020	2	7	2020	2	14	172
29	188	107	2020	2	7	2020	2	14	173
29	567	288	2020	2	7	2020	2	14	174
29	178	98	2020	2	7	2020	2	14	175
29	571	290	2020	2	7	2020	2	14	176
29	560	28	2020	2	7	2020	2	14	177
29	570	20	2020	2	7	2020	2	14	178
29	173	101	2020	2	7	2020	2	14	179
29	569	289	2020	2	7	2020	2	14	180
29	561	285	2020	2	7	2020	2	14	181
29	574	27	2020	2	7	2020	2	14	182
29	170	99	2020	2	7	2020	2	14	183
29	566	120	2020	2	7	2020	2	14	184
29	580	60	2020	2	7	2020	2	14	185
29	912	89	2020	2	7	2020	2	14	186
29	12	21	2020	2	7	2020	2	14	187
29	525	53	2020	2	7	2020	2	14	188
29	582	53	2020	2	7	2020	2	14	189
29	563	110	2020	2	7	2020	2	14	190
29	575	56	2020	2	7	2020	2	14	191
29	913	284	2020	2	7	2020	2	14	192
29	576	196	2020	2	7	2020	2	14	193
29	583	293	2020	2	7	2020	2	14	194
29	186	2	2020	2	7	2020	2	14	195
29	581	123	2020	2	7	2020	2	14	196
29	622	62	2020	2	7	2020	2	14	197
29	577	28	2020	2	7	2020	2	14	198
29	726	45	2020	2	7	2020	2	14	199
29	171	100	2020	2	7	2020	2	14	200
30	1	1	2020	5	15	2020	5	22	1
30	200	27	2020	5	15	2020	5	22	2
30	3	3	2020	5	15	2020	5	22	3
30	2	2	2020	5	15	2020	5	22	4
30	6	6	2020	5	15	2020	5	22	5
30	205	118	2020	5	15	2020	5	22	6
30	203	117	2020	5	15	2020	5	22	7
30	204	63	2020	5	15	2020	5	22	8
30	4	4	2020	5	15	2020	5	22	9
30	7	7	2020	5	15	2020	5	22	10
30	8	8	2020	5	15	2020	5	22	11
30	5	5	2020	5	15	2020	5	22	12
30	11	4	2020	5	15	2020	5	22	13
30	15	14	2020	5	15	2020	5	22	14
30	68	47	2020	5	15	2020	5	22	15
30	10	10	2020	5	15	2020	5	22	16
30	13	12	2020	5	15	2020	5	22	17
30	12	11	2020	5	15	2020	5	22	18
30	9	9	2020	5	15	2020	5	22	19
30	21	17	2020	5	15	2020	5	22	20
30	207	119	2020	5	15	2020	5	22	21
30	24	9	2020	5	15	2020	5	22	22
30	23	19	2020	5	15	2020	5	22	23
30	18	13	2020	5	15	2020	5	22	24
30	225	9	2020	5	15	2020	5	22	25
30	211	121	2020	5	15	2020	5	22	26
30	29	24	2020	5	15	2020	5	22	27
30	214	68	2020	5	15	2020	5	22	28
30	158	56	2020	5	15	2020	5	22	29
30	19	15	2020	5	15	2020	5	22	30
30	30	25	2020	5	15	2020	5	22	31
30	26	21	2020	5	15	2020	5	22	32
30	202	116	2020	5	15	2020	5	22	33
30	165	56	2020	5	15	2020	5	22	34
30	20	16	2020	5	15	2020	5	22	35
30	17	1	2020	5	15	2020	5	22	36
30	82	56	2020	5	15	2020	5	22	37
30	14	13	2020	5	15	2020	5	22	38
30	62	43	2020	5	15	2020	5	22	39
30	36	17	2020	5	15	2020	5	22	40
30	16	4	2020	5	15	2020	5	22	41
30	230	48	2020	5	15	2020	5	22	42
30	218	86	2020	5	15	2020	5	22	43
30	213	33	2020	5	15	2020	5	22	44
30	27	22	2020	5	15	2020	5	22	45
30	33	28	2020	5	15	2020	5	22	46
30	25	20	2020	5	15	2020	5	22	47
30	47	34	2020	5	15	2020	5	22	48
30	116	74	2020	5	15	2020	5	22	49
30	37	29	2020	5	15	2020	5	22	50
30	914	24	2020	5	15	2020	5	22	51
30	242	138	2020	5	15	2020	5	22	52
30	22	18	2020	5	15	2020	5	22	53
30	250	13	2020	5	15	2020	5	22	54
30	258	13	2020	5	15	2020	5	22	55
30	54	19	2020	5	15	2020	5	22	56
30	31	26	2020	5	15	2020	5	22	57
30	48	35	2020	5	15	2020	5	22	58
30	40	30	2020	5	15	2020	5	22	59
30	34	28	2020	5	15	2020	5	22	60
30	151	90	2020	5	15	2020	5	22	61
30	57	5	2020	5	15	2020	5	22	62
30	222	2	2020	5	15	2020	5	22	63
30	99	21	2020	5	15	2020	5	22	64
30	51	28	2020	5	15	2020	5	22	65
30	44	20	2020	5	15	2020	5	22	66
30	208	39	2020	5	15	2020	5	22	67
30	35	13	2020	5	15	2020	5	22	68
30	45	32	2020	5	15	2020	5	22	69
30	110	32	2020	5	15	2020	5	22	70
30	69	48	2020	5	15	2020	5	22	71
30	73	51	2020	5	15	2020	5	22	72
30	58	40	2020	5	15	2020	5	22	73
30	53	37	2020	5	15	2020	5	22	74
30	39	13	2020	5	15	2020	5	22	75
30	64	45	2020	5	15	2020	5	22	76
30	229	84	2020	5	15	2020	5	22	77
30	915	13	2020	5	15	2020	5	22	78
30	52	20	2020	5	15	2020	5	22	79
30	56	39	2020	5	15	2020	5	22	80
30	38	13	2020	5	15	2020	5	22	81
30	916	367	2020	5	15	2020	5	22	82
30	81	52	2020	5	15	2020	5	22	83
30	917	302	2020	5	15	2020	5	22	84
30	918	13	2020	5	15	2020	5	22	85
30	63	44	2020	5	15	2020	5	22	86
30	43	10	2020	5	15	2020	5	22	87
30	70	49	2020	5	15	2020	5	22	88
30	245	85	2020	5	15	2020	5	22	89
30	83	57	2020	5	15	2020	5	22	90
30	84	58	2020	5	15	2020	5	22	91
30	919	60	2020	5	15	2020	5	22	92
30	75	45	2020	5	15	2020	5	22	93
30	28	23	2020	5	15	2020	5	22	94
30	265	89	2020	5	15	2020	5	22	95
30	95	63	2020	5	15	2020	5	22	96
30	50	5	2020	5	15	2020	5	22	97
30	137	51	2020	5	15	2020	5	22	98
30	71	9	2020	5	15	2020	5	22	99
30	268	150	2020	5	15	2020	5	22	100
30	74	28	2020	5	15	2020	5	22	101
30	61	42	2020	5	15	2020	5	22	102
30	55	38	2020	5	15	2020	5	22	103
30	77	53	2020	5	15	2020	5	22	104
30	920	24	2020	5	15	2020	5	22	105
30	93	62	2020	5	15	2020	5	22	106
30	798	2	2020	5	15	2020	5	22	107
30	94	19	2020	5	15	2020	5	22	108
30	235	133	2020	5	15	2020	5	22	109
30	921	24	2020	5	15	2020	5	22	110
30	98	65	2020	5	15	2020	5	22	111
30	12	21	2020	5	15	2020	5	22	112
30	812	349	2020	5	15	2020	5	22	113
30	79	55	2020	5	15	2020	5	22	114
30	107	70	2020	5	15	2020	5	22	115
30	104	69	2020	5	15	2020	5	22	116
30	103	68	2020	5	15	2020	5	22	117
30	115	73	2020	5	15	2020	5	22	118
30	109	70	2020	5	15	2020	5	22	119
30	257	31	2020	5	15	2020	5	22	120
30	49	36	2020	5	15	2020	5	22	121
30	123	45	2020	5	15	2020	5	22	122
30	65	13	2020	5	15	2020	5	22	123
30	59	13	2020	5	15	2020	5	22	124
30	87	59	2020	5	15	2020	5	22	125
30	72	50	2020	5	15	2020	5	22	126
30	96	50	2020	5	15	2020	5	22	127
30	922	85	2020	5	15	2020	5	22	128
30	217	123	2020	5	15	2020	5	22	129
30	108	48	2020	5	15	2020	5	22	130
30	150	48	2020	5	15	2020	5	22	131
30	122	20	2020	5	15	2020	5	22	132
30	91	61	2020	5	15	2020	5	22	133
30	138	45	2020	5	15	2020	5	22	134
30	128	80	2020	5	15	2020	5	22	135
30	102	27	2020	5	15	2020	5	22	136
30	238	32	2020	5	15	2020	5	22	137
30	118	38	2020	5	15	2020	5	22	138
30	89	60	2020	5	15	2020	5	22	139
30	111	71	2020	5	15	2020	5	22	140
30	146	87	2020	5	15	2020	5	22	141
30	144	86	2020	5	15	2020	5	22	142
30	106	66	2020	5	15	2020	5	22	143
30	114	19	2020	5	15	2020	5	22	144
30	121	20	2020	5	15	2020	5	22	145
30	157	93	2020	5	15	2020	5	22	146
30	141	84	2020	5	15	2020	5	22	147
30	46	33	2020	5	15	2020	5	22	148
30	171	100	2020	5	15	2020	5	22	149
30	97	64	2020	5	15	2020	5	22	150
30	119	75	2020	5	15	2020	5	22	151
30	153	51	2020	5	15	2020	5	22	152
30	117	17	2020	5	15	2020	5	22	153
30	60	41	2020	5	15	2020	5	22	154
30	101	67	2020	5	15	2020	5	22	155
30	139	60	2020	5	15	2020	5	22	156
30	219	124	2020	5	15	2020	5	22	157
30	243	139	2020	5	15	2020	5	22	158
30	178	98	2020	5	15	2020	5	22	159
30	166	97	2020	5	15	2020	5	22	160
30	253	144	2020	5	15	2020	5	22	161
30	145	19	2020	5	15	2020	5	22	162
30	224	127	2020	5	15	2020	5	22	163
30	132	32	2020	5	15	2020	5	22	164
30	254	32	2020	5	15	2020	5	22	165
30	173	101	2020	5	15	2020	5	22	166
30	131	2	2020	5	15	2020	5	22	167
30	129	81	2020	5	15	2020	5	22	168
30	175	21	2020	5	15	2020	5	22	169
30	78	54	2020	5	15	2020	5	22	170
30	125	78	2020	5	15	2020	5	22	171
30	156	37	2020	5	15	2020	5	22	172
30	923	368	2020	5	15	2020	5	22	173
30	140	33	2020	5	15	2020	5	22	174
30	41	1	2020	5	15	2020	5	22	175
30	67	1	2020	5	15	2020	5	22	176
30	147	13	2020	5	15	2020	5	22	177
30	105	7	2020	5	15	2020	5	22	178
30	924	85	2020	5	15	2020	5	22	179
30	162	70	2020	5	15	2020	5	22	180
30	195	113	2020	5	15	2020	5	22	181
30	174	102	2020	5	15	2020	5	22	182
30	925	13	2020	5	15	2020	5	22	183
30	228	129	2020	5	15	2020	5	22	184
30	181	106	2020	5	15	2020	5	22	185
30	267	56	2020	5	15	2020	5	22	186
30	256	146	2020	5	15	2020	5	22	187
30	187	63	2020	5	15	2020	5	22	188
30	155	92	2020	5	15	2020	5	22	189
30	168	89	2020	5	15	2020	5	22	190
30	134	83	2020	5	15	2020	5	22	191
30	188	107	2020	5	15	2020	5	22	192
30	184	19	2020	5	15	2020	5	22	193
30	170	99	2020	5	15	2020	5	22	194
30	182	104	2020	5	15	2020	5	22	195
30	926	307	2020	5	15	2020	5	22	196
30	275	154	2020	5	15	2020	5	22	197
30	130	67	2020	5	15	2020	5	22	198
30	154	28	2020	5	15	2020	5	22	199
30	264	73	2020	5	15	2020	5	22	200
31	200	27	2020	7	3	2020	7	10	1
31	216	122	2020	7	3	2020	7	10	2
31	1	1	2020	7	3	2020	7	10	3
31	3	3	2020	7	3	2020	7	10	4
31	99	21	2020	7	3	2020	7	10	5
31	342	171	2020	7	3	2020	7	10	6
31	6	6	2020	7	3	2020	7	10	7
31	201	52	2020	7	3	2020	7	10	8
31	62	43	2020	7	3	2020	7	10	9
31	2	2	2020	7	3	2020	7	10	10
31	7	7	2020	7	3	2020	7	10	11
31	68	47	2020	7	3	2020	7	10	12
31	202	116	2020	7	3	2020	7	10	13
31	4	4	2020	7	3	2020	7	10	14
31	11	4	2020	7	3	2020	7	10	15
31	8	8	2020	7	3	2020	7	10	16
31	362	92	2020	7	3	2020	7	10	17
31	294	92	2020	7	3	2020	7	10	18
31	219	124	2020	7	3	2020	7	10	19
31	208	39	2020	7	3	2020	7	10	20
31	204	63	2020	7	3	2020	7	10	21
31	15	14	2020	7	3	2020	7	10	22
31	5	5	2020	7	3	2020	7	10	23
31	21	17	2020	7	3	2020	7	10	24
31	209	120	2020	7	3	2020	7	10	25
31	355	96	2020	7	3	2020	7	10	26
31	203	117	2020	7	3	2020	7	10	27
31	217	123	2020	7	3	2020	7	10	28
31	10	10	2020	7	3	2020	7	10	29
31	36	17	2020	7	3	2020	7	10	30
31	9	9	2020	7	3	2020	7	10	31
31	13	12	2020	7	3	2020	7	10	32
31	17	1	2020	7	3	2020	7	10	33
31	205	118	2020	7	3	2020	7	10	34
31	210	66	2020	7	3	2020	7	10	35
31	23	19	2020	7	3	2020	7	10	36
31	231	130	2020	7	3	2020	7	10	37
31	207	119	2020	7	3	2020	7	10	38
31	20	16	2020	7	3	2020	7	10	39
31	155	92	2020	7	3	2020	7	10	40
31	397	92	2020	7	3	2020	7	10	41
31	137	51	2020	7	3	2020	7	10	42
31	12	11	2020	7	3	2020	7	10	43
31	214	68	2020	7	3	2020	7	10	44
31	158	56	2020	7	3	2020	7	10	45
31	211	121	2020	7	3	2020	7	10	46
31	37	29	2020	7	3	2020	7	10	47
31	26	21	2020	7	3	2020	7	10	48
31	27	22	2020	7	3	2020	7	10	49
31	694	302	2020	7	3	2020	7	10	50
31	213	33	2020	7	3	2020	7	10	51
31	14	13	2020	7	3	2020	7	10	52
31	846	92	2020	7	3	2020	7	10	53
31	82	56	2020	7	3	2020	7	10	54
31	18	13	2020	7	3	2020	7	10	55
31	54	19	2020	7	3	2020	7	10	56
31	742	333	2020	7	3	2020	7	10	57
31	927	92	2020	7	3	2020	7	10	58
31	33	28	2020	7	3	2020	7	10	59
31	29	24	2020	7	3	2020	7	10	60
31	165	56	2020	7	3	2020	7	10	61
31	110	32	2020	7	3	2020	7	10	62
31	928	92	2020	7	3	2020	7	10	63
31	850	92	2020	7	3	2020	7	10	64
31	19	15	2020	7	3	2020	7	10	65
31	236	134	2020	7	3	2020	7	10	66
31	312	167	2020	7	3	2020	7	10	67
31	30	25	2020	7	3	2020	7	10	68
31	48	35	2020	7	3	2020	7	10	69
31	218	86	2020	7	3	2020	7	10	70
31	252	143	2020	7	3	2020	7	10	71
31	222	2	2020	7	3	2020	7	10	72
31	122	20	2020	7	3	2020	7	10	73
31	25	20	2020	7	3	2020	7	10	74
31	69	48	2020	7	3	2020	7	10	75
31	688	110	2020	7	3	2020	7	10	76
31	678	315	2020	7	3	2020	7	10	77
31	336	92	2020	7	3	2020	7	10	78
31	851	92	2020	7	3	2020	7	10	79
31	116	74	2020	7	3	2020	7	10	80
31	223	35	2020	7	3	2020	7	10	81
31	34	28	2020	7	3	2020	7	10	82
31	227	128	2020	7	3	2020	7	10	83
31	47	34	2020	7	3	2020	7	10	84
31	51	28	2020	7	3	2020	7	10	85
31	710	184	2020	7	3	2020	7	10	86
31	221	126	2020	7	3	2020	7	10	87
31	929	92	2020	7	3	2020	7	10	88
31	228	129	2020	7	3	2020	7	10	89
31	212	52	2020	7	3	2020	7	10	90
31	682	90	2020	7	3	2020	7	10	91
31	366	190	2020	7	3	2020	7	10	92
31	24	9	2020	7	3	2020	7	10	93
31	31	26	2020	7	3	2020	7	10	94
31	930	92	2020	7	3	2020	7	10	95
31	81	52	2020	7	3	2020	7	10	96
31	64	45	2020	7	3	2020	7	10	97
31	237	135	2020	7	3	2020	7	10	98
31	229	84	2020	7	3	2020	7	10	99
31	931	92	2020	7	3	2020	7	10	100
31	288	92	2020	7	3	2020	7	10	101
31	16	4	2020	7	3	2020	7	10	102
31	58	40	2020	7	3	2020	7	10	103
31	93	62	2020	7	3	2020	7	10	104
31	151	90	2020	7	3	2020	7	10	105
31	215	110	2020	7	3	2020	7	10	106
31	57	5	2020	7	3	2020	7	10	107
31	404	214	2020	7	3	2020	7	10	108
31	45	32	2020	7	3	2020	7	10	109
31	53	37	2020	7	3	2020	7	10	110
31	706	66	2020	7	3	2020	7	10	111
31	702	319	2020	7	3	2020	7	10	112
31	206	118	2020	7	3	2020	7	10	113
31	932	92	2020	7	3	2020	7	10	114
31	150	48	2020	7	3	2020	7	10	115
31	56	39	2020	7	3	2020	7	10	116
31	933	92	2020	7	3	2020	7	10	117
31	107	70	2020	7	3	2020	7	10	118
31	230	48	2020	7	3	2020	7	10	119
31	94	19	2020	7	3	2020	7	10	120
31	934	92	2020	7	3	2020	7	10	121
31	44	20	2020	7	3	2020	7	10	122
31	75	45	2020	7	3	2020	7	10	123
31	95	63	2020	7	3	2020	7	10	124
31	123	45	2020	7	3	2020	7	10	125
31	109	70	2020	7	3	2020	7	10	126
31	40	30	2020	7	3	2020	7	10	127
31	115	73	2020	7	3	2020	7	10	128
31	741	11	2020	7	3	2020	7	10	129
31	35	13	2020	7	3	2020	7	10	130
31	103	68	2020	7	3	2020	7	10	131
31	243	139	2020	7	3	2020	7	10	132
31	22	18	2020	7	3	2020	7	10	133
31	238	32	2020	7	3	2020	7	10	134
31	74	28	2020	7	3	2020	7	10	135
31	235	133	2020	7	3	2020	7	10	136
31	12	21	2020	7	3	2020	7	10	137
31	684	48	2020	7	3	2020	7	10	138
31	848	118	2020	7	3	2020	7	10	139
31	138	45	2020	7	3	2020	7	10	140
31	690	317	2020	7	3	2020	7	10	141
31	128	80	2020	7	3	2020	7	10	142
31	52	20	2020	7	3	2020	7	10	143
31	245	85	2020	7	3	2020	7	10	144
31	106	66	2020	7	3	2020	7	10	145
31	83	57	2020	7	3	2020	7	10	146
31	224	127	2020	7	3	2020	7	10	147
31	111	71	2020	7	3	2020	7	10	148
31	240	137	2020	7	3	2020	7	10	149
31	39	13	2020	7	3	2020	7	10	150
31	104	69	2020	7	3	2020	7	10	151
31	220	125	2020	7	3	2020	7	10	152
31	118	38	2020	7	3	2020	7	10	153
31	108	48	2020	7	3	2020	7	10	154
31	119	75	2020	7	3	2020	7	10	155
31	63	44	2020	7	3	2020	7	10	156
31	157	93	2020	7	3	2020	7	10	157
31	935	92	2020	7	3	2020	7	10	158
31	260	48	2020	7	3	2020	7	10	159
31	43	10	2020	7	3	2020	7	10	160
31	708	85	2020	7	3	2020	7	10	161
31	50	5	2020	7	3	2020	7	10	162
31	174	102	2020	7	3	2020	7	10	163
31	162	70	2020	7	3	2020	7	10	164
31	71	9	2020	7	3	2020	7	10	165
31	166	97	2020	7	3	2020	7	10	166
31	117	17	2020	7	3	2020	7	10	167
31	247	19	2020	7	3	2020	7	10	168
31	87	59	2020	7	3	2020	7	10	169
31	178	98	2020	7	3	2020	7	10	170
31	102	27	2020	7	3	2020	7	10	171
31	182	104	2020	7	3	2020	7	10	172
31	38	13	2020	7	3	2020	7	10	173
31	849	66	2020	7	3	2020	7	10	174
31	140	33	2020	7	3	2020	7	10	175
31	70	49	2020	7	3	2020	7	10	176
31	91	61	2020	7	3	2020	7	10	177
31	145	19	2020	7	3	2020	7	10	178
31	262	148	2020	7	3	2020	7	10	179
31	153	51	2020	7	3	2020	7	10	180
31	101	67	2020	7	3	2020	7	10	181
31	745	335	2020	7	3	2020	7	10	182
31	261	104	2020	7	3	2020	7	10	183
31	79	55	2020	7	3	2020	7	10	184
31	121	20	2020	7	3	2020	7	10	185
31	264	73	2020	7	3	2020	7	10	186
31	141	84	2020	7	3	2020	7	10	187
31	49	36	2020	7	3	2020	7	10	188
31	936	66	2020	7	3	2020	7	10	189
31	622	62	2020	7	3	2020	7	10	190
31	619	304	2020	7	3	2020	7	10	191
31	711	321	2020	7	3	2020	7	10	192
31	263	149	2020	7	3	2020	7	10	193
31	254	32	2020	7	3	2020	7	10	194
31	184	19	2020	7	3	2020	7	10	195
31	259	147	2020	7	3	2020	7	10	196
31	173	101	2020	7	3	2020	7	10	197
31	712	322	2020	7	3	2020	7	10	198
31	937	369	2020	7	3	2020	7	10	199
31	157	66	2020	7	3	2020	7	10	200
32	200	27	2020	6	19	2020	6	26	1
32	1	1	2020	6	19	2020	6	26	2
32	3	3	2020	6	19	2020	6	26	3
32	6	6	2020	6	19	2020	6	26	4
32	201	52	2020	6	19	2020	6	26	5
32	216	122	2020	6	19	2020	6	26	6
32	99	21	2020	6	19	2020	6	26	7
32	2	2	2020	6	19	2020	6	26	8
32	4	4	2020	6	19	2020	6	26	9
32	202	116	2020	6	19	2020	6	26	10
32	7	7	2020	6	19	2020	6	26	11
32	68	47	2020	6	19	2020	6	26	12
32	11	4	2020	6	19	2020	6	26	13
32	62	43	2020	6	19	2020	6	26	14
32	8	8	2020	6	19	2020	6	26	15
32	15	14	2020	6	19	2020	6	26	16
32	204	63	2020	6	19	2020	6	26	17
32	5	5	2020	6	19	2020	6	26	18
32	203	117	2020	6	19	2020	6	26	19
32	208	39	2020	6	19	2020	6	26	20
32	205	118	2020	6	19	2020	6	26	21
32	10	10	2020	6	19	2020	6	26	22
32	21	17	2020	6	19	2020	6	26	23
32	13	12	2020	6	19	2020	6	26	24
32	207	119	2020	6	19	2020	6	26	25
32	12	11	2020	6	19	2020	6	26	26
32	17	1	2020	6	19	2020	6	26	27
32	9	9	2020	6	19	2020	6	26	28
32	219	124	2020	6	19	2020	6	26	29
32	23	19	2020	6	19	2020	6	26	30
32	20	16	2020	6	19	2020	6	26	31
32	36	17	2020	6	19	2020	6	26	32
32	30	25	2020	6	19	2020	6	26	33
32	217	123	2020	6	19	2020	6	26	34
32	158	56	2020	6	19	2020	6	26	35
32	211	121	2020	6	19	2020	6	26	36
32	210	66	2020	6	19	2020	6	26	37
32	209	120	2020	6	19	2020	6	26	38
32	213	33	2020	6	19	2020	6	26	39
32	18	13	2020	6	19	2020	6	26	40
32	26	21	2020	6	19	2020	6	26	41
32	214	68	2020	6	19	2020	6	26	42
32	137	51	2020	6	19	2020	6	26	43
32	206	118	2020	6	19	2020	6	26	44
32	27	22	2020	6	19	2020	6	26	45
32	14	13	2020	6	19	2020	6	26	46
32	37	29	2020	6	19	2020	6	26	47
32	82	56	2020	6	19	2020	6	26	48
32	19	15	2020	6	19	2020	6	26	49
32	29	24	2020	6	19	2020	6	26	50
32	165	56	2020	6	19	2020	6	26	51
32	33	28	2020	6	19	2020	6	26	52
32	54	19	2020	6	19	2020	6	26	53
32	218	86	2020	6	19	2020	6	26	54
32	212	52	2020	6	19	2020	6	26	55
32	220	125	2020	6	19	2020	6	26	56
32	25	20	2020	6	19	2020	6	26	57
32	110	32	2020	6	19	2020	6	26	58
32	151	90	2020	6	19	2020	6	26	59
32	48	35	2020	6	19	2020	6	26	60
32	24	9	2020	6	19	2020	6	26	61
32	221	126	2020	6	19	2020	6	26	62
32	222	2	2020	6	19	2020	6	26	63
32	215	110	2020	6	19	2020	6	26	64
32	116	74	2020	6	19	2020	6	26	65
32	57	5	2020	6	19	2020	6	26	66
32	223	35	2020	6	19	2020	6	26	67
32	231	130	2020	6	19	2020	6	26	68
32	47	34	2020	6	19	2020	6	26	69
32	69	48	2020	6	19	2020	6	26	70
32	34	28	2020	6	19	2020	6	26	71
32	739	158	2020	6	19	2020	6	26	72
32	51	28	2020	6	19	2020	6	26	73
32	122	20	2020	6	19	2020	6	26	74
32	31	26	2020	6	19	2020	6	26	75
32	16	4	2020	6	19	2020	6	26	76
32	227	128	2020	6	19	2020	6	26	77
32	228	129	2020	6	19	2020	6	26	78
32	64	45	2020	6	19	2020	6	26	79
32	81	52	2020	6	19	2020	6	26	80
32	58	40	2020	6	19	2020	6	26	81
32	53	37	2020	6	19	2020	6	26	82
32	938	272	2020	6	19	2020	6	26	83
32	56	39	2020	6	19	2020	6	26	84
32	237	135	2020	6	19	2020	6	26	85
32	939	205	2020	6	19	2020	6	26	86
32	229	84	2020	6	19	2020	6	26	87
32	45	32	2020	6	19	2020	6	26	88
32	22	18	2020	6	19	2020	6	26	89
32	738	119	2020	6	19	2020	6	26	90
32	40	30	2020	6	19	2020	6	26	91
32	44	20	2020	6	19	2020	6	26	92
32	224	127	2020	6	19	2020	6	26	93
32	93	62	2020	6	19	2020	6	26	94
32	230	48	2020	6	19	2020	6	26	95
32	107	70	2020	6	19	2020	6	26	96
32	95	63	2020	6	19	2020	6	26	97
32	225	9	2020	6	19	2020	6	26	98
32	94	19	2020	6	19	2020	6	26	99
32	252	143	2020	6	19	2020	6	26	100
32	75	45	2020	6	19	2020	6	26	101
32	236	134	2020	6	19	2020	6	26	102
32	109	70	2020	6	19	2020	6	26	103
32	940	347	2020	6	19	2020	6	26	104
32	35	13	2020	6	19	2020	6	26	105
32	83	57	2020	6	19	2020	6	26	106
32	150	48	2020	6	19	2020	6	26	107
32	52	20	2020	6	19	2020	6	26	108
32	235	133	2020	6	19	2020	6	26	109
32	74	28	2020	6	19	2020	6	26	110
32	115	73	2020	6	19	2020	6	26	111
32	238	32	2020	6	19	2020	6	26	112
32	123	45	2020	6	19	2020	6	26	113
32	12	21	2020	6	19	2020	6	26	114
32	103	68	2020	6	19	2020	6	26	115
32	70	49	2020	6	19	2020	6	26	116
32	245	85	2020	6	19	2020	6	26	117
32	39	13	2020	6	19	2020	6	26	118
32	240	137	2020	6	19	2020	6	26	119
32	243	139	2020	6	19	2020	6	26	120
32	138	45	2020	6	19	2020	6	26	121
32	111	71	2020	6	19	2020	6	26	122
32	63	44	2020	6	19	2020	6	26	123
32	128	80	2020	6	19	2020	6	26	124
32	104	69	2020	6	19	2020	6	26	125
32	43	10	2020	6	19	2020	6	26	126
32	73	51	2020	6	19	2020	6	26	127
32	50	5	2020	6	19	2020	6	26	128
32	241	66	2020	6	19	2020	6	26	129
32	242	138	2020	6	19	2020	6	26	130
32	941	283	2020	6	19	2020	6	26	131
32	118	38	2020	6	19	2020	6	26	132
32	106	66	2020	6	19	2020	6	26	133
32	942	293	2020	6	19	2020	6	26	134
32	38	13	2020	6	19	2020	6	26	135
32	247	19	2020	6	19	2020	6	26	136
32	108	48	2020	6	19	2020	6	26	137
32	157	93	2020	6	19	2020	6	26	138
32	688	110	2020	6	19	2020	6	26	139
32	678	315	2020	6	19	2020	6	26	140
32	155	92	2020	6	19	2020	6	26	141
32	239	136	2020	6	19	2020	6	26	142
32	79	55	2020	6	19	2020	6	26	143
32	87	59	2020	6	19	2020	6	26	144
32	253	144	2020	6	19	2020	6	26	145
32	119	75	2020	6	19	2020	6	26	146
32	96	50	2020	6	19	2020	6	26	147
32	162	70	2020	6	19	2020	6	26	148
32	174	102	2020	6	19	2020	6	26	149
32	166	97	2020	6	19	2020	6	26	150
32	153	51	2020	6	19	2020	6	26	151
32	178	98	2020	6	19	2020	6	26	152
32	91	61	2020	6	19	2020	6	26	153
32	234	132	2020	6	19	2020	6	26	154
32	102	27	2020	6	19	2020	6	26	155
32	140	33	2020	6	19	2020	6	26	156
32	145	19	2020	6	19	2020	6	26	157
32	248	110	2020	6	19	2020	6	26	158
32	49	36	2020	6	19	2020	6	26	159
32	117	17	2020	6	19	2020	6	26	160
32	250	13	2020	6	19	2020	6	26	161
32	84	58	2020	6	19	2020	6	26	162
32	254	32	2020	6	19	2020	6	26	163
32	77	53	2020	6	19	2020	6	26	164
32	139	60	2020	6	19	2020	6	26	165
32	141	84	2020	6	19	2020	6	26	166
32	76	52	2020	6	19	2020	6	26	167
32	121	20	2020	6	19	2020	6	26	168
32	101	67	2020	6	19	2020	6	26	169
32	404	214	2020	6	19	2020	6	26	170
32	181	106	2020	6	19	2020	6	26	171
32	182	104	2020	6	19	2020	6	26	172
32	690	317	2020	6	19	2020	6	26	173
32	144	86	2020	6	19	2020	6	26	174
32	146	87	2020	6	19	2020	6	26	175
32	232	131	2020	6	19	2020	6	26	176
32	173	101	2020	6	19	2020	6	26	177
32	187	63	2020	6	19	2020	6	26	178
32	251	142	2020	6	19	2020	6	26	179
32	71	9	2020	6	19	2020	6	26	180
32	175	21	2020	6	19	2020	6	26	181
32	97	64	2020	6	19	2020	6	26	182
32	184	19	2020	6	19	2020	6	26	183
32	262	148	2020	6	19	2020	6	26	184
32	937	369	2020	6	19	2020	6	26	185
32	188	107	2020	6	19	2020	6	26	186
32	264	73	2020	6	19	2020	6	26	187
32	156	37	2020	6	19	2020	6	26	188
32	260	48	2020	6	19	2020	6	26	189
32	263	149	2020	6	19	2020	6	26	190
32	619	304	2020	6	19	2020	6	26	191
32	261	104	2020	6	19	2020	6	26	192
32	131	2	2020	6	19	2020	6	26	193
32	259	147	2020	6	19	2020	6	26	194
32	255	145	2020	6	19	2020	6	26	195
32	65	13	2020	6	19	2020	6	26	196
32	622	62	2020	6	19	2020	6	26	197
32	129	81	2020	6	19	2020	6	26	198
32	943	370	2020	6	19	2020	6	26	199
32	168	89	2020	6	19	2020	6	26	200
33	285	42	2020	9	18	2020	9	25	1
33	292	160	2020	9	18	2020	9	25	2
33	291	159	2020	9	18	2020	9	25	3
33	293	10	2020	9	18	2020	9	25	4
33	286	157	2020	9	18	2020	9	25	5
33	289	158	2020	9	18	2020	9	25	6
33	99	21	2020	9	18	2020	9	25	7
33	1	1	2020	9	18	2020	9	25	8
33	216	122	2020	9	18	2020	9	25	9
33	200	27	2020	9	18	2020	9	25	10
33	301	2	2020	9	18	2020	9	25	11
33	294	92	2020	9	18	2020	9	25	12
33	297	162	2020	9	18	2020	9	25	13
33	327	172	2020	9	18	2020	9	25	14
33	296	161	2020	9	18	2020	9	25	15
33	303	77	2020	9	18	2020	9	25	16
33	298	123	2020	9	18	2020	9	25	17
33	3	3	2020	9	18	2020	9	25	18
33	62	43	2020	9	18	2020	9	25	19
33	336	92	2020	9	18	2020	9	25	20
33	323	171	2020	9	18	2020	9	25	21
33	321	16	2020	9	18	2020	9	25	22
33	310	20	2020	9	18	2020	9	25	23
33	312	167	2020	9	18	2020	9	25	24
33	330	48	2020	9	18	2020	9	25	25
33	21	17	2020	9	18	2020	9	25	26
33	7	7	2020	9	18	2020	9	25	27
33	219	124	2020	9	18	2020	9	25	28
33	334	32	2020	9	18	2020	9	25	29
33	313	168	2020	9	18	2020	9	25	30
33	36	17	2020	9	18	2020	9	25	31
33	319	169	2020	9	18	2020	9	25	32
33	231	130	2020	9	18	2020	9	25	33
33	201	52	2020	9	18	2020	9	25	34
33	6	6	2020	9	18	2020	9	25	35
33	355	96	2020	9	18	2020	9	25	36
33	346	48	2020	9	18	2020	9	25	37
33	402	212	2020	9	18	2020	9	25	38
33	236	134	2020	9	18	2020	9	25	39
33	316	130	2020	9	18	2020	9	25	40
33	4	4	2020	9	18	2020	9	25	41
33	335	89	2020	9	18	2020	9	25	42
33	8	8	2020	9	18	2020	9	25	43
33	137	51	2020	9	18	2020	9	25	44
33	361	186	2020	9	18	2020	9	25	45
33	354	182	2020	9	18	2020	9	25	46
33	379	172	2020	9	18	2020	9	25	47
33	204	63	2020	9	18	2020	9	25	48
33	343	176	2020	9	18	2020	9	25	49
33	11	4	2020	9	18	2020	9	25	50
33	299	163	2020	9	18	2020	9	25	51
33	366	190	2020	9	18	2020	9	25	52
33	342	171	2020	9	18	2020	9	25	53
33	68	47	2020	9	18	2020	9	25	54
33	23	19	2020	9	18	2020	9	25	55
33	370	48	2020	9	18	2020	9	25	56
33	306	164	2020	9	18	2020	9	25	57
33	362	92	2020	9	18	2020	9	25	58
33	158	56	2020	9	18	2020	9	25	59
33	288	92	2020	9	18	2020	9	25	60
33	26	21	2020	9	18	2020	9	25	61
33	5	5	2020	9	18	2020	9	25	62
33	325	130	2020	9	18	2020	9	25	63
33	398	209	2020	9	18	2020	9	25	64
33	2	2	2020	9	18	2020	9	25	65
33	10	10	2020	9	18	2020	9	25	66
33	69	48	2020	9	18	2020	9	25	67
33	27	22	2020	9	18	2020	9	25	68
33	348	179	2020	9	18	2020	9	25	69
33	54	19	2020	9	18	2020	9	25	70
33	37	29	2020	9	18	2020	9	25	71
33	391	207	2020	9	18	2020	9	25	72
33	668	314	2020	9	18	2020	9	25	73
33	12	11	2020	9	18	2020	9	25	74
33	150	48	2020	9	18	2020	9	25	75
33	202	116	2020	9	18	2020	9	25	76
33	82	56	2020	9	18	2020	9	25	77
33	208	39	2020	9	18	2020	9	25	78
33	380	200	2020	9	18	2020	9	25	79
33	165	56	2020	9	18	2020	9	25	80
33	20	16	2020	9	18	2020	9	25	81
33	719	325	2020	9	18	2020	9	25	82
33	217	123	2020	9	18	2020	9	25	83
33	363	187	2020	9	18	2020	9	25	84
33	33	28	2020	9	18	2020	9	25	85
33	155	92	2020	9	18	2020	9	25	86
33	51	28	2020	9	18	2020	9	25	87
33	81	52	2020	9	18	2020	9	25	88
33	722	68	2020	9	18	2020	9	25	89
33	317	139	2020	9	18	2020	9	25	90
33	368	192	2020	9	18	2020	9	25	91
33	375	196	2020	9	18	2020	9	25	92
33	374	195	2020	9	18	2020	9	25	93
33	210	66	2020	9	18	2020	9	25	94
33	678	315	2020	9	18	2020	9	25	95
33	17	1	2020	9	18	2020	9	25	96
33	19	15	2020	9	18	2020	9	25	97
33	393	130	2020	9	18	2020	9	25	98
33	29	24	2020	9	18	2020	9	25	99
33	665	234	2020	9	18	2020	9	25	100
33	364	188	2020	9	18	2020	9	25	101
33	720	355	2020	9	18	2020	9	25	102
33	48	35	2020	9	18	2020	9	25	103
33	93	62	2020	9	18	2020	9	25	104
33	47	34	2020	9	18	2020	9	25	105
33	12	21	2020	9	18	2020	9	25	106
33	356	183	2020	9	18	2020	9	25	107
33	307	165	2020	9	18	2020	9	25	108
33	116	74	2020	9	18	2020	9	25	109
33	9	9	2020	9	18	2020	9	25	110
33	209	120	2020	9	18	2020	9	25	111
33	122	20	2020	9	18	2020	9	25	112
33	887	362	2020	9	18	2020	9	25	113
33	34	28	2020	9	18	2020	9	25	114
33	203	117	2020	9	18	2020	9	25	115
33	397	92	2020	9	18	2020	9	25	116
33	214	68	2020	9	18	2020	9	25	117
33	326	159	2020	9	18	2020	9	25	118
33	372	85	2020	9	18	2020	9	25	119
33	128	80	2020	9	18	2020	9	25	120
33	865	356	2020	9	18	2020	9	25	121
33	13	12	2020	9	18	2020	9	25	122
33	664	28	2020	9	18	2020	9	25	123
33	15	14	2020	9	18	2020	9	25	124
33	107	70	2020	9	18	2020	9	25	125
33	399	92	2020	9	18	2020	9	25	126
33	858	301	2020	9	18	2020	9	25	127
33	64	45	2020	9	18	2020	9	25	128
33	396	159	2020	9	18	2020	9	25	129
33	110	32	2020	9	18	2020	9	25	130
33	18	13	2020	9	18	2020	9	25	131
33	260	48	2020	9	18	2020	9	25	132
33	791	344	2020	9	18	2020	9	25	133
33	31	26	2020	9	18	2020	9	25	134
33	682	90	2020	9	18	2020	9	25	135
33	333	174	2020	9	18	2020	9	25	136
33	218	86	2020	9	18	2020	9	25	137
33	138	45	2020	9	18	2020	9	25	138
33	211	121	2020	9	18	2020	9	25	139
33	95	63	2020	9	18	2020	9	25	140
33	123	45	2020	9	18	2020	9	25	141
33	14	13	2020	9	18	2020	9	25	142
33	58	40	2020	9	18	2020	9	25	143
33	403	213	2020	9	18	2020	9	25	144
33	94	19	2020	9	18	2020	9	25	145
33	369	193	2020	9	18	2020	9	25	146
33	109	70	2020	9	18	2020	9	25	147
33	944	371	2020	9	18	2020	9	25	148
33	115	73	2020	9	18	2020	9	25	149
33	382	166	2020	9	18	2020	9	25	150
33	404	214	2020	9	18	2020	9	25	151
33	25	20	2020	9	18	2020	9	25	152
33	691	145	2020	9	18	2020	9	25	153
33	223	35	2020	9	18	2020	9	25	154
33	708	85	2020	9	18	2020	9	25	155
33	359	185	2020	9	18	2020	9	25	156
33	74	28	2020	9	18	2020	9	25	157
33	945	372	2020	9	18	2020	9	25	158
33	946	372	2020	9	18	2020	9	25	159
33	381	201	2020	9	18	2020	9	25	160
33	174	102	2020	9	18	2020	9	25	161
33	859	157	2020	9	18	2020	9	25	162
33	680	48	2020	9	18	2020	9	25	163
33	868	55	2020	9	18	2020	9	25	164
33	75	45	2020	9	18	2020	9	25	165
33	53	37	2020	9	18	2020	9	25	166
33	227	128	2020	9	18	2020	9	25	167
33	173	101	2020	9	18	2020	9	25	168
33	700	74	2020	9	18	2020	9	25	169
33	666	234	2020	9	18	2020	9	25	170
33	30	25	2020	9	18	2020	9	25	171
33	559	134	2020	9	18	2020	9	25	172
33	213	33	2020	9	18	2020	9	25	173
33	118	38	2020	9	18	2020	9	25	174
33	240	137	2020	9	18	2020	9	25	175
33	230	48	2020	9	18	2020	9	25	176
33	729	158	2020	9	18	2020	9	25	177
33	103	68	2020	9	18	2020	9	25	178
33	229	84	2020	9	18	2020	9	25	179
33	676	48	2020	9	18	2020	9	25	180
33	947	69	2020	9	18	2020	9	25	181
33	222	2	2020	9	18	2020	9	25	182
33	856	353	2020	9	18	2020	9	25	183
33	101	67	2020	9	18	2020	9	25	184
33	408	217	2020	9	18	2020	9	25	185
33	70	49	2020	9	18	2020	9	25	186
33	728	329	2020	9	18	2020	9	25	187
33	205	118	2020	9	18	2020	9	25	188
33	166	97	2020	9	18	2020	9	25	189
33	182	104	2020	9	18	2020	9	25	190
33	221	126	2020	9	18	2020	9	25	191
33	16	4	2020	9	18	2020	9	25	192
33	712	322	2020	9	18	2020	9	25	193
33	948	33	2020	9	18	2020	9	25	194
33	162	70	2020	9	18	2020	9	25	195
33	401	211	2020	9	18	2020	9	25	196
33	949	51	2020	9	18	2020	9	25	197
33	117	17	2020	9	18	2020	9	25	198
33	146	87	2020	9	18	2020	9	25	199
33	153	51	2020	9	18	2020	9	25	200
34	200	27	2020	6	5	2020	6	12	1
34	1	1	2020	6	5	2020	6	12	2
34	3	3	2020	6	5	2020	6	12	3
34	201	52	2020	6	5	2020	6	12	4
34	2	2	2020	6	5	2020	6	12	5
34	6	6	2020	6	5	2020	6	12	6
34	4	4	2020	6	5	2020	6	12	7
34	7	7	2020	6	5	2020	6	12	8
34	68	47	2020	6	5	2020	6	12	9
34	203	117	2020	6	5	2020	6	12	10
34	8	8	2020	6	5	2020	6	12	11
34	202	116	2020	6	5	2020	6	12	12
34	11	4	2020	6	5	2020	6	12	13
34	5	5	2020	6	5	2020	6	12	14
34	99	21	2020	6	5	2020	6	12	15
34	15	14	2020	6	5	2020	6	12	16
34	204	63	2020	6	5	2020	6	12	17
34	205	118	2020	6	5	2020	6	12	18
34	21	17	2020	6	5	2020	6	12	19
34	10	10	2020	6	5	2020	6	12	20
34	212	52	2020	6	5	2020	6	12	21
34	62	43	2020	6	5	2020	6	12	22
34	209	120	2020	6	5	2020	6	12	23
34	12	11	2020	6	5	2020	6	12	24
34	207	119	2020	6	5	2020	6	12	25
34	13	12	2020	6	5	2020	6	12	26
34	30	25	2020	6	5	2020	6	12	27
34	9	9	2020	6	5	2020	6	12	28
34	23	19	2020	6	5	2020	6	12	29
34	158	56	2020	6	5	2020	6	12	30
34	211	121	2020	6	5	2020	6	12	31
34	19	15	2020	6	5	2020	6	12	32
34	210	66	2020	6	5	2020	6	12	33
34	208	39	2020	6	5	2020	6	12	34
34	20	16	2020	6	5	2020	6	12	35
34	18	13	2020	6	5	2020	6	12	36
34	14	13	2020	6	5	2020	6	12	37
34	29	24	2020	6	5	2020	6	12	38
34	36	17	2020	6	5	2020	6	12	39
34	214	68	2020	6	5	2020	6	12	40
34	82	56	2020	6	5	2020	6	12	41
34	17	1	2020	6	5	2020	6	12	42
34	213	33	2020	6	5	2020	6	12	43
34	165	56	2020	6	5	2020	6	12	44
34	24	9	2020	6	5	2020	6	12	45
34	27	22	2020	6	5	2020	6	12	46
34	26	21	2020	6	5	2020	6	12	47
34	218	86	2020	6	5	2020	6	12	48
34	37	29	2020	6	5	2020	6	12	49
34	33	28	2020	6	5	2020	6	12	50
34	25	20	2020	6	5	2020	6	12	51
34	54	19	2020	6	5	2020	6	12	52
34	47	34	2020	6	5	2020	6	12	53
34	110	32	2020	6	5	2020	6	12	54
34	116	74	2020	6	5	2020	6	12	55
34	137	51	2020	6	5	2020	6	12	56
34	222	2	2020	6	5	2020	6	12	57
34	48	35	2020	6	5	2020	6	12	58
34	151	90	2020	6	5	2020	6	12	59
34	217	123	2020	6	5	2020	6	12	60
34	57	5	2020	6	5	2020	6	12	61
34	219	124	2020	6	5	2020	6	12	62
34	34	28	2020	6	5	2020	6	12	63
34	225	9	2020	6	5	2020	6	12	64
34	31	26	2020	6	5	2020	6	12	65
34	51	28	2020	6	5	2020	6	12	66
34	234	132	2020	6	5	2020	6	12	67
34	69	48	2020	6	5	2020	6	12	68
34	40	30	2020	6	5	2020	6	12	69
34	16	4	2020	6	5	2020	6	12	70
34	22	18	2020	6	5	2020	6	12	71
34	224	127	2020	6	5	2020	6	12	72
34	58	40	2020	6	5	2020	6	12	73
34	45	32	2020	6	5	2020	6	12	74
34	81	52	2020	6	5	2020	6	12	75
34	64	45	2020	6	5	2020	6	12	76
34	53	37	2020	6	5	2020	6	12	77
34	230	48	2020	6	5	2020	6	12	78
34	244	48	2020	6	5	2020	6	12	79
34	44	20	2020	6	5	2020	6	12	80
34	227	128	2020	6	5	2020	6	12	81
34	229	84	2020	6	5	2020	6	12	82
34	35	13	2020	6	5	2020	6	12	83
34	228	129	2020	6	5	2020	6	12	84
34	56	39	2020	6	5	2020	6	12	85
34	950	302	2020	6	5	2020	6	12	86
34	76	52	2020	6	5	2020	6	12	87
34	93	62	2020	6	5	2020	6	12	88
34	63	44	2020	6	5	2020	6	12	89
34	83	57	2020	6	5	2020	6	12	90
34	94	19	2020	6	5	2020	6	12	91
34	223	35	2020	6	5	2020	6	12	92
34	70	49	2020	6	5	2020	6	12	93
34	74	28	2020	6	5	2020	6	12	94
34	95	63	2020	6	5	2020	6	12	95
34	107	70	2020	6	5	2020	6	12	96
34	39	13	2020	6	5	2020	6	12	97
34	52	20	2020	6	5	2020	6	12	98
34	75	45	2020	6	5	2020	6	12	99
34	238	32	2020	6	5	2020	6	12	100
34	109	70	2020	6	5	2020	6	12	101
34	122	20	2020	6	5	2020	6	12	102
34	245	85	2020	6	5	2020	6	12	103
34	43	10	2020	6	5	2020	6	12	104
34	150	48	2020	6	5	2020	6	12	105
34	38	13	2020	6	5	2020	6	12	106
34	104	69	2020	6	5	2020	6	12	107
34	77	53	2020	6	5	2020	6	12	108
34	103	68	2020	6	5	2020	6	12	109
34	12	21	2020	6	5	2020	6	12	110
34	115	73	2020	6	5	2020	6	12	111
34	123	45	2020	6	5	2020	6	12	112
34	235	133	2020	6	5	2020	6	12	113
34	250	13	2020	6	5	2020	6	12	114
34	73	51	2020	6	5	2020	6	12	115
34	240	137	2020	6	5	2020	6	12	116
34	128	80	2020	6	5	2020	6	12	117
34	50	5	2020	6	5	2020	6	12	118
34	106	66	2020	6	5	2020	6	12	119
34	96	50	2020	6	5	2020	6	12	120
34	138	45	2020	6	5	2020	6	12	121
34	243	139	2020	6	5	2020	6	12	122
34	242	138	2020	6	5	2020	6	12	123
34	79	55	2020	6	5	2020	6	12	124
34	28	23	2020	6	5	2020	6	12	125
34	111	71	2020	6	5	2020	6	12	126
34	108	48	2020	6	5	2020	6	12	127
34	118	38	2020	6	5	2020	6	12	128
34	255	145	2020	6	5	2020	6	12	129
34	87	59	2020	6	5	2020	6	12	130
34	236	134	2020	6	5	2020	6	12	131
34	247	19	2020	6	5	2020	6	12	132
34	91	61	2020	6	5	2020	6	12	133
34	951	70	2020	6	5	2020	6	12	134
34	157	93	2020	6	5	2020	6	12	135
34	178	98	2020	6	5	2020	6	12	136
34	102	27	2020	6	5	2020	6	12	137
34	98	65	2020	6	5	2020	6	12	138
34	952	373	2020	6	5	2020	6	12	139
34	49	36	2020	6	5	2020	6	12	140
34	71	9	2020	6	5	2020	6	12	141
34	258	13	2020	6	5	2020	6	12	142
34	72	50	2020	6	5	2020	6	12	143
34	140	33	2020	6	5	2020	6	12	144
34	251	142	2020	6	5	2020	6	12	145
34	144	86	2020	6	5	2020	6	12	146
34	101	67	2020	6	5	2020	6	12	147
34	117	17	2020	6	5	2020	6	12	148
34	65	13	2020	6	5	2020	6	12	149
34	257	31	2020	6	5	2020	6	12	150
34	162	70	2020	6	5	2020	6	12	151
34	119	75	2020	6	5	2020	6	12	152
34	153	51	2020	6	5	2020	6	12	153
34	256	146	2020	6	5	2020	6	12	154
34	121	20	2020	6	5	2020	6	12	155
34	146	87	2020	6	5	2020	6	12	156
34	155	92	2020	6	5	2020	6	12	157
34	139	60	2020	6	5	2020	6	12	158
34	265	89	2020	6	5	2020	6	12	159
34	145	19	2020	6	5	2020	6	12	160
34	141	84	2020	6	5	2020	6	12	161
34	97	64	2020	6	5	2020	6	12	162
34	953	374	2020	6	5	2020	6	12	163
34	253	144	2020	6	5	2020	6	12	164
34	254	32	2020	6	5	2020	6	12	165
34	166	97	2020	6	5	2020	6	12	166
34	241	66	2020	6	5	2020	6	12	167
34	173	101	2020	6	5	2020	6	12	168
34	174	102	2020	6	5	2020	6	12	169
34	84	58	2020	6	5	2020	6	12	170
34	129	81	2020	6	5	2020	6	12	171
34	59	13	2020	6	5	2020	6	12	172
34	46	33	2020	6	5	2020	6	12	173
34	181	106	2020	6	5	2020	6	12	174
34	131	2	2020	6	5	2020	6	12	175
34	175	21	2020	6	5	2020	6	12	176
34	182	104	2020	6	5	2020	6	12	177
34	170	99	2020	6	5	2020	6	12	178
34	187	63	2020	6	5	2020	6	12	179
34	132	32	2020	6	5	2020	6	12	180
34	915	13	2020	6	5	2020	6	12	181
34	184	19	2020	6	5	2020	6	12	182
34	60	41	2020	6	5	2020	6	12	183
34	168	89	2020	6	5	2020	6	12	184
34	260	48	2020	6	5	2020	6	12	185
34	188	107	2020	6	5	2020	6	12	186
34	261	104	2020	6	5	2020	6	12	187
34	183	29	2020	6	5	2020	6	12	188
34	89	60	2020	6	5	2020	6	12	189
34	147	13	2020	6	5	2020	6	12	190
34	914	24	2020	6	5	2020	6	12	191
34	196	50	2020	6	5	2020	6	12	192
34	192	70	2020	6	5	2020	6	12	193
34	156	37	2020	6	5	2020	6	12	194
34	78	54	2020	6	5	2020	6	12	195
34	264	73	2020	6	5	2020	6	12	196
34	259	147	2020	6	5	2020	6	12	197
34	943	370	2020	6	5	2020	6	12	198
34	622	62	2020	6	5	2020	6	12	199
34	268	150	2020	6	5	2020	6	12	200
35	200	27	2020	5	29	2020	6	5	1
35	201	52	2020	5	29	2020	6	5	2
35	1	1	2020	5	29	2020	6	5	3
35	3	3	2020	5	29	2020	6	5	4
35	212	52	2020	5	29	2020	6	5	5
35	2	2	2020	5	29	2020	6	5	6
35	6	6	2020	5	29	2020	6	5	7
35	4	4	2020	5	29	2020	6	5	8
35	203	117	2020	5	29	2020	6	5	9
35	7	7	2020	5	29	2020	6	5	10
35	68	47	2020	5	29	2020	6	5	11
35	11	4	2020	5	29	2020	6	5	12
35	8	8	2020	5	29	2020	6	5	13
35	204	63	2020	5	29	2020	6	5	14
35	209	120	2020	5	29	2020	6	5	15
35	5	5	2020	5	29	2020	6	5	16
35	15	14	2020	5	29	2020	6	5	17
35	205	118	2020	5	29	2020	6	5	18
35	202	116	2020	5	29	2020	6	5	19
35	10	10	2020	5	29	2020	6	5	20
35	99	21	2020	5	29	2020	6	5	21
35	12	11	2020	5	29	2020	6	5	22
35	62	43	2020	5	29	2020	6	5	23
35	21	17	2020	5	29	2020	6	5	24
35	207	119	2020	5	29	2020	6	5	25
35	13	12	2020	5	29	2020	6	5	26
35	23	19	2020	5	29	2020	6	5	27
35	9	9	2020	5	29	2020	6	5	28
35	211	121	2020	5	29	2020	6	5	29
35	30	25	2020	5	29	2020	6	5	30
35	158	56	2020	5	29	2020	6	5	31
35	213	33	2020	5	29	2020	6	5	32
35	19	15	2020	5	29	2020	6	5	33
35	214	68	2020	5	29	2020	6	5	34
35	29	24	2020	5	29	2020	6	5	35
35	14	13	2020	5	29	2020	6	5	36
35	20	16	2020	5	29	2020	6	5	37
35	18	13	2020	5	29	2020	6	5	38
35	208	39	2020	5	29	2020	6	5	39
35	76	52	2020	5	29	2020	6	5	40
35	24	9	2020	5	29	2020	6	5	41
35	165	56	2020	5	29	2020	6	5	42
35	244	48	2020	5	29	2020	6	5	43
35	36	17	2020	5	29	2020	6	5	44
35	82	56	2020	5	29	2020	6	5	45
35	210	66	2020	5	29	2020	6	5	46
35	225	9	2020	5	29	2020	6	5	47
35	17	1	2020	5	29	2020	6	5	48
35	218	86	2020	5	29	2020	6	5	49
35	26	21	2020	5	29	2020	6	5	50
35	27	22	2020	5	29	2020	6	5	51
35	954	52	2020	5	29	2020	6	5	52
35	955	52	2020	5	29	2020	6	5	53
35	33	28	2020	5	29	2020	6	5	54
35	37	29	2020	5	29	2020	6	5	55
35	47	34	2020	5	29	2020	6	5	56
35	25	20	2020	5	29	2020	6	5	57
35	956	52	2020	5	29	2020	6	5	58
35	54	19	2020	5	29	2020	6	5	59
35	57	5	2020	5	29	2020	6	5	60
35	48	35	2020	5	29	2020	6	5	61
35	116	74	2020	5	29	2020	6	5	62
35	953	374	2020	5	29	2020	6	5	63
35	137	51	2020	5	29	2020	6	5	64
35	31	26	2020	5	29	2020	6	5	65
35	151	90	2020	5	29	2020	6	5	66
35	16	4	2020	5	29	2020	6	5	67
35	110	32	2020	5	29	2020	6	5	68
35	34	28	2020	5	29	2020	6	5	69
35	40	30	2020	5	29	2020	6	5	70
35	22	18	2020	5	29	2020	6	5	71
35	51	28	2020	5	29	2020	6	5	72
35	222	2	2020	5	29	2020	6	5	73
35	957	52	2020	5	29	2020	6	5	74
35	958	52	2020	5	29	2020	6	5	75
35	69	48	2020	5	29	2020	6	5	76
35	959	52	2020	5	29	2020	6	5	77
35	230	48	2020	5	29	2020	6	5	78
35	960	52	2020	5	29	2020	6	5	79
35	961	52	2020	5	29	2020	6	5	80
35	58	40	2020	5	29	2020	6	5	81
35	64	45	2020	5	29	2020	6	5	82
35	53	37	2020	5	29	2020	6	5	83
35	44	20	2020	5	29	2020	6	5	84
35	219	124	2020	5	29	2020	6	5	85
35	45	32	2020	5	29	2020	6	5	86
35	962	52	2020	5	29	2020	6	5	87
35	81	52	2020	5	29	2020	6	5	88
35	224	127	2020	5	29	2020	6	5	89
35	217	123	2020	5	29	2020	6	5	90
35	963	52	2020	5	29	2020	6	5	91
35	245	85	2020	5	29	2020	6	5	92
35	964	52	2020	5	29	2020	6	5	93
35	56	39	2020	5	29	2020	6	5	94
35	229	84	2020	5	29	2020	6	5	95
35	35	13	2020	5	29	2020	6	5	96
35	242	138	2020	5	29	2020	6	5	97
35	63	44	2020	5	29	2020	6	5	98
35	39	13	2020	5	29	2020	6	5	99
35	83	57	2020	5	29	2020	6	5	100
35	241	66	2020	5	29	2020	6	5	101
35	93	62	2020	5	29	2020	6	5	102
35	52	20	2020	5	29	2020	6	5	103
35	74	28	2020	5	29	2020	6	5	104
35	95	63	2020	5	29	2020	6	5	105
35	965	52	2020	5	29	2020	6	5	106
35	94	19	2020	5	29	2020	6	5	107
35	70	49	2020	5	29	2020	6	5	108
35	77	53	2020	5	29	2020	6	5	109
35	75	45	2020	5	29	2020	6	5	110
35	107	70	2020	5	29	2020	6	5	111
35	235	133	2020	5	29	2020	6	5	112
35	43	10	2020	5	29	2020	6	5	113
35	966	33	2020	5	29	2020	6	5	114
35	250	13	2020	5	29	2020	6	5	115
35	73	51	2020	5	29	2020	6	5	116
35	109	70	2020	5	29	2020	6	5	117
35	268	150	2020	5	29	2020	6	5	118
35	238	32	2020	5	29	2020	6	5	119
35	106	66	2020	5	29	2020	6	5	120
35	38	13	2020	5	29	2020	6	5	121
35	28	23	2020	5	29	2020	6	5	122
35	140	33	2020	5	29	2020	6	5	123
35	234	132	2020	5	29	2020	6	5	124
35	103	68	2020	5	29	2020	6	5	125
35	46	33	2020	5	29	2020	6	5	126
35	115	73	2020	5	29	2020	6	5	127
35	104	69	2020	5	29	2020	6	5	128
35	96	50	2020	5	29	2020	6	5	129
35	123	45	2020	5	29	2020	6	5	130
35	967	375	2020	5	29	2020	6	5	131
35	150	48	2020	5	29	2020	6	5	132
35	50	5	2020	5	29	2020	6	5	133
35	243	139	2020	5	29	2020	6	5	134
35	12	21	2020	5	29	2020	6	5	135
35	258	13	2020	5	29	2020	6	5	136
35	128	80	2020	5	29	2020	6	5	137
35	111	71	2020	5	29	2020	6	5	138
35	122	20	2020	5	29	2020	6	5	139
35	157	66	2020	5	29	2020	6	5	140
35	706	66	2020	5	29	2020	6	5	141
35	98	65	2020	5	29	2020	6	5	142
35	138	45	2020	5	29	2020	6	5	143
35	87	59	2020	5	29	2020	6	5	144
35	79	55	2020	5	29	2020	6	5	145
35	265	89	2020	5	29	2020	6	5	146
35	108	48	2020	5	29	2020	6	5	147
35	914	24	2020	5	29	2020	6	5	148
35	71	9	2020	5	29	2020	6	5	149
35	118	38	2020	5	29	2020	6	5	150
35	247	19	2020	5	29	2020	6	5	151
35	91	61	2020	5	29	2020	6	5	152
35	228	129	2020	5	29	2020	6	5	153
35	102	27	2020	5	29	2020	6	5	154
35	49	36	2020	5	29	2020	6	5	155
35	72	50	2020	5	29	2020	6	5	156
35	157	93	2020	5	29	2020	6	5	157
35	240	137	2020	5	29	2020	6	5	158
35	236	134	2020	5	29	2020	6	5	159
35	178	98	2020	5	29	2020	6	5	160
35	84	58	2020	5	29	2020	6	5	161
35	153	51	2020	5	29	2020	6	5	162
35	119	75	2020	5	29	2020	6	5	163
35	144	86	2020	5	29	2020	6	5	164
35	65	13	2020	5	29	2020	6	5	165
35	139	60	2020	5	29	2020	6	5	166
35	253	144	2020	5	29	2020	6	5	167
35	101	67	2020	5	29	2020	6	5	168
35	251	142	2020	5	29	2020	6	5	169
35	117	17	2020	5	29	2020	6	5	170
35	257	31	2020	5	29	2020	6	5	171
35	146	87	2020	5	29	2020	6	5	172
35	162	70	2020	5	29	2020	6	5	173
35	141	84	2020	5	29	2020	6	5	174
35	145	19	2020	5	29	2020	6	5	175
35	256	146	2020	5	29	2020	6	5	176
35	59	13	2020	5	29	2020	6	5	177
35	173	101	2020	5	29	2020	6	5	178
35	166	97	2020	5	29	2020	6	5	179
35	968	373	2020	5	29	2020	6	5	180
35	97	64	2020	5	29	2020	6	5	181
35	121	20	2020	5	29	2020	6	5	182
35	969	376	2020	5	29	2020	6	5	183
35	89	60	2020	5	29	2020	6	5	184
35	255	145	2020	5	29	2020	6	5	185
35	129	81	2020	5	29	2020	6	5	186
35	254	32	2020	5	29	2020	6	5	187
35	970	72	2020	5	29	2020	6	5	188
35	915	13	2020	5	29	2020	6	5	189
35	971	72	2020	5	29	2020	6	5	190
35	972	205	2020	5	29	2020	6	5	191
35	410	33	2020	5	29	2020	6	5	192
35	174	102	2020	5	29	2020	6	5	193
35	917	302	2020	5	29	2020	6	5	194
35	131	2	2020	5	29	2020	6	5	195
35	132	32	2020	5	29	2020	6	5	196
35	223	35	2020	5	29	2020	6	5	197
35	181	106	2020	5	29	2020	6	5	198
35	170	99	2020	5	29	2020	6	5	199
35	182	104	2020	5	29	2020	6	5	200
36	7	7	2020	2	14	2020	2	21	1
36	5	5	2020	2	14	2020	2	21	2
36	1	1	2020	2	14	2020	2	21	3
36	85	28	2020	2	14	2020	2	21	4
36	10	10	2020	2	14	2020	2	21	5
36	4	4	2020	2	14	2020	2	21	6
36	43	10	2020	2	14	2020	2	21	7
36	20	16	2020	2	14	2020	2	21	8
36	12	11	2020	2	14	2020	2	21	9
36	19	15	2020	2	14	2020	2	21	10
36	29	24	2020	2	14	2020	2	21	11
36	34	28	2020	2	14	2020	2	21	12
36	23	19	2020	2	14	2020	2	21	13
36	31	26	2020	2	14	2020	2	21	14
36	88	10	2020	2	14	2020	2	21	15
36	21	17	2020	2	14	2020	2	21	16
36	27	22	2020	2	14	2020	2	21	17
36	39	13	2020	2	14	2020	2	21	18
36	33	28	2020	2	14	2020	2	21	19
36	37	29	2020	2	14	2020	2	21	20
36	26	21	2020	2	14	2020	2	21	21
36	56	39	2020	2	14	2020	2	21	22
36	9	9	2020	2	14	2020	2	21	23
36	36	17	2020	2	14	2020	2	21	24
36	60	41	2020	2	14	2020	2	21	25
36	55	38	2020	2	14	2020	2	21	26
36	49	36	2020	2	14	2020	2	21	27
36	16	4	2020	2	14	2020	2	21	28
36	3	3	2020	2	14	2020	2	21	29
36	149	89	2020	2	14	2020	2	21	30
36	8	8	2020	2	14	2020	2	21	31
36	59	13	2020	2	14	2020	2	21	32
36	53	37	2020	2	14	2020	2	21	33
36	48	35	2020	2	14	2020	2	21	34
36	79	55	2020	2	14	2020	2	21	35
36	113	54	2020	2	14	2020	2	21	36
36	50	5	2020	2	14	2020	2	21	37
36	52	20	2020	2	14	2020	2	21	38
36	100	66	2020	2	14	2020	2	21	39
36	13	12	2020	2	14	2020	2	21	40
36	89	60	2020	2	14	2020	2	21	41
36	132	32	2020	2	14	2020	2	21	42
36	64	45	2020	2	14	2020	2	21	43
36	54	19	2020	2	14	2020	2	21	44
36	90	61	2020	2	14	2020	2	21	45
36	97	64	2020	2	14	2020	2	21	46
36	58	40	2020	2	14	2020	2	21	47
36	74	28	2020	2	14	2020	2	21	48
36	102	27	2020	2	14	2020	2	21	49
36	133	82	2020	2	14	2020	2	21	50
36	77	53	2020	2	14	2020	2	21	51
36	125	78	2020	2	14	2020	2	21	52
36	775	283	2020	2	14	2020	2	21	53
36	51	28	2020	2	14	2020	2	21	54
36	70	49	2020	2	14	2020	2	21	55
36	120	76	2020	2	14	2020	2	21	56
36	973	368	2020	2	14	2020	2	21	57
36	515	64	2020	2	14	2020	2	21	58
36	83	57	2020	2	14	2020	2	21	59
36	82	56	2020	2	14	2020	2	21	60
36	974	10	2020	2	14	2020	2	21	61
36	106	66	2020	2	14	2020	2	21	62
36	75	45	2020	2	14	2020	2	21	63
36	975	10	2020	2	14	2020	2	21	64
36	976	10	2020	2	14	2020	2	21	65
36	69	48	2020	2	14	2020	2	21	66
36	47	34	2020	2	14	2020	2	21	67
36	6	6	2020	2	14	2020	2	21	68
36	41	1	2020	2	14	2020	2	21	69
36	30	25	2020	2	14	2020	2	21	70
36	81	52	2020	2	14	2020	2	21	71
36	977	10	2020	2	14	2020	2	21	72
36	144	86	2020	2	14	2020	2	21	73
36	141	84	2020	2	14	2020	2	21	74
36	121	20	2020	2	14	2020	2	21	75
36	147	13	2020	2	14	2020	2	21	76
36	95	63	2020	2	14	2020	2	21	77
36	99	21	2020	2	14	2020	2	21	78
36	978	10	2020	2	14	2020	2	21	79
36	87	59	2020	2	14	2020	2	21	80
36	108	48	2020	2	14	2020	2	21	81
36	908	153	2020	2	14	2020	2	21	82
36	523	27	2020	2	14	2020	2	21	83
36	91	61	2020	2	14	2020	2	21	84
36	979	10	2020	2	14	2020	2	21	85
36	980	10	2020	2	14	2020	2	21	86
36	517	272	2020	2	14	2020	2	21	87
36	776	84	2020	2	14	2020	2	21	88
36	105	7	2020	2	14	2020	2	21	89
36	119	75	2020	2	14	2020	2	21	90
36	160	89	2020	2	14	2020	2	21	91
36	521	78	2020	2	14	2020	2	21	92
36	163	95	2020	2	14	2020	2	21	93
36	114	19	2020	2	14	2020	2	21	94
36	111	71	2020	2	14	2020	2	21	95
36	981	97	2020	2	14	2020	2	21	96
36	103	68	2020	2	14	2020	2	21	97
36	191	110	2020	2	14	2020	2	21	98
36	67	1	2020	2	14	2020	2	21	99
36	531	276	2020	2	14	2020	2	21	100
36	154	28	2020	2	14	2020	2	21	101
36	93	62	2020	2	14	2020	2	21	102
36	982	10	2020	2	14	2020	2	21	103
36	528	45	2020	2	14	2020	2	21	104
36	554	44	2020	2	14	2020	2	21	105
36	117	17	2020	2	14	2020	2	21	106
36	139	60	2020	2	14	2020	2	21	107
36	104	69	2020	2	14	2020	2	21	108
36	152	91	2020	2	14	2020	2	21	109
36	115	73	2020	2	14	2020	2	21	110
36	532	55	2020	2	14	2020	2	21	111
36	526	186	2020	2	14	2020	2	21	112
36	94	19	2020	2	14	2020	2	21	113
36	782	196	2020	2	14	2020	2	21	114
36	118	38	2020	2	14	2020	2	21	115
36	983	10	2020	2	14	2020	2	21	116
36	194	112	2020	2	14	2020	2	21	117
36	135	20	2020	2	14	2020	2	21	118
36	146	87	2020	2	14	2020	2	21	119
36	63	44	2020	2	14	2020	2	21	120
36	123	45	2020	2	14	2020	2	21	121
36	984	365	2020	2	14	2020	2	21	122
36	530	111	2020	2	14	2020	2	21	123
36	101	67	2020	2	14	2020	2	21	124
36	128	80	2020	2	14	2020	2	21	125
36	534	28	2020	2	14	2020	2	21	126
36	145	19	2020	2	14	2020	2	21	127
36	529	196	2020	2	14	2020	2	21	128
36	168	89	2020	2	14	2020	2	21	129
36	540	40	2020	2	14	2020	2	21	130
36	138	45	2020	2	14	2020	2	21	131
36	150	48	2020	2	14	2020	2	21	132
36	541	279	2020	2	14	2020	2	21	133
36	535	27	2020	2	14	2020	2	21	134
36	985	10	2020	2	14	2020	2	21	135
36	519	158	2020	2	14	2020	2	21	136
36	785	26	2020	2	14	2020	2	21	137
36	131	2	2020	2	14	2020	2	21	138
36	986	97	2020	2	14	2020	2	21	139
36	156	37	2020	2	14	2020	2	21	140
36	987	10	2020	2	14	2020	2	21	141
36	909	98	2020	2	14	2020	2	21	142
36	174	102	2020	2	14	2020	2	21	143
36	109	70	2020	2	14	2020	2	21	144
36	546	123	2020	2	14	2020	2	21	145
36	175	21	2020	2	14	2020	2	21	146
36	544	280	2020	2	14	2020	2	21	147
36	165	56	2020	2	14	2020	2	21	148
36	527	50	2020	2	14	2020	2	21	149
36	539	278	2020	2	14	2020	2	21	150
36	783	299	2020	2	14	2020	2	21	151
36	545	281	2020	2	14	2020	2	21	152
36	107	70	2020	2	14	2020	2	21	153
36	187	63	2020	2	14	2020	2	21	154
36	181	106	2020	2	14	2020	2	21	155
36	153	51	2020	2	14	2020	2	21	156
36	547	282	2020	2	14	2020	2	21	157
36	159	94	2020	2	14	2020	2	21	158
36	551	28	2020	2	14	2020	2	21	159
36	988	283	2020	2	14	2020	2	21	160
36	124	77	2020	2	14	2020	2	21	161
36	558	278	2020	2	14	2020	2	21	162
36	185	22	2020	2	14	2020	2	21	163
36	989	10	2020	2	14	2020	2	21	164
36	130	67	2020	2	14	2020	2	21	165
36	533	33	2020	2	14	2020	2	21	166
36	549	112	2020	2	14	2020	2	21	167
36	564	286	2020	2	14	2020	2	21	168
36	140	33	2020	2	14	2020	2	21	169
36	522	274	2020	2	14	2020	2	21	170
36	143	85	2020	2	14	2020	2	21	171
36	179	105	2020	2	14	2020	2	21	172
36	158	56	2020	2	14	2020	2	21	173
36	556	234	2020	2	14	2020	2	21	174
36	990	97	2020	2	14	2020	2	21	175
36	562	28	2020	2	14	2020	2	21	176
36	282	74	2020	2	14	2020	2	21	177
36	518	273	2020	2	14	2020	2	21	178
36	184	19	2020	2	14	2020	2	21	179
36	560	28	2020	2	14	2020	2	21	180
36	557	154	2020	2	14	2020	2	21	181
36	162	70	2020	2	14	2020	2	21	182
36	552	111	2020	2	14	2020	2	21	183
36	199	115	2020	2	14	2020	2	21	184
36	573	292	2020	2	14	2020	2	21	185
36	520	234	2020	2	14	2020	2	21	186
36	991	97	2020	2	14	2020	2	21	187
36	166	97	2020	2	14	2020	2	21	188
36	183	29	2020	2	14	2020	2	21	189
36	177	104	2020	2	14	2020	2	21	190
36	178	98	2020	2	14	2020	2	21	191
36	559	134	2020	2	14	2020	2	21	192
36	992	10	2020	2	14	2020	2	21	193
36	188	107	2020	2	14	2020	2	21	194
36	279	153	2020	2	14	2020	2	21	195
36	12	21	2020	2	14	2020	2	21	196
36	577	28	2020	2	14	2020	2	21	197
36	912	89	2020	2	14	2020	2	21	198
36	176	103	2020	2	14	2020	2	21	199
36	173	101	2020	2	14	2020	2	21	200
37	283	63	2020	10	23	2020	10	30	1
37	285	42	2020	10	23	2020	10	30	2
37	286	157	2020	10	23	2020	10	30	3
37	289	158	2020	10	23	2020	10	30	4
37	292	160	2020	10	23	2020	10	30	5
37	288	92	2020	10	23	2020	10	30	6
37	291	159	2020	10	23	2020	10	30	7
37	1	1	2020	10	23	2020	10	30	8
37	293	10	2020	10	23	2020	10	30	9
37	290	10	2020	10	23	2020	10	30	10
37	99	21	2020	10	23	2020	10	30	11
37	294	92	2020	10	23	2020	10	30	12
37	297	162	2020	10	23	2020	10	30	13
37	296	161	2020	10	23	2020	10	30	14
37	200	27	2020	10	23	2020	10	30	15
37	301	2	2020	10	23	2020	10	30	16
37	298	123	2020	10	23	2020	10	30	17
37	299	163	2020	10	23	2020	10	30	18
37	303	77	2020	10	23	2020	10	30	19
37	305	29	2020	10	23	2020	10	30	20
37	216	122	2020	10	23	2020	10	30	21
37	306	164	2020	10	23	2020	10	30	22
37	21	17	2020	10	23	2020	10	30	23
37	3	3	2020	10	23	2020	10	30	24
37	308	74	2020	10	23	2020	10	30	25
37	320	170	2020	10	23	2020	10	30	26
37	312	167	2020	10	23	2020	10	30	27
37	310	20	2020	10	23	2020	10	30	28
37	353	181	2020	10	23	2020	10	30	29
37	313	168	2020	10	23	2020	10	30	30
37	307	165	2020	10	23	2020	10	30	31
37	323	171	2020	10	23	2020	10	30	32
37	62	43	2020	10	23	2020	10	30	33
37	36	17	2020	10	23	2020	10	30	34
37	319	169	2020	10	23	2020	10	30	35
37	331	171	2020	10	23	2020	10	30	36
37	7	7	2020	10	23	2020	10	30	37
37	327	172	2020	10	23	2020	10	30	38
37	316	130	2020	10	23	2020	10	30	39
37	321	16	2020	10	23	2020	10	30	40
37	325	130	2020	10	23	2020	10	30	41
37	317	139	2020	10	23	2020	10	30	42
37	330	48	2020	10	23	2020	10	30	43
37	336	92	2020	10	23	2020	10	30	44
37	333	174	2020	10	23	2020	10	30	45
37	311	166	2020	10	23	2020	10	30	46
37	315	4	2020	10	23	2020	10	30	47
37	334	32	2020	10	23	2020	10	30	48
37	342	171	2020	10	23	2020	10	30	49
37	219	124	2020	10	23	2020	10	30	50
37	326	159	2020	10	23	2020	10	30	51
37	358	184	2020	10	23	2020	10	30	52
37	4	4	2020	10	23	2020	10	30	53
37	6	6	2020	10	23	2020	10	30	54
37	337	175	2020	10	23	2020	10	30	55
37	201	52	2020	10	23	2020	10	30	56
37	343	176	2020	10	23	2020	10	30	57
37	346	48	2020	10	23	2020	10	30	58
37	329	173	2020	10	23	2020	10	30	59
37	8	8	2020	10	23	2020	10	30	60
37	236	134	2020	10	23	2020	10	30	61
37	341	25	2020	10	23	2020	10	30	62
37	23	19	2020	10	23	2020	10	30	63
37	348	179	2020	10	23	2020	10	30	64
37	26	21	2020	10	23	2020	10	30	65
37	204	63	2020	10	23	2020	10	30	66
37	231	130	2020	10	23	2020	10	30	67
37	158	56	2020	10	23	2020	10	30	68
37	27	22	2020	10	23	2020	10	30	69
37	345	178	2020	10	23	2020	10	30	70
37	69	48	2020	10	23	2020	10	30	71
37	37	29	2020	10	23	2020	10	30	72
37	5	5	2020	10	23	2020	10	30	73
37	352	126	2020	10	23	2020	10	30	74
37	351	80	2020	10	23	2020	10	30	75
37	354	182	2020	10	23	2020	10	30	76
37	54	19	2020	10	23	2020	10	30	77
37	150	48	2020	10	23	2020	10	30	78
37	355	96	2020	10	23	2020	10	30	79
37	360	171	2020	10	23	2020	10	30	80
37	12	11	2020	10	23	2020	10	30	81
37	356	183	2020	10	23	2020	10	30	82
37	51	28	2020	10	23	2020	10	30	83
37	335	89	2020	10	23	2020	10	30	84
37	137	51	2020	10	23	2020	10	30	85
37	328	21	2020	10	23	2020	10	30	86
37	82	56	2020	10	23	2020	10	30	87
37	33	28	2020	10	23	2020	10	30	88
37	362	92	2020	10	23	2020	10	30	89
37	68	47	2020	10	23	2020	10	30	90
37	387	205	2020	10	23	2020	10	30	91
37	12	21	2020	10	23	2020	10	30	92
37	81	52	2020	10	23	2020	10	30	93
37	10	10	2020	10	23	2020	10	30	94
37	11	4	2020	10	23	2020	10	30	95
37	47	34	2020	10	23	2020	10	30	96
37	361	186	2020	10	23	2020	10	30	97
37	2	2	2020	10	23	2020	10	30	98
37	20	16	2020	10	23	2020	10	30	99
37	368	192	2020	10	23	2020	10	30	100
37	359	185	2020	10	23	2020	10	30	101
37	715	171	2020	10	23	2020	10	30	102
37	363	187	2020	10	23	2020	10	30	103
37	165	56	2020	10	23	2020	10	30	104
37	95	63	2020	10	23	2020	10	30	105
37	93	62	2020	10	23	2020	10	30	106
37	394	194	2020	10	23	2020	10	30	107
37	128	80	2020	10	23	2020	10	30	108
37	155	92	2020	10	23	2020	10	30	109
37	29	24	2020	10	23	2020	10	30	110
37	402	212	2020	10	23	2020	10	30	111
37	202	116	2020	10	23	2020	10	30	112
37	366	190	2020	10	23	2020	10	30	113
37	364	188	2020	10	23	2020	10	30	114
37	374	195	2020	10	23	2020	10	30	115
37	19	15	2020	10	23	2020	10	30	116
37	370	48	2020	10	23	2020	10	30	117
37	373	194	2020	10	23	2020	10	30	118
37	380	200	2020	10	23	2020	10	30	119
37	379	172	2020	10	23	2020	10	30	120
37	48	35	2020	10	23	2020	10	30	121
37	122	20	2020	10	23	2020	10	30	122
37	369	193	2020	10	23	2020	10	30	123
37	372	85	2020	10	23	2020	10	30	124
37	349	180	2020	10	23	2020	10	30	125
37	735	331	2020	10	23	2020	10	30	126
37	260	48	2020	10	23	2020	10	30	127
37	350	16	2020	10	23	2020	10	30	128
37	107	70	2020	10	23	2020	10	30	129
37	214	68	2020	10	23	2020	10	30	130
37	375	196	2020	10	23	2020	10	30	131
37	389	122	2020	10	23	2020	10	30	132
37	34	28	2020	10	23	2020	10	30	133
37	391	207	2020	10	23	2020	10	30	134
37	138	45	2020	10	23	2020	10	30	135
37	407	56	2020	10	23	2020	10	30	136
37	376	197	2020	10	23	2020	10	30	137
37	116	74	2020	10	23	2020	10	30	138
37	397	92	2020	10	23	2020	10	30	139
37	398	209	2020	10	23	2020	10	30	140
37	340	132	2020	10	23	2020	10	30	141
37	382	166	2020	10	23	2020	10	30	142
37	719	325	2020	10	23	2020	10	30	143
37	378	199	2020	10	23	2020	10	30	144
37	174	102	2020	10	23	2020	10	30	145
37	173	101	2020	10	23	2020	10	30	146
37	64	45	2020	10	23	2020	10	30	147
37	58	40	2020	10	23	2020	10	30	148
37	385	185	2020	10	23	2020	10	30	149
37	123	45	2020	10	23	2020	10	30	150
37	393	130	2020	10	23	2020	10	30	151
37	403	213	2020	10	23	2020	10	30	152
37	396	159	2020	10	23	2020	10	30	153
37	399	92	2020	10	23	2020	10	30	154
37	109	70	2020	10	23	2020	10	30	155
37	9	9	2020	10	23	2020	10	30	156
37	381	201	2020	10	23	2020	10	30	157
37	371	32	2020	10	23	2020	10	30	158
37	115	73	2020	10	23	2020	10	30	159
37	31	26	2020	10	23	2020	10	30	160
37	17	1	2020	10	23	2020	10	30	161
37	94	19	2020	10	23	2020	10	30	162
37	405	215	2020	10	23	2020	10	30	163
37	404	214	2020	10	23	2020	10	30	164
37	217	123	2020	10	23	2020	10	30	165
37	401	211	2020	10	23	2020	10	30	166
37	218	86	2020	10	23	2020	10	30	167
37	367	191	2020	10	23	2020	10	30	168
37	187	63	2020	10	23	2020	10	30	169
37	74	28	2020	10	23	2020	10	30	170
37	660	169	2020	10	23	2020	10	30	171
37	118	38	2020	10	23	2020	10	30	172
37	13	12	2020	10	23	2020	10	30	173
37	208	39	2020	10	23	2020	10	30	174
37	993	106	2020	10	23	2020	10	30	175
37	365	189	2020	10	23	2020	10	30	176
37	75	45	2020	10	23	2020	10	30	177
37	722	68	2020	10	23	2020	10	30	178
37	384	203	2020	10	23	2020	10	30	179
37	210	66	2020	10	23	2020	10	30	180
37	203	117	2020	10	23	2020	10	30	181
37	70	49	2020	10	23	2020	10	30	182
37	25	20	2020	10	23	2020	10	30	183
37	383	202	2020	10	23	2020	10	30	184
37	101	67	2020	10	23	2020	10	30	185
37	408	217	2020	10	23	2020	10	30	186
37	166	97	2020	10	23	2020	10	30	187
37	668	314	2020	10	23	2020	10	30	188
37	728	329	2020	10	23	2020	10	30	189
37	103	68	2020	10	23	2020	10	30	190
37	726	45	2020	10	23	2020	10	30	191
37	53	37	2020	10	23	2020	10	30	192
37	712	322	2020	10	23	2020	10	30	193
37	211	121	2020	10	23	2020	10	30	194
37	386	204	2020	10	23	2020	10	30	195
37	213	33	2020	10	23	2020	10	30	196
37	994	377	2020	10	23	2020	10	30	197
37	279	153	2020	10	23	2020	10	30	198
37	91	61	2020	10	23	2020	10	30	199
37	182	104	2020	10	23	2020	10	30	200
38	292	160	2020	9	4	2020	9	11	1
38	291	159	2020	9	4	2020	9	11	2
38	285	42	2020	9	4	2020	9	11	3
38	289	158	2020	9	4	2020	9	11	4
38	1	1	2020	9	4	2020	9	11	5
38	99	21	2020	9	4	2020	9	11	6
38	216	122	2020	9	4	2020	9	11	7
38	301	2	2020	9	4	2020	9	11	8
38	200	27	2020	9	4	2020	9	11	9
38	323	171	2020	9	4	2020	9	11	10
38	294	92	2020	9	4	2020	9	11	11
38	303	77	2020	9	4	2020	9	11	12
38	297	162	2020	9	4	2020	9	11	13
38	336	92	2020	9	4	2020	9	11	14
38	62	43	2020	9	4	2020	9	11	15
38	3	3	2020	9	4	2020	9	11	16
38	321	16	2020	9	4	2020	9	11	17
38	286	157	2020	9	4	2020	9	11	18
38	310	20	2020	9	4	2020	9	11	19
38	327	172	2020	9	4	2020	9	11	20
38	312	167	2020	9	4	2020	9	11	21
38	231	130	2020	9	4	2020	9	11	22
38	330	48	2020	9	4	2020	9	11	23
38	296	161	2020	9	4	2020	9	11	24
38	7	7	2020	9	4	2020	9	11	25
38	219	124	2020	9	4	2020	9	11	26
38	334	32	2020	9	4	2020	9	11	27
38	201	52	2020	9	4	2020	9	11	28
38	319	169	2020	9	4	2020	9	11	29
38	21	17	2020	9	4	2020	9	11	30
38	217	123	2020	9	4	2020	9	11	31
38	346	48	2020	9	4	2020	9	11	32
38	36	17	2020	9	4	2020	9	11	33
38	370	48	2020	9	4	2020	9	11	34
38	355	96	2020	9	4	2020	9	11	35
38	6	6	2020	9	4	2020	9	11	36
38	361	186	2020	9	4	2020	9	11	37
38	379	172	2020	9	4	2020	9	11	38
38	236	134	2020	9	4	2020	9	11	39
38	298	123	2020	9	4	2020	9	11	40
38	4	4	2020	9	4	2020	9	11	41
38	8	8	2020	9	4	2020	9	11	42
38	342	171	2020	9	4	2020	9	11	43
38	11	4	2020	9	4	2020	9	11	44
38	366	190	2020	9	4	2020	9	11	45
38	362	92	2020	9	4	2020	9	11	46
38	313	168	2020	9	4	2020	9	11	47
38	137	51	2020	9	4	2020	9	11	48
38	68	47	2020	9	4	2020	9	11	49
38	208	39	2020	9	4	2020	9	11	50
38	204	63	2020	9	4	2020	9	11	51
38	668	314	2020	9	4	2020	9	11	52
38	398	209	2020	9	4	2020	9	11	53
38	2	2	2020	9	4	2020	9	11	54
38	23	19	2020	9	4	2020	9	11	55
38	391	207	2020	9	4	2020	9	11	56
38	5	5	2020	9	4	2020	9	11	57
38	26	21	2020	9	4	2020	9	11	58
38	858	301	2020	9	4	2020	9	11	59
38	202	116	2020	9	4	2020	9	11	60
38	343	176	2020	9	4	2020	9	11	61
38	158	56	2020	9	4	2020	9	11	62
38	348	179	2020	9	4	2020	9	11	63
38	69	48	2020	9	4	2020	9	11	64
38	20	16	2020	9	4	2020	9	11	65
38	37	29	2020	9	4	2020	9	11	66
38	27	22	2020	9	4	2020	9	11	67
38	54	19	2020	9	4	2020	9	11	68
38	12	11	2020	9	4	2020	9	11	69
38	363	187	2020	9	4	2020	9	11	70
38	150	48	2020	9	4	2020	9	11	71
38	995	337	2020	9	4	2020	9	11	72
38	82	56	2020	9	4	2020	9	11	73
38	33	28	2020	9	4	2020	9	11	74
38	17	1	2020	9	4	2020	9	11	75
38	380	200	2020	9	4	2020	9	11	76
38	214	68	2020	9	4	2020	9	11	77
38	665	234	2020	9	4	2020	9	11	78
38	209	120	2020	9	4	2020	9	11	79
38	155	92	2020	9	4	2020	9	11	80
38	10	10	2020	9	4	2020	9	11	81
38	51	28	2020	9	4	2020	9	11	82
38	996	130	2020	9	4	2020	9	11	83
38	9	9	2020	9	4	2020	9	11	84
38	210	66	2020	9	4	2020	9	11	85
38	165	56	2020	9	4	2020	9	11	86
38	393	130	2020	9	4	2020	9	11	87
38	678	315	2020	9	4	2020	9	11	88
38	664	28	2020	9	4	2020	9	11	89
38	81	52	2020	9	4	2020	9	11	90
38	19	15	2020	9	4	2020	9	11	91
38	48	35	2020	9	4	2020	9	11	92
38	29	24	2020	9	4	2020	9	11	93
38	116	74	2020	9	4	2020	9	11	94
38	397	92	2020	9	4	2020	9	11	95
38	682	90	2020	9	4	2020	9	11	96
38	354	182	2020	9	4	2020	9	11	97
38	223	35	2020	9	4	2020	9	11	98
38	47	34	2020	9	4	2020	9	11	99
38	364	188	2020	9	4	2020	9	11	100
38	720	355	2020	9	4	2020	9	11	101
38	719	325	2020	9	4	2020	9	11	102
38	203	117	2020	9	4	2020	9	11	103
38	122	20	2020	9	4	2020	9	11	104
38	93	62	2020	9	4	2020	9	11	105
38	887	362	2020	9	4	2020	9	11	106
38	13	12	2020	9	4	2020	9	11	107
38	12	21	2020	9	4	2020	9	11	108
38	34	28	2020	9	4	2020	9	11	109
38	691	145	2020	9	4	2020	9	11	110
38	15	14	2020	9	4	2020	9	11	111
38	997	205	2020	9	4	2020	9	11	112
38	205	118	2020	9	4	2020	9	11	113
38	25	20	2020	9	4	2020	9	11	114
38	998	325	2020	9	4	2020	9	11	115
38	791	344	2020	9	4	2020	9	11	116
38	326	159	2020	9	4	2020	9	11	117
38	865	356	2020	9	4	2020	9	11	118
38	859	157	2020	9	4	2020	9	11	119
38	110	32	2020	9	4	2020	9	11	120
38	18	13	2020	9	4	2020	9	11	121
38	227	128	2020	9	4	2020	9	11	122
38	64	45	2020	9	4	2020	9	11	123
38	31	26	2020	9	4	2020	9	11	124
38	211	121	2020	9	4	2020	9	11	125
38	666	234	2020	9	4	2020	9	11	126
38	107	70	2020	9	4	2020	9	11	127
38	218	86	2020	9	4	2020	9	11	128
38	128	80	2020	9	4	2020	9	11	129
38	260	48	2020	9	4	2020	9	11	130
38	94	19	2020	9	4	2020	9	11	131
38	58	40	2020	9	4	2020	9	11	132
38	95	63	2020	9	4	2020	9	11	133
38	115	73	2020	9	4	2020	9	11	134
38	123	45	2020	9	4	2020	9	11	135
38	404	214	2020	9	4	2020	9	11	136
38	138	45	2020	9	4	2020	9	11	137
38	396	159	2020	9	4	2020	9	11	138
38	317	139	2020	9	4	2020	9	11	139
38	14	13	2020	9	4	2020	9	11	140
38	222	2	2020	9	4	2020	9	11	141
38	30	25	2020	9	4	2020	9	11	142
38	109	70	2020	9	4	2020	9	11	143
38	229	84	2020	9	4	2020	9	11	144
38	680	48	2020	9	4	2020	9	11	145
38	856	353	2020	9	4	2020	9	11	146
38	240	137	2020	9	4	2020	9	11	147
38	213	33	2020	9	4	2020	9	11	148
38	230	48	2020	9	4	2020	9	11	149
38	672	22	2020	9	4	2020	9	11	150
38	53	37	2020	9	4	2020	9	11	151
38	676	48	2020	9	4	2020	9	11	152
38	700	74	2020	9	4	2020	9	11	153
38	857	169	2020	9	4	2020	9	11	154
38	372	85	2020	9	4	2020	9	11	155
38	382	166	2020	9	4	2020	9	11	156
38	999	344	2020	9	4	2020	9	11	157
38	708	85	2020	9	4	2020	9	11	158
38	369	193	2020	9	4	2020	9	11	159
38	74	28	2020	9	4	2020	9	11	160
38	75	45	2020	9	4	2020	9	11	161
38	207	119	2020	9	4	2020	9	11	162
38	559	134	2020	9	4	2020	9	11	163
38	306	164	2020	9	4	2020	9	11	164
38	862	88	2020	9	4	2020	9	11	165
38	237	135	2020	9	4	2020	9	11	166
38	399	92	2020	9	4	2020	9	11	167
38	174	102	2020	9	4	2020	9	11	168
38	221	126	2020	9	4	2020	9	11	169
38	16	4	2020	9	4	2020	9	11	170
38	325	130	2020	9	4	2020	9	11	171
38	861	56	2020	9	4	2020	9	11	172
38	103	68	2020	9	4	2020	9	11	173
38	401	211	2020	9	4	2020	9	11	174
38	173	101	2020	9	4	2020	9	11	175
38	118	38	2020	9	4	2020	9	11	176
38	24	9	2020	9	4	2020	9	11	177
38	182	104	2020	9	4	2020	9	11	178
38	157	93	2020	9	4	2020	9	11	179
38	864	159	2020	9	4	2020	9	11	180
38	729	158	2020	9	4	2020	9	11	181
38	693	58	2020	9	4	2020	9	11	182
38	101	67	2020	9	4	2020	9	11	183
38	860	177	2020	9	4	2020	9	11	184
38	166	97	2020	9	4	2020	9	11	185
38	712	322	2020	9	4	2020	9	11	186
38	368	192	2020	9	4	2020	9	11	187
38	359	185	2020	9	4	2020	9	11	188
38	408	217	2020	9	4	2020	9	11	189
38	702	319	2020	9	4	2020	9	11	190
38	146	87	2020	9	4	2020	9	11	191
38	690	317	2020	9	4	2020	9	11	192
38	667	234	2020	9	4	2020	9	11	193
38	866	316	2020	9	4	2020	9	11	194
38	56	39	2020	9	4	2020	9	11	195
38	705	354	2020	9	4	2020	9	11	196
38	162	70	2020	9	4	2020	9	11	197
38	688	110	2020	9	4	2020	9	11	198
38	117	17	2020	9	4	2020	9	11	199
38	699	33	2020	9	4	2020	9	11	200
39	285	42	2020	10	16	2020	10	23	1
39	286	157	2020	10	16	2020	10	23	2
39	292	160	2020	10	16	2020	10	23	3
39	289	158	2020	10	16	2020	10	23	4
39	291	159	2020	10	16	2020	10	23	5
39	288	92	2020	10	16	2020	10	23	6
39	1	1	2020	10	16	2020	10	23	7
39	294	92	2020	10	16	2020	10	23	8
39	293	10	2020	10	16	2020	10	23	9
39	99	21	2020	10	16	2020	10	23	10
39	290	10	2020	10	16	2020	10	23	11
39	297	162	2020	10	16	2020	10	23	12
39	296	161	2020	10	16	2020	10	23	13
39	200	27	2020	10	16	2020	10	23	14
39	298	123	2020	10	16	2020	10	23	15
39	301	2	2020	10	16	2020	10	23	16
39	303	77	2020	10	16	2020	10	23	17
39	216	122	2020	10	16	2020	10	23	18
39	305	29	2020	10	16	2020	10	23	19
39	299	163	2020	10	16	2020	10	23	20
39	320	170	2020	10	16	2020	10	23	21
39	331	171	2020	10	16	2020	10	23	22
39	306	164	2020	10	16	2020	10	23	23
39	3	3	2020	10	16	2020	10	23	24
39	323	171	2020	10	16	2020	10	23	25
39	21	17	2020	10	16	2020	10	23	26
39	312	167	2020	10	16	2020	10	23	27
39	308	74	2020	10	16	2020	10	23	28
39	310	20	2020	10	16	2020	10	23	29
39	313	168	2020	10	16	2020	10	23	30
39	62	43	2020	10	16	2020	10	23	31
39	307	165	2020	10	16	2020	10	23	32
39	327	172	2020	10	16	2020	10	23	33
39	321	16	2020	10	16	2020	10	23	34
39	36	17	2020	10	16	2020	10	23	35
39	7	7	2020	10	16	2020	10	23	36
39	316	130	2020	10	16	2020	10	23	37
39	319	169	2020	10	16	2020	10	23	38
39	336	92	2020	10	16	2020	10	23	39
39	325	130	2020	10	16	2020	10	23	40
39	330	48	2020	10	16	2020	10	23	41
39	334	32	2020	10	16	2020	10	23	42
39	342	171	2020	10	16	2020	10	23	43
39	219	124	2020	10	16	2020	10	23	44
39	4	4	2020	10	16	2020	10	23	45
39	317	139	2020	10	16	2020	10	23	46
39	346	48	2020	10	16	2020	10	23	47
39	6	6	2020	10	16	2020	10	23	48
39	333	174	2020	10	16	2020	10	23	49
39	343	176	2020	10	16	2020	10	23	50
39	315	4	2020	10	16	2020	10	23	51
39	231	130	2020	10	16	2020	10	23	52
39	201	52	2020	10	16	2020	10	23	53
39	8	8	2020	10	16	2020	10	23	54
39	236	134	2020	10	16	2020	10	23	55
39	23	19	2020	10	16	2020	10	23	56
39	326	159	2020	10	16	2020	10	23	57
39	360	171	2020	10	16	2020	10	23	58
39	348	179	2020	10	16	2020	10	23	59
39	337	175	2020	10	16	2020	10	23	60
39	715	171	2020	10	16	2020	10	23	61
39	311	166	2020	10	16	2020	10	23	62
39	27	22	2020	10	16	2020	10	23	63
39	158	56	2020	10	16	2020	10	23	64
39	37	29	2020	10	16	2020	10	23	65
39	204	63	2020	10	16	2020	10	23	66
39	354	182	2020	10	16	2020	10	23	67
39	26	21	2020	10	16	2020	10	23	68
39	355	96	2020	10	16	2020	10	23	69
39	69	48	2020	10	16	2020	10	23	70
39	5	5	2020	10	16	2020	10	23	71
39	373	194	2020	10	16	2020	10	23	72
39	362	92	2020	10	16	2020	10	23	73
39	394	194	2020	10	16	2020	10	23	74
39	54	19	2020	10	16	2020	10	23	75
39	150	48	2020	10	16	2020	10	23	76
39	68	47	2020	10	16	2020	10	23	77
39	10	10	2020	10	16	2020	10	23	78
39	137	51	2020	10	16	2020	10	23	79
39	329	173	2020	10	16	2020	10	23	80
39	51	28	2020	10	16	2020	10	23	81
39	361	186	2020	10	16	2020	10	23	82
39	12	11	2020	10	16	2020	10	23	83
39	82	56	2020	10	16	2020	10	23	84
39	407	56	2020	10	16	2020	10	23	85
39	335	89	2020	10	16	2020	10	23	86
39	11	4	2020	10	16	2020	10	23	87
39	33	28	2020	10	16	2020	10	23	88
39	345	178	2020	10	16	2020	10	23	89
39	81	52	2020	10	16	2020	10	23	90
39	2	2	2020	10	16	2020	10	23	91
39	368	192	2020	10	16	2020	10	23	92
39	20	16	2020	10	16	2020	10	23	93
39	47	34	2020	10	16	2020	10	23	94
39	366	190	2020	10	16	2020	10	23	95
39	389	122	2020	10	16	2020	10	23	96
39	356	183	2020	10	16	2020	10	23	97
39	165	56	2020	10	16	2020	10	23	98
39	363	187	2020	10	16	2020	10	23	99
39	402	212	2020	10	16	2020	10	23	100
39	374	195	2020	10	16	2020	10	23	101
39	379	172	2020	10	16	2020	10	23	102
39	12	21	2020	10	16	2020	10	23	103
39	398	209	2020	10	16	2020	10	23	104
39	370	48	2020	10	16	2020	10	23	105
39	359	185	2020	10	16	2020	10	23	106
39	202	116	2020	10	16	2020	10	23	107
39	93	62	2020	10	16	2020	10	23	108
39	29	24	2020	10	16	2020	10	23	109
39	155	92	2020	10	16	2020	10	23	110
39	380	200	2020	10	16	2020	10	23	111
39	351	80	2020	10	16	2020	10	23	112
39	128	80	2020	10	16	2020	10	23	113
39	214	68	2020	10	16	2020	10	23	114
39	19	15	2020	10	16	2020	10	23	115
39	372	85	2020	10	16	2020	10	23	116
39	364	188	2020	10	16	2020	10	23	117
39	116	74	2020	10	16	2020	10	23	118
39	48	35	2020	10	16	2020	10	23	119
39	122	20	2020	10	16	2020	10	23	120
39	391	207	2020	10	16	2020	10	23	121
39	375	196	2020	10	16	2020	10	23	122
39	34	28	2020	10	16	2020	10	23	123
39	369	193	2020	10	16	2020	10	23	124
39	64	45	2020	10	16	2020	10	23	125
39	107	70	2020	10	16	2020	10	23	126
39	397	92	2020	10	16	2020	10	23	127
39	719	325	2020	10	16	2020	10	23	128
39	382	166	2020	10	16	2020	10	23	129
39	260	48	2020	10	16	2020	10	23	130
39	138	45	2020	10	16	2020	10	23	131
39	399	92	2020	10	16	2020	10	23	132
39	403	213	2020	10	16	2020	10	23	133
39	95	63	2020	10	16	2020	10	23	134
39	217	123	2020	10	16	2020	10	23	135
39	393	130	2020	10	16	2020	10	23	136
39	993	106	2020	10	16	2020	10	23	137
39	173	101	2020	10	16	2020	10	23	138
39	9	9	2020	10	16	2020	10	23	139
39	123	45	2020	10	16	2020	10	23	140
39	668	314	2020	10	16	2020	10	23	141
39	174	102	2020	10	16	2020	10	23	142
39	58	40	2020	10	16	2020	10	23	143
39	208	39	2020	10	16	2020	10	23	144
39	109	70	2020	10	16	2020	10	23	145
39	218	86	2020	10	16	2020	10	23	146
39	17	1	2020	10	16	2020	10	23	147
39	115	73	2020	10	16	2020	10	23	148
39	722	68	2020	10	16	2020	10	23	149
39	94	19	2020	10	16	2020	10	23	150
39	75	45	2020	10	16	2020	10	23	151
39	660	169	2020	10	16	2020	10	23	152
39	381	201	2020	10	16	2020	10	23	153
39	31	26	2020	10	16	2020	10	23	154
39	25	20	2020	10	16	2020	10	23	155
39	13	12	2020	10	16	2020	10	23	156
39	678	315	2020	10	16	2020	10	23	157
39	118	38	2020	10	16	2020	10	23	158
39	203	117	2020	10	16	2020	10	23	159
39	210	66	2020	10	16	2020	10	23	160
39	376	197	2020	10	16	2020	10	23	161
39	385	185	2020	10	16	2020	10	23	162
39	74	28	2020	10	16	2020	10	23	163
39	717	171	2020	10	16	2020	10	23	164
39	1000	91	2020	10	16	2020	10	23	165
39	720	326	2020	10	16	2020	10	23	166
39	70	49	2020	10	16	2020	10	23	167
39	396	159	2020	10	16	2020	10	23	168
39	404	214	2020	10	16	2020	10	23	169
39	718	171	2020	10	16	2020	10	23	170
39	401	211	2020	10	16	2020	10	23	171
39	211	121	2020	10	16	2020	10	23	172
39	371	32	2020	10	16	2020	10	23	173
39	213	33	2020	10	16	2020	10	23	174
39	103	68	2020	10	16	2020	10	23	175
39	101	67	2020	10	16	2020	10	23	176
39	408	217	2020	10	16	2020	10	23	177
39	716	324	2020	10	16	2020	10	23	178
39	166	97	2020	10	16	2020	10	23	179
39	726	45	2020	10	16	2020	10	23	180
39	728	329	2020	10	16	2020	10	23	181
39	727	45	2020	10	16	2020	10	23	182
39	209	120	2020	10	16	2020	10	23	183
39	53	37	2020	10	16	2020	10	23	184
39	712	322	2020	10	16	2020	10	23	185
39	14	13	2020	10	16	2020	10	23	186
39	729	158	2020	10	16	2020	10	23	187
39	700	74	2020	10	16	2020	10	23	188
39	91	61	2020	10	16	2020	10	23	189
39	18	13	2020	10	16	2020	10	23	190
39	182	104	2020	10	16	2020	10	23	191
39	1001	378	2020	10	16	2020	10	23	192
39	240	137	2020	10	16	2020	10	23	193
39	725	328	2020	10	16	2020	10	23	194
39	279	153	2020	10	16	2020	10	23	195
39	110	32	2020	10	16	2020	10	23	196
39	146	87	2020	10	16	2020	10	23	197
39	229	84	2020	10	16	2020	10	23	198
39	117	17	2020	10	16	2020	10	23	199
39	731	330	2020	10	16	2020	10	23	200
40	7	7	2020	1	17	2020	1	24	1
40	5	5	2020	1	17	2020	1	24	2
40	20	16	2020	1	17	2020	1	24	3
40	31	26	2020	1	17	2020	1	24	4
40	43	10	2020	1	17	2020	1	24	5
40	29	24	2020	1	17	2020	1	24	6
40	1	1	2020	1	17	2020	1	24	7
40	19	15	2020	1	17	2020	1	24	8
40	12	11	2020	1	17	2020	1	24	9
40	4	4	2020	1	17	2020	1	24	10
40	27	22	2020	1	17	2020	1	24	11
40	23	19	2020	1	17	2020	1	24	12
40	34	28	2020	1	17	2020	1	24	13
40	518	273	2020	1	17	2020	1	24	14
40	56	39	2020	1	17	2020	1	24	15
40	55	38	2020	1	17	2020	1	24	16
40	21	17	2020	1	17	2020	1	24	17
40	37	29	2020	1	17	2020	1	24	18
40	519	158	2020	1	17	2020	1	24	19
40	97	64	2020	1	17	2020	1	24	20
40	515	64	2020	1	17	2020	1	24	21
40	553	26	2020	1	17	2020	1	24	22
40	33	28	2020	1	17	2020	1	24	23
40	26	21	2020	1	17	2020	1	24	24
40	60	41	2020	1	17	2020	1	24	25
40	1002	26	2020	1	17	2020	1	24	26
40	89	60	2020	1	17	2020	1	24	27
40	49	36	2020	1	17	2020	1	24	28
40	58	40	2020	1	17	2020	1	24	29
40	1003	26	2020	1	17	2020	1	24	30
40	59	13	2020	1	17	2020	1	24	31
40	1004	26	2020	1	17	2020	1	24	32
40	102	27	2020	1	17	2020	1	24	33
40	48	35	2020	1	17	2020	1	24	34
40	36	17	2020	1	17	2020	1	24	35
40	113	54	2020	1	17	2020	1	24	36
40	144	86	2020	1	17	2020	1	24	37
40	1005	273	2020	1	17	2020	1	24	38
40	99	21	2020	1	17	2020	1	24	39
40	132	32	2020	1	17	2020	1	24	40
40	79	55	2020	1	17	2020	1	24	41
40	53	37	2020	1	17	2020	1	24	42
40	9	9	2020	1	17	2020	1	24	43
40	1006	26	2020	1	17	2020	1	24	44
40	106	66	2020	1	17	2020	1	24	45
40	133	82	2020	1	17	2020	1	24	46
40	82	56	2020	1	17	2020	1	24	47
40	517	272	2020	1	17	2020	1	24	48
40	23	273	2020	1	17	2020	1	24	49
40	64	45	2020	1	17	2020	1	24	50
40	54	19	2020	1	17	2020	1	24	51
40	1007	26	2020	1	17	2020	1	24	52
40	108	48	2020	1	17	2020	1	24	53
40	83	57	2020	1	17	2020	1	24	54
40	120	76	2020	1	17	2020	1	24	55
40	52	20	2020	1	17	2020	1	24	56
40	1008	26	2020	1	17	2020	1	24	57
40	527	50	2020	1	17	2020	1	24	58
40	3	3	2020	1	17	2020	1	24	59
40	75	45	2020	1	17	2020	1	24	60
40	69	48	2020	1	17	2020	1	24	61
40	1009	273	2020	1	17	2020	1	24	62
40	125	78	2020	1	17	2020	1	24	63
40	525	53	2020	1	17	2020	1	24	64
40	528	45	2020	1	17	2020	1	24	65
40	521	78	2020	1	17	2020	1	24	66
40	70	49	2020	1	17	2020	1	24	67
40	47	34	2020	1	17	2020	1	24	68
40	1010	273	2020	1	17	2020	1	24	69
40	1011	26	2020	1	17	2020	1	24	70
40	1012	273	2020	1	17	2020	1	24	71
40	1013	26	2020	1	17	2020	1	24	72
40	1014	26	2020	1	17	2020	1	24	73
40	1015	26	2020	1	17	2020	1	24	74
40	87	59	2020	1	17	2020	1	24	75
40	572	291	2020	1	17	2020	1	24	76
40	67	1	2020	1	17	2020	1	24	77
40	121	20	2020	1	17	2020	1	24	78
40	544	280	2020	1	17	2020	1	24	79
40	118	38	2020	1	17	2020	1	24	80
40	141	84	2020	1	17	2020	1	24	81
40	50	5	2020	1	17	2020	1	24	82
40	1016	26	2020	1	17	2020	1	24	83
40	147	13	2020	1	17	2020	1	24	84
40	526	186	2020	1	17	2020	1	24	85
40	536	56	2020	1	17	2020	1	24	86
40	95	63	2020	1	17	2020	1	24	87
40	51	28	2020	1	17	2020	1	24	88
40	523	27	2020	1	17	2020	1	24	89
40	1017	26	2020	1	17	2020	1	24	90
40	1018	273	2020	1	17	2020	1	24	91
40	74	28	2020	1	17	2020	1	24	92
40	160	89	2020	1	17	2020	1	24	93
40	1019	26	2020	1	17	2020	1	24	94
40	114	19	2020	1	17	2020	1	24	95
40	81	52	2020	1	17	2020	1	24	96
40	535	27	2020	1	17	2020	1	24	97
40	1020	273	2020	1	17	2020	1	24	98
40	135	20	2020	1	17	2020	1	24	99
40	1021	26	2020	1	17	2020	1	24	100
40	529	196	2020	1	17	2020	1	24	101
40	1022	26	2020	1	17	2020	1	24	102
40	537	277	2020	1	17	2020	1	24	103
40	119	75	2020	1	17	2020	1	24	104
40	531	276	2020	1	17	2020	1	24	105
40	104	69	2020	1	17	2020	1	24	106
40	91	61	2020	1	17	2020	1	24	107
40	590	106	2020	1	17	2020	1	24	108
40	530	111	2020	1	17	2020	1	24	109
40	146	87	2020	1	17	2020	1	24	110
40	103	68	2020	1	17	2020	1	24	111
40	578	38	2020	1	17	2020	1	24	112
40	1023	26	2020	1	17	2020	1	24	113
40	532	55	2020	1	17	2020	1	24	114
40	1024	38	2020	1	17	2020	1	24	115
40	163	95	2020	1	17	2020	1	24	116
40	139	60	2020	1	17	2020	1	24	117
40	1025	273	2020	1	17	2020	1	24	118
40	145	19	2020	1	17	2020	1	24	119
40	539	278	2020	1	17	2020	1	24	120
40	175	21	2020	1	17	2020	1	24	121
40	117	17	2020	1	17	2020	1	24	122
40	191	110	2020	1	17	2020	1	24	123
40	93	62	2020	1	17	2020	1	24	124
40	541	279	2020	1	17	2020	1	24	125
40	563	110	2020	1	17	2020	1	24	126
40	150	48	2020	1	17	2020	1	24	127
40	561	285	2020	1	17	2020	1	24	128
40	545	281	2020	1	17	2020	1	24	129
40	543	15	2020	1	17	2020	1	24	130
40	131	2	2020	1	17	2020	1	24	131
40	565	287	2020	1	17	2020	1	24	132
40	546	123	2020	1	17	2020	1	24	133
40	94	19	2020	1	17	2020	1	24	134
40	105	7	2020	1	17	2020	1	24	135
40	111	71	2020	1	17	2020	1	24	136
40	540	40	2020	1	17	2020	1	24	137
40	115	73	2020	1	17	2020	1	24	138
40	1026	273	2020	1	17	2020	1	24	139
40	13	12	2020	1	17	2020	1	24	140
40	542	112	2020	1	17	2020	1	24	141
40	123	45	2020	1	17	2020	1	24	142
40	282	74	2020	1	17	2020	1	24	143
40	156	37	2020	1	17	2020	1	24	144
40	548	120	2020	1	17	2020	1	24	145
40	179	105	2020	1	17	2020	1	24	146
40	601	64	2020	1	17	2020	1	24	147
40	1027	273	2020	1	17	2020	1	24	148
40	12	21	2020	1	17	2020	1	24	149
40	558	278	2020	1	17	2020	1	24	150
40	552	111	2020	1	17	2020	1	24	151
40	165	56	2020	1	17	2020	1	24	152
40	168	89	2020	1	17	2020	1	24	153
40	153	51	2020	1	17	2020	1	24	154
40	1028	141	2020	1	17	2020	1	24	155
40	109	70	2020	1	17	2020	1	24	156
40	1029	273	2020	1	17	2020	1	24	157
40	557	154	2020	1	17	2020	1	24	158
40	101	67	2020	1	17	2020	1	24	159
40	559	134	2020	1	17	2020	1	24	160
40	128	80	2020	1	17	2020	1	24	161
40	549	112	2020	1	17	2020	1	24	162
40	130	67	2020	1	17	2020	1	24	163
40	159	94	2020	1	17	2020	1	24	164
40	729	158	2020	1	17	2020	1	24	165
40	140	33	2020	1	17	2020	1	24	166
40	1030	379	2020	1	17	2020	1	24	167
40	1031	380	2020	1	17	2020	1	24	168
40	187	63	2020	1	17	2020	1	24	169
40	185	22	2020	1	17	2020	1	24	170
40	138	45	2020	1	17	2020	1	24	171
40	534	28	2020	1	17	2020	1	24	172
40	154	28	2020	1	17	2020	1	24	173
40	569	289	2020	1	17	2020	1	24	174
40	580	60	2020	1	17	2020	1	24	175
40	586	41	2020	1	17	2020	1	24	176
40	107	70	2020	1	17	2020	1	24	177
40	575	56	2020	1	17	2020	1	24	178
40	593	296	2020	1	17	2020	1	24	179
40	584	294	2020	1	17	2020	1	24	180
40	574	27	2020	1	17	2020	1	24	181
40	571	290	2020	1	17	2020	1	24	182
40	124	77	2020	1	17	2020	1	24	183
40	566	120	2020	1	17	2020	1	24	184
40	573	292	2020	1	17	2020	1	24	185
40	158	56	2020	1	17	2020	1	24	186
40	594	54	2020	1	17	2020	1	24	187
40	176	103	2020	1	17	2020	1	24	188
40	184	19	2020	1	17	2020	1	24	189
40	183	29	2020	1	17	2020	1	24	190
40	576	196	2020	1	17	2020	1	24	191
40	188	107	2020	1	17	2020	1	24	192
40	568	139	2020	1	17	2020	1	24	193
40	581	123	2020	1	17	2020	1	24	194
40	570	20	2020	1	17	2020	1	24	195
40	583	293	2020	1	17	2020	1	24	196
40	181	106	2020	1	17	2020	1	24	197
40	162	70	2020	1	17	2020	1	24	198
40	173	101	2020	1	17	2020	1	24	199
40	178	98	2020	1	17	2020	1	24	200
41	1	1	2020	3	20	2020	3	27	1
41	5	5	2020	3	20	2020	3	27	2
41	7	7	2020	3	20	2020	3	27	3
41	4	4	2020	3	20	2020	3	27	4
41	3	3	2020	3	20	2020	3	27	5
41	17	1	2020	3	20	2020	3	27	6
41	6	6	2020	3	20	2020	3	27	7
41	9	9	2020	3	20	2020	3	27	8
41	10	10	2020	3	20	2020	3	27	9
41	41	1	2020	3	20	2020	3	27	10
41	12	11	2020	3	20	2020	3	27	11
41	14	13	2020	3	20	2020	3	27	12
41	20	16	2020	3	20	2020	3	27	13
41	25	20	2020	3	20	2020	3	27	14
41	19	15	2020	3	20	2020	3	27	15
41	13	12	2020	3	20	2020	3	27	16
41	8	8	2020	3	20	2020	3	27	17
41	67	1	2020	3	20	2020	3	27	18
41	15	14	2020	3	20	2020	3	27	19
41	21	17	2020	3	20	2020	3	27	20
41	1032	1	2020	3	20	2020	3	27	21
41	35	13	2020	3	20	2020	3	27	22
41	23	19	2020	3	20	2020	3	27	23
41	180	1	2020	3	20	2020	3	27	24
41	31	26	2020	3	20	2020	3	27	25
41	44	20	2020	3	20	2020	3	27	26
41	1033	1	2020	3	20	2020	3	27	27
41	1034	1	2020	3	20	2020	3	27	28
41	92	1	2020	3	20	2020	3	27	29
41	38	13	2020	3	20	2020	3	27	30
41	26	21	2020	3	20	2020	3	27	31
41	27	22	2020	3	20	2020	3	27	32
41	52	20	2020	3	20	2020	3	27	33
41	39	13	2020	3	20	2020	3	27	34
41	1035	1	2020	3	20	2020	3	27	35
41	1036	1	2020	3	20	2020	3	27	36
41	1037	1	2020	3	20	2020	3	27	37
41	43	10	2020	3	20	2020	3	27	38
41	16	4	2020	3	20	2020	3	27	39
41	34	28	2020	3	20	2020	3	27	40
41	33	28	2020	3	20	2020	3	27	41
41	29	24	2020	3	20	2020	3	27	42
41	36	17	2020	3	20	2020	3	27	43
41	37	29	2020	3	20	2020	3	27	44
41	30	25	2020	3	20	2020	3	27	45
41	49	36	2020	3	20	2020	3	27	46
41	59	13	2020	3	20	2020	3	27	47
41	65	13	2020	3	20	2020	3	27	48
41	55	38	2020	3	20	2020	3	27	49
41	66	46	2020	3	20	2020	3	27	50
41	1038	1	2020	3	20	2020	3	27	51
41	45	32	2020	3	20	2020	3	27	52
41	60	41	2020	3	20	2020	3	27	53
41	85	28	2020	3	20	2020	3	27	54
41	56	39	2020	3	20	2020	3	27	55
41	50	5	2020	3	20	2020	3	27	56
41	24	9	2020	3	20	2020	3	27	57
41	76	52	2020	3	20	2020	3	27	58
41	18	13	2020	3	20	2020	3	27	59
41	48	35	2020	3	20	2020	3	27	60
41	122	20	2020	3	20	2020	3	27	61
41	51	28	2020	3	20	2020	3	27	62
41	86	50	2020	3	20	2020	3	27	63
41	54	19	2020	3	20	2020	3	27	64
41	61	42	2020	3	20	2020	3	27	65
41	22	18	2020	3	20	2020	3	27	66
41	63	44	2020	3	20	2020	3	27	67
41	1039	1	2020	3	20	2020	3	27	68
41	72	50	2020	3	20	2020	3	27	69
41	40	30	2020	3	20	2020	3	27	70
41	53	37	2020	3	20	2020	3	27	71
41	64	45	2020	3	20	2020	3	27	72
41	58	40	2020	3	20	2020	3	27	73
41	135	20	2020	3	20	2020	3	27	74
41	47	34	2020	3	20	2020	3	27	75
41	69	48	2020	3	20	2020	3	27	76
41	79	55	2020	3	20	2020	3	27	77
41	70	49	2020	3	20	2020	3	27	78
41	89	60	2020	3	20	2020	3	27	79
41	57	5	2020	3	20	2020	3	27	80
41	78	54	2020	3	20	2020	3	27	81
41	112	72	2020	3	20	2020	3	27	82
41	90	61	2020	3	20	2020	3	27	83
41	88	10	2020	3	20	2020	3	27	84
41	75	45	2020	3	20	2020	3	27	85
41	74	28	2020	3	20	2020	3	27	86
41	1040	20	2020	3	20	2020	3	27	87
41	1041	20	2020	3	20	2020	3	27	88
41	149	89	2020	3	20	2020	3	27	89
41	96	50	2020	3	20	2020	3	27	90
41	77	53	2020	3	20	2020	3	27	91
41	82	56	2020	3	20	2020	3	27	92
41	105	7	2020	3	20	2020	3	27	93
41	83	57	2020	3	20	2020	3	27	94
41	87	59	2020	3	20	2020	3	27	95
41	81	52	2020	3	20	2020	3	27	96
41	144	86	2020	3	20	2020	3	27	97
41	100	66	2020	3	20	2020	3	27	98
41	172	13	2020	3	20	2020	3	27	99
41	71	9	2020	3	20	2020	3	27	100
41	91	61	2020	3	20	2020	3	27	101
41	94	19	2020	3	20	2020	3	27	102
41	1042	20	2020	3	20	2020	3	27	103
41	99	21	2020	3	20	2020	3	27	104
41	12	21	2020	3	20	2020	3	27	105
41	113	54	2020	3	20	2020	3	27	106
41	97	64	2020	3	20	2020	3	27	107
41	95	63	2020	3	20	2020	3	27	108
41	106	66	2020	3	20	2020	3	27	109
41	84	58	2020	3	20	2020	3	27	110
41	93	62	2020	3	20	2020	3	27	111
41	124	77	2020	3	20	2020	3	27	112
41	136	13	2020	3	20	2020	3	27	113
41	126	79	2020	3	20	2020	3	27	114
41	125	78	2020	3	20	2020	3	27	115
41	103	68	2020	3	20	2020	3	27	116
41	102	27	2020	3	20	2020	3	27	117
41	114	19	2020	3	20	2020	3	27	118
41	120	76	2020	3	20	2020	3	27	119
41	148	88	2020	3	20	2020	3	27	120
41	101	67	2020	3	20	2020	3	27	121
41	121	20	2020	3	20	2020	3	27	122
41	111	71	2020	3	20	2020	3	27	123
41	108	48	2020	3	20	2020	3	27	124
41	147	13	2020	3	20	2020	3	27	125
41	104	69	2020	3	20	2020	3	27	126
41	119	75	2020	3	20	2020	3	27	127
41	133	82	2020	3	20	2020	3	27	128
41	109	70	2020	3	20	2020	3	27	129
41	107	70	2020	3	20	2020	3	27	130
41	117	17	2020	3	20	2020	3	27	131
41	143	85	2020	3	20	2020	3	27	132
41	115	73	2020	3	20	2020	3	27	133
41	1043	20	2020	3	20	2020	3	27	134
41	141	84	2020	3	20	2020	3	27	135
41	132	32	2020	3	20	2020	3	27	136
41	1044	50	2020	3	20	2020	3	27	137
41	118	38	2020	3	20	2020	3	27	138
41	139	60	2020	3	20	2020	3	27	139
41	145	19	2020	3	20	2020	3	27	140
41	128	80	2020	3	20	2020	3	27	141
41	146	87	2020	3	20	2020	3	27	142
41	776	84	2020	3	20	2020	3	27	143
41	150	48	2020	3	20	2020	3	27	144
41	123	45	2020	3	20	2020	3	27	145
41	130	67	2020	3	20	2020	3	27	146
41	161	32	2020	3	20	2020	3	27	147
41	129	81	2020	3	20	2020	3	27	148
41	1045	13	2020	3	20	2020	3	27	149
41	160	89	2020	3	20	2020	3	27	150
41	165	56	2020	3	20	2020	3	27	151
41	162	70	2020	3	20	2020	3	27	152
41	1046	50	2020	3	20	2020	3	27	153
41	154	28	2020	3	20	2020	3	27	154
41	163	95	2020	3	20	2020	3	27	155
41	138	45	2020	3	20	2020	3	27	156
41	155	92	2020	3	20	2020	3	27	157
41	783	299	2020	3	20	2020	3	27	158
41	131	2	2020	3	20	2020	3	27	159
41	1047	50	2020	3	20	2020	3	27	160
41	784	1	2020	3	20	2020	3	27	161
41	158	56	2020	3	20	2020	3	27	162
41	1048	20	2020	3	20	2020	3	27	163
41	763	158	2020	3	20	2020	3	27	164
41	191	110	2020	3	20	2020	3	27	165
41	175	21	2020	3	20	2020	3	27	166
41	166	97	2020	3	20	2020	3	27	167
41	789	1	2020	3	20	2020	3	27	168
41	194	112	2020	3	20	2020	3	27	169
41	523	27	2020	3	20	2020	3	27	170
41	159	94	2020	3	20	2020	3	27	171
41	62	43	2020	3	20	2020	3	27	172
41	168	89	2020	3	20	2020	3	27	173
41	140	33	2020	3	20	2020	3	27	174
41	164	96	2020	3	20	2020	3	27	175
41	153	51	2020	3	20	2020	3	27	176
41	156	37	2020	3	20	2020	3	27	177
41	174	102	2020	3	20	2020	3	27	178
41	179	105	2020	3	20	2020	3	27	179
41	184	19	2020	3	20	2020	3	27	180
41	765	64	2020	3	20	2020	3	27	181
41	170	99	2020	3	20	2020	3	27	182
41	1049	381	2020	3	20	2020	3	27	183
41	1050	13	2020	3	20	2020	3	27	184
41	176	103	2020	3	20	2020	3	27	185
41	157	93	2020	3	20	2020	3	27	186
41	181	106	2020	3	20	2020	3	27	187
41	183	29	2020	3	20	2020	3	27	188
41	196	50	2020	3	20	2020	3	27	189
41	177	104	2020	3	20	2020	3	27	190
41	1051	359	2020	3	20	2020	3	27	191
41	178	98	2020	3	20	2020	3	27	192
41	187	63	2020	3	20	2020	3	27	193
41	173	101	2020	3	20	2020	3	27	194
41	188	107	2020	3	20	2020	3	27	195
41	1052	382	2020	3	20	2020	3	27	196
41	1053	13	2020	3	20	2020	3	27	197
41	185	22	2020	3	20	2020	3	27	198
41	192	70	2020	3	20	2020	3	27	199
41	1054	13	2020	3	20	2020	3	27	200
42	1	1	2020	2	28	2020	3	6	1
42	5	5	2020	2	28	2020	3	6	2
42	7	7	2020	2	28	2020	3	6	3
42	4	4	2020	2	28	2020	3	6	4
42	10	10	2020	2	28	2020	3	6	5
42	39	13	2020	2	28	2020	3	6	6
42	35	13	2020	2	28	2020	3	6	7
42	20	16	2020	2	28	2020	3	6	8
42	38	13	2020	2	28	2020	3	6	9
42	9	9	2020	2	28	2020	3	6	10
42	12	11	2020	2	28	2020	3	6	11
42	19	15	2020	2	28	2020	3	6	12
42	76	52	2020	2	28	2020	3	6	13
42	65	13	2020	2	28	2020	3	6	14
42	59	13	2020	2	28	2020	3	6	15
42	85	28	2020	2	28	2020	3	6	16
42	23	19	2020	2	28	2020	3	6	17
42	43	10	2020	2	28	2020	3	6	18
42	29	24	2020	2	28	2020	3	6	19
42	21	17	2020	2	28	2020	3	6	20
42	34	28	2020	2	28	2020	3	6	21
42	27	22	2020	2	28	2020	3	6	22
42	31	26	2020	2	28	2020	3	6	23
42	41	1	2020	2	28	2020	3	6	24
42	3	3	2020	2	28	2020	3	6	25
42	8	8	2020	2	28	2020	3	6	26
42	13	12	2020	2	28	2020	3	6	27
42	26	21	2020	2	28	2020	3	6	28
42	172	13	2020	2	28	2020	3	6	29
42	33	28	2020	2	28	2020	3	6	30
42	6	6	2020	2	28	2020	3	6	31
42	18	13	2020	2	28	2020	3	6	32
42	25	20	2020	2	28	2020	3	6	33
42	36	17	2020	2	28	2020	3	6	34
42	55	38	2020	2	28	2020	3	6	35
42	37	29	2020	2	28	2020	3	6	36
42	16	4	2020	2	28	2020	3	6	37
42	14	13	2020	2	28	2020	3	6	38
42	49	36	2020	2	28	2020	3	6	39
42	56	39	2020	2	28	2020	3	6	40
42	60	41	2020	2	28	2020	3	6	41
42	66	46	2020	2	28	2020	3	6	42
42	52	20	2020	2	28	2020	3	6	43
42	1045	13	2020	2	28	2020	3	6	44
42	1053	13	2020	2	28	2020	3	6	45
42	1055	383	2020	2	28	2020	3	6	46
42	50	5	2020	2	28	2020	3	6	47
42	53	37	2020	2	28	2020	3	6	48
42	1056	50	2020	2	28	2020	3	6	49
42	88	10	2020	2	28	2020	3	6	50
42	48	35	2020	2	28	2020	3	6	51
42	136	13	2020	2	28	2020	3	6	52
42	79	55	2020	2	28	2020	3	6	53
42	149	89	2020	2	28	2020	3	6	54
42	1054	13	2020	2	28	2020	3	6	55
42	763	158	2020	2	28	2020	3	6	56
42	1057	13	2020	2	28	2020	3	6	57
42	63	44	2020	2	28	2020	3	6	58
42	30	25	2020	2	28	2020	3	6	59
42	1058	13	2020	2	28	2020	3	6	60
42	54	19	2020	2	28	2020	3	6	61
42	64	45	2020	2	28	2020	3	6	62
42	1050	13	2020	2	28	2020	3	6	63
42	100	66	2020	2	28	2020	3	6	64
42	1059	110	2020	2	28	2020	3	6	65
42	1060	13	2020	2	28	2020	3	6	66
42	58	40	2020	2	28	2020	3	6	67
42	89	60	2020	2	28	2020	3	6	68
42	1061	13	2020	2	28	2020	3	6	69
42	1062	13	2020	2	28	2020	3	6	70
42	125	78	2020	2	28	2020	3	6	71
42	70	49	2020	2	28	2020	3	6	72
42	90	61	2020	2	28	2020	3	6	73
42	113	54	2020	2	28	2020	3	6	74
42	51	28	2020	2	28	2020	3	6	75
42	83	57	2020	2	28	2020	3	6	76
42	191	110	2020	2	28	2020	3	6	77
42	77	53	2020	2	28	2020	3	6	78
42	75	45	2020	2	28	2020	3	6	79
42	81	52	2020	2	28	2020	3	6	80
42	1063	337	2020	2	28	2020	3	6	81
42	82	56	2020	2	28	2020	3	6	82
42	61	42	2020	2	28	2020	3	6	83
42	764	158	2020	2	28	2020	3	6	84
42	121	20	2020	2	28	2020	3	6	85
42	74	28	2020	2	28	2020	3	6	86
42	45	32	2020	2	28	2020	3	6	87
42	132	32	2020	2	28	2020	3	6	88
42	765	64	2020	2	28	2020	3	6	89
42	97	64	2020	2	28	2020	3	6	90
42	47	34	2020	2	28	2020	3	6	91
42	106	66	2020	2	28	2020	3	6	92
42	120	76	2020	2	28	2020	3	6	93
42	141	84	2020	2	28	2020	3	6	94
42	133	82	2020	2	28	2020	3	6	95
42	147	13	2020	2	28	2020	3	6	96
42	102	27	2020	2	28	2020	3	6	97
42	69	48	2020	2	28	2020	3	6	98
42	1064	13	2020	2	28	2020	3	6	99
42	99	21	2020	2	28	2020	3	6	100
42	105	7	2020	2	28	2020	3	6	101
42	12	21	2020	2	28	2020	3	6	102
42	95	63	2020	2	28	2020	3	6	103
42	1065	13	2020	2	28	2020	3	6	104
42	143	85	2020	2	28	2020	3	6	105
42	1066	110	2020	2	28	2020	3	6	106
42	91	61	2020	2	28	2020	3	6	107
42	163	95	2020	2	28	2020	3	6	108
42	144	86	2020	2	28	2020	3	6	109
42	87	59	2020	2	28	2020	3	6	110
42	108	48	2020	2	28	2020	3	6	111
42	135	20	2020	2	28	2020	3	6	112
42	519	158	2020	2	28	2020	3	6	113
42	114	19	2020	2	28	2020	3	6	114
42	111	71	2020	2	28	2020	3	6	115
42	523	27	2020	2	28	2020	3	6	116
42	119	75	2020	2	28	2020	3	6	117
42	103	68	2020	2	28	2020	3	6	118
42	67	1	2020	2	28	2020	3	6	119
42	160	89	2020	2	28	2020	3	6	120
42	93	62	2020	2	28	2020	3	6	121
42	776	84	2020	2	28	2020	3	6	122
42	1067	110	2020	2	28	2020	3	6	123
42	775	283	2020	2	28	2020	3	6	124
42	563	110	2020	2	28	2020	3	6	125
42	94	19	2020	2	28	2020	3	6	126
42	515	64	2020	2	28	2020	3	6	127
42	139	60	2020	2	28	2020	3	6	128
42	117	17	2020	2	28	2020	3	6	129
42	115	73	2020	2	28	2020	3	6	130
42	118	38	2020	2	28	2020	3	6	131
42	517	272	2020	2	28	2020	3	6	132
42	521	78	2020	2	28	2020	3	6	133
42	145	19	2020	2	28	2020	3	6	134
42	782	196	2020	2	28	2020	3	6	135
42	123	45	2020	2	28	2020	3	6	136
42	104	69	2020	2	28	2020	3	6	137
42	152	91	2020	2	28	2020	3	6	138
42	101	67	2020	2	28	2020	3	6	139
42	128	80	2020	2	28	2020	3	6	140
42	729	158	2020	2	28	2020	3	6	141
42	154	28	2020	2	28	2020	3	6	142
42	554	44	2020	2	28	2020	3	6	143
42	528	45	2020	2	28	2020	3	6	144
42	766	158	2020	2	28	2020	3	6	145
42	131	2	2020	2	28	2020	3	6	146
42	175	21	2020	2	28	2020	3	6	147
42	194	112	2020	2	28	2020	3	6	148
42	168	89	2020	2	28	2020	3	6	149
42	150	48	2020	2	28	2020	3	6	150
42	1068	302	2020	2	28	2020	3	6	151
42	532	55	2020	2	28	2020	3	6	152
42	778	106	2020	2	28	2020	3	6	153
42	109	70	2020	2	28	2020	3	6	154
42	165	56	2020	2	28	2020	3	6	155
42	107	70	2020	2	28	2020	3	6	156
42	530	111	2020	2	28	2020	3	6	157
42	124	77	2020	2	28	2020	3	6	158
42	138	45	2020	2	28	2020	3	6	159
42	156	37	2020	2	28	2020	3	6	160
42	159	94	2020	2	28	2020	3	6	161
42	557	154	2020	2	28	2020	3	6	162
42	146	87	2020	2	28	2020	3	6	163
42	185	22	2020	2	28	2020	3	6	164
42	535	27	2020	2	28	2020	3	6	165
42	526	186	2020	2	28	2020	3	6	166
42	529	196	2020	2	28	2020	3	6	167
42	153	51	2020	2	28	2020	3	6	168
42	527	50	2020	2	28	2020	3	6	169
42	181	106	2020	2	28	2020	3	6	170
42	134	83	2020	2	28	2020	3	6	171
42	130	67	2020	2	28	2020	3	6	172
42	158	56	2020	2	28	2020	3	6	173
42	169	98	2020	2	28	2020	3	6	174
42	783	299	2020	2	28	2020	3	6	175
42	187	63	2020	2	28	2020	3	6	176
42	547	282	2020	2	28	2020	3	6	177
42	155	92	2020	2	28	2020	3	6	178
42	531	276	2020	2	28	2020	3	6	179
42	24	9	2020	2	28	2020	3	6	180
42	781	24	2020	2	28	2020	3	6	181
42	769	158	2020	2	28	2020	3	6	182
42	140	33	2020	2	28	2020	3	6	183
42	1069	347	2020	2	28	2020	3	6	184
42	1070	384	2020	2	28	2020	3	6	185
42	540	40	2020	2	28	2020	3	6	186
42	174	102	2020	2	28	2020	3	6	187
42	184	19	2020	2	28	2020	3	6	188
42	570	20	2020	2	28	2020	3	6	189
42	784	1	2020	2	28	2020	3	6	190
42	556	234	2020	2	28	2020	3	6	191
42	539	278	2020	2	28	2020	3	6	192
42	179	105	2020	2	28	2020	3	6	193
42	552	111	2020	2	28	2020	3	6	194
42	544	280	2020	2	28	2020	3	6	195
42	549	112	2020	2	28	2020	3	6	196
42	534	28	2020	2	28	2020	3	6	197
42	199	115	2020	2	28	2020	3	6	198
42	162	70	2020	2	28	2020	3	6	199
42	177	104	2020	2	28	2020	3	6	200
43	1	1	2020	3	27	2020	4	3	1
43	4	4	2020	3	27	2020	4	3	2
43	3	3	2020	3	27	2020	4	3	3
43	5	5	2020	3	27	2020	4	3	4
43	7	7	2020	3	27	2020	4	3	5
43	6	6	2020	3	27	2020	4	3	6
43	11	4	2020	3	27	2020	4	3	7
43	9	9	2020	3	27	2020	4	3	8
43	10	10	2020	3	27	2020	4	3	9
43	8	8	2020	3	27	2020	4	3	10
43	14	13	2020	3	27	2020	4	3	11
43	16	4	2020	3	27	2020	4	3	12
43	12	11	2020	3	27	2020	4	3	13
43	17	1	2020	3	27	2020	4	3	14
43	13	12	2020	3	27	2020	4	3	15
43	19	15	2020	3	27	2020	4	3	16
43	15	14	2020	3	27	2020	4	3	17
43	20	16	2020	3	27	2020	4	3	18
43	21	17	2020	3	27	2020	4	3	19
43	23	19	2020	3	27	2020	4	3	20
43	25	20	2020	3	27	2020	4	3	21
43	28	23	2020	3	27	2020	4	3	22
43	35	13	2020	3	27	2020	4	3	23
43	18	13	2020	3	27	2020	4	3	24
43	42	31	2020	3	27	2020	4	3	25
43	26	21	2020	3	27	2020	4	3	26
43	27	22	2020	3	27	2020	4	3	27
43	22	18	2020	3	27	2020	4	3	28
43	41	1	2020	3	27	2020	4	3	29
43	31	26	2020	3	27	2020	4	3	30
43	38	13	2020	3	27	2020	4	3	31
43	39	13	2020	3	27	2020	4	3	32
43	33	28	2020	3	27	2020	4	3	33
43	34	28	2020	3	27	2020	4	3	34
43	24	9	2020	3	27	2020	4	3	35
43	29	24	2020	3	27	2020	4	3	36
43	36	17	2020	3	27	2020	4	3	37
43	30	25	2020	3	27	2020	4	3	38
43	44	20	2020	3	27	2020	4	3	39
43	43	10	2020	3	27	2020	4	3	40
43	37	29	2020	3	27	2020	4	3	41
43	52	20	2020	3	27	2020	4	3	42
43	46	33	2020	3	27	2020	4	3	43
43	49	36	2020	3	27	2020	4	3	44
43	45	32	2020	3	27	2020	4	3	45
43	67	1	2020	3	27	2020	4	3	46
43	65	13	2020	3	27	2020	4	3	47
43	59	13	2020	3	27	2020	4	3	48
43	51	28	2020	3	27	2020	4	3	49
43	55	38	2020	3	27	2020	4	3	50
43	40	30	2020	3	27	2020	4	3	51
43	142	4	2020	3	27	2020	4	3	52
43	50	5	2020	3	27	2020	4	3	53
43	60	41	2020	3	27	2020	4	3	54
43	167	4	2020	3	27	2020	4	3	55
43	56	39	2020	3	27	2020	4	3	56
43	48	35	2020	3	27	2020	4	3	57
43	61	42	2020	3	27	2020	4	3	58
43	54	19	2020	3	27	2020	4	3	59
43	53	37	2020	3	27	2020	4	3	60
43	66	46	2020	3	27	2020	4	3	61
43	58	40	2020	3	27	2020	4	3	62
43	47	34	2020	3	27	2020	4	3	63
43	64	45	2020	3	27	2020	4	3	64
43	63	44	2020	3	27	2020	4	3	65
43	57	5	2020	3	27	2020	4	3	66
43	76	52	2020	3	27	2020	4	3	67
43	92	1	2020	3	27	2020	4	3	68
43	198	4	2020	3	27	2020	4	3	69
43	1071	4	2020	3	27	2020	4	3	70
43	1072	4	2020	3	27	2020	4	3	71
43	72	50	2020	3	27	2020	4	3	72
43	85	28	2020	3	27	2020	4	3	73
43	69	48	2020	3	27	2020	4	3	74
43	70	49	2020	3	27	2020	4	3	75
43	1073	4	2020	3	27	2020	4	3	76
43	74	28	2020	3	27	2020	4	3	77
43	79	55	2020	3	27	2020	4	3	78
43	71	9	2020	3	27	2020	4	3	79
43	78	54	2020	3	27	2020	4	3	80
43	86	50	2020	3	27	2020	4	3	81
43	77	53	2020	3	27	2020	4	3	82
43	180	1	2020	3	27	2020	4	3	83
43	88	10	2020	3	27	2020	4	3	84
43	90	61	2020	3	27	2020	4	3	85
43	75	45	2020	3	27	2020	4	3	86
43	105	7	2020	3	27	2020	4	3	87
43	82	56	2020	3	27	2020	4	3	88
43	81	52	2020	3	27	2020	4	3	89
43	62	43	2020	3	27	2020	4	3	90
43	84	58	2020	3	27	2020	4	3	91
43	1074	4	2020	3	27	2020	4	3	92
43	87	59	2020	3	27	2020	4	3	93
43	149	89	2020	3	27	2020	4	3	94
43	83	57	2020	3	27	2020	4	3	95
43	112	72	2020	3	27	2020	4	3	96
43	91	61	2020	3	27	2020	4	3	97
43	1033	1	2020	3	27	2020	4	3	98
43	89	60	2020	3	27	2020	4	3	99
43	12	21	2020	3	27	2020	4	3	100
43	96	50	2020	3	27	2020	4	3	101
43	94	19	2020	3	27	2020	4	3	102
43	100	66	2020	3	27	2020	4	3	103
43	93	62	2020	3	27	2020	4	3	104
43	169	98	2020	3	27	2020	4	3	105
43	97	64	2020	3	27	2020	4	3	106
43	95	63	2020	3	27	2020	4	3	107
43	135	20	2020	3	27	2020	4	3	108
43	99	21	2020	3	27	2020	4	3	109
43	101	67	2020	3	27	2020	4	3	110
43	113	54	2020	3	27	2020	4	3	111
43	102	27	2020	3	27	2020	4	3	112
43	106	66	2020	3	27	2020	4	3	113
43	125	78	2020	3	27	2020	4	3	114
43	124	77	2020	3	27	2020	4	3	115
43	1032	1	2020	3	27	2020	4	3	116
43	144	86	2020	3	27	2020	4	3	117
43	1075	4	2020	3	27	2020	4	3	118
43	103	68	2020	3	27	2020	4	3	119
43	108	48	2020	3	27	2020	4	3	120
43	68	47	2020	3	27	2020	4	3	121
43	1076	385	2020	3	27	2020	4	3	122
43	136	13	2020	3	27	2020	4	3	123
43	114	19	2020	3	27	2020	4	3	124
43	109	70	2020	3	27	2020	4	3	125
43	126	79	2020	3	27	2020	4	3	126
43	107	70	2020	3	27	2020	4	3	127
43	111	71	2020	3	27	2020	4	3	128
43	120	76	2020	3	27	2020	4	3	129
43	121	20	2020	3	27	2020	4	3	130
43	172	13	2020	3	27	2020	4	3	131
43	1077	386	2020	3	27	2020	4	3	132
43	122	20	2020	3	27	2020	4	3	133
43	1034	1	2020	3	27	2020	4	3	134
43	104	69	2020	3	27	2020	4	3	135
43	1078	98	2020	3	27	2020	4	3	136
43	115	73	2020	3	27	2020	4	3	137
43	1036	1	2020	3	27	2020	4	3	138
43	147	13	2020	3	27	2020	4	3	139
43	117	17	2020	3	27	2020	4	3	140
43	119	75	2020	3	27	2020	4	3	141
43	143	85	2020	3	27	2020	4	3	142
43	118	38	2020	3	27	2020	4	3	143
43	130	67	2020	3	27	2020	4	3	144
43	132	32	2020	3	27	2020	4	3	145
43	141	84	2020	3	27	2020	4	3	146
43	133	82	2020	3	27	2020	4	3	147
43	128	80	2020	3	27	2020	4	3	148
43	1035	1	2020	3	27	2020	4	3	149
43	123	45	2020	3	27	2020	4	3	150
43	146	87	2020	3	27	2020	4	3	151
43	129	81	2020	3	27	2020	4	3	152
43	1037	1	2020	3	27	2020	4	3	153
43	148	88	2020	3	27	2020	4	3	154
43	145	19	2020	3	27	2020	4	3	155
43	139	60	2020	3	27	2020	4	3	156
43	73	51	2020	3	27	2020	4	3	157
43	150	48	2020	3	27	2020	4	3	158
43	138	45	2020	3	27	2020	4	3	159
43	154	28	2020	3	27	2020	4	3	160
43	1079	141	2020	3	27	2020	4	3	161
43	160	89	2020	3	27	2020	4	3	162
43	162	70	2020	3	27	2020	4	3	163
43	155	92	2020	3	27	2020	4	3	164
43	1045	13	2020	3	27	2020	4	3	165
43	165	56	2020	3	27	2020	4	3	166
43	158	56	2020	3	27	2020	4	3	167
43	776	84	2020	3	27	2020	4	3	168
43	163	95	2020	3	27	2020	4	3	169
43	140	33	2020	3	27	2020	4	3	170
43	164	96	2020	3	27	2020	4	3	171
43	157	93	2020	3	27	2020	4	3	172
43	161	32	2020	3	27	2020	4	3	173
43	153	51	2020	3	27	2020	4	3	174
43	131	2	2020	3	27	2020	4	3	175
43	175	21	2020	3	27	2020	4	3	176
43	159	94	2020	3	27	2020	4	3	177
43	174	102	2020	3	27	2020	4	3	178
43	166	97	2020	3	27	2020	4	3	179
43	179	105	2020	3	27	2020	4	3	180
43	171	100	2020	3	27	2020	4	3	181
43	156	37	2020	3	27	2020	4	3	182
43	177	104	2020	3	27	2020	4	3	183
43	170	99	2020	3	27	2020	4	3	184
43	168	89	2020	3	27	2020	4	3	185
43	184	19	2020	3	27	2020	4	3	186
43	1080	331	2020	3	27	2020	4	3	187
43	1081	98	2020	3	27	2020	4	3	188
43	137	51	2020	3	27	2020	4	3	189
43	178	98	2020	3	27	2020	4	3	190
43	173	101	2020	3	27	2020	4	3	191
43	197	114	2020	3	27	2020	4	3	192
43	784	1	2020	3	27	2020	4	3	193
43	181	106	2020	3	27	2020	4	3	194
43	176	103	2020	3	27	2020	4	3	195
43	187	63	2020	3	27	2020	4	3	196
43	134	83	2020	3	27	2020	4	3	197
43	192	70	2020	3	27	2020	4	3	198
43	196	50	2020	3	27	2020	4	3	199
43	190	109	2020	3	27	2020	4	3	200
44	201	52	2020	5	22	2020	5	29	1
44	200	27	2020	5	22	2020	5	29	2
44	1	1	2020	5	22	2020	5	29	3
44	3	3	2020	5	22	2020	5	29	4
44	6	6	2020	5	22	2020	5	29	5
44	2	2	2020	5	22	2020	5	29	6
44	203	117	2020	5	22	2020	5	29	7
44	4	4	2020	5	22	2020	5	29	8
44	204	63	2020	5	22	2020	5	29	9
44	205	118	2020	5	22	2020	5	29	10
44	7	7	2020	5	22	2020	5	29	11
44	8	8	2020	5	22	2020	5	29	12
44	68	47	2020	5	22	2020	5	29	13
44	5	5	2020	5	22	2020	5	29	14
44	11	4	2020	5	22	2020	5	29	15
44	15	14	2020	5	22	2020	5	29	16
44	10	10	2020	5	22	2020	5	29	17
44	12	11	2020	5	22	2020	5	29	18
44	202	116	2020	5	22	2020	5	29	19
44	13	12	2020	5	22	2020	5	29	20
44	207	119	2020	5	22	2020	5	29	21
44	21	17	2020	5	22	2020	5	29	22
44	9	9	2020	5	22	2020	5	29	23
44	99	21	2020	5	22	2020	5	29	24
44	23	19	2020	5	22	2020	5	29	25
44	211	121	2020	5	22	2020	5	29	26
44	30	25	2020	5	22	2020	5	29	27
44	158	56	2020	5	22	2020	5	29	28
44	18	13	2020	5	22	2020	5	29	29
44	14	13	2020	5	22	2020	5	29	30
44	24	9	2020	5	22	2020	5	29	31
44	225	9	2020	5	22	2020	5	29	32
44	19	15	2020	5	22	2020	5	29	33
44	214	68	2020	5	22	2020	5	29	34
44	165	56	2020	5	22	2020	5	29	35
44	20	16	2020	5	22	2020	5	29	36
44	62	43	2020	5	22	2020	5	29	37
44	29	24	2020	5	22	2020	5	29	38
44	82	56	2020	5	22	2020	5	29	39
44	26	21	2020	5	22	2020	5	29	40
44	36	17	2020	5	22	2020	5	29	41
44	218	86	2020	5	22	2020	5	29	42
44	27	22	2020	5	22	2020	5	29	43
44	208	39	2020	5	22	2020	5	29	44
44	33	28	2020	5	22	2020	5	29	45
44	25	20	2020	5	22	2020	5	29	46
44	37	29	2020	5	22	2020	5	29	47
44	47	34	2020	5	22	2020	5	29	48
44	230	48	2020	5	22	2020	5	29	49
44	213	33	2020	5	22	2020	5	29	50
44	17	1	2020	5	22	2020	5	29	51
44	116	74	2020	5	22	2020	5	29	52
44	16	4	2020	5	22	2020	5	29	53
44	54	19	2020	5	22	2020	5	29	54
44	1082	387	2020	5	22	2020	5	29	55
44	22	18	2020	5	22	2020	5	29	56
44	48	35	2020	5	22	2020	5	29	57
44	57	5	2020	5	22	2020	5	29	58
44	151	90	2020	5	22	2020	5	29	59
44	222	2	2020	5	22	2020	5	29	60
44	34	28	2020	5	22	2020	5	29	61
44	31	26	2020	5	22	2020	5	29	62
44	40	30	2020	5	22	2020	5	29	63
44	110	32	2020	5	22	2020	5	29	64
44	51	28	2020	5	22	2020	5	29	65
44	242	138	2020	5	22	2020	5	29	66
44	44	20	2020	5	22	2020	5	29	67
44	69	48	2020	5	22	2020	5	29	68
44	240	137	2020	5	22	2020	5	29	69
44	45	32	2020	5	22	2020	5	29	70
44	58	40	2020	5	22	2020	5	29	71
44	53	37	2020	5	22	2020	5	29	72
44	73	51	2020	5	22	2020	5	29	73
44	64	45	2020	5	22	2020	5	29	74
44	35	13	2020	5	22	2020	5	29	75
44	81	52	2020	5	22	2020	5	29	76
44	250	13	2020	5	22	2020	5	29	77
44	972	205	2020	5	22	2020	5	29	78
44	245	85	2020	5	22	2020	5	29	79
44	56	39	2020	5	22	2020	5	29	80
44	39	13	2020	5	22	2020	5	29	81
44	52	20	2020	5	22	2020	5	29	82
44	1083	137	2020	5	22	2020	5	29	83
44	229	84	2020	5	22	2020	5	29	84
44	217	123	2020	5	22	2020	5	29	85
44	224	127	2020	5	22	2020	5	29	86
44	137	51	2020	5	22	2020	5	29	87
44	63	44	2020	5	22	2020	5	29	88
44	258	13	2020	5	22	2020	5	29	89
44	1084	1	2020	5	22	2020	5	29	90
44	95	63	2020	5	22	2020	5	29	91
44	1085	137	2020	5	22	2020	5	29	92
44	83	57	2020	5	22	2020	5	29	93
44	38	13	2020	5	22	2020	5	29	94
44	74	28	2020	5	22	2020	5	29	95
44	219	124	2020	5	22	2020	5	29	96
44	43	10	2020	5	22	2020	5	29	97
44	70	49	2020	5	22	2020	5	29	98
44	93	62	2020	5	22	2020	5	29	99
44	268	150	2020	5	22	2020	5	29	100
44	94	19	2020	5	22	2020	5	29	101
44	77	53	2020	5	22	2020	5	29	102
44	75	45	2020	5	22	2020	5	29	103
44	914	24	2020	5	22	2020	5	29	104
44	235	133	2020	5	22	2020	5	29	105
44	84	58	2020	5	22	2020	5	29	106
44	76	52	2020	5	22	2020	5	29	107
44	107	70	2020	5	22	2020	5	29	108
44	28	23	2020	5	22	2020	5	29	109
44	265	89	2020	5	22	2020	5	29	110
44	12	21	2020	5	22	2020	5	29	111
44	109	70	2020	5	22	2020	5	29	112
44	79	55	2020	5	22	2020	5	29	113
44	71	9	2020	5	22	2020	5	29	114
44	103	68	2020	5	22	2020	5	29	115
44	115	73	2020	5	22	2020	5	29	116
44	98	65	2020	5	22	2020	5	29	117
44	238	32	2020	5	22	2020	5	29	118
44	50	5	2020	5	22	2020	5	29	119
44	104	69	2020	5	22	2020	5	29	120
44	243	139	2020	5	22	2020	5	29	121
44	123	45	2020	5	22	2020	5	29	122
44	1086	347	2020	5	22	2020	5	29	123
44	212	52	2020	5	22	2020	5	29	124
44	915	13	2020	5	22	2020	5	29	125
44	96	50	2020	5	22	2020	5	29	126
44	87	59	2020	5	22	2020	5	29	127
44	122	20	2020	5	22	2020	5	29	128
44	49	36	2020	5	22	2020	5	29	129
44	150	48	2020	5	22	2020	5	29	130
44	128	80	2020	5	22	2020	5	29	131
44	111	71	2020	5	22	2020	5	29	132
44	138	45	2020	5	22	2020	5	29	133
44	257	31	2020	5	22	2020	5	29	134
44	65	13	2020	5	22	2020	5	29	135
44	108	48	2020	5	22	2020	5	29	136
44	72	50	2020	5	22	2020	5	29	137
44	102	27	2020	5	22	2020	5	29	138
44	1087	137	2020	5	22	2020	5	29	139
44	118	38	2020	5	22	2020	5	29	140
44	106	66	2020	5	22	2020	5	29	141
44	917	302	2020	5	22	2020	5	29	142
44	114	19	2020	5	22	2020	5	29	143
44	59	13	2020	5	22	2020	5	29	144
44	916	367	2020	5	22	2020	5	29	145
44	157	93	2020	5	22	2020	5	29	146
44	91	61	2020	5	22	2020	5	29	147
44	146	87	2020	5	22	2020	5	29	148
44	919	60	2020	5	22	2020	5	29	149
44	141	84	2020	5	22	2020	5	29	150
44	918	13	2020	5	22	2020	5	29	151
44	144	86	2020	5	22	2020	5	29	152
44	119	75	2020	5	22	2020	5	29	153
44	153	51	2020	5	22	2020	5	29	154
44	178	98	2020	5	22	2020	5	29	155
44	89	60	2020	5	22	2020	5	29	156
44	121	20	2020	5	22	2020	5	29	157
44	254	32	2020	5	22	2020	5	29	158
44	1088	229	2020	5	22	2020	5	29	159
44	139	60	2020	5	22	2020	5	29	160
44	166	97	2020	5	22	2020	5	29	161
44	228	129	2020	5	22	2020	5	29	162
44	101	67	2020	5	22	2020	5	29	163
44	117	17	2020	5	22	2020	5	29	164
44	97	64	2020	5	22	2020	5	29	165
44	145	19	2020	5	22	2020	5	29	166
44	812	349	2020	5	22	2020	5	29	167
44	55	38	2020	5	22	2020	5	29	168
44	236	134	2020	5	22	2020	5	29	169
44	256	146	2020	5	22	2020	5	29	170
44	251	142	2020	5	22	2020	5	29	171
44	173	101	2020	5	22	2020	5	29	172
44	162	70	2020	5	22	2020	5	29	173
44	132	32	2020	5	22	2020	5	29	174
44	46	33	2020	5	22	2020	5	29	175
44	175	21	2020	5	22	2020	5	29	176
44	61	42	2020	5	22	2020	5	29	177
44	195	113	2020	5	22	2020	5	29	178
44	253	144	2020	5	22	2020	5	29	179
44	140	33	2020	5	22	2020	5	29	180
44	129	81	2020	5	22	2020	5	29	181
44	174	102	2020	5	22	2020	5	29	182
44	131	2	2020	5	22	2020	5	29	183
44	60	41	2020	5	22	2020	5	29	184
44	147	13	2020	5	22	2020	5	29	185
44	67	1	2020	5	22	2020	5	29	186
44	187	63	2020	5	22	2020	5	29	187
44	41	1	2020	5	22	2020	5	29	188
44	267	56	2020	5	22	2020	5	29	189
44	181	106	2020	5	22	2020	5	29	190
44	155	92	2020	5	22	2020	5	29	191
44	156	37	2020	5	22	2020	5	29	192
44	105	7	2020	5	22	2020	5	29	193
44	184	19	2020	5	22	2020	5	29	194
44	168	89	2020	5	22	2020	5	29	195
44	275	154	2020	5	22	2020	5	29	196
44	1089	388	2020	5	22	2020	5	29	197
44	182	104	2020	5	22	2020	5	29	198
44	1090	123	2020	5	22	2020	5	29	199
44	125	78	2020	5	22	2020	5	29	200
45	285	42	2020	9	25	2020	10	2	1
45	292	160	2020	9	25	2020	10	2	2
45	286	157	2020	9	25	2020	10	2	3
45	291	159	2020	9	25	2020	10	2	4
45	289	158	2020	9	25	2020	10	2	5
45	293	10	2020	9	25	2020	10	2	6
45	1	1	2020	9	25	2020	10	2	7
45	99	21	2020	9	25	2020	10	2	8
45	294	92	2020	9	25	2020	10	2	9
45	216	122	2020	9	25	2020	10	2	10
45	301	2	2020	9	25	2020	10	2	11
45	200	27	2020	9	25	2020	10	2	12
45	297	162	2020	9	25	2020	10	2	13
45	407	56	2020	9	25	2020	10	2	14
45	296	161	2020	9	25	2020	10	2	15
45	298	123	2020	9	25	2020	10	2	16
45	303	77	2020	9	25	2020	10	2	17
45	327	172	2020	9	25	2020	10	2	18
45	3	3	2020	9	25	2020	10	2	19
45	288	92	2020	9	25	2020	10	2	20
45	310	20	2020	9	25	2020	10	2	21
45	62	43	2020	9	25	2020	10	2	22
45	321	16	2020	9	25	2020	10	2	23
45	312	167	2020	9	25	2020	10	2	24
45	323	171	2020	9	25	2020	10	2	25
45	336	92	2020	9	25	2020	10	2	26
45	21	17	2020	9	25	2020	10	2	27
45	7	7	2020	9	25	2020	10	2	28
45	334	32	2020	9	25	2020	10	2	29
45	330	48	2020	9	25	2020	10	2	30
45	36	17	2020	9	25	2020	10	2	31
45	313	168	2020	9	25	2020	10	2	32
45	319	169	2020	9	25	2020	10	2	33
45	219	124	2020	9	25	2020	10	2	34
45	299	163	2020	9	25	2020	10	2	35
45	6	6	2020	9	25	2020	10	2	36
45	231	130	2020	9	25	2020	10	2	37
45	306	164	2020	9	25	2020	10	2	38
45	348	179	2020	9	25	2020	10	2	39
45	355	96	2020	9	25	2020	10	2	40
45	346	48	2020	9	25	2020	10	2	41
45	316	130	2020	9	25	2020	10	2	42
45	201	52	2020	9	25	2020	10	2	43
45	325	130	2020	9	25	2020	10	2	44
45	236	134	2020	9	25	2020	10	2	45
45	4	4	2020	9	25	2020	10	2	46
45	343	176	2020	9	25	2020	10	2	47
45	354	182	2020	9	25	2020	10	2	48
45	724	327	2020	9	25	2020	10	2	49
45	308	74	2020	9	25	2020	10	2	50
45	402	212	2020	9	25	2020	10	2	51
45	8	8	2020	9	25	2020	10	2	52
45	307	165	2020	9	25	2020	10	2	53
45	361	186	2020	9	25	2020	10	2	54
45	204	63	2020	9	25	2020	10	2	55
45	137	51	2020	9	25	2020	10	2	56
45	342	171	2020	9	25	2020	10	2	57
45	23	19	2020	9	25	2020	10	2	58
45	730	179	2020	9	25	2020	10	2	59
45	379	172	2020	9	25	2020	10	2	60
45	68	47	2020	9	25	2020	10	2	61
45	11	4	2020	9	25	2020	10	2	62
45	26	21	2020	9	25	2020	10	2	63
45	335	89	2020	9	25	2020	10	2	64
45	362	92	2020	9	25	2020	10	2	65
45	158	56	2020	9	25	2020	10	2	66
45	366	190	2020	9	25	2020	10	2	67
45	5	5	2020	9	25	2020	10	2	68
45	27	22	2020	9	25	2020	10	2	69
45	37	29	2020	9	25	2020	10	2	70
45	370	48	2020	9	25	2020	10	2	71
45	2	2	2020	9	25	2020	10	2	72
45	69	48	2020	9	25	2020	10	2	73
45	10	10	2020	9	25	2020	10	2	74
45	317	139	2020	9	25	2020	10	2	75
45	398	209	2020	9	25	2020	10	2	76
45	885	153	2020	9	25	2020	10	2	77
45	150	48	2020	9	25	2020	10	2	78
45	82	56	2020	9	25	2020	10	2	79
45	54	19	2020	9	25	2020	10	2	80
45	12	11	2020	9	25	2020	10	2	81
45	380	200	2020	9	25	2020	10	2	82
45	274	153	2020	9	25	2020	10	2	83
45	391	207	2020	9	25	2020	10	2	84
45	20	16	2020	9	25	2020	10	2	85
45	202	116	2020	9	25	2020	10	2	86
45	374	195	2020	9	25	2020	10	2	87
45	81	52	2020	9	25	2020	10	2	88
45	668	314	2020	9	25	2020	10	2	89
45	363	187	2020	9	25	2020	10	2	90
45	165	56	2020	9	25	2020	10	2	91
45	33	28	2020	9	25	2020	10	2	92
45	51	28	2020	9	25	2020	10	2	93
45	368	192	2020	9	25	2020	10	2	94
45	155	92	2020	9	25	2020	10	2	95
45	208	39	2020	9	25	2020	10	2	96
45	1091	153	2020	9	25	2020	10	2	97
45	320	170	2020	9	25	2020	10	2	98
45	790	153	2020	9	25	2020	10	2	99
45	719	325	2020	9	25	2020	10	2	100
45	116	74	2020	9	25	2020	10	2	101
45	356	183	2020	9	25	2020	10	2	102
45	47	34	2020	9	25	2020	10	2	103
45	29	24	2020	9	25	2020	10	2	104
45	217	123	2020	9	25	2020	10	2	105
45	326	159	2020	9	25	2020	10	2	106
45	12	21	2020	9	25	2020	10	2	107
45	48	35	2020	9	25	2020	10	2	108
45	93	62	2020	9	25	2020	10	2	109
45	17	1	2020	9	25	2020	10	2	110
45	375	196	2020	9	25	2020	10	2	111
45	210	66	2020	9	25	2020	10	2	112
45	393	130	2020	9	25	2020	10	2	113
45	19	15	2020	9	25	2020	10	2	114
45	333	174	2020	9	25	2020	10	2	115
45	1092	85	2020	9	25	2020	10	2	116
45	214	68	2020	9	25	2020	10	2	117
45	678	315	2020	9	25	2020	10	2	118
45	122	20	2020	9	25	2020	10	2	119
45	364	188	2020	9	25	2020	10	2	120
45	722	68	2020	9	25	2020	10	2	121
45	720	355	2020	9	25	2020	10	2	122
45	1093	179	2020	9	25	2020	10	2	123
45	128	80	2020	9	25	2020	10	2	124
45	9	9	2020	9	25	2020	10	2	125
45	1094	153	2020	9	25	2020	10	2	126
45	399	92	2020	9	25	2020	10	2	127
45	34	28	2020	9	25	2020	10	2	128
45	665	234	2020	9	25	2020	10	2	129
45	372	85	2020	9	25	2020	10	2	130
45	209	120	2020	9	25	2020	10	2	131
45	203	117	2020	9	25	2020	10	2	132
45	397	92	2020	9	25	2020	10	2	133
45	396	159	2020	9	25	2020	10	2	134
45	107	70	2020	9	25	2020	10	2	135
45	64	45	2020	9	25	2020	10	2	136
45	887	362	2020	9	25	2020	10	2	137
45	138	45	2020	9	25	2020	10	2	138
45	13	12	2020	9	25	2020	10	2	139
45	15	14	2020	9	25	2020	10	2	140
45	700	74	2020	9	25	2020	10	2	141
45	211	121	2020	9	25	2020	10	2	142
45	95	63	2020	9	25	2020	10	2	143
45	382	166	2020	9	25	2020	10	2	144
45	1095	153	2020	9	25	2020	10	2	145
45	369	193	2020	9	25	2020	10	2	146
45	359	185	2020	9	25	2020	10	2	147
45	218	86	2020	9	25	2020	10	2	148
45	260	48	2020	9	25	2020	10	2	149
45	18	13	2020	9	25	2020	10	2	150
45	1096	153	2020	9	25	2020	10	2	151
45	123	45	2020	9	25	2020	10	2	152
45	865	356	2020	9	25	2020	10	2	153
45	691	145	2020	9	25	2020	10	2	154
45	664	28	2020	9	25	2020	10	2	155
45	31	26	2020	9	25	2020	10	2	156
45	14	13	2020	9	25	2020	10	2	157
45	908	153	2020	9	25	2020	10	2	158
45	109	70	2020	9	25	2020	10	2	159
45	110	32	2020	9	25	2020	10	2	160
45	115	73	2020	9	25	2020	10	2	161
45	58	40	2020	9	25	2020	10	2	162
45	174	102	2020	9	25	2020	10	2	163
45	94	19	2020	9	25	2020	10	2	164
45	682	90	2020	9	25	2020	10	2	165
45	240	137	2020	9	25	2020	10	2	166
45	25	20	2020	9	25	2020	10	2	167
45	791	344	2020	9	25	2020	10	2	168
45	404	214	2020	9	25	2020	10	2	169
45	75	45	2020	9	25	2020	10	2	170
45	1097	153	2020	9	25	2020	10	2	171
45	173	101	2020	9	25	2020	10	2	172
45	74	28	2020	9	25	2020	10	2	173
45	381	201	2020	9	25	2020	10	2	174
45	118	38	2020	9	25	2020	10	2	175
45	403	213	2020	9	25	2020	10	2	176
45	1098	153	2020	9	25	2020	10	2	177
45	868	55	2020	9	25	2020	10	2	178
45	53	37	2020	9	25	2020	10	2	179
45	279	153	2020	9	25	2020	10	2	180
45	213	33	2020	9	25	2020	10	2	181
45	729	158	2020	9	25	2020	10	2	182
45	408	217	2020	9	25	2020	10	2	183
45	103	68	2020	9	25	2020	10	2	184
45	401	211	2020	9	25	2020	10	2	185
45	858	301	2020	9	25	2020	10	2	186
45	680	48	2020	9	25	2020	10	2	187
45	1099	179	2020	9	25	2020	10	2	188
45	229	84	2020	9	25	2020	10	2	189
45	70	49	2020	9	25	2020	10	2	190
45	559	134	2020	9	25	2020	10	2	191
45	166	97	2020	9	25	2020	10	2	192
45	728	329	2020	9	25	2020	10	2	193
45	101	67	2020	9	25	2020	10	2	194
45	227	128	2020	9	25	2020	10	2	195
45	30	25	2020	9	25	2020	10	2	196
45	712	322	2020	9	25	2020	10	2	197
45	182	104	2020	9	25	2020	10	2	198
45	856	353	2020	9	25	2020	10	2	199
45	859	157	2020	9	25	2020	10	2	200
46	1	1	2020	3	6	2020	3	13	1
46	5	5	2020	3	6	2020	3	13	2
46	7	7	2020	3	6	2020	3	13	3
46	4	4	2020	3	6	2020	3	13	4
46	35	13	2020	3	6	2020	3	13	5
46	10	10	2020	3	6	2020	3	13	6
46	38	13	2020	3	6	2020	3	13	7
46	9	9	2020	3	6	2020	3	13	8
46	20	16	2020	3	6	2020	3	13	9
46	39	13	2020	3	6	2020	3	13	10
46	12	11	2020	3	6	2020	3	13	11
46	19	15	2020	3	6	2020	3	13	12
46	14	13	2020	3	6	2020	3	13	13
46	23	19	2020	3	6	2020	3	13	14
46	1044	50	2020	3	6	2020	3	13	15
46	86	50	2020	3	6	2020	3	13	16
46	65	13	2020	3	6	2020	3	13	17
46	21	17	2020	3	6	2020	3	13	18
46	3	3	2020	3	6	2020	3	13	19
46	8	8	2020	3	6	2020	3	13	20
46	72	50	2020	3	6	2020	3	13	21
46	6	6	2020	3	6	2020	3	13	22
46	31	26	2020	3	6	2020	3	13	23
46	13	12	2020	3	6	2020	3	13	24
46	43	10	2020	3	6	2020	3	13	25
46	59	13	2020	3	6	2020	3	13	26
46	27	22	2020	3	6	2020	3	13	27
46	29	24	2020	3	6	2020	3	13	28
46	76	52	2020	3	6	2020	3	13	29
46	26	21	2020	3	6	2020	3	13	30
46	1046	50	2020	3	6	2020	3	13	31
46	34	28	2020	3	6	2020	3	13	32
46	85	28	2020	3	6	2020	3	13	33
46	33	28	2020	3	6	2020	3	13	34
46	18	13	2020	3	6	2020	3	13	35
46	1100	50	2020	3	6	2020	3	13	36
46	16	4	2020	3	6	2020	3	13	37
46	25	20	2020	3	6	2020	3	13	38
46	36	17	2020	3	6	2020	3	13	39
46	37	29	2020	3	6	2020	3	13	40
46	41	1	2020	3	6	2020	3	13	41
46	55	38	2020	3	6	2020	3	13	42
46	49	36	2020	3	6	2020	3	13	43
46	172	13	2020	3	6	2020	3	13	44
46	56	39	2020	3	6	2020	3	13	45
46	126	79	2020	3	6	2020	3	13	46
46	60	41	2020	3	6	2020	3	13	47
46	52	20	2020	3	6	2020	3	13	48
46	15	14	2020	3	6	2020	3	13	49
46	66	46	2020	3	6	2020	3	13	50
46	1101	50	2020	3	6	2020	3	13	51
46	1102	50	2020	3	6	2020	3	13	52
46	1103	50	2020	3	6	2020	3	13	53
46	50	5	2020	3	6	2020	3	13	54
46	30	25	2020	3	6	2020	3	13	55
46	79	55	2020	3	6	2020	3	13	56
46	1047	50	2020	3	6	2020	3	13	57
46	54	19	2020	3	6	2020	3	13	58
46	48	35	2020	3	6	2020	3	13	59
46	1104	50	2020	3	6	2020	3	13	60
46	1105	50	2020	3	6	2020	3	13	61
46	63	44	2020	3	6	2020	3	13	62
46	53	37	2020	3	6	2020	3	13	63
46	1106	50	2020	3	6	2020	3	13	64
46	64	45	2020	3	6	2020	3	13	65
46	1045	13	2020	3	6	2020	3	13	66
46	45	32	2020	3	6	2020	3	13	67
46	1107	50	2020	3	6	2020	3	13	68
46	136	13	2020	3	6	2020	3	13	69
46	88	10	2020	3	6	2020	3	13	70
46	149	89	2020	3	6	2020	3	13	71
46	58	40	2020	3	6	2020	3	13	72
46	1108	50	2020	3	6	2020	3	13	73
46	61	42	2020	3	6	2020	3	13	74
46	51	28	2020	3	6	2020	3	13	75
46	1053	13	2020	3	6	2020	3	13	76
46	100	66	2020	3	6	2020	3	13	77
46	70	49	2020	3	6	2020	3	13	78
46	89	60	2020	3	6	2020	3	13	79
46	1050	13	2020	3	6	2020	3	13	80
46	1051	359	2020	3	6	2020	3	13	81
46	90	61	2020	3	6	2020	3	13	82
46	1054	13	2020	3	6	2020	3	13	83
46	75	45	2020	3	6	2020	3	13	84
46	125	78	2020	3	6	2020	3	13	85
46	1062	13	2020	3	6	2020	3	13	86
46	83	57	2020	3	6	2020	3	13	87
46	82	56	2020	3	6	2020	3	13	88
46	120	76	2020	3	6	2020	3	13	89
46	81	52	2020	3	6	2020	3	13	90
46	113	54	2020	3	6	2020	3	13	91
46	74	28	2020	3	6	2020	3	13	92
46	1109	50	2020	3	6	2020	3	13	93
46	77	53	2020	3	6	2020	3	13	94
46	69	48	2020	3	6	2020	3	13	95
46	47	34	2020	3	6	2020	3	13	96
46	121	20	2020	3	6	2020	3	13	97
46	1057	13	2020	3	6	2020	3	13	98
46	106	66	2020	3	6	2020	3	13	99
46	1058	13	2020	3	6	2020	3	13	100
46	97	64	2020	3	6	2020	3	13	101
46	1110	50	2020	3	6	2020	3	13	102
46	763	158	2020	3	6	2020	3	13	103
46	94	19	2020	3	6	2020	3	13	104
46	147	13	2020	3	6	2020	3	13	105
46	105	7	2020	3	6	2020	3	13	106
46	24	9	2020	3	6	2020	3	13	107
46	1061	13	2020	3	6	2020	3	13	108
46	102	27	2020	3	6	2020	3	13	109
46	99	21	2020	3	6	2020	3	13	110
46	114	19	2020	3	6	2020	3	13	111
46	765	64	2020	3	6	2020	3	13	112
46	1111	106	2020	3	6	2020	3	13	113
46	95	63	2020	3	6	2020	3	13	114
46	132	32	2020	3	6	2020	3	13	115
46	133	82	2020	3	6	2020	3	13	116
46	1055	383	2020	3	6	2020	3	13	117
46	91	61	2020	3	6	2020	3	13	118
46	141	84	2020	3	6	2020	3	13	119
46	12	21	2020	3	6	2020	3	13	120
46	87	59	2020	3	6	2020	3	13	121
46	1112	50	2020	3	6	2020	3	13	122
46	1060	13	2020	3	6	2020	3	13	123
46	143	85	2020	3	6	2020	3	13	124
46	191	110	2020	3	6	2020	3	13	125
46	1113	389	2020	3	6	2020	3	13	126
46	144	86	2020	3	6	2020	3	13	127
46	108	48	2020	3	6	2020	3	13	128
46	93	62	2020	3	6	2020	3	13	129
46	1052	382	2020	3	6	2020	3	13	130
46	103	68	2020	3	6	2020	3	13	131
46	145	19	2020	3	6	2020	3	13	132
46	119	75	2020	3	6	2020	3	13	133
46	1063	337	2020	3	6	2020	3	13	134
46	111	71	2020	3	6	2020	3	13	135
46	776	84	2020	3	6	2020	3	13	136
46	196	50	2020	3	6	2020	3	13	137
46	135	20	2020	3	6	2020	3	13	138
46	160	89	2020	3	6	2020	3	13	139
46	1114	50	2020	3	6	2020	3	13	140
46	1115	390	2020	3	6	2020	3	13	141
46	764	158	2020	3	6	2020	3	13	142
46	139	60	2020	3	6	2020	3	13	143
46	118	38	2020	3	6	2020	3	13	144
46	117	17	2020	3	6	2020	3	13	145
46	115	73	2020	3	6	2020	3	13	146
46	1064	13	2020	3	6	2020	3	13	147
46	778	106	2020	3	6	2020	3	13	148
46	523	27	2020	3	6	2020	3	13	149
46	1059	110	2020	3	6	2020	3	13	150
46	67	1	2020	3	6	2020	3	13	151
46	123	45	2020	3	6	2020	3	13	152
46	104	69	2020	3	6	2020	3	13	153
46	519	158	2020	3	6	2020	3	13	154
46	101	67	2020	3	6	2020	3	13	155
46	128	80	2020	3	6	2020	3	13	156
46	146	87	2020	3	6	2020	3	13	157
46	163	95	2020	3	6	2020	3	13	158
46	1116	137	2020	3	6	2020	3	13	159
46	521	78	2020	3	6	2020	3	13	160
46	517	272	2020	3	6	2020	3	13	161
46	154	28	2020	3	6	2020	3	13	162
46	109	70	2020	3	6	2020	3	13	163
46	150	48	2020	3	6	2020	3	13	164
46	168	89	2020	3	6	2020	3	13	165
46	107	70	2020	3	6	2020	3	13	166
46	1117	115	2020	3	6	2020	3	13	167
46	165	56	2020	3	6	2020	3	13	168
46	1118	106	2020	3	6	2020	3	13	169
46	131	2	2020	3	6	2020	3	13	170
46	194	112	2020	3	6	2020	3	13	171
46	775	283	2020	3	6	2020	3	13	172
46	184	19	2020	3	6	2020	3	13	173
46	138	45	2020	3	6	2020	3	13	174
46	554	44	2020	3	6	2020	3	13	175
46	175	21	2020	3	6	2020	3	13	176
46	124	77	2020	3	6	2020	3	13	177
46	1065	13	2020	3	6	2020	3	13	178
46	181	106	2020	3	6	2020	3	13	179
46	155	92	2020	3	6	2020	3	13	180
46	158	56	2020	3	6	2020	3	13	181
46	159	94	2020	3	6	2020	3	13	182
46	782	196	2020	3	6	2020	3	13	183
46	156	37	2020	3	6	2020	3	13	184
46	152	91	2020	3	6	2020	3	13	185
46	528	45	2020	3	6	2020	3	13	186
46	130	67	2020	3	6	2020	3	13	187
46	153	51	2020	3	6	2020	3	13	188
46	729	158	2020	3	6	2020	3	13	189
46	1119	19	2020	3	6	2020	3	13	190
46	1120	106	2020	3	6	2020	3	13	191
46	783	299	2020	3	6	2020	3	13	192
46	530	111	2020	3	6	2020	3	13	193
46	187	63	2020	3	6	2020	3	13	194
46	515	64	2020	3	6	2020	3	13	195
46	140	33	2020	3	6	2020	3	13	196
46	185	22	2020	3	6	2020	3	13	197
46	526	186	2020	3	6	2020	3	13	198
46	535	27	2020	3	6	2020	3	13	199
46	590	106	2020	3	6	2020	3	13	200
47	7	7	2020	1	3	2020	1	10	1
47	43	10	2020	1	3	2020	1	10	2
47	19	15	2020	1	3	2020	1	10	3
47	5	5	2020	1	3	2020	1	10	4
47	20	16	2020	1	3	2020	1	10	5
47	1	1	2020	1	3	2020	1	10	6
47	12	11	2020	1	3	2020	1	10	7
47	4	4	2020	1	3	2020	1	10	8
47	27	22	2020	1	3	2020	1	10	9
47	23	19	2020	1	3	2020	1	10	10
47	34	28	2020	1	3	2020	1	10	11
47	37	29	2020	1	3	2020	1	10	12
47	56	39	2020	1	3	2020	1	10	13
47	21	17	2020	1	3	2020	1	10	14
47	60	41	2020	1	3	2020	1	10	15
47	26	21	2020	1	3	2020	1	10	16
47	33	28	2020	1	3	2020	1	10	17
47	97	64	2020	1	3	2020	1	10	18
47	58	40	2020	1	3	2020	1	10	19
47	48	35	2020	1	3	2020	1	10	20
47	99	21	2020	1	3	2020	1	10	21
47	59	13	2020	1	3	2020	1	10	22
47	102	27	2020	1	3	2020	1	10	23
47	36	17	2020	1	3	2020	1	10	24
47	82	56	2020	1	3	2020	1	10	25
47	144	86	2020	1	3	2020	1	10	26
47	67	1	2020	1	3	2020	1	10	27
47	54	19	2020	1	3	2020	1	10	28
47	64	45	2020	1	3	2020	1	10	29
47	106	66	2020	1	3	2020	1	10	30
47	108	48	2020	1	3	2020	1	10	31
47	527	50	2020	1	3	2020	1	10	32
47	132	32	2020	1	3	2020	1	10	33
47	53	37	2020	1	3	2020	1	10	34
47	75	45	2020	1	3	2020	1	10	35
47	69	48	2020	1	3	2020	1	10	36
47	517	272	2020	1	3	2020	1	10	37
47	536	56	2020	1	3	2020	1	10	38
47	160	89	2020	1	3	2020	1	10	39
47	49	36	2020	1	3	2020	1	10	40
47	528	45	2020	1	3	2020	1	10	41
47	83	57	2020	1	3	2020	1	10	42
47	79	55	2020	1	3	2020	1	10	43
47	70	49	2020	1	3	2020	1	10	44
47	113	54	2020	1	3	2020	1	10	45
47	544	280	2020	1	3	2020	1	10	46
47	95	63	2020	1	3	2020	1	10	47
47	121	20	2020	1	3	2020	1	10	48
47	87	59	2020	1	3	2020	1	10	49
47	12	21	2020	1	3	2020	1	10	50
47	147	13	2020	1	3	2020	1	10	51
47	119	75	2020	1	3	2020	1	10	52
47	521	78	2020	1	3	2020	1	10	53
47	114	19	2020	1	3	2020	1	10	54
47	9	9	2020	1	3	2020	1	10	55
47	74	28	2020	1	3	2020	1	10	56
47	141	84	2020	1	3	2020	1	10	57
47	531	276	2020	1	3	2020	1	10	58
47	81	52	2020	1	3	2020	1	10	59
47	51	28	2020	1	3	2020	1	10	60
47	133	82	2020	1	3	2020	1	10	61
47	104	69	2020	1	3	2020	1	10	62
47	3	3	2020	1	3	2020	1	10	63
47	526	186	2020	1	3	2020	1	10	64
47	47	34	2020	1	3	2020	1	10	65
47	537	277	2020	1	3	2020	1	10	66
47	529	196	2020	1	3	2020	1	10	67
47	111	71	2020	1	3	2020	1	10	68
47	590	106	2020	1	3	2020	1	10	69
47	175	21	2020	1	3	2020	1	10	70
47	542	112	2020	1	3	2020	1	10	71
47	535	27	2020	1	3	2020	1	10	72
47	91	61	2020	1	3	2020	1	10	73
47	103	68	2020	1	3	2020	1	10	74
47	561	285	2020	1	3	2020	1	10	75
47	145	19	2020	1	3	2020	1	10	76
47	146	87	2020	1	3	2020	1	10	77
47	139	60	2020	1	3	2020	1	10	78
47	150	48	2020	1	3	2020	1	10	79
47	530	111	2020	1	3	2020	1	10	80
47	135	20	2020	1	3	2020	1	10	81
47	191	110	2020	1	3	2020	1	10	82
47	602	53	2020	1	3	2020	1	10	83
47	601	64	2020	1	3	2020	1	10	84
47	156	37	2020	1	3	2020	1	10	85
47	578	38	2020	1	3	2020	1	10	86
47	541	279	2020	1	3	2020	1	10	87
47	131	2	2020	1	3	2020	1	10	88
47	94	19	2020	1	3	2020	1	10	89
47	549	112	2020	1	3	2020	1	10	90
47	118	38	2020	1	3	2020	1	10	91
47	179	105	2020	1	3	2020	1	10	92
47	532	55	2020	1	3	2020	1	10	93
47	539	278	2020	1	3	2020	1	10	94
47	123	45	2020	1	3	2020	1	10	95
47	115	73	2020	1	3	2020	1	10	96
47	163	95	2020	1	3	2020	1	10	97
47	93	62	2020	1	3	2020	1	10	98
47	165	56	2020	1	3	2020	1	10	99
47	153	51	2020	1	3	2020	1	10	100
47	282	74	2020	1	3	2020	1	10	101
47	600	255	2020	1	3	2020	1	10	102
47	548	120	2020	1	3	2020	1	10	103
47	546	123	2020	1	3	2020	1	10	104
47	168	89	2020	1	3	2020	1	10	105
47	586	41	2020	1	3	2020	1	10	106
47	603	104	2020	1	3	2020	1	10	107
47	559	134	2020	1	3	2020	1	10	108
47	187	63	2020	1	3	2020	1	10	109
47	552	111	2020	1	3	2020	1	10	110
47	609	299	2020	1	3	2020	1	10	111
47	185	22	2020	1	3	2020	1	10	112
47	574	27	2020	1	3	2020	1	10	113
47	569	289	2020	1	3	2020	1	10	114
47	105	7	2020	1	3	2020	1	10	115
47	534	28	2020	1	3	2020	1	10	116
47	575	56	2020	1	3	2020	1	10	117
47	117	17	2020	1	3	2020	1	10	118
47	109	70	2020	1	3	2020	1	10	119
47	595	71	2020	1	3	2020	1	10	120
47	140	33	2020	1	3	2020	1	10	121
47	545	281	2020	1	3	2020	1	10	122
47	184	19	2020	1	3	2020	1	10	123
47	159	94	2020	1	3	2020	1	10	124
47	566	120	2020	1	3	2020	1	10	125
47	154	28	2020	1	3	2020	1	10	126
47	188	107	2020	1	3	2020	1	10	127
47	597	86	2020	1	3	2020	1	10	128
47	576	196	2020	1	3	2020	1	10	129
47	128	80	2020	1	3	2020	1	10	130
47	608	8	2020	1	3	2020	1	10	131
47	596	71	2020	1	3	2020	1	10	132
47	594	54	2020	1	3	2020	1	10	133
47	101	67	2020	1	3	2020	1	10	134
47	523	27	2020	1	3	2020	1	10	135
47	138	45	2020	1	3	2020	1	10	136
47	130	67	2020	1	3	2020	1	10	137
47	613	19	2020	1	3	2020	1	10	138
47	158	56	2020	1	3	2020	1	10	139
47	580	60	2020	1	3	2020	1	10	140
47	564	286	2020	1	3	2020	1	10	141
47	558	278	2020	1	3	2020	1	10	142
47	178	98	2020	1	3	2020	1	10	143
47	582	53	2020	1	3	2020	1	10	144
47	183	29	2020	1	3	2020	1	10	145
47	584	294	2020	1	3	2020	1	10	146
47	181	106	2020	1	3	2020	1	10	147
47	583	293	2020	1	3	2020	1	10	148
47	605	48	2020	1	3	2020	1	10	149
47	604	297	2020	1	3	2020	1	10	150
47	589	75	2020	1	3	2020	1	10	151
47	177	104	2020	1	3	2020	1	10	152
47	107	70	2020	1	3	2020	1	10	153
47	581	123	2020	1	3	2020	1	10	154
47	570	20	2020	1	3	2020	1	10	155
47	173	101	2020	1	3	2020	1	10	156
47	176	103	2020	1	3	2020	1	10	157
47	592	293	2020	1	3	2020	1	10	158
47	124	77	2020	1	3	2020	1	10	159
47	556	234	2020	1	3	2020	1	10	160
47	170	99	2020	1	3	2020	1	10	161
47	610	300	2020	1	3	2020	1	10	162
47	607	298	2020	1	3	2020	1	10	163
47	551	28	2020	1	3	2020	1	10	164
47	162	70	2020	1	3	2020	1	10	165
47	618	159	2020	1	3	2020	1	10	166
47	279	153	2020	1	3	2020	1	10	167
47	171	100	2020	1	3	2020	1	10	168
47	621	42	2020	1	3	2020	1	10	169
47	174	102	2020	1	3	2020	1	10	170
47	568	139	2020	1	3	2020	1	10	171
47	571	290	2020	1	3	2020	1	10	172
47	186	2	2020	1	3	2020	1	10	173
47	261	104	2020	1	3	2020	1	10	174
47	543	15	2020	1	3	2020	1	10	175
47	1121	106	2020	1	3	2020	1	10	176
47	625	307	2020	1	3	2020	1	10	177
47	199	115	2020	1	3	2020	1	10	178
47	624	306	2020	1	3	2020	1	10	179
47	1118	106	2020	1	3	2020	1	10	180
47	182	104	2020	1	3	2020	1	10	181
47	626	308	2020	1	3	2020	1	10	182
47	547	282	2020	1	3	2020	1	10	183
47	614	302	2020	1	3	2020	1	10	184
47	260	48	2020	1	3	2020	1	10	185
47	622	62	2020	1	3	2020	1	10	186
47	1122	138	2020	1	3	2020	1	10	187
47	573	292	2020	1	3	2020	1	10	188
47	560	28	2020	1	3	2020	1	10	189
47	898	5	2020	1	3	2020	1	10	190
47	587	295	2020	1	3	2020	1	10	191
47	615	289	2020	1	3	2020	1	10	192
47	612	301	2020	1	3	2020	1	10	193
47	726	45	2020	1	3	2020	1	10	194
47	562	28	2020	1	3	2020	1	10	195
47	557	154	2020	1	3	2020	1	10	196
47	629	130	2020	1	3	2020	1	10	197
47	166	97	2020	1	3	2020	1	10	198
47	264	73	2020	1	3	2020	1	10	199
47	724	53	2020	1	3	2020	1	10	200
48	1	1	2020	4	10	2020	4	17	1
48	2	2	2020	4	10	2020	4	17	2
48	3	3	2020	4	10	2020	4	17	3
48	4	4	2020	4	10	2020	4	17	4
48	6	6	2020	4	10	2020	4	17	5
48	5	5	2020	4	10	2020	4	17	6
48	7	7	2020	4	10	2020	4	17	7
48	8	8	2020	4	10	2020	4	17	8
48	9	9	2020	4	10	2020	4	17	9
48	11	4	2020	4	10	2020	4	17	10
48	10	10	2020	4	10	2020	4	17	11
48	12	11	2020	4	10	2020	4	17	12
48	13	12	2020	4	10	2020	4	17	13
48	15	14	2020	4	10	2020	4	17	14
48	14	13	2020	4	10	2020	4	17	15
48	22	18	2020	4	10	2020	4	17	16
48	19	15	2020	4	10	2020	4	17	17
48	17	1	2020	4	10	2020	4	17	18
48	18	13	2020	4	10	2020	4	17	19
48	21	17	2020	4	10	2020	4	17	20
48	16	4	2020	4	10	2020	4	17	21
48	23	19	2020	4	10	2020	4	17	22
48	24	9	2020	4	10	2020	4	17	23
48	20	16	2020	4	10	2020	4	17	24
48	26	21	2020	4	10	2020	4	17	25
48	30	25	2020	4	10	2020	4	17	26
48	25	20	2020	4	10	2020	4	17	27
48	29	24	2020	4	10	2020	4	17	28
48	27	22	2020	4	10	2020	4	17	29
48	268	150	2020	4	10	2020	4	17	30
48	40	30	2020	4	10	2020	4	17	31
48	33	28	2020	4	10	2020	4	17	32
48	31	26	2020	4	10	2020	4	17	33
48	36	17	2020	4	10	2020	4	17	34
48	34	28	2020	4	10	2020	4	17	35
48	37	29	2020	4	10	2020	4	17	36
48	28	23	2020	4	10	2020	4	17	37
48	116	74	2020	4	10	2020	4	17	38
48	47	34	2020	4	10	2020	4	17	39
48	270	64	2020	4	10	2020	4	17	40
48	35	13	2020	4	10	2020	4	17	41
48	68	47	2020	4	10	2020	4	17	42
48	45	32	2020	4	10	2020	4	17	43
48	44	20	2020	4	10	2020	4	17	44
48	39	13	2020	4	10	2020	4	17	45
48	48	35	2020	4	10	2020	4	17	46
48	38	13	2020	4	10	2020	4	17	47
48	43	10	2020	4	10	2020	4	17	48
48	41	1	2020	4	10	2020	4	17	49
48	53	37	2020	4	10	2020	4	17	50
48	51	28	2020	4	10	2020	4	17	51
48	57	5	2020	4	10	2020	4	17	52
48	32	27	2020	4	10	2020	4	17	53
48	50	5	2020	4	10	2020	4	17	54
48	54	19	2020	4	10	2020	4	17	55
48	62	43	2020	4	10	2020	4	17	56
48	46	33	2020	4	10	2020	4	17	57
48	42	31	2020	4	10	2020	4	17	58
48	52	20	2020	4	10	2020	4	17	59
48	56	39	2020	4	10	2020	4	17	60
48	61	42	2020	4	10	2020	4	17	61
48	49	36	2020	4	10	2020	4	17	62
48	58	40	2020	4	10	2020	4	17	63
48	55	38	2020	4	10	2020	4	17	64
48	63	44	2020	4	10	2020	4	17	65
48	64	45	2020	4	10	2020	4	17	66
48	69	48	2020	4	10	2020	4	17	67
48	60	41	2020	4	10	2020	4	17	68
48	71	9	2020	4	10	2020	4	17	69
48	59	13	2020	4	10	2020	4	17	70
48	70	49	2020	4	10	2020	4	17	71
48	151	90	2020	4	10	2020	4	17	72
48	73	51	2020	4	10	2020	4	17	73
48	66	46	2020	4	10	2020	4	17	74
48	83	57	2020	4	10	2020	4	17	75
48	77	53	2020	4	10	2020	4	17	76
48	65	13	2020	4	10	2020	4	17	77
48	74	28	2020	4	10	2020	4	17	78
48	75	45	2020	4	10	2020	4	17	79
48	72	50	2020	4	10	2020	4	17	80
48	79	55	2020	4	10	2020	4	17	81
48	82	56	2020	4	10	2020	4	17	82
48	81	52	2020	4	10	2020	4	17	83
48	67	1	2020	4	10	2020	4	17	84
48	78	54	2020	4	10	2020	4	17	85
48	110	32	2020	4	10	2020	4	17	86
48	98	65	2020	4	10	2020	4	17	87
48	76	52	2020	4	10	2020	4	17	88
48	84	58	2020	4	10	2020	4	17	89
48	97	64	2020	4	10	2020	4	17	90
48	12	21	2020	4	10	2020	4	17	91
48	93	62	2020	4	10	2020	4	17	92
48	87	59	2020	4	10	2020	4	17	93
48	89	60	2020	4	10	2020	4	17	94
48	96	50	2020	4	10	2020	4	17	95
48	95	63	2020	4	10	2020	4	17	96
48	90	61	2020	4	10	2020	4	17	97
48	94	19	2020	4	10	2020	4	17	98
48	91	61	2020	4	10	2020	4	17	99
48	86	50	2020	4	10	2020	4	17	100
48	1123	96	2020	4	10	2020	4	17	101
48	107	70	2020	4	10	2020	4	17	102
48	99	21	2020	4	10	2020	4	17	103
48	104	69	2020	4	10	2020	4	17	104
48	85	28	2020	4	10	2020	4	17	105
48	101	67	2020	4	10	2020	4	17	106
48	109	70	2020	4	10	2020	4	17	107
48	103	68	2020	4	10	2020	4	17	108
48	281	96	2020	4	10	2020	4	17	109
48	108	48	2020	4	10	2020	4	17	110
48	102	27	2020	4	10	2020	4	17	111
48	106	66	2020	4	10	2020	4	17	112
48	115	73	2020	4	10	2020	4	17	113
48	111	71	2020	4	10	2020	4	17	114
48	114	19	2020	4	10	2020	4	17	115
48	144	86	2020	4	10	2020	4	17	116
48	105	7	2020	4	10	2020	4	17	117
48	123	45	2020	4	10	2020	4	17	118
48	92	1	2020	4	10	2020	4	17	119
48	118	38	2020	4	10	2020	4	17	120
48	113	54	2020	4	10	2020	4	17	121
48	117	17	2020	4	10	2020	4	17	122
48	100	66	2020	4	10	2020	4	17	123
48	128	80	2020	4	10	2020	4	17	124
48	119	75	2020	4	10	2020	4	17	125
48	134	83	2020	4	10	2020	4	17	126
48	1124	205	2020	4	10	2020	4	17	127
48	1125	284	2020	4	10	2020	4	17	128
48	137	51	2020	4	10	2020	4	17	129
48	138	45	2020	4	10	2020	4	17	130
48	121	20	2020	4	10	2020	4	17	131
48	131	2	2020	4	10	2020	4	17	132
48	130	67	2020	4	10	2020	4	17	133
48	157	93	2020	4	10	2020	4	17	134
48	80	33	2020	4	10	2020	4	17	135
48	129	81	2020	4	10	2020	4	17	136
48	152	91	2020	4	10	2020	4	17	137
48	125	78	2020	4	10	2020	4	17	138
48	195	113	2020	4	10	2020	4	17	139
48	127	16	2020	4	10	2020	4	17	140
48	132	32	2020	4	10	2020	4	17	141
48	122	20	2020	4	10	2020	4	17	142
48	124	77	2020	4	10	2020	4	17	143
48	120	76	2020	4	10	2020	4	17	144
48	139	60	2020	4	10	2020	4	17	145
48	141	84	2020	4	10	2020	4	17	146
48	146	87	2020	4	10	2020	4	17	147
48	140	33	2020	4	10	2020	4	17	148
48	112	72	2020	4	10	2020	4	17	149
48	133	82	2020	4	10	2020	4	17	150
48	145	19	2020	4	10	2020	4	17	151
48	156	37	2020	4	10	2020	4	17	152
48	153	51	2020	4	10	2020	4	17	153
48	150	48	2020	4	10	2020	4	17	154
48	158	56	2020	4	10	2020	4	17	155
48	166	97	2020	4	10	2020	4	17	156
48	154	28	2020	4	10	2020	4	17	157
48	135	20	2020	4	10	2020	4	17	158
48	162	70	2020	4	10	2020	4	17	159
48	136	13	2020	4	10	2020	4	17	160
48	160	89	2020	4	10	2020	4	17	161
48	155	92	2020	4	10	2020	4	17	162
48	164	96	2020	4	10	2020	4	17	163
48	147	13	2020	4	10	2020	4	17	164
48	165	56	2020	4	10	2020	4	17	165
48	170	99	2020	4	10	2020	4	17	166
48	159	94	2020	4	10	2020	4	17	167
48	173	101	2020	4	10	2020	4	17	168
48	174	102	2020	4	10	2020	4	17	169
48	168	89	2020	4	10	2020	4	17	170
48	275	154	2020	4	10	2020	4	17	171
48	276	74	2020	4	10	2020	4	17	172
48	171	100	2020	4	10	2020	4	17	173
48	161	32	2020	4	10	2020	4	17	174
48	188	107	2020	4	10	2020	4	17	175
48	176	103	2020	4	10	2020	4	17	176
48	149	89	2020	4	10	2020	4	17	177
48	175	21	2020	4	10	2020	4	17	178
48	186	2	2020	4	10	2020	4	17	179
48	178	98	2020	4	10	2020	4	17	180
48	163	95	2020	4	10	2020	4	17	181
48	184	19	2020	4	10	2020	4	17	182
48	183	29	2020	4	10	2020	4	17	183
48	181	106	2020	4	10	2020	4	17	184
48	148	88	2020	4	10	2020	4	17	185
48	185	22	2020	4	10	2020	4	17	186
48	187	63	2020	4	10	2020	4	17	187
48	177	104	2020	4	10	2020	4	17	188
48	192	70	2020	4	10	2020	4	17	189
48	179	105	2020	4	10	2020	4	17	190
48	279	153	2020	4	10	2020	4	17	191
48	182	104	2020	4	10	2020	4	17	192
48	189	108	2020	4	10	2020	4	17	193
48	196	50	2020	4	10	2020	4	17	194
48	193	111	2020	4	10	2020	4	17	195
48	143	85	2020	4	10	2020	4	17	196
48	197	114	2020	4	10	2020	4	17	197
48	142	4	2020	4	10	2020	4	17	198
48	217	123	2020	4	10	2020	4	17	199
48	194	112	2020	4	10	2020	4	17	200
49	1	1	2020	5	8	2020	5	15	1
49	204	63	2020	5	8	2020	5	15	2
49	3	3	2020	5	8	2020	5	15	3
49	205	118	2020	5	8	2020	5	15	4
49	2	2	2020	5	8	2020	5	15	5
49	200	27	2020	5	8	2020	5	15	6
49	203	117	2020	5	8	2020	5	15	7
49	6	6	2020	5	8	2020	5	15	8
49	4	4	2020	5	8	2020	5	15	9
49	7	7	2020	5	8	2020	5	15	10
49	8	8	2020	5	8	2020	5	15	11
49	5	5	2020	5	8	2020	5	15	12
49	15	14	2020	5	8	2020	5	15	13
49	11	4	2020	5	8	2020	5	15	14
49	9	9	2020	5	8	2020	5	15	15
49	10	10	2020	5	8	2020	5	15	16
49	12	11	2020	5	8	2020	5	15	17
49	13	12	2020	5	8	2020	5	15	18
49	68	47	2020	5	8	2020	5	15	19
49	207	119	2020	5	8	2020	5	15	20
49	21	17	2020	5	8	2020	5	15	21
49	214	68	2020	5	8	2020	5	15	22
49	24	9	2020	5	8	2020	5	15	23
49	158	56	2020	5	8	2020	5	15	24
49	18	13	2020	5	8	2020	5	15	25
49	23	19	2020	5	8	2020	5	15	26
49	230	48	2020	5	8	2020	5	15	27
49	165	56	2020	5	8	2020	5	15	28
49	19	15	2020	5	8	2020	5	15	29
49	30	25	2020	5	8	2020	5	15	30
49	17	1	2020	5	8	2020	5	15	31
49	14	13	2020	5	8	2020	5	15	32
49	26	21	2020	5	8	2020	5	15	33
49	82	56	2020	5	8	2020	5	15	34
49	20	16	2020	5	8	2020	5	15	35
49	211	121	2020	5	8	2020	5	15	36
49	225	9	2020	5	8	2020	5	15	37
49	16	4	2020	5	8	2020	5	15	38
49	29	24	2020	5	8	2020	5	15	39
49	36	17	2020	5	8	2020	5	15	40
49	27	22	2020	5	8	2020	5	15	41
49	116	74	2020	5	8	2020	5	15	42
49	47	34	2020	5	8	2020	5	15	43
49	33	28	2020	5	8	2020	5	15	44
49	917	302	2020	5	8	2020	5	15	45
49	25	20	2020	5	8	2020	5	15	46
49	250	13	2020	5	8	2020	5	15	47
49	258	13	2020	5	8	2020	5	15	48
49	22	18	2020	5	8	2020	5	15	49
49	37	29	2020	5	8	2020	5	15	50
49	62	43	2020	5	8	2020	5	15	51
49	202	116	2020	5	8	2020	5	15	52
49	218	86	2020	5	8	2020	5	15	53
49	40	30	2020	5	8	2020	5	15	54
49	34	28	2020	5	8	2020	5	15	55
49	918	13	2020	5	8	2020	5	15	56
49	31	26	2020	5	8	2020	5	15	57
49	798	2	2020	5	8	2020	5	15	58
49	916	367	2020	5	8	2020	5	15	59
49	915	13	2020	5	8	2020	5	15	60
49	54	19	2020	5	8	2020	5	15	61
49	812	349	2020	5	8	2020	5	15	62
49	229	84	2020	5	8	2020	5	15	63
49	48	35	2020	5	8	2020	5	15	64
49	151	90	2020	5	8	2020	5	15	65
49	51	28	2020	5	8	2020	5	15	66
49	57	5	2020	5	8	2020	5	15	67
49	35	13	2020	5	8	2020	5	15	68
49	44	20	2020	5	8	2020	5	15	69
49	39	13	2020	5	8	2020	5	15	70
49	45	32	2020	5	8	2020	5	15	71
49	265	89	2020	5	8	2020	5	15	72
49	69	48	2020	5	8	2020	5	15	73
49	73	51	2020	5	8	2020	5	15	74
49	53	37	2020	5	8	2020	5	15	75
49	58	40	2020	5	8	2020	5	15	76
49	38	13	2020	5	8	2020	5	15	77
49	110	32	2020	5	8	2020	5	15	78
49	64	45	2020	5	8	2020	5	15	79
49	222	2	2020	5	8	2020	5	15	80
49	52	20	2020	5	8	2020	5	15	81
49	925	13	2020	5	8	2020	5	15	82
49	1126	13	2020	5	8	2020	5	15	83
49	43	10	2020	5	8	2020	5	15	84
49	56	39	2020	5	8	2020	5	15	85
49	257	31	2020	5	8	2020	5	15	86
49	63	44	2020	5	8	2020	5	15	87
49	46	33	2020	5	8	2020	5	15	88
49	81	52	2020	5	8	2020	5	15	89
49	70	49	2020	5	8	2020	5	15	90
49	50	5	2020	5	8	2020	5	15	91
49	268	150	2020	5	8	2020	5	15	92
49	208	39	2020	5	8	2020	5	15	93
49	83	57	2020	5	8	2020	5	15	94
49	74	28	2020	5	8	2020	5	15	95
49	28	23	2020	5	8	2020	5	15	96
49	71	9	2020	5	8	2020	5	15	97
49	61	42	2020	5	8	2020	5	15	98
49	55	38	2020	5	8	2020	5	15	99
49	95	63	2020	5	8	2020	5	15	100
49	98	65	2020	5	8	2020	5	15	101
49	75	45	2020	5	8	2020	5	15	102
49	77	53	2020	5	8	2020	5	15	103
49	60	41	2020	5	8	2020	5	15	104
49	59	13	2020	5	8	2020	5	15	105
49	93	62	2020	5	8	2020	5	15	106
49	65	13	2020	5	8	2020	5	15	107
49	49	36	2020	5	8	2020	5	15	108
49	235	133	2020	5	8	2020	5	15	109
49	94	19	2020	5	8	2020	5	15	110
49	84	58	2020	5	8	2020	5	15	111
49	79	55	2020	5	8	2020	5	15	112
49	137	51	2020	5	8	2020	5	15	113
49	12	21	2020	5	8	2020	5	15	114
49	72	50	2020	5	8	2020	5	15	115
49	1127	13	2020	5	8	2020	5	15	116
49	107	70	2020	5	8	2020	5	15	117
49	99	21	2020	5	8	2020	5	15	118
49	104	69	2020	5	8	2020	5	15	119
49	103	68	2020	5	8	2020	5	15	120
49	109	70	2020	5	8	2020	5	15	121
49	195	113	2020	5	8	2020	5	15	122
49	115	73	2020	5	8	2020	5	15	123
49	87	59	2020	5	8	2020	5	15	124
49	78	54	2020	5	8	2020	5	15	125
49	111	71	2020	5	8	2020	5	15	126
49	91	61	2020	5	8	2020	5	15	127
49	108	48	2020	5	8	2020	5	15	128
49	123	45	2020	5	8	2020	5	15	129
49	1128	391	2020	5	8	2020	5	15	130
49	1129	13	2020	5	8	2020	5	15	131
49	128	80	2020	5	8	2020	5	15	132
49	122	20	2020	5	8	2020	5	15	133
49	150	48	2020	5	8	2020	5	15	134
49	138	45	2020	5	8	2020	5	15	135
49	121	20	2020	5	8	2020	5	15	136
49	118	38	2020	5	8	2020	5	15	137
49	144	86	2020	5	8	2020	5	15	138
49	96	50	2020	5	8	2020	5	15	139
49	157	93	2020	5	8	2020	5	15	140
49	102	27	2020	5	8	2020	5	15	141
49	89	60	2020	5	8	2020	5	15	142
49	106	66	2020	5	8	2020	5	15	143
49	114	19	2020	5	8	2020	5	15	144
49	97	64	2020	5	8	2020	5	15	145
49	141	84	2020	5	8	2020	5	15	146
49	117	17	2020	5	8	2020	5	15	147
49	101	67	2020	5	8	2020	5	15	148
49	808	348	2020	5	8	2020	5	15	149
49	806	347	2020	5	8	2020	5	15	150
49	119	75	2020	5	8	2020	5	15	151
49	136	13	2020	5	8	2020	5	15	152
49	41	1	2020	5	8	2020	5	15	153
49	129	81	2020	5	8	2020	5	15	154
49	67	1	2020	5	8	2020	5	15	155
49	132	32	2020	5	8	2020	5	15	156
49	134	83	2020	5	8	2020	5	15	157
49	153	51	2020	5	8	2020	5	15	158
49	178	98	2020	5	8	2020	5	15	159
49	146	87	2020	5	8	2020	5	15	160
49	267	56	2020	5	8	2020	5	15	161
49	173	101	2020	5	8	2020	5	15	162
49	139	60	2020	5	8	2020	5	15	163
49	171	100	2020	5	8	2020	5	15	164
49	147	13	2020	5	8	2020	5	15	165
49	800	2	2020	5	8	2020	5	15	166
49	145	19	2020	5	8	2020	5	15	167
49	166	97	2020	5	8	2020	5	15	168
49	238	32	2020	5	8	2020	5	15	169
49	131	2	2020	5	8	2020	5	15	170
49	125	78	2020	5	8	2020	5	15	171
49	174	102	2020	5	8	2020	5	15	172
49	217	123	2020	5	8	2020	5	15	173
49	156	37	2020	5	8	2020	5	15	174
49	187	63	2020	5	8	2020	5	15	175
49	66	46	2020	5	8	2020	5	15	176
49	1130	392	2020	5	8	2020	5	15	177
49	105	7	2020	5	8	2020	5	15	178
49	170	99	2020	5	8	2020	5	15	179
49	162	70	2020	5	8	2020	5	15	180
49	275	154	2020	5	8	2020	5	15	181
49	181	106	2020	5	8	2020	5	15	182
49	140	33	2020	5	8	2020	5	15	183
49	154	28	2020	5	8	2020	5	15	184
49	266	56	2020	5	8	2020	5	15	185
49	254	32	2020	5	8	2020	5	15	186
49	130	67	2020	5	8	2020	5	15	187
49	168	89	2020	5	8	2020	5	15	188
49	188	107	2020	5	8	2020	5	15	189
49	159	94	2020	5	8	2020	5	15	190
49	184	19	2020	5	8	2020	5	15	191
49	182	104	2020	5	8	2020	5	15	192
49	256	146	2020	5	8	2020	5	15	193
49	113	54	2020	5	8	2020	5	15	194
49	183	29	2020	5	8	2020	5	15	195
49	160	89	2020	5	8	2020	5	15	196
49	85	28	2020	5	8	2020	5	15	197
49	260	48	2020	5	8	2020	5	15	198
49	279	153	2020	5	8	2020	5	15	199
49	196	50	2020	5	8	2020	5	15	200
50	292	160	2020	9	11	2020	9	18	1
50	285	42	2020	9	11	2020	9	18	2
50	291	159	2020	9	11	2020	9	18	3
50	289	158	2020	9	11	2020	9	18	4
50	99	21	2020	9	11	2020	9	18	5
50	1	1	2020	9	11	2020	9	18	6
50	216	122	2020	9	11	2020	9	18	7
50	200	27	2020	9	11	2020	9	18	8
50	286	157	2020	9	11	2020	9	18	9
50	301	2	2020	9	11	2020	9	18	10
50	294	92	2020	9	11	2020	9	18	11
50	297	162	2020	9	11	2020	9	18	12
50	303	77	2020	9	11	2020	9	18	13
50	327	172	2020	9	11	2020	9	18	14
50	296	161	2020	9	11	2020	9	18	15
50	62	43	2020	9	11	2020	9	18	16
50	323	171	2020	9	11	2020	9	18	17
50	3	3	2020	9	11	2020	9	18	18
50	336	92	2020	9	11	2020	9	18	19
50	321	16	2020	9	11	2020	9	18	20
50	310	20	2020	9	11	2020	9	18	21
50	298	123	2020	9	11	2020	9	18	22
50	312	167	2020	9	11	2020	9	18	23
50	330	48	2020	9	11	2020	9	18	24
50	7	7	2020	9	11	2020	9	18	25
50	219	124	2020	9	11	2020	9	18	26
50	231	130	2020	9	11	2020	9	18	27
50	21	17	2020	9	11	2020	9	18	28
50	319	169	2020	9	11	2020	9	18	29
50	334	32	2020	9	11	2020	9	18	30
50	201	52	2020	9	11	2020	9	18	31
50	36	17	2020	9	11	2020	9	18	32
50	346	48	2020	9	11	2020	9	18	33
50	355	96	2020	9	11	2020	9	18	34
50	313	168	2020	9	11	2020	9	18	35
50	6	6	2020	9	11	2020	9	18	36
50	236	134	2020	9	11	2020	9	18	37
50	361	186	2020	9	11	2020	9	18	38
50	370	48	2020	9	11	2020	9	18	39
50	379	172	2020	9	11	2020	9	18	40
50	4	4	2020	9	11	2020	9	18	41
50	8	8	2020	9	11	2020	9	18	42
50	137	51	2020	9	11	2020	9	18	43
50	11	4	2020	9	11	2020	9	18	44
50	342	171	2020	9	11	2020	9	18	45
50	366	190	2020	9	11	2020	9	18	46
50	362	92	2020	9	11	2020	9	18	47
50	204	63	2020	9	11	2020	9	18	48
50	68	47	2020	9	11	2020	9	18	49
50	217	123	2020	9	11	2020	9	18	50
50	23	19	2020	9	11	2020	9	18	51
50	343	176	2020	9	11	2020	9	18	52
50	398	209	2020	9	11	2020	9	18	53
50	2	2	2020	9	11	2020	9	18	54
50	158	56	2020	9	11	2020	9	18	55
50	722	68	2020	9	11	2020	9	18	56
50	316	130	2020	9	11	2020	9	18	57
50	5	5	2020	9	11	2020	9	18	58
50	26	21	2020	9	11	2020	9	18	59
50	668	314	2020	9	11	2020	9	18	60
50	208	39	2020	9	11	2020	9	18	61
50	391	207	2020	9	11	2020	9	18	62
50	354	182	2020	9	11	2020	9	18	63
50	348	179	2020	9	11	2020	9	18	64
50	69	48	2020	9	11	2020	9	18	65
50	20	16	2020	9	11	2020	9	18	66
50	54	19	2020	9	11	2020	9	18	67
50	202	116	2020	9	11	2020	9	18	68
50	37	29	2020	9	11	2020	9	18	69
50	27	22	2020	9	11	2020	9	18	70
50	12	11	2020	9	11	2020	9	18	71
50	82	56	2020	9	11	2020	9	18	72
50	150	48	2020	9	11	2020	9	18	73
50	363	187	2020	9	11	2020	9	18	74
50	165	56	2020	9	11	2020	9	18	75
50	858	301	2020	9	11	2020	9	18	76
50	380	200	2020	9	11	2020	9	18	77
50	33	28	2020	9	11	2020	9	18	78
50	155	92	2020	9	11	2020	9	18	79
50	51	28	2020	9	11	2020	9	18	80
50	10	10	2020	9	11	2020	9	18	81
50	678	315	2020	9	11	2020	9	18	82
50	17	1	2020	9	11	2020	9	18	83
50	81	52	2020	9	11	2020	9	18	84
50	393	130	2020	9	11	2020	9	18	85
50	364	188	2020	9	11	2020	9	18	86
50	665	234	2020	9	11	2020	9	18	87
50	209	120	2020	9	11	2020	9	18	88
50	720	355	2020	9	11	2020	9	18	89
50	306	164	2020	9	11	2020	9	18	90
50	325	130	2020	9	11	2020	9	18	91
50	29	24	2020	9	11	2020	9	18	92
50	210	66	2020	9	11	2020	9	18	93
50	19	15	2020	9	11	2020	9	18	94
50	48	35	2020	9	11	2020	9	18	95
50	9	9	2020	9	11	2020	9	18	96
50	397	92	2020	9	11	2020	9	18	97
50	93	62	2020	9	11	2020	9	18	98
50	223	35	2020	9	11	2020	9	18	99
50	375	196	2020	9	11	2020	9	18	100
50	47	34	2020	9	11	2020	9	18	101
50	664	28	2020	9	11	2020	9	18	102
50	122	20	2020	9	11	2020	9	18	103
50	116	74	2020	9	11	2020	9	18	104
50	12	21	2020	9	11	2020	9	18	105
50	203	117	2020	9	11	2020	9	18	106
50	887	362	2020	9	11	2020	9	18	107
50	719	325	2020	9	11	2020	9	18	108
50	214	68	2020	9	11	2020	9	18	109
50	34	28	2020	9	11	2020	9	18	110
50	682	90	2020	9	11	2020	9	18	111
50	865	356	2020	9	11	2020	9	18	112
50	326	159	2020	9	11	2020	9	18	113
50	317	139	2020	9	11	2020	9	18	114
50	13	12	2020	9	11	2020	9	18	115
50	356	183	2020	9	11	2020	9	18	116
50	791	344	2020	9	11	2020	9	18	117
50	110	32	2020	9	11	2020	9	18	118
50	396	159	2020	9	11	2020	9	18	119
50	25	20	2020	9	11	2020	9	18	120
50	299	163	2020	9	11	2020	9	18	121
50	107	70	2020	9	11	2020	9	18	122
50	996	130	2020	9	11	2020	9	18	123
50	128	80	2020	9	11	2020	9	18	124
50	691	145	2020	9	11	2020	9	18	125
50	15	14	2020	9	11	2020	9	18	126
50	374	195	2020	9	11	2020	9	18	127
50	31	26	2020	9	11	2020	9	18	128
50	218	86	2020	9	11	2020	9	18	129
50	64	45	2020	9	11	2020	9	18	130
50	260	48	2020	9	11	2020	9	18	131
50	211	121	2020	9	11	2020	9	18	132
50	138	45	2020	9	11	2020	9	18	133
50	95	63	2020	9	11	2020	9	18	134
50	123	45	2020	9	11	2020	9	18	135
50	58	40	2020	9	11	2020	9	18	136
50	404	214	2020	9	11	2020	9	18	137
50	94	19	2020	9	11	2020	9	18	138
50	399	92	2020	9	11	2020	9	18	139
50	115	73	2020	9	11	2020	9	18	140
50	109	70	2020	9	11	2020	9	18	141
50	372	85	2020	9	11	2020	9	18	142
50	382	166	2020	9	11	2020	9	18	143
50	205	118	2020	9	11	2020	9	18	144
50	18	13	2020	9	11	2020	9	18	145
50	227	128	2020	9	11	2020	9	18	146
50	666	234	2020	9	11	2020	9	18	147
50	369	193	2020	9	11	2020	9	18	148
50	859	157	2020	9	11	2020	9	18	149
50	708	85	2020	9	11	2020	9	18	150
50	368	192	2020	9	11	2020	9	18	151
50	74	28	2020	9	11	2020	9	18	152
50	53	37	2020	9	11	2020	9	18	153
50	30	25	2020	9	11	2020	9	18	154
50	680	48	2020	9	11	2020	9	18	155
50	995	337	2020	9	11	2020	9	18	156
50	222	2	2020	9	11	2020	9	18	157
50	75	45	2020	9	11	2020	9	18	158
50	856	353	2020	9	11	2020	9	18	159
50	14	13	2020	9	11	2020	9	18	160
50	676	48	2020	9	11	2020	9	18	161
50	213	33	2020	9	11	2020	9	18	162
50	230	48	2020	9	11	2020	9	18	163
50	174	102	2020	9	11	2020	9	18	164
50	672	22	2020	9	11	2020	9	18	165
50	288	92	2020	9	11	2020	9	18	166
50	1131	393	2020	9	11	2020	9	18	167
50	700	74	2020	9	11	2020	9	18	168
50	240	137	2020	9	11	2020	9	18	169
50	559	134	2020	9	11	2020	9	18	170
50	997	205	2020	9	11	2020	9	18	171
50	403	213	2020	9	11	2020	9	18	172
50	157	93	2020	9	11	2020	9	18	173
50	173	101	2020	9	11	2020	9	18	174
50	853	352	2020	9	11	2020	9	18	175
50	103	68	2020	9	11	2020	9	18	176
50	359	185	2020	9	11	2020	9	18	177
50	118	38	2020	9	11	2020	9	18	178
50	16	4	2020	9	11	2020	9	18	179
50	688	110	2020	9	11	2020	9	18	180
50	221	126	2020	9	11	2020	9	18	181
50	868	55	2020	9	11	2020	9	18	182
50	1132	205	2020	9	11	2020	9	18	183
50	381	201	2020	9	11	2020	9	18	184
50	729	158	2020	9	11	2020	9	18	185
50	101	67	2020	9	11	2020	9	18	186
50	229	84	2020	9	11	2020	9	18	187
50	182	104	2020	9	11	2020	9	18	188
50	728	329	2020	9	11	2020	9	18	189
50	857	169	2020	9	11	2020	9	18	190
50	24	9	2020	9	11	2020	9	18	191
50	401	211	2020	9	11	2020	9	18	192
50	166	97	2020	9	11	2020	9	18	193
50	408	217	2020	9	11	2020	9	18	194
50	866	316	2020	9	11	2020	9	18	195
50	237	135	2020	9	11	2020	9	18	196
50	712	322	2020	9	11	2020	9	18	197
50	207	119	2020	9	11	2020	9	18	198
50	146	87	2020	9	11	2020	9	18	199
50	117	17	2020	9	11	2020	9	18	200
51	7	7	2020	1	24	2020	1	31	1
51	5	5	2020	1	24	2020	1	31	2
51	1	1	2020	1	24	2020	1	31	3
51	20	16	2020	1	24	2020	1	31	4
51	31	26	2020	1	24	2020	1	31	5
51	43	10	2020	1	24	2020	1	31	6
51	29	24	2020	1	24	2020	1	31	7
51	19	15	2020	1	24	2020	1	31	8
51	12	11	2020	1	24	2020	1	31	9
51	4	4	2020	1	24	2020	1	31	10
51	34	28	2020	1	24	2020	1	31	11
51	27	22	2020	1	24	2020	1	31	12
51	33	28	2020	1	24	2020	1	31	13
51	23	19	2020	1	24	2020	1	31	14
51	21	17	2020	1	24	2020	1	31	15
51	56	39	2020	1	24	2020	1	31	16
51	37	29	2020	1	24	2020	1	31	17
51	55	38	2020	1	24	2020	1	31	18
51	97	64	2020	1	24	2020	1	31	19
51	26	21	2020	1	24	2020	1	31	20
51	60	41	2020	1	24	2020	1	31	21
51	49	36	2020	1	24	2020	1	31	22
51	113	54	2020	1	24	2020	1	31	23
51	36	17	2020	1	24	2020	1	31	24
51	515	64	2020	1	24	2020	1	31	25
51	59	13	2020	1	24	2020	1	31	26
51	518	273	2020	1	24	2020	1	31	27
51	89	60	2020	1	24	2020	1	31	28
51	90	61	2020	1	24	2020	1	31	29
51	48	35	2020	1	24	2020	1	31	30
51	102	27	2020	1	24	2020	1	31	31
51	9	9	2020	1	24	2020	1	31	32
51	79	55	2020	1	24	2020	1	31	33
51	53	37	2020	1	24	2020	1	31	34
51	58	40	2020	1	24	2020	1	31	35
51	132	32	2020	1	24	2020	1	31	36
51	144	86	2020	1	24	2020	1	31	37
51	52	20	2020	1	24	2020	1	31	38
51	133	82	2020	1	24	2020	1	31	39
51	99	21	2020	1	24	2020	1	31	40
51	54	19	2020	1	24	2020	1	31	41
51	74	28	2020	1	24	2020	1	31	42
51	64	45	2020	1	24	2020	1	31	43
51	83	57	2020	1	24	2020	1	31	44
51	82	56	2020	1	24	2020	1	31	45
51	517	272	2020	1	24	2020	1	31	46
51	106	66	2020	1	24	2020	1	31	47
51	519	158	2020	1	24	2020	1	31	48
51	108	48	2020	1	24	2020	1	31	49
51	3	3	2020	1	24	2020	1	31	50
51	125	78	2020	1	24	2020	1	31	51
51	120	76	2020	1	24	2020	1	31	52
51	75	45	2020	1	24	2020	1	31	53
51	51	28	2020	1	24	2020	1	31	54
51	50	5	2020	1	24	2020	1	31	55
51	69	48	2020	1	24	2020	1	31	56
51	70	49	2020	1	24	2020	1	31	57
51	47	34	2020	1	24	2020	1	31	58
51	521	78	2020	1	24	2020	1	31	59
51	95	63	2020	1	24	2020	1	31	60
51	87	59	2020	1	24	2020	1	31	61
51	553	26	2020	1	24	2020	1	31	62
51	141	84	2020	1	24	2020	1	31	63
51	121	20	2020	1	24	2020	1	31	64
51	523	27	2020	1	24	2020	1	31	65
51	527	50	2020	1	24	2020	1	31	66
51	525	53	2020	1	24	2020	1	31	67
51	147	13	2020	1	24	2020	1	31	68
51	528	45	2020	1	24	2020	1	31	69
51	526	186	2020	1	24	2020	1	31	70
51	67	1	2020	1	24	2020	1	31	71
51	81	52	2020	1	24	2020	1	31	72
51	119	75	2020	1	24	2020	1	31	73
51	544	280	2020	1	24	2020	1	31	74
51	114	19	2020	1	24	2020	1	31	75
51	91	61	2020	1	24	2020	1	31	76
51	535	27	2020	1	24	2020	1	31	77
51	536	56	2020	1	24	2020	1	31	78
51	135	20	2020	1	24	2020	1	31	79
51	533	33	2020	1	24	2020	1	31	80
51	160	89	2020	1	24	2020	1	31	81
51	1002	26	2020	1	24	2020	1	31	82
51	529	196	2020	1	24	2020	1	31	83
51	118	38	2020	1	24	2020	1	31	84
51	531	276	2020	1	24	2020	1	31	85
51	530	111	2020	1	24	2020	1	31	86
51	104	69	2020	1	24	2020	1	31	87
51	13	12	2020	1	24	2020	1	31	88
51	111	71	2020	1	24	2020	1	31	89
51	537	277	2020	1	24	2020	1	31	90
51	534	28	2020	1	24	2020	1	31	91
51	163	95	2020	1	24	2020	1	31	92
51	103	68	2020	1	24	2020	1	31	93
51	146	87	2020	1	24	2020	1	31	94
51	1003	26	2020	1	24	2020	1	31	95
51	532	55	2020	1	24	2020	1	31	96
51	1005	273	2020	1	24	2020	1	31	97
51	117	17	2020	1	24	2020	1	31	98
51	139	60	2020	1	24	2020	1	31	99
51	105	7	2020	1	24	2020	1	31	100
51	145	19	2020	1	24	2020	1	31	101
51	150	48	2020	1	24	2020	1	31	102
51	540	40	2020	1	24	2020	1	31	103
51	93	62	2020	1	24	2020	1	31	104
51	572	291	2020	1	24	2020	1	31	105
51	539	278	2020	1	24	2020	1	31	106
51	191	110	2020	1	24	2020	1	31	107
51	541	279	2020	1	24	2020	1	31	108
51	542	112	2020	1	24	2020	1	31	109
51	154	28	2020	1	24	2020	1	31	110
51	94	19	2020	1	24	2020	1	31	111
51	175	21	2020	1	24	2020	1	31	112
51	543	15	2020	1	24	2020	1	31	113
51	548	120	2020	1	24	2020	1	31	114
51	115	73	2020	1	24	2020	1	31	115
51	545	281	2020	1	24	2020	1	31	116
51	131	2	2020	1	24	2020	1	31	117
51	551	28	2020	1	24	2020	1	31	118
51	1004	26	2020	1	24	2020	1	31	119
51	565	287	2020	1	24	2020	1	31	120
51	156	37	2020	1	24	2020	1	31	121
51	123	45	2020	1	24	2020	1	31	122
51	590	106	2020	1	24	2020	1	31	123
51	546	123	2020	1	24	2020	1	31	124
51	563	110	2020	1	24	2020	1	31	125
51	549	112	2020	1	24	2020	1	31	126
51	101	67	2020	1	24	2020	1	31	127
51	547	282	2020	1	24	2020	1	31	128
51	1133	394	2020	1	24	2020	1	31	129
51	109	70	2020	1	24	2020	1	31	130
51	165	56	2020	1	24	2020	1	31	131
51	282	74	2020	1	24	2020	1	31	132
51	168	89	2020	1	24	2020	1	31	133
51	179	105	2020	1	24	2020	1	31	134
51	552	111	2020	1	24	2020	1	31	135
51	187	63	2020	1	24	2020	1	31	136
51	128	80	2020	1	24	2020	1	31	137
51	561	285	2020	1	24	2020	1	31	138
51	107	70	2020	1	24	2020	1	31	139
51	153	51	2020	1	24	2020	1	31	140
51	560	28	2020	1	24	2020	1	31	141
51	159	94	2020	1	24	2020	1	31	142
51	558	278	2020	1	24	2020	1	31	143
51	140	33	2020	1	24	2020	1	31	144
51	559	134	2020	1	24	2020	1	31	145
51	557	154	2020	1	24	2020	1	31	146
51	578	38	2020	1	24	2020	1	31	147
51	562	28	2020	1	24	2020	1	31	148
51	130	67	2020	1	24	2020	1	31	149
51	566	120	2020	1	24	2020	1	31	150
51	138	45	2020	1	24	2020	1	31	151
51	12	21	2020	1	24	2020	1	31	152
51	185	22	2020	1	24	2020	1	31	153
51	1006	26	2020	1	24	2020	1	31	154
51	569	289	2020	1	24	2020	1	31	155
51	176	103	2020	1	24	2020	1	31	156
51	571	290	2020	1	24	2020	1	31	157
51	158	56	2020	1	24	2020	1	31	158
51	575	56	2020	1	24	2020	1	31	159
51	573	292	2020	1	24	2020	1	31	160
51	593	296	2020	1	24	2020	1	31	161
51	162	70	2020	1	24	2020	1	31	162
51	184	19	2020	1	24	2020	1	31	163
51	1134	284	2020	1	24	2020	1	31	164
51	580	60	2020	1	24	2020	1	31	165
51	574	27	2020	1	24	2020	1	31	166
51	577	28	2020	1	24	2020	1	31	167
51	570	20	2020	1	24	2020	1	31	168
51	124	77	2020	1	24	2020	1	31	169
51	568	139	2020	1	24	2020	1	31	170
51	1135	18	2020	1	24	2020	1	31	171
51	576	196	2020	1	24	2020	1	31	172
51	584	294	2020	1	24	2020	1	31	173
51	183	29	2020	1	24	2020	1	31	174
51	188	107	2020	1	24	2020	1	31	175
51	581	123	2020	1	24	2020	1	31	176
51	583	293	2020	1	24	2020	1	31	177
51	181	106	2020	1	24	2020	1	31	178
51	174	102	2020	1	24	2020	1	31	179
51	173	101	2020	1	24	2020	1	31	180
51	177	104	2020	1	24	2020	1	31	181
51	199	115	2020	1	24	2020	1	31	182
51	586	41	2020	1	24	2020	1	31	183
51	582	53	2020	1	24	2020	1	31	184
51	601	64	2020	1	24	2020	1	31	185
51	178	98	2020	1	24	2020	1	31	186
51	1136	395	2020	1	24	2020	1	31	187
51	589	75	2020	1	24	2020	1	31	188
51	556	234	2020	1	24	2020	1	31	189
51	594	54	2020	1	24	2020	1	31	190
51	591	28	2020	1	24	2020	1	31	191
51	170	99	2020	1	24	2020	1	31	192
51	605	48	2020	1	24	2020	1	31	193
51	616	303	2020	1	24	2020	1	31	194
51	592	293	2020	1	24	2020	1	31	195
51	618	159	2020	1	24	2020	1	31	196
51	626	308	2020	1	24	2020	1	31	197
51	564	286	2020	1	24	2020	1	31	198
51	1007	26	2020	1	24	2020	1	31	199
51	186	2	2020	1	24	2020	1	31	200
52	1	1	2020	3	13	2020	3	20	1
52	5	5	2020	3	13	2020	3	20	2
52	7	7	2020	3	13	2020	3	20	3
52	4	4	2020	3	13	2020	3	20	4
52	10	10	2020	3	13	2020	3	20	5
52	9	9	2020	3	13	2020	3	20	6
52	12	11	2020	3	13	2020	3	20	7
52	20	16	2020	3	13	2020	3	20	8
52	14	13	2020	3	13	2020	3	20	9
52	35	13	2020	3	13	2020	3	20	10
52	19	15	2020	3	13	2020	3	20	11
52	6	6	2020	3	13	2020	3	20	12
52	38	13	2020	3	13	2020	3	20	13
52	31	26	2020	3	13	2020	3	20	14
52	3	3	2020	3	13	2020	3	20	15
52	39	13	2020	3	13	2020	3	20	16
52	8	8	2020	3	13	2020	3	20	17
52	23	19	2020	3	13	2020	3	20	18
52	13	12	2020	3	13	2020	3	20	19
52	21	17	2020	3	13	2020	3	20	20
52	27	22	2020	3	13	2020	3	20	21
52	15	14	2020	3	13	2020	3	20	22
52	26	21	2020	3	13	2020	3	20	23
52	43	10	2020	3	13	2020	3	20	24
52	29	24	2020	3	13	2020	3	20	25
52	34	28	2020	3	13	2020	3	20	26
52	25	20	2020	3	13	2020	3	20	27
52	33	28	2020	3	13	2020	3	20	28
52	16	4	2020	3	13	2020	3	20	29
52	65	13	2020	3	13	2020	3	20	30
52	59	13	2020	3	13	2020	3	20	31
52	96	50	2020	3	13	2020	3	20	32
52	36	17	2020	3	13	2020	3	20	33
52	37	29	2020	3	13	2020	3	20	34
52	72	50	2020	3	13	2020	3	20	35
52	86	50	2020	3	13	2020	3	20	36
52	76	52	2020	3	13	2020	3	20	37
52	49	36	2020	3	13	2020	3	20	38
52	85	28	2020	3	13	2020	3	20	39
52	18	13	2020	3	13	2020	3	20	40
52	30	25	2020	3	13	2020	3	20	41
52	41	1	2020	3	13	2020	3	20	42
52	55	38	2020	3	13	2020	3	20	43
52	60	41	2020	3	13	2020	3	20	44
52	56	39	2020	3	13	2020	3	20	45
52	52	20	2020	3	13	2020	3	20	46
52	66	46	2020	3	13	2020	3	20	47
52	50	5	2020	3	13	2020	3	20	48
52	63	44	2020	3	13	2020	3	20	49
52	45	32	2020	3	13	2020	3	20	50
52	54	19	2020	3	13	2020	3	20	51
52	48	35	2020	3	13	2020	3	20	52
52	1044	50	2020	3	13	2020	3	20	53
52	61	42	2020	3	13	2020	3	20	54
52	79	55	2020	3	13	2020	3	20	55
52	51	28	2020	3	13	2020	3	20	56
52	58	40	2020	3	13	2020	3	20	57
52	53	37	2020	3	13	2020	3	20	58
52	64	45	2020	3	13	2020	3	20	59
52	172	13	2020	3	13	2020	3	20	60
52	1137	50	2020	3	13	2020	3	20	61
52	24	9	2020	3	13	2020	3	20	62
52	112	72	2020	3	13	2020	3	20	63
52	149	89	2020	3	13	2020	3	20	64
52	70	49	2020	3	13	2020	3	20	65
52	78	54	2020	3	13	2020	3	20	66
52	69	48	2020	3	13	2020	3	20	67
52	1138	50	2020	3	13	2020	3	20	68
52	47	34	2020	3	13	2020	3	20	69
52	89	60	2020	3	13	2020	3	20	70
52	88	10	2020	3	13	2020	3	20	71
52	90	61	2020	3	13	2020	3	20	72
52	100	66	2020	3	13	2020	3	20	73
52	126	79	2020	3	13	2020	3	20	74
52	144	86	2020	3	13	2020	3	20	75
52	75	45	2020	3	13	2020	3	20	76
52	83	57	2020	3	13	2020	3	20	77
52	74	28	2020	3	13	2020	3	20	78
52	82	56	2020	3	13	2020	3	20	79
52	1046	50	2020	3	13	2020	3	20	80
52	77	53	2020	3	13	2020	3	20	81
52	136	13	2020	3	13	2020	3	20	82
52	120	76	2020	3	13	2020	3	20	83
52	125	78	2020	3	13	2020	3	20	84
52	113	54	2020	3	13	2020	3	20	85
52	148	88	2020	3	13	2020	3	20	86
52	1045	13	2020	3	13	2020	3	20	87
52	81	52	2020	3	13	2020	3	20	88
52	105	7	2020	3	13	2020	3	20	89
52	94	19	2020	3	13	2020	3	20	90
52	106	66	2020	3	13	2020	3	20	91
52	102	27	2020	3	13	2020	3	20	92
52	87	59	2020	3	13	2020	3	20	93
52	1047	50	2020	3	13	2020	3	20	94
52	97	64	2020	3	13	2020	3	20	95
52	99	21	2020	3	13	2020	3	20	96
52	95	63	2020	3	13	2020	3	20	97
52	91	61	2020	3	13	2020	3	20	98
52	114	19	2020	3	13	2020	3	20	99
52	12	21	2020	3	13	2020	3	20	100
52	93	62	2020	3	13	2020	3	20	101
52	121	20	2020	3	13	2020	3	20	102
52	108	48	2020	3	13	2020	3	20	103
52	1139	86	2020	3	13	2020	3	20	104
52	103	68	2020	3	13	2020	3	20	105
52	1050	13	2020	3	13	2020	3	20	106
52	147	13	2020	3	13	2020	3	20	107
52	133	82	2020	3	13	2020	3	20	108
52	1100	50	2020	3	13	2020	3	20	109
52	132	32	2020	3	13	2020	3	20	110
52	1053	13	2020	3	13	2020	3	20	111
52	119	75	2020	3	13	2020	3	20	112
52	783	299	2020	3	13	2020	3	20	113
52	40	30	2020	3	13	2020	3	20	114
52	104	69	2020	3	13	2020	3	20	115
52	84	58	2020	3	13	2020	3	20	116
52	143	85	2020	3	13	2020	3	20	117
52	1054	13	2020	3	13	2020	3	20	118
52	191	110	2020	3	13	2020	3	20	119
52	1062	13	2020	3	13	2020	3	20	120
52	141	84	2020	3	13	2020	3	20	121
52	71	9	2020	3	13	2020	3	20	122
52	776	84	2020	3	13	2020	3	20	123
52	763	158	2020	3	13	2020	3	20	124
52	101	67	2020	3	13	2020	3	20	125
52	1140	50	2020	3	13	2020	3	20	126
52	765	64	2020	3	13	2020	3	20	127
52	145	19	2020	3	13	2020	3	20	128
52	1051	359	2020	3	13	2020	3	20	129
52	109	70	2020	3	13	2020	3	20	130
52	111	71	2020	3	13	2020	3	20	131
52	1113	389	2020	3	13	2020	3	20	132
52	107	70	2020	3	13	2020	3	20	133
52	117	17	2020	3	13	2020	3	20	134
52	115	73	2020	3	13	2020	3	20	135
52	118	38	2020	3	13	2020	3	20	136
52	165	56	2020	3	13	2020	3	20	137
52	139	60	2020	3	13	2020	3	20	138
52	161	32	2020	3	13	2020	3	20	139
52	150	48	2020	3	13	2020	3	20	140
52	160	89	2020	3	13	2020	3	20	141
52	128	80	2020	3	13	2020	3	20	142
52	146	87	2020	3	13	2020	3	20	143
52	135	20	2020	3	13	2020	3	20	144
52	123	45	2020	3	13	2020	3	20	145
52	1057	13	2020	3	13	2020	3	20	146
52	1141	50	2020	3	13	2020	3	20	147
52	196	50	2020	3	13	2020	3	20	148
52	1142	50	2020	3	13	2020	3	20	149
52	163	95	2020	3	13	2020	3	20	150
52	1058	13	2020	3	13	2020	3	20	151
52	523	27	2020	3	13	2020	3	20	152
52	1143	50	2020	3	13	2020	3	20	153
52	1061	13	2020	3	13	2020	3	20	154
52	162	70	2020	3	13	2020	3	20	155
52	154	28	2020	3	13	2020	3	20	156
52	1052	382	2020	3	13	2020	3	20	157
52	1144	50	2020	3	13	2020	3	20	158
52	130	67	2020	3	13	2020	3	20	159
52	166	97	2020	3	13	2020	3	20	160
52	155	92	2020	3	13	2020	3	20	161
52	67	1	2020	3	13	2020	3	20	162
52	1145	299	2020	3	13	2020	3	20	163
52	158	56	2020	3	13	2020	3	20	164
52	1063	337	2020	3	13	2020	3	20	165
52	129	81	2020	3	13	2020	3	20	166
52	124	77	2020	3	13	2020	3	20	167
52	521	78	2020	3	13	2020	3	20	168
52	131	2	2020	3	13	2020	3	20	169
52	168	89	2020	3	13	2020	3	20	170
52	138	45	2020	3	13	2020	3	20	171
52	194	112	2020	3	13	2020	3	20	172
52	184	19	2020	3	13	2020	3	20	173
52	175	21	2020	3	13	2020	3	20	174
52	157	93	2020	3	13	2020	3	20	175
52	517	272	2020	3	13	2020	3	20	176
52	1146	50	2020	3	13	2020	3	20	177
52	153	51	2020	3	13	2020	3	20	178
52	159	94	2020	3	13	2020	3	20	179
52	1111	106	2020	3	13	2020	3	20	180
52	1101	50	2020	3	13	2020	3	20	181
52	179	105	2020	3	13	2020	3	20	182
52	156	37	2020	3	13	2020	3	20	183
52	1147	50	2020	3	13	2020	3	20	184
52	181	106	2020	3	13	2020	3	20	185
52	1103	50	2020	3	13	2020	3	20	186
52	174	102	2020	3	13	2020	3	20	187
52	1148	50	2020	3	13	2020	3	20	188
52	187	63	2020	3	13	2020	3	20	189
52	1102	50	2020	3	13	2020	3	20	190
52	519	158	2020	3	13	2020	3	20	191
52	1149	7	2020	3	13	2020	3	20	192
52	526	186	2020	3	13	2020	3	20	193
52	199	115	2020	3	13	2020	3	20	194
52	185	22	2020	3	13	2020	3	20	195
52	1060	13	2020	3	13	2020	3	20	196
52	140	33	2020	3	13	2020	3	20	197
52	1150	141	2020	3	13	2020	3	20	198
52	170	99	2020	3	13	2020	3	20	199
52	545	281	2020	3	13	2020	3	20	200
53	665	234	2020	7	24	2020	7	31	1
53	200	27	2020	7	24	2020	7	31	2
53	216	122	2020	7	24	2020	7	31	3
53	666	234	2020	7	24	2020	7	31	4
53	667	234	2020	7	24	2020	7	31	5
53	1	1	2020	7	24	2020	7	31	6
53	99	21	2020	7	24	2020	7	31	7
53	669	234	2020	7	24	2020	7	31	8
53	3	3	2020	7	24	2020	7	31	9
53	670	234	2020	7	24	2020	7	31	10
53	671	234	2020	7	24	2020	7	31	11
53	330	48	2020	7	24	2020	7	31	12
53	673	234	2020	7	24	2020	7	31	13
53	62	43	2020	7	24	2020	7	31	14
53	674	234	2020	7	24	2020	7	31	15
53	310	20	2020	7	24	2020	7	31	16
53	675	234	2020	7	24	2020	7	31	17
53	677	234	2020	7	24	2020	7	31	18
53	346	48	2020	7	24	2020	7	31	19
53	679	234	2020	7	24	2020	7	31	20
53	6	6	2020	7	24	2020	7	31	21
53	7	7	2020	7	24	2020	7	31	22
53	219	124	2020	7	24	2020	7	31	23
53	683	234	2020	7	24	2020	7	31	24
53	327	172	2020	7	24	2020	7	31	25
53	201	52	2020	7	24	2020	7	31	26
53	68	47	2020	7	24	2020	7	31	27
53	355	96	2020	7	24	2020	7	31	28
53	686	234	2020	7	24	2020	7	31	29
53	361	186	2020	7	24	2020	7	31	30
53	208	39	2020	7	24	2020	7	31	31
53	342	171	2020	7	24	2020	7	31	32
53	689	234	2020	7	24	2020	7	31	33
53	8	8	2020	7	24	2020	7	31	34
53	4	4	2020	7	24	2020	7	31	35
53	11	4	2020	7	24	2020	7	31	36
53	217	123	2020	7	24	2020	7	31	37
53	2	2	2020	7	24	2020	7	31	38
53	231	130	2020	7	24	2020	7	31	39
53	334	32	2020	7	24	2020	7	31	40
53	692	234	2020	7	24	2020	7	31	41
53	362	92	2020	7	24	2020	7	31	42
53	21	17	2020	7	24	2020	7	31	43
53	204	63	2020	7	24	2020	7	31	44
53	379	172	2020	7	24	2020	7	31	45
53	312	167	2020	7	24	2020	7	31	46
53	701	234	2020	7	24	2020	7	31	47
53	209	120	2020	7	24	2020	7	31	48
53	202	116	2020	7	24	2020	7	31	49
53	15	14	2020	7	24	2020	7	31	50
53	36	17	2020	7	24	2020	7	31	51
53	5	5	2020	7	24	2020	7	31	52
53	668	314	2020	7	24	2020	7	31	53
53	366	190	2020	7	24	2020	7	31	54
53	236	134	2020	7	24	2020	7	31	55
53	10	10	2020	7	24	2020	7	31	56
53	294	92	2020	7	24	2020	7	31	57
53	297	162	2020	7	24	2020	7	31	58
53	137	51	2020	7	24	2020	7	31	59
53	20	16	2020	7	24	2020	7	31	60
53	676	48	2020	7	24	2020	7	31	61
53	13	12	2020	7	24	2020	7	31	62
53	17	1	2020	7	24	2020	7	31	63
53	23	19	2020	7	24	2020	7	31	64
53	672	22	2020	7	24	2020	7	31	65
53	203	117	2020	7	24	2020	7	31	66
53	37	29	2020	7	24	2020	7	31	67
53	12	11	2020	7	24	2020	7	31	68
53	158	56	2020	7	24	2020	7	31	69
53	214	68	2020	7	24	2020	7	31	70
53	26	21	2020	7	24	2020	7	31	71
53	680	48	2020	7	24	2020	7	31	72
53	27	22	2020	7	24	2020	7	31	73
53	687	316	2020	7	24	2020	7	31	74
53	9	9	2020	7	24	2020	7	31	75
53	684	48	2020	7	24	2020	7	31	76
53	82	56	2020	7	24	2020	7	31	77
53	221	126	2020	7	24	2020	7	31	78
53	54	19	2020	7	24	2020	7	31	79
53	210	66	2020	7	24	2020	7	31	80
53	33	28	2020	7	24	2020	7	31	81
53	1151	293	2020	7	24	2020	7	31	82
53	69	48	2020	7	24	2020	7	31	83
53	230	48	2020	7	24	2020	7	31	84
53	155	92	2020	7	24	2020	7	31	85
53	205	118	2020	7	24	2020	7	31	86
53	48	35	2020	7	24	2020	7	31	87
53	223	35	2020	7	24	2020	7	31	88
53	19	15	2020	7	24	2020	7	31	89
53	681	108	2020	7	24	2020	7	31	90
53	678	315	2020	7	24	2020	7	31	91
53	165	56	2020	7	24	2020	7	31	92
53	110	32	2020	7	24	2020	7	31	93
53	207	119	2020	7	24	2020	7	31	94
53	29	24	2020	7	24	2020	7	31	95
53	122	20	2020	7	24	2020	7	31	96
53	252	143	2020	7	24	2020	7	31	97
53	682	90	2020	7	24	2020	7	31	98
53	138	396	2020	7	24	2020	7	31	99
53	116	74	2020	7	24	2020	7	31	100
53	237	135	2020	7	24	2020	7	31	101
53	211	121	2020	7	24	2020	7	31	102
53	213	33	2020	7	24	2020	7	31	103
53	1152	293	2020	7	24	2020	7	31	104
53	397	92	2020	7	24	2020	7	31	105
53	14	13	2020	7	24	2020	7	31	106
53	18	13	2020	7	24	2020	7	31	107
53	30	25	2020	7	24	2020	7	31	108
53	51	28	2020	7	24	2020	7	31	109
53	222	2	2020	7	24	2020	7	31	110
53	34	28	2020	7	24	2020	7	31	111
53	25	20	2020	7	24	2020	7	31	112
53	227	128	2020	7	24	2020	7	31	113
53	296	161	2020	7	24	2020	7	31	114
53	321	16	2020	7	24	2020	7	31	115
53	81	52	2020	7	24	2020	7	31	116
53	150	48	2020	7	24	2020	7	31	117
53	47	34	2020	7	24	2020	7	31	118
53	64	45	2020	7	24	2020	7	31	119
53	218	86	2020	7	24	2020	7	31	120
53	31	26	2020	7	24	2020	7	31	121
53	229	84	2020	7	24	2020	7	31	122
53	93	62	2020	7	24	2020	7	31	123
53	688	110	2020	7	24	2020	7	31	124
53	228	129	2020	7	24	2020	7	31	125
53	404	214	2020	7	24	2020	7	31	126
53	690	317	2020	7	24	2020	7	31	127
53	336	92	2020	7	24	2020	7	31	128
53	24	9	2020	7	24	2020	7	31	129
53	16	4	2020	7	24	2020	7	31	130
53	53	37	2020	7	24	2020	7	31	131
53	240	137	2020	7	24	2020	7	31	132
53	58	40	2020	7	24	2020	7	31	133
53	705	302	2020	7	24	2020	7	31	134
53	12	21	2020	7	24	2020	7	31	135
53	107	70	2020	7	24	2020	7	31	136
53	703	190	2020	7	24	2020	7	31	137
53	95	63	2020	7	24	2020	7	31	138
53	94	19	2020	7	24	2020	7	31	139
53	303	77	2020	7	24	2020	7	31	140
53	704	48	2020	7	24	2020	7	31	141
53	75	45	2020	7	24	2020	7	31	142
53	123	45	2020	7	24	2020	7	31	143
53	56	39	2020	7	24	2020	7	31	144
53	151	90	2020	7	24	2020	7	31	145
53	115	73	2020	7	24	2020	7	31	146
53	1153	347	2020	7	24	2020	7	31	147
53	109	70	2020	7	24	2020	7	31	148
53	693	58	2020	7	24	2020	7	31	149
53	699	33	2020	7	24	2020	7	31	150
53	313	168	2020	7	24	2020	7	31	151
53	128	80	2020	7	24	2020	7	31	152
53	138	45	2020	7	24	2020	7	31	153
53	702	319	2020	7	24	2020	7	31	154
53	74	28	2020	7	24	2020	7	31	155
53	700	74	2020	7	24	2020	7	31	156
53	103	68	2020	7	24	2020	7	31	157
53	710	184	2020	7	24	2020	7	31	158
53	243	139	2020	7	24	2020	7	31	159
53	260	48	2020	7	24	2020	7	31	160
53	238	32	2020	7	24	2020	7	31	161
53	45	32	2020	7	24	2020	7	31	162
53	1154	126	2020	7	24	2020	7	31	163
53	835	48	2020	7	24	2020	7	31	164
53	694	302	2020	7	24	2020	7	31	165
53	157	93	2020	7	24	2020	7	31	166
53	364	188	2020	7	24	2020	7	31	167
53	118	38	2020	7	24	2020	7	31	168
53	706	66	2020	7	24	2020	7	31	169
53	905	364	2020	7	24	2020	7	31	170
53	83	57	2020	7	24	2020	7	31	171
53	44	20	2020	7	24	2020	7	31	172
53	708	85	2020	7	24	2020	7	31	173
53	1155	141	2020	7	24	2020	7	31	174
53	70	49	2020	7	24	2020	7	31	175
53	174	102	2020	7	24	2020	7	31	176
53	244	48	2020	7	24	2020	7	31	177
53	691	145	2020	7	24	2020	7	31	178
53	162	70	2020	7	24	2020	7	31	179
53	833	48	2020	7	24	2020	7	31	180
53	57	5	2020	7	24	2020	7	31	181
53	709	320	2020	7	24	2020	7	31	182
53	111	71	2020	7	24	2020	7	31	183
53	52	20	2020	7	24	2020	7	31	184
53	212	52	2020	7	24	2020	7	31	185
53	140	33	2020	7	24	2020	7	31	186
53	22	18	2020	7	24	2020	7	31	187
53	832	48	2020	7	24	2020	7	31	188
53	245	85	2020	7	24	2020	7	31	189
53	713	323	2020	7	24	2020	7	31	190
53	182	104	2020	7	24	2020	7	31	191
53	40	30	2020	7	24	2020	7	31	192
53	262	148	2020	7	24	2020	7	31	193
53	215	110	2020	7	24	2020	7	31	194
53	1156	364	2020	7	24	2020	7	31	195
53	1157	396	2020	7	24	2020	7	31	196
53	178	98	2020	7	24	2020	7	31	197
53	101	67	2020	7	24	2020	7	31	198
53	166	97	2020	7	24	2020	7	31	199
53	711	321	2020	7	24	2020	7	31	200
\.


--
-- PostgreSQL database dump complete
--

