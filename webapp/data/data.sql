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
    song_id integer,
    artist_id integer,
    week_start_date date,
    week_end_date date,
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

COPY public.weekly_ranks (song_id, artist_id, week_start_date, week_end_date, ranking) FROM stdin;
1	1	2020-04-03	2020-04-10	1
2	2	2020-04-03	2020-04-10	2
3	3	2020-04-03	2020-04-10	3
4	4	2020-04-03	2020-04-10	4
5	5	2020-04-03	2020-04-10	5
6	6	2020-04-03	2020-04-10	6
7	7	2020-04-03	2020-04-10	7
8	8	2020-04-03	2020-04-10	8
9	9	2020-04-03	2020-04-10	9
10	10	2020-04-03	2020-04-10	10
11	4	2020-04-03	2020-04-10	11
12	11	2020-04-03	2020-04-10	12
13	12	2020-04-03	2020-04-10	13
14	13	2020-04-03	2020-04-10	14
15	14	2020-04-03	2020-04-10	15
16	4	2020-04-03	2020-04-10	16
17	1	2020-04-03	2020-04-10	17
18	13	2020-04-03	2020-04-10	18
19	15	2020-04-03	2020-04-10	19
20	16	2020-04-03	2020-04-10	20
21	17	2020-04-03	2020-04-10	21
22	18	2020-04-03	2020-04-10	22
23	19	2020-04-03	2020-04-10	23
24	9	2020-04-03	2020-04-10	24
25	20	2020-04-03	2020-04-10	25
26	21	2020-04-03	2020-04-10	26
27	22	2020-04-03	2020-04-10	27
28	23	2020-04-03	2020-04-10	28
29	24	2020-04-03	2020-04-10	29
30	25	2020-04-03	2020-04-10	30
31	26	2020-04-03	2020-04-10	31
32	27	2020-04-03	2020-04-10	32
33	28	2020-04-03	2020-04-10	33
34	28	2020-04-03	2020-04-10	34
35	13	2020-04-03	2020-04-10	35
36	17	2020-04-03	2020-04-10	36
37	29	2020-04-03	2020-04-10	37
38	13	2020-04-03	2020-04-10	38
39	13	2020-04-03	2020-04-10	39
40	30	2020-04-03	2020-04-10	40
41	1	2020-04-03	2020-04-10	41
42	31	2020-04-03	2020-04-10	42
43	10	2020-04-03	2020-04-10	43
44	20	2020-04-03	2020-04-10	44
45	32	2020-04-03	2020-04-10	45
46	33	2020-04-03	2020-04-10	46
47	34	2020-04-03	2020-04-10	47
48	35	2020-04-03	2020-04-10	48
49	36	2020-04-03	2020-04-10	49
50	5	2020-04-03	2020-04-10	50
51	28	2020-04-03	2020-04-10	51
52	20	2020-04-03	2020-04-10	52
53	37	2020-04-03	2020-04-10	53
54	19	2020-04-03	2020-04-10	54
55	38	2020-04-03	2020-04-10	55
56	39	2020-04-03	2020-04-10	56
57	5	2020-04-03	2020-04-10	57
58	40	2020-04-03	2020-04-10	58
59	13	2020-04-03	2020-04-10	59
60	41	2020-04-03	2020-04-10	60
61	42	2020-04-03	2020-04-10	61
62	43	2020-04-03	2020-04-10	62
63	44	2020-04-03	2020-04-10	63
64	45	2020-04-03	2020-04-10	64
65	13	2020-04-03	2020-04-10	65
66	46	2020-04-03	2020-04-10	66
67	1	2020-04-03	2020-04-10	67
68	47	2020-04-03	2020-04-10	68
69	48	2020-04-03	2020-04-10	69
70	49	2020-04-03	2020-04-10	70
71	9	2020-04-03	2020-04-10	71
72	50	2020-04-03	2020-04-10	72
73	51	2020-04-03	2020-04-10	73
74	28	2020-04-03	2020-04-10	74
75	45	2020-04-03	2020-04-10	75
76	52	2020-04-03	2020-04-10	76
77	53	2020-04-03	2020-04-10	77
78	54	2020-04-03	2020-04-10	78
79	55	2020-04-03	2020-04-10	79
80	33	2020-04-03	2020-04-10	80
81	52	2020-04-03	2020-04-10	81
82	56	2020-04-03	2020-04-10	82
83	57	2020-04-03	2020-04-10	83
84	58	2020-04-03	2020-04-10	84
85	28	2020-04-03	2020-04-10	85
86	50	2020-04-03	2020-04-10	86
87	59	2020-04-03	2020-04-10	87
88	10	2020-04-03	2020-04-10	88
89	60	2020-04-03	2020-04-10	89
90	61	2020-04-03	2020-04-10	90
91	61	2020-04-03	2020-04-10	91
92	1	2020-04-03	2020-04-10	92
93	62	2020-04-03	2020-04-10	93
12	21	2020-04-03	2020-04-10	94
94	19	2020-04-03	2020-04-10	95
95	63	2020-04-03	2020-04-10	96
96	50	2020-04-03	2020-04-10	97
97	64	2020-04-03	2020-04-10	98
98	65	2020-04-03	2020-04-10	99
99	21	2020-04-03	2020-04-10	100
100	66	2020-04-03	2020-04-10	101
101	67	2020-04-03	2020-04-10	102
102	27	2020-04-03	2020-04-10	103
103	68	2020-04-03	2020-04-10	104
104	69	2020-04-03	2020-04-10	105
105	7	2020-04-03	2020-04-10	106
106	66	2020-04-03	2020-04-10	107
107	70	2020-04-03	2020-04-10	108
108	48	2020-04-03	2020-04-10	109
109	70	2020-04-03	2020-04-10	110
110	32	2020-04-03	2020-04-10	111
111	71	2020-04-03	2020-04-10	112
112	72	2020-04-03	2020-04-10	113
113	54	2020-04-03	2020-04-10	114
114	19	2020-04-03	2020-04-10	115
115	73	2020-04-03	2020-04-10	116
116	74	2020-04-03	2020-04-10	117
117	17	2020-04-03	2020-04-10	118
118	38	2020-04-03	2020-04-10	119
119	75	2020-04-03	2020-04-10	120
120	76	2020-04-03	2020-04-10	121
121	20	2020-04-03	2020-04-10	122
122	20	2020-04-03	2020-04-10	123
123	45	2020-04-03	2020-04-10	124
124	77	2020-04-03	2020-04-10	125
125	78	2020-04-03	2020-04-10	126
126	79	2020-04-03	2020-04-10	127
127	16	2020-04-03	2020-04-10	128
128	80	2020-04-03	2020-04-10	129
129	81	2020-04-03	2020-04-10	130
130	67	2020-04-03	2020-04-10	131
131	2	2020-04-03	2020-04-10	132
132	32	2020-04-03	2020-04-10	133
133	82	2020-04-03	2020-04-10	134
134	83	2020-04-03	2020-04-10	135
135	20	2020-04-03	2020-04-10	136
136	13	2020-04-03	2020-04-10	137
137	51	2020-04-03	2020-04-10	138
138	45	2020-04-03	2020-04-10	139
139	60	2020-04-03	2020-04-10	140
140	33	2020-04-03	2020-04-10	141
141	84	2020-04-03	2020-04-10	142
142	4	2020-04-03	2020-04-10	143
143	85	2020-04-03	2020-04-10	144
144	86	2020-04-03	2020-04-10	145
145	19	2020-04-03	2020-04-10	146
146	87	2020-04-03	2020-04-10	147
147	13	2020-04-03	2020-04-10	148
148	88	2020-04-03	2020-04-10	149
149	89	2020-04-03	2020-04-10	150
150	48	2020-04-03	2020-04-10	151
151	90	2020-04-03	2020-04-10	152
152	91	2020-04-03	2020-04-10	153
153	51	2020-04-03	2020-04-10	154
154	28	2020-04-03	2020-04-10	155
155	92	2020-04-03	2020-04-10	156
156	37	2020-04-03	2020-04-10	157
157	93	2020-04-03	2020-04-10	158
158	56	2020-04-03	2020-04-10	159
159	94	2020-04-03	2020-04-10	160
160	89	2020-04-03	2020-04-10	161
161	32	2020-04-03	2020-04-10	162
162	70	2020-04-03	2020-04-10	163
163	95	2020-04-03	2020-04-10	164
164	96	2020-04-03	2020-04-10	165
165	56	2020-04-03	2020-04-10	166
166	97	2020-04-03	2020-04-10	167
167	4	2020-04-03	2020-04-10	168
168	89	2020-04-03	2020-04-10	169
169	98	2020-04-03	2020-04-10	170
170	99	2020-04-03	2020-04-10	171
171	100	2020-04-03	2020-04-10	172
172	13	2020-04-03	2020-04-10	173
173	101	2020-04-03	2020-04-10	174
174	102	2020-04-03	2020-04-10	175
175	21	2020-04-03	2020-04-10	176
176	103	2020-04-03	2020-04-10	177
177	104	2020-04-03	2020-04-10	178
178	98	2020-04-03	2020-04-10	179
179	105	2020-04-03	2020-04-10	180
180	1	2020-04-03	2020-04-10	181
181	106	2020-04-03	2020-04-10	182
182	104	2020-04-03	2020-04-10	183
183	29	2020-04-03	2020-04-10	184
184	19	2020-04-03	2020-04-10	185
185	22	2020-04-03	2020-04-10	186
186	2	2020-04-03	2020-04-10	187
187	63	2020-04-03	2020-04-10	188
188	107	2020-04-03	2020-04-10	189
189	108	2020-04-03	2020-04-10	190
190	109	2020-04-03	2020-04-10	191
191	110	2020-04-03	2020-04-10	192
192	70	2020-04-03	2020-04-10	193
193	111	2020-04-03	2020-04-10	194
194	112	2020-04-03	2020-04-10	195
195	113	2020-04-03	2020-04-10	196
196	50	2020-04-03	2020-04-10	197
197	114	2020-04-03	2020-04-10	198
198	4	2020-04-03	2020-04-10	199
199	115	2020-04-03	2020-04-10	200
1	1	2020-06-12	2020-06-19	1
200	27	2020-06-12	2020-06-19	2
3	3	2020-06-12	2020-06-19	3
201	52	2020-06-12	2020-06-19	4
6	6	2020-06-12	2020-06-19	5
2	2	2020-06-12	2020-06-19	6
99	21	2020-06-12	2020-06-19	7
4	4	2020-06-12	2020-06-19	8
202	116	2020-06-12	2020-06-19	9
68	47	2020-06-12	2020-06-19	10
7	7	2020-06-12	2020-06-19	11
11	4	2020-06-12	2020-06-19	12
8	8	2020-06-12	2020-06-19	13
203	117	2020-06-12	2020-06-19	14
15	14	2020-06-12	2020-06-19	15
204	63	2020-06-12	2020-06-19	16
205	118	2020-06-12	2020-06-19	17
5	5	2020-06-12	2020-06-19	18
62	43	2020-06-12	2020-06-19	19
206	118	2020-06-12	2020-06-19	20
10	10	2020-06-12	2020-06-19	21
21	17	2020-06-12	2020-06-19	22
12	11	2020-06-12	2020-06-19	23
207	119	2020-06-12	2020-06-19	24
13	12	2020-06-12	2020-06-19	25
30	25	2020-06-12	2020-06-19	26
208	39	2020-06-12	2020-06-19	27
209	120	2020-06-12	2020-06-19	28
23	19	2020-06-12	2020-06-19	29
9	9	2020-06-12	2020-06-19	30
17	1	2020-06-12	2020-06-19	31
210	66	2020-06-12	2020-06-19	32
211	121	2020-06-12	2020-06-19	33
158	56	2020-06-12	2020-06-19	34
36	17	2020-06-12	2020-06-19	35
20	16	2020-06-12	2020-06-19	36
19	15	2020-06-12	2020-06-19	37
212	52	2020-06-12	2020-06-19	38
213	33	2020-06-12	2020-06-19	39
18	13	2020-06-12	2020-06-19	40
29	24	2020-06-12	2020-06-19	41
214	68	2020-06-12	2020-06-19	42
82	56	2020-06-12	2020-06-19	43
26	21	2020-06-12	2020-06-19	44
14	13	2020-06-12	2020-06-19	45
165	56	2020-06-12	2020-06-19	46
215	110	2020-06-12	2020-06-19	47
27	22	2020-06-12	2020-06-19	48
24	9	2020-06-12	2020-06-19	49
216	122	2020-06-12	2020-06-19	50
37	29	2020-06-12	2020-06-19	51
217	123	2020-06-12	2020-06-19	52
137	51	2020-06-12	2020-06-19	53
218	86	2020-06-12	2020-06-19	54
219	124	2020-06-12	2020-06-19	55
33	28	2020-06-12	2020-06-19	56
54	19	2020-06-12	2020-06-19	57
220	125	2020-06-12	2020-06-19	58
25	20	2020-06-12	2020-06-19	59
221	126	2020-06-12	2020-06-19	60
110	32	2020-06-12	2020-06-19	61
151	90	2020-06-12	2020-06-19	62
57	5	2020-06-12	2020-06-19	63
116	74	2020-06-12	2020-06-19	64
222	2	2020-06-12	2020-06-19	65
48	35	2020-06-12	2020-06-19	66
47	34	2020-06-12	2020-06-19	67
34	28	2020-06-12	2020-06-19	68
51	28	2020-06-12	2020-06-19	69
31	26	2020-06-12	2020-06-19	70
69	48	2020-06-12	2020-06-19	71
16	4	2020-06-12	2020-06-19	72
223	35	2020-06-12	2020-06-19	73
224	127	2020-06-12	2020-06-19	74
225	9	2020-06-12	2020-06-19	75
226	27	2020-06-12	2020-06-19	76
227	128	2020-06-12	2020-06-19	77
58	40	2020-06-12	2020-06-19	78
40	30	2020-06-12	2020-06-19	79
81	52	2020-06-12	2020-06-19	80
64	45	2020-06-12	2020-06-19	81
53	37	2020-06-12	2020-06-19	82
228	129	2020-06-12	2020-06-19	83
22	18	2020-06-12	2020-06-19	84
45	32	2020-06-12	2020-06-19	85
229	84	2020-06-12	2020-06-19	86
122	20	2020-06-12	2020-06-19	87
230	48	2020-06-12	2020-06-19	88
44	20	2020-06-12	2020-06-19	89
231	130	2020-06-12	2020-06-19	90
56	39	2020-06-12	2020-06-19	91
93	62	2020-06-12	2020-06-19	92
232	131	2020-06-12	2020-06-19	93
95	63	2020-06-12	2020-06-19	94
35	13	2020-06-12	2020-06-19	95
83	57	2020-06-12	2020-06-19	96
233	92	2020-06-12	2020-06-19	97
63	44	2020-06-12	2020-06-19	98
94	19	2020-06-12	2020-06-19	99
107	70	2020-06-12	2020-06-19	100
234	132	2020-06-12	2020-06-19	101
74	28	2020-06-12	2020-06-19	102
75	45	2020-06-12	2020-06-19	103
52	20	2020-06-12	2020-06-19	104
235	133	2020-06-12	2020-06-19	105
236	134	2020-06-12	2020-06-19	106
77	53	2020-06-12	2020-06-19	107
237	135	2020-06-12	2020-06-19	108
70	49	2020-06-12	2020-06-19	109
238	32	2020-06-12	2020-06-19	110
109	70	2020-06-12	2020-06-19	111
39	13	2020-06-12	2020-06-19	112
239	136	2020-06-12	2020-06-19	113
150	48	2020-06-12	2020-06-19	114
12	21	2020-06-12	2020-06-19	115
240	137	2020-06-12	2020-06-19	116
103	68	2020-06-12	2020-06-19	117
115	73	2020-06-12	2020-06-19	118
123	45	2020-06-12	2020-06-19	119
43	10	2020-06-12	2020-06-19	120
104	69	2020-06-12	2020-06-19	121
241	66	2020-06-12	2020-06-19	122
242	138	2020-06-12	2020-06-19	123
73	51	2020-06-12	2020-06-19	124
128	80	2020-06-12	2020-06-19	125
138	45	2020-06-12	2020-06-19	126
111	71	2020-06-12	2020-06-19	127
50	5	2020-06-12	2020-06-19	128
38	13	2020-06-12	2020-06-19	129
243	139	2020-06-12	2020-06-19	130
244	48	2020-06-12	2020-06-19	131
96	50	2020-06-12	2020-06-19	132
79	55	2020-06-12	2020-06-19	133
157	93	2020-06-12	2020-06-19	134
76	52	2020-06-12	2020-06-19	135
106	66	2020-06-12	2020-06-19	136
118	38	2020-06-12	2020-06-19	137
245	85	2020-06-12	2020-06-19	138
246	140	2020-06-12	2020-06-19	139
108	48	2020-06-12	2020-06-19	140
247	19	2020-06-12	2020-06-19	141
248	110	2020-06-12	2020-06-19	142
249	141	2020-06-12	2020-06-19	143
250	13	2020-06-12	2020-06-19	144
155	92	2020-06-12	2020-06-19	145
91	61	2020-06-12	2020-06-19	146
178	98	2020-06-12	2020-06-19	147
87	59	2020-06-12	2020-06-19	148
49	36	2020-06-12	2020-06-19	149
102	27	2020-06-12	2020-06-19	150
174	102	2020-06-12	2020-06-19	151
251	142	2020-06-12	2020-06-19	152
140	33	2020-06-12	2020-06-19	153
145	19	2020-06-12	2020-06-19	154
153	51	2020-06-12	2020-06-19	155
144	86	2020-06-12	2020-06-19	156
119	75	2020-06-12	2020-06-19	157
101	67	2020-06-12	2020-06-19	158
252	143	2020-06-12	2020-06-19	159
253	144	2020-06-12	2020-06-19	160
162	70	2020-06-12	2020-06-19	161
166	97	2020-06-12	2020-06-19	162
72	50	2020-06-12	2020-06-19	163
98	65	2020-06-12	2020-06-19	164
141	84	2020-06-12	2020-06-19	165
254	32	2020-06-12	2020-06-19	166
71	9	2020-06-12	2020-06-19	167
146	87	2020-06-12	2020-06-19	168
117	17	2020-06-12	2020-06-19	169
121	20	2020-06-12	2020-06-19	170
84	58	2020-06-12	2020-06-19	171
139	60	2020-06-12	2020-06-19	172
255	145	2020-06-12	2020-06-19	173
256	146	2020-06-12	2020-06-19	174
257	31	2020-06-12	2020-06-19	175
173	101	2020-06-12	2020-06-19	176
97	64	2020-06-12	2020-06-19	177
65	13	2020-06-12	2020-06-19	178
175	21	2020-06-12	2020-06-19	179
181	106	2020-06-12	2020-06-19	180
258	13	2020-06-12	2020-06-19	181
129	81	2020-06-12	2020-06-19	182
182	104	2020-06-12	2020-06-19	183
59	13	2020-06-12	2020-06-19	184
46	33	2020-06-12	2020-06-19	185
184	19	2020-06-12	2020-06-19	186
259	147	2020-06-12	2020-06-19	187
131	2	2020-06-12	2020-06-19	188
187	63	2020-06-12	2020-06-19	189
188	107	2020-06-12	2020-06-19	190
260	48	2020-06-12	2020-06-19	191
60	41	2020-06-12	2020-06-19	192
261	104	2020-06-12	2020-06-19	193
168	89	2020-06-12	2020-06-19	194
170	99	2020-06-12	2020-06-19	195
28	23	2020-06-12	2020-06-19	196
262	148	2020-06-12	2020-06-19	197
156	37	2020-06-12	2020-06-19	198
263	149	2020-06-12	2020-06-19	199
264	73	2020-06-12	2020-06-19	200
203	117	2020-04-24	2020-05-01	1
1	1	2020-04-24	2020-05-01	2
3	3	2020-04-24	2020-05-01	3
2	2	2020-04-24	2020-05-01	4
6	6	2020-04-24	2020-05-01	5
4	4	2020-04-24	2020-05-01	6
165	56	2020-04-24	2020-05-01	7
5	5	2020-04-24	2020-05-01	8
7	7	2020-04-24	2020-05-01	9
230	48	2020-04-24	2020-05-01	10
8	8	2020-04-24	2020-05-01	11
9	9	2020-04-24	2020-05-01	12
158	56	2020-04-24	2020-05-01	13
200	27	2020-04-24	2020-05-01	14
11	4	2020-04-24	2020-05-01	15
15	14	2020-04-24	2020-05-01	16
82	56	2020-04-24	2020-05-01	17
10	10	2020-04-24	2020-05-01	18
12	11	2020-04-24	2020-05-01	19
13	12	2020-04-24	2020-05-01	20
22	18	2020-04-24	2020-05-01	21
21	17	2020-04-24	2020-05-01	22
24	9	2020-04-24	2020-05-01	23
18	13	2020-04-24	2020-05-01	24
19	15	2020-04-24	2020-05-01	25
23	19	2020-04-24	2020-05-01	26
14	13	2020-04-24	2020-05-01	27
68	47	2020-04-24	2020-05-01	28
20	16	2020-04-24	2020-05-01	29
30	25	2020-04-24	2020-05-01	30
17	1	2020-04-24	2020-05-01	31
16	4	2020-04-24	2020-05-01	32
26	21	2020-04-24	2020-05-01	33
29	24	2020-04-24	2020-05-01	34
116	74	2020-04-24	2020-05-01	35
27	22	2020-04-24	2020-05-01	36
33	28	2020-04-24	2020-05-01	37
25	20	2020-04-24	2020-05-01	38
36	17	2020-04-24	2020-05-01	39
47	34	2020-04-24	2020-05-01	40
40	30	2020-04-24	2020-05-01	41
37	29	2020-04-24	2020-05-01	42
34	28	2020-04-24	2020-05-01	43
265	89	2020-04-24	2020-05-01	44
31	26	2020-04-24	2020-05-01	45
266	56	2020-04-24	2020-05-01	46
45	32	2020-04-24	2020-05-01	47
48	35	2020-04-24	2020-05-01	48
62	43	2020-04-24	2020-05-01	49
51	28	2020-04-24	2020-05-01	50
267	56	2020-04-24	2020-05-01	51
57	5	2020-04-24	2020-05-01	52
44	20	2020-04-24	2020-05-01	53
35	13	2020-04-24	2020-05-01	54
53	37	2020-04-24	2020-05-01	55
151	90	2020-04-24	2020-05-01	56
54	19	2020-04-24	2020-05-01	57
39	13	2020-04-24	2020-05-01	58
69	48	2020-04-24	2020-05-01	59
43	10	2020-04-24	2020-05-01	60
38	13	2020-04-24	2020-05-01	61
58	40	2020-04-24	2020-05-01	62
268	150	2020-04-24	2020-05-01	63
52	20	2020-04-24	2020-05-01	64
56	39	2020-04-24	2020-05-01	65
63	44	2020-04-24	2020-05-01	66
111	71	2020-04-24	2020-05-01	67
64	45	2020-04-24	2020-05-01	68
28	23	2020-04-24	2020-05-01	69
73	51	2020-04-24	2020-05-01	70
46	33	2020-04-24	2020-05-01	71
61	42	2020-04-24	2020-05-01	72
50	5	2020-04-24	2020-05-01	73
218	86	2020-04-24	2020-05-01	74
70	49	2020-04-24	2020-05-01	75
55	38	2020-04-24	2020-05-01	76
71	9	2020-04-24	2020-05-01	77
110	32	2020-04-24	2020-05-01	78
98	65	2020-04-24	2020-05-01	79
74	28	2020-04-24	2020-05-01	80
83	57	2020-04-24	2020-05-01	81
60	41	2020-04-24	2020-05-01	82
81	52	2020-04-24	2020-05-01	83
72	50	2020-04-24	2020-05-01	84
269	141	2020-04-24	2020-05-01	85
77	53	2020-04-24	2020-05-01	86
79	55	2020-04-24	2020-05-01	87
42	31	2020-04-24	2020-05-01	88
211	121	2020-04-24	2020-05-01	89
75	45	2020-04-24	2020-05-01	90
49	36	2020-04-24	2020-05-01	91
270	64	2020-04-24	2020-05-01	92
59	13	2020-04-24	2020-05-01	93
66	46	2020-04-24	2020-05-01	94
84	58	2020-04-24	2020-05-01	95
12	21	2020-04-24	2020-05-01	96
93	62	2020-04-24	2020-05-01	97
195	113	2020-04-24	2020-05-01	98
94	19	2020-04-24	2020-05-01	99
95	63	2020-04-24	2020-05-01	100
65	13	2020-04-24	2020-05-01	101
32	27	2020-04-24	2020-05-01	102
87	59	2020-04-24	2020-05-01	103
41	1	2020-04-24	2020-05-01	104
107	70	2020-04-24	2020-05-01	105
108	48	2020-04-24	2020-05-01	106
99	21	2020-04-24	2020-05-01	107
78	54	2020-04-24	2020-05-01	108
103	68	2020-04-24	2020-05-01	109
96	50	2020-04-24	2020-05-01	110
109	70	2020-04-24	2020-05-01	111
271	151	2020-04-24	2020-05-01	112
104	69	2020-04-24	2020-05-01	113
91	61	2020-04-24	2020-05-01	114
272	56	2020-04-24	2020-05-01	115
235	133	2020-04-24	2020-05-01	116
137	51	2020-04-24	2020-05-01	117
273	152	2020-04-24	2020-05-01	118
274	153	2020-04-24	2020-05-01	119
144	86	2020-04-24	2020-05-01	120
102	27	2020-04-24	2020-05-01	121
157	93	2020-04-24	2020-05-01	122
115	73	2020-04-24	2020-05-01	123
67	1	2020-04-24	2020-05-01	124
123	45	2020-04-24	2020-05-01	125
150	48	2020-04-24	2020-05-01	126
97	64	2020-04-24	2020-05-01	127
101	67	2020-04-24	2020-05-01	128
89	60	2020-04-24	2020-05-01	129
128	80	2020-04-24	2020-05-01	130
134	83	2020-04-24	2020-05-01	131
114	19	2020-04-24	2020-05-01	132
76	52	2020-04-24	2020-05-01	133
118	38	2020-04-24	2020-05-01	134
90	61	2020-04-24	2020-05-01	135
117	17	2020-04-24	2020-05-01	136
208	39	2020-04-24	2020-05-01	137
138	45	2020-04-24	2020-05-01	138
106	66	2020-04-24	2020-05-01	139
129	81	2020-04-24	2020-05-01	140
275	154	2020-04-24	2020-05-01	141
119	75	2020-04-24	2020-05-01	142
146	87	2020-04-24	2020-05-01	143
121	20	2020-04-24	2020-05-01	144
141	84	2020-04-24	2020-05-01	145
132	32	2020-04-24	2020-05-01	146
105	7	2020-04-24	2020-05-01	147
276	74	2020-04-24	2020-05-01	148
145	19	2020-04-24	2020-05-01	149
85	28	2020-04-24	2020-05-01	150
277	155	2020-04-24	2020-05-01	151
139	60	2020-04-24	2020-05-01	152
124	77	2020-04-24	2020-05-01	153
131	2	2020-04-24	2020-05-01	154
171	100	2020-04-24	2020-05-01	155
100	66	2020-04-24	2020-05-01	156
125	78	2020-04-24	2020-05-01	157
113	54	2020-04-24	2020-05-01	158
122	20	2020-04-24	2020-05-01	159
153	51	2020-04-24	2020-05-01	160
173	101	2020-04-24	2020-05-01	161
130	67	2020-04-24	2020-05-01	162
166	97	2020-04-24	2020-05-01	163
154	28	2020-04-24	2020-05-01	164
174	102	2020-04-24	2020-05-01	165
278	50	2020-04-24	2020-05-01	166
140	33	2020-04-24	2020-05-01	167
162	70	2020-04-24	2020-05-01	168
156	37	2020-04-24	2020-05-01	169
147	13	2020-04-24	2020-05-01	170
168	89	2020-04-24	2020-05-01	171
170	99	2020-04-24	2020-05-01	172
178	98	2020-04-24	2020-05-01	173
136	13	2020-04-24	2020-05-01	174
133	82	2020-04-24	2020-05-01	175
159	94	2020-04-24	2020-05-01	176
160	89	2020-04-24	2020-05-01	177
184	19	2020-04-24	2020-05-01	178
207	119	2020-04-24	2020-05-01	179
188	107	2020-04-24	2020-05-01	180
279	153	2020-04-24	2020-05-01	181
120	76	2020-04-24	2020-05-01	182
280	156	2020-04-24	2020-05-01	183
182	104	2020-04-24	2020-05-01	184
281	96	2020-04-24	2020-05-01	185
163	95	2020-04-24	2020-05-01	186
282	74	2020-04-24	2020-05-01	187
196	50	2020-04-24	2020-05-01	188
175	21	2020-04-24	2020-05-01	189
260	48	2020-04-24	2020-05-01	190
187	63	2020-04-24	2020-05-01	191
179	105	2020-04-24	2020-05-01	192
186	2	2020-04-24	2020-05-01	193
181	106	2020-04-24	2020-05-01	194
155	92	2020-04-24	2020-05-01	195
183	29	2020-04-24	2020-05-01	196
152	91	2020-04-24	2020-05-01	197
161	32	2020-04-24	2020-05-01	198
185	22	2020-04-24	2020-05-01	199
135	20	2020-04-24	2020-05-01	200
283	63	2020-10-30	2020-11-06	1
284	13	2020-10-30	2020-11-06	2
285	42	2020-10-30	2020-11-06	3
286	157	2020-10-30	2020-11-06	4
287	63	2020-10-30	2020-11-06	5
288	92	2020-10-30	2020-11-06	6
289	158	2020-10-30	2020-11-06	7
290	10	2020-10-30	2020-11-06	8
291	159	2020-10-30	2020-11-06	9
292	160	2020-10-30	2020-11-06	10
1	1	2020-10-30	2020-11-06	11
293	10	2020-10-30	2020-11-06	12
294	92	2020-10-30	2020-11-06	13
295	63	2020-10-30	2020-11-06	14
99	21	2020-10-30	2020-11-06	15
296	161	2020-10-30	2020-11-06	16
297	162	2020-10-30	2020-11-06	17
298	123	2020-10-30	2020-11-06	18
299	163	2020-10-30	2020-11-06	19
300	63	2020-10-30	2020-11-06	20
200	27	2020-10-30	2020-11-06	21
301	2	2020-10-30	2020-11-06	22
302	63	2020-10-30	2020-11-06	23
303	77	2020-10-30	2020-11-06	24
304	63	2020-10-30	2020-11-06	25
305	29	2020-10-30	2020-11-06	26
306	164	2020-10-30	2020-11-06	27
307	165	2020-10-30	2020-11-06	28
216	122	2020-10-30	2020-11-06	29
308	74	2020-10-30	2020-11-06	30
309	63	2020-10-30	2020-11-06	31
21	17	2020-10-30	2020-11-06	32
310	20	2020-10-30	2020-11-06	33
311	166	2020-10-30	2020-11-06	34
312	167	2020-10-30	2020-11-06	35
313	168	2020-10-30	2020-11-06	36
3	3	2020-10-30	2020-11-06	37
314	63	2020-10-30	2020-11-06	38
315	4	2020-10-30	2020-11-06	39
316	130	2020-10-30	2020-11-06	40
317	139	2020-10-30	2020-11-06	41
318	63	2020-10-30	2020-11-06	42
36	17	2020-10-30	2020-11-06	43
319	169	2020-10-30	2020-11-06	44
62	43	2020-10-30	2020-11-06	45
7	7	2020-10-30	2020-11-06	46
320	170	2020-10-30	2020-11-06	47
321	16	2020-10-30	2020-11-06	48
322	63	2020-10-30	2020-11-06	49
323	171	2020-10-30	2020-11-06	50
324	63	2020-10-30	2020-11-06	51
325	130	2020-10-30	2020-11-06	52
326	159	2020-10-30	2020-11-06	53
327	172	2020-10-30	2020-11-06	54
328	21	2020-10-30	2020-11-06	55
329	173	2020-10-30	2020-11-06	56
330	48	2020-10-30	2020-11-06	57
331	171	2020-10-30	2020-11-06	58
332	63	2020-10-30	2020-11-06	59
333	174	2020-10-30	2020-11-06	60
334	32	2020-10-30	2020-11-06	61
335	89	2020-10-30	2020-11-06	62
336	92	2020-10-30	2020-11-06	63
337	175	2020-10-30	2020-11-06	64
338	63	2020-10-30	2020-11-06	65
339	63	2020-10-30	2020-11-06	66
219	124	2020-10-30	2020-11-06	67
340	132	2020-10-30	2020-11-06	68
341	25	2020-10-30	2020-11-06	69
4	4	2020-10-30	2020-11-06	70
342	171	2020-10-30	2020-11-06	71
6	6	2020-10-30	2020-11-06	72
343	176	2020-10-30	2020-11-06	73
344	177	2020-10-30	2020-11-06	74
204	63	2020-10-30	2020-11-06	75
8	8	2020-10-30	2020-11-06	76
201	52	2020-10-30	2020-11-06	77
345	178	2020-10-30	2020-11-06	78
23	19	2020-10-30	2020-11-06	79
346	48	2020-10-30	2020-11-06	80
347	4	2020-10-30	2020-11-06	81
231	130	2020-10-30	2020-11-06	82
348	179	2020-10-30	2020-11-06	83
26	21	2020-10-30	2020-11-06	84
349	180	2020-10-30	2020-11-06	85
27	22	2020-10-30	2020-11-06	86
158	56	2020-10-30	2020-11-06	87
350	16	2020-10-30	2020-11-06	88
351	80	2020-10-30	2020-11-06	89
69	48	2020-10-30	2020-11-06	90
5	5	2020-10-30	2020-11-06	91
33	28	2020-10-30	2020-11-06	92
236	134	2020-10-30	2020-11-06	93
37	29	2020-10-30	2020-11-06	94
51	28	2020-10-30	2020-11-06	95
54	19	2020-10-30	2020-11-06	96
352	126	2020-10-30	2020-11-06	97
353	181	2020-10-30	2020-11-06	98
354	182	2020-10-30	2020-11-06	99
12	11	2020-10-30	2020-11-06	100
150	48	2020-10-30	2020-11-06	101
355	96	2020-10-30	2020-11-06	102
356	183	2020-10-30	2020-11-06	103
82	56	2020-10-30	2020-11-06	104
357	32	2020-10-30	2020-11-06	105
137	51	2020-10-30	2020-11-06	106
358	184	2020-10-30	2020-11-06	107
20	16	2020-10-30	2020-11-06	108
81	52	2020-10-30	2020-11-06	109
359	185	2020-10-30	2020-11-06	110
10	10	2020-10-30	2020-11-06	111
68	47	2020-10-30	2020-11-06	112
11	4	2020-10-30	2020-11-06	113
47	34	2020-10-30	2020-11-06	114
165	56	2020-10-30	2020-11-06	115
12	21	2020-10-30	2020-11-06	116
360	171	2020-10-30	2020-11-06	117
2	2	2020-10-30	2020-11-06	118
122	20	2020-10-30	2020-11-06	119
93	62	2020-10-30	2020-11-06	120
361	186	2020-10-30	2020-11-06	121
29	24	2020-10-30	2020-11-06	122
362	92	2020-10-30	2020-11-06	123
155	92	2020-10-30	2020-11-06	124
363	187	2020-10-30	2020-11-06	125
128	80	2020-10-30	2020-11-06	126
95	63	2020-10-30	2020-11-06	127
19	15	2020-10-30	2020-11-06	128
364	188	2020-10-30	2020-11-06	129
365	189	2020-10-30	2020-11-06	130
366	190	2020-10-30	2020-11-06	131
367	191	2020-10-30	2020-11-06	132
107	70	2020-10-30	2020-11-06	133
202	116	2020-10-30	2020-11-06	134
368	192	2020-10-30	2020-11-06	135
260	48	2020-10-30	2020-11-06	136
369	193	2020-10-30	2020-11-06	137
48	35	2020-10-30	2020-11-06	138
370	48	2020-10-30	2020-11-06	139
371	32	2020-10-30	2020-11-06	140
372	85	2020-10-30	2020-11-06	141
373	194	2020-10-30	2020-11-06	142
374	195	2020-10-30	2020-11-06	143
375	196	2020-10-30	2020-11-06	144
376	197	2020-10-30	2020-11-06	145
377	198	2020-10-30	2020-11-06	146
378	199	2020-10-30	2020-11-06	147
379	172	2020-10-30	2020-11-06	148
380	200	2020-10-30	2020-11-06	149
381	201	2020-10-30	2020-11-06	150
138	45	2020-10-30	2020-11-06	151
34	28	2020-10-30	2020-11-06	152
58	40	2020-10-30	2020-11-06	153
214	68	2020-10-30	2020-11-06	154
382	166	2020-10-30	2020-11-06	155
173	101	2020-10-30	2020-11-06	156
383	202	2020-10-30	2020-11-06	157
384	203	2020-10-30	2020-11-06	158
174	102	2020-10-30	2020-11-06	159
385	185	2020-10-30	2020-11-06	160
9	9	2020-10-30	2020-11-06	161
386	204	2020-10-30	2020-11-06	162
123	45	2020-10-30	2020-11-06	163
64	45	2020-10-30	2020-11-06	164
25	20	2020-10-30	2020-11-06	165
109	70	2020-10-30	2020-11-06	166
168	89	2020-10-30	2020-11-06	167
387	205	2020-10-30	2020-11-06	168
388	37	2020-10-30	2020-11-06	169
116	74	2020-10-30	2020-11-06	170
389	122	2020-10-30	2020-11-06	171
31	26	2020-10-30	2020-11-06	172
115	73	2020-10-30	2020-11-06	173
390	206	2020-10-30	2020-11-06	174
391	207	2020-10-30	2020-11-06	175
392	89	2020-10-30	2020-11-06	176
393	130	2020-10-30	2020-11-06	177
394	194	2020-10-30	2020-11-06	178
395	208	2020-10-30	2020-11-06	179
210	66	2020-10-30	2020-11-06	180
94	19	2020-10-30	2020-11-06	181
396	159	2020-10-30	2020-11-06	182
397	92	2020-10-30	2020-11-06	183
398	209	2020-10-30	2020-11-06	184
399	92	2020-10-30	2020-11-06	185
400	210	2020-10-30	2020-11-06	186
401	211	2020-10-30	2020-11-06	187
402	212	2020-10-30	2020-11-06	188
118	38	2020-10-30	2020-11-06	189
403	213	2020-10-30	2020-11-06	190
404	214	2020-10-30	2020-11-06	191
17	1	2020-10-30	2020-11-06	192
14	13	2020-10-30	2020-11-06	193
405	215	2020-10-30	2020-11-06	194
74	28	2020-10-30	2020-11-06	195
406	216	2020-10-30	2020-11-06	196
217	123	2020-10-30	2020-11-06	197
407	56	2020-10-30	2020-11-06	198
218	86	2020-10-30	2020-11-06	199
408	217	2020-10-30	2020-11-06	200
1	1	2020-04-17	2020-04-24	1
2	2	2020-04-17	2020-04-24	2
3	3	2020-04-17	2020-04-24	3
6	6	2020-04-17	2020-04-24	4
4	4	2020-04-17	2020-04-24	5
7	7	2020-04-17	2020-04-24	6
5	5	2020-04-17	2020-04-24	7
8	8	2020-04-17	2020-04-24	8
9	9	2020-04-17	2020-04-24	9
200	27	2020-04-17	2020-04-24	10
11	4	2020-04-17	2020-04-24	11
15	14	2020-04-17	2020-04-24	12
10	10	2020-04-17	2020-04-24	13
12	11	2020-04-17	2020-04-24	14
13	12	2020-04-17	2020-04-24	15
22	18	2020-04-17	2020-04-24	16
14	13	2020-04-17	2020-04-24	17
21	17	2020-04-17	2020-04-24	18
18	13	2020-04-17	2020-04-24	19
19	15	2020-04-17	2020-04-24	20
24	9	2020-04-17	2020-04-24	21
23	19	2020-04-17	2020-04-24	22
17	1	2020-04-17	2020-04-24	23
20	16	2020-04-17	2020-04-24	24
16	4	2020-04-17	2020-04-24	25
30	25	2020-04-17	2020-04-24	26
265	89	2020-04-17	2020-04-24	27
26	21	2020-04-17	2020-04-24	28
116	74	2020-04-17	2020-04-24	29
29	24	2020-04-17	2020-04-24	30
27	22	2020-04-17	2020-04-24	31
273	152	2020-04-17	2020-04-24	32
33	28	2020-04-17	2020-04-24	33
68	47	2020-04-17	2020-04-24	34
25	20	2020-04-17	2020-04-24	35
40	30	2020-04-17	2020-04-24	36
36	17	2020-04-17	2020-04-24	37
47	34	2020-04-17	2020-04-24	38
31	26	2020-04-17	2020-04-24	39
34	28	2020-04-17	2020-04-24	40
37	29	2020-04-17	2020-04-24	41
45	32	2020-04-17	2020-04-24	42
32	27	2020-04-17	2020-04-24	43
35	13	2020-04-17	2020-04-24	44
44	20	2020-04-17	2020-04-24	45
51	28	2020-04-17	2020-04-24	46
53	37	2020-04-17	2020-04-24	47
48	35	2020-04-17	2020-04-24	48
39	13	2020-04-17	2020-04-24	49
57	5	2020-04-17	2020-04-24	50
268	150	2020-04-17	2020-04-24	51
43	10	2020-04-17	2020-04-24	52
82	56	2020-04-17	2020-04-24	53
38	13	2020-04-17	2020-04-24	54
62	43	2020-04-17	2020-04-24	55
54	19	2020-04-17	2020-04-24	56
28	23	2020-04-17	2020-04-24	57
274	153	2020-04-17	2020-04-24	58
151	90	2020-04-17	2020-04-24	59
52	20	2020-04-17	2020-04-24	60
56	39	2020-04-17	2020-04-24	61
58	40	2020-04-17	2020-04-24	62
46	33	2020-04-17	2020-04-24	63
165	56	2020-04-17	2020-04-24	64
61	42	2020-04-17	2020-04-24	65
63	44	2020-04-17	2020-04-24	66
64	45	2020-04-17	2020-04-24	67
270	64	2020-04-17	2020-04-24	68
69	48	2020-04-17	2020-04-24	69
50	5	2020-04-17	2020-04-24	70
55	38	2020-04-17	2020-04-24	71
42	31	2020-04-17	2020-04-24	72
73	51	2020-04-17	2020-04-24	73
71	9	2020-04-17	2020-04-24	74
70	49	2020-04-17	2020-04-24	75
83	57	2020-04-17	2020-04-24	76
60	41	2020-04-17	2020-04-24	77
409	27	2020-04-17	2020-04-24	78
98	65	2020-04-17	2020-04-24	79
74	28	2020-04-17	2020-04-24	80
59	13	2020-04-17	2020-04-24	81
158	56	2020-04-17	2020-04-24	82
72	50	2020-04-17	2020-04-24	83
81	52	2020-04-17	2020-04-24	84
110	32	2020-04-17	2020-04-24	85
77	53	2020-04-17	2020-04-24	86
41	1	2020-04-17	2020-04-24	87
79	55	2020-04-17	2020-04-24	88
66	46	2020-04-17	2020-04-24	89
75	45	2020-04-17	2020-04-24	90
49	36	2020-04-17	2020-04-24	91
65	13	2020-04-17	2020-04-24	92
84	58	2020-04-17	2020-04-24	93
12	21	2020-04-17	2020-04-24	94
93	62	2020-04-17	2020-04-24	95
76	52	2020-04-17	2020-04-24	96
95	63	2020-04-17	2020-04-24	97
87	59	2020-04-17	2020-04-24	98
410	33	2020-04-17	2020-04-24	99
96	50	2020-04-17	2020-04-24	100
94	19	2020-04-17	2020-04-24	101
411	27	2020-04-17	2020-04-24	102
276	74	2020-04-17	2020-04-24	103
104	69	2020-04-17	2020-04-24	104
195	113	2020-04-17	2020-04-24	105
67	1	2020-04-17	2020-04-24	106
78	54	2020-04-17	2020-04-24	107
99	21	2020-04-17	2020-04-24	108
103	68	2020-04-17	2020-04-24	109
107	70	2020-04-17	2020-04-24	110
91	61	2020-04-17	2020-04-24	111
102	27	2020-04-17	2020-04-24	112
111	71	2020-04-17	2020-04-24	113
218	86	2020-04-17	2020-04-24	114
109	70	2020-04-17	2020-04-24	115
89	60	2020-04-17	2020-04-24	116
90	61	2020-04-17	2020-04-24	117
97	64	2020-04-17	2020-04-24	118
101	67	2020-04-17	2020-04-24	119
275	154	2020-04-17	2020-04-24	120
115	73	2020-04-17	2020-04-24	121
106	66	2020-04-17	2020-04-24	122
144	86	2020-04-17	2020-04-24	123
108	48	2020-04-17	2020-04-24	124
129	81	2020-04-17	2020-04-24	125
123	45	2020-04-17	2020-04-24	126
134	83	2020-04-17	2020-04-24	127
118	38	2020-04-17	2020-04-24	128
114	19	2020-04-17	2020-04-24	129
128	80	2020-04-17	2020-04-24	130
117	17	2020-04-17	2020-04-24	131
85	28	2020-04-17	2020-04-24	132
137	51	2020-04-17	2020-04-24	133
119	75	2020-04-17	2020-04-24	134
157	93	2020-04-17	2020-04-24	135
105	7	2020-04-17	2020-04-24	136
138	45	2020-04-17	2020-04-24	137
235	133	2020-04-17	2020-04-24	138
121	20	2020-04-17	2020-04-24	139
113	54	2020-04-17	2020-04-24	140
132	32	2020-04-17	2020-04-24	141
141	84	2020-04-17	2020-04-24	142
131	2	2020-04-17	2020-04-24	143
100	66	2020-04-17	2020-04-24	144
146	87	2020-04-17	2020-04-24	145
125	78	2020-04-17	2020-04-24	146
150	48	2020-04-17	2020-04-24	147
124	77	2020-04-17	2020-04-24	148
145	19	2020-04-17	2020-04-24	149
130	67	2020-04-17	2020-04-24	150
139	60	2020-04-17	2020-04-24	151
153	51	2020-04-17	2020-04-24	152
281	96	2020-04-17	2020-04-24	153
208	39	2020-04-17	2020-04-24	154
140	33	2020-04-17	2020-04-24	155
412	27	2020-04-17	2020-04-24	156
156	37	2020-04-17	2020-04-24	157
154	28	2020-04-17	2020-04-24	158
282	74	2020-04-17	2020-04-24	159
168	89	2020-04-17	2020-04-24	160
86	50	2020-04-17	2020-04-24	161
413	218	2020-04-17	2020-04-24	162
133	82	2020-04-17	2020-04-24	163
92	1	2020-04-17	2020-04-24	164
162	70	2020-04-17	2020-04-24	165
173	101	2020-04-17	2020-04-24	166
147	13	2020-04-17	2020-04-24	167
122	20	2020-04-17	2020-04-24	168
160	89	2020-04-17	2020-04-24	169
166	97	2020-04-17	2020-04-24	170
174	102	2020-04-17	2020-04-24	171
170	99	2020-04-17	2020-04-24	172
120	76	2020-04-17	2020-04-24	173
80	33	2020-04-17	2020-04-24	174
279	153	2020-04-17	2020-04-24	175
178	98	2020-04-17	2020-04-24	176
159	94	2020-04-17	2020-04-24	177
155	92	2020-04-17	2020-04-24	178
112	72	2020-04-17	2020-04-24	179
414	27	2020-04-17	2020-04-24	180
127	16	2020-04-17	2020-04-24	181
135	20	2020-04-17	2020-04-24	182
152	91	2020-04-17	2020-04-24	183
188	107	2020-04-17	2020-04-24	184
184	19	2020-04-17	2020-04-24	185
163	95	2020-04-17	2020-04-24	186
136	13	2020-04-17	2020-04-24	187
175	21	2020-04-17	2020-04-24	188
182	104	2020-04-17	2020-04-24	189
187	63	2020-04-17	2020-04-24	190
176	103	2020-04-17	2020-04-24	191
186	2	2020-04-17	2020-04-24	192
181	106	2020-04-17	2020-04-24	193
183	29	2020-04-17	2020-04-24	194
164	96	2020-04-17	2020-04-24	195
161	32	2020-04-17	2020-04-24	196
171	100	2020-04-17	2020-04-24	197
185	22	2020-04-17	2020-04-24	198
196	50	2020-04-17	2020-04-24	199
179	105	2020-04-17	2020-04-24	200
400	210	2020-12-18	2020-12-25	1
415	219	2020-12-18	2020-12-25	2
416	63	2020-12-18	2020-12-25	3
284	13	2020-12-18	2020-12-25	4
417	220	2020-12-18	2020-12-25	5
418	221	2020-12-18	2020-12-25	6
419	222	2020-12-18	2020-12-25	7
420	223	2020-12-18	2020-12-25	8
421	224	2020-12-18	2020-12-25	9
350	16	2020-12-18	2020-12-25	10
422	225	2020-12-18	2020-12-25	11
285	42	2020-12-18	2020-12-25	12
283	63	2020-12-18	2020-12-25	13
423	226	2020-12-18	2020-12-25	14
424	10	2020-12-18	2020-12-25	15
425	227	2020-12-18	2020-12-25	16
426	228	2020-12-18	2020-12-25	17
427	229	2020-12-18	2020-12-25	18
428	230	2020-12-18	2020-12-25	19
1	1	2020-12-18	2020-12-25	20
429	221	2020-12-18	2020-12-25	21
430	231	2020-12-18	2020-12-25	22
431	232	2020-12-18	2020-12-25	23
432	233	2020-12-18	2020-12-25	24
433	13	2020-12-18	2020-12-25	25
287	63	2020-12-18	2020-12-25	26
286	157	2020-12-18	2020-12-25	27
289	158	2020-12-18	2020-12-25	28
434	234	2020-12-18	2020-12-25	29
435	28	2020-12-18	2020-12-25	30
436	126	2020-12-18	2020-12-25	31
437	235	2020-12-18	2020-12-25	32
367	191	2020-12-18	2020-12-25	33
288	92	2020-12-18	2020-12-25	34
438	75	2020-12-18	2020-12-25	35
291	159	2020-12-18	2020-12-25	36
439	29	2020-12-18	2020-12-25	37
440	236	2020-12-18	2020-12-25	38
441	237	2020-12-18	2020-12-25	39
292	160	2020-12-18	2020-12-25	40
315	4	2020-12-18	2020-12-25	41
442	238	2020-12-18	2020-12-25	42
290	10	2020-12-18	2020-12-25	43
99	21	2020-12-18	2020-12-25	44
296	161	2020-12-18	2020-12-25	45
357	32	2020-12-18	2020-12-25	46
443	239	2020-12-18	2020-12-25	47
297	162	2020-12-18	2020-12-25	48
311	166	2020-12-18	2020-12-25	49
444	169	2020-12-18	2020-12-25	50
200	27	2020-12-18	2020-12-25	51
445	240	2020-12-18	2020-12-25	52
294	92	2020-12-18	2020-12-25	53
446	241	2020-12-18	2020-12-25	54
349	180	2020-12-18	2020-12-25	55
7	7	2020-12-18	2020-12-25	56
21	17	2020-12-18	2020-12-25	57
298	123	2020-12-18	2020-12-25	58
447	242	2020-12-18	2020-12-25	59
448	243	2020-12-18	2020-12-25	60
3	3	2020-12-18	2020-12-25	61
449	244	2020-12-18	2020-12-25	62
306	164	2020-12-18	2020-12-25	63
450	13	2020-12-18	2020-12-25	64
451	245	2020-12-18	2020-12-25	65
452	246	2020-12-18	2020-12-25	66
308	74	2020-12-18	2020-12-25	67
390	206	2020-12-18	2020-12-25	68
453	247	2020-12-18	2020-12-25	69
293	10	2020-12-18	2020-12-25	70
454	248	2020-12-18	2020-12-25	71
455	74	2020-12-18	2020-12-25	72
456	73	2020-12-18	2020-12-25	73
457	249	2020-12-18	2020-12-25	74
4	4	2020-12-18	2020-12-25	75
303	77	2020-12-18	2020-12-25	76
458	234	2020-12-18	2020-12-25	77
329	173	2020-12-18	2020-12-25	78
459	158	2020-12-18	2020-12-25	79
316	130	2020-12-18	2020-12-25	80
312	167	2020-12-18	2020-12-25	81
307	165	2020-12-18	2020-12-25	82
460	89	2020-12-18	2020-12-25	83
36	17	2020-12-18	2020-12-25	84
461	229	2020-12-18	2020-12-25	85
462	250	2020-12-18	2020-12-25	86
301	2	2020-12-18	2020-12-25	87
359	185	2020-12-18	2020-12-25	88
463	251	2020-12-18	2020-12-25	89
310	20	2020-12-18	2020-12-25	90
216	122	2020-12-18	2020-12-25	91
464	60	2020-12-18	2020-12-25	92
317	139	2020-12-18	2020-12-25	93
321	16	2020-12-18	2020-12-25	94
305	29	2020-12-18	2020-12-25	95
302	63	2020-12-18	2020-12-25	96
388	37	2020-12-18	2020-12-25	97
465	234	2020-12-18	2020-12-25	98
466	18	2020-12-18	2020-12-25	99
5	5	2020-12-18	2020-12-25	100
326	159	2020-12-18	2020-12-25	101
467	51	2020-12-18	2020-12-25	102
299	163	2020-12-18	2020-12-25	103
468	252	2020-12-18	2020-12-25	104
313	168	2020-12-18	2020-12-25	105
62	43	2020-12-18	2020-12-25	106
469	26	2020-12-18	2020-12-25	107
6	6	2020-12-18	2020-12-25	108
470	253	2020-12-18	2020-12-25	109
352	126	2020-12-18	2020-12-25	110
471	235	2020-12-18	2020-12-25	111
472	254	2020-12-18	2020-12-25	112
453	210	2020-12-18	2020-12-25	113
54	19	2020-12-18	2020-12-25	114
23	19	2020-12-18	2020-12-25	115
20	16	2020-12-18	2020-12-25	116
473	221	2020-12-18	2020-12-25	117
474	48	2020-12-18	2020-12-25	118
475	255	2020-12-18	2020-12-25	119
476	234	2020-12-18	2020-12-25	120
69	48	2020-12-18	2020-12-25	121
8	8	2020-12-18	2020-12-25	122
477	242	2020-12-18	2020-12-25	123
334	32	2020-12-18	2020-12-25	124
51	28	2020-12-18	2020-12-25	125
478	256	2020-12-18	2020-12-25	126
479	257	2020-12-18	2020-12-25	127
480	39	2020-12-18	2020-12-25	128
481	234	2020-12-18	2020-12-25	129
27	22	2020-12-18	2020-12-25	130
445	63	2020-12-18	2020-12-25	131
346	48	2020-12-18	2020-12-25	132
482	258	2020-12-18	2020-12-25	133
328	21	2020-12-18	2020-12-25	134
158	56	2020-12-18	2020-12-25	135
325	130	2020-12-18	2020-12-25	136
483	45	2020-12-18	2020-12-25	137
484	159	2020-12-18	2020-12-25	138
351	80	2020-12-18	2020-12-25	139
485	29	2020-12-18	2020-12-25	140
26	21	2020-12-18	2020-12-25	141
37	29	2020-12-18	2020-12-25	142
486	44	2020-12-18	2020-12-25	143
487	225	2020-12-18	2020-12-25	144
488	259	2020-12-18	2020-12-25	145
82	56	2020-12-18	2020-12-25	146
489	260	2020-12-18	2020-12-25	147
319	169	2020-12-18	2020-12-25	148
490	261	2020-12-18	2020-12-25	149
491	262	2020-12-18	2020-12-25	150
330	48	2020-12-18	2020-12-25	151
492	263	2020-12-18	2020-12-25	152
493	78	2020-12-18	2020-12-25	153
150	48	2020-12-18	2020-12-25	154
12	11	2020-12-18	2020-12-25	155
494	225	2020-12-18	2020-12-25	156
495	230	2020-12-18	2020-12-25	157
31	26	2020-12-18	2020-12-25	158
496	230	2020-12-18	2020-12-25	159
497	210	2020-12-18	2020-12-25	160
498	237	2020-12-18	2020-12-25	161
33	28	2020-12-18	2020-12-25	162
204	63	2020-12-18	2020-12-25	163
219	124	2020-12-18	2020-12-25	164
499	264	2020-12-18	2020-12-25	165
337	175	2020-12-18	2020-12-25	166
500	265	2020-12-18	2020-12-25	167
29	24	2020-12-18	2020-12-25	168
333	174	2020-12-18	2020-12-25	169
201	52	2020-12-18	2020-12-25	170
320	170	2020-12-18	2020-12-25	171
336	92	2020-12-18	2020-12-25	172
501	264	2020-12-18	2020-12-25	173
502	266	2020-12-18	2020-12-25	174
503	267	2020-12-18	2020-12-25	175
11	4	2020-12-18	2020-12-25	176
343	176	2020-12-18	2020-12-25	177
81	52	2020-12-18	2020-12-25	178
399	92	2020-12-18	2020-12-25	179
504	268	2020-12-18	2020-12-25	180
505	234	2020-12-18	2020-12-25	181
506	138	2020-12-18	2020-12-25	182
381	201	2020-12-18	2020-12-25	183
507	269	2020-12-18	2020-12-25	184
508	234	2020-12-18	2020-12-25	185
509	270	2020-12-18	2020-12-25	186
406	216	2020-12-18	2020-12-25	187
93	62	2020-12-18	2020-12-25	188
345	178	2020-12-18	2020-12-25	189
342	171	2020-12-18	2020-12-25	190
260	48	2020-12-18	2020-12-25	191
510	271	2020-12-18	2020-12-25	192
511	123	2020-12-18	2020-12-25	193
512	25	2020-12-18	2020-12-25	194
2	2	2020-12-18	2020-12-25	195
327	172	2020-12-18	2020-12-25	196
513	263	2020-12-18	2020-12-25	197
48	35	2020-12-18	2020-12-25	198
107	70	2020-12-18	2020-12-25	199
514	13	2020-12-18	2020-12-25	200
7	7	2020-01-31	2020-02-07	1
5	5	2020-01-31	2020-02-07	2
1	1	2020-01-31	2020-02-07	3
20	16	2020-01-31	2020-02-07	4
4	4	2020-01-31	2020-02-07	5
43	10	2020-01-31	2020-02-07	6
31	26	2020-01-31	2020-02-07	7
12	11	2020-01-31	2020-02-07	8
19	15	2020-01-31	2020-02-07	9
29	24	2020-01-31	2020-02-07	10
34	28	2020-01-31	2020-02-07	11
27	22	2020-01-31	2020-02-07	12
23	19	2020-01-31	2020-02-07	13
21	17	2020-01-31	2020-02-07	14
33	28	2020-01-31	2020-02-07	15
56	39	2020-01-31	2020-02-07	16
37	29	2020-01-31	2020-02-07	17
16	4	2020-01-31	2020-02-07	18
55	38	2020-01-31	2020-02-07	19
26	21	2020-01-31	2020-02-07	20
49	36	2020-01-31	2020-02-07	21
36	17	2020-01-31	2020-02-07	22
60	41	2020-01-31	2020-02-07	23
97	64	2020-01-31	2020-02-07	24
9	9	2020-01-31	2020-02-07	25
113	54	2020-01-31	2020-02-07	26
59	13	2020-01-31	2020-02-07	27
48	35	2020-01-31	2020-02-07	28
79	55	2020-01-31	2020-02-07	29
53	37	2020-01-31	2020-02-07	30
515	64	2020-01-31	2020-02-07	31
89	60	2020-01-31	2020-02-07	32
52	20	2020-01-31	2020-02-07	33
3	3	2020-01-31	2020-02-07	34
90	61	2020-01-31	2020-02-07	35
132	32	2020-01-31	2020-02-07	36
83	57	2020-01-31	2020-02-07	37
133	82	2020-01-31	2020-02-07	38
102	27	2020-01-31	2020-02-07	39
58	40	2020-01-31	2020-02-07	40
54	19	2020-01-31	2020-02-07	41
74	28	2020-01-31	2020-02-07	42
64	45	2020-01-31	2020-02-07	43
125	78	2020-01-31	2020-02-07	44
516	10	2020-01-31	2020-02-07	45
82	56	2020-01-31	2020-02-07	46
120	76	2020-01-31	2020-02-07	47
517	272	2020-01-31	2020-02-07	48
106	66	2020-01-31	2020-02-07	49
518	273	2020-01-31	2020-02-07	50
50	5	2020-01-31	2020-02-07	51
108	48	2020-01-31	2020-02-07	52
144	86	2020-01-31	2020-02-07	53
51	28	2020-01-31	2020-02-07	54
70	49	2020-01-31	2020-02-07	55
75	45	2020-01-31	2020-02-07	56
519	158	2020-01-31	2020-02-07	57
69	48	2020-01-31	2020-02-07	58
99	21	2020-01-31	2020-02-07	59
47	34	2020-01-31	2020-02-07	60
520	234	2020-01-31	2020-02-07	61
95	63	2020-01-31	2020-02-07	62
141	84	2020-01-31	2020-02-07	63
521	78	2020-01-31	2020-02-07	64
121	20	2020-01-31	2020-02-07	65
147	13	2020-01-31	2020-02-07	66
87	59	2020-01-31	2020-02-07	67
522	274	2020-01-31	2020-02-07	68
523	27	2020-01-31	2020-02-07	69
524	275	2020-01-31	2020-02-07	70
13	12	2020-01-31	2020-02-07	71
525	53	2020-01-31	2020-02-07	72
81	52	2020-01-31	2020-02-07	73
119	75	2020-01-31	2020-02-07	74
526	186	2020-01-31	2020-02-07	75
91	61	2020-01-31	2020-02-07	76
191	110	2020-01-31	2020-02-07	77
114	19	2020-01-31	2020-02-07	78
135	20	2020-01-31	2020-02-07	79
111	71	2020-01-31	2020-02-07	80
67	1	2020-01-31	2020-02-07	81
527	50	2020-01-31	2020-02-07	82
528	45	2020-01-31	2020-02-07	83
160	89	2020-01-31	2020-02-07	84
163	95	2020-01-31	2020-02-07	85
529	196	2020-01-31	2020-02-07	86
530	111	2020-01-31	2020-02-07	87
531	276	2020-01-31	2020-02-07	88
118	38	2020-01-31	2020-02-07	89
104	69	2020-01-31	2020-02-07	90
532	55	2020-01-31	2020-02-07	91
105	7	2020-01-31	2020-02-07	92
103	68	2020-01-31	2020-02-07	93
533	33	2020-01-31	2020-02-07	94
146	87	2020-01-31	2020-02-07	95
117	17	2020-01-31	2020-02-07	96
534	28	2020-01-31	2020-02-07	97
535	27	2020-01-31	2020-02-07	98
536	56	2020-01-31	2020-02-07	99
139	60	2020-01-31	2020-02-07	100
93	62	2020-01-31	2020-02-07	101
537	277	2020-01-31	2020-02-07	102
538	79	2020-01-31	2020-02-07	103
150	48	2020-01-31	2020-02-07	104
94	19	2020-01-31	2020-02-07	105
154	28	2020-01-31	2020-02-07	106
145	19	2020-01-31	2020-02-07	107
539	278	2020-01-31	2020-02-07	108
540	40	2020-01-31	2020-02-07	109
541	279	2020-01-31	2020-02-07	110
131	2	2020-01-31	2020-02-07	111
542	112	2020-01-31	2020-02-07	112
543	15	2020-01-31	2020-02-07	113
115	73	2020-01-31	2020-02-07	114
175	21	2020-01-31	2020-02-07	115
123	45	2020-01-31	2020-02-07	116
101	67	2020-01-31	2020-02-07	117
156	37	2020-01-31	2020-02-07	118
544	280	2020-01-31	2020-02-07	119
545	281	2020-01-31	2020-02-07	120
109	70	2020-01-31	2020-02-07	121
546	123	2020-01-31	2020-02-07	122
547	282	2020-01-31	2020-02-07	123
165	56	2020-01-31	2020-02-07	124
548	120	2020-01-31	2020-02-07	125
128	80	2020-01-31	2020-02-07	126
549	112	2020-01-31	2020-02-07	127
550	283	2020-01-31	2020-02-07	128
187	63	2020-01-31	2020-02-07	129
551	28	2020-01-31	2020-02-07	130
168	89	2020-01-31	2020-02-07	131
552	111	2020-01-31	2020-02-07	132
553	26	2020-01-31	2020-02-07	133
282	74	2020-01-31	2020-02-07	134
554	44	2020-01-31	2020-02-07	135
555	284	2020-01-31	2020-02-07	136
107	70	2020-01-31	2020-02-07	137
179	105	2020-01-31	2020-02-07	138
159	94	2020-01-31	2020-02-07	139
556	234	2020-01-31	2020-02-07	140
153	51	2020-01-31	2020-02-07	141
557	154	2020-01-31	2020-02-07	142
558	278	2020-01-31	2020-02-07	143
138	45	2020-01-31	2020-02-07	144
130	67	2020-01-31	2020-02-07	145
140	33	2020-01-31	2020-02-07	146
559	134	2020-01-31	2020-02-07	147
185	22	2020-01-31	2020-02-07	148
560	28	2020-01-31	2020-02-07	149
561	285	2020-01-31	2020-02-07	150
562	28	2020-01-31	2020-02-07	151
124	77	2020-01-31	2020-02-07	152
158	56	2020-01-31	2020-02-07	153
563	110	2020-01-31	2020-02-07	154
564	286	2020-01-31	2020-02-07	155
176	103	2020-01-31	2020-02-07	156
565	287	2020-01-31	2020-02-07	157
566	120	2020-01-31	2020-02-07	158
184	19	2020-01-31	2020-02-07	159
567	288	2020-01-31	2020-02-07	160
568	139	2020-01-31	2020-02-07	161
12	21	2020-01-31	2020-02-07	162
162	70	2020-01-31	2020-02-07	163
569	289	2020-01-31	2020-02-07	164
570	20	2020-01-31	2020-02-07	165
571	290	2020-01-31	2020-02-07	166
181	106	2020-01-31	2020-02-07	167
572	291	2020-01-31	2020-02-07	168
177	104	2020-01-31	2020-02-07	169
183	29	2020-01-31	2020-02-07	170
573	292	2020-01-31	2020-02-07	171
199	115	2020-01-31	2020-02-07	172
574	27	2020-01-31	2020-02-07	173
188	107	2020-01-31	2020-02-07	174
174	102	2020-01-31	2020-02-07	175
30	25	2020-01-31	2020-02-07	176
575	56	2020-01-31	2020-02-07	177
576	196	2020-01-31	2020-02-07	178
577	28	2020-01-31	2020-02-07	179
578	38	2020-01-31	2020-02-07	180
173	101	2020-01-31	2020-02-07	181
178	98	2020-01-31	2020-02-07	182
579	155	2020-01-31	2020-02-07	183
580	60	2020-01-31	2020-02-07	184
581	123	2020-01-31	2020-02-07	185
170	99	2020-01-31	2020-02-07	186
582	53	2020-01-31	2020-02-07	187
583	293	2020-01-31	2020-02-07	188
584	294	2020-01-31	2020-02-07	189
585	76	2020-01-31	2020-02-07	190
586	41	2020-01-31	2020-02-07	191
587	295	2020-01-31	2020-02-07	192
588	234	2020-01-31	2020-02-07	193
589	75	2020-01-31	2020-02-07	194
590	106	2020-01-31	2020-02-07	195
591	28	2020-01-31	2020-02-07	196
186	2	2020-01-31	2020-02-07	197
592	293	2020-01-31	2020-02-07	198
593	296	2020-01-31	2020-02-07	199
594	54	2020-01-31	2020-02-07	200
7	7	2019-12-27	2020-01-03	1
19	15	2019-12-27	2020-01-03	2
20	16	2019-12-27	2020-01-03	3
27	22	2019-12-27	2020-01-03	4
12	11	2019-12-27	2020-01-03	5
23	19	2019-12-27	2020-01-03	6
4	4	2019-12-27	2020-01-03	7
1	1	2019-12-27	2020-01-03	8
37	29	2019-12-27	2020-01-03	9
34	28	2019-12-27	2020-01-03	10
56	39	2019-12-27	2020-01-03	11
21	17	2019-12-27	2020-01-03	12
5	5	2019-12-27	2020-01-03	13
33	28	2019-12-27	2020-01-03	14
26	21	2019-12-27	2020-01-03	15
536	56	2019-12-27	2020-01-03	16
60	41	2019-12-27	2020-01-03	17
97	64	2019-12-27	2020-01-03	18
58	40	2019-12-27	2020-01-03	19
59	13	2019-12-27	2020-01-03	20
48	35	2019-12-27	2020-01-03	21
99	21	2019-12-27	2020-01-03	22
82	56	2019-12-27	2020-01-03	23
54	19	2019-12-27	2020-01-03	24
106	66	2019-12-27	2020-01-03	25
102	27	2019-12-27	2020-01-03	26
111	71	2019-12-27	2020-01-03	27
64	45	2019-12-27	2020-01-03	28
67	1	2019-12-27	2020-01-03	29
75	45	2019-12-27	2020-01-03	30
69	48	2019-12-27	2020-01-03	31
144	86	2019-12-27	2020-01-03	32
108	48	2019-12-27	2020-01-03	33
132	32	2019-12-27	2020-01-03	34
36	17	2019-12-27	2020-01-03	35
595	71	2019-12-27	2020-01-03	36
527	50	2019-12-27	2020-01-03	37
596	71	2019-12-27	2020-01-03	38
597	86	2019-12-27	2020-01-03	39
53	37	2019-12-27	2020-01-03	40
95	63	2019-12-27	2020-01-03	41
160	89	2019-12-27	2020-01-03	42
121	20	2019-12-27	2020-01-03	43
119	75	2019-12-27	2020-01-03	44
70	49	2019-12-27	2020-01-03	45
87	59	2019-12-27	2020-01-03	46
528	45	2019-12-27	2020-01-03	47
79	55	2019-12-27	2020-01-03	48
517	272	2019-12-27	2020-01-03	49
147	13	2019-12-27	2020-01-03	50
49	36	2019-12-27	2020-01-03	51
113	54	2019-12-27	2020-01-03	52
521	78	2019-12-27	2020-01-03	53
561	285	2019-12-27	2020-01-03	54
141	84	2019-12-27	2020-01-03	55
104	69	2019-12-27	2020-01-03	56
83	57	2019-12-27	2020-01-03	57
114	19	2019-12-27	2020-01-03	58
598	280	2019-12-27	2020-01-03	59
529	196	2019-12-27	2020-01-03	60
526	186	2019-12-27	2020-01-03	61
12	21	2019-12-27	2020-01-03	62
81	52	2019-12-27	2020-01-03	63
74	28	2019-12-27	2020-01-03	64
542	112	2019-12-27	2020-01-03	65
103	68	2019-12-27	2020-01-03	66
51	28	2019-12-27	2020-01-03	67
175	21	2019-12-27	2020-01-03	68
531	276	2019-12-27	2020-01-03	69
537	277	2019-12-27	2020-01-03	70
3	3	2019-12-27	2020-01-03	71
599	71	2019-12-27	2020-01-03	72
91	61	2019-12-27	2020-01-03	73
145	19	2019-12-27	2020-01-03	74
156	37	2019-12-27	2020-01-03	75
150	48	2019-12-27	2020-01-03	76
590	106	2019-12-27	2020-01-03	77
530	111	2019-12-27	2020-01-03	78
139	60	2019-12-27	2020-01-03	79
123	45	2019-12-27	2020-01-03	80
115	73	2019-12-27	2020-01-03	81
549	112	2019-12-27	2020-01-03	82
94	19	2019-12-27	2020-01-03	83
135	20	2019-12-27	2020-01-03	84
179	105	2019-12-27	2020-01-03	85
541	279	2019-12-27	2020-01-03	86
47	34	2019-12-27	2020-01-03	87
187	63	2019-12-27	2020-01-03	88
569	289	2019-12-27	2020-01-03	89
539	278	2019-12-27	2020-01-03	90
153	51	2019-12-27	2020-01-03	91
131	2	2019-12-27	2020-01-03	92
165	56	2019-12-27	2020-01-03	93
185	22	2019-12-27	2020-01-03	94
548	120	2019-12-27	2020-01-03	95
118	38	2019-12-27	2020-01-03	96
282	74	2019-12-27	2020-01-03	97
93	62	2019-12-27	2020-01-03	98
545	281	2019-12-27	2020-01-03	99
532	55	2019-12-27	2020-01-03	100
566	120	2019-12-27	2020-01-03	101
600	255	2019-12-27	2020-01-03	102
535	27	2019-12-27	2020-01-03	103
546	123	2019-12-27	2020-01-03	104
576	196	2019-12-27	2020-01-03	105
552	111	2019-12-27	2020-01-03	106
578	38	2019-12-27	2020-01-03	107
559	134	2019-12-27	2020-01-03	108
601	64	2019-12-27	2020-01-03	109
602	53	2019-12-27	2020-01-03	110
534	28	2019-12-27	2020-01-03	111
109	70	2019-12-27	2020-01-03	112
168	89	2019-12-27	2020-01-03	113
586	41	2019-12-27	2020-01-03	114
191	110	2019-12-27	2020-01-03	115
188	107	2019-12-27	2020-01-03	116
575	56	2019-12-27	2020-01-03	117
140	33	2019-12-27	2020-01-03	118
146	87	2019-12-27	2020-01-03	119
574	27	2019-12-27	2020-01-03	120
564	286	2019-12-27	2020-01-03	121
184	19	2019-12-27	2020-01-03	122
594	54	2019-12-27	2020-01-03	123
603	104	2019-12-27	2020-01-03	124
604	297	2019-12-27	2020-01-03	125
605	48	2019-12-27	2020-01-03	126
9	9	2019-12-27	2020-01-03	127
606	9	2019-12-27	2020-01-03	128
159	94	2019-12-27	2020-01-03	129
186	2	2019-12-27	2020-01-03	130
584	294	2019-12-27	2020-01-03	131
154	28	2019-12-27	2020-01-03	132
607	298	2019-12-27	2020-01-03	133
589	75	2019-12-27	2020-01-03	134
582	53	2019-12-27	2020-01-03	135
581	123	2019-12-27	2020-01-03	136
608	8	2019-12-27	2020-01-03	137
264	73	2019-12-27	2020-01-03	138
609	299	2019-12-27	2020-01-03	139
610	300	2019-12-27	2020-01-03	140
261	104	2019-12-27	2020-01-03	141
158	56	2019-12-27	2020-01-03	142
611	71	2019-12-27	2020-01-03	143
138	45	2019-12-27	2020-01-03	144
612	301	2019-12-27	2020-01-03	145
570	20	2019-12-27	2020-01-03	146
128	80	2019-12-27	2020-01-03	147
613	19	2019-12-27	2020-01-03	148
183	29	2019-12-27	2020-01-03	149
614	302	2019-12-27	2020-01-03	150
400	210	2019-12-27	2020-01-03	151
583	293	2019-12-27	2020-01-03	152
615	289	2019-12-27	2020-01-03	153
105	7	2019-12-27	2020-01-03	154
616	303	2019-12-27	2020-01-03	155
617	212	2019-12-27	2020-01-03	156
618	159	2019-12-27	2020-01-03	157
558	278	2019-12-27	2020-01-03	158
178	98	2019-12-27	2020-01-03	159
117	17	2019-12-27	2020-01-03	160
162	70	2019-12-27	2020-01-03	161
551	28	2019-12-27	2020-01-03	162
592	293	2019-12-27	2020-01-03	163
107	70	2019-12-27	2020-01-03	164
101	67	2019-12-27	2020-01-03	165
177	104	2019-12-27	2020-01-03	166
130	67	2019-12-27	2020-01-03	167
619	304	2019-12-27	2020-01-03	168
181	106	2019-12-27	2020-01-03	169
260	48	2019-12-27	2020-01-03	170
568	139	2019-12-27	2020-01-03	171
170	99	2019-12-27	2020-01-03	172
163	95	2019-12-27	2020-01-03	173
556	234	2019-12-27	2020-01-03	174
173	101	2019-12-27	2020-01-03	175
571	290	2019-12-27	2020-01-03	176
580	60	2019-12-27	2020-01-03	177
620	75	2019-12-27	2020-01-03	178
621	42	2019-12-27	2020-01-03	179
182	104	2019-12-27	2020-01-03	180
622	62	2019-12-27	2020-01-03	181
623	305	2019-12-27	2020-01-03	182
624	306	2019-12-27	2020-01-03	183
174	102	2019-12-27	2020-01-03	184
625	307	2019-12-27	2020-01-03	185
626	308	2019-12-27	2020-01-03	186
627	48	2019-12-27	2020-01-03	187
176	103	2019-12-27	2020-01-03	188
124	77	2019-12-27	2020-01-03	189
628	309	2019-12-27	2020-01-03	190
279	153	2019-12-27	2020-01-03	191
629	130	2019-12-27	2020-01-03	192
630	73	2019-12-27	2020-01-03	193
560	28	2019-12-27	2020-01-03	194
631	4	2019-12-27	2020-01-03	195
632	310	2019-12-27	2020-01-03	196
633	41	2019-12-27	2020-01-03	197
634	311	2019-12-27	2020-01-03	198
635	234	2019-12-27	2020-01-03	199
587	295	2019-12-27	2020-01-03	200
284	13	2020-12-04	2020-12-11	1
400	210	2020-12-04	2020-12-11	2
415	219	2020-12-04	2020-12-11	3
283	63	2020-12-04	2020-12-11	4
285	42	2020-12-04	2020-12-11	5
1	1	2020-12-04	2020-12-11	6
416	63	2020-12-04	2020-12-11	7
350	16	2020-12-04	2020-12-11	8
433	13	2020-12-04	2020-12-11	9
418	221	2020-12-04	2020-12-11	10
289	158	2020-12-04	2020-12-11	11
417	220	2020-12-04	2020-12-11	12
435	28	2020-12-04	2020-12-11	13
439	29	2020-12-04	2020-12-11	14
286	157	2020-12-04	2020-12-11	15
419	222	2020-12-04	2020-12-11	16
287	63	2020-12-04	2020-12-11	17
420	223	2020-12-04	2020-12-11	18
421	224	2020-12-04	2020-12-11	19
288	92	2020-12-04	2020-12-11	20
99	21	2020-12-04	2020-12-11	21
444	169	2020-12-04	2020-12-11	22
290	10	2020-12-04	2020-12-11	23
291	159	2020-12-04	2020-12-11	24
292	160	2020-12-04	2020-12-11	25
367	191	2020-12-04	2020-12-11	26
424	10	2020-12-04	2020-12-11	27
438	75	2020-12-04	2020-12-11	28
450	13	2020-12-04	2020-12-11	29
296	161	2020-12-04	2020-12-11	30
422	225	2020-12-04	2020-12-11	31
459	158	2020-12-04	2020-12-11	32
200	27	2020-12-04	2020-12-11	33
315	4	2020-12-04	2020-12-11	34
297	162	2020-12-04	2020-12-11	35
423	226	2020-12-04	2020-12-11	36
425	227	2020-12-04	2020-12-11	37
305	29	2020-12-04	2020-12-11	38
294	92	2020-12-04	2020-12-11	39
436	126	2020-12-04	2020-12-11	40
21	17	2020-12-04	2020-12-11	41
426	228	2020-12-04	2020-12-11	42
303	77	2020-12-04	2020-12-11	43
429	221	2020-12-04	2020-12-11	44
428	230	2020-12-04	2020-12-11	45
7	7	2020-12-04	2020-12-11	46
298	123	2020-12-04	2020-12-11	47
3	3	2020-12-04	2020-12-11	48
311	166	2020-12-04	2020-12-11	49
293	10	2020-12-04	2020-12-11	50
430	231	2020-12-04	2020-12-11	51
431	232	2020-12-04	2020-12-11	52
349	180	2020-12-04	2020-12-11	53
4	4	2020-12-04	2020-12-11	54
306	164	2020-12-04	2020-12-11	55
432	233	2020-12-04	2020-12-11	56
308	74	2020-12-04	2020-12-11	57
36	17	2020-12-04	2020-12-11	58
302	63	2020-12-04	2020-12-11	59
301	2	2020-12-04	2020-12-11	60
466	18	2020-12-04	2020-12-11	61
357	32	2020-12-04	2020-12-11	62
312	167	2020-12-04	2020-12-11	63
317	139	2020-12-04	2020-12-11	64
310	20	2020-12-04	2020-12-11	65
307	165	2020-12-04	2020-12-11	66
299	163	2020-12-04	2020-12-11	67
329	173	2020-12-04	2020-12-11	68
5	5	2020-12-04	2020-12-11	69
359	185	2020-12-04	2020-12-11	70
352	126	2020-12-04	2020-12-11	71
316	130	2020-12-04	2020-12-11	72
321	16	2020-12-04	2020-12-11	73
636	48	2020-12-04	2020-12-11	74
6	6	2020-12-04	2020-12-11	75
216	122	2020-12-04	2020-12-11	76
514	13	2020-12-04	2020-12-11	77
23	19	2020-12-04	2020-12-11	78
326	159	2020-12-04	2020-12-11	79
390	206	2020-12-04	2020-12-11	80
313	168	2020-12-04	2020-12-11	81
62	43	2020-12-04	2020-12-11	82
319	169	2020-12-04	2020-12-11	83
484	159	2020-12-04	2020-12-11	84
54	19	2020-12-04	2020-12-11	85
437	235	2020-12-04	2020-12-11	86
51	28	2020-12-04	2020-12-11	87
637	13	2020-12-04	2020-12-11	88
69	48	2020-12-04	2020-12-11	89
8	8	2020-12-04	2020-12-11	90
346	48	2020-12-04	2020-12-11	91
388	37	2020-12-04	2020-12-11	92
328	21	2020-12-04	2020-12-11	93
26	21	2020-12-04	2020-12-11	94
330	48	2020-12-04	2020-12-11	95
440	236	2020-12-04	2020-12-11	96
20	16	2020-12-04	2020-12-11	97
27	22	2020-12-04	2020-12-11	98
337	175	2020-12-04	2020-12-11	99
158	56	2020-12-04	2020-12-11	100
446	241	2020-12-04	2020-12-11	101
351	80	2020-12-04	2020-12-11	102
334	32	2020-12-04	2020-12-11	103
638	29	2020-12-04	2020-12-11	104
442	238	2020-12-04	2020-12-11	105
441	237	2020-12-04	2020-12-11	106
333	174	2020-12-04	2020-12-11	107
150	48	2020-12-04	2020-12-11	108
204	63	2020-12-04	2020-12-11	109
37	29	2020-12-04	2020-12-11	110
325	130	2020-12-04	2020-12-11	111
12	11	2020-12-04	2020-12-11	112
33	28	2020-12-04	2020-12-11	113
82	56	2020-12-04	2020-12-11	114
320	170	2020-12-04	2020-12-11	115
201	52	2020-12-04	2020-12-11	116
336	92	2020-12-04	2020-12-11	117
639	13	2020-12-04	2020-12-11	118
341	25	2020-12-04	2020-12-11	119
443	239	2020-12-04	2020-12-11	120
29	24	2020-12-04	2020-12-11	121
81	52	2020-12-04	2020-12-11	122
345	178	2020-12-04	2020-12-11	123
11	4	2020-12-04	2020-12-11	124
342	171	2020-12-04	2020-12-11	125
502	266	2020-12-04	2020-12-11	126
34	28	2020-12-04	2020-12-11	127
219	124	2020-12-04	2020-12-11	128
343	176	2020-12-04	2020-12-11	129
327	172	2020-12-04	2020-12-11	130
10	10	2020-12-04	2020-12-11	131
260	48	2020-12-04	2020-12-11	132
47	34	2020-12-04	2020-12-11	133
448	243	2020-12-04	2020-12-11	134
19	15	2020-12-04	2020-12-11	135
2	2	2020-12-04	2020-12-11	136
12	21	2020-12-04	2020-12-11	137
640	1	2020-12-04	2020-12-11	138
470	253	2020-12-04	2020-12-11	139
381	201	2020-12-04	2020-12-11	140
107	70	2020-12-04	2020-12-11	141
355	96	2020-12-04	2020-12-11	142
455	74	2020-12-04	2020-12-11	143
93	62	2020-12-04	2020-12-11	144
348	179	2020-12-04	2020-12-11	145
128	80	2020-12-04	2020-12-11	146
155	92	2020-12-04	2020-12-11	147
493	78	2020-12-04	2020-12-11	148
447	242	2020-12-04	2020-12-11	149
48	35	2020-12-04	2020-12-11	150
165	56	2020-12-04	2020-12-11	151
323	171	2020-12-04	2020-12-11	152
335	89	2020-12-04	2020-12-11	153
31	26	2020-12-04	2020-12-11	154
511	123	2020-12-04	2020-12-11	155
399	92	2020-12-04	2020-12-11	156
231	130	2020-12-04	2020-12-11	157
331	171	2020-12-04	2020-12-11	158
641	13	2020-12-04	2020-12-11	159
445	240	2020-12-04	2020-12-11	160
68	47	2020-12-04	2020-12-11	161
9	9	2020-12-04	2020-12-11	162
236	134	2020-12-04	2020-12-11	163
385	185	2020-12-04	2020-12-11	164
449	244	2020-12-04	2020-12-11	165
509	270	2020-12-04	2020-12-11	166
642	110	2020-12-04	2020-12-11	167
643	169	2020-12-04	2020-12-11	168
17	1	2020-12-04	2020-12-11	169
452	246	2020-12-04	2020-12-11	170
460	89	2020-12-04	2020-12-11	171
453	247	2020-12-04	2020-12-11	172
138	45	2020-12-04	2020-12-11	173
463	251	2020-12-04	2020-12-11	174
472	254	2020-12-04	2020-12-11	175
454	248	2020-12-04	2020-12-11	176
122	20	2020-12-04	2020-12-11	177
95	63	2020-12-04	2020-12-11	178
644	158	2020-12-04	2020-12-11	179
109	70	2020-12-04	2020-12-11	180
451	245	2020-12-04	2020-12-11	181
408	217	2020-12-04	2020-12-11	182
74	28	2020-12-04	2020-12-11	183
58	40	2020-12-04	2020-12-11	184
457	249	2020-12-04	2020-12-11	185
115	73	2020-12-04	2020-12-11	186
347	4	2020-12-04	2020-12-11	187
464	60	2020-12-04	2020-12-11	188
406	216	2020-12-04	2020-12-11	189
362	92	2020-12-04	2020-12-11	190
340	132	2020-12-04	2020-12-11	191
354	182	2020-12-04	2020-12-11	192
14	13	2020-12-04	2020-12-11	193
645	13	2020-12-04	2020-12-11	194
221	126	2020-12-04	2020-12-11	195
646	312	2020-12-04	2020-12-11	196
174	102	2020-12-04	2020-12-11	197
453	210	2020-12-04	2020-12-11	198
647	42	2020-12-04	2020-12-11	199
462	250	2020-12-04	2020-12-11	200
284	13	2020-11-27	2020-12-04	1
433	13	2020-11-27	2020-12-04	2
283	63	2020-11-27	2020-12-04	3
400	210	2020-11-27	2020-12-04	4
285	42	2020-11-27	2020-12-04	5
289	158	2020-11-27	2020-12-04	6
1	1	2020-11-27	2020-12-04	7
435	28	2020-11-27	2020-12-04	8
415	219	2020-11-27	2020-12-04	9
350	16	2020-11-27	2020-12-04	10
286	157	2020-11-27	2020-12-04	11
450	13	2020-11-27	2020-12-04	12
439	29	2020-11-27	2020-12-04	13
416	63	2020-11-27	2020-12-04	14
459	158	2020-11-27	2020-12-04	15
444	169	2020-11-27	2020-12-04	16
637	13	2020-11-27	2020-12-04	17
418	221	2020-11-27	2020-12-04	18
287	63	2020-11-27	2020-12-04	19
288	92	2020-11-27	2020-12-04	20
514	13	2020-11-27	2020-12-04	21
290	10	2020-11-27	2020-12-04	22
417	220	2020-11-27	2020-12-04	23
419	222	2020-11-27	2020-12-04	24
99	21	2020-11-27	2020-12-04	25
292	160	2020-11-27	2020-12-04	26
420	223	2020-11-27	2020-12-04	27
291	159	2020-11-27	2020-12-04	28
641	13	2020-11-27	2020-12-04	29
296	161	2020-11-27	2020-12-04	30
294	92	2020-11-27	2020-12-04	31
421	224	2020-11-27	2020-12-04	32
639	13	2020-11-27	2020-12-04	33
297	162	2020-11-27	2020-12-04	34
293	10	2020-11-27	2020-12-04	35
438	75	2020-11-27	2020-12-04	36
315	4	2020-11-27	2020-12-04	37
367	191	2020-11-27	2020-12-04	38
200	27	2020-11-27	2020-12-04	39
303	77	2020-11-27	2020-12-04	40
648	13	2020-11-27	2020-12-04	41
298	123	2020-11-27	2020-12-04	42
645	13	2020-11-27	2020-12-04	43
649	13	2020-11-27	2020-12-04	44
424	10	2020-11-27	2020-12-04	45
311	166	2020-11-27	2020-12-04	46
21	17	2020-11-27	2020-12-04	47
650	13	2020-11-27	2020-12-04	48
302	63	2020-11-27	2020-12-04	49
422	225	2020-11-27	2020-12-04	50
349	180	2020-11-27	2020-12-04	51
306	164	2020-11-27	2020-12-04	52
651	13	2020-11-27	2020-12-04	53
319	169	2020-11-27	2020-12-04	54
308	74	2020-11-27	2020-12-04	55
307	165	2020-11-27	2020-12-04	56
305	29	2020-11-27	2020-12-04	57
7	7	2020-11-27	2020-12-04	58
652	13	2020-11-27	2020-12-04	59
3	3	2020-11-27	2020-12-04	60
301	2	2020-11-27	2020-12-04	61
423	226	2020-11-27	2020-12-04	62
653	13	2020-11-27	2020-12-04	63
425	227	2020-11-27	2020-12-04	64
299	163	2020-11-27	2020-12-04	65
654	13	2020-11-27	2020-12-04	66
310	20	2020-11-27	2020-12-04	67
36	17	2020-11-27	2020-12-04	68
426	228	2020-11-27	2020-12-04	69
317	139	2020-11-27	2020-12-04	70
428	230	2020-11-27	2020-12-04	71
484	159	2020-11-27	2020-12-04	72
466	18	2020-11-27	2020-12-04	73
429	221	2020-11-27	2020-12-04	74
329	173	2020-11-27	2020-12-04	75
4	4	2020-11-27	2020-12-04	76
312	167	2020-11-27	2020-12-04	77
357	32	2020-11-27	2020-12-04	78
430	231	2020-11-27	2020-12-04	79
316	130	2020-11-27	2020-12-04	80
326	159	2020-11-27	2020-12-04	81
313	168	2020-11-27	2020-12-04	82
655	232	2020-11-27	2020-12-04	83
321	16	2020-11-27	2020-12-04	84
62	43	2020-11-27	2020-12-04	85
643	169	2020-11-27	2020-12-04	86
352	126	2020-11-27	2020-12-04	87
216	122	2020-11-27	2020-12-04	88
54	19	2020-11-27	2020-12-04	89
328	21	2020-11-27	2020-12-04	90
390	206	2020-11-27	2020-12-04	91
388	37	2020-11-27	2020-12-04	92
51	28	2020-11-27	2020-12-04	93
644	158	2020-11-27	2020-12-04	94
6	6	2020-11-27	2020-12-04	95
23	19	2020-11-27	2020-12-04	96
359	185	2020-11-27	2020-12-04	97
337	175	2020-11-27	2020-12-04	98
5	5	2020-11-27	2020-12-04	99
656	158	2020-11-27	2020-12-04	100
432	233	2020-11-27	2020-12-04	101
351	80	2020-11-27	2020-12-04	102
330	48	2020-11-27	2020-12-04	103
26	21	2020-11-27	2020-12-04	104
325	130	2020-11-27	2020-12-04	105
69	48	2020-11-27	2020-12-04	106
334	32	2020-11-27	2020-12-04	107
346	48	2020-11-27	2020-12-04	108
8	8	2020-11-27	2020-12-04	109
158	56	2020-11-27	2020-12-04	110
27	22	2020-11-27	2020-12-04	111
333	174	2020-11-27	2020-12-04	112
320	170	2020-11-27	2020-12-04	113
204	63	2020-11-27	2020-12-04	114
37	29	2020-11-27	2020-12-04	115
657	158	2020-11-27	2020-12-04	116
336	92	2020-11-27	2020-12-04	117
345	178	2020-11-27	2020-12-04	118
502	266	2020-11-27	2020-12-04	119
82	56	2020-11-27	2020-12-04	120
33	28	2020-11-27	2020-12-04	121
201	52	2020-11-27	2020-12-04	122
150	48	2020-11-27	2020-12-04	123
20	16	2020-11-27	2020-12-04	124
219	124	2020-11-27	2020-12-04	125
658	158	2020-11-27	2020-12-04	126
341	25	2020-11-27	2020-12-04	127
659	158	2020-11-27	2020-12-04	128
342	171	2020-11-27	2020-12-04	129
12	11	2020-11-27	2020-12-04	130
343	176	2020-11-27	2020-12-04	131
81	52	2020-11-27	2020-12-04	132
440	236	2020-11-27	2020-12-04	133
381	201	2020-11-27	2020-12-04	134
437	235	2020-11-27	2020-12-04	135
327	172	2020-11-27	2020-12-04	136
335	89	2020-11-27	2020-12-04	137
11	4	2020-11-27	2020-12-04	138
331	171	2020-11-27	2020-12-04	139
323	171	2020-11-27	2020-12-04	140
12	21	2020-11-27	2020-12-04	141
47	34	2020-11-27	2020-12-04	142
29	24	2020-11-27	2020-12-04	143
348	179	2020-11-27	2020-12-04	144
34	28	2020-11-27	2020-12-04	145
511	123	2020-11-27	2020-12-04	146
399	92	2020-11-27	2020-12-04	147
493	78	2020-11-27	2020-12-04	148
128	80	2020-11-27	2020-12-04	149
93	62	2020-11-27	2020-12-04	150
442	238	2020-11-27	2020-12-04	151
441	237	2020-11-27	2020-12-04	152
260	48	2020-11-27	2020-12-04	153
107	70	2020-11-27	2020-12-04	154
446	241	2020-11-27	2020-12-04	155
155	92	2020-11-27	2020-12-04	156
10	10	2020-11-27	2020-12-04	157
355	96	2020-11-27	2020-12-04	158
231	130	2020-11-27	2020-12-04	159
19	15	2020-11-27	2020-12-04	160
165	56	2020-11-27	2020-12-04	161
470	253	2020-11-27	2020-12-04	162
647	42	2020-11-27	2020-12-04	163
2	2	2020-11-27	2020-12-04	164
660	169	2020-11-27	2020-12-04	165
68	47	2020-11-27	2020-12-04	166
340	132	2020-11-27	2020-12-04	167
122	20	2020-11-27	2020-12-04	168
48	35	2020-11-27	2020-12-04	169
347	4	2020-11-27	2020-12-04	170
661	313	2020-11-27	2020-12-04	171
662	169	2020-11-27	2020-12-04	172
14	13	2020-11-27	2020-12-04	173
236	134	2020-11-27	2020-12-04	174
138	45	2020-11-27	2020-12-04	175
385	185	2020-11-27	2020-12-04	176
354	182	2020-11-27	2020-12-04	177
31	26	2020-11-27	2020-12-04	178
95	63	2020-11-27	2020-12-04	179
646	312	2020-11-27	2020-12-04	180
443	239	2020-11-27	2020-12-04	181
463	251	2020-11-27	2020-12-04	182
17	1	2020-11-27	2020-12-04	183
448	243	2020-11-27	2020-12-04	184
363	187	2020-11-27	2020-12-04	185
406	216	2020-11-27	2020-12-04	186
229	84	2020-11-27	2020-12-04	187
74	28	2020-11-27	2020-12-04	188
362	92	2020-11-27	2020-12-04	189
109	70	2020-11-27	2020-12-04	190
115	73	2020-11-27	2020-12-04	191
376	197	2020-11-27	2020-12-04	192
372	85	2020-11-27	2020-12-04	193
9	9	2020-11-27	2020-12-04	194
509	270	2020-11-27	2020-12-04	195
663	32	2020-11-27	2020-12-04	196
58	40	2020-11-27	2020-12-04	197
174	102	2020-11-27	2020-12-04	198
408	217	2020-11-27	2020-12-04	199
123	45	2020-11-27	2020-12-04	200
216	122	2020-07-31	2020-08-07	1
200	27	2020-07-31	2020-08-07	2
1	1	2020-07-31	2020-08-07	3
99	21	2020-07-31	2020-08-07	4
664	28	2020-07-31	2020-08-07	5
3	3	2020-07-31	2020-08-07	6
665	234	2020-07-31	2020-08-07	7
62	43	2020-07-31	2020-08-07	8
330	48	2020-07-31	2020-08-07	9
666	234	2020-07-31	2020-08-07	10
310	20	2020-07-31	2020-08-07	11
346	48	2020-07-31	2020-08-07	12
219	124	2020-07-31	2020-08-07	13
7	7	2020-07-31	2020-08-07	14
6	6	2020-07-31	2020-08-07	15
201	52	2020-07-31	2020-08-07	16
68	47	2020-07-31	2020-08-07	17
231	130	2020-07-31	2020-08-07	18
361	186	2020-07-31	2020-08-07	19
355	96	2020-07-31	2020-08-07	20
208	39	2020-07-31	2020-08-07	21
334	32	2020-07-31	2020-08-07	22
217	123	2020-07-31	2020-08-07	23
8	8	2020-07-31	2020-08-07	24
11	4	2020-07-31	2020-08-07	25
667	234	2020-07-31	2020-08-07	26
4	4	2020-07-31	2020-08-07	27
312	167	2020-07-31	2020-08-07	28
21	17	2020-07-31	2020-08-07	29
2	2	2020-07-31	2020-08-07	30
327	172	2020-07-31	2020-08-07	31
362	92	2020-07-31	2020-08-07	32
342	171	2020-07-31	2020-08-07	33
202	116	2020-07-31	2020-08-07	34
297	162	2020-07-31	2020-08-07	35
204	63	2020-07-31	2020-08-07	36
668	314	2020-07-31	2020-08-07	37
36	17	2020-07-31	2020-08-07	38
209	120	2020-07-31	2020-08-07	39
379	172	2020-07-31	2020-08-07	40
236	134	2020-07-31	2020-08-07	41
294	92	2020-07-31	2020-08-07	42
366	190	2020-07-31	2020-08-07	43
5	5	2020-07-31	2020-08-07	44
669	234	2020-07-31	2020-08-07	45
15	14	2020-07-31	2020-08-07	46
137	51	2020-07-31	2020-08-07	47
10	10	2020-07-31	2020-08-07	48
670	234	2020-07-31	2020-08-07	49
671	234	2020-07-31	2020-08-07	50
26	21	2020-07-31	2020-08-07	51
20	16	2020-07-31	2020-08-07	52
23	19	2020-07-31	2020-08-07	53
336	92	2020-07-31	2020-08-07	54
37	29	2020-07-31	2020-08-07	55
158	56	2020-07-31	2020-08-07	56
321	16	2020-07-31	2020-08-07	57
291	159	2020-07-31	2020-08-07	58
13	12	2020-07-31	2020-08-07	59
214	68	2020-07-31	2020-08-07	60
33	28	2020-07-31	2020-08-07	61
12	11	2020-07-31	2020-08-07	62
27	22	2020-07-31	2020-08-07	63
203	117	2020-07-31	2020-08-07	64
672	22	2020-07-31	2020-08-07	65
673	234	2020-07-31	2020-08-07	66
674	234	2020-07-31	2020-08-07	67
17	1	2020-07-31	2020-08-07	68
675	234	2020-07-31	2020-08-07	69
676	48	2020-07-31	2020-08-07	70
54	19	2020-07-31	2020-08-07	71
82	56	2020-07-31	2020-08-07	72
9	9	2020-07-31	2020-08-07	73
223	35	2020-07-31	2020-08-07	74
48	35	2020-07-31	2020-08-07	75
69	48	2020-07-31	2020-08-07	76
210	66	2020-07-31	2020-08-07	77
677	234	2020-07-31	2020-08-07	78
34	28	2020-07-31	2020-08-07	79
397	92	2020-07-31	2020-08-07	80
155	92	2020-07-31	2020-08-07	81
678	315	2020-07-31	2020-08-07	82
679	234	2020-07-31	2020-08-07	83
165	56	2020-07-31	2020-08-07	84
19	15	2020-07-31	2020-08-07	85
680	48	2020-07-31	2020-08-07	86
681	108	2020-07-31	2020-08-07	87
682	90	2020-07-31	2020-08-07	88
237	135	2020-07-31	2020-08-07	89
205	118	2020-07-31	2020-08-07	90
110	32	2020-07-31	2020-08-07	91
29	24	2020-07-31	2020-08-07	92
683	234	2020-07-31	2020-08-07	93
51	28	2020-07-31	2020-08-07	94
296	161	2020-07-31	2020-08-07	95
122	20	2020-07-31	2020-08-07	96
213	33	2020-07-31	2020-08-07	97
221	126	2020-07-31	2020-08-07	98
230	48	2020-07-31	2020-08-07	99
14	13	2020-07-31	2020-08-07	100
684	48	2020-07-31	2020-08-07	101
116	74	2020-07-31	2020-08-07	102
211	121	2020-07-31	2020-08-07	103
18	13	2020-07-31	2020-08-07	104
150	48	2020-07-31	2020-08-07	105
685	89	2020-07-31	2020-08-07	106
252	143	2020-07-31	2020-08-07	107
207	119	2020-07-31	2020-08-07	108
25	20	2020-07-31	2020-08-07	109
686	234	2020-07-31	2020-08-07	110
81	52	2020-07-31	2020-08-07	111
30	25	2020-07-31	2020-08-07	112
227	128	2020-07-31	2020-08-07	113
222	2	2020-07-31	2020-08-07	114
64	45	2020-07-31	2020-08-07	115
47	34	2020-07-31	2020-08-07	116
404	214	2020-07-31	2020-08-07	117
687	316	2020-07-31	2020-08-07	118
93	62	2020-07-31	2020-08-07	119
229	84	2020-07-31	2020-08-07	120
31	26	2020-07-31	2020-08-07	121
303	77	2020-07-31	2020-08-07	122
688	110	2020-07-31	2020-08-07	123
12	21	2020-07-31	2020-08-07	124
218	86	2020-07-31	2020-08-07	125
689	234	2020-07-31	2020-08-07	126
228	129	2020-07-31	2020-08-07	127
53	37	2020-07-31	2020-08-07	128
16	4	2020-07-31	2020-08-07	129
690	317	2020-07-31	2020-08-07	130
691	145	2020-07-31	2020-08-07	131
692	234	2020-07-31	2020-08-07	132
58	40	2020-07-31	2020-08-07	133
24	9	2020-07-31	2020-08-07	134
693	58	2020-07-31	2020-08-07	135
107	70	2020-07-31	2020-08-07	136
240	137	2020-07-31	2020-08-07	137
74	28	2020-07-31	2020-08-07	138
694	302	2020-07-31	2020-08-07	139
695	318	2020-07-31	2020-08-07	140
696	302	2020-07-31	2020-08-07	141
95	63	2020-07-31	2020-08-07	142
94	19	2020-07-31	2020-08-07	143
697	205	2020-07-31	2020-08-07	144
75	45	2020-07-31	2020-08-07	145
115	73	2020-07-31	2020-08-07	146
123	45	2020-07-31	2020-08-07	147
109	70	2020-07-31	2020-08-07	148
698	24	2020-07-31	2020-08-07	149
56	39	2020-07-31	2020-08-07	150
699	33	2020-07-31	2020-08-07	151
700	74	2020-07-31	2020-08-07	152
701	234	2020-07-31	2020-08-07	153
128	80	2020-07-31	2020-08-07	154
138	45	2020-07-31	2020-08-07	155
702	319	2020-07-31	2020-08-07	156
364	188	2020-07-31	2020-08-07	157
363	187	2020-07-31	2020-08-07	158
703	190	2020-07-31	2020-08-07	159
103	68	2020-07-31	2020-08-07	160
151	90	2020-07-31	2020-08-07	161
260	48	2020-07-31	2020-08-07	162
313	168	2020-07-31	2020-08-07	163
243	139	2020-07-31	2020-08-07	164
238	32	2020-07-31	2020-08-07	165
704	48	2020-07-31	2020-08-07	166
118	38	2020-07-31	2020-08-07	167
157	93	2020-07-31	2020-08-07	168
705	302	2020-07-31	2020-08-07	169
706	66	2020-07-31	2020-08-07	170
707	131	2020-07-31	2020-08-07	171
70	49	2020-07-31	2020-08-07	172
708	85	2020-07-31	2020-08-07	173
174	102	2020-07-31	2020-08-07	174
162	70	2020-07-31	2020-08-07	175
182	104	2020-07-31	2020-08-07	176
83	57	2020-07-31	2020-08-07	177
44	20	2020-07-31	2020-08-07	178
262	148	2020-07-31	2020-08-07	179
140	33	2020-07-31	2020-08-07	180
709	320	2020-07-31	2020-08-07	181
166	97	2020-07-31	2020-08-07	182
45	32	2020-07-31	2020-08-07	183
153	51	2020-07-31	2020-08-07	184
710	184	2020-07-31	2020-08-07	185
711	321	2020-07-31	2020-08-07	186
712	322	2020-07-31	2020-08-07	187
101	67	2020-07-31	2020-08-07	188
52	20	2020-07-31	2020-08-07	189
173	101	2020-07-31	2020-08-07	190
57	5	2020-07-31	2020-08-07	191
178	98	2020-07-31	2020-08-07	192
111	71	2020-07-31	2020-08-07	193
91	61	2020-07-31	2020-08-07	194
713	323	2020-07-31	2020-08-07	195
264	73	2020-07-31	2020-08-07	196
714	168	2020-07-31	2020-08-07	197
259	147	2020-07-31	2020-08-07	198
154	28	2020-07-31	2020-08-07	199
117	17	2020-07-31	2020-08-07	200
285	42	2020-10-09	2020-10-16	1
286	157	2020-10-09	2020-10-16	2
292	160	2020-10-09	2020-10-16	3
291	159	2020-10-09	2020-10-16	4
289	158	2020-10-09	2020-10-16	5
288	92	2020-10-09	2020-10-16	6
1	1	2020-10-09	2020-10-16	7
294	92	2020-10-09	2020-10-16	8
99	21	2020-10-09	2020-10-16	9
293	10	2020-10-09	2020-10-16	10
297	162	2020-10-09	2020-10-16	11
301	2	2020-10-09	2020-10-16	12
200	27	2020-10-09	2020-10-16	13
296	161	2020-10-09	2020-10-16	14
298	123	2020-10-09	2020-10-16	15
216	122	2020-10-09	2020-10-16	16
305	29	2020-10-09	2020-10-16	17
331	171	2020-10-09	2020-10-16	18
303	77	2020-10-09	2020-10-16	19
320	170	2020-10-09	2020-10-16	20
323	171	2020-10-09	2020-10-16	21
3	3	2020-10-09	2020-10-16	22
312	167	2020-10-09	2020-10-16	23
299	163	2020-10-09	2020-10-16	24
310	20	2020-10-09	2020-10-16	25
308	74	2020-10-09	2020-10-16	26
306	164	2020-10-09	2020-10-16	27
21	17	2020-10-09	2020-10-16	28
62	43	2020-10-09	2020-10-16	29
327	172	2020-10-09	2020-10-16	30
321	16	2020-10-09	2020-10-16	31
313	168	2020-10-09	2020-10-16	32
7	7	2020-10-09	2020-10-16	33
336	92	2020-10-09	2020-10-16	34
36	17	2020-10-09	2020-10-16	35
307	165	2020-10-09	2020-10-16	36
325	130	2020-10-09	2020-10-16	37
330	48	2020-10-09	2020-10-16	38
219	124	2020-10-09	2020-10-16	39
334	32	2020-10-09	2020-10-16	40
342	171	2020-10-09	2020-10-16	41
319	169	2020-10-09	2020-10-16	42
715	171	2020-10-09	2020-10-16	43
6	6	2020-10-09	2020-10-16	44
316	130	2020-10-09	2020-10-16	45
373	194	2020-10-09	2020-10-16	46
4	4	2020-10-09	2020-10-16	47
346	48	2020-10-09	2020-10-16	48
231	130	2020-10-09	2020-10-16	49
343	176	2020-10-09	2020-10-16	50
317	139	2020-10-09	2020-10-16	51
360	171	2020-10-09	2020-10-16	52
8	8	2020-10-09	2020-10-16	53
348	179	2020-10-09	2020-10-16	54
236	134	2020-10-09	2020-10-16	55
201	52	2020-10-09	2020-10-16	56
394	194	2020-10-09	2020-10-16	57
23	19	2020-10-09	2020-10-16	58
407	56	2020-10-09	2020-10-16	59
204	63	2020-10-09	2020-10-16	60
333	174	2020-10-09	2020-10-16	61
158	56	2020-10-09	2020-10-16	62
37	29	2020-10-09	2020-10-16	63
354	182	2020-10-09	2020-10-16	64
355	96	2020-10-09	2020-10-16	65
326	159	2020-10-09	2020-10-16	66
27	22	2020-10-09	2020-10-16	67
5	5	2020-10-09	2020-10-16	68
26	21	2020-10-09	2020-10-16	69
361	186	2020-10-09	2020-10-16	70
137	51	2020-10-09	2020-10-16	71
69	48	2020-10-09	2020-10-16	72
337	175	2020-10-09	2020-10-16	73
315	4	2020-10-09	2020-10-16	74
68	47	2020-10-09	2020-10-16	75
389	122	2020-10-09	2020-10-16	76
362	92	2020-10-09	2020-10-16	77
379	172	2020-10-09	2020-10-16	78
54	19	2020-10-09	2020-10-16	79
150	48	2020-10-09	2020-10-16	80
12	11	2020-10-09	2020-10-16	81
82	56	2020-10-09	2020-10-16	82
10	10	2020-10-09	2020-10-16	83
2	2	2020-10-09	2020-10-16	84
366	190	2020-10-09	2020-10-16	85
335	89	2020-10-09	2020-10-16	86
81	52	2020-10-09	2020-10-16	87
368	192	2020-10-09	2020-10-16	88
11	4	2020-10-09	2020-10-16	89
402	212	2020-10-09	2020-10-16	90
51	28	2020-10-09	2020-10-16	91
33	28	2020-10-09	2020-10-16	92
20	16	2020-10-09	2020-10-16	93
370	48	2020-10-09	2020-10-16	94
380	200	2020-10-09	2020-10-16	95
165	56	2020-10-09	2020-10-16	96
363	187	2020-10-09	2020-10-16	97
374	195	2020-10-09	2020-10-16	98
329	173	2020-10-09	2020-10-16	99
47	34	2020-10-09	2020-10-16	100
202	116	2020-10-09	2020-10-16	101
398	209	2020-10-09	2020-10-16	102
356	183	2020-10-09	2020-10-16	103
391	207	2020-10-09	2020-10-16	104
375	196	2020-10-09	2020-10-16	105
155	92	2020-10-09	2020-10-16	106
93	62	2020-10-09	2020-10-16	107
29	24	2020-10-09	2020-10-16	108
716	324	2020-10-09	2020-10-16	109
12	21	2020-10-09	2020-10-16	110
122	20	2020-10-09	2020-10-16	111
717	171	2020-10-09	2020-10-16	112
19	15	2020-10-09	2020-10-16	113
48	35	2020-10-09	2020-10-16	114
718	171	2020-10-09	2020-10-16	115
116	74	2020-10-09	2020-10-16	116
128	80	2020-10-09	2020-10-16	117
668	314	2020-10-09	2020-10-16	118
359	185	2020-10-09	2020-10-16	119
719	325	2020-10-09	2020-10-16	120
214	68	2020-10-09	2020-10-16	121
372	85	2020-10-09	2020-10-16	122
17	1	2020-10-09	2020-10-16	123
399	92	2020-10-09	2020-10-16	124
364	188	2020-10-09	2020-10-16	125
217	123	2020-10-09	2020-10-16	126
107	70	2020-10-09	2020-10-16	127
397	92	2020-10-09	2020-10-16	128
311	166	2020-10-09	2020-10-16	129
393	130	2020-10-09	2020-10-16	130
34	28	2020-10-09	2020-10-16	131
382	166	2020-10-09	2020-10-16	132
369	193	2020-10-09	2020-10-16	133
138	45	2020-10-09	2020-10-16	134
720	326	2020-10-09	2020-10-16	135
64	45	2020-10-09	2020-10-16	136
403	213	2020-10-09	2020-10-16	137
208	39	2020-10-09	2020-10-16	138
260	48	2020-10-09	2020-10-16	139
123	45	2020-10-09	2020-10-16	140
9	9	2020-10-09	2020-10-16	141
25	20	2020-10-09	2020-10-16	142
95	63	2020-10-09	2020-10-16	143
678	315	2020-10-09	2020-10-16	144
115	73	2020-10-09	2020-10-16	145
210	66	2020-10-09	2020-10-16	146
174	102	2020-10-09	2020-10-16	147
13	12	2020-10-09	2020-10-16	148
109	70	2020-10-09	2020-10-16	149
173	101	2020-10-09	2020-10-16	150
721	171	2020-10-09	2020-10-16	151
203	117	2020-10-09	2020-10-16	152
396	159	2020-10-09	2020-10-16	153
94	19	2020-10-09	2020-10-16	154
218	86	2020-10-09	2020-10-16	155
58	40	2020-10-09	2020-10-16	156
31	26	2020-10-09	2020-10-16	157
722	68	2020-10-09	2020-10-16	158
376	197	2020-10-09	2020-10-16	159
211	121	2020-10-09	2020-10-16	160
75	45	2020-10-09	2020-10-16	161
381	201	2020-10-09	2020-10-16	162
404	214	2020-10-09	2020-10-16	163
209	120	2020-10-09	2020-10-16	164
118	38	2020-10-09	2020-10-16	165
15	14	2020-10-09	2020-10-16	166
18	13	2020-10-09	2020-10-16	167
14	13	2020-10-09	2020-10-16	168
74	28	2020-10-09	2020-10-16	169
240	137	2020-10-09	2020-10-16	170
401	211	2020-10-09	2020-10-16	171
385	185	2020-10-09	2020-10-16	172
723	194	2020-10-09	2020-10-16	173
103	68	2020-10-09	2020-10-16	174
724	327	2020-10-09	2020-10-16	175
725	328	2020-10-09	2020-10-16	176
664	28	2020-10-09	2020-10-16	177
700	74	2020-10-09	2020-10-16	178
110	32	2020-10-09	2020-10-16	179
166	97	2020-10-09	2020-10-16	180
726	45	2020-10-09	2020-10-16	181
727	45	2020-10-09	2020-10-16	182
728	329	2020-10-09	2020-10-16	183
101	67	2020-10-09	2020-10-16	184
660	169	2020-10-09	2020-10-16	185
729	158	2020-10-09	2020-10-16	186
712	322	2020-10-09	2020-10-16	187
408	217	2020-10-09	2020-10-16	188
70	49	2020-10-09	2020-10-16	189
53	37	2020-10-09	2020-10-16	190
730	179	2020-10-09	2020-10-16	191
691	145	2020-10-09	2020-10-16	192
682	90	2020-10-09	2020-10-16	193
731	330	2020-10-09	2020-10-16	194
229	84	2020-10-09	2020-10-16	195
182	104	2020-10-09	2020-10-16	196
213	33	2020-10-09	2020-10-16	197
559	134	2020-10-09	2020-10-16	198
279	153	2020-10-09	2020-10-16	199
91	61	2020-10-09	2020-10-16	200
284	13	2020-11-13	2020-11-20	1
435	28	2020-11-13	2020-11-20	2
283	63	2020-11-13	2020-11-20	3
285	42	2020-11-13	2020-11-20	4
286	157	2020-11-13	2020-11-20	5
290	10	2020-11-13	2020-11-20	6
289	158	2020-11-13	2020-11-20	7
288	92	2020-11-13	2020-11-20	8
1	1	2020-11-13	2020-11-20	9
292	160	2020-11-13	2020-11-20	10
291	159	2020-11-13	2020-11-20	11
99	21	2020-11-13	2020-11-20	12
294	92	2020-11-13	2020-11-20	13
293	10	2020-11-13	2020-11-20	14
296	161	2020-11-13	2020-11-20	15
297	162	2020-11-13	2020-11-20	16
287	63	2020-11-13	2020-11-20	17
350	16	2020-11-13	2020-11-20	18
484	159	2020-11-13	2020-11-20	19
302	63	2020-11-13	2020-11-20	20
298	123	2020-11-13	2020-11-20	21
315	4	2020-11-13	2020-11-20	22
299	163	2020-11-13	2020-11-20	23
200	27	2020-11-13	2020-11-20	24
311	166	2020-11-13	2020-11-20	25
303	77	2020-11-13	2020-11-20	26
21	17	2020-11-13	2020-11-20	27
307	165	2020-11-13	2020-11-20	28
301	2	2020-11-13	2020-11-20	29
306	164	2020-11-13	2020-11-20	30
308	74	2020-11-13	2020-11-20	31
305	29	2020-11-13	2020-11-20	32
313	168	2020-11-13	2020-11-20	33
312	167	2020-11-13	2020-11-20	34
317	139	2020-11-13	2020-11-20	35
310	20	2020-11-13	2020-11-20	36
329	173	2020-11-13	2020-11-20	37
316	130	2020-11-13	2020-11-20	38
216	122	2020-11-13	2020-11-20	39
326	159	2020-11-13	2020-11-20	40
36	17	2020-11-13	2020-11-20	41
349	180	2020-11-13	2020-11-20	42
7	7	2020-11-13	2020-11-20	43
3	3	2020-11-13	2020-11-20	44
319	169	2020-11-13	2020-11-20	45
400	210	2020-11-13	2020-11-20	46
328	21	2020-11-13	2020-11-20	47
62	43	2020-11-13	2020-11-20	48
337	175	2020-11-13	2020-11-20	49
321	16	2020-11-13	2020-11-20	50
352	126	2020-11-13	2020-11-20	51
438	75	2020-11-13	2020-11-20	52
330	48	2020-11-13	2020-11-20	53
325	130	2020-11-13	2020-11-20	54
333	174	2020-11-13	2020-11-20	55
367	191	2020-11-13	2020-11-20	56
320	170	2020-11-13	2020-11-20	57
502	266	2020-11-13	2020-11-20	58
323	171	2020-11-13	2020-11-20	59
51	28	2020-11-13	2020-11-20	60
4	4	2020-11-13	2020-11-20	61
357	32	2020-11-13	2020-11-20	62
334	32	2020-11-13	2020-11-20	63
351	80	2020-11-13	2020-11-20	64
54	19	2020-11-13	2020-11-20	65
327	172	2020-11-13	2020-11-20	66
345	178	2020-11-13	2020-11-20	67
6	6	2020-11-13	2020-11-20	68
341	25	2020-11-13	2020-11-20	69
336	92	2020-11-13	2020-11-20	70
415	219	2020-11-13	2020-11-20	71
23	19	2020-11-13	2020-11-20	72
388	37	2020-11-13	2020-11-20	73
331	171	2020-11-13	2020-11-20	74
346	48	2020-11-13	2020-11-20	75
511	123	2020-11-13	2020-11-20	76
204	63	2020-11-13	2020-11-20	77
27	22	2020-11-13	2020-11-20	78
69	48	2020-11-13	2020-11-20	79
342	171	2020-11-13	2020-11-20	80
26	21	2020-11-13	2020-11-20	81
359	185	2020-11-13	2020-11-20	82
390	206	2020-11-13	2020-11-20	83
343	176	2020-11-13	2020-11-20	84
158	56	2020-11-13	2020-11-20	85
8	8	2020-11-13	2020-11-20	86
335	89	2020-11-13	2020-11-20	87
33	28	2020-11-13	2020-11-20	88
219	124	2020-11-13	2020-11-20	89
647	42	2020-11-13	2020-11-20	90
37	29	2020-11-13	2020-11-20	91
5	5	2020-11-13	2020-11-20	92
295	63	2020-11-13	2020-11-20	93
348	179	2020-11-13	2020-11-20	94
732	24	2020-11-13	2020-11-20	95
340	132	2020-11-13	2020-11-20	96
201	52	2020-11-13	2020-11-20	97
347	4	2020-11-13	2020-11-20	98
150	48	2020-11-13	2020-11-20	99
236	134	2020-11-13	2020-11-20	100
416	63	2020-11-13	2020-11-20	101
82	56	2020-11-13	2020-11-20	102
81	52	2020-11-13	2020-11-20	103
231	130	2020-11-13	2020-11-20	104
47	34	2020-11-13	2020-11-20	105
354	182	2020-11-13	2020-11-20	106
12	11	2020-11-13	2020-11-20	107
12	21	2020-11-13	2020-11-20	108
34	28	2020-11-13	2020-11-20	109
20	16	2020-11-13	2020-11-20	110
128	80	2020-11-13	2020-11-20	111
356	183	2020-11-13	2020-11-20	112
93	62	2020-11-13	2020-11-20	113
355	96	2020-11-13	2020-11-20	114
11	4	2020-11-13	2020-11-20	115
663	32	2020-11-13	2020-11-20	116
418	221	2020-11-13	2020-11-20	117
68	47	2020-11-13	2020-11-20	118
107	70	2020-11-13	2020-11-20	119
417	220	2020-11-13	2020-11-20	120
29	24	2020-11-13	2020-11-20	121
122	20	2020-11-13	2020-11-20	122
155	92	2020-11-13	2020-11-20	123
165	56	2020-11-13	2020-11-20	124
363	187	2020-11-13	2020-11-20	125
419	222	2020-11-13	2020-11-20	126
260	48	2020-11-13	2020-11-20	127
2	2	2020-11-13	2020-11-20	128
364	188	2020-11-13	2020-11-20	129
381	201	2020-11-13	2020-11-20	130
19	15	2020-11-13	2020-11-20	131
48	35	2020-11-13	2020-11-20	132
10	10	2020-11-13	2020-11-20	133
95	63	2020-11-13	2020-11-20	134
385	185	2020-11-13	2020-11-20	135
372	85	2020-11-13	2020-11-20	136
138	45	2020-11-13	2020-11-20	137
74	28	2020-11-13	2020-11-20	138
361	186	2020-11-13	2020-11-20	139
362	92	2020-11-13	2020-11-20	140
394	194	2020-11-13	2020-11-20	141
368	192	2020-11-13	2020-11-20	142
344	177	2020-11-13	2020-11-20	143
137	51	2020-11-13	2020-11-20	144
369	193	2020-11-13	2020-11-20	145
371	32	2020-11-13	2020-11-20	146
376	197	2020-11-13	2020-11-20	147
174	102	2020-11-13	2020-11-20	148
420	223	2020-11-13	2020-11-20	149
733	126	2020-11-13	2020-11-20	150
109	70	2020-11-13	2020-11-20	151
360	171	2020-11-13	2020-11-20	152
734	24	2020-11-13	2020-11-20	153
173	101	2020-11-13	2020-11-20	154
366	190	2020-11-13	2020-11-20	155
365	189	2020-11-13	2020-11-20	156
406	216	2020-11-13	2020-11-20	157
123	45	2020-11-13	2020-11-20	158
214	68	2020-11-13	2020-11-20	159
300	63	2020-11-13	2020-11-20	160
358	184	2020-11-13	2020-11-20	161
370	48	2020-11-13	2020-11-20	162
58	40	2020-11-13	2020-11-20	163
115	73	2020-11-13	2020-11-20	164
374	195	2020-11-13	2020-11-20	165
735	331	2020-11-13	2020-11-20	166
378	199	2020-11-13	2020-11-20	167
736	24	2020-11-13	2020-11-20	168
408	217	2020-11-13	2020-11-20	169
404	214	2020-11-13	2020-11-20	170
64	45	2020-11-13	2020-11-20	171
31	26	2020-11-13	2020-11-20	172
383	202	2020-11-13	2020-11-20	173
379	172	2020-11-13	2020-11-20	174
118	38	2020-11-13	2020-11-20	175
94	19	2020-11-13	2020-11-20	176
202	116	2020-11-13	2020-11-20	177
382	166	2020-11-13	2020-11-20	178
470	253	2020-11-13	2020-11-20	179
304	63	2020-11-13	2020-11-20	180
9	9	2020-11-13	2020-11-20	181
398	209	2020-11-13	2020-11-20	182
737	249	2020-11-13	2020-11-20	183
210	66	2020-11-13	2020-11-20	184
384	203	2020-11-13	2020-11-20	185
70	49	2020-11-13	2020-11-20	186
421	224	2020-11-13	2020-11-20	187
101	67	2020-11-13	2020-11-20	188
386	204	2020-11-13	2020-11-20	189
14	13	2020-11-13	2020-11-20	190
103	68	2020-11-13	2020-11-20	191
13	12	2020-11-13	2020-11-20	192
353	181	2020-11-13	2020-11-20	193
17	1	2020-11-13	2020-11-20	194
380	200	2020-11-13	2020-11-20	195
279	153	2020-11-13	2020-11-20	196
375	196	2020-11-13	2020-11-20	197
399	92	2020-11-13	2020-11-20	198
664	28	2020-11-13	2020-11-20	199
405	215	2020-11-13	2020-11-20	200
200	27	2020-06-26	2020-07-03	1
1	1	2020-06-26	2020-07-03	2
216	122	2020-06-26	2020-07-03	3
342	171	2020-06-26	2020-07-03	4
3	3	2020-06-26	2020-07-03	5
99	21	2020-06-26	2020-07-03	6
6	6	2020-06-26	2020-07-03	7
201	52	2020-06-26	2020-07-03	8
2	2	2020-06-26	2020-07-03	9
7	7	2020-06-26	2020-07-03	10
202	116	2020-06-26	2020-07-03	11
4	4	2020-06-26	2020-07-03	12
62	43	2020-06-26	2020-07-03	13
68	47	2020-06-26	2020-07-03	14
11	4	2020-06-26	2020-07-03	15
8	8	2020-06-26	2020-07-03	16
15	14	2020-06-26	2020-07-03	17
204	63	2020-06-26	2020-07-03	18
5	5	2020-06-26	2020-07-03	19
208	39	2020-06-26	2020-07-03	20
203	117	2020-06-26	2020-07-03	21
21	17	2020-06-26	2020-07-03	22
219	124	2020-06-26	2020-07-03	23
10	10	2020-06-26	2020-07-03	24
355	96	2020-06-26	2020-07-03	25
205	118	2020-06-26	2020-07-03	26
9	9	2020-06-26	2020-07-03	27
13	12	2020-06-26	2020-07-03	28
217	123	2020-06-26	2020-07-03	29
36	17	2020-06-26	2020-07-03	30
12	11	2020-06-26	2020-07-03	31
207	119	2020-06-26	2020-07-03	32
209	120	2020-06-26	2020-07-03	33
17	1	2020-06-26	2020-07-03	34
23	19	2020-06-26	2020-07-03	35
20	16	2020-06-26	2020-07-03	36
211	121	2020-06-26	2020-07-03	37
210	66	2020-06-26	2020-07-03	38
158	56	2020-06-26	2020-07-03	39
214	68	2020-06-26	2020-07-03	40
137	51	2020-06-26	2020-07-03	41
213	33	2020-06-26	2020-07-03	42
26	21	2020-06-26	2020-07-03	43
37	29	2020-06-26	2020-07-03	44
18	13	2020-06-26	2020-07-03	45
27	22	2020-06-26	2020-07-03	46
82	56	2020-06-26	2020-07-03	47
231	130	2020-06-26	2020-07-03	48
14	13	2020-06-26	2020-07-03	49
30	25	2020-06-26	2020-07-03	50
212	52	2020-06-26	2020-07-03	51
165	56	2020-06-26	2020-07-03	52
29	24	2020-06-26	2020-07-03	53
33	28	2020-06-26	2020-07-03	54
54	19	2020-06-26	2020-07-03	55
19	15	2020-06-26	2020-07-03	56
218	86	2020-06-26	2020-07-03	57
222	2	2020-06-26	2020-07-03	58
110	32	2020-06-26	2020-07-03	59
25	20	2020-06-26	2020-07-03	60
48	35	2020-06-26	2020-07-03	61
122	20	2020-06-26	2020-07-03	62
151	90	2020-06-26	2020-07-03	63
69	48	2020-06-26	2020-07-03	64
206	118	2020-06-26	2020-07-03	65
223	35	2020-06-26	2020-07-03	66
47	34	2020-06-26	2020-07-03	67
688	110	2020-06-26	2020-07-03	68
24	9	2020-06-26	2020-07-03	69
221	126	2020-06-26	2020-07-03	70
252	143	2020-06-26	2020-07-03	71
116	74	2020-06-26	2020-07-03	72
34	28	2020-06-26	2020-07-03	73
51	28	2020-06-26	2020-07-03	74
215	110	2020-06-26	2020-07-03	75
227	128	2020-06-26	2020-07-03	76
228	129	2020-06-26	2020-07-03	77
31	26	2020-06-26	2020-07-03	78
64	45	2020-06-26	2020-07-03	79
57	5	2020-06-26	2020-07-03	80
237	135	2020-06-26	2020-07-03	81
81	52	2020-06-26	2020-07-03	82
16	4	2020-06-26	2020-07-03	83
58	40	2020-06-26	2020-07-03	84
236	134	2020-06-26	2020-07-03	85
53	37	2020-06-26	2020-07-03	86
229	84	2020-06-26	2020-07-03	87
93	62	2020-06-26	2020-07-03	88
678	315	2020-06-26	2020-07-03	89
56	39	2020-06-26	2020-07-03	90
45	32	2020-06-26	2020-07-03	91
220	125	2020-06-26	2020-07-03	92
22	18	2020-06-26	2020-07-03	93
44	20	2020-06-26	2020-07-03	94
312	167	2020-06-26	2020-07-03	95
107	70	2020-06-26	2020-07-03	96
40	30	2020-06-26	2020-07-03	97
94	19	2020-06-26	2020-07-03	98
230	48	2020-06-26	2020-07-03	99
95	63	2020-06-26	2020-07-03	100
109	70	2020-06-26	2020-07-03	101
75	45	2020-06-26	2020-07-03	102
150	48	2020-06-26	2020-07-03	103
366	190	2020-06-26	2020-07-03	104
106	66	2020-06-26	2020-07-03	105
235	133	2020-06-26	2020-07-03	106
224	127	2020-06-26	2020-07-03	107
35	13	2020-06-26	2020-07-03	108
123	45	2020-06-26	2020-07-03	109
83	57	2020-06-26	2020-07-03	110
706	66	2020-06-26	2020-07-03	111
74	28	2020-06-26	2020-07-03	112
115	73	2020-06-26	2020-07-03	113
52	20	2020-06-26	2020-07-03	114
103	68	2020-06-26	2020-07-03	115
12	21	2020-06-26	2020-07-03	116
243	139	2020-06-26	2020-07-03	117
238	32	2020-06-26	2020-07-03	118
702	319	2020-06-26	2020-07-03	119
738	119	2020-06-26	2020-07-03	120
245	85	2020-06-26	2020-07-03	121
739	158	2020-06-26	2020-07-03	122
740	332	2020-06-26	2020-07-03	123
128	80	2020-06-26	2020-07-03	124
138	45	2020-06-26	2020-07-03	125
111	71	2020-06-26	2020-07-03	126
70	49	2020-06-26	2020-07-03	127
39	13	2020-06-26	2020-07-03	128
104	69	2020-06-26	2020-07-03	129
240	137	2020-06-26	2020-07-03	130
155	92	2020-06-26	2020-07-03	131
741	11	2020-06-26	2020-07-03	132
742	333	2020-06-26	2020-07-03	133
50	5	2020-06-26	2020-07-03	134
43	10	2020-06-26	2020-07-03	135
63	44	2020-06-26	2020-07-03	136
118	38	2020-06-26	2020-07-03	137
690	317	2020-06-26	2020-07-03	138
119	75	2020-06-26	2020-07-03	139
108	48	2020-06-26	2020-07-03	140
71	9	2020-06-26	2020-07-03	141
157	93	2020-06-26	2020-07-03	142
162	70	2020-06-26	2020-07-03	143
73	51	2020-06-26	2020-07-03	144
404	214	2020-06-26	2020-07-03	145
247	19	2020-06-26	2020-07-03	146
242	138	2020-06-26	2020-07-03	147
38	13	2020-06-26	2020-07-03	148
166	97	2020-06-26	2020-07-03	149
87	59	2020-06-26	2020-07-03	150
174	102	2020-06-26	2020-07-03	151
178	98	2020-06-26	2020-07-03	152
102	27	2020-06-26	2020-07-03	153
117	17	2020-06-26	2020-07-03	154
91	61	2020-06-26	2020-07-03	155
145	19	2020-06-26	2020-07-03	156
153	51	2020-06-26	2020-07-03	157
248	110	2020-06-26	2020-07-03	158
79	55	2020-06-26	2020-07-03	159
121	20	2020-06-26	2020-07-03	160
182	104	2020-06-26	2020-07-03	161
260	48	2020-06-26	2020-07-03	162
96	50	2020-06-26	2020-07-03	163
234	132	2020-06-26	2020-07-03	164
140	33	2020-06-26	2020-07-03	165
743	18	2020-06-26	2020-07-03	166
101	67	2020-06-26	2020-07-03	167
708	85	2020-06-26	2020-07-03	168
744	334	2020-06-26	2020-07-03	169
139	60	2020-06-26	2020-07-03	170
682	90	2020-06-26	2020-07-03	171
49	36	2020-06-26	2020-07-03	172
141	84	2020-06-26	2020-07-03	173
184	19	2020-06-26	2020-07-03	174
254	32	2020-06-26	2020-07-03	175
173	101	2020-06-26	2020-07-03	176
745	335	2020-06-26	2020-07-03	177
261	104	2020-06-26	2020-07-03	178
262	148	2020-06-26	2020-07-03	179
187	63	2020-06-26	2020-07-03	180
181	106	2020-06-26	2020-07-03	181
188	107	2020-06-26	2020-07-03	182
146	87	2020-06-26	2020-07-03	183
622	62	2020-06-26	2020-07-03	184
131	2	2020-06-26	2020-07-03	185
263	149	2020-06-26	2020-07-03	186
264	73	2020-06-26	2020-07-03	187
225	9	2020-06-26	2020-07-03	188
746	336	2020-06-26	2020-07-03	189
77	53	2020-06-26	2020-07-03	190
259	147	2020-06-26	2020-07-03	191
144	86	2020-06-26	2020-07-03	192
619	304	2020-06-26	2020-07-03	193
253	144	2020-06-26	2020-07-03	194
712	322	2020-06-26	2020-07-03	195
747	171	2020-06-26	2020-07-03	196
175	21	2020-06-26	2020-07-03	197
97	64	2020-06-26	2020-07-03	198
185	22	2020-06-26	2020-07-03	199
250	13	2020-06-26	2020-07-03	200
284	13	2020-12-25	2021-01-01	1
285	42	2020-12-25	2021-01-01	2
350	16	2020-12-25	2021-01-01	3
400	210	2020-12-25	2021-01-01	4
1	1	2020-12-25	2021-01-01	5
283	63	2020-12-25	2021-01-01	6
415	219	2020-12-25	2021-01-01	7
287	63	2020-12-25	2021-01-01	8
289	158	2020-12-25	2021-01-01	9
433	13	2020-12-25	2021-01-01	10
286	157	2020-12-25	2021-01-01	11
427	229	2020-12-25	2021-01-01	12
416	63	2020-12-25	2021-01-01	13
417	220	2020-12-25	2021-01-01	14
419	222	2020-12-25	2021-01-01	15
435	28	2020-12-25	2021-01-01	16
367	191	2020-12-25	2021-01-01	17
436	126	2020-12-25	2021-01-01	18
418	221	2020-12-25	2021-01-01	19
288	92	2020-12-25	2021-01-01	20
483	45	2020-12-25	2021-01-01	21
420	223	2020-12-25	2021-01-01	22
438	75	2020-12-25	2021-01-01	23
291	159	2020-12-25	2021-01-01	24
439	29	2020-12-25	2021-01-01	25
315	4	2020-12-25	2021-01-01	26
99	21	2020-12-25	2021-01-01	27
434	234	2020-12-25	2021-01-01	28
292	160	2020-12-25	2021-01-01	29
297	162	2020-12-25	2021-01-01	30
296	161	2020-12-25	2021-01-01	31
200	27	2020-12-25	2021-01-01	32
446	241	2020-12-25	2021-01-01	33
7	7	2020-12-25	2021-01-01	34
290	10	2020-12-25	2021-01-01	35
357	32	2020-12-25	2021-01-01	36
3	3	2020-12-25	2021-01-01	37
421	224	2020-12-25	2021-01-01	38
311	166	2020-12-25	2021-01-01	39
444	169	2020-12-25	2021-01-01	40
423	226	2020-12-25	2021-01-01	41
21	17	2020-12-25	2021-01-01	42
294	92	2020-12-25	2021-01-01	43
349	180	2020-12-25	2021-01-01	44
390	206	2020-12-25	2021-01-01	45
422	225	2020-12-25	2021-01-01	46
428	230	2020-12-25	2021-01-01	47
4	4	2020-12-25	2021-01-01	48
298	123	2020-12-25	2021-01-01	49
424	10	2020-12-25	2021-01-01	50
425	227	2020-12-25	2021-01-01	51
426	228	2020-12-25	2021-01-01	52
455	74	2020-12-25	2021-01-01	53
308	74	2020-12-25	2021-01-01	54
306	164	2020-12-25	2021-01-01	55
450	13	2020-12-25	2021-01-01	56
293	10	2020-12-25	2021-01-01	57
431	232	2020-12-25	2021-01-01	58
429	221	2020-12-25	2021-01-01	59
303	77	2020-12-25	2021-01-01	60
432	233	2020-12-25	2021-01-01	61
216	122	2020-12-25	2021-01-01	62
36	17	2020-12-25	2021-01-01	63
359	185	2020-12-25	2021-01-01	64
486	44	2020-12-25	2021-01-01	65
470	253	2020-12-25	2021-01-01	66
329	173	2020-12-25	2021-01-01	67
388	37	2020-12-25	2021-01-01	68
316	130	2020-12-25	2021-01-01	69
301	2	2020-12-25	2021-01-01	70
459	158	2020-12-25	2021-01-01	71
430	231	2020-12-25	2021-01-01	72
62	43	2020-12-25	2021-01-01	73
312	167	2020-12-25	2021-01-01	74
307	165	2020-12-25	2021-01-01	75
5	5	2020-12-25	2021-01-01	76
305	29	2020-12-25	2021-01-01	77
437	235	2020-12-25	2021-01-01	78
23	19	2020-12-25	2021-01-01	79
299	163	2020-12-25	2021-01-01	80
313	168	2020-12-25	2021-01-01	81
6	6	2020-12-25	2021-01-01	82
317	139	2020-12-25	2021-01-01	83
310	20	2020-12-25	2021-01-01	84
321	16	2020-12-25	2021-01-01	85
302	63	2020-12-25	2021-01-01	86
8	8	2020-12-25	2021-01-01	87
480	39	2020-12-25	2021-01-01	88
326	159	2020-12-25	2021-01-01	89
54	19	2020-12-25	2021-01-01	90
472	254	2020-12-25	2021-01-01	91
466	18	2020-12-25	2021-01-01	92
352	126	2020-12-25	2021-01-01	93
20	16	2020-12-25	2021-01-01	94
69	48	2020-12-25	2021-01-01	95
27	22	2020-12-25	2021-01-01	96
51	28	2020-12-25	2021-01-01	97
748	337	2020-12-25	2021-01-01	98
37	29	2020-12-25	2021-01-01	99
334	32	2020-12-25	2021-01-01	100
33	28	2020-12-25	2021-01-01	101
328	21	2020-12-25	2021-01-01	102
346	48	2020-12-25	2021-01-01	103
26	21	2020-12-25	2021-01-01	104
201	52	2020-12-25	2021-01-01	105
320	170	2020-12-25	2021-01-01	106
158	56	2020-12-25	2021-01-01	107
749	109	2020-12-25	2021-01-01	108
351	80	2020-12-25	2021-01-01	109
441	237	2020-12-25	2021-01-01	110
474	48	2020-12-25	2021-01-01	111
325	130	2020-12-25	2021-01-01	112
12	11	2020-12-25	2021-01-01	113
750	152	2020-12-25	2021-01-01	114
330	48	2020-12-25	2021-01-01	115
381	201	2020-12-25	2021-01-01	116
376	197	2020-12-25	2021-01-01	117
493	78	2020-12-25	2021-01-01	118
484	159	2020-12-25	2021-01-01	119
319	169	2020-12-25	2021-01-01	120
150	48	2020-12-25	2021-01-01	121
458	234	2020-12-25	2021-01-01	122
442	238	2020-12-25	2021-01-01	123
204	63	2020-12-25	2021-01-01	124
337	175	2020-12-25	2021-01-01	125
11	4	2020-12-25	2021-01-01	126
406	216	2020-12-25	2021-01-01	127
29	24	2020-12-25	2021-01-01	128
82	56	2020-12-25	2021-01-01	129
333	174	2020-12-25	2021-01-01	130
399	92	2020-12-25	2021-01-01	131
81	52	2020-12-25	2021-01-01	132
509	270	2020-12-25	2021-01-01	133
443	239	2020-12-25	2021-01-01	134
336	92	2020-12-25	2021-01-01	135
48	35	2020-12-25	2021-01-01	136
219	124	2020-12-25	2021-01-01	137
93	62	2020-12-25	2021-01-01	138
9	9	2020-12-25	2021-01-01	139
31	26	2020-12-25	2021-01-01	140
2	2	2020-12-25	2021-01-01	141
115	73	2020-12-25	2021-01-01	142
385	185	2020-12-25	2021-01-01	143
343	176	2020-12-25	2021-01-01	144
342	171	2020-12-25	2021-01-01	145
107	70	2020-12-25	2021-01-01	146
95	63	2020-12-25	2021-01-01	147
260	48	2020-12-25	2021-01-01	148
440	236	2020-12-25	2021-01-01	149
502	266	2020-12-25	2021-01-01	150
449	244	2020-12-25	2021-01-01	151
155	92	2020-12-25	2021-01-01	152
751	338	2020-12-25	2021-01-01	153
47	34	2020-12-25	2021-01-01	154
10	10	2020-12-25	2021-01-01	155
19	15	2020-12-25	2021-01-01	156
68	47	2020-12-25	2021-01-01	157
327	172	2020-12-25	2021-01-01	158
348	179	2020-12-25	2021-01-01	159
123	45	2020-12-25	2021-01-01	160
138	45	2020-12-25	2021-01-01	161
345	178	2020-12-25	2021-01-01	162
128	80	2020-12-25	2021-01-01	163
451	245	2020-12-25	2021-01-01	164
447	242	2020-12-25	2021-01-01	165
512	25	2020-12-25	2021-01-01	166
752	168	2020-12-25	2021-01-01	167
753	339	2020-12-25	2021-01-01	168
445	240	2020-12-25	2021-01-01	169
341	25	2020-12-25	2021-01-01	170
465	234	2020-12-25	2021-01-01	171
165	56	2020-12-25	2021-01-01	172
754	340	2020-12-25	2021-01-01	173
755	25	2020-12-25	2021-01-01	174
12	21	2020-12-25	2021-01-01	175
34	28	2020-12-25	2021-01-01	176
231	130	2020-12-25	2021-01-01	177
756	58	2020-12-25	2021-01-01	178
514	13	2020-12-25	2021-01-01	179
511	123	2020-12-25	2021-01-01	180
663	32	2020-12-25	2021-01-01	181
448	243	2020-12-25	2021-01-01	182
757	197	2020-12-25	2021-01-01	183
758	341	2020-12-25	2021-01-01	184
453	247	2020-12-25	2021-01-01	185
236	134	2020-12-25	2021-01-01	186
109	70	2020-12-25	2021-01-01	187
64	45	2020-12-25	2021-01-01	188
452	246	2020-12-25	2021-01-01	189
137	51	2020-12-25	2021-01-01	190
501	264	2020-12-25	2021-01-01	191
331	171	2020-12-25	2021-01-01	192
759	341	2020-12-25	2021-01-01	193
499	264	2020-12-25	2021-01-01	194
58	40	2020-12-25	2021-01-01	195
401	211	2020-12-25	2021-01-01	196
760	310	2020-12-25	2021-01-01	197
323	171	2020-12-25	2021-01-01	198
761	139	2020-12-25	2021-01-01	199
762	342	2020-12-25	2021-01-01	200
1	1	2020-02-21	2020-02-28	1
7	7	2020-02-21	2020-02-28	2
5	5	2020-02-21	2020-02-28	3
4	4	2020-02-21	2020-02-28	4
10	10	2020-02-21	2020-02-28	5
20	16	2020-02-21	2020-02-28	6
41	1	2020-02-21	2020-02-28	7
12	11	2020-02-21	2020-02-28	8
19	15	2020-02-21	2020-02-28	9
85	28	2020-02-21	2020-02-28	10
43	10	2020-02-21	2020-02-28	11
29	24	2020-02-21	2020-02-28	12
34	28	2020-02-21	2020-02-28	13
23	19	2020-02-21	2020-02-28	14
39	13	2020-02-21	2020-02-28	15
21	17	2020-02-21	2020-02-28	16
9	9	2020-02-21	2020-02-28	17
27	22	2020-02-21	2020-02-28	18
31	26	2020-02-21	2020-02-28	19
33	28	2020-02-21	2020-02-28	20
26	21	2020-02-21	2020-02-28	21
763	158	2020-02-21	2020-02-28	22
8	8	2020-02-21	2020-02-28	23
3	3	2020-02-21	2020-02-28	24
37	29	2020-02-21	2020-02-28	25
36	17	2020-02-21	2020-02-28	26
56	39	2020-02-21	2020-02-28	27
88	10	2020-02-21	2020-02-28	28
49	36	2020-02-21	2020-02-28	29
55	38	2020-02-21	2020-02-28	30
13	12	2020-02-21	2020-02-28	31
60	41	2020-02-21	2020-02-28	32
16	4	2020-02-21	2020-02-28	33
764	158	2020-02-21	2020-02-28	34
53	37	2020-02-21	2020-02-28	35
52	20	2020-02-21	2020-02-28	36
149	89	2020-02-21	2020-02-28	37
6	6	2020-02-21	2020-02-28	38
59	13	2020-02-21	2020-02-28	39
79	55	2020-02-21	2020-02-28	40
50	5	2020-02-21	2020-02-28	41
765	64	2020-02-21	2020-02-28	42
100	66	2020-02-21	2020-02-28	43
48	35	2020-02-21	2020-02-28	44
113	54	2020-02-21	2020-02-28	45
66	46	2020-02-21	2020-02-28	46
766	158	2020-02-21	2020-02-28	47
519	158	2020-02-21	2020-02-28	48
54	19	2020-02-21	2020-02-28	49
64	45	2020-02-21	2020-02-28	50
132	32	2020-02-21	2020-02-28	51
125	78	2020-02-21	2020-02-28	52
89	60	2020-02-21	2020-02-28	53
767	158	2020-02-21	2020-02-28	54
58	40	2020-02-21	2020-02-28	55
768	158	2020-02-21	2020-02-28	56
90	61	2020-02-21	2020-02-28	57
769	158	2020-02-21	2020-02-28	58
133	82	2020-02-21	2020-02-28	59
63	44	2020-02-21	2020-02-28	60
102	27	2020-02-21	2020-02-28	61
77	53	2020-02-21	2020-02-28	62
30	25	2020-02-21	2020-02-28	63
70	49	2020-02-21	2020-02-28	64
74	28	2020-02-21	2020-02-28	65
51	28	2020-02-21	2020-02-28	66
770	158	2020-02-21	2020-02-28	67
82	56	2020-02-21	2020-02-28	68
83	57	2020-02-21	2020-02-28	69
120	76	2020-02-21	2020-02-28	70
97	64	2020-02-21	2020-02-28	71
106	66	2020-02-21	2020-02-28	72
75	45	2020-02-21	2020-02-28	73
771	158	2020-02-21	2020-02-28	74
772	158	2020-02-21	2020-02-28	75
69	48	2020-02-21	2020-02-28	76
47	34	2020-02-21	2020-02-28	77
81	52	2020-02-21	2020-02-28	78
773	158	2020-02-21	2020-02-28	79
515	64	2020-02-21	2020-02-28	80
141	84	2020-02-21	2020-02-28	81
99	21	2020-02-21	2020-02-28	82
121	20	2020-02-21	2020-02-28	83
774	158	2020-02-21	2020-02-28	84
729	158	2020-02-21	2020-02-28	85
147	13	2020-02-21	2020-02-28	86
144	86	2020-02-21	2020-02-28	87
95	63	2020-02-21	2020-02-28	88
775	283	2020-02-21	2020-02-28	89
67	1	2020-02-21	2020-02-28	90
87	59	2020-02-21	2020-02-28	91
111	71	2020-02-21	2020-02-28	92
105	7	2020-02-21	2020-02-28	93
108	48	2020-02-21	2020-02-28	94
163	95	2020-02-21	2020-02-28	95
91	61	2020-02-21	2020-02-28	96
776	84	2020-02-21	2020-02-28	97
523	27	2020-02-21	2020-02-28	98
119	75	2020-02-21	2020-02-28	99
114	19	2020-02-21	2020-02-28	100
191	110	2020-02-21	2020-02-28	101
517	272	2020-02-21	2020-02-28	102
169	98	2020-02-21	2020-02-28	103
777	158	2020-02-21	2020-02-28	104
103	68	2020-02-21	2020-02-28	105
160	89	2020-02-21	2020-02-28	106
521	78	2020-02-21	2020-02-28	107
778	106	2020-02-21	2020-02-28	108
779	158	2020-02-21	2020-02-28	109
531	276	2020-02-21	2020-02-28	110
45	32	2020-02-21	2020-02-28	111
93	62	2020-02-21	2020-02-28	112
61	42	2020-02-21	2020-02-28	113
135	20	2020-02-21	2020-02-28	114
554	44	2020-02-21	2020-02-28	115
152	91	2020-02-21	2020-02-28	116
94	19	2020-02-21	2020-02-28	117
155	92	2020-02-21	2020-02-28	118
117	17	2020-02-21	2020-02-28	119
780	158	2020-02-21	2020-02-28	120
154	28	2020-02-21	2020-02-28	121
104	69	2020-02-21	2020-02-28	122
115	73	2020-02-21	2020-02-28	123
139	60	2020-02-21	2020-02-28	124
118	38	2020-02-21	2020-02-28	125
532	55	2020-02-21	2020-02-28	126
145	19	2020-02-21	2020-02-28	127
781	24	2020-02-21	2020-02-28	128
528	45	2020-02-21	2020-02-28	129
782	196	2020-02-21	2020-02-28	130
123	45	2020-02-21	2020-02-28	131
526	186	2020-02-21	2020-02-28	132
101	67	2020-02-21	2020-02-28	133
150	48	2020-02-21	2020-02-28	134
131	2	2020-02-21	2020-02-28	135
128	80	2020-02-21	2020-02-28	136
530	111	2020-02-21	2020-02-28	137
529	196	2020-02-21	2020-02-28	138
194	112	2020-02-21	2020-02-28	139
12	21	2020-02-21	2020-02-28	140
535	27	2020-02-21	2020-02-28	141
175	21	2020-02-21	2020-02-28	142
547	282	2020-02-21	2020-02-28	143
165	56	2020-02-21	2020-02-28	144
168	89	2020-02-21	2020-02-28	145
109	70	2020-02-21	2020-02-28	146
146	87	2020-02-21	2020-02-28	147
107	70	2020-02-21	2020-02-28	148
143	85	2020-02-21	2020-02-28	149
540	40	2020-02-21	2020-02-28	150
124	77	2020-02-21	2020-02-28	151
138	45	2020-02-21	2020-02-28	152
156	37	2020-02-21	2020-02-28	153
593	296	2020-02-21	2020-02-28	154
539	278	2020-02-21	2020-02-28	155
783	299	2020-02-21	2020-02-28	156
545	281	2020-02-21	2020-02-28	157
544	280	2020-02-21	2020-02-28	158
159	94	2020-02-21	2020-02-28	159
153	51	2020-02-21	2020-02-28	160
534	28	2020-02-21	2020-02-28	161
181	106	2020-02-21	2020-02-28	162
187	63	2020-02-21	2020-02-28	163
185	22	2020-02-21	2020-02-28	164
158	56	2020-02-21	2020-02-28	165
527	50	2020-02-21	2020-02-28	166
130	67	2020-02-21	2020-02-28	167
784	1	2020-02-21	2020-02-28	168
140	33	2020-02-21	2020-02-28	169
174	102	2020-02-21	2020-02-28	170
549	112	2020-02-21	2020-02-28	171
558	278	2020-02-21	2020-02-28	172
179	105	2020-02-21	2020-02-28	173
785	26	2020-02-21	2020-02-28	174
162	70	2020-02-21	2020-02-28	175
184	19	2020-02-21	2020-02-28	176
573	292	2020-02-21	2020-02-28	177
551	28	2020-02-21	2020-02-28	178
556	234	2020-02-21	2020-02-28	179
616	303	2020-02-21	2020-02-28	180
199	115	2020-02-21	2020-02-28	181
786	343	2020-02-21	2020-02-28	182
546	123	2020-02-21	2020-02-28	183
564	286	2020-02-21	2020-02-28	184
177	104	2020-02-21	2020-02-28	185
787	141	2020-02-21	2020-02-28	186
178	98	2020-02-21	2020-02-28	187
183	29	2020-02-21	2020-02-28	188
541	279	2020-02-21	2020-02-28	189
282	74	2020-02-21	2020-02-28	190
188	107	2020-02-21	2020-02-28	191
559	134	2020-02-21	2020-02-28	192
562	28	2020-02-21	2020-02-28	193
173	101	2020-02-21	2020-02-28	194
166	97	2020-02-21	2020-02-28	195
788	55	2020-02-21	2020-02-28	196
279	153	2020-02-21	2020-02-28	197
552	111	2020-02-21	2020-02-28	198
557	154	2020-02-21	2020-02-28	199
789	1	2020-02-21	2020-02-28	200
216	122	2020-08-07	2020-08-14	1
292	160	2020-08-07	2020-08-14	2
200	27	2020-08-07	2020-08-14	3
1	1	2020-08-07	2020-08-14	4
99	21	2020-08-07	2020-08-14	5
3	3	2020-08-07	2020-08-14	6
370	48	2020-08-07	2020-08-14	7
62	43	2020-08-07	2020-08-14	8
330	48	2020-08-07	2020-08-14	9
310	20	2020-08-07	2020-08-14	10
346	48	2020-08-07	2020-08-14	11
7	7	2020-08-07	2020-08-14	12
6	6	2020-08-07	2020-08-14	13
664	28	2020-08-07	2020-08-14	14
219	124	2020-08-07	2020-08-14	15
665	234	2020-08-07	2020-08-14	16
231	130	2020-08-07	2020-08-14	17
297	162	2020-08-07	2020-08-14	18
201	52	2020-08-07	2020-08-14	19
336	92	2020-08-07	2020-08-14	20
68	47	2020-08-07	2020-08-14	21
361	186	2020-08-07	2020-08-14	22
208	39	2020-08-07	2020-08-14	23
11	4	2020-08-07	2020-08-14	24
355	96	2020-08-07	2020-08-14	25
334	32	2020-08-07	2020-08-14	26
8	8	2020-08-07	2020-08-14	27
312	167	2020-08-07	2020-08-14	28
666	234	2020-08-07	2020-08-14	29
294	92	2020-08-07	2020-08-14	30
217	123	2020-08-07	2020-08-14	31
4	4	2020-08-07	2020-08-14	32
21	17	2020-08-07	2020-08-14	33
362	92	2020-08-07	2020-08-14	34
2	2	2020-08-07	2020-08-14	35
366	190	2020-08-07	2020-08-14	36
204	63	2020-08-07	2020-08-14	37
202	116	2020-08-07	2020-08-14	38
236	134	2020-08-07	2020-08-14	39
36	17	2020-08-07	2020-08-14	40
342	171	2020-08-07	2020-08-14	41
379	172	2020-08-07	2020-08-14	42
321	16	2020-08-07	2020-08-14	43
137	51	2020-08-07	2020-08-14	44
668	314	2020-08-07	2020-08-14	45
209	120	2020-08-07	2020-08-14	46
327	172	2020-08-07	2020-08-14	47
5	5	2020-08-07	2020-08-14	48
10	10	2020-08-07	2020-08-14	49
26	21	2020-08-07	2020-08-14	50
15	14	2020-08-07	2020-08-14	51
23	19	2020-08-07	2020-08-14	52
291	159	2020-08-07	2020-08-14	53
20	16	2020-08-07	2020-08-14	54
667	234	2020-08-07	2020-08-14	55
37	29	2020-08-07	2020-08-14	56
158	56	2020-08-07	2020-08-14	57
214	68	2020-08-07	2020-08-14	58
27	22	2020-08-07	2020-08-14	59
13	12	2020-08-07	2020-08-14	60
12	11	2020-08-07	2020-08-14	61
54	19	2020-08-07	2020-08-14	62
69	48	2020-08-07	2020-08-14	63
223	35	2020-08-07	2020-08-14	64
33	28	2020-08-07	2020-08-14	65
17	1	2020-08-07	2020-08-14	66
48	35	2020-08-07	2020-08-14	67
82	56	2020-08-07	2020-08-14	68
9	9	2020-08-07	2020-08-14	69
678	315	2020-08-07	2020-08-14	70
296	161	2020-08-07	2020-08-14	71
672	22	2020-08-07	2020-08-14	72
210	66	2020-08-07	2020-08-14	73
203	117	2020-08-07	2020-08-14	74
237	135	2020-08-07	2020-08-14	75
155	92	2020-08-07	2020-08-14	76
165	56	2020-08-07	2020-08-14	77
29	24	2020-08-07	2020-08-14	78
19	15	2020-08-07	2020-08-14	79
676	48	2020-08-07	2020-08-14	80
213	33	2020-08-07	2020-08-14	81
110	32	2020-08-07	2020-08-14	82
680	48	2020-08-07	2020-08-14	83
205	118	2020-08-07	2020-08-14	84
51	28	2020-08-07	2020-08-14	85
682	90	2020-08-07	2020-08-14	86
150	48	2020-08-07	2020-08-14	87
122	20	2020-08-07	2020-08-14	88
348	179	2020-08-07	2020-08-14	89
34	28	2020-08-07	2020-08-14	90
303	77	2020-08-07	2020-08-14	91
669	234	2020-08-07	2020-08-14	92
207	119	2020-08-07	2020-08-14	93
116	74	2020-08-07	2020-08-14	94
18	13	2020-08-07	2020-08-14	95
671	234	2020-08-07	2020-08-14	96
14	13	2020-08-07	2020-08-14	97
211	121	2020-08-07	2020-08-14	98
230	48	2020-08-07	2020-08-14	99
81	52	2020-08-07	2020-08-14	100
25	20	2020-08-07	2020-08-14	101
670	234	2020-08-07	2020-08-14	102
252	143	2020-08-07	2020-08-14	103
397	92	2020-08-07	2020-08-14	104
404	214	2020-08-07	2020-08-14	105
93	62	2020-08-07	2020-08-14	106
363	187	2020-08-07	2020-08-14	107
47	34	2020-08-07	2020-08-14	108
64	45	2020-08-07	2020-08-14	109
222	2	2020-08-07	2020-08-14	110
685	89	2020-08-07	2020-08-14	111
364	188	2020-08-07	2020-08-14	112
30	25	2020-08-07	2020-08-14	113
221	126	2020-08-07	2020-08-14	114
681	108	2020-08-07	2020-08-14	115
684	48	2020-08-07	2020-08-14	116
31	26	2020-08-07	2020-08-14	117
227	128	2020-08-07	2020-08-14	118
12	21	2020-08-07	2020-08-14	119
691	145	2020-08-07	2020-08-14	120
229	84	2020-08-07	2020-08-14	121
693	58	2020-08-07	2020-08-14	122
218	86	2020-08-07	2020-08-14	123
53	37	2020-08-07	2020-08-14	124
690	317	2020-08-07	2020-08-14	125
228	129	2020-08-07	2020-08-14	126
16	4	2020-08-07	2020-08-14	127
107	70	2020-08-07	2020-08-14	128
58	40	2020-08-07	2020-08-14	129
688	110	2020-08-07	2020-08-14	130
313	168	2020-08-07	2020-08-14	131
95	63	2020-08-07	2020-08-14	132
94	19	2020-08-07	2020-08-14	133
24	9	2020-08-07	2020-08-14	134
123	45	2020-08-07	2020-08-14	135
675	234	2020-08-07	2020-08-14	136
115	73	2020-08-07	2020-08-14	137
673	234	2020-08-07	2020-08-14	138
790	153	2020-08-07	2020-08-14	139
109	70	2020-08-07	2020-08-14	140
75	45	2020-08-07	2020-08-14	141
240	137	2020-08-07	2020-08-14	142
699	33	2020-08-07	2020-08-14	143
260	48	2020-08-07	2020-08-14	144
674	234	2020-08-07	2020-08-14	145
138	45	2020-08-07	2020-08-14	146
56	39	2020-08-07	2020-08-14	147
74	28	2020-08-07	2020-08-14	148
128	80	2020-08-07	2020-08-14	149
111	71	2020-08-07	2020-08-14	150
791	344	2020-08-07	2020-08-14	151
700	74	2020-08-07	2020-08-14	152
687	316	2020-08-07	2020-08-14	153
103	68	2020-08-07	2020-08-14	154
677	234	2020-08-07	2020-08-14	155
683	234	2020-08-07	2020-08-14	156
792	27	2020-08-07	2020-08-14	157
679	234	2020-08-07	2020-08-14	158
285	42	2020-08-07	2020-08-14	159
702	319	2020-08-07	2020-08-14	160
243	139	2020-08-07	2020-08-14	161
118	38	2020-08-07	2020-08-14	162
151	90	2020-08-07	2020-08-14	163
708	85	2020-08-07	2020-08-14	164
157	93	2020-08-07	2020-08-14	165
703	190	2020-08-07	2020-08-14	166
182	104	2020-08-07	2020-08-14	167
174	102	2020-08-07	2020-08-14	168
162	70	2020-08-07	2020-08-14	169
793	9	2020-08-07	2020-08-14	170
262	148	2020-08-07	2020-08-14	171
57	131	2020-08-07	2020-08-14	172
706	66	2020-08-07	2020-08-14	173
166	97	2020-08-07	2020-08-14	174
238	32	2020-08-07	2020-08-14	175
714	168	2020-08-07	2020-08-14	176
398	209	2020-08-07	2020-08-14	177
83	57	2020-08-07	2020-08-14	178
70	49	2020-08-07	2020-08-14	179
794	118	2020-08-07	2020-08-14	180
712	322	2020-08-07	2020-08-14	181
140	33	2020-08-07	2020-08-14	182
694	302	2020-08-07	2020-08-14	183
795	345	2020-08-07	2020-08-14	184
711	321	2020-08-07	2020-08-14	185
259	147	2020-08-07	2020-08-14	186
796	108	2020-08-07	2020-08-14	187
713	323	2020-08-07	2020-08-14	188
264	73	2020-08-07	2020-08-14	189
22	18	2020-08-07	2020-08-14	190
173	101	2020-08-07	2020-08-14	191
178	98	2020-08-07	2020-08-14	192
101	67	2020-08-07	2020-08-14	193
797	346	2020-08-07	2020-08-14	194
245	85	2020-08-07	2020-08-14	195
167	4	2020-08-07	2020-08-14	196
153	51	2020-08-07	2020-08-14	197
145	19	2020-08-07	2020-08-14	198
108	48	2020-08-07	2020-08-14	199
619	304	2020-08-07	2020-08-14	200
1	1	2020-05-01	2020-05-08	1
2	2	2020-05-01	2020-05-08	2
203	117	2020-05-01	2020-05-08	3
3	3	2020-05-01	2020-05-08	4
6	6	2020-05-01	2020-05-08	5
4	4	2020-05-01	2020-05-08	6
200	27	2020-05-01	2020-05-08	7
7	7	2020-05-01	2020-05-08	8
5	5	2020-05-01	2020-05-08	9
8	8	2020-05-01	2020-05-08	10
9	9	2020-05-01	2020-05-08	11
798	2	2020-05-01	2020-05-08	12
207	119	2020-05-01	2020-05-08	13
11	4	2020-05-01	2020-05-08	14
15	14	2020-05-01	2020-05-08	15
10	10	2020-05-01	2020-05-08	16
165	56	2020-05-01	2020-05-08	17
158	56	2020-05-01	2020-05-08	18
230	48	2020-05-01	2020-05-08	19
12	11	2020-05-01	2020-05-08	20
13	12	2020-05-01	2020-05-08	21
214	68	2020-05-01	2020-05-08	22
222	2	2020-05-01	2020-05-08	23
21	17	2020-05-01	2020-05-08	24
24	9	2020-05-01	2020-05-08	25
18	13	2020-05-01	2020-05-08	26
82	56	2020-05-01	2020-05-08	27
19	15	2020-05-01	2020-05-08	28
23	19	2020-05-01	2020-05-08	29
14	13	2020-05-01	2020-05-08	30
68	47	2020-05-01	2020-05-08	31
20	16	2020-05-01	2020-05-08	32
30	25	2020-05-01	2020-05-08	33
17	1	2020-05-01	2020-05-08	34
26	21	2020-05-01	2020-05-08	35
29	24	2020-05-01	2020-05-08	36
16	4	2020-05-01	2020-05-08	37
116	74	2020-05-01	2020-05-08	38
22	18	2020-05-01	2020-05-08	39
36	17	2020-05-01	2020-05-08	40
27	22	2020-05-01	2020-05-08	41
47	34	2020-05-01	2020-05-08	42
25	20	2020-05-01	2020-05-08	43
33	28	2020-05-01	2020-05-08	44
211	121	2020-05-01	2020-05-08	45
799	24	2020-05-01	2020-05-08	46
37	29	2020-05-01	2020-05-08	47
40	30	2020-05-01	2020-05-08	48
800	2	2020-05-01	2020-05-08	49
34	28	2020-05-01	2020-05-08	50
801	2	2020-05-01	2020-05-08	51
31	26	2020-05-01	2020-05-08	52
802	2	2020-05-01	2020-05-08	53
62	43	2020-05-01	2020-05-08	54
803	2	2020-05-01	2020-05-08	55
54	19	2020-05-01	2020-05-08	56
45	32	2020-05-01	2020-05-08	57
225	9	2020-05-01	2020-05-08	58
48	35	2020-05-01	2020-05-08	59
51	28	2020-05-01	2020-05-08	60
151	90	2020-05-01	2020-05-08	61
265	89	2020-05-01	2020-05-08	62
44	20	2020-05-01	2020-05-08	63
35	13	2020-05-01	2020-05-08	64
57	5	2020-05-01	2020-05-08	65
39	13	2020-05-01	2020-05-08	66
804	2	2020-05-01	2020-05-08	67
805	2	2020-05-01	2020-05-08	68
806	347	2020-05-01	2020-05-08	69
807	2	2020-05-01	2020-05-08	70
808	348	2020-05-01	2020-05-08	71
53	37	2020-05-01	2020-05-08	72
809	2	2020-05-01	2020-05-08	73
69	48	2020-05-01	2020-05-08	74
38	13	2020-05-01	2020-05-08	75
73	51	2020-05-01	2020-05-08	76
58	40	2020-05-01	2020-05-08	77
52	20	2020-05-01	2020-05-08	78
43	10	2020-05-01	2020-05-08	79
56	39	2020-05-01	2020-05-08	80
218	86	2020-05-01	2020-05-08	81
64	45	2020-05-01	2020-05-08	82
63	44	2020-05-01	2020-05-08	83
810	2	2020-05-01	2020-05-08	84
268	150	2020-05-01	2020-05-08	85
110	32	2020-05-01	2020-05-08	86
28	23	2020-05-01	2020-05-08	87
46	33	2020-05-01	2020-05-08	88
811	2	2020-05-01	2020-05-08	89
55	38	2020-05-01	2020-05-08	90
83	57	2020-05-01	2020-05-08	91
61	42	2020-05-01	2020-05-08	92
50	5	2020-05-01	2020-05-08	93
70	49	2020-05-01	2020-05-08	94
81	52	2020-05-01	2020-05-08	95
74	28	2020-05-01	2020-05-08	96
71	9	2020-05-01	2020-05-08	97
98	65	2020-05-01	2020-05-08	98
75	45	2020-05-01	2020-05-08	99
77	53	2020-05-01	2020-05-08	100
60	41	2020-05-01	2020-05-08	101
49	36	2020-05-01	2020-05-08	102
59	13	2020-05-01	2020-05-08	103
93	62	2020-05-01	2020-05-08	104
111	71	2020-05-01	2020-05-08	105
84	58	2020-05-01	2020-05-08	106
95	63	2020-05-01	2020-05-08	107
79	55	2020-05-01	2020-05-08	108
94	19	2020-05-01	2020-05-08	109
235	133	2020-05-01	2020-05-08	110
65	13	2020-05-01	2020-05-08	111
72	50	2020-05-01	2020-05-08	112
66	46	2020-05-01	2020-05-08	113
12	21	2020-05-01	2020-05-08	114
195	113	2020-05-01	2020-05-08	115
202	116	2020-05-01	2020-05-08	116
103	68	2020-05-01	2020-05-08	117
107	70	2020-05-01	2020-05-08	118
99	21	2020-05-01	2020-05-08	119
267	56	2020-05-01	2020-05-08	120
87	59	2020-05-01	2020-05-08	121
109	70	2020-05-01	2020-05-08	122
266	56	2020-05-01	2020-05-08	123
104	69	2020-05-01	2020-05-08	124
157	93	2020-05-01	2020-05-08	125
78	54	2020-05-01	2020-05-08	126
42	31	2020-05-01	2020-05-08	127
137	51	2020-05-01	2020-05-08	128
91	61	2020-05-01	2020-05-08	129
115	73	2020-05-01	2020-05-08	130
812	349	2020-05-01	2020-05-08	131
96	50	2020-05-01	2020-05-08	132
108	48	2020-05-01	2020-05-08	133
123	45	2020-05-01	2020-05-08	134
208	39	2020-05-01	2020-05-08	135
118	38	2020-05-01	2020-05-08	136
144	86	2020-05-01	2020-05-08	137
128	80	2020-05-01	2020-05-08	138
89	60	2020-05-01	2020-05-08	139
102	27	2020-05-01	2020-05-08	140
106	66	2020-05-01	2020-05-08	141
41	1	2020-05-01	2020-05-08	142
138	45	2020-05-01	2020-05-08	143
150	48	2020-05-01	2020-05-08	144
114	19	2020-05-01	2020-05-08	145
270	64	2020-05-01	2020-05-08	146
90	61	2020-05-01	2020-05-08	147
97	64	2020-05-01	2020-05-08	148
101	67	2020-05-01	2020-05-08	149
117	17	2020-05-01	2020-05-08	150
67	1	2020-05-01	2020-05-08	151
129	81	2020-05-01	2020-05-08	152
141	84	2020-05-01	2020-05-08	153
131	2	2020-05-01	2020-05-08	154
119	75	2020-05-01	2020-05-08	155
121	20	2020-05-01	2020-05-08	156
132	32	2020-05-01	2020-05-08	157
122	20	2020-05-01	2020-05-08	158
125	78	2020-05-01	2020-05-08	159
146	87	2020-05-01	2020-05-08	160
139	60	2020-05-01	2020-05-08	161
269	141	2020-05-01	2020-05-08	162
145	19	2020-05-01	2020-05-08	163
134	83	2020-05-01	2020-05-08	164
153	51	2020-05-01	2020-05-08	165
166	97	2020-05-01	2020-05-08	166
136	13	2020-05-01	2020-05-08	167
105	7	2020-05-01	2020-05-08	168
173	101	2020-05-01	2020-05-08	169
275	154	2020-05-01	2020-05-08	170
32	27	2020-05-01	2020-05-08	171
147	13	2020-05-01	2020-05-08	172
174	102	2020-05-01	2020-05-08	173
100	66	2020-05-01	2020-05-08	174
178	98	2020-05-01	2020-05-08	175
154	28	2020-05-01	2020-05-08	176
156	37	2020-05-01	2020-05-08	177
140	33	2020-05-01	2020-05-08	178
130	67	2020-05-01	2020-05-08	179
162	70	2020-05-01	2020-05-08	180
186	2	2020-05-01	2020-05-08	181
170	99	2020-05-01	2020-05-08	182
113	54	2020-05-01	2020-05-08	183
159	94	2020-05-01	2020-05-08	184
168	89	2020-05-01	2020-05-08	185
85	28	2020-05-01	2020-05-08	186
181	106	2020-05-01	2020-05-08	187
171	100	2020-05-01	2020-05-08	188
276	74	2020-05-01	2020-05-08	189
184	19	2020-05-01	2020-05-08	190
274	153	2020-05-01	2020-05-08	191
188	107	2020-05-01	2020-05-08	192
187	63	2020-05-01	2020-05-08	193
273	152	2020-05-01	2020-05-08	194
281	96	2020-05-01	2020-05-08	195
161	32	2020-05-01	2020-05-08	196
183	29	2020-05-01	2020-05-08	197
182	104	2020-05-01	2020-05-08	198
160	89	2020-05-01	2020-05-08	199
133	82	2020-05-01	2020-05-08	200
284	13	2020-12-11	2020-12-18	1
400	210	2020-12-11	2020-12-18	2
434	234	2020-12-11	2020-12-18	3
415	219	2020-12-11	2020-12-18	4
283	63	2020-12-11	2020-12-18	5
285	42	2020-12-11	2020-12-18	6
350	16	2020-12-11	2020-12-18	7
416	63	2020-12-11	2020-12-18	8
417	220	2020-12-11	2020-12-18	9
458	234	2020-12-11	2020-12-18	10
1	1	2020-12-11	2020-12-18	11
418	221	2020-12-11	2020-12-18	12
419	222	2020-12-11	2020-12-18	13
433	13	2020-12-11	2020-12-18	14
465	234	2020-12-11	2020-12-18	15
289	158	2020-12-11	2020-12-18	16
286	157	2020-12-11	2020-12-18	17
287	63	2020-12-11	2020-12-18	18
481	234	2020-12-11	2020-12-18	19
420	223	2020-12-11	2020-12-18	20
435	28	2020-12-11	2020-12-18	21
476	234	2020-12-11	2020-12-18	22
421	224	2020-12-11	2020-12-18	23
508	234	2020-12-11	2020-12-18	24
439	29	2020-12-11	2020-12-18	25
288	92	2020-12-11	2020-12-18	26
367	191	2020-12-11	2020-12-18	27
813	234	2020-12-11	2020-12-18	28
438	75	2020-12-11	2020-12-18	29
436	126	2020-12-11	2020-12-18	30
291	159	2020-12-11	2020-12-18	31
424	10	2020-12-11	2020-12-18	32
292	160	2020-12-11	2020-12-18	33
814	234	2020-12-11	2020-12-18	34
290	10	2020-12-11	2020-12-18	35
422	225	2020-12-11	2020-12-18	36
444	169	2020-12-11	2020-12-18	37
815	234	2020-12-11	2020-12-18	38
816	234	2020-12-11	2020-12-18	39
423	226	2020-12-11	2020-12-18	40
296	161	2020-12-11	2020-12-18	41
99	21	2020-12-11	2020-12-18	42
817	234	2020-12-11	2020-12-18	43
425	227	2020-12-11	2020-12-18	44
818	234	2020-12-11	2020-12-18	45
315	4	2020-12-11	2020-12-18	46
426	228	2020-12-11	2020-12-18	47
428	230	2020-12-11	2020-12-18	48
501	264	2020-12-11	2020-12-18	49
297	162	2020-12-11	2020-12-18	50
200	27	2020-12-11	2020-12-18	51
429	221	2020-12-11	2020-12-18	52
819	234	2020-12-11	2020-12-18	53
499	264	2020-12-11	2020-12-18	54
450	13	2020-12-11	2020-12-18	55
294	92	2020-12-11	2020-12-18	56
820	234	2020-12-11	2020-12-18	57
21	17	2020-12-11	2020-12-18	58
311	166	2020-12-11	2020-12-18	59
431	232	2020-12-11	2020-12-18	60
430	231	2020-12-11	2020-12-18	61
298	123	2020-12-11	2020-12-18	62
357	32	2020-12-11	2020-12-18	63
303	77	2020-12-11	2020-12-18	64
7	7	2020-12-11	2020-12-18	65
349	180	2020-12-11	2020-12-18	66
432	233	2020-12-11	2020-12-18	67
459	158	2020-12-11	2020-12-18	68
3	3	2020-12-11	2020-12-18	69
821	234	2020-12-11	2020-12-18	70
306	164	2020-12-11	2020-12-18	71
293	10	2020-12-11	2020-12-18	72
474	48	2020-12-11	2020-12-18	73
822	264	2020-12-11	2020-12-18	74
308	74	2020-12-11	2020-12-18	75
427	229	2020-12-11	2020-12-18	76
4	4	2020-12-11	2020-12-18	77
305	29	2020-12-11	2020-12-18	78
390	206	2020-12-11	2020-12-18	79
36	17	2020-12-11	2020-12-18	80
312	167	2020-12-11	2020-12-18	81
437	235	2020-12-11	2020-12-18	82
446	241	2020-12-11	2020-12-18	83
359	185	2020-12-11	2020-12-18	84
466	18	2020-12-11	2020-12-18	85
307	165	2020-12-11	2020-12-18	86
317	139	2020-12-11	2020-12-18	87
329	173	2020-12-11	2020-12-18	88
302	63	2020-12-11	2020-12-18	89
301	2	2020-12-11	2020-12-18	90
310	20	2020-12-11	2020-12-18	91
299	163	2020-12-11	2020-12-18	92
455	74	2020-12-11	2020-12-18	93
316	130	2020-12-11	2020-12-18	94
216	122	2020-12-11	2020-12-18	95
321	16	2020-12-11	2020-12-18	96
823	264	2020-12-11	2020-12-18	97
352	126	2020-12-11	2020-12-18	98
5	5	2020-12-11	2020-12-18	99
326	159	2020-12-11	2020-12-18	100
6	6	2020-12-11	2020-12-18	101
313	168	2020-12-11	2020-12-18	102
442	238	2020-12-11	2020-12-18	103
62	43	2020-12-11	2020-12-18	104
388	37	2020-12-11	2020-12-18	105
341	25	2020-12-11	2020-12-18	106
441	237	2020-12-11	2020-12-18	107
440	236	2020-12-11	2020-12-18	108
23	19	2020-12-11	2020-12-18	109
54	19	2020-12-11	2020-12-18	110
51	28	2020-12-11	2020-12-18	111
69	48	2020-12-11	2020-12-18	112
8	8	2020-12-11	2020-12-18	113
346	48	2020-12-11	2020-12-18	114
328	21	2020-12-11	2020-12-18	115
484	159	2020-12-11	2020-12-18	116
351	80	2020-12-11	2020-12-18	117
319	169	2020-12-11	2020-12-18	118
20	16	2020-12-11	2020-12-18	119
27	22	2020-12-11	2020-12-18	120
512	25	2020-12-11	2020-12-18	121
26	21	2020-12-11	2020-12-18	122
158	56	2020-12-11	2020-12-18	123
443	239	2020-12-11	2020-12-18	124
330	48	2020-12-11	2020-12-18	125
824	264	2020-12-11	2020-12-18	126
470	253	2020-12-11	2020-12-18	127
334	32	2020-12-11	2020-12-18	128
825	264	2020-12-11	2020-12-18	129
325	130	2020-12-11	2020-12-18	130
337	175	2020-12-11	2020-12-18	131
150	48	2020-12-11	2020-12-18	132
37	29	2020-12-11	2020-12-18	133
333	174	2020-12-11	2020-12-18	134
12	11	2020-12-11	2020-12-18	135
204	63	2020-12-11	2020-12-18	136
514	13	2020-12-11	2020-12-18	137
448	243	2020-12-11	2020-12-18	138
826	264	2020-12-11	2020-12-18	139
33	28	2020-12-11	2020-12-18	140
82	56	2020-12-11	2020-12-18	141
336	92	2020-12-11	2020-12-18	142
201	52	2020-12-11	2020-12-18	143
447	242	2020-12-11	2020-12-18	144
320	170	2020-12-11	2020-12-18	145
472	254	2020-12-11	2020-12-18	146
827	264	2020-12-11	2020-12-18	147
445	240	2020-12-11	2020-12-18	148
81	52	2020-12-11	2020-12-18	149
755	25	2020-12-11	2020-12-18	150
219	124	2020-12-11	2020-12-18	151
828	264	2020-12-11	2020-12-18	152
343	176	2020-12-11	2020-12-18	153
29	24	2020-12-11	2020-12-18	154
449	244	2020-12-11	2020-12-18	155
345	178	2020-12-11	2020-12-18	156
502	266	2020-12-11	2020-12-18	157
11	4	2020-12-11	2020-12-18	158
399	92	2020-12-11	2020-12-18	159
342	171	2020-12-11	2020-12-18	160
381	201	2020-12-11	2020-12-18	161
493	78	2020-12-11	2020-12-18	162
260	48	2020-12-11	2020-12-18	163
107	70	2020-12-11	2020-12-18	164
93	62	2020-12-11	2020-12-18	165
453	247	2020-12-11	2020-12-18	166
47	34	2020-12-11	2020-12-18	167
637	13	2020-12-11	2020-12-18	168
451	245	2020-12-11	2020-12-18	169
327	172	2020-12-11	2020-12-18	170
348	179	2020-12-11	2020-12-18	171
128	80	2020-12-11	2020-12-18	172
12	21	2020-12-11	2020-12-18	173
385	185	2020-12-11	2020-12-18	174
19	15	2020-12-11	2020-12-18	175
34	28	2020-12-11	2020-12-18	176
452	246	2020-12-11	2020-12-18	177
48	35	2020-12-11	2020-12-18	178
155	92	2020-12-11	2020-12-18	179
2	2	2020-12-11	2020-12-18	180
509	270	2020-12-11	2020-12-18	181
511	123	2020-12-11	2020-12-18	182
829	264	2020-12-11	2020-12-18	183
10	10	2020-12-11	2020-12-18	184
830	264	2020-12-11	2020-12-18	185
165	56	2020-12-11	2020-12-18	186
639	13	2020-12-11	2020-12-18	187
335	89	2020-12-11	2020-12-18	188
457	249	2020-12-11	2020-12-18	189
231	130	2020-12-11	2020-12-18	190
323	171	2020-12-11	2020-12-18	191
68	47	2020-12-11	2020-12-18	192
665	234	2020-12-11	2020-12-18	193
454	248	2020-12-11	2020-12-18	194
31	26	2020-12-11	2020-12-18	195
331	171	2020-12-11	2020-12-18	196
138	45	2020-12-11	2020-12-18	197
460	89	2020-12-11	2020-12-18	198
406	216	2020-12-11	2020-12-18	199
236	134	2020-12-11	2020-12-18	200
200	27	2020-07-10	2020-07-17	1
216	122	2020-07-10	2020-07-17	2
1	1	2020-07-10	2020-07-17	3
330	48	2020-07-10	2020-07-17	4
99	21	2020-07-10	2020-07-17	5
3	3	2020-07-10	2020-07-17	6
346	48	2020-07-10	2020-07-17	7
684	48	2020-07-10	2020-07-17	8
676	48	2020-07-10	2020-07-17	9
831	116	2020-07-10	2020-07-17	10
62	43	2020-07-10	2020-07-17	11
6	6	2020-07-10	2020-07-17	12
201	52	2020-07-10	2020-07-17	13
680	48	2020-07-10	2020-07-17	14
230	48	2020-07-10	2020-07-17	15
342	171	2020-07-10	2020-07-17	16
7	7	2020-07-10	2020-07-17	17
68	47	2020-07-10	2020-07-17	18
2	2	2020-07-10	2020-07-17	19
219	124	2020-07-10	2020-07-17	20
4	4	2020-07-10	2020-07-17	21
11	4	2020-07-10	2020-07-17	22
8	8	2020-07-10	2020-07-17	23
832	48	2020-07-10	2020-07-17	24
704	48	2020-07-10	2020-07-17	25
208	39	2020-07-10	2020-07-17	26
833	48	2020-07-10	2020-07-17	27
204	63	2020-07-10	2020-07-17	28
217	123	2020-07-10	2020-07-17	29
209	120	2020-07-10	2020-07-17	30
355	96	2020-07-10	2020-07-17	31
21	17	2020-07-10	2020-07-17	32
15	14	2020-07-10	2020-07-17	33
362	92	2020-07-10	2020-07-17	34
244	48	2020-07-10	2020-07-17	35
834	48	2020-07-10	2020-07-17	36
835	48	2020-07-10	2020-07-17	37
231	130	2020-07-10	2020-07-17	38
5	5	2020-07-10	2020-07-17	39
10	10	2020-07-10	2020-07-17	40
36	17	2020-07-10	2020-07-17	41
294	92	2020-07-10	2020-07-17	42
836	48	2020-07-10	2020-07-17	43
837	48	2020-07-10	2020-07-17	44
838	48	2020-07-10	2020-07-17	45
839	48	2020-07-10	2020-07-17	46
203	117	2020-07-10	2020-07-17	47
13	12	2020-07-10	2020-07-17	48
840	48	2020-07-10	2020-07-17	49
9	9	2020-07-10	2020-07-17	50
210	66	2020-07-10	2020-07-17	51
23	19	2020-07-10	2020-07-17	52
20	16	2020-07-10	2020-07-17	53
214	68	2020-07-10	2020-07-17	54
17	1	2020-07-10	2020-07-17	55
312	167	2020-07-10	2020-07-17	56
137	51	2020-07-10	2020-07-17	57
207	119	2020-07-10	2020-07-17	58
37	29	2020-07-10	2020-07-17	59
158	56	2020-07-10	2020-07-17	60
12	11	2020-07-10	2020-07-17	61
26	21	2020-07-10	2020-07-17	62
205	118	2020-07-10	2020-07-17	63
211	121	2020-07-10	2020-07-17	64
27	22	2020-07-10	2020-07-17	65
366	190	2020-07-10	2020-07-17	66
841	264	2020-07-10	2020-07-17	67
69	48	2020-07-10	2020-07-17	68
236	134	2020-07-10	2020-07-17	69
213	33	2020-07-10	2020-07-17	70
82	56	2020-07-10	2020-07-17	71
334	32	2020-07-10	2020-07-17	72
14	13	2020-07-10	2020-07-17	73
33	28	2020-07-10	2020-07-17	74
54	19	2020-07-10	2020-07-17	75
155	92	2020-07-10	2020-07-17	76
110	32	2020-07-10	2020-07-17	77
842	48	2020-07-10	2020-07-17	78
165	56	2020-07-10	2020-07-17	79
18	13	2020-07-10	2020-07-17	80
29	24	2020-07-10	2020-07-17	81
30	25	2020-07-10	2020-07-17	82
252	143	2020-07-10	2020-07-17	83
122	20	2020-07-10	2020-07-17	84
19	15	2020-07-10	2020-07-17	85
48	35	2020-07-10	2020-07-17	86
678	315	2020-07-10	2020-07-17	87
397	92	2020-07-10	2020-07-17	88
218	86	2020-07-10	2020-07-17	89
116	74	2020-07-10	2020-07-17	90
25	20	2020-07-10	2020-07-17	91
681	108	2020-07-10	2020-07-17	92
222	2	2020-07-10	2020-07-17	93
223	35	2020-07-10	2020-07-17	94
688	110	2020-07-10	2020-07-17	95
682	90	2020-07-10	2020-07-17	96
227	128	2020-07-10	2020-07-17	97
221	126	2020-07-10	2020-07-17	98
47	34	2020-07-10	2020-07-17	99
150	48	2020-07-10	2020-07-17	100
51	28	2020-07-10	2020-07-17	101
34	28	2020-07-10	2020-07-17	102
228	129	2020-07-10	2020-07-17	103
31	26	2020-07-10	2020-07-17	104
361	186	2020-07-10	2020-07-17	105
81	52	2020-07-10	2020-07-17	106
64	45	2020-07-10	2020-07-17	107
694	302	2020-07-10	2020-07-17	108
24	9	2020-07-10	2020-07-17	109
237	135	2020-07-10	2020-07-17	110
229	84	2020-07-10	2020-07-17	111
843	48	2020-07-10	2020-07-17	112
844	48	2020-07-10	2020-07-17	113
404	214	2020-07-10	2020-07-17	114
706	66	2020-07-10	2020-07-17	115
58	40	2020-07-10	2020-07-17	116
690	317	2020-07-10	2020-07-17	117
93	62	2020-07-10	2020-07-17	118
16	4	2020-07-10	2020-07-17	119
45	32	2020-07-10	2020-07-17	120
53	37	2020-07-10	2020-07-17	121
710	184	2020-07-10	2020-07-17	122
215	110	2020-07-10	2020-07-17	123
57	5	2020-07-10	2020-07-17	124
151	90	2020-07-10	2020-07-17	125
107	70	2020-07-10	2020-07-17	126
56	39	2020-07-10	2020-07-17	127
212	52	2020-07-10	2020-07-17	128
845	350	2020-07-10	2020-07-17	129
75	45	2020-07-10	2020-07-17	130
94	19	2020-07-10	2020-07-17	131
95	63	2020-07-10	2020-07-17	132
109	70	2020-07-10	2020-07-17	133
702	319	2020-07-10	2020-07-17	134
12	21	2020-07-10	2020-07-17	135
260	48	2020-07-10	2020-07-17	136
108	48	2020-07-10	2020-07-17	137
123	45	2020-07-10	2020-07-17	138
44	20	2020-07-10	2020-07-17	139
742	333	2020-07-10	2020-07-17	140
115	73	2020-07-10	2020-07-17	141
103	68	2020-07-10	2020-07-17	142
238	32	2020-07-10	2020-07-17	143
240	137	2020-07-10	2020-07-17	144
74	28	2020-07-10	2020-07-17	145
128	80	2020-07-10	2020-07-17	146
206	118	2020-07-10	2020-07-17	147
40	30	2020-07-10	2020-07-17	148
138	45	2020-07-10	2020-07-17	149
243	139	2020-07-10	2020-07-17	150
22	18	2020-07-10	2020-07-17	151
296	161	2020-07-10	2020-07-17	152
741	11	2020-07-10	2020-07-17	153
364	188	2020-07-10	2020-07-17	154
104	69	2020-07-10	2020-07-17	155
111	71	2020-07-10	2020-07-17	156
245	85	2020-07-10	2020-07-17	157
52	20	2020-07-10	2020-07-17	158
157	93	2020-07-10	2020-07-17	159
35	13	2020-07-10	2020-07-17	160
846	92	2020-07-10	2020-07-17	161
83	57	2020-07-10	2020-07-17	162
118	38	2020-07-10	2020-07-17	163
847	351	2020-07-10	2020-07-17	164
106	66	2020-07-10	2020-07-17	165
63	44	2020-07-10	2020-07-17	166
39	13	2020-07-10	2020-07-17	167
50	5	2020-07-10	2020-07-17	168
693	58	2020-07-10	2020-07-17	169
297	162	2020-07-10	2020-07-17	170
336	92	2020-07-10	2020-07-17	171
739	158	2020-07-10	2020-07-17	172
174	102	2020-07-10	2020-07-17	173
162	70	2020-07-10	2020-07-17	174
70	49	2020-07-10	2020-07-17	175
848	118	2020-07-10	2020-07-17	176
321	16	2020-07-10	2020-07-17	177
43	10	2020-07-10	2020-07-17	178
91	61	2020-07-10	2020-07-17	179
117	17	2020-07-10	2020-07-17	180
119	75	2020-07-10	2020-07-17	181
178	98	2020-07-10	2020-07-17	182
166	97	2020-07-10	2020-07-17	183
262	148	2020-07-10	2020-07-17	184
182	104	2020-07-10	2020-07-17	185
79	55	2020-07-10	2020-07-17	186
849	66	2020-07-10	2020-07-17	187
101	67	2020-07-10	2020-07-17	188
71	9	2020-07-10	2020-07-17	189
235	133	2020-07-10	2020-07-17	190
708	85	2020-07-10	2020-07-17	191
850	92	2020-07-10	2020-07-17	192
153	51	2020-07-10	2020-07-17	193
713	323	2020-07-10	2020-07-17	194
102	27	2020-07-10	2020-07-17	195
700	74	2020-07-10	2020-07-17	196
87	59	2020-07-10	2020-07-17	197
49	36	2020-07-10	2020-07-17	198
851	92	2020-07-10	2020-07-17	199
711	321	2020-07-10	2020-07-17	200
284	13	2020-11-06	2020-11-13	1
283	63	2020-11-06	2020-11-13	2
285	42	2020-11-06	2020-11-13	3
286	157	2020-11-06	2020-11-13	4
290	10	2020-11-06	2020-11-13	5
288	92	2020-11-06	2020-11-13	6
289	158	2020-11-06	2020-11-13	7
292	160	2020-11-06	2020-11-13	8
291	159	2020-11-06	2020-11-13	9
1	1	2020-11-06	2020-11-13	10
293	10	2020-11-06	2020-11-13	11
294	92	2020-11-06	2020-11-13	12
99	21	2020-11-06	2020-11-13	13
296	161	2020-11-06	2020-11-13	14
287	63	2020-11-06	2020-11-13	15
297	162	2020-11-06	2020-11-13	16
484	159	2020-11-06	2020-11-13	17
298	123	2020-11-06	2020-11-13	18
299	163	2020-11-06	2020-11-13	19
200	27	2020-11-06	2020-11-13	20
311	166	2020-11-06	2020-11-13	21
303	77	2020-11-06	2020-11-13	22
301	2	2020-11-06	2020-11-13	23
307	165	2020-11-06	2020-11-13	24
306	164	2020-11-06	2020-11-13	25
21	17	2020-11-06	2020-11-13	26
315	4	2020-11-06	2020-11-13	27
308	74	2020-11-06	2020-11-13	28
305	29	2020-11-06	2020-11-13	29
312	167	2020-11-06	2020-11-13	30
216	122	2020-11-06	2020-11-13	31
310	20	2020-11-06	2020-11-13	32
313	168	2020-11-06	2020-11-13	33
316	130	2020-11-06	2020-11-13	34
647	42	2020-11-06	2020-11-13	35
317	139	2020-11-06	2020-11-13	36
326	159	2020-11-06	2020-11-13	37
36	17	2020-11-06	2020-11-13	38
3	3	2020-11-06	2020-11-13	39
302	63	2020-11-06	2020-11-13	40
329	173	2020-11-06	2020-11-13	41
502	266	2020-11-06	2020-11-13	42
319	169	2020-11-06	2020-11-13	43
7	7	2020-11-06	2020-11-13	44
321	16	2020-11-06	2020-11-13	45
352	126	2020-11-06	2020-11-13	46
295	63	2020-11-06	2020-11-13	47
62	43	2020-11-06	2020-11-13	48
350	16	2020-11-06	2020-11-13	49
325	130	2020-11-06	2020-11-13	50
320	170	2020-11-06	2020-11-13	51
328	21	2020-11-06	2020-11-13	52
337	175	2020-11-06	2020-11-13	53
323	171	2020-11-06	2020-11-13	54
330	48	2020-11-06	2020-11-13	55
349	180	2020-11-06	2020-11-13	56
333	174	2020-11-06	2020-11-13	57
334	32	2020-11-06	2020-11-13	58
327	172	2020-11-06	2020-11-13	59
4	4	2020-11-06	2020-11-13	60
336	92	2020-11-06	2020-11-13	61
331	171	2020-11-06	2020-11-13	62
341	25	2020-11-06	2020-11-13	63
6	6	2020-11-06	2020-11-13	64
511	123	2020-11-06	2020-11-13	65
343	176	2020-11-06	2020-11-13	66
219	124	2020-11-06	2020-11-13	67
345	178	2020-11-06	2020-11-13	68
351	80	2020-11-06	2020-11-13	69
51	28	2020-11-06	2020-11-13	70
342	171	2020-11-06	2020-11-13	71
335	89	2020-11-06	2020-11-13	72
346	48	2020-11-06	2020-11-13	73
23	19	2020-11-06	2020-11-13	74
8	8	2020-11-06	2020-11-13	75
347	4	2020-11-06	2020-11-13	76
204	63	2020-11-06	2020-11-13	77
340	132	2020-11-06	2020-11-13	78
69	48	2020-11-06	2020-11-13	79
27	22	2020-11-06	2020-11-13	80
26	21	2020-11-06	2020-11-13	81
201	52	2020-11-06	2020-11-13	82
158	56	2020-11-06	2020-11-13	83
357	32	2020-11-06	2020-11-13	84
348	179	2020-11-06	2020-11-13	85
54	19	2020-11-06	2020-11-13	86
231	130	2020-11-06	2020-11-13	87
37	29	2020-11-06	2020-11-13	88
5	5	2020-11-06	2020-11-13	89
344	177	2020-11-06	2020-11-13	90
236	134	2020-11-06	2020-11-13	91
150	48	2020-11-06	2020-11-13	92
359	185	2020-11-06	2020-11-13	93
354	182	2020-11-06	2020-11-13	94
400	210	2020-11-06	2020-11-13	95
12	11	2020-11-06	2020-11-13	96
388	37	2020-11-06	2020-11-13	97
367	191	2020-11-06	2020-11-13	98
82	56	2020-11-06	2020-11-13	99
81	52	2020-11-06	2020-11-13	100
355	96	2020-11-06	2020-11-13	101
300	63	2020-11-06	2020-11-13	102
47	34	2020-11-06	2020-11-13	103
33	28	2020-11-06	2020-11-13	104
356	183	2020-11-06	2020-11-13	105
137	51	2020-11-06	2020-11-13	106
12	21	2020-11-06	2020-11-13	107
20	16	2020-11-06	2020-11-13	108
11	4	2020-11-06	2020-11-13	109
68	47	2020-11-06	2020-11-13	110
93	62	2020-11-06	2020-11-13	111
122	20	2020-11-06	2020-11-13	112
10	10	2020-11-06	2020-11-13	113
304	63	2020-11-06	2020-11-13	114
128	80	2020-11-06	2020-11-13	115
155	92	2020-11-06	2020-11-13	116
365	189	2020-11-06	2020-11-13	117
165	56	2020-11-06	2020-11-13	118
361	186	2020-11-06	2020-11-13	119
363	187	2020-11-06	2020-11-13	120
2	2	2020-11-06	2020-11-13	121
353	181	2020-11-06	2020-11-13	122
29	24	2020-11-06	2020-11-13	123
735	331	2020-11-06	2020-11-13	124
260	48	2020-11-06	2020-11-13	125
107	70	2020-11-06	2020-11-13	126
19	15	2020-11-06	2020-11-13	127
95	63	2020-11-06	2020-11-13	128
362	92	2020-11-06	2020-11-13	129
390	206	2020-11-06	2020-11-13	130
360	171	2020-11-06	2020-11-13	131
358	184	2020-11-06	2020-11-13	132
372	85	2020-11-06	2020-11-13	133
369	193	2020-11-06	2020-11-13	134
381	201	2020-11-06	2020-11-13	135
314	63	2020-11-06	2020-11-13	136
364	188	2020-11-06	2020-11-13	137
48	35	2020-11-06	2020-11-13	138
368	192	2020-11-06	2020-11-13	139
733	126	2020-11-06	2020-11-13	140
34	28	2020-11-06	2020-11-13	141
366	190	2020-11-06	2020-11-13	142
138	45	2020-11-06	2020-11-13	143
370	48	2020-11-06	2020-11-13	144
376	197	2020-11-06	2020-11-13	145
385	185	2020-11-06	2020-11-13	146
202	116	2020-11-06	2020-11-13	147
394	194	2020-11-06	2020-11-13	148
378	199	2020-11-06	2020-11-13	149
371	32	2020-11-06	2020-11-13	150
214	68	2020-11-06	2020-11-13	151
174	102	2020-11-06	2020-11-13	152
374	195	2020-11-06	2020-11-13	153
173	101	2020-11-06	2020-11-13	154
58	40	2020-11-06	2020-11-13	155
109	70	2020-11-06	2020-11-13	156
379	172	2020-11-06	2020-11-13	157
415	219	2020-11-06	2020-11-13	158
382	166	2020-11-06	2020-11-13	159
123	45	2020-11-06	2020-11-13	160
375	196	2020-11-06	2020-11-13	161
221	126	2020-11-06	2020-11-13	162
309	63	2020-11-06	2020-11-13	163
383	202	2020-11-06	2020-11-13	164
210	66	2020-11-06	2020-11-13	165
64	45	2020-11-06	2020-11-13	166
318	63	2020-11-06	2020-11-13	167
852	126	2020-11-06	2020-11-13	168
115	73	2020-11-06	2020-11-13	169
391	207	2020-11-06	2020-11-13	170
384	203	2020-11-06	2020-11-13	171
31	26	2020-11-06	2020-11-13	172
380	200	2020-11-06	2020-11-13	173
74	28	2020-11-06	2020-11-13	174
404	214	2020-11-06	2020-11-13	175
94	19	2020-11-06	2020-11-13	176
9	9	2020-11-06	2020-11-13	177
396	159	2020-11-06	2020-11-13	178
406	216	2020-11-06	2020-11-13	179
393	130	2020-11-06	2020-11-13	180
405	215	2020-11-06	2020-11-13	181
118	38	2020-11-06	2020-11-13	182
398	209	2020-11-06	2020-11-13	183
373	194	2020-11-06	2020-11-13	184
386	204	2020-11-06	2020-11-13	185
389	122	2020-11-06	2020-11-13	186
14	13	2020-11-06	2020-11-13	187
399	92	2020-11-06	2020-11-13	188
397	92	2020-11-06	2020-11-13	189
322	63	2020-11-06	2020-11-13	190
408	217	2020-11-06	2020-11-13	191
332	63	2020-11-06	2020-11-13	192
17	1	2020-11-06	2020-11-13	193
75	45	2020-11-06	2020-11-13	194
13	12	2020-11-06	2020-11-13	195
101	67	2020-11-06	2020-11-13	196
116	74	2020-11-06	2020-11-13	197
218	86	2020-11-06	2020-11-13	198
25	20	2020-11-06	2020-11-13	199
70	49	2020-11-06	2020-11-13	200
292	160	2020-08-14	2020-08-21	1
301	2	2020-08-14	2020-08-21	2
216	122	2020-08-14	2020-08-21	3
200	27	2020-08-14	2020-08-21	4
99	21	2020-08-14	2020-08-21	5
1	1	2020-08-14	2020-08-21	6
3	3	2020-08-14	2020-08-21	7
62	43	2020-08-14	2020-08-21	8
370	48	2020-08-14	2020-08-21	9
310	20	2020-08-14	2020-08-21	10
330	48	2020-08-14	2020-08-21	11
336	92	2020-08-14	2020-08-21	12
346	48	2020-08-14	2020-08-21	13
319	169	2020-08-14	2020-08-21	14
297	162	2020-08-14	2020-08-21	15
7	7	2020-08-14	2020-08-21	16
6	6	2020-08-14	2020-08-21	17
231	130	2020-08-14	2020-08-21	18
219	124	2020-08-14	2020-08-21	19
294	92	2020-08-14	2020-08-21	20
201	52	2020-08-14	2020-08-21	21
355	96	2020-08-14	2020-08-21	22
361	186	2020-08-14	2020-08-21	23
312	167	2020-08-14	2020-08-21	24
68	47	2020-08-14	2020-08-21	25
321	16	2020-08-14	2020-08-21	26
334	32	2020-08-14	2020-08-21	27
11	4	2020-08-14	2020-08-21	28
21	17	2020-08-14	2020-08-21	29
362	92	2020-08-14	2020-08-21	30
217	123	2020-08-14	2020-08-21	31
208	39	2020-08-14	2020-08-21	32
291	159	2020-08-14	2020-08-21	33
4	4	2020-08-14	2020-08-21	34
379	172	2020-08-14	2020-08-21	35
36	17	2020-08-14	2020-08-21	36
285	42	2020-08-14	2020-08-21	37
366	190	2020-08-14	2020-08-21	38
236	134	2020-08-14	2020-08-21	39
8	8	2020-08-14	2020-08-21	40
664	28	2020-08-14	2020-08-21	41
665	234	2020-08-14	2020-08-21	42
2	2	2020-08-14	2020-08-21	43
204	63	2020-08-14	2020-08-21	44
137	51	2020-08-14	2020-08-21	45
202	116	2020-08-14	2020-08-21	46
303	77	2020-08-14	2020-08-21	47
342	171	2020-08-14	2020-08-21	48
327	172	2020-08-14	2020-08-21	49
666	234	2020-08-14	2020-08-21	50
209	120	2020-08-14	2020-08-21	51
668	314	2020-08-14	2020-08-21	52
853	352	2020-08-14	2020-08-21	53
5	5	2020-08-14	2020-08-21	54
10	10	2020-08-14	2020-08-21	55
26	21	2020-08-14	2020-08-21	56
23	19	2020-08-14	2020-08-21	57
296	161	2020-08-14	2020-08-21	58
20	16	2020-08-14	2020-08-21	59
158	56	2020-08-14	2020-08-21	60
15	14	2020-08-14	2020-08-21	61
37	29	2020-08-14	2020-08-21	62
54	19	2020-08-14	2020-08-21	63
214	68	2020-08-14	2020-08-21	64
27	22	2020-08-14	2020-08-21	65
12	11	2020-08-14	2020-08-21	66
854	157	2020-08-14	2020-08-21	67
69	48	2020-08-14	2020-08-21	68
13	12	2020-08-14	2020-08-21	69
33	28	2020-08-14	2020-08-21	70
678	315	2020-08-14	2020-08-21	71
82	56	2020-08-14	2020-08-21	72
210	66	2020-08-14	2020-08-21	73
363	187	2020-08-14	2020-08-21	74
17	1	2020-08-14	2020-08-21	75
223	35	2020-08-14	2020-08-21	76
48	35	2020-08-14	2020-08-21	77
9	9	2020-08-14	2020-08-21	78
313	168	2020-08-14	2020-08-21	79
29	24	2020-08-14	2020-08-21	80
155	92	2020-08-14	2020-08-21	81
165	56	2020-08-14	2020-08-21	82
150	48	2020-08-14	2020-08-21	83
203	117	2020-08-14	2020-08-21	84
676	48	2020-08-14	2020-08-21	85
19	15	2020-08-14	2020-08-21	86
667	234	2020-08-14	2020-08-21	87
237	135	2020-08-14	2020-08-21	88
51	28	2020-08-14	2020-08-21	89
397	92	2020-08-14	2020-08-21	90
672	22	2020-08-14	2020-08-21	91
682	90	2020-08-14	2020-08-21	92
34	28	2020-08-14	2020-08-21	93
116	74	2020-08-14	2020-08-21	94
110	32	2020-08-14	2020-08-21	95
364	188	2020-08-14	2020-08-21	96
122	20	2020-08-14	2020-08-21	97
213	33	2020-08-14	2020-08-21	98
205	118	2020-08-14	2020-08-21	99
348	179	2020-08-14	2020-08-21	100
81	52	2020-08-14	2020-08-21	101
398	209	2020-08-14	2020-08-21	102
18	13	2020-08-14	2020-08-21	103
680	48	2020-08-14	2020-08-21	104
14	13	2020-08-14	2020-08-21	105
25	20	2020-08-14	2020-08-21	106
211	121	2020-08-14	2020-08-21	107
93	62	2020-08-14	2020-08-21	108
47	34	2020-08-14	2020-08-21	109
12	21	2020-08-14	2020-08-21	110
230	48	2020-08-14	2020-08-21	111
691	145	2020-08-14	2020-08-21	112
796	108	2020-08-14	2020-08-21	113
31	26	2020-08-14	2020-08-21	114
685	89	2020-08-14	2020-08-21	115
64	45	2020-08-14	2020-08-21	116
30	25	2020-08-14	2020-08-21	117
252	143	2020-08-14	2020-08-21	118
229	84	2020-08-14	2020-08-21	119
222	2	2020-08-14	2020-08-21	120
218	86	2020-08-14	2020-08-21	121
207	119	2020-08-14	2020-08-21	122
227	128	2020-08-14	2020-08-21	123
791	344	2020-08-14	2020-08-21	124
260	48	2020-08-14	2020-08-21	125
690	317	2020-08-14	2020-08-21	126
107	70	2020-08-14	2020-08-21	127
221	126	2020-08-14	2020-08-21	128
16	4	2020-08-14	2020-08-21	129
693	58	2020-08-14	2020-08-21	130
688	110	2020-08-14	2020-08-21	131
95	63	2020-08-14	2020-08-21	132
58	40	2020-08-14	2020-08-21	133
123	45	2020-08-14	2020-08-21	134
94	19	2020-08-14	2020-08-21	135
53	37	2020-08-14	2020-08-21	136
404	214	2020-08-14	2020-08-21	137
115	73	2020-08-14	2020-08-21	138
109	70	2020-08-14	2020-08-21	139
684	48	2020-08-14	2020-08-21	140
138	45	2020-08-14	2020-08-21	141
671	234	2020-08-14	2020-08-21	142
699	33	2020-08-14	2020-08-21	143
75	45	2020-08-14	2020-08-21	144
128	80	2020-08-14	2020-08-21	145
240	137	2020-08-14	2020-08-21	146
669	234	2020-08-14	2020-08-21	147
380	200	2020-08-14	2020-08-21	148
74	28	2020-08-14	2020-08-21	149
24	9	2020-08-14	2020-08-21	150
855	4	2020-08-14	2020-08-21	151
700	74	2020-08-14	2020-08-21	152
708	85	2020-08-14	2020-08-21	153
670	234	2020-08-14	2020-08-21	154
103	68	2020-08-14	2020-08-21	155
56	39	2020-08-14	2020-08-21	156
243	139	2020-08-14	2020-08-21	157
111	71	2020-08-14	2020-08-21	158
118	38	2020-08-14	2020-08-21	159
151	90	2020-08-14	2020-08-21	160
174	102	2020-08-14	2020-08-21	161
706	66	2020-08-14	2020-08-21	162
681	108	2020-08-14	2020-08-21	163
157	93	2020-08-14	2020-08-21	164
182	104	2020-08-14	2020-08-21	165
162	70	2020-08-14	2020-08-21	166
856	353	2020-08-14	2020-08-21	167
245	85	2020-08-14	2020-08-21	168
166	97	2020-08-14	2020-08-21	169
702	319	2020-08-14	2020-08-21	170
262	148	2020-08-14	2020-08-21	171
712	322	2020-08-14	2020-08-21	172
108	48	2020-08-14	2020-08-21	173
795	345	2020-08-14	2020-08-21	174
173	101	2020-08-14	2020-08-21	175
83	57	2020-08-14	2020-08-21	176
70	49	2020-08-14	2020-08-21	177
559	134	2020-08-14	2020-08-21	178
101	67	2020-08-14	2020-08-21	179
228	129	2020-08-14	2020-08-21	180
687	316	2020-08-14	2020-08-21	181
167	4	2020-08-14	2020-08-21	182
238	32	2020-08-14	2020-08-21	183
714	168	2020-08-14	2020-08-21	184
703	190	2020-08-14	2020-08-21	185
264	73	2020-08-14	2020-08-21	186
117	17	2020-08-14	2020-08-21	187
369	193	2020-08-14	2020-08-21	188
797	346	2020-08-14	2020-08-21	189
705	354	2020-08-14	2020-08-21	190
675	234	2020-08-14	2020-08-21	191
857	169	2020-08-14	2020-08-21	192
178	98	2020-08-14	2020-08-21	193
259	147	2020-08-14	2020-08-21	194
140	33	2020-08-14	2020-08-21	195
711	321	2020-08-14	2020-08-21	196
57	131	2020-08-14	2020-08-21	197
146	87	2020-08-14	2020-08-21	198
145	19	2020-08-14	2020-08-21	199
261	104	2020-08-14	2020-08-21	200
292	160	2020-08-28	2020-09-04	1
291	159	2020-08-28	2020-09-04	2
285	42	2020-08-28	2020-09-04	3
289	158	2020-08-28	2020-09-04	4
323	171	2020-08-28	2020-09-04	5
216	122	2020-08-28	2020-09-04	6
99	21	2020-08-28	2020-09-04	7
1	1	2020-08-28	2020-09-04	8
200	27	2020-08-28	2020-09-04	9
301	2	2020-08-28	2020-09-04	10
3	3	2020-08-28	2020-09-04	11
336	92	2020-08-28	2020-09-04	12
62	43	2020-08-28	2020-09-04	13
321	16	2020-08-28	2020-09-04	14
294	92	2020-08-28	2020-09-04	15
310	20	2020-08-28	2020-09-04	16
297	162	2020-08-28	2020-09-04	17
303	77	2020-08-28	2020-09-04	18
312	167	2020-08-28	2020-09-04	19
330	48	2020-08-28	2020-09-04	20
219	124	2020-08-28	2020-09-04	21
334	32	2020-08-28	2020-09-04	22
231	130	2020-08-28	2020-09-04	23
858	301	2020-08-28	2020-09-04	24
7	7	2020-08-28	2020-09-04	25
370	48	2020-08-28	2020-09-04	26
201	52	2020-08-28	2020-09-04	27
286	157	2020-08-28	2020-09-04	28
217	123	2020-08-28	2020-09-04	29
319	169	2020-08-28	2020-09-04	30
6	6	2020-08-28	2020-09-04	31
21	17	2020-08-28	2020-09-04	32
346	48	2020-08-28	2020-09-04	33
361	186	2020-08-28	2020-09-04	34
355	96	2020-08-28	2020-09-04	35
36	17	2020-08-28	2020-09-04	36
296	161	2020-08-28	2020-09-04	37
342	171	2020-08-28	2020-09-04	38
236	134	2020-08-28	2020-09-04	39
4	4	2020-08-28	2020-09-04	40
11	4	2020-08-28	2020-09-04	41
8	8	2020-08-28	2020-09-04	42
379	172	2020-08-28	2020-09-04	43
208	39	2020-08-28	2020-09-04	44
362	92	2020-08-28	2020-09-04	45
366	190	2020-08-28	2020-09-04	46
68	47	2020-08-28	2020-09-04	47
204	63	2020-08-28	2020-09-04	48
391	207	2020-08-28	2020-09-04	49
137	51	2020-08-28	2020-09-04	50
668	314	2020-08-28	2020-09-04	51
202	116	2020-08-28	2020-09-04	52
2	2	2020-08-28	2020-09-04	53
398	209	2020-08-28	2020-09-04	54
23	19	2020-08-28	2020-09-04	55
313	168	2020-08-28	2020-09-04	56
5	5	2020-08-28	2020-09-04	57
26	21	2020-08-28	2020-09-04	58
158	56	2020-08-28	2020-09-04	59
20	16	2020-08-28	2020-09-04	60
343	176	2020-08-28	2020-09-04	61
69	48	2020-08-28	2020-09-04	62
363	187	2020-08-28	2020-09-04	63
665	234	2020-08-28	2020-09-04	64
859	157	2020-08-28	2020-09-04	65
37	29	2020-08-28	2020-09-04	66
12	11	2020-08-28	2020-09-04	67
54	19	2020-08-28	2020-09-04	68
27	22	2020-08-28	2020-09-04	69
10	10	2020-08-28	2020-09-04	70
664	28	2020-08-28	2020-09-04	71
150	48	2020-08-28	2020-09-04	72
209	120	2020-08-28	2020-09-04	73
82	56	2020-08-28	2020-09-04	74
348	179	2020-08-28	2020-09-04	75
33	28	2020-08-28	2020-09-04	76
17	1	2020-08-28	2020-09-04	77
210	66	2020-08-28	2020-09-04	78
380	200	2020-08-28	2020-09-04	79
327	172	2020-08-28	2020-09-04	80
214	68	2020-08-28	2020-09-04	81
860	177	2020-08-28	2020-09-04	82
678	315	2020-08-28	2020-09-04	83
51	28	2020-08-28	2020-09-04	84
155	92	2020-08-28	2020-09-04	85
165	56	2020-08-28	2020-09-04	86
116	74	2020-08-28	2020-09-04	87
48	35	2020-08-28	2020-09-04	88
19	15	2020-08-28	2020-09-04	89
29	24	2020-08-28	2020-09-04	90
682	90	2020-08-28	2020-09-04	91
223	35	2020-08-28	2020-09-04	92
81	52	2020-08-28	2020-09-04	93
9	9	2020-08-28	2020-09-04	94
861	56	2020-08-28	2020-09-04	95
122	20	2020-08-28	2020-09-04	96
203	117	2020-08-28	2020-09-04	97
110	32	2020-08-28	2020-09-04	98
364	188	2020-08-28	2020-09-04	99
666	234	2020-08-28	2020-09-04	100
13	12	2020-08-28	2020-09-04	101
15	14	2020-08-28	2020-09-04	102
47	34	2020-08-28	2020-09-04	103
397	92	2020-08-28	2020-09-04	104
34	28	2020-08-28	2020-09-04	105
93	62	2020-08-28	2020-09-04	106
720	355	2020-08-28	2020-09-04	107
12	21	2020-08-28	2020-09-04	108
25	20	2020-08-28	2020-09-04	109
237	135	2020-08-28	2020-09-04	110
862	88	2020-08-28	2020-09-04	111
326	159	2020-08-28	2020-09-04	112
227	128	2020-08-28	2020-09-04	113
691	145	2020-08-28	2020-09-04	114
393	130	2020-08-28	2020-09-04	115
18	13	2020-08-28	2020-09-04	116
14	13	2020-08-28	2020-09-04	117
211	121	2020-08-28	2020-09-04	118
218	86	2020-08-28	2020-09-04	119
31	26	2020-08-28	2020-09-04	120
64	45	2020-08-28	2020-09-04	121
58	40	2020-08-28	2020-09-04	122
107	70	2020-08-28	2020-09-04	123
260	48	2020-08-28	2020-09-04	124
791	344	2020-08-28	2020-09-04	125
672	22	2020-08-28	2020-09-04	126
229	84	2020-08-28	2020-09-04	127
128	80	2020-08-28	2020-09-04	128
95	63	2020-08-28	2020-09-04	129
404	214	2020-08-28	2020-09-04	130
680	48	2020-08-28	2020-09-04	131
230	48	2020-08-28	2020-09-04	132
30	25	2020-08-28	2020-09-04	133
676	48	2020-08-28	2020-09-04	134
700	74	2020-08-28	2020-09-04	135
138	45	2020-08-28	2020-09-04	136
123	45	2020-08-28	2020-09-04	137
222	2	2020-08-28	2020-09-04	138
94	19	2020-08-28	2020-09-04	139
213	33	2020-08-28	2020-09-04	140
109	70	2020-08-28	2020-09-04	141
115	73	2020-08-28	2020-09-04	142
856	353	2020-08-28	2020-09-04	143
205	118	2020-08-28	2020-09-04	144
240	137	2020-08-28	2020-09-04	145
53	37	2020-08-28	2020-09-04	146
207	119	2020-08-28	2020-09-04	147
863	138	2020-08-28	2020-09-04	148
667	234	2020-08-28	2020-09-04	149
857	169	2020-08-28	2020-09-04	150
74	28	2020-08-28	2020-09-04	151
864	159	2020-08-28	2020-09-04	152
75	45	2020-08-28	2020-09-04	153
16	4	2020-08-28	2020-09-04	154
221	126	2020-08-28	2020-09-04	155
396	159	2020-08-28	2020-09-04	156
729	158	2020-08-28	2020-09-04	157
708	85	2020-08-28	2020-09-04	158
559	134	2020-08-28	2020-09-04	159
853	352	2020-08-28	2020-09-04	160
174	102	2020-08-28	2020-09-04	161
382	166	2020-08-28	2020-09-04	162
24	9	2020-08-28	2020-09-04	163
317	139	2020-08-28	2020-09-04	164
103	68	2020-08-28	2020-09-04	165
688	110	2020-08-28	2020-09-04	166
369	193	2020-08-28	2020-09-04	167
693	58	2020-08-28	2020-09-04	168
157	93	2020-08-28	2020-09-04	169
118	38	2020-08-28	2020-09-04	170
865	356	2020-08-28	2020-09-04	171
699	33	2020-08-28	2020-09-04	172
56	39	2020-08-28	2020-09-04	173
173	101	2020-08-28	2020-09-04	174
182	104	2020-08-28	2020-09-04	175
866	316	2020-08-28	2020-09-04	176
712	322	2020-08-28	2020-09-04	177
166	97	2020-08-28	2020-09-04	178
690	317	2020-08-28	2020-09-04	179
705	354	2020-08-28	2020-09-04	180
101	67	2020-08-28	2020-09-04	181
70	49	2020-08-28	2020-09-04	182
162	70	2020-08-28	2020-09-04	183
252	143	2020-08-28	2020-09-04	184
867	357	2020-08-28	2020-09-04	185
111	71	2020-08-28	2020-09-04	186
117	17	2020-08-28	2020-09-04	187
868	55	2020-08-28	2020-09-04	188
795	345	2020-08-28	2020-09-04	189
706	66	2020-08-28	2020-09-04	190
212	52	2020-08-28	2020-09-04	191
796	108	2020-08-28	2020-09-04	192
401	211	2020-08-28	2020-09-04	193
108	48	2020-08-28	2020-09-04	194
372	85	2020-08-28	2020-09-04	195
243	139	2020-08-28	2020-09-04	196
146	87	2020-08-28	2020-09-04	197
359	185	2020-08-28	2020-09-04	198
702	319	2020-08-28	2020-09-04	199
262	148	2020-08-28	2020-09-04	200
284	13	2020-11-20	2020-11-27	1
289	158	2020-11-20	2020-11-27	2
283	63	2020-11-20	2020-11-27	3
459	158	2020-11-20	2020-11-27	4
435	28	2020-11-20	2020-11-27	5
285	42	2020-11-20	2020-11-27	6
439	29	2020-11-20	2020-11-27	7
286	157	2020-11-20	2020-11-27	8
350	16	2020-11-20	2020-11-27	9
290	10	2020-11-20	2020-11-27	10
444	169	2020-11-20	2020-11-27	11
288	92	2020-11-20	2020-11-27	12
1	1	2020-11-20	2020-11-27	13
292	160	2020-11-20	2020-11-27	14
287	63	2020-11-20	2020-11-27	15
656	158	2020-11-20	2020-11-27	16
291	159	2020-11-20	2020-11-27	17
644	158	2020-11-20	2020-11-27	18
400	210	2020-11-20	2020-11-27	19
99	21	2020-11-20	2020-11-27	20
293	10	2020-11-20	2020-11-27	21
296	161	2020-11-20	2020-11-27	22
294	92	2020-11-20	2020-11-27	23
657	158	2020-11-20	2020-11-27	24
297	162	2020-11-20	2020-11-27	25
658	158	2020-11-20	2020-11-27	26
659	158	2020-11-20	2020-11-27	27
315	4	2020-11-20	2020-11-27	28
298	123	2020-11-20	2020-11-27	29
302	63	2020-11-20	2020-11-27	30
311	166	2020-11-20	2020-11-27	31
415	219	2020-11-20	2020-11-27	32
200	27	2020-11-20	2020-11-27	33
484	159	2020-11-20	2020-11-27	34
303	77	2020-11-20	2020-11-27	35
21	17	2020-11-20	2020-11-27	36
299	163	2020-11-20	2020-11-27	37
307	165	2020-11-20	2020-11-27	38
306	164	2020-11-20	2020-11-27	39
305	29	2020-11-20	2020-11-27	40
349	180	2020-11-20	2020-11-27	41
308	74	2020-11-20	2020-11-27	42
367	191	2020-11-20	2020-11-27	43
301	2	2020-11-20	2020-11-27	44
438	75	2020-11-20	2020-11-27	45
317	139	2020-11-20	2020-11-27	46
312	167	2020-11-20	2020-11-27	47
329	173	2020-11-20	2020-11-27	48
416	63	2020-11-20	2020-11-27	49
326	159	2020-11-20	2020-11-27	50
310	20	2020-11-20	2020-11-27	51
313	168	2020-11-20	2020-11-27	52
316	130	2020-11-20	2020-11-27	53
7	7	2020-11-20	2020-11-27	54
36	17	2020-11-20	2020-11-27	55
418	221	2020-11-20	2020-11-27	56
3	3	2020-11-20	2020-11-27	57
319	169	2020-11-20	2020-11-27	58
417	220	2020-11-20	2020-11-27	59
321	16	2020-11-20	2020-11-27	60
357	32	2020-11-20	2020-11-27	61
328	21	2020-11-20	2020-11-27	62
419	222	2020-11-20	2020-11-27	63
62	43	2020-11-20	2020-11-27	64
216	122	2020-11-20	2020-11-27	65
337	175	2020-11-20	2020-11-27	66
352	126	2020-11-20	2020-11-27	67
330	48	2020-11-20	2020-11-27	68
54	19	2020-11-20	2020-11-27	69
4	4	2020-11-20	2020-11-27	70
325	130	2020-11-20	2020-11-27	71
51	28	2020-11-20	2020-11-27	72
420	223	2020-11-20	2020-11-27	73
388	37	2020-11-20	2020-11-27	74
320	170	2020-11-20	2020-11-27	75
351	80	2020-11-20	2020-11-27	76
333	174	2020-11-20	2020-11-27	77
869	158	2020-11-20	2020-11-27	78
359	185	2020-11-20	2020-11-27	79
6	6	2020-11-20	2020-11-27	80
334	32	2020-11-20	2020-11-27	81
390	206	2020-11-20	2020-11-27	82
23	19	2020-11-20	2020-11-27	83
341	25	2020-11-20	2020-11-27	84
502	266	2020-11-20	2020-11-27	85
345	178	2020-11-20	2020-11-27	86
327	172	2020-11-20	2020-11-27	87
421	224	2020-11-20	2020-11-27	88
346	48	2020-11-20	2020-11-27	89
336	92	2020-11-20	2020-11-27	90
204	63	2020-11-20	2020-11-27	91
69	48	2020-11-20	2020-11-27	92
158	56	2020-11-20	2020-11-27	93
27	22	2020-11-20	2020-11-27	94
37	29	2020-11-20	2020-11-27	95
26	21	2020-11-20	2020-11-27	96
8	8	2020-11-20	2020-11-27	97
343	176	2020-11-20	2020-11-27	98
511	123	2020-11-20	2020-11-27	99
219	124	2020-11-20	2020-11-27	100
5	5	2020-11-20	2020-11-27	101
335	89	2020-11-20	2020-11-27	102
33	28	2020-11-20	2020-11-27	103
323	171	2020-11-20	2020-11-27	104
870	358	2020-11-20	2020-11-27	105
331	171	2020-11-20	2020-11-27	106
82	56	2020-11-20	2020-11-27	107
342	171	2020-11-20	2020-11-27	108
424	10	2020-11-20	2020-11-27	109
81	52	2020-11-20	2020-11-27	110
647	42	2020-11-20	2020-11-27	111
150	48	2020-11-20	2020-11-27	112
201	52	2020-11-20	2020-11-27	113
348	179	2020-11-20	2020-11-27	114
381	201	2020-11-20	2020-11-27	115
20	16	2020-11-20	2020-11-27	116
11	4	2020-11-20	2020-11-27	117
466	18	2020-11-20	2020-11-27	118
12	11	2020-11-20	2020-11-27	119
47	34	2020-11-20	2020-11-27	120
128	80	2020-11-20	2020-11-27	121
347	4	2020-11-20	2020-11-27	122
231	130	2020-11-20	2020-11-27	123
871	352	2020-11-20	2020-11-27	124
12	21	2020-11-20	2020-11-27	125
93	62	2020-11-20	2020-11-27	126
340	132	2020-11-20	2020-11-27	127
422	225	2020-11-20	2020-11-27	128
107	70	2020-11-20	2020-11-27	129
355	96	2020-11-20	2020-11-27	130
354	182	2020-11-20	2020-11-27	131
34	28	2020-11-20	2020-11-27	132
356	183	2020-11-20	2020-11-27	133
155	92	2020-11-20	2020-11-27	134
260	48	2020-11-20	2020-11-27	135
29	24	2020-11-20	2020-11-27	136
122	20	2020-11-20	2020-11-27	137
663	32	2020-11-20	2020-11-27	138
872	359	2020-11-20	2020-11-27	139
165	56	2020-11-20	2020-11-27	140
68	47	2020-11-20	2020-11-27	141
399	92	2020-11-20	2020-11-27	142
425	227	2020-11-20	2020-11-27	143
236	134	2020-11-20	2020-11-27	144
372	85	2020-11-20	2020-11-27	145
138	45	2020-11-20	2020-11-27	146
19	15	2020-11-20	2020-11-27	147
423	226	2020-11-20	2020-11-27	148
295	63	2020-11-20	2020-11-27	149
363	187	2020-11-20	2020-11-27	150
10	10	2020-11-20	2020-11-27	151
48	35	2020-11-20	2020-11-27	152
493	78	2020-11-20	2020-11-27	153
2	2	2020-11-20	2020-11-27	154
429	221	2020-11-20	2020-11-27	155
95	63	2020-11-20	2020-11-27	156
406	216	2020-11-20	2020-11-27	157
428	230	2020-11-20	2020-11-27	158
385	185	2020-11-20	2020-11-27	159
362	92	2020-11-20	2020-11-27	160
109	70	2020-11-20	2020-11-27	161
873	358	2020-11-20	2020-11-27	162
174	102	2020-11-20	2020-11-27	163
115	73	2020-11-20	2020-11-27	164
74	28	2020-11-20	2020-11-27	165
123	45	2020-11-20	2020-11-27	166
137	51	2020-11-20	2020-11-27	167
729	158	2020-11-20	2020-11-27	168
426	228	2020-11-20	2020-11-27	169
368	192	2020-11-20	2020-11-27	170
361	186	2020-11-20	2020-11-27	171
369	193	2020-11-20	2020-11-27	172
173	101	2020-11-20	2020-11-27	173
874	358	2020-11-20	2020-11-27	174
64	45	2020-11-20	2020-11-27	175
58	40	2020-11-20	2020-11-27	176
366	190	2020-11-20	2020-11-27	177
733	126	2020-11-20	2020-11-27	178
470	253	2020-11-20	2020-11-27	179
31	26	2020-11-20	2020-11-27	180
370	48	2020-11-20	2020-11-27	181
408	217	2020-11-20	2020-11-27	182
214	68	2020-11-20	2020-11-27	183
94	19	2020-11-20	2020-11-27	184
360	171	2020-11-20	2020-11-27	185
17	1	2020-11-20	2020-11-27	186
389	122	2020-11-20	2020-11-27	187
875	360	2020-11-20	2020-11-27	188
118	38	2020-11-20	2020-11-27	189
655	232	2020-11-20	2020-11-27	190
737	249	2020-11-20	2020-11-27	191
876	358	2020-11-20	2020-11-27	192
394	194	2020-11-20	2020-11-27	193
404	214	2020-11-20	2020-11-27	194
70	49	2020-11-20	2020-11-27	195
374	195	2020-11-20	2020-11-27	196
382	166	2020-11-20	2020-11-27	197
430	231	2020-11-20	2020-11-27	198
9	9	2020-11-20	2020-11-27	199
202	116	2020-11-20	2020-11-27	200
285	42	2020-10-02	2020-10-09	1
292	160	2020-10-02	2020-10-09	2
289	158	2020-10-02	2020-10-09	3
286	157	2020-10-02	2020-10-09	4
291	159	2020-10-02	2020-10-09	5
331	171	2020-10-02	2020-10-09	6
294	92	2020-10-02	2020-10-09	7
1	1	2020-10-02	2020-10-09	8
293	10	2020-10-02	2020-10-09	9
99	21	2020-10-02	2020-10-09	10
715	171	2020-10-02	2020-10-09	11
305	29	2020-10-02	2020-10-09	12
288	92	2020-10-02	2020-10-09	13
297	162	2020-10-02	2020-10-09	14
323	171	2020-10-02	2020-10-09	15
200	27	2020-10-02	2020-10-09	16
301	2	2020-10-02	2020-10-09	17
296	161	2020-10-02	2020-10-09	18
216	122	2020-10-02	2020-10-09	19
298	123	2020-10-02	2020-10-09	20
303	77	2020-10-02	2020-10-09	21
360	171	2020-10-02	2020-10-09	22
342	171	2020-10-02	2020-10-09	23
394	194	2020-10-02	2020-10-09	24
373	194	2020-10-02	2020-10-09	25
3	3	2020-10-02	2020-10-09	26
327	172	2020-10-02	2020-10-09	27
310	20	2020-10-02	2020-10-09	28
62	43	2020-10-02	2020-10-09	29
312	167	2020-10-02	2020-10-09	30
321	16	2020-10-02	2020-10-09	31
718	171	2020-10-02	2020-10-09	32
21	17	2020-10-02	2020-10-09	33
299	163	2020-10-02	2020-10-09	34
717	171	2020-10-02	2020-10-09	35
313	168	2020-10-02	2020-10-09	36
336	92	2020-10-02	2020-10-09	37
7	7	2020-10-02	2020-10-09	38
308	74	2020-10-02	2020-10-09	39
36	17	2020-10-02	2020-10-09	40
389	122	2020-10-02	2020-10-09	41
334	32	2020-10-02	2020-10-09	42
306	164	2020-10-02	2020-10-09	43
330	48	2020-10-02	2020-10-09	44
219	124	2020-10-02	2020-10-09	45
721	171	2020-10-02	2020-10-09	46
319	169	2020-10-02	2020-10-09	47
325	130	2020-10-02	2020-10-09	48
320	170	2020-10-02	2020-10-09	49
6	6	2020-10-02	2020-10-09	50
407	56	2020-10-02	2020-10-09	51
231	130	2020-10-02	2020-10-09	52
723	194	2020-10-02	2020-10-09	53
307	165	2020-10-02	2020-10-09	54
346	48	2020-10-02	2020-10-09	55
348	179	2020-10-02	2020-10-09	56
316	130	2020-10-02	2020-10-09	57
4	4	2020-10-02	2020-10-09	58
343	176	2020-10-02	2020-10-09	59
355	96	2020-10-02	2020-10-09	60
201	52	2020-10-02	2020-10-09	61
236	134	2020-10-02	2020-10-09	62
354	182	2020-10-02	2020-10-09	63
8	8	2020-10-02	2020-10-09	64
877	194	2020-10-02	2020-10-09	65
204	63	2020-10-02	2020-10-09	66
23	19	2020-10-02	2020-10-09	67
878	194	2020-10-02	2020-10-09	68
158	56	2020-10-02	2020-10-09	69
361	186	2020-10-02	2020-10-09	70
137	51	2020-10-02	2020-10-09	71
37	29	2020-10-02	2020-10-09	72
11	4	2020-10-02	2020-10-09	73
26	21	2020-10-02	2020-10-09	74
68	47	2020-10-02	2020-10-09	75
402	212	2020-10-02	2020-10-09	76
879	194	2020-10-02	2020-10-09	77
317	139	2020-10-02	2020-10-09	78
27	22	2020-10-02	2020-10-09	79
5	5	2020-10-02	2020-10-09	80
379	172	2020-10-02	2020-10-09	81
362	92	2020-10-02	2020-10-09	82
69	48	2020-10-02	2020-10-09	83
880	361	2020-10-02	2020-10-09	84
333	174	2020-10-02	2020-10-09	85
150	48	2020-10-02	2020-10-09	86
82	56	2020-10-02	2020-10-09	87
370	48	2020-10-02	2020-10-09	88
10	10	2020-10-02	2020-10-09	89
366	190	2020-10-02	2020-10-09	90
2	2	2020-10-02	2020-10-09	91
335	89	2020-10-02	2020-10-09	92
12	11	2020-10-02	2020-10-09	93
54	19	2020-10-02	2020-10-09	94
81	52	2020-10-02	2020-10-09	95
51	28	2020-10-02	2020-10-09	96
33	28	2020-10-02	2020-10-09	97
374	195	2020-10-02	2020-10-09	98
398	209	2020-10-02	2020-10-09	99
380	200	2020-10-02	2020-10-09	100
165	56	2020-10-02	2020-10-09	101
20	16	2020-10-02	2020-10-09	102
363	187	2020-10-02	2020-10-09	103
391	207	2020-10-02	2020-10-09	104
368	192	2020-10-02	2020-10-09	105
326	159	2020-10-02	2020-10-09	106
202	116	2020-10-02	2020-10-09	107
668	314	2020-10-02	2020-10-09	108
155	92	2020-10-02	2020-10-09	109
47	34	2020-10-02	2020-10-09	110
356	183	2020-10-02	2020-10-09	111
116	74	2020-10-02	2020-10-09	112
29	24	2020-10-02	2020-10-09	113
719	325	2020-10-02	2020-10-09	114
93	62	2020-10-02	2020-10-09	115
724	327	2020-10-02	2020-10-09	116
48	35	2020-10-02	2020-10-09	117
12	21	2020-10-02	2020-10-09	118
19	15	2020-10-02	2020-10-09	119
375	196	2020-10-02	2020-10-09	120
217	123	2020-10-02	2020-10-09	121
208	39	2020-10-02	2020-10-09	122
730	179	2020-10-02	2020-10-09	123
128	80	2020-10-02	2020-10-09	124
17	1	2020-10-02	2020-10-09	125
214	68	2020-10-02	2020-10-09	126
364	188	2020-10-02	2020-10-09	127
393	130	2020-10-02	2020-10-09	128
122	20	2020-10-02	2020-10-09	129
372	85	2020-10-02	2020-10-09	130
881	194	2020-10-02	2020-10-09	131
210	66	2020-10-02	2020-10-09	132
337	175	2020-10-02	2020-10-09	133
359	185	2020-10-02	2020-10-09	134
107	70	2020-10-02	2020-10-09	135
34	28	2020-10-02	2020-10-09	136
399	92	2020-10-02	2020-10-09	137
882	194	2020-10-02	2020-10-09	138
883	194	2020-10-02	2020-10-09	139
678	315	2020-10-02	2020-10-09	140
315	4	2020-10-02	2020-10-09	141
397	92	2020-10-02	2020-10-09	142
203	117	2020-10-02	2020-10-09	143
9	9	2020-10-02	2020-10-09	144
64	45	2020-10-02	2020-10-09	145
396	159	2020-10-02	2020-10-09	146
138	45	2020-10-02	2020-10-09	147
369	193	2020-10-02	2020-10-09	148
722	68	2020-10-02	2020-10-09	149
720	355	2020-10-02	2020-10-09	150
660	169	2020-10-02	2020-10-09	151
260	48	2020-10-02	2020-10-09	152
884	157	2020-10-02	2020-10-09	153
25	20	2020-10-02	2020-10-09	154
123	45	2020-10-02	2020-10-09	155
13	12	2020-10-02	2020-10-09	156
174	102	2020-10-02	2020-10-09	157
95	63	2020-10-02	2020-10-09	158
382	166	2020-10-02	2020-10-09	159
209	120	2020-10-02	2020-10-09	160
403	213	2020-10-02	2020-10-09	161
115	73	2020-10-02	2020-10-09	162
211	121	2020-10-02	2020-10-09	163
109	70	2020-10-02	2020-10-09	164
218	86	2020-10-02	2020-10-09	165
15	14	2020-10-02	2020-10-09	166
31	26	2020-10-02	2020-10-09	167
665	234	2020-10-02	2020-10-09	168
173	101	2020-10-02	2020-10-09	169
94	19	2020-10-02	2020-10-09	170
404	214	2020-10-02	2020-10-09	171
885	153	2020-10-02	2020-10-09	172
18	13	2020-10-02	2020-10-09	173
58	40	2020-10-02	2020-10-09	174
14	13	2020-10-02	2020-10-09	175
700	74	2020-10-02	2020-10-09	176
75	45	2020-10-02	2020-10-09	177
664	28	2020-10-02	2020-10-09	178
886	194	2020-10-02	2020-10-09	179
240	137	2020-10-02	2020-10-09	180
118	38	2020-10-02	2020-10-09	181
887	362	2020-10-02	2020-10-09	182
381	201	2020-10-02	2020-10-09	183
74	28	2020-10-02	2020-10-09	184
729	158	2020-10-02	2020-10-09	185
691	145	2020-10-02	2020-10-09	186
110	32	2020-10-02	2020-10-09	187
103	68	2020-10-02	2020-10-09	188
166	97	2020-10-02	2020-10-09	189
888	194	2020-10-02	2020-10-09	190
728	329	2020-10-02	2020-10-09	191
53	37	2020-10-02	2020-10-09	192
329	173	2020-10-02	2020-10-09	193
401	211	2020-10-02	2020-10-09	194
682	90	2020-10-02	2020-10-09	195
726	45	2020-10-02	2020-10-09	196
889	194	2020-10-02	2020-10-09	197
385	185	2020-10-02	2020-10-09	198
727	45	2020-10-02	2020-10-09	199
101	67	2020-10-02	2020-10-09	200
7	7	2020-01-10	2020-01-17	1
5	5	2020-01-10	2020-01-17	2
29	24	2020-01-10	2020-01-17	3
43	10	2020-01-10	2020-01-17	4
20	16	2020-01-10	2020-01-17	5
19	15	2020-01-10	2020-01-17	6
1	1	2020-01-10	2020-01-17	7
4	4	2020-01-10	2020-01-17	8
12	11	2020-01-10	2020-01-17	9
27	22	2020-01-10	2020-01-17	10
23	19	2020-01-10	2020-01-17	11
515	64	2020-01-10	2020-01-17	12
34	28	2020-01-10	2020-01-17	13
97	64	2020-01-10	2020-01-17	14
56	39	2020-01-10	2020-01-17	15
37	29	2020-01-10	2020-01-17	16
21	17	2020-01-10	2020-01-17	17
518	273	2020-01-10	2020-01-17	18
26	21	2020-01-10	2020-01-17	19
60	41	2020-01-10	2020-01-17	20
33	28	2020-01-10	2020-01-17	21
58	40	2020-01-10	2020-01-17	22
102	27	2020-01-10	2020-01-17	23
55	38	2020-01-10	2020-01-17	24
59	13	2020-01-10	2020-01-17	25
48	35	2020-01-10	2020-01-17	26
49	36	2020-01-10	2020-01-17	27
36	17	2020-01-10	2020-01-17	28
99	21	2020-01-10	2020-01-17	29
144	86	2020-01-10	2020-01-17	30
82	56	2020-01-10	2020-01-17	31
113	54	2020-01-10	2020-01-17	32
64	45	2020-01-10	2020-01-17	33
108	48	2020-01-10	2020-01-17	34
527	50	2020-01-10	2020-01-17	35
54	19	2020-01-10	2020-01-17	36
132	32	2020-01-10	2020-01-17	37
53	37	2020-01-10	2020-01-17	38
106	66	2020-01-10	2020-01-17	39
517	272	2020-01-10	2020-01-17	40
67	1	2020-01-10	2020-01-17	41
83	57	2020-01-10	2020-01-17	42
79	55	2020-01-10	2020-01-17	43
75	45	2020-01-10	2020-01-17	44
69	48	2020-01-10	2020-01-17	45
9	9	2020-01-10	2020-01-17	46
133	82	2020-01-10	2020-01-17	47
536	56	2020-01-10	2020-01-17	48
160	89	2020-01-10	2020-01-17	49
528	45	2020-01-10	2020-01-17	50
525	53	2020-01-10	2020-01-17	51
3	3	2020-01-10	2020-01-17	52
70	49	2020-01-10	2020-01-17	53
521	78	2020-01-10	2020-01-17	54
544	280	2020-01-10	2020-01-17	55
601	64	2020-01-10	2020-01-17	56
121	20	2020-01-10	2020-01-17	57
87	59	2020-01-10	2020-01-17	58
95	63	2020-01-10	2020-01-17	59
47	34	2020-01-10	2020-01-17	60
125	78	2020-01-10	2020-01-17	61
147	13	2020-01-10	2020-01-17	62
141	84	2020-01-10	2020-01-17	63
114	19	2020-01-10	2020-01-17	64
52	20	2020-01-10	2020-01-17	65
526	186	2020-01-10	2020-01-17	66
531	276	2020-01-10	2020-01-17	67
51	28	2020-01-10	2020-01-17	68
535	27	2020-01-10	2020-01-17	69
74	28	2020-01-10	2020-01-17	70
523	27	2020-01-10	2020-01-17	71
119	75	2020-01-10	2020-01-17	72
81	52	2020-01-10	2020-01-17	73
104	69	2020-01-10	2020-01-17	74
563	110	2020-01-10	2020-01-17	75
529	196	2020-01-10	2020-01-17	76
135	20	2020-01-10	2020-01-17	77
537	277	2020-01-10	2020-01-17	78
91	61	2020-01-10	2020-01-17	79
111	71	2020-01-10	2020-01-17	80
590	106	2020-01-10	2020-01-17	81
146	87	2020-01-10	2020-01-17	82
103	68	2020-01-10	2020-01-17	83
542	112	2020-01-10	2020-01-17	84
530	111	2020-01-10	2020-01-17	85
191	110	2020-01-10	2020-01-17	86
890	64	2020-01-10	2020-01-17	87
175	21	2020-01-10	2020-01-17	88
145	19	2020-01-10	2020-01-17	89
891	64	2020-01-10	2020-01-17	90
150	48	2020-01-10	2020-01-17	91
561	285	2020-01-10	2020-01-17	92
139	60	2020-01-10	2020-01-17	93
12	21	2020-01-10	2020-01-17	94
541	279	2020-01-10	2020-01-17	95
532	55	2020-01-10	2020-01-17	96
131	2	2020-01-10	2020-01-17	97
118	38	2020-01-10	2020-01-17	98
94	19	2020-01-10	2020-01-17	99
93	62	2020-01-10	2020-01-17	100
539	278	2020-01-10	2020-01-17	101
545	281	2020-01-10	2020-01-17	102
156	37	2020-01-10	2020-01-17	103
163	95	2020-01-10	2020-01-17	104
117	17	2020-01-10	2020-01-17	105
115	73	2020-01-10	2020-01-17	106
892	64	2020-01-10	2020-01-17	107
123	45	2020-01-10	2020-01-17	108
546	123	2020-01-10	2020-01-17	109
179	105	2020-01-10	2020-01-17	110
893	64	2020-01-10	2020-01-17	111
282	74	2020-01-10	2020-01-17	112
548	120	2020-01-10	2020-01-17	113
165	56	2020-01-10	2020-01-17	114
50	5	2020-01-10	2020-01-17	115
549	112	2020-01-10	2020-01-17	116
543	15	2020-01-10	2020-01-17	117
153	51	2020-01-10	2020-01-17	118
894	64	2020-01-10	2020-01-17	119
105	7	2020-01-10	2020-01-17	120
586	41	2020-01-10	2020-01-17	121
168	89	2020-01-10	2020-01-17	122
552	111	2020-01-10	2020-01-17	123
559	134	2020-01-10	2020-01-17	124
109	70	2020-01-10	2020-01-17	125
574	27	2020-01-10	2020-01-17	126
185	22	2020-01-10	2020-01-17	127
558	278	2020-01-10	2020-01-17	128
159	94	2020-01-10	2020-01-17	129
187	63	2020-01-10	2020-01-17	130
140	33	2020-01-10	2020-01-17	131
575	56	2020-01-10	2020-01-17	132
534	28	2020-01-10	2020-01-17	133
602	53	2020-01-10	2020-01-17	134
569	289	2020-01-10	2020-01-17	135
101	67	2020-01-10	2020-01-17	136
130	67	2020-01-10	2020-01-17	137
128	80	2020-01-10	2020-01-17	138
557	154	2020-01-10	2020-01-17	139
184	19	2020-01-10	2020-01-17	140
594	54	2020-01-10	2020-01-17	141
154	28	2020-01-10	2020-01-17	142
609	299	2020-01-10	2020-01-17	143
600	255	2020-01-10	2020-01-17	144
158	56	2020-01-10	2020-01-17	145
566	120	2020-01-10	2020-01-17	146
576	196	2020-01-10	2020-01-17	147
138	45	2020-01-10	2020-01-17	148
188	107	2020-01-10	2020-01-17	149
573	292	2020-01-10	2020-01-17	150
584	294	2020-01-10	2020-01-17	151
564	286	2020-01-10	2020-01-17	152
107	70	2020-01-10	2020-01-17	153
124	77	2020-01-10	2020-01-17	154
580	60	2020-01-10	2020-01-17	155
547	282	2020-01-10	2020-01-17	156
570	20	2020-01-10	2020-01-17	157
571	290	2020-01-10	2020-01-17	158
176	103	2020-01-10	2020-01-17	159
183	29	2020-01-10	2020-01-17	160
895	64	2020-01-10	2020-01-17	161
581	123	2020-01-10	2020-01-17	162
583	293	2020-01-10	2020-01-17	163
178	98	2020-01-10	2020-01-17	164
589	75	2020-01-10	2020-01-17	165
896	64	2020-01-10	2020-01-17	166
173	101	2020-01-10	2020-01-17	167
582	53	2020-01-10	2020-01-17	168
162	70	2020-01-10	2020-01-17	169
608	8	2020-01-10	2020-01-17	170
592	293	2020-01-10	2020-01-17	171
181	106	2020-01-10	2020-01-17	172
613	19	2020-01-10	2020-01-17	173
568	139	2020-01-10	2020-01-17	174
177	104	2020-01-10	2020-01-17	175
897	5	2020-01-10	2020-01-17	176
605	48	2020-01-10	2020-01-17	177
170	99	2020-01-10	2020-01-17	178
578	38	2020-01-10	2020-01-17	179
174	102	2020-01-10	2020-01-17	180
199	115	2020-01-10	2020-01-17	181
898	5	2020-01-10	2020-01-17	182
279	153	2020-01-10	2020-01-17	183
618	159	2020-01-10	2020-01-17	184
616	303	2020-01-10	2020-01-17	185
556	234	2020-01-10	2020-01-17	186
899	18	2020-01-10	2020-01-17	187
186	2	2020-01-10	2020-01-17	188
551	28	2020-01-10	2020-01-17	189
610	300	2020-01-10	2020-01-17	190
625	307	2020-01-10	2020-01-17	191
261	104	2020-01-10	2020-01-17	192
587	295	2020-01-10	2020-01-17	193
607	298	2020-01-10	2020-01-17	194
900	64	2020-01-10	2020-01-17	195
901	64	2020-01-10	2020-01-17	196
182	104	2020-01-10	2020-01-17	197
622	62	2020-01-10	2020-01-17	198
624	306	2020-01-10	2020-01-17	199
615	289	2020-01-10	2020-01-17	200
292	160	2020-08-21	2020-08-28	1
289	158	2020-08-21	2020-08-28	2
291	159	2020-08-21	2020-08-28	3
216	122	2020-08-21	2020-08-28	4
301	2	2020-08-21	2020-08-28	5
99	21	2020-08-21	2020-08-28	6
200	27	2020-08-21	2020-08-28	7
1	1	2020-08-21	2020-08-28	8
285	42	2020-08-21	2020-08-28	9
3	3	2020-08-21	2020-08-28	10
62	43	2020-08-21	2020-08-28	11
336	92	2020-08-21	2020-08-28	12
310	20	2020-08-21	2020-08-28	13
297	162	2020-08-21	2020-08-28	14
294	92	2020-08-21	2020-08-28	15
330	48	2020-08-21	2020-08-28	16
321	16	2020-08-21	2020-08-28	17
219	124	2020-08-21	2020-08-28	18
231	130	2020-08-21	2020-08-28	19
370	48	2020-08-21	2020-08-28	20
303	77	2020-08-21	2020-08-28	21
7	7	2020-08-21	2020-08-28	22
312	167	2020-08-21	2020-08-28	23
346	48	2020-08-21	2020-08-28	24
6	6	2020-08-21	2020-08-28	25
334	32	2020-08-21	2020-08-28	26
361	186	2020-08-21	2020-08-28	27
319	169	2020-08-21	2020-08-28	28
217	123	2020-08-21	2020-08-28	29
21	17	2020-08-21	2020-08-28	30
355	96	2020-08-21	2020-08-28	31
201	52	2020-08-21	2020-08-28	32
68	47	2020-08-21	2020-08-28	33
208	39	2020-08-21	2020-08-28	34
36	17	2020-08-21	2020-08-28	35
11	4	2020-08-21	2020-08-28	36
362	92	2020-08-21	2020-08-28	37
366	190	2020-08-21	2020-08-28	38
379	172	2020-08-21	2020-08-28	39
4	4	2020-08-21	2020-08-28	40
236	134	2020-08-21	2020-08-28	41
8	8	2020-08-21	2020-08-28	42
854	157	2020-08-21	2020-08-28	43
342	171	2020-08-21	2020-08-28	44
296	161	2020-08-21	2020-08-28	45
137	51	2020-08-21	2020-08-28	46
204	63	2020-08-21	2020-08-28	47
2	2	2020-08-21	2020-08-28	48
202	116	2020-08-21	2020-08-28	49
668	314	2020-08-21	2020-08-28	50
664	28	2020-08-21	2020-08-28	51
665	234	2020-08-21	2020-08-28	52
5	5	2020-08-21	2020-08-28	53
23	19	2020-08-21	2020-08-28	54
26	21	2020-08-21	2020-08-28	55
158	56	2020-08-21	2020-08-28	56
209	120	2020-08-21	2020-08-28	57
20	16	2020-08-21	2020-08-28	58
327	172	2020-08-21	2020-08-28	59
10	10	2020-08-21	2020-08-28	60
363	187	2020-08-21	2020-08-28	61
37	29	2020-08-21	2020-08-28	62
313	168	2020-08-21	2020-08-28	63
27	22	2020-08-21	2020-08-28	64
12	11	2020-08-21	2020-08-28	65
54	19	2020-08-21	2020-08-28	66
69	48	2020-08-21	2020-08-28	67
82	56	2020-08-21	2020-08-28	68
33	28	2020-08-21	2020-08-28	69
214	68	2020-08-21	2020-08-28	70
861	56	2020-08-21	2020-08-28	71
666	234	2020-08-21	2020-08-28	72
391	207	2020-08-21	2020-08-28	73
210	66	2020-08-21	2020-08-28	74
17	1	2020-08-21	2020-08-28	75
398	209	2020-08-21	2020-08-28	76
678	315	2020-08-21	2020-08-28	77
165	56	2020-08-21	2020-08-28	78
150	48	2020-08-21	2020-08-28	79
48	35	2020-08-21	2020-08-28	80
203	117	2020-08-21	2020-08-28	81
223	35	2020-08-21	2020-08-28	82
155	92	2020-08-21	2020-08-28	83
682	90	2020-08-21	2020-08-28	84
9	9	2020-08-21	2020-08-28	85
791	344	2020-08-21	2020-08-28	86
51	28	2020-08-21	2020-08-28	87
15	14	2020-08-21	2020-08-28	88
19	15	2020-08-21	2020-08-28	89
29	24	2020-08-21	2020-08-28	90
862	88	2020-08-21	2020-08-28	91
13	12	2020-08-21	2020-08-28	92
116	74	2020-08-21	2020-08-28	93
81	52	2020-08-21	2020-08-28	94
122	20	2020-08-21	2020-08-28	95
380	200	2020-08-21	2020-08-28	96
110	32	2020-08-21	2020-08-28	97
397	92	2020-08-21	2020-08-28	98
364	188	2020-08-21	2020-08-28	99
237	135	2020-08-21	2020-08-28	100
343	176	2020-08-21	2020-08-28	101
348	179	2020-08-21	2020-08-28	102
34	28	2020-08-21	2020-08-28	103
93	62	2020-08-21	2020-08-28	104
25	20	2020-08-21	2020-08-28	105
47	34	2020-08-21	2020-08-28	106
720	355	2020-08-21	2020-08-28	107
18	13	2020-08-21	2020-08-28	108
12	21	2020-08-21	2020-08-28	109
213	33	2020-08-21	2020-08-28	110
672	22	2020-08-21	2020-08-28	111
205	118	2020-08-21	2020-08-28	112
14	13	2020-08-21	2020-08-28	113
211	121	2020-08-21	2020-08-28	114
667	234	2020-08-21	2020-08-28	115
227	128	2020-08-21	2020-08-28	116
680	48	2020-08-21	2020-08-28	117
64	45	2020-08-21	2020-08-28	118
326	159	2020-08-21	2020-08-28	119
393	130	2020-08-21	2020-08-28	120
676	48	2020-08-21	2020-08-28	121
31	26	2020-08-21	2020-08-28	122
260	48	2020-08-21	2020-08-28	123
691	145	2020-08-21	2020-08-28	124
853	352	2020-08-21	2020-08-28	125
229	84	2020-08-21	2020-08-28	126
218	86	2020-08-21	2020-08-28	127
729	158	2020-08-21	2020-08-28	128
107	70	2020-08-21	2020-08-28	129
58	40	2020-08-21	2020-08-28	130
30	25	2020-08-21	2020-08-28	131
230	48	2020-08-21	2020-08-28	132
222	2	2020-08-21	2020-08-28	133
207	119	2020-08-21	2020-08-28	134
95	63	2020-08-21	2020-08-28	135
123	45	2020-08-21	2020-08-28	136
690	317	2020-08-21	2020-08-28	137
404	214	2020-08-21	2020-08-28	138
128	80	2020-08-21	2020-08-28	139
109	70	2020-08-21	2020-08-28	140
94	19	2020-08-21	2020-08-28	141
866	316	2020-08-21	2020-08-28	142
700	74	2020-08-21	2020-08-28	143
240	137	2020-08-21	2020-08-28	144
902	347	2020-08-21	2020-08-28	145
138	45	2020-08-21	2020-08-28	146
115	73	2020-08-21	2020-08-28	147
763	158	2020-08-21	2020-08-28	148
53	37	2020-08-21	2020-08-28	149
16	4	2020-08-21	2020-08-28	150
693	58	2020-08-21	2020-08-28	151
74	28	2020-08-21	2020-08-28	152
221	126	2020-08-21	2020-08-28	153
75	45	2020-08-21	2020-08-28	154
856	353	2020-08-21	2020-08-28	155
252	143	2020-08-21	2020-08-28	156
708	85	2020-08-21	2020-08-28	157
688	110	2020-08-21	2020-08-28	158
864	159	2020-08-21	2020-08-28	159
24	9	2020-08-21	2020-08-28	160
699	33	2020-08-21	2020-08-28	161
103	68	2020-08-21	2020-08-28	162
857	169	2020-08-21	2020-08-28	163
174	102	2020-08-21	2020-08-28	164
685	89	2020-08-21	2020-08-28	165
684	48	2020-08-21	2020-08-28	166
118	38	2020-08-21	2020-08-28	167
56	39	2020-08-21	2020-08-28	168
182	104	2020-08-21	2020-08-28	169
111	71	2020-08-21	2020-08-28	170
243	139	2020-08-21	2020-08-28	171
705	354	2020-08-21	2020-08-28	172
166	97	2020-08-21	2020-08-28	173
151	90	2020-08-21	2020-08-28	174
796	108	2020-08-21	2020-08-28	175
162	70	2020-08-21	2020-08-28	176
903	363	2020-08-21	2020-08-28	177
706	66	2020-08-21	2020-08-28	178
173	101	2020-08-21	2020-08-28	179
712	322	2020-08-21	2020-08-28	180
157	93	2020-08-21	2020-08-28	181
559	134	2020-08-21	2020-08-28	182
382	166	2020-08-21	2020-08-28	183
369	193	2020-08-21	2020-08-28	184
671	234	2020-08-21	2020-08-28	185
70	49	2020-08-21	2020-08-28	186
101	67	2020-08-21	2020-08-28	187
904	40	2020-08-21	2020-08-28	188
262	148	2020-08-21	2020-08-28	189
372	85	2020-08-21	2020-08-28	190
108	48	2020-08-21	2020-08-28	191
795	345	2020-08-21	2020-08-28	192
117	17	2020-08-21	2020-08-28	193
146	87	2020-08-21	2020-08-28	194
83	57	2020-08-21	2020-08-28	195
739	158	2020-08-21	2020-08-28	196
264	73	2020-08-21	2020-08-28	197
259	147	2020-08-21	2020-08-28	198
178	98	2020-08-21	2020-08-28	199
669	234	2020-08-21	2020-08-28	200
200	27	2020-07-17	2020-07-24	1
216	122	2020-07-17	2020-07-24	2
1	1	2020-07-17	2020-07-24	3
99	21	2020-07-17	2020-07-24	4
3	3	2020-07-17	2020-07-24	5
330	48	2020-07-17	2020-07-24	6
327	172	2020-07-17	2020-07-24	7
346	48	2020-07-17	2020-07-24	8
62	43	2020-07-17	2020-07-24	9
6	6	2020-07-17	2020-07-24	10
201	52	2020-07-17	2020-07-24	11
7	7	2020-07-17	2020-07-24	12
68	47	2020-07-17	2020-07-24	13
219	124	2020-07-17	2020-07-24	14
355	96	2020-07-17	2020-07-24	15
342	171	2020-07-17	2020-07-24	16
2	2	2020-07-17	2020-07-24	17
11	4	2020-07-17	2020-07-24	18
208	39	2020-07-17	2020-07-24	19
4	4	2020-07-17	2020-07-24	20
8	8	2020-07-17	2020-07-24	21
379	172	2020-07-17	2020-07-24	22
831	116	2020-07-17	2020-07-24	23
217	123	2020-07-17	2020-07-24	24
362	92	2020-07-17	2020-07-24	25
204	63	2020-07-17	2020-07-24	26
231	130	2020-07-17	2020-07-24	27
209	120	2020-07-17	2020-07-24	28
21	17	2020-07-17	2020-07-24	29
334	32	2020-07-17	2020-07-24	30
361	186	2020-07-17	2020-07-24	31
15	14	2020-07-17	2020-07-24	32
684	48	2020-07-17	2020-07-24	33
36	17	2020-07-17	2020-07-24	34
676	48	2020-07-17	2020-07-24	35
294	92	2020-07-17	2020-07-24	36
312	167	2020-07-17	2020-07-24	37
680	48	2020-07-17	2020-07-24	38
10	10	2020-07-17	2020-07-24	39
5	5	2020-07-17	2020-07-24	40
230	48	2020-07-17	2020-07-24	41
13	12	2020-07-17	2020-07-24	42
236	134	2020-07-17	2020-07-24	43
203	117	2020-07-17	2020-07-24	44
366	190	2020-07-17	2020-07-24	45
23	19	2020-07-17	2020-07-24	46
137	51	2020-07-17	2020-07-24	47
20	16	2020-07-17	2020-07-24	48
9	9	2020-07-17	2020-07-24	49
17	1	2020-07-17	2020-07-24	50
214	68	2020-07-17	2020-07-24	51
37	29	2020-07-17	2020-07-24	52
158	56	2020-07-17	2020-07-24	53
12	11	2020-07-17	2020-07-24	54
26	21	2020-07-17	2020-07-24	55
207	119	2020-07-17	2020-07-24	56
27	22	2020-07-17	2020-07-24	57
211	121	2020-07-17	2020-07-24	58
681	108	2020-07-17	2020-07-24	59
210	66	2020-07-17	2020-07-24	60
69	48	2020-07-17	2020-07-24	61
82	56	2020-07-17	2020-07-24	62
54	19	2020-07-17	2020-07-24	63
297	162	2020-07-17	2020-07-24	64
33	28	2020-07-17	2020-07-24	65
205	118	2020-07-17	2020-07-24	66
223	35	2020-07-17	2020-07-24	67
678	315	2020-07-17	2020-07-24	68
155	92	2020-07-17	2020-07-24	69
110	32	2020-07-17	2020-07-24	70
29	24	2020-07-17	2020-07-24	71
213	33	2020-07-17	2020-07-24	72
252	143	2020-07-17	2020-07-24	73
19	15	2020-07-17	2020-07-24	74
14	13	2020-07-17	2020-07-24	75
48	35	2020-07-17	2020-07-24	76
165	56	2020-07-17	2020-07-24	77
18	13	2020-07-17	2020-07-24	78
116	74	2020-07-17	2020-07-24	79
30	25	2020-07-17	2020-07-24	80
682	90	2020-07-17	2020-07-24	81
222	2	2020-07-17	2020-07-24	82
704	48	2020-07-17	2020-07-24	83
122	20	2020-07-17	2020-07-24	84
688	110	2020-07-17	2020-07-24	85
699	33	2020-07-17	2020-07-24	86
227	128	2020-07-17	2020-07-24	87
397	92	2020-07-17	2020-07-24	88
25	20	2020-07-17	2020-07-24	89
237	135	2020-07-17	2020-07-24	90
221	126	2020-07-17	2020-07-24	91
51	28	2020-07-17	2020-07-24	92
47	34	2020-07-17	2020-07-24	93
34	28	2020-07-17	2020-07-24	94
228	129	2020-07-17	2020-07-24	95
218	86	2020-07-17	2020-07-24	96
150	48	2020-07-17	2020-07-24	97
31	26	2020-07-17	2020-07-24	98
835	48	2020-07-17	2020-07-24	99
81	52	2020-07-17	2020-07-24	100
64	45	2020-07-17	2020-07-24	101
832	48	2020-07-17	2020-07-24	102
690	317	2020-07-17	2020-07-24	103
58	40	2020-07-17	2020-07-24	104
833	48	2020-07-17	2020-07-24	105
229	84	2020-07-17	2020-07-24	106
93	62	2020-07-17	2020-07-24	107
244	48	2020-07-17	2020-07-24	108
24	9	2020-07-17	2020-07-24	109
404	214	2020-07-17	2020-07-24	110
16	4	2020-07-17	2020-07-24	111
53	37	2020-07-17	2020-07-24	112
836	48	2020-07-17	2020-07-24	113
839	48	2020-07-17	2020-07-24	114
107	70	2020-07-17	2020-07-24	115
94	19	2020-07-17	2020-07-24	116
834	48	2020-07-17	2020-07-24	117
151	90	2020-07-17	2020-07-24	118
95	63	2020-07-17	2020-07-24	119
75	45	2020-07-17	2020-07-24	120
56	39	2020-07-17	2020-07-24	121
710	184	2020-07-17	2020-07-24	122
109	70	2020-07-17	2020-07-24	123
296	161	2020-07-17	2020-07-24	124
694	302	2020-07-17	2020-07-24	125
703	190	2020-07-17	2020-07-24	126
840	48	2020-07-17	2020-07-24	127
12	21	2020-07-17	2020-07-24	128
123	45	2020-07-17	2020-07-24	129
115	73	2020-07-17	2020-07-24	130
240	137	2020-07-17	2020-07-24	131
57	5	2020-07-17	2020-07-24	132
45	32	2020-07-17	2020-07-24	133
706	66	2020-07-17	2020-07-24	134
103	68	2020-07-17	2020-07-24	135
245	85	2020-07-17	2020-07-24	136
702	319	2020-07-17	2020-07-24	137
128	80	2020-07-17	2020-07-24	138
215	110	2020-07-17	2020-07-24	139
693	58	2020-07-17	2020-07-24	140
238	32	2020-07-17	2020-07-24	141
364	188	2020-07-17	2020-07-24	142
837	48	2020-07-17	2020-07-24	143
44	20	2020-07-17	2020-07-24	144
74	28	2020-07-17	2020-07-24	145
321	16	2020-07-17	2020-07-24	146
138	45	2020-07-17	2020-07-24	147
700	74	2020-07-17	2020-07-24	148
212	52	2020-07-17	2020-07-24	149
243	139	2020-07-17	2020-07-24	150
687	316	2020-07-17	2020-07-24	151
741	11	2020-07-17	2020-07-24	152
157	93	2020-07-17	2020-07-24	153
118	38	2020-07-17	2020-07-24	154
838	48	2020-07-17	2020-07-24	155
104	69	2020-07-17	2020-07-24	156
111	71	2020-07-17	2020-07-24	157
83	57	2020-07-17	2020-07-24	158
22	18	2020-07-17	2020-07-24	159
40	30	2020-07-17	2020-07-24	160
905	364	2020-07-17	2020-07-24	161
108	48	2020-07-17	2020-07-24	162
260	48	2020-07-17	2020-07-24	163
52	20	2020-07-17	2020-07-24	164
63	44	2020-07-17	2020-07-24	165
174	102	2020-07-17	2020-07-24	166
162	70	2020-07-17	2020-07-24	167
70	49	2020-07-17	2020-07-24	168
906	365	2020-07-17	2020-07-24	169
713	323	2020-07-17	2020-07-24	170
140	33	2020-07-17	2020-07-24	171
708	85	2020-07-17	2020-07-24	172
35	13	2020-07-17	2020-07-24	173
91	61	2020-07-17	2020-07-24	174
262	148	2020-07-17	2020-07-24	175
178	98	2020-07-17	2020-07-24	176
206	118	2020-07-17	2020-07-24	177
182	104	2020-07-17	2020-07-24	178
709	320	2020-07-17	2020-07-24	179
336	92	2020-07-17	2020-07-24	180
166	97	2020-07-17	2020-07-24	181
101	67	2020-07-17	2020-07-24	182
153	51	2020-07-17	2020-07-24	183
119	75	2020-07-17	2020-07-24	184
841	264	2020-07-17	2020-07-24	185
711	321	2020-07-17	2020-07-24	186
106	66	2020-07-17	2020-07-24	187
79	55	2020-07-17	2020-07-24	188
39	13	2020-07-17	2020-07-24	189
117	17	2020-07-17	2020-07-24	190
43	10	2020-07-17	2020-07-24	191
50	5	2020-07-17	2020-07-24	192
71	9	2020-07-17	2020-07-24	193
247	19	2020-07-17	2020-07-24	194
173	101	2020-07-17	2020-07-24	195
259	147	2020-07-17	2020-07-24	196
261	104	2020-07-17	2020-07-24	197
102	27	2020-07-17	2020-07-24	198
145	19	2020-07-17	2020-07-24	199
49	36	2020-07-17	2020-07-24	200
5	5	2020-02-07	2020-02-14	1
7	7	2020-02-07	2020-02-14	2
1	1	2020-02-07	2020-02-14	3
4	4	2020-02-07	2020-02-14	4
20	16	2020-02-07	2020-02-14	5
12	11	2020-02-07	2020-02-14	6
907	10	2020-02-07	2020-02-14	7
19	15	2020-02-07	2020-02-14	8
29	24	2020-02-07	2020-02-14	9
43	10	2020-02-07	2020-02-14	10
34	28	2020-02-07	2020-02-14	11
31	26	2020-02-07	2020-02-14	12
23	19	2020-02-07	2020-02-14	13
27	22	2020-02-07	2020-02-14	14
21	17	2020-02-07	2020-02-14	15
56	39	2020-02-07	2020-02-14	16
33	28	2020-02-07	2020-02-14	17
37	29	2020-02-07	2020-02-14	18
55	38	2020-02-07	2020-02-14	19
26	21	2020-02-07	2020-02-14	20
16	4	2020-02-07	2020-02-14	21
36	17	2020-02-07	2020-02-14	22
60	41	2020-02-07	2020-02-14	23
9	9	2020-02-07	2020-02-14	24
49	36	2020-02-07	2020-02-14	25
97	64	2020-02-07	2020-02-14	26
53	37	2020-02-07	2020-02-14	27
113	54	2020-02-07	2020-02-14	28
50	5	2020-02-07	2020-02-14	29
59	13	2020-02-07	2020-02-14	30
908	153	2020-02-07	2020-02-14	31
48	35	2020-02-07	2020-02-14	32
3	3	2020-02-07	2020-02-14	33
89	60	2020-02-07	2020-02-14	34
79	55	2020-02-07	2020-02-14	35
77	53	2020-02-07	2020-02-14	36
100	66	2020-02-07	2020-02-14	37
52	20	2020-02-07	2020-02-14	38
515	64	2020-02-07	2020-02-14	39
90	61	2020-02-07	2020-02-14	40
133	82	2020-02-07	2020-02-14	41
132	32	2020-02-07	2020-02-14	42
54	19	2020-02-07	2020-02-14	43
102	27	2020-02-07	2020-02-14	44
64	45	2020-02-07	2020-02-14	45
58	40	2020-02-07	2020-02-14	46
125	78	2020-02-07	2020-02-14	47
120	76	2020-02-07	2020-02-14	48
83	57	2020-02-07	2020-02-14	49
74	28	2020-02-07	2020-02-14	50
82	56	2020-02-07	2020-02-14	51
106	66	2020-02-07	2020-02-14	52
8	8	2020-02-07	2020-02-14	53
70	49	2020-02-07	2020-02-14	54
13	12	2020-02-07	2020-02-14	55
51	28	2020-02-07	2020-02-14	56
517	272	2020-02-07	2020-02-14	57
75	45	2020-02-07	2020-02-14	58
69	48	2020-02-07	2020-02-14	59
144	86	2020-02-07	2020-02-14	60
47	34	2020-02-07	2020-02-14	61
108	48	2020-02-07	2020-02-14	62
99	21	2020-02-07	2020-02-14	63
121	20	2020-02-07	2020-02-14	64
95	63	2020-02-07	2020-02-14	65
147	13	2020-02-07	2020-02-14	66
909	98	2020-02-07	2020-02-14	67
141	84	2020-02-07	2020-02-14	68
518	273	2020-02-07	2020-02-14	69
87	59	2020-02-07	2020-02-14	70
521	78	2020-02-07	2020-02-14	71
523	27	2020-02-07	2020-02-14	72
81	52	2020-02-07	2020-02-14	73
105	7	2020-02-07	2020-02-14	74
526	186	2020-02-07	2020-02-14	75
91	61	2020-02-07	2020-02-14	76
119	75	2020-02-07	2020-02-14	77
520	234	2020-02-07	2020-02-14	78
191	110	2020-02-07	2020-02-14	79
163	95	2020-02-07	2020-02-14	80
114	19	2020-02-07	2020-02-14	81
111	71	2020-02-07	2020-02-14	82
160	89	2020-02-07	2020-02-14	83
531	276	2020-02-07	2020-02-14	84
776	84	2020-02-07	2020-02-14	85
519	158	2020-02-07	2020-02-14	86
528	45	2020-02-07	2020-02-14	87
103	68	2020-02-07	2020-02-14	88
67	1	2020-02-07	2020-02-14	89
104	69	2020-02-07	2020-02-14	90
135	20	2020-02-07	2020-02-14	91
146	87	2020-02-07	2020-02-14	92
117	17	2020-02-07	2020-02-14	93
530	111	2020-02-07	2020-02-14	94
532	55	2020-02-07	2020-02-14	95
118	38	2020-02-07	2020-02-14	96
93	62	2020-02-07	2020-02-14	97
529	196	2020-02-07	2020-02-14	98
522	274	2020-02-07	2020-02-14	99
139	60	2020-02-07	2020-02-14	100
30	25	2020-02-07	2020-02-14	101
94	19	2020-02-07	2020-02-14	102
527	50	2020-02-07	2020-02-14	103
540	40	2020-02-07	2020-02-14	104
910	366	2020-02-07	2020-02-14	105
537	277	2020-02-07	2020-02-14	106
535	27	2020-02-07	2020-02-14	107
554	44	2020-02-07	2020-02-14	108
154	28	2020-02-07	2020-02-14	109
145	19	2020-02-07	2020-02-14	110
150	48	2020-02-07	2020-02-14	111
115	73	2020-02-07	2020-02-14	112
533	33	2020-02-07	2020-02-14	113
101	67	2020-02-07	2020-02-14	114
534	28	2020-02-07	2020-02-14	115
123	45	2020-02-07	2020-02-14	116
131	2	2020-02-07	2020-02-14	117
782	196	2020-02-07	2020-02-14	118
541	279	2020-02-07	2020-02-14	119
911	306	2020-02-07	2020-02-14	120
536	56	2020-02-07	2020-02-14	121
128	80	2020-02-07	2020-02-14	122
156	37	2020-02-07	2020-02-14	123
542	112	2020-02-07	2020-02-14	124
539	278	2020-02-07	2020-02-14	125
544	280	2020-02-07	2020-02-14	126
175	21	2020-02-07	2020-02-14	127
109	70	2020-02-07	2020-02-14	128
785	26	2020-02-07	2020-02-14	129
165	56	2020-02-07	2020-02-14	130
168	89	2020-02-07	2020-02-14	131
546	123	2020-02-07	2020-02-14	132
107	70	2020-02-07	2020-02-14	133
152	91	2020-02-07	2020-02-14	134
138	45	2020-02-07	2020-02-14	135
187	63	2020-02-07	2020-02-14	136
545	281	2020-02-07	2020-02-14	137
159	94	2020-02-07	2020-02-14	138
124	77	2020-02-07	2020-02-14	139
153	51	2020-02-07	2020-02-14	140
556	234	2020-02-07	2020-02-14	141
130	67	2020-02-07	2020-02-14	142
547	282	2020-02-07	2020-02-14	143
564	286	2020-02-07	2020-02-14	144
524	275	2020-02-07	2020-02-14	145
179	105	2020-02-07	2020-02-14	146
549	112	2020-02-07	2020-02-14	147
558	278	2020-02-07	2020-02-14	148
783	299	2020-02-07	2020-02-14	149
185	22	2020-02-07	2020-02-14	150
140	33	2020-02-07	2020-02-14	151
557	154	2020-02-07	2020-02-14	152
552	111	2020-02-07	2020-02-14	153
158	56	2020-02-07	2020-02-14	154
281	96	2020-02-07	2020-02-14	155
279	153	2020-02-07	2020-02-14	156
573	292	2020-02-07	2020-02-14	157
551	28	2020-02-07	2020-02-14	158
174	102	2020-02-07	2020-02-14	159
181	106	2020-02-07	2020-02-14	160
184	19	2020-02-07	2020-02-14	161
282	74	2020-02-07	2020-02-14	162
559	134	2020-02-07	2020-02-14	163
516	10	2020-02-07	2020-02-14	164
177	104	2020-02-07	2020-02-14	165
176	103	2020-02-07	2020-02-14	166
162	70	2020-02-07	2020-02-14	167
548	120	2020-02-07	2020-02-14	168
562	28	2020-02-07	2020-02-14	169
199	115	2020-02-07	2020-02-14	170
568	139	2020-02-07	2020-02-14	171
183	29	2020-02-07	2020-02-14	172
188	107	2020-02-07	2020-02-14	173
567	288	2020-02-07	2020-02-14	174
178	98	2020-02-07	2020-02-14	175
571	290	2020-02-07	2020-02-14	176
560	28	2020-02-07	2020-02-14	177
570	20	2020-02-07	2020-02-14	178
173	101	2020-02-07	2020-02-14	179
569	289	2020-02-07	2020-02-14	180
561	285	2020-02-07	2020-02-14	181
574	27	2020-02-07	2020-02-14	182
170	99	2020-02-07	2020-02-14	183
566	120	2020-02-07	2020-02-14	184
580	60	2020-02-07	2020-02-14	185
912	89	2020-02-07	2020-02-14	186
12	21	2020-02-07	2020-02-14	187
525	53	2020-02-07	2020-02-14	188
582	53	2020-02-07	2020-02-14	189
563	110	2020-02-07	2020-02-14	190
575	56	2020-02-07	2020-02-14	191
913	284	2020-02-07	2020-02-14	192
576	196	2020-02-07	2020-02-14	193
583	293	2020-02-07	2020-02-14	194
186	2	2020-02-07	2020-02-14	195
581	123	2020-02-07	2020-02-14	196
622	62	2020-02-07	2020-02-14	197
577	28	2020-02-07	2020-02-14	198
726	45	2020-02-07	2020-02-14	199
171	100	2020-02-07	2020-02-14	200
1	1	2020-05-15	2020-05-22	1
200	27	2020-05-15	2020-05-22	2
3	3	2020-05-15	2020-05-22	3
2	2	2020-05-15	2020-05-22	4
6	6	2020-05-15	2020-05-22	5
205	118	2020-05-15	2020-05-22	6
203	117	2020-05-15	2020-05-22	7
204	63	2020-05-15	2020-05-22	8
4	4	2020-05-15	2020-05-22	9
7	7	2020-05-15	2020-05-22	10
8	8	2020-05-15	2020-05-22	11
5	5	2020-05-15	2020-05-22	12
11	4	2020-05-15	2020-05-22	13
15	14	2020-05-15	2020-05-22	14
68	47	2020-05-15	2020-05-22	15
10	10	2020-05-15	2020-05-22	16
13	12	2020-05-15	2020-05-22	17
12	11	2020-05-15	2020-05-22	18
9	9	2020-05-15	2020-05-22	19
21	17	2020-05-15	2020-05-22	20
207	119	2020-05-15	2020-05-22	21
24	9	2020-05-15	2020-05-22	22
23	19	2020-05-15	2020-05-22	23
18	13	2020-05-15	2020-05-22	24
225	9	2020-05-15	2020-05-22	25
211	121	2020-05-15	2020-05-22	26
29	24	2020-05-15	2020-05-22	27
214	68	2020-05-15	2020-05-22	28
158	56	2020-05-15	2020-05-22	29
19	15	2020-05-15	2020-05-22	30
30	25	2020-05-15	2020-05-22	31
26	21	2020-05-15	2020-05-22	32
202	116	2020-05-15	2020-05-22	33
165	56	2020-05-15	2020-05-22	34
20	16	2020-05-15	2020-05-22	35
17	1	2020-05-15	2020-05-22	36
82	56	2020-05-15	2020-05-22	37
14	13	2020-05-15	2020-05-22	38
62	43	2020-05-15	2020-05-22	39
36	17	2020-05-15	2020-05-22	40
16	4	2020-05-15	2020-05-22	41
230	48	2020-05-15	2020-05-22	42
218	86	2020-05-15	2020-05-22	43
213	33	2020-05-15	2020-05-22	44
27	22	2020-05-15	2020-05-22	45
33	28	2020-05-15	2020-05-22	46
25	20	2020-05-15	2020-05-22	47
47	34	2020-05-15	2020-05-22	48
116	74	2020-05-15	2020-05-22	49
37	29	2020-05-15	2020-05-22	50
914	24	2020-05-15	2020-05-22	51
242	138	2020-05-15	2020-05-22	52
22	18	2020-05-15	2020-05-22	53
250	13	2020-05-15	2020-05-22	54
258	13	2020-05-15	2020-05-22	55
54	19	2020-05-15	2020-05-22	56
31	26	2020-05-15	2020-05-22	57
48	35	2020-05-15	2020-05-22	58
40	30	2020-05-15	2020-05-22	59
34	28	2020-05-15	2020-05-22	60
151	90	2020-05-15	2020-05-22	61
57	5	2020-05-15	2020-05-22	62
222	2	2020-05-15	2020-05-22	63
99	21	2020-05-15	2020-05-22	64
51	28	2020-05-15	2020-05-22	65
44	20	2020-05-15	2020-05-22	66
208	39	2020-05-15	2020-05-22	67
35	13	2020-05-15	2020-05-22	68
45	32	2020-05-15	2020-05-22	69
110	32	2020-05-15	2020-05-22	70
69	48	2020-05-15	2020-05-22	71
73	51	2020-05-15	2020-05-22	72
58	40	2020-05-15	2020-05-22	73
53	37	2020-05-15	2020-05-22	74
39	13	2020-05-15	2020-05-22	75
64	45	2020-05-15	2020-05-22	76
229	84	2020-05-15	2020-05-22	77
915	13	2020-05-15	2020-05-22	78
52	20	2020-05-15	2020-05-22	79
56	39	2020-05-15	2020-05-22	80
38	13	2020-05-15	2020-05-22	81
916	367	2020-05-15	2020-05-22	82
81	52	2020-05-15	2020-05-22	83
917	302	2020-05-15	2020-05-22	84
918	13	2020-05-15	2020-05-22	85
63	44	2020-05-15	2020-05-22	86
43	10	2020-05-15	2020-05-22	87
70	49	2020-05-15	2020-05-22	88
245	85	2020-05-15	2020-05-22	89
83	57	2020-05-15	2020-05-22	90
84	58	2020-05-15	2020-05-22	91
919	60	2020-05-15	2020-05-22	92
75	45	2020-05-15	2020-05-22	93
28	23	2020-05-15	2020-05-22	94
265	89	2020-05-15	2020-05-22	95
95	63	2020-05-15	2020-05-22	96
50	5	2020-05-15	2020-05-22	97
137	51	2020-05-15	2020-05-22	98
71	9	2020-05-15	2020-05-22	99
268	150	2020-05-15	2020-05-22	100
74	28	2020-05-15	2020-05-22	101
61	42	2020-05-15	2020-05-22	102
55	38	2020-05-15	2020-05-22	103
77	53	2020-05-15	2020-05-22	104
920	24	2020-05-15	2020-05-22	105
93	62	2020-05-15	2020-05-22	106
798	2	2020-05-15	2020-05-22	107
94	19	2020-05-15	2020-05-22	108
235	133	2020-05-15	2020-05-22	109
921	24	2020-05-15	2020-05-22	110
98	65	2020-05-15	2020-05-22	111
12	21	2020-05-15	2020-05-22	112
812	349	2020-05-15	2020-05-22	113
79	55	2020-05-15	2020-05-22	114
107	70	2020-05-15	2020-05-22	115
104	69	2020-05-15	2020-05-22	116
103	68	2020-05-15	2020-05-22	117
115	73	2020-05-15	2020-05-22	118
109	70	2020-05-15	2020-05-22	119
257	31	2020-05-15	2020-05-22	120
49	36	2020-05-15	2020-05-22	121
123	45	2020-05-15	2020-05-22	122
65	13	2020-05-15	2020-05-22	123
59	13	2020-05-15	2020-05-22	124
87	59	2020-05-15	2020-05-22	125
72	50	2020-05-15	2020-05-22	126
96	50	2020-05-15	2020-05-22	127
922	85	2020-05-15	2020-05-22	128
217	123	2020-05-15	2020-05-22	129
108	48	2020-05-15	2020-05-22	130
150	48	2020-05-15	2020-05-22	131
122	20	2020-05-15	2020-05-22	132
91	61	2020-05-15	2020-05-22	133
138	45	2020-05-15	2020-05-22	134
128	80	2020-05-15	2020-05-22	135
102	27	2020-05-15	2020-05-22	136
238	32	2020-05-15	2020-05-22	137
118	38	2020-05-15	2020-05-22	138
89	60	2020-05-15	2020-05-22	139
111	71	2020-05-15	2020-05-22	140
146	87	2020-05-15	2020-05-22	141
144	86	2020-05-15	2020-05-22	142
106	66	2020-05-15	2020-05-22	143
114	19	2020-05-15	2020-05-22	144
121	20	2020-05-15	2020-05-22	145
157	93	2020-05-15	2020-05-22	146
141	84	2020-05-15	2020-05-22	147
46	33	2020-05-15	2020-05-22	148
171	100	2020-05-15	2020-05-22	149
97	64	2020-05-15	2020-05-22	150
119	75	2020-05-15	2020-05-22	151
153	51	2020-05-15	2020-05-22	152
117	17	2020-05-15	2020-05-22	153
60	41	2020-05-15	2020-05-22	154
101	67	2020-05-15	2020-05-22	155
139	60	2020-05-15	2020-05-22	156
219	124	2020-05-15	2020-05-22	157
243	139	2020-05-15	2020-05-22	158
178	98	2020-05-15	2020-05-22	159
166	97	2020-05-15	2020-05-22	160
253	144	2020-05-15	2020-05-22	161
145	19	2020-05-15	2020-05-22	162
224	127	2020-05-15	2020-05-22	163
132	32	2020-05-15	2020-05-22	164
254	32	2020-05-15	2020-05-22	165
173	101	2020-05-15	2020-05-22	166
131	2	2020-05-15	2020-05-22	167
129	81	2020-05-15	2020-05-22	168
175	21	2020-05-15	2020-05-22	169
78	54	2020-05-15	2020-05-22	170
125	78	2020-05-15	2020-05-22	171
156	37	2020-05-15	2020-05-22	172
923	368	2020-05-15	2020-05-22	173
140	33	2020-05-15	2020-05-22	174
41	1	2020-05-15	2020-05-22	175
67	1	2020-05-15	2020-05-22	176
147	13	2020-05-15	2020-05-22	177
105	7	2020-05-15	2020-05-22	178
924	85	2020-05-15	2020-05-22	179
162	70	2020-05-15	2020-05-22	180
195	113	2020-05-15	2020-05-22	181
174	102	2020-05-15	2020-05-22	182
925	13	2020-05-15	2020-05-22	183
228	129	2020-05-15	2020-05-22	184
181	106	2020-05-15	2020-05-22	185
267	56	2020-05-15	2020-05-22	186
256	146	2020-05-15	2020-05-22	187
187	63	2020-05-15	2020-05-22	188
155	92	2020-05-15	2020-05-22	189
168	89	2020-05-15	2020-05-22	190
134	83	2020-05-15	2020-05-22	191
188	107	2020-05-15	2020-05-22	192
184	19	2020-05-15	2020-05-22	193
170	99	2020-05-15	2020-05-22	194
182	104	2020-05-15	2020-05-22	195
926	307	2020-05-15	2020-05-22	196
275	154	2020-05-15	2020-05-22	197
130	67	2020-05-15	2020-05-22	198
154	28	2020-05-15	2020-05-22	199
264	73	2020-05-15	2020-05-22	200
200	27	2020-07-03	2020-07-10	1
216	122	2020-07-03	2020-07-10	2
1	1	2020-07-03	2020-07-10	3
3	3	2020-07-03	2020-07-10	4
99	21	2020-07-03	2020-07-10	5
342	171	2020-07-03	2020-07-10	6
6	6	2020-07-03	2020-07-10	7
201	52	2020-07-03	2020-07-10	8
62	43	2020-07-03	2020-07-10	9
2	2	2020-07-03	2020-07-10	10
7	7	2020-07-03	2020-07-10	11
68	47	2020-07-03	2020-07-10	12
202	116	2020-07-03	2020-07-10	13
4	4	2020-07-03	2020-07-10	14
11	4	2020-07-03	2020-07-10	15
8	8	2020-07-03	2020-07-10	16
362	92	2020-07-03	2020-07-10	17
294	92	2020-07-03	2020-07-10	18
219	124	2020-07-03	2020-07-10	19
208	39	2020-07-03	2020-07-10	20
204	63	2020-07-03	2020-07-10	21
15	14	2020-07-03	2020-07-10	22
5	5	2020-07-03	2020-07-10	23
21	17	2020-07-03	2020-07-10	24
209	120	2020-07-03	2020-07-10	25
355	96	2020-07-03	2020-07-10	26
203	117	2020-07-03	2020-07-10	27
217	123	2020-07-03	2020-07-10	28
10	10	2020-07-03	2020-07-10	29
36	17	2020-07-03	2020-07-10	30
9	9	2020-07-03	2020-07-10	31
13	12	2020-07-03	2020-07-10	32
17	1	2020-07-03	2020-07-10	33
205	118	2020-07-03	2020-07-10	34
210	66	2020-07-03	2020-07-10	35
23	19	2020-07-03	2020-07-10	36
231	130	2020-07-03	2020-07-10	37
207	119	2020-07-03	2020-07-10	38
20	16	2020-07-03	2020-07-10	39
155	92	2020-07-03	2020-07-10	40
397	92	2020-07-03	2020-07-10	41
137	51	2020-07-03	2020-07-10	42
12	11	2020-07-03	2020-07-10	43
214	68	2020-07-03	2020-07-10	44
158	56	2020-07-03	2020-07-10	45
211	121	2020-07-03	2020-07-10	46
37	29	2020-07-03	2020-07-10	47
26	21	2020-07-03	2020-07-10	48
27	22	2020-07-03	2020-07-10	49
694	302	2020-07-03	2020-07-10	50
213	33	2020-07-03	2020-07-10	51
14	13	2020-07-03	2020-07-10	52
846	92	2020-07-03	2020-07-10	53
82	56	2020-07-03	2020-07-10	54
18	13	2020-07-03	2020-07-10	55
54	19	2020-07-03	2020-07-10	56
742	333	2020-07-03	2020-07-10	57
927	92	2020-07-03	2020-07-10	58
33	28	2020-07-03	2020-07-10	59
29	24	2020-07-03	2020-07-10	60
165	56	2020-07-03	2020-07-10	61
110	32	2020-07-03	2020-07-10	62
928	92	2020-07-03	2020-07-10	63
850	92	2020-07-03	2020-07-10	64
19	15	2020-07-03	2020-07-10	65
236	134	2020-07-03	2020-07-10	66
312	167	2020-07-03	2020-07-10	67
30	25	2020-07-03	2020-07-10	68
48	35	2020-07-03	2020-07-10	69
218	86	2020-07-03	2020-07-10	70
252	143	2020-07-03	2020-07-10	71
222	2	2020-07-03	2020-07-10	72
122	20	2020-07-03	2020-07-10	73
25	20	2020-07-03	2020-07-10	74
69	48	2020-07-03	2020-07-10	75
688	110	2020-07-03	2020-07-10	76
678	315	2020-07-03	2020-07-10	77
336	92	2020-07-03	2020-07-10	78
851	92	2020-07-03	2020-07-10	79
116	74	2020-07-03	2020-07-10	80
223	35	2020-07-03	2020-07-10	81
34	28	2020-07-03	2020-07-10	82
227	128	2020-07-03	2020-07-10	83
47	34	2020-07-03	2020-07-10	84
51	28	2020-07-03	2020-07-10	85
710	184	2020-07-03	2020-07-10	86
221	126	2020-07-03	2020-07-10	87
929	92	2020-07-03	2020-07-10	88
228	129	2020-07-03	2020-07-10	89
212	52	2020-07-03	2020-07-10	90
682	90	2020-07-03	2020-07-10	91
366	190	2020-07-03	2020-07-10	92
24	9	2020-07-03	2020-07-10	93
31	26	2020-07-03	2020-07-10	94
930	92	2020-07-03	2020-07-10	95
81	52	2020-07-03	2020-07-10	96
64	45	2020-07-03	2020-07-10	97
237	135	2020-07-03	2020-07-10	98
229	84	2020-07-03	2020-07-10	99
931	92	2020-07-03	2020-07-10	100
288	92	2020-07-03	2020-07-10	101
16	4	2020-07-03	2020-07-10	102
58	40	2020-07-03	2020-07-10	103
93	62	2020-07-03	2020-07-10	104
151	90	2020-07-03	2020-07-10	105
215	110	2020-07-03	2020-07-10	106
57	5	2020-07-03	2020-07-10	107
404	214	2020-07-03	2020-07-10	108
45	32	2020-07-03	2020-07-10	109
53	37	2020-07-03	2020-07-10	110
706	66	2020-07-03	2020-07-10	111
702	319	2020-07-03	2020-07-10	112
206	118	2020-07-03	2020-07-10	113
932	92	2020-07-03	2020-07-10	114
150	48	2020-07-03	2020-07-10	115
56	39	2020-07-03	2020-07-10	116
933	92	2020-07-03	2020-07-10	117
107	70	2020-07-03	2020-07-10	118
230	48	2020-07-03	2020-07-10	119
94	19	2020-07-03	2020-07-10	120
934	92	2020-07-03	2020-07-10	121
44	20	2020-07-03	2020-07-10	122
75	45	2020-07-03	2020-07-10	123
95	63	2020-07-03	2020-07-10	124
123	45	2020-07-03	2020-07-10	125
109	70	2020-07-03	2020-07-10	126
40	30	2020-07-03	2020-07-10	127
115	73	2020-07-03	2020-07-10	128
741	11	2020-07-03	2020-07-10	129
35	13	2020-07-03	2020-07-10	130
103	68	2020-07-03	2020-07-10	131
243	139	2020-07-03	2020-07-10	132
22	18	2020-07-03	2020-07-10	133
238	32	2020-07-03	2020-07-10	134
74	28	2020-07-03	2020-07-10	135
235	133	2020-07-03	2020-07-10	136
12	21	2020-07-03	2020-07-10	137
684	48	2020-07-03	2020-07-10	138
848	118	2020-07-03	2020-07-10	139
138	45	2020-07-03	2020-07-10	140
690	317	2020-07-03	2020-07-10	141
128	80	2020-07-03	2020-07-10	142
52	20	2020-07-03	2020-07-10	143
245	85	2020-07-03	2020-07-10	144
106	66	2020-07-03	2020-07-10	145
83	57	2020-07-03	2020-07-10	146
224	127	2020-07-03	2020-07-10	147
111	71	2020-07-03	2020-07-10	148
240	137	2020-07-03	2020-07-10	149
39	13	2020-07-03	2020-07-10	150
104	69	2020-07-03	2020-07-10	151
220	125	2020-07-03	2020-07-10	152
118	38	2020-07-03	2020-07-10	153
108	48	2020-07-03	2020-07-10	154
119	75	2020-07-03	2020-07-10	155
63	44	2020-07-03	2020-07-10	156
157	93	2020-07-03	2020-07-10	157
935	92	2020-07-03	2020-07-10	158
260	48	2020-07-03	2020-07-10	159
43	10	2020-07-03	2020-07-10	160
708	85	2020-07-03	2020-07-10	161
50	5	2020-07-03	2020-07-10	162
174	102	2020-07-03	2020-07-10	163
162	70	2020-07-03	2020-07-10	164
71	9	2020-07-03	2020-07-10	165
166	97	2020-07-03	2020-07-10	166
117	17	2020-07-03	2020-07-10	167
247	19	2020-07-03	2020-07-10	168
87	59	2020-07-03	2020-07-10	169
178	98	2020-07-03	2020-07-10	170
102	27	2020-07-03	2020-07-10	171
182	104	2020-07-03	2020-07-10	172
38	13	2020-07-03	2020-07-10	173
849	66	2020-07-03	2020-07-10	174
140	33	2020-07-03	2020-07-10	175
70	49	2020-07-03	2020-07-10	176
91	61	2020-07-03	2020-07-10	177
145	19	2020-07-03	2020-07-10	178
262	148	2020-07-03	2020-07-10	179
153	51	2020-07-03	2020-07-10	180
101	67	2020-07-03	2020-07-10	181
745	335	2020-07-03	2020-07-10	182
261	104	2020-07-03	2020-07-10	183
79	55	2020-07-03	2020-07-10	184
121	20	2020-07-03	2020-07-10	185
264	73	2020-07-03	2020-07-10	186
141	84	2020-07-03	2020-07-10	187
49	36	2020-07-03	2020-07-10	188
936	66	2020-07-03	2020-07-10	189
622	62	2020-07-03	2020-07-10	190
619	304	2020-07-03	2020-07-10	191
711	321	2020-07-03	2020-07-10	192
263	149	2020-07-03	2020-07-10	193
254	32	2020-07-03	2020-07-10	194
184	19	2020-07-03	2020-07-10	195
259	147	2020-07-03	2020-07-10	196
173	101	2020-07-03	2020-07-10	197
712	322	2020-07-03	2020-07-10	198
937	369	2020-07-03	2020-07-10	199
157	66	2020-07-03	2020-07-10	200
200	27	2020-06-19	2020-06-26	1
1	1	2020-06-19	2020-06-26	2
3	3	2020-06-19	2020-06-26	3
6	6	2020-06-19	2020-06-26	4
201	52	2020-06-19	2020-06-26	5
216	122	2020-06-19	2020-06-26	6
99	21	2020-06-19	2020-06-26	7
2	2	2020-06-19	2020-06-26	8
4	4	2020-06-19	2020-06-26	9
202	116	2020-06-19	2020-06-26	10
7	7	2020-06-19	2020-06-26	11
68	47	2020-06-19	2020-06-26	12
11	4	2020-06-19	2020-06-26	13
62	43	2020-06-19	2020-06-26	14
8	8	2020-06-19	2020-06-26	15
15	14	2020-06-19	2020-06-26	16
204	63	2020-06-19	2020-06-26	17
5	5	2020-06-19	2020-06-26	18
203	117	2020-06-19	2020-06-26	19
208	39	2020-06-19	2020-06-26	20
205	118	2020-06-19	2020-06-26	21
10	10	2020-06-19	2020-06-26	22
21	17	2020-06-19	2020-06-26	23
13	12	2020-06-19	2020-06-26	24
207	119	2020-06-19	2020-06-26	25
12	11	2020-06-19	2020-06-26	26
17	1	2020-06-19	2020-06-26	27
9	9	2020-06-19	2020-06-26	28
219	124	2020-06-19	2020-06-26	29
23	19	2020-06-19	2020-06-26	30
20	16	2020-06-19	2020-06-26	31
36	17	2020-06-19	2020-06-26	32
30	25	2020-06-19	2020-06-26	33
217	123	2020-06-19	2020-06-26	34
158	56	2020-06-19	2020-06-26	35
211	121	2020-06-19	2020-06-26	36
210	66	2020-06-19	2020-06-26	37
209	120	2020-06-19	2020-06-26	38
213	33	2020-06-19	2020-06-26	39
18	13	2020-06-19	2020-06-26	40
26	21	2020-06-19	2020-06-26	41
214	68	2020-06-19	2020-06-26	42
137	51	2020-06-19	2020-06-26	43
206	118	2020-06-19	2020-06-26	44
27	22	2020-06-19	2020-06-26	45
14	13	2020-06-19	2020-06-26	46
37	29	2020-06-19	2020-06-26	47
82	56	2020-06-19	2020-06-26	48
19	15	2020-06-19	2020-06-26	49
29	24	2020-06-19	2020-06-26	50
165	56	2020-06-19	2020-06-26	51
33	28	2020-06-19	2020-06-26	52
54	19	2020-06-19	2020-06-26	53
218	86	2020-06-19	2020-06-26	54
212	52	2020-06-19	2020-06-26	55
220	125	2020-06-19	2020-06-26	56
25	20	2020-06-19	2020-06-26	57
110	32	2020-06-19	2020-06-26	58
151	90	2020-06-19	2020-06-26	59
48	35	2020-06-19	2020-06-26	60
24	9	2020-06-19	2020-06-26	61
221	126	2020-06-19	2020-06-26	62
222	2	2020-06-19	2020-06-26	63
215	110	2020-06-19	2020-06-26	64
116	74	2020-06-19	2020-06-26	65
57	5	2020-06-19	2020-06-26	66
223	35	2020-06-19	2020-06-26	67
231	130	2020-06-19	2020-06-26	68
47	34	2020-06-19	2020-06-26	69
69	48	2020-06-19	2020-06-26	70
34	28	2020-06-19	2020-06-26	71
739	158	2020-06-19	2020-06-26	72
51	28	2020-06-19	2020-06-26	73
122	20	2020-06-19	2020-06-26	74
31	26	2020-06-19	2020-06-26	75
16	4	2020-06-19	2020-06-26	76
227	128	2020-06-19	2020-06-26	77
228	129	2020-06-19	2020-06-26	78
64	45	2020-06-19	2020-06-26	79
81	52	2020-06-19	2020-06-26	80
58	40	2020-06-19	2020-06-26	81
53	37	2020-06-19	2020-06-26	82
938	272	2020-06-19	2020-06-26	83
56	39	2020-06-19	2020-06-26	84
237	135	2020-06-19	2020-06-26	85
939	205	2020-06-19	2020-06-26	86
229	84	2020-06-19	2020-06-26	87
45	32	2020-06-19	2020-06-26	88
22	18	2020-06-19	2020-06-26	89
738	119	2020-06-19	2020-06-26	90
40	30	2020-06-19	2020-06-26	91
44	20	2020-06-19	2020-06-26	92
224	127	2020-06-19	2020-06-26	93
93	62	2020-06-19	2020-06-26	94
230	48	2020-06-19	2020-06-26	95
107	70	2020-06-19	2020-06-26	96
95	63	2020-06-19	2020-06-26	97
225	9	2020-06-19	2020-06-26	98
94	19	2020-06-19	2020-06-26	99
252	143	2020-06-19	2020-06-26	100
75	45	2020-06-19	2020-06-26	101
236	134	2020-06-19	2020-06-26	102
109	70	2020-06-19	2020-06-26	103
940	347	2020-06-19	2020-06-26	104
35	13	2020-06-19	2020-06-26	105
83	57	2020-06-19	2020-06-26	106
150	48	2020-06-19	2020-06-26	107
52	20	2020-06-19	2020-06-26	108
235	133	2020-06-19	2020-06-26	109
74	28	2020-06-19	2020-06-26	110
115	73	2020-06-19	2020-06-26	111
238	32	2020-06-19	2020-06-26	112
123	45	2020-06-19	2020-06-26	113
12	21	2020-06-19	2020-06-26	114
103	68	2020-06-19	2020-06-26	115
70	49	2020-06-19	2020-06-26	116
245	85	2020-06-19	2020-06-26	117
39	13	2020-06-19	2020-06-26	118
240	137	2020-06-19	2020-06-26	119
243	139	2020-06-19	2020-06-26	120
138	45	2020-06-19	2020-06-26	121
111	71	2020-06-19	2020-06-26	122
63	44	2020-06-19	2020-06-26	123
128	80	2020-06-19	2020-06-26	124
104	69	2020-06-19	2020-06-26	125
43	10	2020-06-19	2020-06-26	126
73	51	2020-06-19	2020-06-26	127
50	5	2020-06-19	2020-06-26	128
241	66	2020-06-19	2020-06-26	129
242	138	2020-06-19	2020-06-26	130
941	283	2020-06-19	2020-06-26	131
118	38	2020-06-19	2020-06-26	132
106	66	2020-06-19	2020-06-26	133
942	293	2020-06-19	2020-06-26	134
38	13	2020-06-19	2020-06-26	135
247	19	2020-06-19	2020-06-26	136
108	48	2020-06-19	2020-06-26	137
157	93	2020-06-19	2020-06-26	138
688	110	2020-06-19	2020-06-26	139
678	315	2020-06-19	2020-06-26	140
155	92	2020-06-19	2020-06-26	141
239	136	2020-06-19	2020-06-26	142
79	55	2020-06-19	2020-06-26	143
87	59	2020-06-19	2020-06-26	144
253	144	2020-06-19	2020-06-26	145
119	75	2020-06-19	2020-06-26	146
96	50	2020-06-19	2020-06-26	147
162	70	2020-06-19	2020-06-26	148
174	102	2020-06-19	2020-06-26	149
166	97	2020-06-19	2020-06-26	150
153	51	2020-06-19	2020-06-26	151
178	98	2020-06-19	2020-06-26	152
91	61	2020-06-19	2020-06-26	153
234	132	2020-06-19	2020-06-26	154
102	27	2020-06-19	2020-06-26	155
140	33	2020-06-19	2020-06-26	156
145	19	2020-06-19	2020-06-26	157
248	110	2020-06-19	2020-06-26	158
49	36	2020-06-19	2020-06-26	159
117	17	2020-06-19	2020-06-26	160
250	13	2020-06-19	2020-06-26	161
84	58	2020-06-19	2020-06-26	162
254	32	2020-06-19	2020-06-26	163
77	53	2020-06-19	2020-06-26	164
139	60	2020-06-19	2020-06-26	165
141	84	2020-06-19	2020-06-26	166
76	52	2020-06-19	2020-06-26	167
121	20	2020-06-19	2020-06-26	168
101	67	2020-06-19	2020-06-26	169
404	214	2020-06-19	2020-06-26	170
181	106	2020-06-19	2020-06-26	171
182	104	2020-06-19	2020-06-26	172
690	317	2020-06-19	2020-06-26	173
144	86	2020-06-19	2020-06-26	174
146	87	2020-06-19	2020-06-26	175
232	131	2020-06-19	2020-06-26	176
173	101	2020-06-19	2020-06-26	177
187	63	2020-06-19	2020-06-26	178
251	142	2020-06-19	2020-06-26	179
71	9	2020-06-19	2020-06-26	180
175	21	2020-06-19	2020-06-26	181
97	64	2020-06-19	2020-06-26	182
184	19	2020-06-19	2020-06-26	183
262	148	2020-06-19	2020-06-26	184
937	369	2020-06-19	2020-06-26	185
188	107	2020-06-19	2020-06-26	186
264	73	2020-06-19	2020-06-26	187
156	37	2020-06-19	2020-06-26	188
260	48	2020-06-19	2020-06-26	189
263	149	2020-06-19	2020-06-26	190
619	304	2020-06-19	2020-06-26	191
261	104	2020-06-19	2020-06-26	192
131	2	2020-06-19	2020-06-26	193
259	147	2020-06-19	2020-06-26	194
255	145	2020-06-19	2020-06-26	195
65	13	2020-06-19	2020-06-26	196
622	62	2020-06-19	2020-06-26	197
129	81	2020-06-19	2020-06-26	198
943	370	2020-06-19	2020-06-26	199
168	89	2020-06-19	2020-06-26	200
285	42	2020-09-18	2020-09-25	1
292	160	2020-09-18	2020-09-25	2
291	159	2020-09-18	2020-09-25	3
293	10	2020-09-18	2020-09-25	4
286	157	2020-09-18	2020-09-25	5
289	158	2020-09-18	2020-09-25	6
99	21	2020-09-18	2020-09-25	7
1	1	2020-09-18	2020-09-25	8
216	122	2020-09-18	2020-09-25	9
200	27	2020-09-18	2020-09-25	10
301	2	2020-09-18	2020-09-25	11
294	92	2020-09-18	2020-09-25	12
297	162	2020-09-18	2020-09-25	13
327	172	2020-09-18	2020-09-25	14
296	161	2020-09-18	2020-09-25	15
303	77	2020-09-18	2020-09-25	16
298	123	2020-09-18	2020-09-25	17
3	3	2020-09-18	2020-09-25	18
62	43	2020-09-18	2020-09-25	19
336	92	2020-09-18	2020-09-25	20
323	171	2020-09-18	2020-09-25	21
321	16	2020-09-18	2020-09-25	22
310	20	2020-09-18	2020-09-25	23
312	167	2020-09-18	2020-09-25	24
330	48	2020-09-18	2020-09-25	25
21	17	2020-09-18	2020-09-25	26
7	7	2020-09-18	2020-09-25	27
219	124	2020-09-18	2020-09-25	28
334	32	2020-09-18	2020-09-25	29
313	168	2020-09-18	2020-09-25	30
36	17	2020-09-18	2020-09-25	31
319	169	2020-09-18	2020-09-25	32
231	130	2020-09-18	2020-09-25	33
201	52	2020-09-18	2020-09-25	34
6	6	2020-09-18	2020-09-25	35
355	96	2020-09-18	2020-09-25	36
346	48	2020-09-18	2020-09-25	37
402	212	2020-09-18	2020-09-25	38
236	134	2020-09-18	2020-09-25	39
316	130	2020-09-18	2020-09-25	40
4	4	2020-09-18	2020-09-25	41
335	89	2020-09-18	2020-09-25	42
8	8	2020-09-18	2020-09-25	43
137	51	2020-09-18	2020-09-25	44
361	186	2020-09-18	2020-09-25	45
354	182	2020-09-18	2020-09-25	46
379	172	2020-09-18	2020-09-25	47
204	63	2020-09-18	2020-09-25	48
343	176	2020-09-18	2020-09-25	49
11	4	2020-09-18	2020-09-25	50
299	163	2020-09-18	2020-09-25	51
366	190	2020-09-18	2020-09-25	52
342	171	2020-09-18	2020-09-25	53
68	47	2020-09-18	2020-09-25	54
23	19	2020-09-18	2020-09-25	55
370	48	2020-09-18	2020-09-25	56
306	164	2020-09-18	2020-09-25	57
362	92	2020-09-18	2020-09-25	58
158	56	2020-09-18	2020-09-25	59
288	92	2020-09-18	2020-09-25	60
26	21	2020-09-18	2020-09-25	61
5	5	2020-09-18	2020-09-25	62
325	130	2020-09-18	2020-09-25	63
398	209	2020-09-18	2020-09-25	64
2	2	2020-09-18	2020-09-25	65
10	10	2020-09-18	2020-09-25	66
69	48	2020-09-18	2020-09-25	67
27	22	2020-09-18	2020-09-25	68
348	179	2020-09-18	2020-09-25	69
54	19	2020-09-18	2020-09-25	70
37	29	2020-09-18	2020-09-25	71
391	207	2020-09-18	2020-09-25	72
668	314	2020-09-18	2020-09-25	73
12	11	2020-09-18	2020-09-25	74
150	48	2020-09-18	2020-09-25	75
202	116	2020-09-18	2020-09-25	76
82	56	2020-09-18	2020-09-25	77
208	39	2020-09-18	2020-09-25	78
380	200	2020-09-18	2020-09-25	79
165	56	2020-09-18	2020-09-25	80
20	16	2020-09-18	2020-09-25	81
719	325	2020-09-18	2020-09-25	82
217	123	2020-09-18	2020-09-25	83
363	187	2020-09-18	2020-09-25	84
33	28	2020-09-18	2020-09-25	85
155	92	2020-09-18	2020-09-25	86
51	28	2020-09-18	2020-09-25	87
81	52	2020-09-18	2020-09-25	88
722	68	2020-09-18	2020-09-25	89
317	139	2020-09-18	2020-09-25	90
368	192	2020-09-18	2020-09-25	91
375	196	2020-09-18	2020-09-25	92
374	195	2020-09-18	2020-09-25	93
210	66	2020-09-18	2020-09-25	94
678	315	2020-09-18	2020-09-25	95
17	1	2020-09-18	2020-09-25	96
19	15	2020-09-18	2020-09-25	97
393	130	2020-09-18	2020-09-25	98
29	24	2020-09-18	2020-09-25	99
665	234	2020-09-18	2020-09-25	100
364	188	2020-09-18	2020-09-25	101
720	355	2020-09-18	2020-09-25	102
48	35	2020-09-18	2020-09-25	103
93	62	2020-09-18	2020-09-25	104
47	34	2020-09-18	2020-09-25	105
12	21	2020-09-18	2020-09-25	106
356	183	2020-09-18	2020-09-25	107
307	165	2020-09-18	2020-09-25	108
116	74	2020-09-18	2020-09-25	109
9	9	2020-09-18	2020-09-25	110
209	120	2020-09-18	2020-09-25	111
122	20	2020-09-18	2020-09-25	112
887	362	2020-09-18	2020-09-25	113
34	28	2020-09-18	2020-09-25	114
203	117	2020-09-18	2020-09-25	115
397	92	2020-09-18	2020-09-25	116
214	68	2020-09-18	2020-09-25	117
326	159	2020-09-18	2020-09-25	118
372	85	2020-09-18	2020-09-25	119
128	80	2020-09-18	2020-09-25	120
865	356	2020-09-18	2020-09-25	121
13	12	2020-09-18	2020-09-25	122
664	28	2020-09-18	2020-09-25	123
15	14	2020-09-18	2020-09-25	124
107	70	2020-09-18	2020-09-25	125
399	92	2020-09-18	2020-09-25	126
858	301	2020-09-18	2020-09-25	127
64	45	2020-09-18	2020-09-25	128
396	159	2020-09-18	2020-09-25	129
110	32	2020-09-18	2020-09-25	130
18	13	2020-09-18	2020-09-25	131
260	48	2020-09-18	2020-09-25	132
791	344	2020-09-18	2020-09-25	133
31	26	2020-09-18	2020-09-25	134
682	90	2020-09-18	2020-09-25	135
333	174	2020-09-18	2020-09-25	136
218	86	2020-09-18	2020-09-25	137
138	45	2020-09-18	2020-09-25	138
211	121	2020-09-18	2020-09-25	139
95	63	2020-09-18	2020-09-25	140
123	45	2020-09-18	2020-09-25	141
14	13	2020-09-18	2020-09-25	142
58	40	2020-09-18	2020-09-25	143
403	213	2020-09-18	2020-09-25	144
94	19	2020-09-18	2020-09-25	145
369	193	2020-09-18	2020-09-25	146
109	70	2020-09-18	2020-09-25	147
944	371	2020-09-18	2020-09-25	148
115	73	2020-09-18	2020-09-25	149
382	166	2020-09-18	2020-09-25	150
404	214	2020-09-18	2020-09-25	151
25	20	2020-09-18	2020-09-25	152
691	145	2020-09-18	2020-09-25	153
223	35	2020-09-18	2020-09-25	154
708	85	2020-09-18	2020-09-25	155
359	185	2020-09-18	2020-09-25	156
74	28	2020-09-18	2020-09-25	157
945	372	2020-09-18	2020-09-25	158
946	372	2020-09-18	2020-09-25	159
381	201	2020-09-18	2020-09-25	160
174	102	2020-09-18	2020-09-25	161
859	157	2020-09-18	2020-09-25	162
680	48	2020-09-18	2020-09-25	163
868	55	2020-09-18	2020-09-25	164
75	45	2020-09-18	2020-09-25	165
53	37	2020-09-18	2020-09-25	166
227	128	2020-09-18	2020-09-25	167
173	101	2020-09-18	2020-09-25	168
700	74	2020-09-18	2020-09-25	169
666	234	2020-09-18	2020-09-25	170
30	25	2020-09-18	2020-09-25	171
559	134	2020-09-18	2020-09-25	172
213	33	2020-09-18	2020-09-25	173
118	38	2020-09-18	2020-09-25	174
240	137	2020-09-18	2020-09-25	175
230	48	2020-09-18	2020-09-25	176
729	158	2020-09-18	2020-09-25	177
103	68	2020-09-18	2020-09-25	178
229	84	2020-09-18	2020-09-25	179
676	48	2020-09-18	2020-09-25	180
947	69	2020-09-18	2020-09-25	181
222	2	2020-09-18	2020-09-25	182
856	353	2020-09-18	2020-09-25	183
101	67	2020-09-18	2020-09-25	184
408	217	2020-09-18	2020-09-25	185
70	49	2020-09-18	2020-09-25	186
728	329	2020-09-18	2020-09-25	187
205	118	2020-09-18	2020-09-25	188
166	97	2020-09-18	2020-09-25	189
182	104	2020-09-18	2020-09-25	190
221	126	2020-09-18	2020-09-25	191
16	4	2020-09-18	2020-09-25	192
712	322	2020-09-18	2020-09-25	193
948	33	2020-09-18	2020-09-25	194
162	70	2020-09-18	2020-09-25	195
401	211	2020-09-18	2020-09-25	196
949	51	2020-09-18	2020-09-25	197
117	17	2020-09-18	2020-09-25	198
146	87	2020-09-18	2020-09-25	199
153	51	2020-09-18	2020-09-25	200
200	27	2020-06-05	2020-06-12	1
1	1	2020-06-05	2020-06-12	2
3	3	2020-06-05	2020-06-12	3
201	52	2020-06-05	2020-06-12	4
2	2	2020-06-05	2020-06-12	5
6	6	2020-06-05	2020-06-12	6
4	4	2020-06-05	2020-06-12	7
7	7	2020-06-05	2020-06-12	8
68	47	2020-06-05	2020-06-12	9
203	117	2020-06-05	2020-06-12	10
8	8	2020-06-05	2020-06-12	11
202	116	2020-06-05	2020-06-12	12
11	4	2020-06-05	2020-06-12	13
5	5	2020-06-05	2020-06-12	14
99	21	2020-06-05	2020-06-12	15
15	14	2020-06-05	2020-06-12	16
204	63	2020-06-05	2020-06-12	17
205	118	2020-06-05	2020-06-12	18
21	17	2020-06-05	2020-06-12	19
10	10	2020-06-05	2020-06-12	20
212	52	2020-06-05	2020-06-12	21
62	43	2020-06-05	2020-06-12	22
209	120	2020-06-05	2020-06-12	23
12	11	2020-06-05	2020-06-12	24
207	119	2020-06-05	2020-06-12	25
13	12	2020-06-05	2020-06-12	26
30	25	2020-06-05	2020-06-12	27
9	9	2020-06-05	2020-06-12	28
23	19	2020-06-05	2020-06-12	29
158	56	2020-06-05	2020-06-12	30
211	121	2020-06-05	2020-06-12	31
19	15	2020-06-05	2020-06-12	32
210	66	2020-06-05	2020-06-12	33
208	39	2020-06-05	2020-06-12	34
20	16	2020-06-05	2020-06-12	35
18	13	2020-06-05	2020-06-12	36
14	13	2020-06-05	2020-06-12	37
29	24	2020-06-05	2020-06-12	38
36	17	2020-06-05	2020-06-12	39
214	68	2020-06-05	2020-06-12	40
82	56	2020-06-05	2020-06-12	41
17	1	2020-06-05	2020-06-12	42
213	33	2020-06-05	2020-06-12	43
165	56	2020-06-05	2020-06-12	44
24	9	2020-06-05	2020-06-12	45
27	22	2020-06-05	2020-06-12	46
26	21	2020-06-05	2020-06-12	47
218	86	2020-06-05	2020-06-12	48
37	29	2020-06-05	2020-06-12	49
33	28	2020-06-05	2020-06-12	50
25	20	2020-06-05	2020-06-12	51
54	19	2020-06-05	2020-06-12	52
47	34	2020-06-05	2020-06-12	53
110	32	2020-06-05	2020-06-12	54
116	74	2020-06-05	2020-06-12	55
137	51	2020-06-05	2020-06-12	56
222	2	2020-06-05	2020-06-12	57
48	35	2020-06-05	2020-06-12	58
151	90	2020-06-05	2020-06-12	59
217	123	2020-06-05	2020-06-12	60
57	5	2020-06-05	2020-06-12	61
219	124	2020-06-05	2020-06-12	62
34	28	2020-06-05	2020-06-12	63
225	9	2020-06-05	2020-06-12	64
31	26	2020-06-05	2020-06-12	65
51	28	2020-06-05	2020-06-12	66
234	132	2020-06-05	2020-06-12	67
69	48	2020-06-05	2020-06-12	68
40	30	2020-06-05	2020-06-12	69
16	4	2020-06-05	2020-06-12	70
22	18	2020-06-05	2020-06-12	71
224	127	2020-06-05	2020-06-12	72
58	40	2020-06-05	2020-06-12	73
45	32	2020-06-05	2020-06-12	74
81	52	2020-06-05	2020-06-12	75
64	45	2020-06-05	2020-06-12	76
53	37	2020-06-05	2020-06-12	77
230	48	2020-06-05	2020-06-12	78
244	48	2020-06-05	2020-06-12	79
44	20	2020-06-05	2020-06-12	80
227	128	2020-06-05	2020-06-12	81
229	84	2020-06-05	2020-06-12	82
35	13	2020-06-05	2020-06-12	83
228	129	2020-06-05	2020-06-12	84
56	39	2020-06-05	2020-06-12	85
950	302	2020-06-05	2020-06-12	86
76	52	2020-06-05	2020-06-12	87
93	62	2020-06-05	2020-06-12	88
63	44	2020-06-05	2020-06-12	89
83	57	2020-06-05	2020-06-12	90
94	19	2020-06-05	2020-06-12	91
223	35	2020-06-05	2020-06-12	92
70	49	2020-06-05	2020-06-12	93
74	28	2020-06-05	2020-06-12	94
95	63	2020-06-05	2020-06-12	95
107	70	2020-06-05	2020-06-12	96
39	13	2020-06-05	2020-06-12	97
52	20	2020-06-05	2020-06-12	98
75	45	2020-06-05	2020-06-12	99
238	32	2020-06-05	2020-06-12	100
109	70	2020-06-05	2020-06-12	101
122	20	2020-06-05	2020-06-12	102
245	85	2020-06-05	2020-06-12	103
43	10	2020-06-05	2020-06-12	104
150	48	2020-06-05	2020-06-12	105
38	13	2020-06-05	2020-06-12	106
104	69	2020-06-05	2020-06-12	107
77	53	2020-06-05	2020-06-12	108
103	68	2020-06-05	2020-06-12	109
12	21	2020-06-05	2020-06-12	110
115	73	2020-06-05	2020-06-12	111
123	45	2020-06-05	2020-06-12	112
235	133	2020-06-05	2020-06-12	113
250	13	2020-06-05	2020-06-12	114
73	51	2020-06-05	2020-06-12	115
240	137	2020-06-05	2020-06-12	116
128	80	2020-06-05	2020-06-12	117
50	5	2020-06-05	2020-06-12	118
106	66	2020-06-05	2020-06-12	119
96	50	2020-06-05	2020-06-12	120
138	45	2020-06-05	2020-06-12	121
243	139	2020-06-05	2020-06-12	122
242	138	2020-06-05	2020-06-12	123
79	55	2020-06-05	2020-06-12	124
28	23	2020-06-05	2020-06-12	125
111	71	2020-06-05	2020-06-12	126
108	48	2020-06-05	2020-06-12	127
118	38	2020-06-05	2020-06-12	128
255	145	2020-06-05	2020-06-12	129
87	59	2020-06-05	2020-06-12	130
236	134	2020-06-05	2020-06-12	131
247	19	2020-06-05	2020-06-12	132
91	61	2020-06-05	2020-06-12	133
951	70	2020-06-05	2020-06-12	134
157	93	2020-06-05	2020-06-12	135
178	98	2020-06-05	2020-06-12	136
102	27	2020-06-05	2020-06-12	137
98	65	2020-06-05	2020-06-12	138
952	373	2020-06-05	2020-06-12	139
49	36	2020-06-05	2020-06-12	140
71	9	2020-06-05	2020-06-12	141
258	13	2020-06-05	2020-06-12	142
72	50	2020-06-05	2020-06-12	143
140	33	2020-06-05	2020-06-12	144
251	142	2020-06-05	2020-06-12	145
144	86	2020-06-05	2020-06-12	146
101	67	2020-06-05	2020-06-12	147
117	17	2020-06-05	2020-06-12	148
65	13	2020-06-05	2020-06-12	149
257	31	2020-06-05	2020-06-12	150
162	70	2020-06-05	2020-06-12	151
119	75	2020-06-05	2020-06-12	152
153	51	2020-06-05	2020-06-12	153
256	146	2020-06-05	2020-06-12	154
121	20	2020-06-05	2020-06-12	155
146	87	2020-06-05	2020-06-12	156
155	92	2020-06-05	2020-06-12	157
139	60	2020-06-05	2020-06-12	158
265	89	2020-06-05	2020-06-12	159
145	19	2020-06-05	2020-06-12	160
141	84	2020-06-05	2020-06-12	161
97	64	2020-06-05	2020-06-12	162
953	374	2020-06-05	2020-06-12	163
253	144	2020-06-05	2020-06-12	164
254	32	2020-06-05	2020-06-12	165
166	97	2020-06-05	2020-06-12	166
241	66	2020-06-05	2020-06-12	167
173	101	2020-06-05	2020-06-12	168
174	102	2020-06-05	2020-06-12	169
84	58	2020-06-05	2020-06-12	170
129	81	2020-06-05	2020-06-12	171
59	13	2020-06-05	2020-06-12	172
46	33	2020-06-05	2020-06-12	173
181	106	2020-06-05	2020-06-12	174
131	2	2020-06-05	2020-06-12	175
175	21	2020-06-05	2020-06-12	176
182	104	2020-06-05	2020-06-12	177
170	99	2020-06-05	2020-06-12	178
187	63	2020-06-05	2020-06-12	179
132	32	2020-06-05	2020-06-12	180
915	13	2020-06-05	2020-06-12	181
184	19	2020-06-05	2020-06-12	182
60	41	2020-06-05	2020-06-12	183
168	89	2020-06-05	2020-06-12	184
260	48	2020-06-05	2020-06-12	185
188	107	2020-06-05	2020-06-12	186
261	104	2020-06-05	2020-06-12	187
183	29	2020-06-05	2020-06-12	188
89	60	2020-06-05	2020-06-12	189
147	13	2020-06-05	2020-06-12	190
914	24	2020-06-05	2020-06-12	191
196	50	2020-06-05	2020-06-12	192
192	70	2020-06-05	2020-06-12	193
156	37	2020-06-05	2020-06-12	194
78	54	2020-06-05	2020-06-12	195
264	73	2020-06-05	2020-06-12	196
259	147	2020-06-05	2020-06-12	197
943	370	2020-06-05	2020-06-12	198
622	62	2020-06-05	2020-06-12	199
268	150	2020-06-05	2020-06-12	200
200	27	2020-05-29	2020-06-05	1
201	52	2020-05-29	2020-06-05	2
1	1	2020-05-29	2020-06-05	3
3	3	2020-05-29	2020-06-05	4
212	52	2020-05-29	2020-06-05	5
2	2	2020-05-29	2020-06-05	6
6	6	2020-05-29	2020-06-05	7
4	4	2020-05-29	2020-06-05	8
203	117	2020-05-29	2020-06-05	9
7	7	2020-05-29	2020-06-05	10
68	47	2020-05-29	2020-06-05	11
11	4	2020-05-29	2020-06-05	12
8	8	2020-05-29	2020-06-05	13
204	63	2020-05-29	2020-06-05	14
209	120	2020-05-29	2020-06-05	15
5	5	2020-05-29	2020-06-05	16
15	14	2020-05-29	2020-06-05	17
205	118	2020-05-29	2020-06-05	18
202	116	2020-05-29	2020-06-05	19
10	10	2020-05-29	2020-06-05	20
99	21	2020-05-29	2020-06-05	21
12	11	2020-05-29	2020-06-05	22
62	43	2020-05-29	2020-06-05	23
21	17	2020-05-29	2020-06-05	24
207	119	2020-05-29	2020-06-05	25
13	12	2020-05-29	2020-06-05	26
23	19	2020-05-29	2020-06-05	27
9	9	2020-05-29	2020-06-05	28
211	121	2020-05-29	2020-06-05	29
30	25	2020-05-29	2020-06-05	30
158	56	2020-05-29	2020-06-05	31
213	33	2020-05-29	2020-06-05	32
19	15	2020-05-29	2020-06-05	33
214	68	2020-05-29	2020-06-05	34
29	24	2020-05-29	2020-06-05	35
14	13	2020-05-29	2020-06-05	36
20	16	2020-05-29	2020-06-05	37
18	13	2020-05-29	2020-06-05	38
208	39	2020-05-29	2020-06-05	39
76	52	2020-05-29	2020-06-05	40
24	9	2020-05-29	2020-06-05	41
165	56	2020-05-29	2020-06-05	42
244	48	2020-05-29	2020-06-05	43
36	17	2020-05-29	2020-06-05	44
82	56	2020-05-29	2020-06-05	45
210	66	2020-05-29	2020-06-05	46
225	9	2020-05-29	2020-06-05	47
17	1	2020-05-29	2020-06-05	48
218	86	2020-05-29	2020-06-05	49
26	21	2020-05-29	2020-06-05	50
27	22	2020-05-29	2020-06-05	51
954	52	2020-05-29	2020-06-05	52
955	52	2020-05-29	2020-06-05	53
33	28	2020-05-29	2020-06-05	54
37	29	2020-05-29	2020-06-05	55
47	34	2020-05-29	2020-06-05	56
25	20	2020-05-29	2020-06-05	57
956	52	2020-05-29	2020-06-05	58
54	19	2020-05-29	2020-06-05	59
57	5	2020-05-29	2020-06-05	60
48	35	2020-05-29	2020-06-05	61
116	74	2020-05-29	2020-06-05	62
953	374	2020-05-29	2020-06-05	63
137	51	2020-05-29	2020-06-05	64
31	26	2020-05-29	2020-06-05	65
151	90	2020-05-29	2020-06-05	66
16	4	2020-05-29	2020-06-05	67
110	32	2020-05-29	2020-06-05	68
34	28	2020-05-29	2020-06-05	69
40	30	2020-05-29	2020-06-05	70
22	18	2020-05-29	2020-06-05	71
51	28	2020-05-29	2020-06-05	72
222	2	2020-05-29	2020-06-05	73
957	52	2020-05-29	2020-06-05	74
958	52	2020-05-29	2020-06-05	75
69	48	2020-05-29	2020-06-05	76
959	52	2020-05-29	2020-06-05	77
230	48	2020-05-29	2020-06-05	78
960	52	2020-05-29	2020-06-05	79
961	52	2020-05-29	2020-06-05	80
58	40	2020-05-29	2020-06-05	81
64	45	2020-05-29	2020-06-05	82
53	37	2020-05-29	2020-06-05	83
44	20	2020-05-29	2020-06-05	84
219	124	2020-05-29	2020-06-05	85
45	32	2020-05-29	2020-06-05	86
962	52	2020-05-29	2020-06-05	87
81	52	2020-05-29	2020-06-05	88
224	127	2020-05-29	2020-06-05	89
217	123	2020-05-29	2020-06-05	90
963	52	2020-05-29	2020-06-05	91
245	85	2020-05-29	2020-06-05	92
964	52	2020-05-29	2020-06-05	93
56	39	2020-05-29	2020-06-05	94
229	84	2020-05-29	2020-06-05	95
35	13	2020-05-29	2020-06-05	96
242	138	2020-05-29	2020-06-05	97
63	44	2020-05-29	2020-06-05	98
39	13	2020-05-29	2020-06-05	99
83	57	2020-05-29	2020-06-05	100
241	66	2020-05-29	2020-06-05	101
93	62	2020-05-29	2020-06-05	102
52	20	2020-05-29	2020-06-05	103
74	28	2020-05-29	2020-06-05	104
95	63	2020-05-29	2020-06-05	105
965	52	2020-05-29	2020-06-05	106
94	19	2020-05-29	2020-06-05	107
70	49	2020-05-29	2020-06-05	108
77	53	2020-05-29	2020-06-05	109
75	45	2020-05-29	2020-06-05	110
107	70	2020-05-29	2020-06-05	111
235	133	2020-05-29	2020-06-05	112
43	10	2020-05-29	2020-06-05	113
966	33	2020-05-29	2020-06-05	114
250	13	2020-05-29	2020-06-05	115
73	51	2020-05-29	2020-06-05	116
109	70	2020-05-29	2020-06-05	117
268	150	2020-05-29	2020-06-05	118
238	32	2020-05-29	2020-06-05	119
106	66	2020-05-29	2020-06-05	120
38	13	2020-05-29	2020-06-05	121
28	23	2020-05-29	2020-06-05	122
140	33	2020-05-29	2020-06-05	123
234	132	2020-05-29	2020-06-05	124
103	68	2020-05-29	2020-06-05	125
46	33	2020-05-29	2020-06-05	126
115	73	2020-05-29	2020-06-05	127
104	69	2020-05-29	2020-06-05	128
96	50	2020-05-29	2020-06-05	129
123	45	2020-05-29	2020-06-05	130
967	375	2020-05-29	2020-06-05	131
150	48	2020-05-29	2020-06-05	132
50	5	2020-05-29	2020-06-05	133
243	139	2020-05-29	2020-06-05	134
12	21	2020-05-29	2020-06-05	135
258	13	2020-05-29	2020-06-05	136
128	80	2020-05-29	2020-06-05	137
111	71	2020-05-29	2020-06-05	138
122	20	2020-05-29	2020-06-05	139
157	66	2020-05-29	2020-06-05	140
706	66	2020-05-29	2020-06-05	141
98	65	2020-05-29	2020-06-05	142
138	45	2020-05-29	2020-06-05	143
87	59	2020-05-29	2020-06-05	144
79	55	2020-05-29	2020-06-05	145
265	89	2020-05-29	2020-06-05	146
108	48	2020-05-29	2020-06-05	147
914	24	2020-05-29	2020-06-05	148
71	9	2020-05-29	2020-06-05	149
118	38	2020-05-29	2020-06-05	150
247	19	2020-05-29	2020-06-05	151
91	61	2020-05-29	2020-06-05	152
228	129	2020-05-29	2020-06-05	153
102	27	2020-05-29	2020-06-05	154
49	36	2020-05-29	2020-06-05	155
72	50	2020-05-29	2020-06-05	156
157	93	2020-05-29	2020-06-05	157
240	137	2020-05-29	2020-06-05	158
236	134	2020-05-29	2020-06-05	159
178	98	2020-05-29	2020-06-05	160
84	58	2020-05-29	2020-06-05	161
153	51	2020-05-29	2020-06-05	162
119	75	2020-05-29	2020-06-05	163
144	86	2020-05-29	2020-06-05	164
65	13	2020-05-29	2020-06-05	165
139	60	2020-05-29	2020-06-05	166
253	144	2020-05-29	2020-06-05	167
101	67	2020-05-29	2020-06-05	168
251	142	2020-05-29	2020-06-05	169
117	17	2020-05-29	2020-06-05	170
257	31	2020-05-29	2020-06-05	171
146	87	2020-05-29	2020-06-05	172
162	70	2020-05-29	2020-06-05	173
141	84	2020-05-29	2020-06-05	174
145	19	2020-05-29	2020-06-05	175
256	146	2020-05-29	2020-06-05	176
59	13	2020-05-29	2020-06-05	177
173	101	2020-05-29	2020-06-05	178
166	97	2020-05-29	2020-06-05	179
968	373	2020-05-29	2020-06-05	180
97	64	2020-05-29	2020-06-05	181
121	20	2020-05-29	2020-06-05	182
969	376	2020-05-29	2020-06-05	183
89	60	2020-05-29	2020-06-05	184
255	145	2020-05-29	2020-06-05	185
129	81	2020-05-29	2020-06-05	186
254	32	2020-05-29	2020-06-05	187
970	72	2020-05-29	2020-06-05	188
915	13	2020-05-29	2020-06-05	189
971	72	2020-05-29	2020-06-05	190
972	205	2020-05-29	2020-06-05	191
410	33	2020-05-29	2020-06-05	192
174	102	2020-05-29	2020-06-05	193
917	302	2020-05-29	2020-06-05	194
131	2	2020-05-29	2020-06-05	195
132	32	2020-05-29	2020-06-05	196
223	35	2020-05-29	2020-06-05	197
181	106	2020-05-29	2020-06-05	198
170	99	2020-05-29	2020-06-05	199
182	104	2020-05-29	2020-06-05	200
7	7	2020-02-14	2020-02-21	1
5	5	2020-02-14	2020-02-21	2
1	1	2020-02-14	2020-02-21	3
85	28	2020-02-14	2020-02-21	4
10	10	2020-02-14	2020-02-21	5
4	4	2020-02-14	2020-02-21	6
43	10	2020-02-14	2020-02-21	7
20	16	2020-02-14	2020-02-21	8
12	11	2020-02-14	2020-02-21	9
19	15	2020-02-14	2020-02-21	10
29	24	2020-02-14	2020-02-21	11
34	28	2020-02-14	2020-02-21	12
23	19	2020-02-14	2020-02-21	13
31	26	2020-02-14	2020-02-21	14
88	10	2020-02-14	2020-02-21	15
21	17	2020-02-14	2020-02-21	16
27	22	2020-02-14	2020-02-21	17
39	13	2020-02-14	2020-02-21	18
33	28	2020-02-14	2020-02-21	19
37	29	2020-02-14	2020-02-21	20
26	21	2020-02-14	2020-02-21	21
56	39	2020-02-14	2020-02-21	22
9	9	2020-02-14	2020-02-21	23
36	17	2020-02-14	2020-02-21	24
60	41	2020-02-14	2020-02-21	25
55	38	2020-02-14	2020-02-21	26
49	36	2020-02-14	2020-02-21	27
16	4	2020-02-14	2020-02-21	28
3	3	2020-02-14	2020-02-21	29
149	89	2020-02-14	2020-02-21	30
8	8	2020-02-14	2020-02-21	31
59	13	2020-02-14	2020-02-21	32
53	37	2020-02-14	2020-02-21	33
48	35	2020-02-14	2020-02-21	34
79	55	2020-02-14	2020-02-21	35
113	54	2020-02-14	2020-02-21	36
50	5	2020-02-14	2020-02-21	37
52	20	2020-02-14	2020-02-21	38
100	66	2020-02-14	2020-02-21	39
13	12	2020-02-14	2020-02-21	40
89	60	2020-02-14	2020-02-21	41
132	32	2020-02-14	2020-02-21	42
64	45	2020-02-14	2020-02-21	43
54	19	2020-02-14	2020-02-21	44
90	61	2020-02-14	2020-02-21	45
97	64	2020-02-14	2020-02-21	46
58	40	2020-02-14	2020-02-21	47
74	28	2020-02-14	2020-02-21	48
102	27	2020-02-14	2020-02-21	49
133	82	2020-02-14	2020-02-21	50
77	53	2020-02-14	2020-02-21	51
125	78	2020-02-14	2020-02-21	52
775	283	2020-02-14	2020-02-21	53
51	28	2020-02-14	2020-02-21	54
70	49	2020-02-14	2020-02-21	55
120	76	2020-02-14	2020-02-21	56
973	368	2020-02-14	2020-02-21	57
515	64	2020-02-14	2020-02-21	58
83	57	2020-02-14	2020-02-21	59
82	56	2020-02-14	2020-02-21	60
974	10	2020-02-14	2020-02-21	61
106	66	2020-02-14	2020-02-21	62
75	45	2020-02-14	2020-02-21	63
975	10	2020-02-14	2020-02-21	64
976	10	2020-02-14	2020-02-21	65
69	48	2020-02-14	2020-02-21	66
47	34	2020-02-14	2020-02-21	67
6	6	2020-02-14	2020-02-21	68
41	1	2020-02-14	2020-02-21	69
30	25	2020-02-14	2020-02-21	70
81	52	2020-02-14	2020-02-21	71
977	10	2020-02-14	2020-02-21	72
144	86	2020-02-14	2020-02-21	73
141	84	2020-02-14	2020-02-21	74
121	20	2020-02-14	2020-02-21	75
147	13	2020-02-14	2020-02-21	76
95	63	2020-02-14	2020-02-21	77
99	21	2020-02-14	2020-02-21	78
978	10	2020-02-14	2020-02-21	79
87	59	2020-02-14	2020-02-21	80
108	48	2020-02-14	2020-02-21	81
908	153	2020-02-14	2020-02-21	82
523	27	2020-02-14	2020-02-21	83
91	61	2020-02-14	2020-02-21	84
979	10	2020-02-14	2020-02-21	85
980	10	2020-02-14	2020-02-21	86
517	272	2020-02-14	2020-02-21	87
776	84	2020-02-14	2020-02-21	88
105	7	2020-02-14	2020-02-21	89
119	75	2020-02-14	2020-02-21	90
160	89	2020-02-14	2020-02-21	91
521	78	2020-02-14	2020-02-21	92
163	95	2020-02-14	2020-02-21	93
114	19	2020-02-14	2020-02-21	94
111	71	2020-02-14	2020-02-21	95
981	97	2020-02-14	2020-02-21	96
103	68	2020-02-14	2020-02-21	97
191	110	2020-02-14	2020-02-21	98
67	1	2020-02-14	2020-02-21	99
531	276	2020-02-14	2020-02-21	100
154	28	2020-02-14	2020-02-21	101
93	62	2020-02-14	2020-02-21	102
982	10	2020-02-14	2020-02-21	103
528	45	2020-02-14	2020-02-21	104
554	44	2020-02-14	2020-02-21	105
117	17	2020-02-14	2020-02-21	106
139	60	2020-02-14	2020-02-21	107
104	69	2020-02-14	2020-02-21	108
152	91	2020-02-14	2020-02-21	109
115	73	2020-02-14	2020-02-21	110
532	55	2020-02-14	2020-02-21	111
526	186	2020-02-14	2020-02-21	112
94	19	2020-02-14	2020-02-21	113
782	196	2020-02-14	2020-02-21	114
118	38	2020-02-14	2020-02-21	115
983	10	2020-02-14	2020-02-21	116
194	112	2020-02-14	2020-02-21	117
135	20	2020-02-14	2020-02-21	118
146	87	2020-02-14	2020-02-21	119
63	44	2020-02-14	2020-02-21	120
123	45	2020-02-14	2020-02-21	121
984	365	2020-02-14	2020-02-21	122
530	111	2020-02-14	2020-02-21	123
101	67	2020-02-14	2020-02-21	124
128	80	2020-02-14	2020-02-21	125
534	28	2020-02-14	2020-02-21	126
145	19	2020-02-14	2020-02-21	127
529	196	2020-02-14	2020-02-21	128
168	89	2020-02-14	2020-02-21	129
540	40	2020-02-14	2020-02-21	130
138	45	2020-02-14	2020-02-21	131
150	48	2020-02-14	2020-02-21	132
541	279	2020-02-14	2020-02-21	133
535	27	2020-02-14	2020-02-21	134
985	10	2020-02-14	2020-02-21	135
519	158	2020-02-14	2020-02-21	136
785	26	2020-02-14	2020-02-21	137
131	2	2020-02-14	2020-02-21	138
986	97	2020-02-14	2020-02-21	139
156	37	2020-02-14	2020-02-21	140
987	10	2020-02-14	2020-02-21	141
909	98	2020-02-14	2020-02-21	142
174	102	2020-02-14	2020-02-21	143
109	70	2020-02-14	2020-02-21	144
546	123	2020-02-14	2020-02-21	145
175	21	2020-02-14	2020-02-21	146
544	280	2020-02-14	2020-02-21	147
165	56	2020-02-14	2020-02-21	148
527	50	2020-02-14	2020-02-21	149
539	278	2020-02-14	2020-02-21	150
783	299	2020-02-14	2020-02-21	151
545	281	2020-02-14	2020-02-21	152
107	70	2020-02-14	2020-02-21	153
187	63	2020-02-14	2020-02-21	154
181	106	2020-02-14	2020-02-21	155
153	51	2020-02-14	2020-02-21	156
547	282	2020-02-14	2020-02-21	157
159	94	2020-02-14	2020-02-21	158
551	28	2020-02-14	2020-02-21	159
988	283	2020-02-14	2020-02-21	160
124	77	2020-02-14	2020-02-21	161
558	278	2020-02-14	2020-02-21	162
185	22	2020-02-14	2020-02-21	163
989	10	2020-02-14	2020-02-21	164
130	67	2020-02-14	2020-02-21	165
533	33	2020-02-14	2020-02-21	166
549	112	2020-02-14	2020-02-21	167
564	286	2020-02-14	2020-02-21	168
140	33	2020-02-14	2020-02-21	169
522	274	2020-02-14	2020-02-21	170
143	85	2020-02-14	2020-02-21	171
179	105	2020-02-14	2020-02-21	172
158	56	2020-02-14	2020-02-21	173
556	234	2020-02-14	2020-02-21	174
990	97	2020-02-14	2020-02-21	175
562	28	2020-02-14	2020-02-21	176
282	74	2020-02-14	2020-02-21	177
518	273	2020-02-14	2020-02-21	178
184	19	2020-02-14	2020-02-21	179
560	28	2020-02-14	2020-02-21	180
557	154	2020-02-14	2020-02-21	181
162	70	2020-02-14	2020-02-21	182
552	111	2020-02-14	2020-02-21	183
199	115	2020-02-14	2020-02-21	184
573	292	2020-02-14	2020-02-21	185
520	234	2020-02-14	2020-02-21	186
991	97	2020-02-14	2020-02-21	187
166	97	2020-02-14	2020-02-21	188
183	29	2020-02-14	2020-02-21	189
177	104	2020-02-14	2020-02-21	190
178	98	2020-02-14	2020-02-21	191
559	134	2020-02-14	2020-02-21	192
992	10	2020-02-14	2020-02-21	193
188	107	2020-02-14	2020-02-21	194
279	153	2020-02-14	2020-02-21	195
12	21	2020-02-14	2020-02-21	196
577	28	2020-02-14	2020-02-21	197
912	89	2020-02-14	2020-02-21	198
176	103	2020-02-14	2020-02-21	199
173	101	2020-02-14	2020-02-21	200
283	63	2020-10-23	2020-10-30	1
285	42	2020-10-23	2020-10-30	2
286	157	2020-10-23	2020-10-30	3
289	158	2020-10-23	2020-10-30	4
292	160	2020-10-23	2020-10-30	5
288	92	2020-10-23	2020-10-30	6
291	159	2020-10-23	2020-10-30	7
1	1	2020-10-23	2020-10-30	8
293	10	2020-10-23	2020-10-30	9
290	10	2020-10-23	2020-10-30	10
99	21	2020-10-23	2020-10-30	11
294	92	2020-10-23	2020-10-30	12
297	162	2020-10-23	2020-10-30	13
296	161	2020-10-23	2020-10-30	14
200	27	2020-10-23	2020-10-30	15
301	2	2020-10-23	2020-10-30	16
298	123	2020-10-23	2020-10-30	17
299	163	2020-10-23	2020-10-30	18
303	77	2020-10-23	2020-10-30	19
305	29	2020-10-23	2020-10-30	20
216	122	2020-10-23	2020-10-30	21
306	164	2020-10-23	2020-10-30	22
21	17	2020-10-23	2020-10-30	23
3	3	2020-10-23	2020-10-30	24
308	74	2020-10-23	2020-10-30	25
320	170	2020-10-23	2020-10-30	26
312	167	2020-10-23	2020-10-30	27
310	20	2020-10-23	2020-10-30	28
353	181	2020-10-23	2020-10-30	29
313	168	2020-10-23	2020-10-30	30
307	165	2020-10-23	2020-10-30	31
323	171	2020-10-23	2020-10-30	32
62	43	2020-10-23	2020-10-30	33
36	17	2020-10-23	2020-10-30	34
319	169	2020-10-23	2020-10-30	35
331	171	2020-10-23	2020-10-30	36
7	7	2020-10-23	2020-10-30	37
327	172	2020-10-23	2020-10-30	38
316	130	2020-10-23	2020-10-30	39
321	16	2020-10-23	2020-10-30	40
325	130	2020-10-23	2020-10-30	41
317	139	2020-10-23	2020-10-30	42
330	48	2020-10-23	2020-10-30	43
336	92	2020-10-23	2020-10-30	44
333	174	2020-10-23	2020-10-30	45
311	166	2020-10-23	2020-10-30	46
315	4	2020-10-23	2020-10-30	47
334	32	2020-10-23	2020-10-30	48
342	171	2020-10-23	2020-10-30	49
219	124	2020-10-23	2020-10-30	50
326	159	2020-10-23	2020-10-30	51
358	184	2020-10-23	2020-10-30	52
4	4	2020-10-23	2020-10-30	53
6	6	2020-10-23	2020-10-30	54
337	175	2020-10-23	2020-10-30	55
201	52	2020-10-23	2020-10-30	56
343	176	2020-10-23	2020-10-30	57
346	48	2020-10-23	2020-10-30	58
329	173	2020-10-23	2020-10-30	59
8	8	2020-10-23	2020-10-30	60
236	134	2020-10-23	2020-10-30	61
341	25	2020-10-23	2020-10-30	62
23	19	2020-10-23	2020-10-30	63
348	179	2020-10-23	2020-10-30	64
26	21	2020-10-23	2020-10-30	65
204	63	2020-10-23	2020-10-30	66
231	130	2020-10-23	2020-10-30	67
158	56	2020-10-23	2020-10-30	68
27	22	2020-10-23	2020-10-30	69
345	178	2020-10-23	2020-10-30	70
69	48	2020-10-23	2020-10-30	71
37	29	2020-10-23	2020-10-30	72
5	5	2020-10-23	2020-10-30	73
352	126	2020-10-23	2020-10-30	74
351	80	2020-10-23	2020-10-30	75
354	182	2020-10-23	2020-10-30	76
54	19	2020-10-23	2020-10-30	77
150	48	2020-10-23	2020-10-30	78
355	96	2020-10-23	2020-10-30	79
360	171	2020-10-23	2020-10-30	80
12	11	2020-10-23	2020-10-30	81
356	183	2020-10-23	2020-10-30	82
51	28	2020-10-23	2020-10-30	83
335	89	2020-10-23	2020-10-30	84
137	51	2020-10-23	2020-10-30	85
328	21	2020-10-23	2020-10-30	86
82	56	2020-10-23	2020-10-30	87
33	28	2020-10-23	2020-10-30	88
362	92	2020-10-23	2020-10-30	89
68	47	2020-10-23	2020-10-30	90
387	205	2020-10-23	2020-10-30	91
12	21	2020-10-23	2020-10-30	92
81	52	2020-10-23	2020-10-30	93
10	10	2020-10-23	2020-10-30	94
11	4	2020-10-23	2020-10-30	95
47	34	2020-10-23	2020-10-30	96
361	186	2020-10-23	2020-10-30	97
2	2	2020-10-23	2020-10-30	98
20	16	2020-10-23	2020-10-30	99
368	192	2020-10-23	2020-10-30	100
359	185	2020-10-23	2020-10-30	101
715	171	2020-10-23	2020-10-30	102
363	187	2020-10-23	2020-10-30	103
165	56	2020-10-23	2020-10-30	104
95	63	2020-10-23	2020-10-30	105
93	62	2020-10-23	2020-10-30	106
394	194	2020-10-23	2020-10-30	107
128	80	2020-10-23	2020-10-30	108
155	92	2020-10-23	2020-10-30	109
29	24	2020-10-23	2020-10-30	110
402	212	2020-10-23	2020-10-30	111
202	116	2020-10-23	2020-10-30	112
366	190	2020-10-23	2020-10-30	113
364	188	2020-10-23	2020-10-30	114
374	195	2020-10-23	2020-10-30	115
19	15	2020-10-23	2020-10-30	116
370	48	2020-10-23	2020-10-30	117
373	194	2020-10-23	2020-10-30	118
380	200	2020-10-23	2020-10-30	119
379	172	2020-10-23	2020-10-30	120
48	35	2020-10-23	2020-10-30	121
122	20	2020-10-23	2020-10-30	122
369	193	2020-10-23	2020-10-30	123
372	85	2020-10-23	2020-10-30	124
349	180	2020-10-23	2020-10-30	125
735	331	2020-10-23	2020-10-30	126
260	48	2020-10-23	2020-10-30	127
350	16	2020-10-23	2020-10-30	128
107	70	2020-10-23	2020-10-30	129
214	68	2020-10-23	2020-10-30	130
375	196	2020-10-23	2020-10-30	131
389	122	2020-10-23	2020-10-30	132
34	28	2020-10-23	2020-10-30	133
391	207	2020-10-23	2020-10-30	134
138	45	2020-10-23	2020-10-30	135
407	56	2020-10-23	2020-10-30	136
376	197	2020-10-23	2020-10-30	137
116	74	2020-10-23	2020-10-30	138
397	92	2020-10-23	2020-10-30	139
398	209	2020-10-23	2020-10-30	140
340	132	2020-10-23	2020-10-30	141
382	166	2020-10-23	2020-10-30	142
719	325	2020-10-23	2020-10-30	143
378	199	2020-10-23	2020-10-30	144
174	102	2020-10-23	2020-10-30	145
173	101	2020-10-23	2020-10-30	146
64	45	2020-10-23	2020-10-30	147
58	40	2020-10-23	2020-10-30	148
385	185	2020-10-23	2020-10-30	149
123	45	2020-10-23	2020-10-30	150
393	130	2020-10-23	2020-10-30	151
403	213	2020-10-23	2020-10-30	152
396	159	2020-10-23	2020-10-30	153
399	92	2020-10-23	2020-10-30	154
109	70	2020-10-23	2020-10-30	155
9	9	2020-10-23	2020-10-30	156
381	201	2020-10-23	2020-10-30	157
371	32	2020-10-23	2020-10-30	158
115	73	2020-10-23	2020-10-30	159
31	26	2020-10-23	2020-10-30	160
17	1	2020-10-23	2020-10-30	161
94	19	2020-10-23	2020-10-30	162
405	215	2020-10-23	2020-10-30	163
404	214	2020-10-23	2020-10-30	164
217	123	2020-10-23	2020-10-30	165
401	211	2020-10-23	2020-10-30	166
218	86	2020-10-23	2020-10-30	167
367	191	2020-10-23	2020-10-30	168
187	63	2020-10-23	2020-10-30	169
74	28	2020-10-23	2020-10-30	170
660	169	2020-10-23	2020-10-30	171
118	38	2020-10-23	2020-10-30	172
13	12	2020-10-23	2020-10-30	173
208	39	2020-10-23	2020-10-30	174
993	106	2020-10-23	2020-10-30	175
365	189	2020-10-23	2020-10-30	176
75	45	2020-10-23	2020-10-30	177
722	68	2020-10-23	2020-10-30	178
384	203	2020-10-23	2020-10-30	179
210	66	2020-10-23	2020-10-30	180
203	117	2020-10-23	2020-10-30	181
70	49	2020-10-23	2020-10-30	182
25	20	2020-10-23	2020-10-30	183
383	202	2020-10-23	2020-10-30	184
101	67	2020-10-23	2020-10-30	185
408	217	2020-10-23	2020-10-30	186
166	97	2020-10-23	2020-10-30	187
668	314	2020-10-23	2020-10-30	188
728	329	2020-10-23	2020-10-30	189
103	68	2020-10-23	2020-10-30	190
726	45	2020-10-23	2020-10-30	191
53	37	2020-10-23	2020-10-30	192
712	322	2020-10-23	2020-10-30	193
211	121	2020-10-23	2020-10-30	194
386	204	2020-10-23	2020-10-30	195
213	33	2020-10-23	2020-10-30	196
994	377	2020-10-23	2020-10-30	197
279	153	2020-10-23	2020-10-30	198
91	61	2020-10-23	2020-10-30	199
182	104	2020-10-23	2020-10-30	200
292	160	2020-09-04	2020-09-11	1
291	159	2020-09-04	2020-09-11	2
285	42	2020-09-04	2020-09-11	3
289	158	2020-09-04	2020-09-11	4
1	1	2020-09-04	2020-09-11	5
99	21	2020-09-04	2020-09-11	6
216	122	2020-09-04	2020-09-11	7
301	2	2020-09-04	2020-09-11	8
200	27	2020-09-04	2020-09-11	9
323	171	2020-09-04	2020-09-11	10
294	92	2020-09-04	2020-09-11	11
303	77	2020-09-04	2020-09-11	12
297	162	2020-09-04	2020-09-11	13
336	92	2020-09-04	2020-09-11	14
62	43	2020-09-04	2020-09-11	15
3	3	2020-09-04	2020-09-11	16
321	16	2020-09-04	2020-09-11	17
286	157	2020-09-04	2020-09-11	18
310	20	2020-09-04	2020-09-11	19
327	172	2020-09-04	2020-09-11	20
312	167	2020-09-04	2020-09-11	21
231	130	2020-09-04	2020-09-11	22
330	48	2020-09-04	2020-09-11	23
296	161	2020-09-04	2020-09-11	24
7	7	2020-09-04	2020-09-11	25
219	124	2020-09-04	2020-09-11	26
334	32	2020-09-04	2020-09-11	27
201	52	2020-09-04	2020-09-11	28
319	169	2020-09-04	2020-09-11	29
21	17	2020-09-04	2020-09-11	30
217	123	2020-09-04	2020-09-11	31
346	48	2020-09-04	2020-09-11	32
36	17	2020-09-04	2020-09-11	33
370	48	2020-09-04	2020-09-11	34
355	96	2020-09-04	2020-09-11	35
6	6	2020-09-04	2020-09-11	36
361	186	2020-09-04	2020-09-11	37
379	172	2020-09-04	2020-09-11	38
236	134	2020-09-04	2020-09-11	39
298	123	2020-09-04	2020-09-11	40
4	4	2020-09-04	2020-09-11	41
8	8	2020-09-04	2020-09-11	42
342	171	2020-09-04	2020-09-11	43
11	4	2020-09-04	2020-09-11	44
366	190	2020-09-04	2020-09-11	45
362	92	2020-09-04	2020-09-11	46
313	168	2020-09-04	2020-09-11	47
137	51	2020-09-04	2020-09-11	48
68	47	2020-09-04	2020-09-11	49
208	39	2020-09-04	2020-09-11	50
204	63	2020-09-04	2020-09-11	51
668	314	2020-09-04	2020-09-11	52
398	209	2020-09-04	2020-09-11	53
2	2	2020-09-04	2020-09-11	54
23	19	2020-09-04	2020-09-11	55
391	207	2020-09-04	2020-09-11	56
5	5	2020-09-04	2020-09-11	57
26	21	2020-09-04	2020-09-11	58
858	301	2020-09-04	2020-09-11	59
202	116	2020-09-04	2020-09-11	60
343	176	2020-09-04	2020-09-11	61
158	56	2020-09-04	2020-09-11	62
348	179	2020-09-04	2020-09-11	63
69	48	2020-09-04	2020-09-11	64
20	16	2020-09-04	2020-09-11	65
37	29	2020-09-04	2020-09-11	66
27	22	2020-09-04	2020-09-11	67
54	19	2020-09-04	2020-09-11	68
12	11	2020-09-04	2020-09-11	69
363	187	2020-09-04	2020-09-11	70
150	48	2020-09-04	2020-09-11	71
995	337	2020-09-04	2020-09-11	72
82	56	2020-09-04	2020-09-11	73
33	28	2020-09-04	2020-09-11	74
17	1	2020-09-04	2020-09-11	75
380	200	2020-09-04	2020-09-11	76
214	68	2020-09-04	2020-09-11	77
665	234	2020-09-04	2020-09-11	78
209	120	2020-09-04	2020-09-11	79
155	92	2020-09-04	2020-09-11	80
10	10	2020-09-04	2020-09-11	81
51	28	2020-09-04	2020-09-11	82
996	130	2020-09-04	2020-09-11	83
9	9	2020-09-04	2020-09-11	84
210	66	2020-09-04	2020-09-11	85
165	56	2020-09-04	2020-09-11	86
393	130	2020-09-04	2020-09-11	87
678	315	2020-09-04	2020-09-11	88
664	28	2020-09-04	2020-09-11	89
81	52	2020-09-04	2020-09-11	90
19	15	2020-09-04	2020-09-11	91
48	35	2020-09-04	2020-09-11	92
29	24	2020-09-04	2020-09-11	93
116	74	2020-09-04	2020-09-11	94
397	92	2020-09-04	2020-09-11	95
682	90	2020-09-04	2020-09-11	96
354	182	2020-09-04	2020-09-11	97
223	35	2020-09-04	2020-09-11	98
47	34	2020-09-04	2020-09-11	99
364	188	2020-09-04	2020-09-11	100
720	355	2020-09-04	2020-09-11	101
719	325	2020-09-04	2020-09-11	102
203	117	2020-09-04	2020-09-11	103
122	20	2020-09-04	2020-09-11	104
93	62	2020-09-04	2020-09-11	105
887	362	2020-09-04	2020-09-11	106
13	12	2020-09-04	2020-09-11	107
12	21	2020-09-04	2020-09-11	108
34	28	2020-09-04	2020-09-11	109
691	145	2020-09-04	2020-09-11	110
15	14	2020-09-04	2020-09-11	111
997	205	2020-09-04	2020-09-11	112
205	118	2020-09-04	2020-09-11	113
25	20	2020-09-04	2020-09-11	114
998	325	2020-09-04	2020-09-11	115
791	344	2020-09-04	2020-09-11	116
326	159	2020-09-04	2020-09-11	117
865	356	2020-09-04	2020-09-11	118
859	157	2020-09-04	2020-09-11	119
110	32	2020-09-04	2020-09-11	120
18	13	2020-09-04	2020-09-11	121
227	128	2020-09-04	2020-09-11	122
64	45	2020-09-04	2020-09-11	123
31	26	2020-09-04	2020-09-11	124
211	121	2020-09-04	2020-09-11	125
666	234	2020-09-04	2020-09-11	126
107	70	2020-09-04	2020-09-11	127
218	86	2020-09-04	2020-09-11	128
128	80	2020-09-04	2020-09-11	129
260	48	2020-09-04	2020-09-11	130
94	19	2020-09-04	2020-09-11	131
58	40	2020-09-04	2020-09-11	132
95	63	2020-09-04	2020-09-11	133
115	73	2020-09-04	2020-09-11	134
123	45	2020-09-04	2020-09-11	135
404	214	2020-09-04	2020-09-11	136
138	45	2020-09-04	2020-09-11	137
396	159	2020-09-04	2020-09-11	138
317	139	2020-09-04	2020-09-11	139
14	13	2020-09-04	2020-09-11	140
222	2	2020-09-04	2020-09-11	141
30	25	2020-09-04	2020-09-11	142
109	70	2020-09-04	2020-09-11	143
229	84	2020-09-04	2020-09-11	144
680	48	2020-09-04	2020-09-11	145
856	353	2020-09-04	2020-09-11	146
240	137	2020-09-04	2020-09-11	147
213	33	2020-09-04	2020-09-11	148
230	48	2020-09-04	2020-09-11	149
672	22	2020-09-04	2020-09-11	150
53	37	2020-09-04	2020-09-11	151
676	48	2020-09-04	2020-09-11	152
700	74	2020-09-04	2020-09-11	153
857	169	2020-09-04	2020-09-11	154
372	85	2020-09-04	2020-09-11	155
382	166	2020-09-04	2020-09-11	156
999	344	2020-09-04	2020-09-11	157
708	85	2020-09-04	2020-09-11	158
369	193	2020-09-04	2020-09-11	159
74	28	2020-09-04	2020-09-11	160
75	45	2020-09-04	2020-09-11	161
207	119	2020-09-04	2020-09-11	162
559	134	2020-09-04	2020-09-11	163
306	164	2020-09-04	2020-09-11	164
862	88	2020-09-04	2020-09-11	165
237	135	2020-09-04	2020-09-11	166
399	92	2020-09-04	2020-09-11	167
174	102	2020-09-04	2020-09-11	168
221	126	2020-09-04	2020-09-11	169
16	4	2020-09-04	2020-09-11	170
325	130	2020-09-04	2020-09-11	171
861	56	2020-09-04	2020-09-11	172
103	68	2020-09-04	2020-09-11	173
401	211	2020-09-04	2020-09-11	174
173	101	2020-09-04	2020-09-11	175
118	38	2020-09-04	2020-09-11	176
24	9	2020-09-04	2020-09-11	177
182	104	2020-09-04	2020-09-11	178
157	93	2020-09-04	2020-09-11	179
864	159	2020-09-04	2020-09-11	180
729	158	2020-09-04	2020-09-11	181
693	58	2020-09-04	2020-09-11	182
101	67	2020-09-04	2020-09-11	183
860	177	2020-09-04	2020-09-11	184
166	97	2020-09-04	2020-09-11	185
712	322	2020-09-04	2020-09-11	186
368	192	2020-09-04	2020-09-11	187
359	185	2020-09-04	2020-09-11	188
408	217	2020-09-04	2020-09-11	189
702	319	2020-09-04	2020-09-11	190
146	87	2020-09-04	2020-09-11	191
690	317	2020-09-04	2020-09-11	192
667	234	2020-09-04	2020-09-11	193
866	316	2020-09-04	2020-09-11	194
56	39	2020-09-04	2020-09-11	195
705	354	2020-09-04	2020-09-11	196
162	70	2020-09-04	2020-09-11	197
688	110	2020-09-04	2020-09-11	198
117	17	2020-09-04	2020-09-11	199
699	33	2020-09-04	2020-09-11	200
285	42	2020-10-16	2020-10-23	1
286	157	2020-10-16	2020-10-23	2
292	160	2020-10-16	2020-10-23	3
289	158	2020-10-16	2020-10-23	4
291	159	2020-10-16	2020-10-23	5
288	92	2020-10-16	2020-10-23	6
1	1	2020-10-16	2020-10-23	7
294	92	2020-10-16	2020-10-23	8
293	10	2020-10-16	2020-10-23	9
99	21	2020-10-16	2020-10-23	10
290	10	2020-10-16	2020-10-23	11
297	162	2020-10-16	2020-10-23	12
296	161	2020-10-16	2020-10-23	13
200	27	2020-10-16	2020-10-23	14
298	123	2020-10-16	2020-10-23	15
301	2	2020-10-16	2020-10-23	16
303	77	2020-10-16	2020-10-23	17
216	122	2020-10-16	2020-10-23	18
305	29	2020-10-16	2020-10-23	19
299	163	2020-10-16	2020-10-23	20
320	170	2020-10-16	2020-10-23	21
331	171	2020-10-16	2020-10-23	22
306	164	2020-10-16	2020-10-23	23
3	3	2020-10-16	2020-10-23	24
323	171	2020-10-16	2020-10-23	25
21	17	2020-10-16	2020-10-23	26
312	167	2020-10-16	2020-10-23	27
308	74	2020-10-16	2020-10-23	28
310	20	2020-10-16	2020-10-23	29
313	168	2020-10-16	2020-10-23	30
62	43	2020-10-16	2020-10-23	31
307	165	2020-10-16	2020-10-23	32
327	172	2020-10-16	2020-10-23	33
321	16	2020-10-16	2020-10-23	34
36	17	2020-10-16	2020-10-23	35
7	7	2020-10-16	2020-10-23	36
316	130	2020-10-16	2020-10-23	37
319	169	2020-10-16	2020-10-23	38
336	92	2020-10-16	2020-10-23	39
325	130	2020-10-16	2020-10-23	40
330	48	2020-10-16	2020-10-23	41
334	32	2020-10-16	2020-10-23	42
342	171	2020-10-16	2020-10-23	43
219	124	2020-10-16	2020-10-23	44
4	4	2020-10-16	2020-10-23	45
317	139	2020-10-16	2020-10-23	46
346	48	2020-10-16	2020-10-23	47
6	6	2020-10-16	2020-10-23	48
333	174	2020-10-16	2020-10-23	49
343	176	2020-10-16	2020-10-23	50
315	4	2020-10-16	2020-10-23	51
231	130	2020-10-16	2020-10-23	52
201	52	2020-10-16	2020-10-23	53
8	8	2020-10-16	2020-10-23	54
236	134	2020-10-16	2020-10-23	55
23	19	2020-10-16	2020-10-23	56
326	159	2020-10-16	2020-10-23	57
360	171	2020-10-16	2020-10-23	58
348	179	2020-10-16	2020-10-23	59
337	175	2020-10-16	2020-10-23	60
715	171	2020-10-16	2020-10-23	61
311	166	2020-10-16	2020-10-23	62
27	22	2020-10-16	2020-10-23	63
158	56	2020-10-16	2020-10-23	64
37	29	2020-10-16	2020-10-23	65
204	63	2020-10-16	2020-10-23	66
354	182	2020-10-16	2020-10-23	67
26	21	2020-10-16	2020-10-23	68
355	96	2020-10-16	2020-10-23	69
69	48	2020-10-16	2020-10-23	70
5	5	2020-10-16	2020-10-23	71
373	194	2020-10-16	2020-10-23	72
362	92	2020-10-16	2020-10-23	73
394	194	2020-10-16	2020-10-23	74
54	19	2020-10-16	2020-10-23	75
150	48	2020-10-16	2020-10-23	76
68	47	2020-10-16	2020-10-23	77
10	10	2020-10-16	2020-10-23	78
137	51	2020-10-16	2020-10-23	79
329	173	2020-10-16	2020-10-23	80
51	28	2020-10-16	2020-10-23	81
361	186	2020-10-16	2020-10-23	82
12	11	2020-10-16	2020-10-23	83
82	56	2020-10-16	2020-10-23	84
407	56	2020-10-16	2020-10-23	85
335	89	2020-10-16	2020-10-23	86
11	4	2020-10-16	2020-10-23	87
33	28	2020-10-16	2020-10-23	88
345	178	2020-10-16	2020-10-23	89
81	52	2020-10-16	2020-10-23	90
2	2	2020-10-16	2020-10-23	91
368	192	2020-10-16	2020-10-23	92
20	16	2020-10-16	2020-10-23	93
47	34	2020-10-16	2020-10-23	94
366	190	2020-10-16	2020-10-23	95
389	122	2020-10-16	2020-10-23	96
356	183	2020-10-16	2020-10-23	97
165	56	2020-10-16	2020-10-23	98
363	187	2020-10-16	2020-10-23	99
402	212	2020-10-16	2020-10-23	100
374	195	2020-10-16	2020-10-23	101
379	172	2020-10-16	2020-10-23	102
12	21	2020-10-16	2020-10-23	103
398	209	2020-10-16	2020-10-23	104
370	48	2020-10-16	2020-10-23	105
359	185	2020-10-16	2020-10-23	106
202	116	2020-10-16	2020-10-23	107
93	62	2020-10-16	2020-10-23	108
29	24	2020-10-16	2020-10-23	109
155	92	2020-10-16	2020-10-23	110
380	200	2020-10-16	2020-10-23	111
351	80	2020-10-16	2020-10-23	112
128	80	2020-10-16	2020-10-23	113
214	68	2020-10-16	2020-10-23	114
19	15	2020-10-16	2020-10-23	115
372	85	2020-10-16	2020-10-23	116
364	188	2020-10-16	2020-10-23	117
116	74	2020-10-16	2020-10-23	118
48	35	2020-10-16	2020-10-23	119
122	20	2020-10-16	2020-10-23	120
391	207	2020-10-16	2020-10-23	121
375	196	2020-10-16	2020-10-23	122
34	28	2020-10-16	2020-10-23	123
369	193	2020-10-16	2020-10-23	124
64	45	2020-10-16	2020-10-23	125
107	70	2020-10-16	2020-10-23	126
397	92	2020-10-16	2020-10-23	127
719	325	2020-10-16	2020-10-23	128
382	166	2020-10-16	2020-10-23	129
260	48	2020-10-16	2020-10-23	130
138	45	2020-10-16	2020-10-23	131
399	92	2020-10-16	2020-10-23	132
403	213	2020-10-16	2020-10-23	133
95	63	2020-10-16	2020-10-23	134
217	123	2020-10-16	2020-10-23	135
393	130	2020-10-16	2020-10-23	136
993	106	2020-10-16	2020-10-23	137
173	101	2020-10-16	2020-10-23	138
9	9	2020-10-16	2020-10-23	139
123	45	2020-10-16	2020-10-23	140
668	314	2020-10-16	2020-10-23	141
174	102	2020-10-16	2020-10-23	142
58	40	2020-10-16	2020-10-23	143
208	39	2020-10-16	2020-10-23	144
109	70	2020-10-16	2020-10-23	145
218	86	2020-10-16	2020-10-23	146
17	1	2020-10-16	2020-10-23	147
115	73	2020-10-16	2020-10-23	148
722	68	2020-10-16	2020-10-23	149
94	19	2020-10-16	2020-10-23	150
75	45	2020-10-16	2020-10-23	151
660	169	2020-10-16	2020-10-23	152
381	201	2020-10-16	2020-10-23	153
31	26	2020-10-16	2020-10-23	154
25	20	2020-10-16	2020-10-23	155
13	12	2020-10-16	2020-10-23	156
678	315	2020-10-16	2020-10-23	157
118	38	2020-10-16	2020-10-23	158
203	117	2020-10-16	2020-10-23	159
210	66	2020-10-16	2020-10-23	160
376	197	2020-10-16	2020-10-23	161
385	185	2020-10-16	2020-10-23	162
74	28	2020-10-16	2020-10-23	163
717	171	2020-10-16	2020-10-23	164
1000	91	2020-10-16	2020-10-23	165
720	326	2020-10-16	2020-10-23	166
70	49	2020-10-16	2020-10-23	167
396	159	2020-10-16	2020-10-23	168
404	214	2020-10-16	2020-10-23	169
718	171	2020-10-16	2020-10-23	170
401	211	2020-10-16	2020-10-23	171
211	121	2020-10-16	2020-10-23	172
371	32	2020-10-16	2020-10-23	173
213	33	2020-10-16	2020-10-23	174
103	68	2020-10-16	2020-10-23	175
101	67	2020-10-16	2020-10-23	176
408	217	2020-10-16	2020-10-23	177
716	324	2020-10-16	2020-10-23	178
166	97	2020-10-16	2020-10-23	179
726	45	2020-10-16	2020-10-23	180
728	329	2020-10-16	2020-10-23	181
727	45	2020-10-16	2020-10-23	182
209	120	2020-10-16	2020-10-23	183
53	37	2020-10-16	2020-10-23	184
712	322	2020-10-16	2020-10-23	185
14	13	2020-10-16	2020-10-23	186
729	158	2020-10-16	2020-10-23	187
700	74	2020-10-16	2020-10-23	188
91	61	2020-10-16	2020-10-23	189
18	13	2020-10-16	2020-10-23	190
182	104	2020-10-16	2020-10-23	191
1001	378	2020-10-16	2020-10-23	192
240	137	2020-10-16	2020-10-23	193
725	328	2020-10-16	2020-10-23	194
279	153	2020-10-16	2020-10-23	195
110	32	2020-10-16	2020-10-23	196
146	87	2020-10-16	2020-10-23	197
229	84	2020-10-16	2020-10-23	198
117	17	2020-10-16	2020-10-23	199
731	330	2020-10-16	2020-10-23	200
7	7	2020-01-17	2020-01-24	1
5	5	2020-01-17	2020-01-24	2
20	16	2020-01-17	2020-01-24	3
31	26	2020-01-17	2020-01-24	4
43	10	2020-01-17	2020-01-24	5
29	24	2020-01-17	2020-01-24	6
1	1	2020-01-17	2020-01-24	7
19	15	2020-01-17	2020-01-24	8
12	11	2020-01-17	2020-01-24	9
4	4	2020-01-17	2020-01-24	10
27	22	2020-01-17	2020-01-24	11
23	19	2020-01-17	2020-01-24	12
34	28	2020-01-17	2020-01-24	13
518	273	2020-01-17	2020-01-24	14
56	39	2020-01-17	2020-01-24	15
55	38	2020-01-17	2020-01-24	16
21	17	2020-01-17	2020-01-24	17
37	29	2020-01-17	2020-01-24	18
519	158	2020-01-17	2020-01-24	19
97	64	2020-01-17	2020-01-24	20
515	64	2020-01-17	2020-01-24	21
553	26	2020-01-17	2020-01-24	22
33	28	2020-01-17	2020-01-24	23
26	21	2020-01-17	2020-01-24	24
60	41	2020-01-17	2020-01-24	25
1002	26	2020-01-17	2020-01-24	26
89	60	2020-01-17	2020-01-24	27
49	36	2020-01-17	2020-01-24	28
58	40	2020-01-17	2020-01-24	29
1003	26	2020-01-17	2020-01-24	30
59	13	2020-01-17	2020-01-24	31
1004	26	2020-01-17	2020-01-24	32
102	27	2020-01-17	2020-01-24	33
48	35	2020-01-17	2020-01-24	34
36	17	2020-01-17	2020-01-24	35
113	54	2020-01-17	2020-01-24	36
144	86	2020-01-17	2020-01-24	37
1005	273	2020-01-17	2020-01-24	38
99	21	2020-01-17	2020-01-24	39
132	32	2020-01-17	2020-01-24	40
79	55	2020-01-17	2020-01-24	41
53	37	2020-01-17	2020-01-24	42
9	9	2020-01-17	2020-01-24	43
1006	26	2020-01-17	2020-01-24	44
106	66	2020-01-17	2020-01-24	45
133	82	2020-01-17	2020-01-24	46
82	56	2020-01-17	2020-01-24	47
517	272	2020-01-17	2020-01-24	48
23	273	2020-01-17	2020-01-24	49
64	45	2020-01-17	2020-01-24	50
54	19	2020-01-17	2020-01-24	51
1007	26	2020-01-17	2020-01-24	52
108	48	2020-01-17	2020-01-24	53
83	57	2020-01-17	2020-01-24	54
120	76	2020-01-17	2020-01-24	55
52	20	2020-01-17	2020-01-24	56
1008	26	2020-01-17	2020-01-24	57
527	50	2020-01-17	2020-01-24	58
3	3	2020-01-17	2020-01-24	59
75	45	2020-01-17	2020-01-24	60
69	48	2020-01-17	2020-01-24	61
1009	273	2020-01-17	2020-01-24	62
125	78	2020-01-17	2020-01-24	63
525	53	2020-01-17	2020-01-24	64
528	45	2020-01-17	2020-01-24	65
521	78	2020-01-17	2020-01-24	66
70	49	2020-01-17	2020-01-24	67
47	34	2020-01-17	2020-01-24	68
1010	273	2020-01-17	2020-01-24	69
1011	26	2020-01-17	2020-01-24	70
1012	273	2020-01-17	2020-01-24	71
1013	26	2020-01-17	2020-01-24	72
1014	26	2020-01-17	2020-01-24	73
1015	26	2020-01-17	2020-01-24	74
87	59	2020-01-17	2020-01-24	75
572	291	2020-01-17	2020-01-24	76
67	1	2020-01-17	2020-01-24	77
121	20	2020-01-17	2020-01-24	78
544	280	2020-01-17	2020-01-24	79
118	38	2020-01-17	2020-01-24	80
141	84	2020-01-17	2020-01-24	81
50	5	2020-01-17	2020-01-24	82
1016	26	2020-01-17	2020-01-24	83
147	13	2020-01-17	2020-01-24	84
526	186	2020-01-17	2020-01-24	85
536	56	2020-01-17	2020-01-24	86
95	63	2020-01-17	2020-01-24	87
51	28	2020-01-17	2020-01-24	88
523	27	2020-01-17	2020-01-24	89
1017	26	2020-01-17	2020-01-24	90
1018	273	2020-01-17	2020-01-24	91
74	28	2020-01-17	2020-01-24	92
160	89	2020-01-17	2020-01-24	93
1019	26	2020-01-17	2020-01-24	94
114	19	2020-01-17	2020-01-24	95
81	52	2020-01-17	2020-01-24	96
535	27	2020-01-17	2020-01-24	97
1020	273	2020-01-17	2020-01-24	98
135	20	2020-01-17	2020-01-24	99
1021	26	2020-01-17	2020-01-24	100
529	196	2020-01-17	2020-01-24	101
1022	26	2020-01-17	2020-01-24	102
537	277	2020-01-17	2020-01-24	103
119	75	2020-01-17	2020-01-24	104
531	276	2020-01-17	2020-01-24	105
104	69	2020-01-17	2020-01-24	106
91	61	2020-01-17	2020-01-24	107
590	106	2020-01-17	2020-01-24	108
530	111	2020-01-17	2020-01-24	109
146	87	2020-01-17	2020-01-24	110
103	68	2020-01-17	2020-01-24	111
578	38	2020-01-17	2020-01-24	112
1023	26	2020-01-17	2020-01-24	113
532	55	2020-01-17	2020-01-24	114
1024	38	2020-01-17	2020-01-24	115
163	95	2020-01-17	2020-01-24	116
139	60	2020-01-17	2020-01-24	117
1025	273	2020-01-17	2020-01-24	118
145	19	2020-01-17	2020-01-24	119
539	278	2020-01-17	2020-01-24	120
175	21	2020-01-17	2020-01-24	121
117	17	2020-01-17	2020-01-24	122
191	110	2020-01-17	2020-01-24	123
93	62	2020-01-17	2020-01-24	124
541	279	2020-01-17	2020-01-24	125
563	110	2020-01-17	2020-01-24	126
150	48	2020-01-17	2020-01-24	127
561	285	2020-01-17	2020-01-24	128
545	281	2020-01-17	2020-01-24	129
543	15	2020-01-17	2020-01-24	130
131	2	2020-01-17	2020-01-24	131
565	287	2020-01-17	2020-01-24	132
546	123	2020-01-17	2020-01-24	133
94	19	2020-01-17	2020-01-24	134
105	7	2020-01-17	2020-01-24	135
111	71	2020-01-17	2020-01-24	136
540	40	2020-01-17	2020-01-24	137
115	73	2020-01-17	2020-01-24	138
1026	273	2020-01-17	2020-01-24	139
13	12	2020-01-17	2020-01-24	140
542	112	2020-01-17	2020-01-24	141
123	45	2020-01-17	2020-01-24	142
282	74	2020-01-17	2020-01-24	143
156	37	2020-01-17	2020-01-24	144
548	120	2020-01-17	2020-01-24	145
179	105	2020-01-17	2020-01-24	146
601	64	2020-01-17	2020-01-24	147
1027	273	2020-01-17	2020-01-24	148
12	21	2020-01-17	2020-01-24	149
558	278	2020-01-17	2020-01-24	150
552	111	2020-01-17	2020-01-24	151
165	56	2020-01-17	2020-01-24	152
168	89	2020-01-17	2020-01-24	153
153	51	2020-01-17	2020-01-24	154
1028	141	2020-01-17	2020-01-24	155
109	70	2020-01-17	2020-01-24	156
1029	273	2020-01-17	2020-01-24	157
557	154	2020-01-17	2020-01-24	158
101	67	2020-01-17	2020-01-24	159
559	134	2020-01-17	2020-01-24	160
128	80	2020-01-17	2020-01-24	161
549	112	2020-01-17	2020-01-24	162
130	67	2020-01-17	2020-01-24	163
159	94	2020-01-17	2020-01-24	164
729	158	2020-01-17	2020-01-24	165
140	33	2020-01-17	2020-01-24	166
1030	379	2020-01-17	2020-01-24	167
1031	380	2020-01-17	2020-01-24	168
187	63	2020-01-17	2020-01-24	169
185	22	2020-01-17	2020-01-24	170
138	45	2020-01-17	2020-01-24	171
534	28	2020-01-17	2020-01-24	172
154	28	2020-01-17	2020-01-24	173
569	289	2020-01-17	2020-01-24	174
580	60	2020-01-17	2020-01-24	175
586	41	2020-01-17	2020-01-24	176
107	70	2020-01-17	2020-01-24	177
575	56	2020-01-17	2020-01-24	178
593	296	2020-01-17	2020-01-24	179
584	294	2020-01-17	2020-01-24	180
574	27	2020-01-17	2020-01-24	181
571	290	2020-01-17	2020-01-24	182
124	77	2020-01-17	2020-01-24	183
566	120	2020-01-17	2020-01-24	184
573	292	2020-01-17	2020-01-24	185
158	56	2020-01-17	2020-01-24	186
594	54	2020-01-17	2020-01-24	187
176	103	2020-01-17	2020-01-24	188
184	19	2020-01-17	2020-01-24	189
183	29	2020-01-17	2020-01-24	190
576	196	2020-01-17	2020-01-24	191
188	107	2020-01-17	2020-01-24	192
568	139	2020-01-17	2020-01-24	193
581	123	2020-01-17	2020-01-24	194
570	20	2020-01-17	2020-01-24	195
583	293	2020-01-17	2020-01-24	196
181	106	2020-01-17	2020-01-24	197
162	70	2020-01-17	2020-01-24	198
173	101	2020-01-17	2020-01-24	199
178	98	2020-01-17	2020-01-24	200
1	1	2020-03-20	2020-03-27	1
5	5	2020-03-20	2020-03-27	2
7	7	2020-03-20	2020-03-27	3
4	4	2020-03-20	2020-03-27	4
3	3	2020-03-20	2020-03-27	5
17	1	2020-03-20	2020-03-27	6
6	6	2020-03-20	2020-03-27	7
9	9	2020-03-20	2020-03-27	8
10	10	2020-03-20	2020-03-27	9
41	1	2020-03-20	2020-03-27	10
12	11	2020-03-20	2020-03-27	11
14	13	2020-03-20	2020-03-27	12
20	16	2020-03-20	2020-03-27	13
25	20	2020-03-20	2020-03-27	14
19	15	2020-03-20	2020-03-27	15
13	12	2020-03-20	2020-03-27	16
8	8	2020-03-20	2020-03-27	17
67	1	2020-03-20	2020-03-27	18
15	14	2020-03-20	2020-03-27	19
21	17	2020-03-20	2020-03-27	20
1032	1	2020-03-20	2020-03-27	21
35	13	2020-03-20	2020-03-27	22
23	19	2020-03-20	2020-03-27	23
180	1	2020-03-20	2020-03-27	24
31	26	2020-03-20	2020-03-27	25
44	20	2020-03-20	2020-03-27	26
1033	1	2020-03-20	2020-03-27	27
1034	1	2020-03-20	2020-03-27	28
92	1	2020-03-20	2020-03-27	29
38	13	2020-03-20	2020-03-27	30
26	21	2020-03-20	2020-03-27	31
27	22	2020-03-20	2020-03-27	32
52	20	2020-03-20	2020-03-27	33
39	13	2020-03-20	2020-03-27	34
1035	1	2020-03-20	2020-03-27	35
1036	1	2020-03-20	2020-03-27	36
1037	1	2020-03-20	2020-03-27	37
43	10	2020-03-20	2020-03-27	38
16	4	2020-03-20	2020-03-27	39
34	28	2020-03-20	2020-03-27	40
33	28	2020-03-20	2020-03-27	41
29	24	2020-03-20	2020-03-27	42
36	17	2020-03-20	2020-03-27	43
37	29	2020-03-20	2020-03-27	44
30	25	2020-03-20	2020-03-27	45
49	36	2020-03-20	2020-03-27	46
59	13	2020-03-20	2020-03-27	47
65	13	2020-03-20	2020-03-27	48
55	38	2020-03-20	2020-03-27	49
66	46	2020-03-20	2020-03-27	50
1038	1	2020-03-20	2020-03-27	51
45	32	2020-03-20	2020-03-27	52
60	41	2020-03-20	2020-03-27	53
85	28	2020-03-20	2020-03-27	54
56	39	2020-03-20	2020-03-27	55
50	5	2020-03-20	2020-03-27	56
24	9	2020-03-20	2020-03-27	57
76	52	2020-03-20	2020-03-27	58
18	13	2020-03-20	2020-03-27	59
48	35	2020-03-20	2020-03-27	60
122	20	2020-03-20	2020-03-27	61
51	28	2020-03-20	2020-03-27	62
86	50	2020-03-20	2020-03-27	63
54	19	2020-03-20	2020-03-27	64
61	42	2020-03-20	2020-03-27	65
22	18	2020-03-20	2020-03-27	66
63	44	2020-03-20	2020-03-27	67
1039	1	2020-03-20	2020-03-27	68
72	50	2020-03-20	2020-03-27	69
40	30	2020-03-20	2020-03-27	70
53	37	2020-03-20	2020-03-27	71
64	45	2020-03-20	2020-03-27	72
58	40	2020-03-20	2020-03-27	73
135	20	2020-03-20	2020-03-27	74
47	34	2020-03-20	2020-03-27	75
69	48	2020-03-20	2020-03-27	76
79	55	2020-03-20	2020-03-27	77
70	49	2020-03-20	2020-03-27	78
89	60	2020-03-20	2020-03-27	79
57	5	2020-03-20	2020-03-27	80
78	54	2020-03-20	2020-03-27	81
112	72	2020-03-20	2020-03-27	82
90	61	2020-03-20	2020-03-27	83
88	10	2020-03-20	2020-03-27	84
75	45	2020-03-20	2020-03-27	85
74	28	2020-03-20	2020-03-27	86
1040	20	2020-03-20	2020-03-27	87
1041	20	2020-03-20	2020-03-27	88
149	89	2020-03-20	2020-03-27	89
96	50	2020-03-20	2020-03-27	90
77	53	2020-03-20	2020-03-27	91
82	56	2020-03-20	2020-03-27	92
105	7	2020-03-20	2020-03-27	93
83	57	2020-03-20	2020-03-27	94
87	59	2020-03-20	2020-03-27	95
81	52	2020-03-20	2020-03-27	96
144	86	2020-03-20	2020-03-27	97
100	66	2020-03-20	2020-03-27	98
172	13	2020-03-20	2020-03-27	99
71	9	2020-03-20	2020-03-27	100
91	61	2020-03-20	2020-03-27	101
94	19	2020-03-20	2020-03-27	102
1042	20	2020-03-20	2020-03-27	103
99	21	2020-03-20	2020-03-27	104
12	21	2020-03-20	2020-03-27	105
113	54	2020-03-20	2020-03-27	106
97	64	2020-03-20	2020-03-27	107
95	63	2020-03-20	2020-03-27	108
106	66	2020-03-20	2020-03-27	109
84	58	2020-03-20	2020-03-27	110
93	62	2020-03-20	2020-03-27	111
124	77	2020-03-20	2020-03-27	112
136	13	2020-03-20	2020-03-27	113
126	79	2020-03-20	2020-03-27	114
125	78	2020-03-20	2020-03-27	115
103	68	2020-03-20	2020-03-27	116
102	27	2020-03-20	2020-03-27	117
114	19	2020-03-20	2020-03-27	118
120	76	2020-03-20	2020-03-27	119
148	88	2020-03-20	2020-03-27	120
101	67	2020-03-20	2020-03-27	121
121	20	2020-03-20	2020-03-27	122
111	71	2020-03-20	2020-03-27	123
108	48	2020-03-20	2020-03-27	124
147	13	2020-03-20	2020-03-27	125
104	69	2020-03-20	2020-03-27	126
119	75	2020-03-20	2020-03-27	127
133	82	2020-03-20	2020-03-27	128
109	70	2020-03-20	2020-03-27	129
107	70	2020-03-20	2020-03-27	130
117	17	2020-03-20	2020-03-27	131
143	85	2020-03-20	2020-03-27	132
115	73	2020-03-20	2020-03-27	133
1043	20	2020-03-20	2020-03-27	134
141	84	2020-03-20	2020-03-27	135
132	32	2020-03-20	2020-03-27	136
1044	50	2020-03-20	2020-03-27	137
118	38	2020-03-20	2020-03-27	138
139	60	2020-03-20	2020-03-27	139
145	19	2020-03-20	2020-03-27	140
128	80	2020-03-20	2020-03-27	141
146	87	2020-03-20	2020-03-27	142
776	84	2020-03-20	2020-03-27	143
150	48	2020-03-20	2020-03-27	144
123	45	2020-03-20	2020-03-27	145
130	67	2020-03-20	2020-03-27	146
161	32	2020-03-20	2020-03-27	147
129	81	2020-03-20	2020-03-27	148
1045	13	2020-03-20	2020-03-27	149
160	89	2020-03-20	2020-03-27	150
165	56	2020-03-20	2020-03-27	151
162	70	2020-03-20	2020-03-27	152
1046	50	2020-03-20	2020-03-27	153
154	28	2020-03-20	2020-03-27	154
163	95	2020-03-20	2020-03-27	155
138	45	2020-03-20	2020-03-27	156
155	92	2020-03-20	2020-03-27	157
783	299	2020-03-20	2020-03-27	158
131	2	2020-03-20	2020-03-27	159
1047	50	2020-03-20	2020-03-27	160
784	1	2020-03-20	2020-03-27	161
158	56	2020-03-20	2020-03-27	162
1048	20	2020-03-20	2020-03-27	163
763	158	2020-03-20	2020-03-27	164
191	110	2020-03-20	2020-03-27	165
175	21	2020-03-20	2020-03-27	166
166	97	2020-03-20	2020-03-27	167
789	1	2020-03-20	2020-03-27	168
194	112	2020-03-20	2020-03-27	169
523	27	2020-03-20	2020-03-27	170
159	94	2020-03-20	2020-03-27	171
62	43	2020-03-20	2020-03-27	172
168	89	2020-03-20	2020-03-27	173
140	33	2020-03-20	2020-03-27	174
164	96	2020-03-20	2020-03-27	175
153	51	2020-03-20	2020-03-27	176
156	37	2020-03-20	2020-03-27	177
174	102	2020-03-20	2020-03-27	178
179	105	2020-03-20	2020-03-27	179
184	19	2020-03-20	2020-03-27	180
765	64	2020-03-20	2020-03-27	181
170	99	2020-03-20	2020-03-27	182
1049	381	2020-03-20	2020-03-27	183
1050	13	2020-03-20	2020-03-27	184
176	103	2020-03-20	2020-03-27	185
157	93	2020-03-20	2020-03-27	186
181	106	2020-03-20	2020-03-27	187
183	29	2020-03-20	2020-03-27	188
196	50	2020-03-20	2020-03-27	189
177	104	2020-03-20	2020-03-27	190
1051	359	2020-03-20	2020-03-27	191
178	98	2020-03-20	2020-03-27	192
187	63	2020-03-20	2020-03-27	193
173	101	2020-03-20	2020-03-27	194
188	107	2020-03-20	2020-03-27	195
1052	382	2020-03-20	2020-03-27	196
1053	13	2020-03-20	2020-03-27	197
185	22	2020-03-20	2020-03-27	198
192	70	2020-03-20	2020-03-27	199
1054	13	2020-03-20	2020-03-27	200
1	1	2020-02-28	2020-03-06	1
5	5	2020-02-28	2020-03-06	2
7	7	2020-02-28	2020-03-06	3
4	4	2020-02-28	2020-03-06	4
10	10	2020-02-28	2020-03-06	5
39	13	2020-02-28	2020-03-06	6
35	13	2020-02-28	2020-03-06	7
20	16	2020-02-28	2020-03-06	8
38	13	2020-02-28	2020-03-06	9
9	9	2020-02-28	2020-03-06	10
12	11	2020-02-28	2020-03-06	11
19	15	2020-02-28	2020-03-06	12
76	52	2020-02-28	2020-03-06	13
65	13	2020-02-28	2020-03-06	14
59	13	2020-02-28	2020-03-06	15
85	28	2020-02-28	2020-03-06	16
23	19	2020-02-28	2020-03-06	17
43	10	2020-02-28	2020-03-06	18
29	24	2020-02-28	2020-03-06	19
21	17	2020-02-28	2020-03-06	20
34	28	2020-02-28	2020-03-06	21
27	22	2020-02-28	2020-03-06	22
31	26	2020-02-28	2020-03-06	23
41	1	2020-02-28	2020-03-06	24
3	3	2020-02-28	2020-03-06	25
8	8	2020-02-28	2020-03-06	26
13	12	2020-02-28	2020-03-06	27
26	21	2020-02-28	2020-03-06	28
172	13	2020-02-28	2020-03-06	29
33	28	2020-02-28	2020-03-06	30
6	6	2020-02-28	2020-03-06	31
18	13	2020-02-28	2020-03-06	32
25	20	2020-02-28	2020-03-06	33
36	17	2020-02-28	2020-03-06	34
55	38	2020-02-28	2020-03-06	35
37	29	2020-02-28	2020-03-06	36
16	4	2020-02-28	2020-03-06	37
14	13	2020-02-28	2020-03-06	38
49	36	2020-02-28	2020-03-06	39
56	39	2020-02-28	2020-03-06	40
60	41	2020-02-28	2020-03-06	41
66	46	2020-02-28	2020-03-06	42
52	20	2020-02-28	2020-03-06	43
1045	13	2020-02-28	2020-03-06	44
1053	13	2020-02-28	2020-03-06	45
1055	383	2020-02-28	2020-03-06	46
50	5	2020-02-28	2020-03-06	47
53	37	2020-02-28	2020-03-06	48
1056	50	2020-02-28	2020-03-06	49
88	10	2020-02-28	2020-03-06	50
48	35	2020-02-28	2020-03-06	51
136	13	2020-02-28	2020-03-06	52
79	55	2020-02-28	2020-03-06	53
149	89	2020-02-28	2020-03-06	54
1054	13	2020-02-28	2020-03-06	55
763	158	2020-02-28	2020-03-06	56
1057	13	2020-02-28	2020-03-06	57
63	44	2020-02-28	2020-03-06	58
30	25	2020-02-28	2020-03-06	59
1058	13	2020-02-28	2020-03-06	60
54	19	2020-02-28	2020-03-06	61
64	45	2020-02-28	2020-03-06	62
1050	13	2020-02-28	2020-03-06	63
100	66	2020-02-28	2020-03-06	64
1059	110	2020-02-28	2020-03-06	65
1060	13	2020-02-28	2020-03-06	66
58	40	2020-02-28	2020-03-06	67
89	60	2020-02-28	2020-03-06	68
1061	13	2020-02-28	2020-03-06	69
1062	13	2020-02-28	2020-03-06	70
125	78	2020-02-28	2020-03-06	71
70	49	2020-02-28	2020-03-06	72
90	61	2020-02-28	2020-03-06	73
113	54	2020-02-28	2020-03-06	74
51	28	2020-02-28	2020-03-06	75
83	57	2020-02-28	2020-03-06	76
191	110	2020-02-28	2020-03-06	77
77	53	2020-02-28	2020-03-06	78
75	45	2020-02-28	2020-03-06	79
81	52	2020-02-28	2020-03-06	80
1063	337	2020-02-28	2020-03-06	81
82	56	2020-02-28	2020-03-06	82
61	42	2020-02-28	2020-03-06	83
764	158	2020-02-28	2020-03-06	84
121	20	2020-02-28	2020-03-06	85
74	28	2020-02-28	2020-03-06	86
45	32	2020-02-28	2020-03-06	87
132	32	2020-02-28	2020-03-06	88
765	64	2020-02-28	2020-03-06	89
97	64	2020-02-28	2020-03-06	90
47	34	2020-02-28	2020-03-06	91
106	66	2020-02-28	2020-03-06	92
120	76	2020-02-28	2020-03-06	93
141	84	2020-02-28	2020-03-06	94
133	82	2020-02-28	2020-03-06	95
147	13	2020-02-28	2020-03-06	96
102	27	2020-02-28	2020-03-06	97
69	48	2020-02-28	2020-03-06	98
1064	13	2020-02-28	2020-03-06	99
99	21	2020-02-28	2020-03-06	100
105	7	2020-02-28	2020-03-06	101
12	21	2020-02-28	2020-03-06	102
95	63	2020-02-28	2020-03-06	103
1065	13	2020-02-28	2020-03-06	104
143	85	2020-02-28	2020-03-06	105
1066	110	2020-02-28	2020-03-06	106
91	61	2020-02-28	2020-03-06	107
163	95	2020-02-28	2020-03-06	108
144	86	2020-02-28	2020-03-06	109
87	59	2020-02-28	2020-03-06	110
108	48	2020-02-28	2020-03-06	111
135	20	2020-02-28	2020-03-06	112
519	158	2020-02-28	2020-03-06	113
114	19	2020-02-28	2020-03-06	114
111	71	2020-02-28	2020-03-06	115
523	27	2020-02-28	2020-03-06	116
119	75	2020-02-28	2020-03-06	117
103	68	2020-02-28	2020-03-06	118
67	1	2020-02-28	2020-03-06	119
160	89	2020-02-28	2020-03-06	120
93	62	2020-02-28	2020-03-06	121
776	84	2020-02-28	2020-03-06	122
1067	110	2020-02-28	2020-03-06	123
775	283	2020-02-28	2020-03-06	124
563	110	2020-02-28	2020-03-06	125
94	19	2020-02-28	2020-03-06	126
515	64	2020-02-28	2020-03-06	127
139	60	2020-02-28	2020-03-06	128
117	17	2020-02-28	2020-03-06	129
115	73	2020-02-28	2020-03-06	130
118	38	2020-02-28	2020-03-06	131
517	272	2020-02-28	2020-03-06	132
521	78	2020-02-28	2020-03-06	133
145	19	2020-02-28	2020-03-06	134
782	196	2020-02-28	2020-03-06	135
123	45	2020-02-28	2020-03-06	136
104	69	2020-02-28	2020-03-06	137
152	91	2020-02-28	2020-03-06	138
101	67	2020-02-28	2020-03-06	139
128	80	2020-02-28	2020-03-06	140
729	158	2020-02-28	2020-03-06	141
154	28	2020-02-28	2020-03-06	142
554	44	2020-02-28	2020-03-06	143
528	45	2020-02-28	2020-03-06	144
766	158	2020-02-28	2020-03-06	145
131	2	2020-02-28	2020-03-06	146
175	21	2020-02-28	2020-03-06	147
194	112	2020-02-28	2020-03-06	148
168	89	2020-02-28	2020-03-06	149
150	48	2020-02-28	2020-03-06	150
1068	302	2020-02-28	2020-03-06	151
532	55	2020-02-28	2020-03-06	152
778	106	2020-02-28	2020-03-06	153
109	70	2020-02-28	2020-03-06	154
165	56	2020-02-28	2020-03-06	155
107	70	2020-02-28	2020-03-06	156
530	111	2020-02-28	2020-03-06	157
124	77	2020-02-28	2020-03-06	158
138	45	2020-02-28	2020-03-06	159
156	37	2020-02-28	2020-03-06	160
159	94	2020-02-28	2020-03-06	161
557	154	2020-02-28	2020-03-06	162
146	87	2020-02-28	2020-03-06	163
185	22	2020-02-28	2020-03-06	164
535	27	2020-02-28	2020-03-06	165
526	186	2020-02-28	2020-03-06	166
529	196	2020-02-28	2020-03-06	167
153	51	2020-02-28	2020-03-06	168
527	50	2020-02-28	2020-03-06	169
181	106	2020-02-28	2020-03-06	170
134	83	2020-02-28	2020-03-06	171
130	67	2020-02-28	2020-03-06	172
158	56	2020-02-28	2020-03-06	173
169	98	2020-02-28	2020-03-06	174
783	299	2020-02-28	2020-03-06	175
187	63	2020-02-28	2020-03-06	176
547	282	2020-02-28	2020-03-06	177
155	92	2020-02-28	2020-03-06	178
531	276	2020-02-28	2020-03-06	179
24	9	2020-02-28	2020-03-06	180
781	24	2020-02-28	2020-03-06	181
769	158	2020-02-28	2020-03-06	182
140	33	2020-02-28	2020-03-06	183
1069	347	2020-02-28	2020-03-06	184
1070	384	2020-02-28	2020-03-06	185
540	40	2020-02-28	2020-03-06	186
174	102	2020-02-28	2020-03-06	187
184	19	2020-02-28	2020-03-06	188
570	20	2020-02-28	2020-03-06	189
784	1	2020-02-28	2020-03-06	190
556	234	2020-02-28	2020-03-06	191
539	278	2020-02-28	2020-03-06	192
179	105	2020-02-28	2020-03-06	193
552	111	2020-02-28	2020-03-06	194
544	280	2020-02-28	2020-03-06	195
549	112	2020-02-28	2020-03-06	196
534	28	2020-02-28	2020-03-06	197
199	115	2020-02-28	2020-03-06	198
162	70	2020-02-28	2020-03-06	199
177	104	2020-02-28	2020-03-06	200
1	1	2020-03-27	2020-04-03	1
4	4	2020-03-27	2020-04-03	2
3	3	2020-03-27	2020-04-03	3
5	5	2020-03-27	2020-04-03	4
7	7	2020-03-27	2020-04-03	5
6	6	2020-03-27	2020-04-03	6
11	4	2020-03-27	2020-04-03	7
9	9	2020-03-27	2020-04-03	8
10	10	2020-03-27	2020-04-03	9
8	8	2020-03-27	2020-04-03	10
14	13	2020-03-27	2020-04-03	11
16	4	2020-03-27	2020-04-03	12
12	11	2020-03-27	2020-04-03	13
17	1	2020-03-27	2020-04-03	14
13	12	2020-03-27	2020-04-03	15
19	15	2020-03-27	2020-04-03	16
15	14	2020-03-27	2020-04-03	17
20	16	2020-03-27	2020-04-03	18
21	17	2020-03-27	2020-04-03	19
23	19	2020-03-27	2020-04-03	20
25	20	2020-03-27	2020-04-03	21
28	23	2020-03-27	2020-04-03	22
35	13	2020-03-27	2020-04-03	23
18	13	2020-03-27	2020-04-03	24
42	31	2020-03-27	2020-04-03	25
26	21	2020-03-27	2020-04-03	26
27	22	2020-03-27	2020-04-03	27
22	18	2020-03-27	2020-04-03	28
41	1	2020-03-27	2020-04-03	29
31	26	2020-03-27	2020-04-03	30
38	13	2020-03-27	2020-04-03	31
39	13	2020-03-27	2020-04-03	32
33	28	2020-03-27	2020-04-03	33
34	28	2020-03-27	2020-04-03	34
24	9	2020-03-27	2020-04-03	35
29	24	2020-03-27	2020-04-03	36
36	17	2020-03-27	2020-04-03	37
30	25	2020-03-27	2020-04-03	38
44	20	2020-03-27	2020-04-03	39
43	10	2020-03-27	2020-04-03	40
37	29	2020-03-27	2020-04-03	41
52	20	2020-03-27	2020-04-03	42
46	33	2020-03-27	2020-04-03	43
49	36	2020-03-27	2020-04-03	44
45	32	2020-03-27	2020-04-03	45
67	1	2020-03-27	2020-04-03	46
65	13	2020-03-27	2020-04-03	47
59	13	2020-03-27	2020-04-03	48
51	28	2020-03-27	2020-04-03	49
55	38	2020-03-27	2020-04-03	50
40	30	2020-03-27	2020-04-03	51
142	4	2020-03-27	2020-04-03	52
50	5	2020-03-27	2020-04-03	53
60	41	2020-03-27	2020-04-03	54
167	4	2020-03-27	2020-04-03	55
56	39	2020-03-27	2020-04-03	56
48	35	2020-03-27	2020-04-03	57
61	42	2020-03-27	2020-04-03	58
54	19	2020-03-27	2020-04-03	59
53	37	2020-03-27	2020-04-03	60
66	46	2020-03-27	2020-04-03	61
58	40	2020-03-27	2020-04-03	62
47	34	2020-03-27	2020-04-03	63
64	45	2020-03-27	2020-04-03	64
63	44	2020-03-27	2020-04-03	65
57	5	2020-03-27	2020-04-03	66
76	52	2020-03-27	2020-04-03	67
92	1	2020-03-27	2020-04-03	68
198	4	2020-03-27	2020-04-03	69
1071	4	2020-03-27	2020-04-03	70
1072	4	2020-03-27	2020-04-03	71
72	50	2020-03-27	2020-04-03	72
85	28	2020-03-27	2020-04-03	73
69	48	2020-03-27	2020-04-03	74
70	49	2020-03-27	2020-04-03	75
1073	4	2020-03-27	2020-04-03	76
74	28	2020-03-27	2020-04-03	77
79	55	2020-03-27	2020-04-03	78
71	9	2020-03-27	2020-04-03	79
78	54	2020-03-27	2020-04-03	80
86	50	2020-03-27	2020-04-03	81
77	53	2020-03-27	2020-04-03	82
180	1	2020-03-27	2020-04-03	83
88	10	2020-03-27	2020-04-03	84
90	61	2020-03-27	2020-04-03	85
75	45	2020-03-27	2020-04-03	86
105	7	2020-03-27	2020-04-03	87
82	56	2020-03-27	2020-04-03	88
81	52	2020-03-27	2020-04-03	89
62	43	2020-03-27	2020-04-03	90
84	58	2020-03-27	2020-04-03	91
1074	4	2020-03-27	2020-04-03	92
87	59	2020-03-27	2020-04-03	93
149	89	2020-03-27	2020-04-03	94
83	57	2020-03-27	2020-04-03	95
112	72	2020-03-27	2020-04-03	96
91	61	2020-03-27	2020-04-03	97
1033	1	2020-03-27	2020-04-03	98
89	60	2020-03-27	2020-04-03	99
12	21	2020-03-27	2020-04-03	100
96	50	2020-03-27	2020-04-03	101
94	19	2020-03-27	2020-04-03	102
100	66	2020-03-27	2020-04-03	103
93	62	2020-03-27	2020-04-03	104
169	98	2020-03-27	2020-04-03	105
97	64	2020-03-27	2020-04-03	106
95	63	2020-03-27	2020-04-03	107
135	20	2020-03-27	2020-04-03	108
99	21	2020-03-27	2020-04-03	109
101	67	2020-03-27	2020-04-03	110
113	54	2020-03-27	2020-04-03	111
102	27	2020-03-27	2020-04-03	112
106	66	2020-03-27	2020-04-03	113
125	78	2020-03-27	2020-04-03	114
124	77	2020-03-27	2020-04-03	115
1032	1	2020-03-27	2020-04-03	116
144	86	2020-03-27	2020-04-03	117
1075	4	2020-03-27	2020-04-03	118
103	68	2020-03-27	2020-04-03	119
108	48	2020-03-27	2020-04-03	120
68	47	2020-03-27	2020-04-03	121
1076	385	2020-03-27	2020-04-03	122
136	13	2020-03-27	2020-04-03	123
114	19	2020-03-27	2020-04-03	124
109	70	2020-03-27	2020-04-03	125
126	79	2020-03-27	2020-04-03	126
107	70	2020-03-27	2020-04-03	127
111	71	2020-03-27	2020-04-03	128
120	76	2020-03-27	2020-04-03	129
121	20	2020-03-27	2020-04-03	130
172	13	2020-03-27	2020-04-03	131
1077	386	2020-03-27	2020-04-03	132
122	20	2020-03-27	2020-04-03	133
1034	1	2020-03-27	2020-04-03	134
104	69	2020-03-27	2020-04-03	135
1078	98	2020-03-27	2020-04-03	136
115	73	2020-03-27	2020-04-03	137
1036	1	2020-03-27	2020-04-03	138
147	13	2020-03-27	2020-04-03	139
117	17	2020-03-27	2020-04-03	140
119	75	2020-03-27	2020-04-03	141
143	85	2020-03-27	2020-04-03	142
118	38	2020-03-27	2020-04-03	143
130	67	2020-03-27	2020-04-03	144
132	32	2020-03-27	2020-04-03	145
141	84	2020-03-27	2020-04-03	146
133	82	2020-03-27	2020-04-03	147
128	80	2020-03-27	2020-04-03	148
1035	1	2020-03-27	2020-04-03	149
123	45	2020-03-27	2020-04-03	150
146	87	2020-03-27	2020-04-03	151
129	81	2020-03-27	2020-04-03	152
1037	1	2020-03-27	2020-04-03	153
148	88	2020-03-27	2020-04-03	154
145	19	2020-03-27	2020-04-03	155
139	60	2020-03-27	2020-04-03	156
73	51	2020-03-27	2020-04-03	157
150	48	2020-03-27	2020-04-03	158
138	45	2020-03-27	2020-04-03	159
154	28	2020-03-27	2020-04-03	160
1079	141	2020-03-27	2020-04-03	161
160	89	2020-03-27	2020-04-03	162
162	70	2020-03-27	2020-04-03	163
155	92	2020-03-27	2020-04-03	164
1045	13	2020-03-27	2020-04-03	165
165	56	2020-03-27	2020-04-03	166
158	56	2020-03-27	2020-04-03	167
776	84	2020-03-27	2020-04-03	168
163	95	2020-03-27	2020-04-03	169
140	33	2020-03-27	2020-04-03	170
164	96	2020-03-27	2020-04-03	171
157	93	2020-03-27	2020-04-03	172
161	32	2020-03-27	2020-04-03	173
153	51	2020-03-27	2020-04-03	174
131	2	2020-03-27	2020-04-03	175
175	21	2020-03-27	2020-04-03	176
159	94	2020-03-27	2020-04-03	177
174	102	2020-03-27	2020-04-03	178
166	97	2020-03-27	2020-04-03	179
179	105	2020-03-27	2020-04-03	180
171	100	2020-03-27	2020-04-03	181
156	37	2020-03-27	2020-04-03	182
177	104	2020-03-27	2020-04-03	183
170	99	2020-03-27	2020-04-03	184
168	89	2020-03-27	2020-04-03	185
184	19	2020-03-27	2020-04-03	186
1080	331	2020-03-27	2020-04-03	187
1081	98	2020-03-27	2020-04-03	188
137	51	2020-03-27	2020-04-03	189
178	98	2020-03-27	2020-04-03	190
173	101	2020-03-27	2020-04-03	191
197	114	2020-03-27	2020-04-03	192
784	1	2020-03-27	2020-04-03	193
181	106	2020-03-27	2020-04-03	194
176	103	2020-03-27	2020-04-03	195
187	63	2020-03-27	2020-04-03	196
134	83	2020-03-27	2020-04-03	197
192	70	2020-03-27	2020-04-03	198
196	50	2020-03-27	2020-04-03	199
190	109	2020-03-27	2020-04-03	200
201	52	2020-05-22	2020-05-29	1
200	27	2020-05-22	2020-05-29	2
1	1	2020-05-22	2020-05-29	3
3	3	2020-05-22	2020-05-29	4
6	6	2020-05-22	2020-05-29	5
2	2	2020-05-22	2020-05-29	6
203	117	2020-05-22	2020-05-29	7
4	4	2020-05-22	2020-05-29	8
204	63	2020-05-22	2020-05-29	9
205	118	2020-05-22	2020-05-29	10
7	7	2020-05-22	2020-05-29	11
8	8	2020-05-22	2020-05-29	12
68	47	2020-05-22	2020-05-29	13
5	5	2020-05-22	2020-05-29	14
11	4	2020-05-22	2020-05-29	15
15	14	2020-05-22	2020-05-29	16
10	10	2020-05-22	2020-05-29	17
12	11	2020-05-22	2020-05-29	18
202	116	2020-05-22	2020-05-29	19
13	12	2020-05-22	2020-05-29	20
207	119	2020-05-22	2020-05-29	21
21	17	2020-05-22	2020-05-29	22
9	9	2020-05-22	2020-05-29	23
99	21	2020-05-22	2020-05-29	24
23	19	2020-05-22	2020-05-29	25
211	121	2020-05-22	2020-05-29	26
30	25	2020-05-22	2020-05-29	27
158	56	2020-05-22	2020-05-29	28
18	13	2020-05-22	2020-05-29	29
14	13	2020-05-22	2020-05-29	30
24	9	2020-05-22	2020-05-29	31
225	9	2020-05-22	2020-05-29	32
19	15	2020-05-22	2020-05-29	33
214	68	2020-05-22	2020-05-29	34
165	56	2020-05-22	2020-05-29	35
20	16	2020-05-22	2020-05-29	36
62	43	2020-05-22	2020-05-29	37
29	24	2020-05-22	2020-05-29	38
82	56	2020-05-22	2020-05-29	39
26	21	2020-05-22	2020-05-29	40
36	17	2020-05-22	2020-05-29	41
218	86	2020-05-22	2020-05-29	42
27	22	2020-05-22	2020-05-29	43
208	39	2020-05-22	2020-05-29	44
33	28	2020-05-22	2020-05-29	45
25	20	2020-05-22	2020-05-29	46
37	29	2020-05-22	2020-05-29	47
47	34	2020-05-22	2020-05-29	48
230	48	2020-05-22	2020-05-29	49
213	33	2020-05-22	2020-05-29	50
17	1	2020-05-22	2020-05-29	51
116	74	2020-05-22	2020-05-29	52
16	4	2020-05-22	2020-05-29	53
54	19	2020-05-22	2020-05-29	54
1082	387	2020-05-22	2020-05-29	55
22	18	2020-05-22	2020-05-29	56
48	35	2020-05-22	2020-05-29	57
57	5	2020-05-22	2020-05-29	58
151	90	2020-05-22	2020-05-29	59
222	2	2020-05-22	2020-05-29	60
34	28	2020-05-22	2020-05-29	61
31	26	2020-05-22	2020-05-29	62
40	30	2020-05-22	2020-05-29	63
110	32	2020-05-22	2020-05-29	64
51	28	2020-05-22	2020-05-29	65
242	138	2020-05-22	2020-05-29	66
44	20	2020-05-22	2020-05-29	67
69	48	2020-05-22	2020-05-29	68
240	137	2020-05-22	2020-05-29	69
45	32	2020-05-22	2020-05-29	70
58	40	2020-05-22	2020-05-29	71
53	37	2020-05-22	2020-05-29	72
73	51	2020-05-22	2020-05-29	73
64	45	2020-05-22	2020-05-29	74
35	13	2020-05-22	2020-05-29	75
81	52	2020-05-22	2020-05-29	76
250	13	2020-05-22	2020-05-29	77
972	205	2020-05-22	2020-05-29	78
245	85	2020-05-22	2020-05-29	79
56	39	2020-05-22	2020-05-29	80
39	13	2020-05-22	2020-05-29	81
52	20	2020-05-22	2020-05-29	82
1083	137	2020-05-22	2020-05-29	83
229	84	2020-05-22	2020-05-29	84
217	123	2020-05-22	2020-05-29	85
224	127	2020-05-22	2020-05-29	86
137	51	2020-05-22	2020-05-29	87
63	44	2020-05-22	2020-05-29	88
258	13	2020-05-22	2020-05-29	89
1084	1	2020-05-22	2020-05-29	90
95	63	2020-05-22	2020-05-29	91
1085	137	2020-05-22	2020-05-29	92
83	57	2020-05-22	2020-05-29	93
38	13	2020-05-22	2020-05-29	94
74	28	2020-05-22	2020-05-29	95
219	124	2020-05-22	2020-05-29	96
43	10	2020-05-22	2020-05-29	97
70	49	2020-05-22	2020-05-29	98
93	62	2020-05-22	2020-05-29	99
268	150	2020-05-22	2020-05-29	100
94	19	2020-05-22	2020-05-29	101
77	53	2020-05-22	2020-05-29	102
75	45	2020-05-22	2020-05-29	103
914	24	2020-05-22	2020-05-29	104
235	133	2020-05-22	2020-05-29	105
84	58	2020-05-22	2020-05-29	106
76	52	2020-05-22	2020-05-29	107
107	70	2020-05-22	2020-05-29	108
28	23	2020-05-22	2020-05-29	109
265	89	2020-05-22	2020-05-29	110
12	21	2020-05-22	2020-05-29	111
109	70	2020-05-22	2020-05-29	112
79	55	2020-05-22	2020-05-29	113
71	9	2020-05-22	2020-05-29	114
103	68	2020-05-22	2020-05-29	115
115	73	2020-05-22	2020-05-29	116
98	65	2020-05-22	2020-05-29	117
238	32	2020-05-22	2020-05-29	118
50	5	2020-05-22	2020-05-29	119
104	69	2020-05-22	2020-05-29	120
243	139	2020-05-22	2020-05-29	121
123	45	2020-05-22	2020-05-29	122
1086	347	2020-05-22	2020-05-29	123
212	52	2020-05-22	2020-05-29	124
915	13	2020-05-22	2020-05-29	125
96	50	2020-05-22	2020-05-29	126
87	59	2020-05-22	2020-05-29	127
122	20	2020-05-22	2020-05-29	128
49	36	2020-05-22	2020-05-29	129
150	48	2020-05-22	2020-05-29	130
128	80	2020-05-22	2020-05-29	131
111	71	2020-05-22	2020-05-29	132
138	45	2020-05-22	2020-05-29	133
257	31	2020-05-22	2020-05-29	134
65	13	2020-05-22	2020-05-29	135
108	48	2020-05-22	2020-05-29	136
72	50	2020-05-22	2020-05-29	137
102	27	2020-05-22	2020-05-29	138
1087	137	2020-05-22	2020-05-29	139
118	38	2020-05-22	2020-05-29	140
106	66	2020-05-22	2020-05-29	141
917	302	2020-05-22	2020-05-29	142
114	19	2020-05-22	2020-05-29	143
59	13	2020-05-22	2020-05-29	144
916	367	2020-05-22	2020-05-29	145
157	93	2020-05-22	2020-05-29	146
91	61	2020-05-22	2020-05-29	147
146	87	2020-05-22	2020-05-29	148
919	60	2020-05-22	2020-05-29	149
141	84	2020-05-22	2020-05-29	150
918	13	2020-05-22	2020-05-29	151
144	86	2020-05-22	2020-05-29	152
119	75	2020-05-22	2020-05-29	153
153	51	2020-05-22	2020-05-29	154
178	98	2020-05-22	2020-05-29	155
89	60	2020-05-22	2020-05-29	156
121	20	2020-05-22	2020-05-29	157
254	32	2020-05-22	2020-05-29	158
1088	229	2020-05-22	2020-05-29	159
139	60	2020-05-22	2020-05-29	160
166	97	2020-05-22	2020-05-29	161
228	129	2020-05-22	2020-05-29	162
101	67	2020-05-22	2020-05-29	163
117	17	2020-05-22	2020-05-29	164
97	64	2020-05-22	2020-05-29	165
145	19	2020-05-22	2020-05-29	166
812	349	2020-05-22	2020-05-29	167
55	38	2020-05-22	2020-05-29	168
236	134	2020-05-22	2020-05-29	169
256	146	2020-05-22	2020-05-29	170
251	142	2020-05-22	2020-05-29	171
173	101	2020-05-22	2020-05-29	172
162	70	2020-05-22	2020-05-29	173
132	32	2020-05-22	2020-05-29	174
46	33	2020-05-22	2020-05-29	175
175	21	2020-05-22	2020-05-29	176
61	42	2020-05-22	2020-05-29	177
195	113	2020-05-22	2020-05-29	178
253	144	2020-05-22	2020-05-29	179
140	33	2020-05-22	2020-05-29	180
129	81	2020-05-22	2020-05-29	181
174	102	2020-05-22	2020-05-29	182
131	2	2020-05-22	2020-05-29	183
60	41	2020-05-22	2020-05-29	184
147	13	2020-05-22	2020-05-29	185
67	1	2020-05-22	2020-05-29	186
187	63	2020-05-22	2020-05-29	187
41	1	2020-05-22	2020-05-29	188
267	56	2020-05-22	2020-05-29	189
181	106	2020-05-22	2020-05-29	190
155	92	2020-05-22	2020-05-29	191
156	37	2020-05-22	2020-05-29	192
105	7	2020-05-22	2020-05-29	193
184	19	2020-05-22	2020-05-29	194
168	89	2020-05-22	2020-05-29	195
275	154	2020-05-22	2020-05-29	196
1089	388	2020-05-22	2020-05-29	197
182	104	2020-05-22	2020-05-29	198
1090	123	2020-05-22	2020-05-29	199
125	78	2020-05-22	2020-05-29	200
285	42	2020-09-25	2020-10-02	1
292	160	2020-09-25	2020-10-02	2
286	157	2020-09-25	2020-10-02	3
291	159	2020-09-25	2020-10-02	4
289	158	2020-09-25	2020-10-02	5
293	10	2020-09-25	2020-10-02	6
1	1	2020-09-25	2020-10-02	7
99	21	2020-09-25	2020-10-02	8
294	92	2020-09-25	2020-10-02	9
216	122	2020-09-25	2020-10-02	10
301	2	2020-09-25	2020-10-02	11
200	27	2020-09-25	2020-10-02	12
297	162	2020-09-25	2020-10-02	13
407	56	2020-09-25	2020-10-02	14
296	161	2020-09-25	2020-10-02	15
298	123	2020-09-25	2020-10-02	16
303	77	2020-09-25	2020-10-02	17
327	172	2020-09-25	2020-10-02	18
3	3	2020-09-25	2020-10-02	19
288	92	2020-09-25	2020-10-02	20
310	20	2020-09-25	2020-10-02	21
62	43	2020-09-25	2020-10-02	22
321	16	2020-09-25	2020-10-02	23
312	167	2020-09-25	2020-10-02	24
323	171	2020-09-25	2020-10-02	25
336	92	2020-09-25	2020-10-02	26
21	17	2020-09-25	2020-10-02	27
7	7	2020-09-25	2020-10-02	28
334	32	2020-09-25	2020-10-02	29
330	48	2020-09-25	2020-10-02	30
36	17	2020-09-25	2020-10-02	31
313	168	2020-09-25	2020-10-02	32
319	169	2020-09-25	2020-10-02	33
219	124	2020-09-25	2020-10-02	34
299	163	2020-09-25	2020-10-02	35
6	6	2020-09-25	2020-10-02	36
231	130	2020-09-25	2020-10-02	37
306	164	2020-09-25	2020-10-02	38
348	179	2020-09-25	2020-10-02	39
355	96	2020-09-25	2020-10-02	40
346	48	2020-09-25	2020-10-02	41
316	130	2020-09-25	2020-10-02	42
201	52	2020-09-25	2020-10-02	43
325	130	2020-09-25	2020-10-02	44
236	134	2020-09-25	2020-10-02	45
4	4	2020-09-25	2020-10-02	46
343	176	2020-09-25	2020-10-02	47
354	182	2020-09-25	2020-10-02	48
724	327	2020-09-25	2020-10-02	49
308	74	2020-09-25	2020-10-02	50
402	212	2020-09-25	2020-10-02	51
8	8	2020-09-25	2020-10-02	52
307	165	2020-09-25	2020-10-02	53
361	186	2020-09-25	2020-10-02	54
204	63	2020-09-25	2020-10-02	55
137	51	2020-09-25	2020-10-02	56
342	171	2020-09-25	2020-10-02	57
23	19	2020-09-25	2020-10-02	58
730	179	2020-09-25	2020-10-02	59
379	172	2020-09-25	2020-10-02	60
68	47	2020-09-25	2020-10-02	61
11	4	2020-09-25	2020-10-02	62
26	21	2020-09-25	2020-10-02	63
335	89	2020-09-25	2020-10-02	64
362	92	2020-09-25	2020-10-02	65
158	56	2020-09-25	2020-10-02	66
366	190	2020-09-25	2020-10-02	67
5	5	2020-09-25	2020-10-02	68
27	22	2020-09-25	2020-10-02	69
37	29	2020-09-25	2020-10-02	70
370	48	2020-09-25	2020-10-02	71
2	2	2020-09-25	2020-10-02	72
69	48	2020-09-25	2020-10-02	73
10	10	2020-09-25	2020-10-02	74
317	139	2020-09-25	2020-10-02	75
398	209	2020-09-25	2020-10-02	76
885	153	2020-09-25	2020-10-02	77
150	48	2020-09-25	2020-10-02	78
82	56	2020-09-25	2020-10-02	79
54	19	2020-09-25	2020-10-02	80
12	11	2020-09-25	2020-10-02	81
380	200	2020-09-25	2020-10-02	82
274	153	2020-09-25	2020-10-02	83
391	207	2020-09-25	2020-10-02	84
20	16	2020-09-25	2020-10-02	85
202	116	2020-09-25	2020-10-02	86
374	195	2020-09-25	2020-10-02	87
81	52	2020-09-25	2020-10-02	88
668	314	2020-09-25	2020-10-02	89
363	187	2020-09-25	2020-10-02	90
165	56	2020-09-25	2020-10-02	91
33	28	2020-09-25	2020-10-02	92
51	28	2020-09-25	2020-10-02	93
368	192	2020-09-25	2020-10-02	94
155	92	2020-09-25	2020-10-02	95
208	39	2020-09-25	2020-10-02	96
1091	153	2020-09-25	2020-10-02	97
320	170	2020-09-25	2020-10-02	98
790	153	2020-09-25	2020-10-02	99
719	325	2020-09-25	2020-10-02	100
116	74	2020-09-25	2020-10-02	101
356	183	2020-09-25	2020-10-02	102
47	34	2020-09-25	2020-10-02	103
29	24	2020-09-25	2020-10-02	104
217	123	2020-09-25	2020-10-02	105
326	159	2020-09-25	2020-10-02	106
12	21	2020-09-25	2020-10-02	107
48	35	2020-09-25	2020-10-02	108
93	62	2020-09-25	2020-10-02	109
17	1	2020-09-25	2020-10-02	110
375	196	2020-09-25	2020-10-02	111
210	66	2020-09-25	2020-10-02	112
393	130	2020-09-25	2020-10-02	113
19	15	2020-09-25	2020-10-02	114
333	174	2020-09-25	2020-10-02	115
1092	85	2020-09-25	2020-10-02	116
214	68	2020-09-25	2020-10-02	117
678	315	2020-09-25	2020-10-02	118
122	20	2020-09-25	2020-10-02	119
364	188	2020-09-25	2020-10-02	120
722	68	2020-09-25	2020-10-02	121
720	355	2020-09-25	2020-10-02	122
1093	179	2020-09-25	2020-10-02	123
128	80	2020-09-25	2020-10-02	124
9	9	2020-09-25	2020-10-02	125
1094	153	2020-09-25	2020-10-02	126
399	92	2020-09-25	2020-10-02	127
34	28	2020-09-25	2020-10-02	128
665	234	2020-09-25	2020-10-02	129
372	85	2020-09-25	2020-10-02	130
209	120	2020-09-25	2020-10-02	131
203	117	2020-09-25	2020-10-02	132
397	92	2020-09-25	2020-10-02	133
396	159	2020-09-25	2020-10-02	134
107	70	2020-09-25	2020-10-02	135
64	45	2020-09-25	2020-10-02	136
887	362	2020-09-25	2020-10-02	137
138	45	2020-09-25	2020-10-02	138
13	12	2020-09-25	2020-10-02	139
15	14	2020-09-25	2020-10-02	140
700	74	2020-09-25	2020-10-02	141
211	121	2020-09-25	2020-10-02	142
95	63	2020-09-25	2020-10-02	143
382	166	2020-09-25	2020-10-02	144
1095	153	2020-09-25	2020-10-02	145
369	193	2020-09-25	2020-10-02	146
359	185	2020-09-25	2020-10-02	147
218	86	2020-09-25	2020-10-02	148
260	48	2020-09-25	2020-10-02	149
18	13	2020-09-25	2020-10-02	150
1096	153	2020-09-25	2020-10-02	151
123	45	2020-09-25	2020-10-02	152
865	356	2020-09-25	2020-10-02	153
691	145	2020-09-25	2020-10-02	154
664	28	2020-09-25	2020-10-02	155
31	26	2020-09-25	2020-10-02	156
14	13	2020-09-25	2020-10-02	157
908	153	2020-09-25	2020-10-02	158
109	70	2020-09-25	2020-10-02	159
110	32	2020-09-25	2020-10-02	160
115	73	2020-09-25	2020-10-02	161
58	40	2020-09-25	2020-10-02	162
174	102	2020-09-25	2020-10-02	163
94	19	2020-09-25	2020-10-02	164
682	90	2020-09-25	2020-10-02	165
240	137	2020-09-25	2020-10-02	166
25	20	2020-09-25	2020-10-02	167
791	344	2020-09-25	2020-10-02	168
404	214	2020-09-25	2020-10-02	169
75	45	2020-09-25	2020-10-02	170
1097	153	2020-09-25	2020-10-02	171
173	101	2020-09-25	2020-10-02	172
74	28	2020-09-25	2020-10-02	173
381	201	2020-09-25	2020-10-02	174
118	38	2020-09-25	2020-10-02	175
403	213	2020-09-25	2020-10-02	176
1098	153	2020-09-25	2020-10-02	177
868	55	2020-09-25	2020-10-02	178
53	37	2020-09-25	2020-10-02	179
279	153	2020-09-25	2020-10-02	180
213	33	2020-09-25	2020-10-02	181
729	158	2020-09-25	2020-10-02	182
408	217	2020-09-25	2020-10-02	183
103	68	2020-09-25	2020-10-02	184
401	211	2020-09-25	2020-10-02	185
858	301	2020-09-25	2020-10-02	186
680	48	2020-09-25	2020-10-02	187
1099	179	2020-09-25	2020-10-02	188
229	84	2020-09-25	2020-10-02	189
70	49	2020-09-25	2020-10-02	190
559	134	2020-09-25	2020-10-02	191
166	97	2020-09-25	2020-10-02	192
728	329	2020-09-25	2020-10-02	193
101	67	2020-09-25	2020-10-02	194
227	128	2020-09-25	2020-10-02	195
30	25	2020-09-25	2020-10-02	196
712	322	2020-09-25	2020-10-02	197
182	104	2020-09-25	2020-10-02	198
856	353	2020-09-25	2020-10-02	199
859	157	2020-09-25	2020-10-02	200
1	1	2020-03-06	2020-03-13	1
5	5	2020-03-06	2020-03-13	2
7	7	2020-03-06	2020-03-13	3
4	4	2020-03-06	2020-03-13	4
35	13	2020-03-06	2020-03-13	5
10	10	2020-03-06	2020-03-13	6
38	13	2020-03-06	2020-03-13	7
9	9	2020-03-06	2020-03-13	8
20	16	2020-03-06	2020-03-13	9
39	13	2020-03-06	2020-03-13	10
12	11	2020-03-06	2020-03-13	11
19	15	2020-03-06	2020-03-13	12
14	13	2020-03-06	2020-03-13	13
23	19	2020-03-06	2020-03-13	14
1044	50	2020-03-06	2020-03-13	15
86	50	2020-03-06	2020-03-13	16
65	13	2020-03-06	2020-03-13	17
21	17	2020-03-06	2020-03-13	18
3	3	2020-03-06	2020-03-13	19
8	8	2020-03-06	2020-03-13	20
72	50	2020-03-06	2020-03-13	21
6	6	2020-03-06	2020-03-13	22
31	26	2020-03-06	2020-03-13	23
13	12	2020-03-06	2020-03-13	24
43	10	2020-03-06	2020-03-13	25
59	13	2020-03-06	2020-03-13	26
27	22	2020-03-06	2020-03-13	27
29	24	2020-03-06	2020-03-13	28
76	52	2020-03-06	2020-03-13	29
26	21	2020-03-06	2020-03-13	30
1046	50	2020-03-06	2020-03-13	31
34	28	2020-03-06	2020-03-13	32
85	28	2020-03-06	2020-03-13	33
33	28	2020-03-06	2020-03-13	34
18	13	2020-03-06	2020-03-13	35
1100	50	2020-03-06	2020-03-13	36
16	4	2020-03-06	2020-03-13	37
25	20	2020-03-06	2020-03-13	38
36	17	2020-03-06	2020-03-13	39
37	29	2020-03-06	2020-03-13	40
41	1	2020-03-06	2020-03-13	41
55	38	2020-03-06	2020-03-13	42
49	36	2020-03-06	2020-03-13	43
172	13	2020-03-06	2020-03-13	44
56	39	2020-03-06	2020-03-13	45
126	79	2020-03-06	2020-03-13	46
60	41	2020-03-06	2020-03-13	47
52	20	2020-03-06	2020-03-13	48
15	14	2020-03-06	2020-03-13	49
66	46	2020-03-06	2020-03-13	50
1101	50	2020-03-06	2020-03-13	51
1102	50	2020-03-06	2020-03-13	52
1103	50	2020-03-06	2020-03-13	53
50	5	2020-03-06	2020-03-13	54
30	25	2020-03-06	2020-03-13	55
79	55	2020-03-06	2020-03-13	56
1047	50	2020-03-06	2020-03-13	57
54	19	2020-03-06	2020-03-13	58
48	35	2020-03-06	2020-03-13	59
1104	50	2020-03-06	2020-03-13	60
1105	50	2020-03-06	2020-03-13	61
63	44	2020-03-06	2020-03-13	62
53	37	2020-03-06	2020-03-13	63
1106	50	2020-03-06	2020-03-13	64
64	45	2020-03-06	2020-03-13	65
1045	13	2020-03-06	2020-03-13	66
45	32	2020-03-06	2020-03-13	67
1107	50	2020-03-06	2020-03-13	68
136	13	2020-03-06	2020-03-13	69
88	10	2020-03-06	2020-03-13	70
149	89	2020-03-06	2020-03-13	71
58	40	2020-03-06	2020-03-13	72
1108	50	2020-03-06	2020-03-13	73
61	42	2020-03-06	2020-03-13	74
51	28	2020-03-06	2020-03-13	75
1053	13	2020-03-06	2020-03-13	76
100	66	2020-03-06	2020-03-13	77
70	49	2020-03-06	2020-03-13	78
89	60	2020-03-06	2020-03-13	79
1050	13	2020-03-06	2020-03-13	80
1051	359	2020-03-06	2020-03-13	81
90	61	2020-03-06	2020-03-13	82
1054	13	2020-03-06	2020-03-13	83
75	45	2020-03-06	2020-03-13	84
125	78	2020-03-06	2020-03-13	85
1062	13	2020-03-06	2020-03-13	86
83	57	2020-03-06	2020-03-13	87
82	56	2020-03-06	2020-03-13	88
120	76	2020-03-06	2020-03-13	89
81	52	2020-03-06	2020-03-13	90
113	54	2020-03-06	2020-03-13	91
74	28	2020-03-06	2020-03-13	92
1109	50	2020-03-06	2020-03-13	93
77	53	2020-03-06	2020-03-13	94
69	48	2020-03-06	2020-03-13	95
47	34	2020-03-06	2020-03-13	96
121	20	2020-03-06	2020-03-13	97
1057	13	2020-03-06	2020-03-13	98
106	66	2020-03-06	2020-03-13	99
1058	13	2020-03-06	2020-03-13	100
97	64	2020-03-06	2020-03-13	101
1110	50	2020-03-06	2020-03-13	102
763	158	2020-03-06	2020-03-13	103
94	19	2020-03-06	2020-03-13	104
147	13	2020-03-06	2020-03-13	105
105	7	2020-03-06	2020-03-13	106
24	9	2020-03-06	2020-03-13	107
1061	13	2020-03-06	2020-03-13	108
102	27	2020-03-06	2020-03-13	109
99	21	2020-03-06	2020-03-13	110
114	19	2020-03-06	2020-03-13	111
765	64	2020-03-06	2020-03-13	112
1111	106	2020-03-06	2020-03-13	113
95	63	2020-03-06	2020-03-13	114
132	32	2020-03-06	2020-03-13	115
133	82	2020-03-06	2020-03-13	116
1055	383	2020-03-06	2020-03-13	117
91	61	2020-03-06	2020-03-13	118
141	84	2020-03-06	2020-03-13	119
12	21	2020-03-06	2020-03-13	120
87	59	2020-03-06	2020-03-13	121
1112	50	2020-03-06	2020-03-13	122
1060	13	2020-03-06	2020-03-13	123
143	85	2020-03-06	2020-03-13	124
191	110	2020-03-06	2020-03-13	125
1113	389	2020-03-06	2020-03-13	126
144	86	2020-03-06	2020-03-13	127
108	48	2020-03-06	2020-03-13	128
93	62	2020-03-06	2020-03-13	129
1052	382	2020-03-06	2020-03-13	130
103	68	2020-03-06	2020-03-13	131
145	19	2020-03-06	2020-03-13	132
119	75	2020-03-06	2020-03-13	133
1063	337	2020-03-06	2020-03-13	134
111	71	2020-03-06	2020-03-13	135
776	84	2020-03-06	2020-03-13	136
196	50	2020-03-06	2020-03-13	137
135	20	2020-03-06	2020-03-13	138
160	89	2020-03-06	2020-03-13	139
1114	50	2020-03-06	2020-03-13	140
1115	390	2020-03-06	2020-03-13	141
764	158	2020-03-06	2020-03-13	142
139	60	2020-03-06	2020-03-13	143
118	38	2020-03-06	2020-03-13	144
117	17	2020-03-06	2020-03-13	145
115	73	2020-03-06	2020-03-13	146
1064	13	2020-03-06	2020-03-13	147
778	106	2020-03-06	2020-03-13	148
523	27	2020-03-06	2020-03-13	149
1059	110	2020-03-06	2020-03-13	150
67	1	2020-03-06	2020-03-13	151
123	45	2020-03-06	2020-03-13	152
104	69	2020-03-06	2020-03-13	153
519	158	2020-03-06	2020-03-13	154
101	67	2020-03-06	2020-03-13	155
128	80	2020-03-06	2020-03-13	156
146	87	2020-03-06	2020-03-13	157
163	95	2020-03-06	2020-03-13	158
1116	137	2020-03-06	2020-03-13	159
521	78	2020-03-06	2020-03-13	160
517	272	2020-03-06	2020-03-13	161
154	28	2020-03-06	2020-03-13	162
109	70	2020-03-06	2020-03-13	163
150	48	2020-03-06	2020-03-13	164
168	89	2020-03-06	2020-03-13	165
107	70	2020-03-06	2020-03-13	166
1117	115	2020-03-06	2020-03-13	167
165	56	2020-03-06	2020-03-13	168
1118	106	2020-03-06	2020-03-13	169
131	2	2020-03-06	2020-03-13	170
194	112	2020-03-06	2020-03-13	171
775	283	2020-03-06	2020-03-13	172
184	19	2020-03-06	2020-03-13	173
138	45	2020-03-06	2020-03-13	174
554	44	2020-03-06	2020-03-13	175
175	21	2020-03-06	2020-03-13	176
124	77	2020-03-06	2020-03-13	177
1065	13	2020-03-06	2020-03-13	178
181	106	2020-03-06	2020-03-13	179
155	92	2020-03-06	2020-03-13	180
158	56	2020-03-06	2020-03-13	181
159	94	2020-03-06	2020-03-13	182
782	196	2020-03-06	2020-03-13	183
156	37	2020-03-06	2020-03-13	184
152	91	2020-03-06	2020-03-13	185
528	45	2020-03-06	2020-03-13	186
130	67	2020-03-06	2020-03-13	187
153	51	2020-03-06	2020-03-13	188
729	158	2020-03-06	2020-03-13	189
1119	19	2020-03-06	2020-03-13	190
1120	106	2020-03-06	2020-03-13	191
783	299	2020-03-06	2020-03-13	192
530	111	2020-03-06	2020-03-13	193
187	63	2020-03-06	2020-03-13	194
515	64	2020-03-06	2020-03-13	195
140	33	2020-03-06	2020-03-13	196
185	22	2020-03-06	2020-03-13	197
526	186	2020-03-06	2020-03-13	198
535	27	2020-03-06	2020-03-13	199
590	106	2020-03-06	2020-03-13	200
7	7	2020-01-03	2020-01-10	1
43	10	2020-01-03	2020-01-10	2
19	15	2020-01-03	2020-01-10	3
5	5	2020-01-03	2020-01-10	4
20	16	2020-01-03	2020-01-10	5
1	1	2020-01-03	2020-01-10	6
12	11	2020-01-03	2020-01-10	7
4	4	2020-01-03	2020-01-10	8
27	22	2020-01-03	2020-01-10	9
23	19	2020-01-03	2020-01-10	10
34	28	2020-01-03	2020-01-10	11
37	29	2020-01-03	2020-01-10	12
56	39	2020-01-03	2020-01-10	13
21	17	2020-01-03	2020-01-10	14
60	41	2020-01-03	2020-01-10	15
26	21	2020-01-03	2020-01-10	16
33	28	2020-01-03	2020-01-10	17
97	64	2020-01-03	2020-01-10	18
58	40	2020-01-03	2020-01-10	19
48	35	2020-01-03	2020-01-10	20
99	21	2020-01-03	2020-01-10	21
59	13	2020-01-03	2020-01-10	22
102	27	2020-01-03	2020-01-10	23
36	17	2020-01-03	2020-01-10	24
82	56	2020-01-03	2020-01-10	25
144	86	2020-01-03	2020-01-10	26
67	1	2020-01-03	2020-01-10	27
54	19	2020-01-03	2020-01-10	28
64	45	2020-01-03	2020-01-10	29
106	66	2020-01-03	2020-01-10	30
108	48	2020-01-03	2020-01-10	31
527	50	2020-01-03	2020-01-10	32
132	32	2020-01-03	2020-01-10	33
53	37	2020-01-03	2020-01-10	34
75	45	2020-01-03	2020-01-10	35
69	48	2020-01-03	2020-01-10	36
517	272	2020-01-03	2020-01-10	37
536	56	2020-01-03	2020-01-10	38
160	89	2020-01-03	2020-01-10	39
49	36	2020-01-03	2020-01-10	40
528	45	2020-01-03	2020-01-10	41
83	57	2020-01-03	2020-01-10	42
79	55	2020-01-03	2020-01-10	43
70	49	2020-01-03	2020-01-10	44
113	54	2020-01-03	2020-01-10	45
544	280	2020-01-03	2020-01-10	46
95	63	2020-01-03	2020-01-10	47
121	20	2020-01-03	2020-01-10	48
87	59	2020-01-03	2020-01-10	49
12	21	2020-01-03	2020-01-10	50
147	13	2020-01-03	2020-01-10	51
119	75	2020-01-03	2020-01-10	52
521	78	2020-01-03	2020-01-10	53
114	19	2020-01-03	2020-01-10	54
9	9	2020-01-03	2020-01-10	55
74	28	2020-01-03	2020-01-10	56
141	84	2020-01-03	2020-01-10	57
531	276	2020-01-03	2020-01-10	58
81	52	2020-01-03	2020-01-10	59
51	28	2020-01-03	2020-01-10	60
133	82	2020-01-03	2020-01-10	61
104	69	2020-01-03	2020-01-10	62
3	3	2020-01-03	2020-01-10	63
526	186	2020-01-03	2020-01-10	64
47	34	2020-01-03	2020-01-10	65
537	277	2020-01-03	2020-01-10	66
529	196	2020-01-03	2020-01-10	67
111	71	2020-01-03	2020-01-10	68
590	106	2020-01-03	2020-01-10	69
175	21	2020-01-03	2020-01-10	70
542	112	2020-01-03	2020-01-10	71
535	27	2020-01-03	2020-01-10	72
91	61	2020-01-03	2020-01-10	73
103	68	2020-01-03	2020-01-10	74
561	285	2020-01-03	2020-01-10	75
145	19	2020-01-03	2020-01-10	76
146	87	2020-01-03	2020-01-10	77
139	60	2020-01-03	2020-01-10	78
150	48	2020-01-03	2020-01-10	79
530	111	2020-01-03	2020-01-10	80
135	20	2020-01-03	2020-01-10	81
191	110	2020-01-03	2020-01-10	82
602	53	2020-01-03	2020-01-10	83
601	64	2020-01-03	2020-01-10	84
156	37	2020-01-03	2020-01-10	85
578	38	2020-01-03	2020-01-10	86
541	279	2020-01-03	2020-01-10	87
131	2	2020-01-03	2020-01-10	88
94	19	2020-01-03	2020-01-10	89
549	112	2020-01-03	2020-01-10	90
118	38	2020-01-03	2020-01-10	91
179	105	2020-01-03	2020-01-10	92
532	55	2020-01-03	2020-01-10	93
539	278	2020-01-03	2020-01-10	94
123	45	2020-01-03	2020-01-10	95
115	73	2020-01-03	2020-01-10	96
163	95	2020-01-03	2020-01-10	97
93	62	2020-01-03	2020-01-10	98
165	56	2020-01-03	2020-01-10	99
153	51	2020-01-03	2020-01-10	100
282	74	2020-01-03	2020-01-10	101
600	255	2020-01-03	2020-01-10	102
548	120	2020-01-03	2020-01-10	103
546	123	2020-01-03	2020-01-10	104
168	89	2020-01-03	2020-01-10	105
586	41	2020-01-03	2020-01-10	106
603	104	2020-01-03	2020-01-10	107
559	134	2020-01-03	2020-01-10	108
187	63	2020-01-03	2020-01-10	109
552	111	2020-01-03	2020-01-10	110
609	299	2020-01-03	2020-01-10	111
185	22	2020-01-03	2020-01-10	112
574	27	2020-01-03	2020-01-10	113
569	289	2020-01-03	2020-01-10	114
105	7	2020-01-03	2020-01-10	115
534	28	2020-01-03	2020-01-10	116
575	56	2020-01-03	2020-01-10	117
117	17	2020-01-03	2020-01-10	118
109	70	2020-01-03	2020-01-10	119
595	71	2020-01-03	2020-01-10	120
140	33	2020-01-03	2020-01-10	121
545	281	2020-01-03	2020-01-10	122
184	19	2020-01-03	2020-01-10	123
159	94	2020-01-03	2020-01-10	124
566	120	2020-01-03	2020-01-10	125
154	28	2020-01-03	2020-01-10	126
188	107	2020-01-03	2020-01-10	127
597	86	2020-01-03	2020-01-10	128
576	196	2020-01-03	2020-01-10	129
128	80	2020-01-03	2020-01-10	130
608	8	2020-01-03	2020-01-10	131
596	71	2020-01-03	2020-01-10	132
594	54	2020-01-03	2020-01-10	133
101	67	2020-01-03	2020-01-10	134
523	27	2020-01-03	2020-01-10	135
138	45	2020-01-03	2020-01-10	136
130	67	2020-01-03	2020-01-10	137
613	19	2020-01-03	2020-01-10	138
158	56	2020-01-03	2020-01-10	139
580	60	2020-01-03	2020-01-10	140
564	286	2020-01-03	2020-01-10	141
558	278	2020-01-03	2020-01-10	142
178	98	2020-01-03	2020-01-10	143
582	53	2020-01-03	2020-01-10	144
183	29	2020-01-03	2020-01-10	145
584	294	2020-01-03	2020-01-10	146
181	106	2020-01-03	2020-01-10	147
583	293	2020-01-03	2020-01-10	148
605	48	2020-01-03	2020-01-10	149
604	297	2020-01-03	2020-01-10	150
589	75	2020-01-03	2020-01-10	151
177	104	2020-01-03	2020-01-10	152
107	70	2020-01-03	2020-01-10	153
581	123	2020-01-03	2020-01-10	154
570	20	2020-01-03	2020-01-10	155
173	101	2020-01-03	2020-01-10	156
176	103	2020-01-03	2020-01-10	157
592	293	2020-01-03	2020-01-10	158
124	77	2020-01-03	2020-01-10	159
556	234	2020-01-03	2020-01-10	160
170	99	2020-01-03	2020-01-10	161
610	300	2020-01-03	2020-01-10	162
607	298	2020-01-03	2020-01-10	163
551	28	2020-01-03	2020-01-10	164
162	70	2020-01-03	2020-01-10	165
618	159	2020-01-03	2020-01-10	166
279	153	2020-01-03	2020-01-10	167
171	100	2020-01-03	2020-01-10	168
621	42	2020-01-03	2020-01-10	169
174	102	2020-01-03	2020-01-10	170
568	139	2020-01-03	2020-01-10	171
571	290	2020-01-03	2020-01-10	172
186	2	2020-01-03	2020-01-10	173
261	104	2020-01-03	2020-01-10	174
543	15	2020-01-03	2020-01-10	175
1121	106	2020-01-03	2020-01-10	176
625	307	2020-01-03	2020-01-10	177
199	115	2020-01-03	2020-01-10	178
624	306	2020-01-03	2020-01-10	179
1118	106	2020-01-03	2020-01-10	180
182	104	2020-01-03	2020-01-10	181
626	308	2020-01-03	2020-01-10	182
547	282	2020-01-03	2020-01-10	183
614	302	2020-01-03	2020-01-10	184
260	48	2020-01-03	2020-01-10	185
622	62	2020-01-03	2020-01-10	186
1122	138	2020-01-03	2020-01-10	187
573	292	2020-01-03	2020-01-10	188
560	28	2020-01-03	2020-01-10	189
898	5	2020-01-03	2020-01-10	190
587	295	2020-01-03	2020-01-10	191
615	289	2020-01-03	2020-01-10	192
612	301	2020-01-03	2020-01-10	193
726	45	2020-01-03	2020-01-10	194
562	28	2020-01-03	2020-01-10	195
557	154	2020-01-03	2020-01-10	196
629	130	2020-01-03	2020-01-10	197
166	97	2020-01-03	2020-01-10	198
264	73	2020-01-03	2020-01-10	199
724	53	2020-01-03	2020-01-10	200
1	1	2020-04-10	2020-04-17	1
2	2	2020-04-10	2020-04-17	2
3	3	2020-04-10	2020-04-17	3
4	4	2020-04-10	2020-04-17	4
6	6	2020-04-10	2020-04-17	5
5	5	2020-04-10	2020-04-17	6
7	7	2020-04-10	2020-04-17	7
8	8	2020-04-10	2020-04-17	8
9	9	2020-04-10	2020-04-17	9
11	4	2020-04-10	2020-04-17	10
10	10	2020-04-10	2020-04-17	11
12	11	2020-04-10	2020-04-17	12
13	12	2020-04-10	2020-04-17	13
15	14	2020-04-10	2020-04-17	14
14	13	2020-04-10	2020-04-17	15
22	18	2020-04-10	2020-04-17	16
19	15	2020-04-10	2020-04-17	17
17	1	2020-04-10	2020-04-17	18
18	13	2020-04-10	2020-04-17	19
21	17	2020-04-10	2020-04-17	20
16	4	2020-04-10	2020-04-17	21
23	19	2020-04-10	2020-04-17	22
24	9	2020-04-10	2020-04-17	23
20	16	2020-04-10	2020-04-17	24
26	21	2020-04-10	2020-04-17	25
30	25	2020-04-10	2020-04-17	26
25	20	2020-04-10	2020-04-17	27
29	24	2020-04-10	2020-04-17	28
27	22	2020-04-10	2020-04-17	29
268	150	2020-04-10	2020-04-17	30
40	30	2020-04-10	2020-04-17	31
33	28	2020-04-10	2020-04-17	32
31	26	2020-04-10	2020-04-17	33
36	17	2020-04-10	2020-04-17	34
34	28	2020-04-10	2020-04-17	35
37	29	2020-04-10	2020-04-17	36
28	23	2020-04-10	2020-04-17	37
116	74	2020-04-10	2020-04-17	38
47	34	2020-04-10	2020-04-17	39
270	64	2020-04-10	2020-04-17	40
35	13	2020-04-10	2020-04-17	41
68	47	2020-04-10	2020-04-17	42
45	32	2020-04-10	2020-04-17	43
44	20	2020-04-10	2020-04-17	44
39	13	2020-04-10	2020-04-17	45
48	35	2020-04-10	2020-04-17	46
38	13	2020-04-10	2020-04-17	47
43	10	2020-04-10	2020-04-17	48
41	1	2020-04-10	2020-04-17	49
53	37	2020-04-10	2020-04-17	50
51	28	2020-04-10	2020-04-17	51
57	5	2020-04-10	2020-04-17	52
32	27	2020-04-10	2020-04-17	53
50	5	2020-04-10	2020-04-17	54
54	19	2020-04-10	2020-04-17	55
62	43	2020-04-10	2020-04-17	56
46	33	2020-04-10	2020-04-17	57
42	31	2020-04-10	2020-04-17	58
52	20	2020-04-10	2020-04-17	59
56	39	2020-04-10	2020-04-17	60
61	42	2020-04-10	2020-04-17	61
49	36	2020-04-10	2020-04-17	62
58	40	2020-04-10	2020-04-17	63
55	38	2020-04-10	2020-04-17	64
63	44	2020-04-10	2020-04-17	65
64	45	2020-04-10	2020-04-17	66
69	48	2020-04-10	2020-04-17	67
60	41	2020-04-10	2020-04-17	68
71	9	2020-04-10	2020-04-17	69
59	13	2020-04-10	2020-04-17	70
70	49	2020-04-10	2020-04-17	71
151	90	2020-04-10	2020-04-17	72
73	51	2020-04-10	2020-04-17	73
66	46	2020-04-10	2020-04-17	74
83	57	2020-04-10	2020-04-17	75
77	53	2020-04-10	2020-04-17	76
65	13	2020-04-10	2020-04-17	77
74	28	2020-04-10	2020-04-17	78
75	45	2020-04-10	2020-04-17	79
72	50	2020-04-10	2020-04-17	80
79	55	2020-04-10	2020-04-17	81
82	56	2020-04-10	2020-04-17	82
81	52	2020-04-10	2020-04-17	83
67	1	2020-04-10	2020-04-17	84
78	54	2020-04-10	2020-04-17	85
110	32	2020-04-10	2020-04-17	86
98	65	2020-04-10	2020-04-17	87
76	52	2020-04-10	2020-04-17	88
84	58	2020-04-10	2020-04-17	89
97	64	2020-04-10	2020-04-17	90
12	21	2020-04-10	2020-04-17	91
93	62	2020-04-10	2020-04-17	92
87	59	2020-04-10	2020-04-17	93
89	60	2020-04-10	2020-04-17	94
96	50	2020-04-10	2020-04-17	95
95	63	2020-04-10	2020-04-17	96
90	61	2020-04-10	2020-04-17	97
94	19	2020-04-10	2020-04-17	98
91	61	2020-04-10	2020-04-17	99
86	50	2020-04-10	2020-04-17	100
1123	96	2020-04-10	2020-04-17	101
107	70	2020-04-10	2020-04-17	102
99	21	2020-04-10	2020-04-17	103
104	69	2020-04-10	2020-04-17	104
85	28	2020-04-10	2020-04-17	105
101	67	2020-04-10	2020-04-17	106
109	70	2020-04-10	2020-04-17	107
103	68	2020-04-10	2020-04-17	108
281	96	2020-04-10	2020-04-17	109
108	48	2020-04-10	2020-04-17	110
102	27	2020-04-10	2020-04-17	111
106	66	2020-04-10	2020-04-17	112
115	73	2020-04-10	2020-04-17	113
111	71	2020-04-10	2020-04-17	114
114	19	2020-04-10	2020-04-17	115
144	86	2020-04-10	2020-04-17	116
105	7	2020-04-10	2020-04-17	117
123	45	2020-04-10	2020-04-17	118
92	1	2020-04-10	2020-04-17	119
118	38	2020-04-10	2020-04-17	120
113	54	2020-04-10	2020-04-17	121
117	17	2020-04-10	2020-04-17	122
100	66	2020-04-10	2020-04-17	123
128	80	2020-04-10	2020-04-17	124
119	75	2020-04-10	2020-04-17	125
134	83	2020-04-10	2020-04-17	126
1124	205	2020-04-10	2020-04-17	127
1125	284	2020-04-10	2020-04-17	128
137	51	2020-04-10	2020-04-17	129
138	45	2020-04-10	2020-04-17	130
121	20	2020-04-10	2020-04-17	131
131	2	2020-04-10	2020-04-17	132
130	67	2020-04-10	2020-04-17	133
157	93	2020-04-10	2020-04-17	134
80	33	2020-04-10	2020-04-17	135
129	81	2020-04-10	2020-04-17	136
152	91	2020-04-10	2020-04-17	137
125	78	2020-04-10	2020-04-17	138
195	113	2020-04-10	2020-04-17	139
127	16	2020-04-10	2020-04-17	140
132	32	2020-04-10	2020-04-17	141
122	20	2020-04-10	2020-04-17	142
124	77	2020-04-10	2020-04-17	143
120	76	2020-04-10	2020-04-17	144
139	60	2020-04-10	2020-04-17	145
141	84	2020-04-10	2020-04-17	146
146	87	2020-04-10	2020-04-17	147
140	33	2020-04-10	2020-04-17	148
112	72	2020-04-10	2020-04-17	149
133	82	2020-04-10	2020-04-17	150
145	19	2020-04-10	2020-04-17	151
156	37	2020-04-10	2020-04-17	152
153	51	2020-04-10	2020-04-17	153
150	48	2020-04-10	2020-04-17	154
158	56	2020-04-10	2020-04-17	155
166	97	2020-04-10	2020-04-17	156
154	28	2020-04-10	2020-04-17	157
135	20	2020-04-10	2020-04-17	158
162	70	2020-04-10	2020-04-17	159
136	13	2020-04-10	2020-04-17	160
160	89	2020-04-10	2020-04-17	161
155	92	2020-04-10	2020-04-17	162
164	96	2020-04-10	2020-04-17	163
147	13	2020-04-10	2020-04-17	164
165	56	2020-04-10	2020-04-17	165
170	99	2020-04-10	2020-04-17	166
159	94	2020-04-10	2020-04-17	167
173	101	2020-04-10	2020-04-17	168
174	102	2020-04-10	2020-04-17	169
168	89	2020-04-10	2020-04-17	170
275	154	2020-04-10	2020-04-17	171
276	74	2020-04-10	2020-04-17	172
171	100	2020-04-10	2020-04-17	173
161	32	2020-04-10	2020-04-17	174
188	107	2020-04-10	2020-04-17	175
176	103	2020-04-10	2020-04-17	176
149	89	2020-04-10	2020-04-17	177
175	21	2020-04-10	2020-04-17	178
186	2	2020-04-10	2020-04-17	179
178	98	2020-04-10	2020-04-17	180
163	95	2020-04-10	2020-04-17	181
184	19	2020-04-10	2020-04-17	182
183	29	2020-04-10	2020-04-17	183
181	106	2020-04-10	2020-04-17	184
148	88	2020-04-10	2020-04-17	185
185	22	2020-04-10	2020-04-17	186
187	63	2020-04-10	2020-04-17	187
177	104	2020-04-10	2020-04-17	188
192	70	2020-04-10	2020-04-17	189
179	105	2020-04-10	2020-04-17	190
279	153	2020-04-10	2020-04-17	191
182	104	2020-04-10	2020-04-17	192
189	108	2020-04-10	2020-04-17	193
196	50	2020-04-10	2020-04-17	194
193	111	2020-04-10	2020-04-17	195
143	85	2020-04-10	2020-04-17	196
197	114	2020-04-10	2020-04-17	197
142	4	2020-04-10	2020-04-17	198
217	123	2020-04-10	2020-04-17	199
194	112	2020-04-10	2020-04-17	200
1	1	2020-05-08	2020-05-15	1
204	63	2020-05-08	2020-05-15	2
3	3	2020-05-08	2020-05-15	3
205	118	2020-05-08	2020-05-15	4
2	2	2020-05-08	2020-05-15	5
200	27	2020-05-08	2020-05-15	6
203	117	2020-05-08	2020-05-15	7
6	6	2020-05-08	2020-05-15	8
4	4	2020-05-08	2020-05-15	9
7	7	2020-05-08	2020-05-15	10
8	8	2020-05-08	2020-05-15	11
5	5	2020-05-08	2020-05-15	12
15	14	2020-05-08	2020-05-15	13
11	4	2020-05-08	2020-05-15	14
9	9	2020-05-08	2020-05-15	15
10	10	2020-05-08	2020-05-15	16
12	11	2020-05-08	2020-05-15	17
13	12	2020-05-08	2020-05-15	18
68	47	2020-05-08	2020-05-15	19
207	119	2020-05-08	2020-05-15	20
21	17	2020-05-08	2020-05-15	21
214	68	2020-05-08	2020-05-15	22
24	9	2020-05-08	2020-05-15	23
158	56	2020-05-08	2020-05-15	24
18	13	2020-05-08	2020-05-15	25
23	19	2020-05-08	2020-05-15	26
230	48	2020-05-08	2020-05-15	27
165	56	2020-05-08	2020-05-15	28
19	15	2020-05-08	2020-05-15	29
30	25	2020-05-08	2020-05-15	30
17	1	2020-05-08	2020-05-15	31
14	13	2020-05-08	2020-05-15	32
26	21	2020-05-08	2020-05-15	33
82	56	2020-05-08	2020-05-15	34
20	16	2020-05-08	2020-05-15	35
211	121	2020-05-08	2020-05-15	36
225	9	2020-05-08	2020-05-15	37
16	4	2020-05-08	2020-05-15	38
29	24	2020-05-08	2020-05-15	39
36	17	2020-05-08	2020-05-15	40
27	22	2020-05-08	2020-05-15	41
116	74	2020-05-08	2020-05-15	42
47	34	2020-05-08	2020-05-15	43
33	28	2020-05-08	2020-05-15	44
917	302	2020-05-08	2020-05-15	45
25	20	2020-05-08	2020-05-15	46
250	13	2020-05-08	2020-05-15	47
258	13	2020-05-08	2020-05-15	48
22	18	2020-05-08	2020-05-15	49
37	29	2020-05-08	2020-05-15	50
62	43	2020-05-08	2020-05-15	51
202	116	2020-05-08	2020-05-15	52
218	86	2020-05-08	2020-05-15	53
40	30	2020-05-08	2020-05-15	54
34	28	2020-05-08	2020-05-15	55
918	13	2020-05-08	2020-05-15	56
31	26	2020-05-08	2020-05-15	57
798	2	2020-05-08	2020-05-15	58
916	367	2020-05-08	2020-05-15	59
915	13	2020-05-08	2020-05-15	60
54	19	2020-05-08	2020-05-15	61
812	349	2020-05-08	2020-05-15	62
229	84	2020-05-08	2020-05-15	63
48	35	2020-05-08	2020-05-15	64
151	90	2020-05-08	2020-05-15	65
51	28	2020-05-08	2020-05-15	66
57	5	2020-05-08	2020-05-15	67
35	13	2020-05-08	2020-05-15	68
44	20	2020-05-08	2020-05-15	69
39	13	2020-05-08	2020-05-15	70
45	32	2020-05-08	2020-05-15	71
265	89	2020-05-08	2020-05-15	72
69	48	2020-05-08	2020-05-15	73
73	51	2020-05-08	2020-05-15	74
53	37	2020-05-08	2020-05-15	75
58	40	2020-05-08	2020-05-15	76
38	13	2020-05-08	2020-05-15	77
110	32	2020-05-08	2020-05-15	78
64	45	2020-05-08	2020-05-15	79
222	2	2020-05-08	2020-05-15	80
52	20	2020-05-08	2020-05-15	81
925	13	2020-05-08	2020-05-15	82
1126	13	2020-05-08	2020-05-15	83
43	10	2020-05-08	2020-05-15	84
56	39	2020-05-08	2020-05-15	85
257	31	2020-05-08	2020-05-15	86
63	44	2020-05-08	2020-05-15	87
46	33	2020-05-08	2020-05-15	88
81	52	2020-05-08	2020-05-15	89
70	49	2020-05-08	2020-05-15	90
50	5	2020-05-08	2020-05-15	91
268	150	2020-05-08	2020-05-15	92
208	39	2020-05-08	2020-05-15	93
83	57	2020-05-08	2020-05-15	94
74	28	2020-05-08	2020-05-15	95
28	23	2020-05-08	2020-05-15	96
71	9	2020-05-08	2020-05-15	97
61	42	2020-05-08	2020-05-15	98
55	38	2020-05-08	2020-05-15	99
95	63	2020-05-08	2020-05-15	100
98	65	2020-05-08	2020-05-15	101
75	45	2020-05-08	2020-05-15	102
77	53	2020-05-08	2020-05-15	103
60	41	2020-05-08	2020-05-15	104
59	13	2020-05-08	2020-05-15	105
93	62	2020-05-08	2020-05-15	106
65	13	2020-05-08	2020-05-15	107
49	36	2020-05-08	2020-05-15	108
235	133	2020-05-08	2020-05-15	109
94	19	2020-05-08	2020-05-15	110
84	58	2020-05-08	2020-05-15	111
79	55	2020-05-08	2020-05-15	112
137	51	2020-05-08	2020-05-15	113
12	21	2020-05-08	2020-05-15	114
72	50	2020-05-08	2020-05-15	115
1127	13	2020-05-08	2020-05-15	116
107	70	2020-05-08	2020-05-15	117
99	21	2020-05-08	2020-05-15	118
104	69	2020-05-08	2020-05-15	119
103	68	2020-05-08	2020-05-15	120
109	70	2020-05-08	2020-05-15	121
195	113	2020-05-08	2020-05-15	122
115	73	2020-05-08	2020-05-15	123
87	59	2020-05-08	2020-05-15	124
78	54	2020-05-08	2020-05-15	125
111	71	2020-05-08	2020-05-15	126
91	61	2020-05-08	2020-05-15	127
108	48	2020-05-08	2020-05-15	128
123	45	2020-05-08	2020-05-15	129
1128	391	2020-05-08	2020-05-15	130
1129	13	2020-05-08	2020-05-15	131
128	80	2020-05-08	2020-05-15	132
122	20	2020-05-08	2020-05-15	133
150	48	2020-05-08	2020-05-15	134
138	45	2020-05-08	2020-05-15	135
121	20	2020-05-08	2020-05-15	136
118	38	2020-05-08	2020-05-15	137
144	86	2020-05-08	2020-05-15	138
96	50	2020-05-08	2020-05-15	139
157	93	2020-05-08	2020-05-15	140
102	27	2020-05-08	2020-05-15	141
89	60	2020-05-08	2020-05-15	142
106	66	2020-05-08	2020-05-15	143
114	19	2020-05-08	2020-05-15	144
97	64	2020-05-08	2020-05-15	145
141	84	2020-05-08	2020-05-15	146
117	17	2020-05-08	2020-05-15	147
101	67	2020-05-08	2020-05-15	148
808	348	2020-05-08	2020-05-15	149
806	347	2020-05-08	2020-05-15	150
119	75	2020-05-08	2020-05-15	151
136	13	2020-05-08	2020-05-15	152
41	1	2020-05-08	2020-05-15	153
129	81	2020-05-08	2020-05-15	154
67	1	2020-05-08	2020-05-15	155
132	32	2020-05-08	2020-05-15	156
134	83	2020-05-08	2020-05-15	157
153	51	2020-05-08	2020-05-15	158
178	98	2020-05-08	2020-05-15	159
146	87	2020-05-08	2020-05-15	160
267	56	2020-05-08	2020-05-15	161
173	101	2020-05-08	2020-05-15	162
139	60	2020-05-08	2020-05-15	163
171	100	2020-05-08	2020-05-15	164
147	13	2020-05-08	2020-05-15	165
800	2	2020-05-08	2020-05-15	166
145	19	2020-05-08	2020-05-15	167
166	97	2020-05-08	2020-05-15	168
238	32	2020-05-08	2020-05-15	169
131	2	2020-05-08	2020-05-15	170
125	78	2020-05-08	2020-05-15	171
174	102	2020-05-08	2020-05-15	172
217	123	2020-05-08	2020-05-15	173
156	37	2020-05-08	2020-05-15	174
187	63	2020-05-08	2020-05-15	175
66	46	2020-05-08	2020-05-15	176
1130	392	2020-05-08	2020-05-15	177
105	7	2020-05-08	2020-05-15	178
170	99	2020-05-08	2020-05-15	179
162	70	2020-05-08	2020-05-15	180
275	154	2020-05-08	2020-05-15	181
181	106	2020-05-08	2020-05-15	182
140	33	2020-05-08	2020-05-15	183
154	28	2020-05-08	2020-05-15	184
266	56	2020-05-08	2020-05-15	185
254	32	2020-05-08	2020-05-15	186
130	67	2020-05-08	2020-05-15	187
168	89	2020-05-08	2020-05-15	188
188	107	2020-05-08	2020-05-15	189
159	94	2020-05-08	2020-05-15	190
184	19	2020-05-08	2020-05-15	191
182	104	2020-05-08	2020-05-15	192
256	146	2020-05-08	2020-05-15	193
113	54	2020-05-08	2020-05-15	194
183	29	2020-05-08	2020-05-15	195
160	89	2020-05-08	2020-05-15	196
85	28	2020-05-08	2020-05-15	197
260	48	2020-05-08	2020-05-15	198
279	153	2020-05-08	2020-05-15	199
196	50	2020-05-08	2020-05-15	200
292	160	2020-09-11	2020-09-18	1
285	42	2020-09-11	2020-09-18	2
291	159	2020-09-11	2020-09-18	3
289	158	2020-09-11	2020-09-18	4
99	21	2020-09-11	2020-09-18	5
1	1	2020-09-11	2020-09-18	6
216	122	2020-09-11	2020-09-18	7
200	27	2020-09-11	2020-09-18	8
286	157	2020-09-11	2020-09-18	9
301	2	2020-09-11	2020-09-18	10
294	92	2020-09-11	2020-09-18	11
297	162	2020-09-11	2020-09-18	12
303	77	2020-09-11	2020-09-18	13
327	172	2020-09-11	2020-09-18	14
296	161	2020-09-11	2020-09-18	15
62	43	2020-09-11	2020-09-18	16
323	171	2020-09-11	2020-09-18	17
3	3	2020-09-11	2020-09-18	18
336	92	2020-09-11	2020-09-18	19
321	16	2020-09-11	2020-09-18	20
310	20	2020-09-11	2020-09-18	21
298	123	2020-09-11	2020-09-18	22
312	167	2020-09-11	2020-09-18	23
330	48	2020-09-11	2020-09-18	24
7	7	2020-09-11	2020-09-18	25
219	124	2020-09-11	2020-09-18	26
231	130	2020-09-11	2020-09-18	27
21	17	2020-09-11	2020-09-18	28
319	169	2020-09-11	2020-09-18	29
334	32	2020-09-11	2020-09-18	30
201	52	2020-09-11	2020-09-18	31
36	17	2020-09-11	2020-09-18	32
346	48	2020-09-11	2020-09-18	33
355	96	2020-09-11	2020-09-18	34
313	168	2020-09-11	2020-09-18	35
6	6	2020-09-11	2020-09-18	36
236	134	2020-09-11	2020-09-18	37
361	186	2020-09-11	2020-09-18	38
370	48	2020-09-11	2020-09-18	39
379	172	2020-09-11	2020-09-18	40
4	4	2020-09-11	2020-09-18	41
8	8	2020-09-11	2020-09-18	42
137	51	2020-09-11	2020-09-18	43
11	4	2020-09-11	2020-09-18	44
342	171	2020-09-11	2020-09-18	45
366	190	2020-09-11	2020-09-18	46
362	92	2020-09-11	2020-09-18	47
204	63	2020-09-11	2020-09-18	48
68	47	2020-09-11	2020-09-18	49
217	123	2020-09-11	2020-09-18	50
23	19	2020-09-11	2020-09-18	51
343	176	2020-09-11	2020-09-18	52
398	209	2020-09-11	2020-09-18	53
2	2	2020-09-11	2020-09-18	54
158	56	2020-09-11	2020-09-18	55
722	68	2020-09-11	2020-09-18	56
316	130	2020-09-11	2020-09-18	57
5	5	2020-09-11	2020-09-18	58
26	21	2020-09-11	2020-09-18	59
668	314	2020-09-11	2020-09-18	60
208	39	2020-09-11	2020-09-18	61
391	207	2020-09-11	2020-09-18	62
354	182	2020-09-11	2020-09-18	63
348	179	2020-09-11	2020-09-18	64
69	48	2020-09-11	2020-09-18	65
20	16	2020-09-11	2020-09-18	66
54	19	2020-09-11	2020-09-18	67
202	116	2020-09-11	2020-09-18	68
37	29	2020-09-11	2020-09-18	69
27	22	2020-09-11	2020-09-18	70
12	11	2020-09-11	2020-09-18	71
82	56	2020-09-11	2020-09-18	72
150	48	2020-09-11	2020-09-18	73
363	187	2020-09-11	2020-09-18	74
165	56	2020-09-11	2020-09-18	75
858	301	2020-09-11	2020-09-18	76
380	200	2020-09-11	2020-09-18	77
33	28	2020-09-11	2020-09-18	78
155	92	2020-09-11	2020-09-18	79
51	28	2020-09-11	2020-09-18	80
10	10	2020-09-11	2020-09-18	81
678	315	2020-09-11	2020-09-18	82
17	1	2020-09-11	2020-09-18	83
81	52	2020-09-11	2020-09-18	84
393	130	2020-09-11	2020-09-18	85
364	188	2020-09-11	2020-09-18	86
665	234	2020-09-11	2020-09-18	87
209	120	2020-09-11	2020-09-18	88
720	355	2020-09-11	2020-09-18	89
306	164	2020-09-11	2020-09-18	90
325	130	2020-09-11	2020-09-18	91
29	24	2020-09-11	2020-09-18	92
210	66	2020-09-11	2020-09-18	93
19	15	2020-09-11	2020-09-18	94
48	35	2020-09-11	2020-09-18	95
9	9	2020-09-11	2020-09-18	96
397	92	2020-09-11	2020-09-18	97
93	62	2020-09-11	2020-09-18	98
223	35	2020-09-11	2020-09-18	99
375	196	2020-09-11	2020-09-18	100
47	34	2020-09-11	2020-09-18	101
664	28	2020-09-11	2020-09-18	102
122	20	2020-09-11	2020-09-18	103
116	74	2020-09-11	2020-09-18	104
12	21	2020-09-11	2020-09-18	105
203	117	2020-09-11	2020-09-18	106
887	362	2020-09-11	2020-09-18	107
719	325	2020-09-11	2020-09-18	108
214	68	2020-09-11	2020-09-18	109
34	28	2020-09-11	2020-09-18	110
682	90	2020-09-11	2020-09-18	111
865	356	2020-09-11	2020-09-18	112
326	159	2020-09-11	2020-09-18	113
317	139	2020-09-11	2020-09-18	114
13	12	2020-09-11	2020-09-18	115
356	183	2020-09-11	2020-09-18	116
791	344	2020-09-11	2020-09-18	117
110	32	2020-09-11	2020-09-18	118
396	159	2020-09-11	2020-09-18	119
25	20	2020-09-11	2020-09-18	120
299	163	2020-09-11	2020-09-18	121
107	70	2020-09-11	2020-09-18	122
996	130	2020-09-11	2020-09-18	123
128	80	2020-09-11	2020-09-18	124
691	145	2020-09-11	2020-09-18	125
15	14	2020-09-11	2020-09-18	126
374	195	2020-09-11	2020-09-18	127
31	26	2020-09-11	2020-09-18	128
218	86	2020-09-11	2020-09-18	129
64	45	2020-09-11	2020-09-18	130
260	48	2020-09-11	2020-09-18	131
211	121	2020-09-11	2020-09-18	132
138	45	2020-09-11	2020-09-18	133
95	63	2020-09-11	2020-09-18	134
123	45	2020-09-11	2020-09-18	135
58	40	2020-09-11	2020-09-18	136
404	214	2020-09-11	2020-09-18	137
94	19	2020-09-11	2020-09-18	138
399	92	2020-09-11	2020-09-18	139
115	73	2020-09-11	2020-09-18	140
109	70	2020-09-11	2020-09-18	141
372	85	2020-09-11	2020-09-18	142
382	166	2020-09-11	2020-09-18	143
205	118	2020-09-11	2020-09-18	144
18	13	2020-09-11	2020-09-18	145
227	128	2020-09-11	2020-09-18	146
666	234	2020-09-11	2020-09-18	147
369	193	2020-09-11	2020-09-18	148
859	157	2020-09-11	2020-09-18	149
708	85	2020-09-11	2020-09-18	150
368	192	2020-09-11	2020-09-18	151
74	28	2020-09-11	2020-09-18	152
53	37	2020-09-11	2020-09-18	153
30	25	2020-09-11	2020-09-18	154
680	48	2020-09-11	2020-09-18	155
995	337	2020-09-11	2020-09-18	156
222	2	2020-09-11	2020-09-18	157
75	45	2020-09-11	2020-09-18	158
856	353	2020-09-11	2020-09-18	159
14	13	2020-09-11	2020-09-18	160
676	48	2020-09-11	2020-09-18	161
213	33	2020-09-11	2020-09-18	162
230	48	2020-09-11	2020-09-18	163
174	102	2020-09-11	2020-09-18	164
672	22	2020-09-11	2020-09-18	165
288	92	2020-09-11	2020-09-18	166
1131	393	2020-09-11	2020-09-18	167
700	74	2020-09-11	2020-09-18	168
240	137	2020-09-11	2020-09-18	169
559	134	2020-09-11	2020-09-18	170
997	205	2020-09-11	2020-09-18	171
403	213	2020-09-11	2020-09-18	172
157	93	2020-09-11	2020-09-18	173
173	101	2020-09-11	2020-09-18	174
853	352	2020-09-11	2020-09-18	175
103	68	2020-09-11	2020-09-18	176
359	185	2020-09-11	2020-09-18	177
118	38	2020-09-11	2020-09-18	178
16	4	2020-09-11	2020-09-18	179
688	110	2020-09-11	2020-09-18	180
221	126	2020-09-11	2020-09-18	181
868	55	2020-09-11	2020-09-18	182
1132	205	2020-09-11	2020-09-18	183
381	201	2020-09-11	2020-09-18	184
729	158	2020-09-11	2020-09-18	185
101	67	2020-09-11	2020-09-18	186
229	84	2020-09-11	2020-09-18	187
182	104	2020-09-11	2020-09-18	188
728	329	2020-09-11	2020-09-18	189
857	169	2020-09-11	2020-09-18	190
24	9	2020-09-11	2020-09-18	191
401	211	2020-09-11	2020-09-18	192
166	97	2020-09-11	2020-09-18	193
408	217	2020-09-11	2020-09-18	194
866	316	2020-09-11	2020-09-18	195
237	135	2020-09-11	2020-09-18	196
712	322	2020-09-11	2020-09-18	197
207	119	2020-09-11	2020-09-18	198
146	87	2020-09-11	2020-09-18	199
117	17	2020-09-11	2020-09-18	200
7	7	2020-01-24	2020-01-31	1
5	5	2020-01-24	2020-01-31	2
1	1	2020-01-24	2020-01-31	3
20	16	2020-01-24	2020-01-31	4
31	26	2020-01-24	2020-01-31	5
43	10	2020-01-24	2020-01-31	6
29	24	2020-01-24	2020-01-31	7
19	15	2020-01-24	2020-01-31	8
12	11	2020-01-24	2020-01-31	9
4	4	2020-01-24	2020-01-31	10
34	28	2020-01-24	2020-01-31	11
27	22	2020-01-24	2020-01-31	12
33	28	2020-01-24	2020-01-31	13
23	19	2020-01-24	2020-01-31	14
21	17	2020-01-24	2020-01-31	15
56	39	2020-01-24	2020-01-31	16
37	29	2020-01-24	2020-01-31	17
55	38	2020-01-24	2020-01-31	18
97	64	2020-01-24	2020-01-31	19
26	21	2020-01-24	2020-01-31	20
60	41	2020-01-24	2020-01-31	21
49	36	2020-01-24	2020-01-31	22
113	54	2020-01-24	2020-01-31	23
36	17	2020-01-24	2020-01-31	24
515	64	2020-01-24	2020-01-31	25
59	13	2020-01-24	2020-01-31	26
518	273	2020-01-24	2020-01-31	27
89	60	2020-01-24	2020-01-31	28
90	61	2020-01-24	2020-01-31	29
48	35	2020-01-24	2020-01-31	30
102	27	2020-01-24	2020-01-31	31
9	9	2020-01-24	2020-01-31	32
79	55	2020-01-24	2020-01-31	33
53	37	2020-01-24	2020-01-31	34
58	40	2020-01-24	2020-01-31	35
132	32	2020-01-24	2020-01-31	36
144	86	2020-01-24	2020-01-31	37
52	20	2020-01-24	2020-01-31	38
133	82	2020-01-24	2020-01-31	39
99	21	2020-01-24	2020-01-31	40
54	19	2020-01-24	2020-01-31	41
74	28	2020-01-24	2020-01-31	42
64	45	2020-01-24	2020-01-31	43
83	57	2020-01-24	2020-01-31	44
82	56	2020-01-24	2020-01-31	45
517	272	2020-01-24	2020-01-31	46
106	66	2020-01-24	2020-01-31	47
519	158	2020-01-24	2020-01-31	48
108	48	2020-01-24	2020-01-31	49
3	3	2020-01-24	2020-01-31	50
125	78	2020-01-24	2020-01-31	51
120	76	2020-01-24	2020-01-31	52
75	45	2020-01-24	2020-01-31	53
51	28	2020-01-24	2020-01-31	54
50	5	2020-01-24	2020-01-31	55
69	48	2020-01-24	2020-01-31	56
70	49	2020-01-24	2020-01-31	57
47	34	2020-01-24	2020-01-31	58
521	78	2020-01-24	2020-01-31	59
95	63	2020-01-24	2020-01-31	60
87	59	2020-01-24	2020-01-31	61
553	26	2020-01-24	2020-01-31	62
141	84	2020-01-24	2020-01-31	63
121	20	2020-01-24	2020-01-31	64
523	27	2020-01-24	2020-01-31	65
527	50	2020-01-24	2020-01-31	66
525	53	2020-01-24	2020-01-31	67
147	13	2020-01-24	2020-01-31	68
528	45	2020-01-24	2020-01-31	69
526	186	2020-01-24	2020-01-31	70
67	1	2020-01-24	2020-01-31	71
81	52	2020-01-24	2020-01-31	72
119	75	2020-01-24	2020-01-31	73
544	280	2020-01-24	2020-01-31	74
114	19	2020-01-24	2020-01-31	75
91	61	2020-01-24	2020-01-31	76
535	27	2020-01-24	2020-01-31	77
536	56	2020-01-24	2020-01-31	78
135	20	2020-01-24	2020-01-31	79
533	33	2020-01-24	2020-01-31	80
160	89	2020-01-24	2020-01-31	81
1002	26	2020-01-24	2020-01-31	82
529	196	2020-01-24	2020-01-31	83
118	38	2020-01-24	2020-01-31	84
531	276	2020-01-24	2020-01-31	85
530	111	2020-01-24	2020-01-31	86
104	69	2020-01-24	2020-01-31	87
13	12	2020-01-24	2020-01-31	88
111	71	2020-01-24	2020-01-31	89
537	277	2020-01-24	2020-01-31	90
534	28	2020-01-24	2020-01-31	91
163	95	2020-01-24	2020-01-31	92
103	68	2020-01-24	2020-01-31	93
146	87	2020-01-24	2020-01-31	94
1003	26	2020-01-24	2020-01-31	95
532	55	2020-01-24	2020-01-31	96
1005	273	2020-01-24	2020-01-31	97
117	17	2020-01-24	2020-01-31	98
139	60	2020-01-24	2020-01-31	99
105	7	2020-01-24	2020-01-31	100
145	19	2020-01-24	2020-01-31	101
150	48	2020-01-24	2020-01-31	102
540	40	2020-01-24	2020-01-31	103
93	62	2020-01-24	2020-01-31	104
572	291	2020-01-24	2020-01-31	105
539	278	2020-01-24	2020-01-31	106
191	110	2020-01-24	2020-01-31	107
541	279	2020-01-24	2020-01-31	108
542	112	2020-01-24	2020-01-31	109
154	28	2020-01-24	2020-01-31	110
94	19	2020-01-24	2020-01-31	111
175	21	2020-01-24	2020-01-31	112
543	15	2020-01-24	2020-01-31	113
548	120	2020-01-24	2020-01-31	114
115	73	2020-01-24	2020-01-31	115
545	281	2020-01-24	2020-01-31	116
131	2	2020-01-24	2020-01-31	117
551	28	2020-01-24	2020-01-31	118
1004	26	2020-01-24	2020-01-31	119
565	287	2020-01-24	2020-01-31	120
156	37	2020-01-24	2020-01-31	121
123	45	2020-01-24	2020-01-31	122
590	106	2020-01-24	2020-01-31	123
546	123	2020-01-24	2020-01-31	124
563	110	2020-01-24	2020-01-31	125
549	112	2020-01-24	2020-01-31	126
101	67	2020-01-24	2020-01-31	127
547	282	2020-01-24	2020-01-31	128
1133	394	2020-01-24	2020-01-31	129
109	70	2020-01-24	2020-01-31	130
165	56	2020-01-24	2020-01-31	131
282	74	2020-01-24	2020-01-31	132
168	89	2020-01-24	2020-01-31	133
179	105	2020-01-24	2020-01-31	134
552	111	2020-01-24	2020-01-31	135
187	63	2020-01-24	2020-01-31	136
128	80	2020-01-24	2020-01-31	137
561	285	2020-01-24	2020-01-31	138
107	70	2020-01-24	2020-01-31	139
153	51	2020-01-24	2020-01-31	140
560	28	2020-01-24	2020-01-31	141
159	94	2020-01-24	2020-01-31	142
558	278	2020-01-24	2020-01-31	143
140	33	2020-01-24	2020-01-31	144
559	134	2020-01-24	2020-01-31	145
557	154	2020-01-24	2020-01-31	146
578	38	2020-01-24	2020-01-31	147
562	28	2020-01-24	2020-01-31	148
130	67	2020-01-24	2020-01-31	149
566	120	2020-01-24	2020-01-31	150
138	45	2020-01-24	2020-01-31	151
12	21	2020-01-24	2020-01-31	152
185	22	2020-01-24	2020-01-31	153
1006	26	2020-01-24	2020-01-31	154
569	289	2020-01-24	2020-01-31	155
176	103	2020-01-24	2020-01-31	156
571	290	2020-01-24	2020-01-31	157
158	56	2020-01-24	2020-01-31	158
575	56	2020-01-24	2020-01-31	159
573	292	2020-01-24	2020-01-31	160
593	296	2020-01-24	2020-01-31	161
162	70	2020-01-24	2020-01-31	162
184	19	2020-01-24	2020-01-31	163
1134	284	2020-01-24	2020-01-31	164
580	60	2020-01-24	2020-01-31	165
574	27	2020-01-24	2020-01-31	166
577	28	2020-01-24	2020-01-31	167
570	20	2020-01-24	2020-01-31	168
124	77	2020-01-24	2020-01-31	169
568	139	2020-01-24	2020-01-31	170
1135	18	2020-01-24	2020-01-31	171
576	196	2020-01-24	2020-01-31	172
584	294	2020-01-24	2020-01-31	173
183	29	2020-01-24	2020-01-31	174
188	107	2020-01-24	2020-01-31	175
581	123	2020-01-24	2020-01-31	176
583	293	2020-01-24	2020-01-31	177
181	106	2020-01-24	2020-01-31	178
174	102	2020-01-24	2020-01-31	179
173	101	2020-01-24	2020-01-31	180
177	104	2020-01-24	2020-01-31	181
199	115	2020-01-24	2020-01-31	182
586	41	2020-01-24	2020-01-31	183
582	53	2020-01-24	2020-01-31	184
601	64	2020-01-24	2020-01-31	185
178	98	2020-01-24	2020-01-31	186
1136	395	2020-01-24	2020-01-31	187
589	75	2020-01-24	2020-01-31	188
556	234	2020-01-24	2020-01-31	189
594	54	2020-01-24	2020-01-31	190
591	28	2020-01-24	2020-01-31	191
170	99	2020-01-24	2020-01-31	192
605	48	2020-01-24	2020-01-31	193
616	303	2020-01-24	2020-01-31	194
592	293	2020-01-24	2020-01-31	195
618	159	2020-01-24	2020-01-31	196
626	308	2020-01-24	2020-01-31	197
564	286	2020-01-24	2020-01-31	198
1007	26	2020-01-24	2020-01-31	199
186	2	2020-01-24	2020-01-31	200
1	1	2020-03-13	2020-03-20	1
5	5	2020-03-13	2020-03-20	2
7	7	2020-03-13	2020-03-20	3
4	4	2020-03-13	2020-03-20	4
10	10	2020-03-13	2020-03-20	5
9	9	2020-03-13	2020-03-20	6
12	11	2020-03-13	2020-03-20	7
20	16	2020-03-13	2020-03-20	8
14	13	2020-03-13	2020-03-20	9
35	13	2020-03-13	2020-03-20	10
19	15	2020-03-13	2020-03-20	11
6	6	2020-03-13	2020-03-20	12
38	13	2020-03-13	2020-03-20	13
31	26	2020-03-13	2020-03-20	14
3	3	2020-03-13	2020-03-20	15
39	13	2020-03-13	2020-03-20	16
8	8	2020-03-13	2020-03-20	17
23	19	2020-03-13	2020-03-20	18
13	12	2020-03-13	2020-03-20	19
21	17	2020-03-13	2020-03-20	20
27	22	2020-03-13	2020-03-20	21
15	14	2020-03-13	2020-03-20	22
26	21	2020-03-13	2020-03-20	23
43	10	2020-03-13	2020-03-20	24
29	24	2020-03-13	2020-03-20	25
34	28	2020-03-13	2020-03-20	26
25	20	2020-03-13	2020-03-20	27
33	28	2020-03-13	2020-03-20	28
16	4	2020-03-13	2020-03-20	29
65	13	2020-03-13	2020-03-20	30
59	13	2020-03-13	2020-03-20	31
96	50	2020-03-13	2020-03-20	32
36	17	2020-03-13	2020-03-20	33
37	29	2020-03-13	2020-03-20	34
72	50	2020-03-13	2020-03-20	35
86	50	2020-03-13	2020-03-20	36
76	52	2020-03-13	2020-03-20	37
49	36	2020-03-13	2020-03-20	38
85	28	2020-03-13	2020-03-20	39
18	13	2020-03-13	2020-03-20	40
30	25	2020-03-13	2020-03-20	41
41	1	2020-03-13	2020-03-20	42
55	38	2020-03-13	2020-03-20	43
60	41	2020-03-13	2020-03-20	44
56	39	2020-03-13	2020-03-20	45
52	20	2020-03-13	2020-03-20	46
66	46	2020-03-13	2020-03-20	47
50	5	2020-03-13	2020-03-20	48
63	44	2020-03-13	2020-03-20	49
45	32	2020-03-13	2020-03-20	50
54	19	2020-03-13	2020-03-20	51
48	35	2020-03-13	2020-03-20	52
1044	50	2020-03-13	2020-03-20	53
61	42	2020-03-13	2020-03-20	54
79	55	2020-03-13	2020-03-20	55
51	28	2020-03-13	2020-03-20	56
58	40	2020-03-13	2020-03-20	57
53	37	2020-03-13	2020-03-20	58
64	45	2020-03-13	2020-03-20	59
172	13	2020-03-13	2020-03-20	60
1137	50	2020-03-13	2020-03-20	61
24	9	2020-03-13	2020-03-20	62
112	72	2020-03-13	2020-03-20	63
149	89	2020-03-13	2020-03-20	64
70	49	2020-03-13	2020-03-20	65
78	54	2020-03-13	2020-03-20	66
69	48	2020-03-13	2020-03-20	67
1138	50	2020-03-13	2020-03-20	68
47	34	2020-03-13	2020-03-20	69
89	60	2020-03-13	2020-03-20	70
88	10	2020-03-13	2020-03-20	71
90	61	2020-03-13	2020-03-20	72
100	66	2020-03-13	2020-03-20	73
126	79	2020-03-13	2020-03-20	74
144	86	2020-03-13	2020-03-20	75
75	45	2020-03-13	2020-03-20	76
83	57	2020-03-13	2020-03-20	77
74	28	2020-03-13	2020-03-20	78
82	56	2020-03-13	2020-03-20	79
1046	50	2020-03-13	2020-03-20	80
77	53	2020-03-13	2020-03-20	81
136	13	2020-03-13	2020-03-20	82
120	76	2020-03-13	2020-03-20	83
125	78	2020-03-13	2020-03-20	84
113	54	2020-03-13	2020-03-20	85
148	88	2020-03-13	2020-03-20	86
1045	13	2020-03-13	2020-03-20	87
81	52	2020-03-13	2020-03-20	88
105	7	2020-03-13	2020-03-20	89
94	19	2020-03-13	2020-03-20	90
106	66	2020-03-13	2020-03-20	91
102	27	2020-03-13	2020-03-20	92
87	59	2020-03-13	2020-03-20	93
1047	50	2020-03-13	2020-03-20	94
97	64	2020-03-13	2020-03-20	95
99	21	2020-03-13	2020-03-20	96
95	63	2020-03-13	2020-03-20	97
91	61	2020-03-13	2020-03-20	98
114	19	2020-03-13	2020-03-20	99
12	21	2020-03-13	2020-03-20	100
93	62	2020-03-13	2020-03-20	101
121	20	2020-03-13	2020-03-20	102
108	48	2020-03-13	2020-03-20	103
1139	86	2020-03-13	2020-03-20	104
103	68	2020-03-13	2020-03-20	105
1050	13	2020-03-13	2020-03-20	106
147	13	2020-03-13	2020-03-20	107
133	82	2020-03-13	2020-03-20	108
1100	50	2020-03-13	2020-03-20	109
132	32	2020-03-13	2020-03-20	110
1053	13	2020-03-13	2020-03-20	111
119	75	2020-03-13	2020-03-20	112
783	299	2020-03-13	2020-03-20	113
40	30	2020-03-13	2020-03-20	114
104	69	2020-03-13	2020-03-20	115
84	58	2020-03-13	2020-03-20	116
143	85	2020-03-13	2020-03-20	117
1054	13	2020-03-13	2020-03-20	118
191	110	2020-03-13	2020-03-20	119
1062	13	2020-03-13	2020-03-20	120
141	84	2020-03-13	2020-03-20	121
71	9	2020-03-13	2020-03-20	122
776	84	2020-03-13	2020-03-20	123
763	158	2020-03-13	2020-03-20	124
101	67	2020-03-13	2020-03-20	125
1140	50	2020-03-13	2020-03-20	126
765	64	2020-03-13	2020-03-20	127
145	19	2020-03-13	2020-03-20	128
1051	359	2020-03-13	2020-03-20	129
109	70	2020-03-13	2020-03-20	130
111	71	2020-03-13	2020-03-20	131
1113	389	2020-03-13	2020-03-20	132
107	70	2020-03-13	2020-03-20	133
117	17	2020-03-13	2020-03-20	134
115	73	2020-03-13	2020-03-20	135
118	38	2020-03-13	2020-03-20	136
165	56	2020-03-13	2020-03-20	137
139	60	2020-03-13	2020-03-20	138
161	32	2020-03-13	2020-03-20	139
150	48	2020-03-13	2020-03-20	140
160	89	2020-03-13	2020-03-20	141
128	80	2020-03-13	2020-03-20	142
146	87	2020-03-13	2020-03-20	143
135	20	2020-03-13	2020-03-20	144
123	45	2020-03-13	2020-03-20	145
1057	13	2020-03-13	2020-03-20	146
1141	50	2020-03-13	2020-03-20	147
196	50	2020-03-13	2020-03-20	148
1142	50	2020-03-13	2020-03-20	149
163	95	2020-03-13	2020-03-20	150
1058	13	2020-03-13	2020-03-20	151
523	27	2020-03-13	2020-03-20	152
1143	50	2020-03-13	2020-03-20	153
1061	13	2020-03-13	2020-03-20	154
162	70	2020-03-13	2020-03-20	155
154	28	2020-03-13	2020-03-20	156
1052	382	2020-03-13	2020-03-20	157
1144	50	2020-03-13	2020-03-20	158
130	67	2020-03-13	2020-03-20	159
166	97	2020-03-13	2020-03-20	160
155	92	2020-03-13	2020-03-20	161
67	1	2020-03-13	2020-03-20	162
1145	299	2020-03-13	2020-03-20	163
158	56	2020-03-13	2020-03-20	164
1063	337	2020-03-13	2020-03-20	165
129	81	2020-03-13	2020-03-20	166
124	77	2020-03-13	2020-03-20	167
521	78	2020-03-13	2020-03-20	168
131	2	2020-03-13	2020-03-20	169
168	89	2020-03-13	2020-03-20	170
138	45	2020-03-13	2020-03-20	171
194	112	2020-03-13	2020-03-20	172
184	19	2020-03-13	2020-03-20	173
175	21	2020-03-13	2020-03-20	174
157	93	2020-03-13	2020-03-20	175
517	272	2020-03-13	2020-03-20	176
1146	50	2020-03-13	2020-03-20	177
153	51	2020-03-13	2020-03-20	178
159	94	2020-03-13	2020-03-20	179
1111	106	2020-03-13	2020-03-20	180
1101	50	2020-03-13	2020-03-20	181
179	105	2020-03-13	2020-03-20	182
156	37	2020-03-13	2020-03-20	183
1147	50	2020-03-13	2020-03-20	184
181	106	2020-03-13	2020-03-20	185
1103	50	2020-03-13	2020-03-20	186
174	102	2020-03-13	2020-03-20	187
1148	50	2020-03-13	2020-03-20	188
187	63	2020-03-13	2020-03-20	189
1102	50	2020-03-13	2020-03-20	190
519	158	2020-03-13	2020-03-20	191
1149	7	2020-03-13	2020-03-20	192
526	186	2020-03-13	2020-03-20	193
199	115	2020-03-13	2020-03-20	194
185	22	2020-03-13	2020-03-20	195
1060	13	2020-03-13	2020-03-20	196
140	33	2020-03-13	2020-03-20	197
1150	141	2020-03-13	2020-03-20	198
170	99	2020-03-13	2020-03-20	199
545	281	2020-03-13	2020-03-20	200
665	234	2020-07-24	2020-07-31	1
200	27	2020-07-24	2020-07-31	2
216	122	2020-07-24	2020-07-31	3
666	234	2020-07-24	2020-07-31	4
667	234	2020-07-24	2020-07-31	5
1	1	2020-07-24	2020-07-31	6
99	21	2020-07-24	2020-07-31	7
669	234	2020-07-24	2020-07-31	8
3	3	2020-07-24	2020-07-31	9
670	234	2020-07-24	2020-07-31	10
671	234	2020-07-24	2020-07-31	11
330	48	2020-07-24	2020-07-31	12
673	234	2020-07-24	2020-07-31	13
62	43	2020-07-24	2020-07-31	14
674	234	2020-07-24	2020-07-31	15
310	20	2020-07-24	2020-07-31	16
675	234	2020-07-24	2020-07-31	17
677	234	2020-07-24	2020-07-31	18
346	48	2020-07-24	2020-07-31	19
679	234	2020-07-24	2020-07-31	20
6	6	2020-07-24	2020-07-31	21
7	7	2020-07-24	2020-07-31	22
219	124	2020-07-24	2020-07-31	23
683	234	2020-07-24	2020-07-31	24
327	172	2020-07-24	2020-07-31	25
201	52	2020-07-24	2020-07-31	26
68	47	2020-07-24	2020-07-31	27
355	96	2020-07-24	2020-07-31	28
686	234	2020-07-24	2020-07-31	29
361	186	2020-07-24	2020-07-31	30
208	39	2020-07-24	2020-07-31	31
342	171	2020-07-24	2020-07-31	32
689	234	2020-07-24	2020-07-31	33
8	8	2020-07-24	2020-07-31	34
4	4	2020-07-24	2020-07-31	35
11	4	2020-07-24	2020-07-31	36
217	123	2020-07-24	2020-07-31	37
2	2	2020-07-24	2020-07-31	38
231	130	2020-07-24	2020-07-31	39
334	32	2020-07-24	2020-07-31	40
692	234	2020-07-24	2020-07-31	41
362	92	2020-07-24	2020-07-31	42
21	17	2020-07-24	2020-07-31	43
204	63	2020-07-24	2020-07-31	44
379	172	2020-07-24	2020-07-31	45
312	167	2020-07-24	2020-07-31	46
701	234	2020-07-24	2020-07-31	47
209	120	2020-07-24	2020-07-31	48
202	116	2020-07-24	2020-07-31	49
15	14	2020-07-24	2020-07-31	50
36	17	2020-07-24	2020-07-31	51
5	5	2020-07-24	2020-07-31	52
668	314	2020-07-24	2020-07-31	53
366	190	2020-07-24	2020-07-31	54
236	134	2020-07-24	2020-07-31	55
10	10	2020-07-24	2020-07-31	56
294	92	2020-07-24	2020-07-31	57
297	162	2020-07-24	2020-07-31	58
137	51	2020-07-24	2020-07-31	59
20	16	2020-07-24	2020-07-31	60
676	48	2020-07-24	2020-07-31	61
13	12	2020-07-24	2020-07-31	62
17	1	2020-07-24	2020-07-31	63
23	19	2020-07-24	2020-07-31	64
672	22	2020-07-24	2020-07-31	65
203	117	2020-07-24	2020-07-31	66
37	29	2020-07-24	2020-07-31	67
12	11	2020-07-24	2020-07-31	68
158	56	2020-07-24	2020-07-31	69
214	68	2020-07-24	2020-07-31	70
26	21	2020-07-24	2020-07-31	71
680	48	2020-07-24	2020-07-31	72
27	22	2020-07-24	2020-07-31	73
687	316	2020-07-24	2020-07-31	74
9	9	2020-07-24	2020-07-31	75
684	48	2020-07-24	2020-07-31	76
82	56	2020-07-24	2020-07-31	77
221	126	2020-07-24	2020-07-31	78
54	19	2020-07-24	2020-07-31	79
210	66	2020-07-24	2020-07-31	80
33	28	2020-07-24	2020-07-31	81
1151	293	2020-07-24	2020-07-31	82
69	48	2020-07-24	2020-07-31	83
230	48	2020-07-24	2020-07-31	84
155	92	2020-07-24	2020-07-31	85
205	118	2020-07-24	2020-07-31	86
48	35	2020-07-24	2020-07-31	87
223	35	2020-07-24	2020-07-31	88
19	15	2020-07-24	2020-07-31	89
681	108	2020-07-24	2020-07-31	90
678	315	2020-07-24	2020-07-31	91
165	56	2020-07-24	2020-07-31	92
110	32	2020-07-24	2020-07-31	93
207	119	2020-07-24	2020-07-31	94
29	24	2020-07-24	2020-07-31	95
122	20	2020-07-24	2020-07-31	96
252	143	2020-07-24	2020-07-31	97
682	90	2020-07-24	2020-07-31	98
138	396	2020-07-24	2020-07-31	99
116	74	2020-07-24	2020-07-31	100
237	135	2020-07-24	2020-07-31	101
211	121	2020-07-24	2020-07-31	102
213	33	2020-07-24	2020-07-31	103
1152	293	2020-07-24	2020-07-31	104
397	92	2020-07-24	2020-07-31	105
14	13	2020-07-24	2020-07-31	106
18	13	2020-07-24	2020-07-31	107
30	25	2020-07-24	2020-07-31	108
51	28	2020-07-24	2020-07-31	109
222	2	2020-07-24	2020-07-31	110
34	28	2020-07-24	2020-07-31	111
25	20	2020-07-24	2020-07-31	112
227	128	2020-07-24	2020-07-31	113
296	161	2020-07-24	2020-07-31	114
321	16	2020-07-24	2020-07-31	115
81	52	2020-07-24	2020-07-31	116
150	48	2020-07-24	2020-07-31	117
47	34	2020-07-24	2020-07-31	118
64	45	2020-07-24	2020-07-31	119
218	86	2020-07-24	2020-07-31	120
31	26	2020-07-24	2020-07-31	121
229	84	2020-07-24	2020-07-31	122
93	62	2020-07-24	2020-07-31	123
688	110	2020-07-24	2020-07-31	124
228	129	2020-07-24	2020-07-31	125
404	214	2020-07-24	2020-07-31	126
690	317	2020-07-24	2020-07-31	127
336	92	2020-07-24	2020-07-31	128
24	9	2020-07-24	2020-07-31	129
16	4	2020-07-24	2020-07-31	130
53	37	2020-07-24	2020-07-31	131
240	137	2020-07-24	2020-07-31	132
58	40	2020-07-24	2020-07-31	133
705	302	2020-07-24	2020-07-31	134
12	21	2020-07-24	2020-07-31	135
107	70	2020-07-24	2020-07-31	136
703	190	2020-07-24	2020-07-31	137
95	63	2020-07-24	2020-07-31	138
94	19	2020-07-24	2020-07-31	139
303	77	2020-07-24	2020-07-31	140
704	48	2020-07-24	2020-07-31	141
75	45	2020-07-24	2020-07-31	142
123	45	2020-07-24	2020-07-31	143
56	39	2020-07-24	2020-07-31	144
151	90	2020-07-24	2020-07-31	145
115	73	2020-07-24	2020-07-31	146
1153	347	2020-07-24	2020-07-31	147
109	70	2020-07-24	2020-07-31	148
693	58	2020-07-24	2020-07-31	149
699	33	2020-07-24	2020-07-31	150
313	168	2020-07-24	2020-07-31	151
128	80	2020-07-24	2020-07-31	152
138	45	2020-07-24	2020-07-31	153
702	319	2020-07-24	2020-07-31	154
74	28	2020-07-24	2020-07-31	155
700	74	2020-07-24	2020-07-31	156
103	68	2020-07-24	2020-07-31	157
710	184	2020-07-24	2020-07-31	158
243	139	2020-07-24	2020-07-31	159
260	48	2020-07-24	2020-07-31	160
238	32	2020-07-24	2020-07-31	161
45	32	2020-07-24	2020-07-31	162
1154	126	2020-07-24	2020-07-31	163
835	48	2020-07-24	2020-07-31	164
694	302	2020-07-24	2020-07-31	165
157	93	2020-07-24	2020-07-31	166
364	188	2020-07-24	2020-07-31	167
118	38	2020-07-24	2020-07-31	168
706	66	2020-07-24	2020-07-31	169
905	364	2020-07-24	2020-07-31	170
83	57	2020-07-24	2020-07-31	171
44	20	2020-07-24	2020-07-31	172
708	85	2020-07-24	2020-07-31	173
1155	141	2020-07-24	2020-07-31	174
70	49	2020-07-24	2020-07-31	175
174	102	2020-07-24	2020-07-31	176
244	48	2020-07-24	2020-07-31	177
691	145	2020-07-24	2020-07-31	178
162	70	2020-07-24	2020-07-31	179
833	48	2020-07-24	2020-07-31	180
57	5	2020-07-24	2020-07-31	181
709	320	2020-07-24	2020-07-31	182
111	71	2020-07-24	2020-07-31	183
52	20	2020-07-24	2020-07-31	184
212	52	2020-07-24	2020-07-31	185
140	33	2020-07-24	2020-07-31	186
22	18	2020-07-24	2020-07-31	187
832	48	2020-07-24	2020-07-31	188
245	85	2020-07-24	2020-07-31	189
713	323	2020-07-24	2020-07-31	190
182	104	2020-07-24	2020-07-31	191
40	30	2020-07-24	2020-07-31	192
262	148	2020-07-24	2020-07-31	193
215	110	2020-07-24	2020-07-31	194
1156	364	2020-07-24	2020-07-31	195
1157	396	2020-07-24	2020-07-31	196
178	98	2020-07-24	2020-07-31	197
101	67	2020-07-24	2020-07-31	198
166	97	2020-07-24	2020-07-31	199
711	321	2020-07-24	2020-07-31	200
\.


--
-- PostgreSQL database dump complete
--

