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
    release_date date,
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
    week_start_date integer,
    week_end_date integer,
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

COPY public.songs (song_id, artist_id, song_name, url, release_date, danceability, energy, speechiness, liveliness, tempo, duration, valance) FROM stdin;
1	1	Blinding Lights	https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b	2020-03-20	0.514	0.73	0.0598	0.0897	171.005	200040	0.334
2	2	Toosie Slide	https://open.spotify.com/track/127QTOFJsJQp5LbJbu3A1y	2020-04-03	0.834	0.454	0.201	0.114	81.618	247059	0.837
3	3	Roses - Imanbek Remix	https://open.spotify.com/track/24Yi9hE78yPEbZ4kxyoXAI	2020-11-20	0.769	0.719	0.0474	0.359	121.955	176867	0.863
4	4	Don't Start Now	https://open.spotify.com/track/3PfIrDoz19wz7qK7tYeu62	2019-10-31	0.793	0.793	0.083	0.0951	123.95	183290	0.679
5	5	The Box	https://open.spotify.com/track/0nbXyq5TXYPCO7pr3N8S4I	2019-12-06	0.896	0.586	0.0559	0.79	116.971	196653	0.642
6	6	death bed (coffee for your head)	https://open.spotify.com/track/7eJMfftS33KTjuF7lTsMCx	2020-02-08	0.726	0.431	0.135	0.696	144.026	173333	0.348
7	7	Dance Monkey	https://open.spotify.com/track/1rgnBhdG2JDFTbYkYRZAku	2019-10-17	0.824	0.588	0.0924	0.149	98.027	209438	0.513
8	8	Blueberry Faygo	https://open.spotify.com/track/22LAwLoDA5b4AaGSkg6bKW	2020-02-07	0.774	0.554	0.0383	0.132	99.034	162547	0.349
9	9	Say So	https://open.spotify.com/track/3Dv1eDb0MEgF93GpLXlucZ	2019-11-07	0.787	0.673	0.159	0.0904	110.962	237893	0.779
10	10	Intentions (feat. Quavo)	https://open.spotify.com/track/4umIPjkehX1r7uhmGvXiSV	2020-02-14	0.806	0.546	0.0575	0.102	147.986	212867	0.874
11	4	Break My Heart	https://open.spotify.com/track/017PF4Q3l4DBUiWoXk4OWT	2020-03-27	0.73	0.729	0.0884	0.349	113.011	221820	0.467
12	11	Falling	https://open.spotify.com/track/2rRJrJEo19S2J82BDsQ3F7	2019-12-13	0.567	0.267	0.0299	0.089	110.011	240133	0.0592
13	12	Sunday Best	https://open.spotify.com/track/1Cv1YLb4q0RzL6pybtaMLo	2019-01-06	0.878	0.525	0.0578	0.0714	112.022	158571	0.694
14	13	Safaera	https://open.spotify.com/track/2DEZmgHKAvm41k4J3R2E9Y	2020-02-29	0.607	0.829	0.379	0.107	96.172	295177	0.685
15	14	Supalonely	https://open.spotify.com/track/4nK5YrxbMGZstTLbvj6Gxw	2019-11-15	0.863	0.631	0.0534	0.123	128.977	223480	0.817
16	4	Physical	https://open.spotify.com/track/3AzjcOeAmA57TIOr9zF1ZW	2020-03-27	0.647	0.844	0.0457	0.102	146.967	193829	0.746
17	1	In Your Eyes	https://open.spotify.com/track/7szuecWAPwGoV1e5vGu8tl	2020-03-20	0.667	0.719	0.0346	0.0736	100.021	237520	0.717
18	13	Yo Perreo Sola	https://open.spotify.com/track/0SqqAgdovOE24BzxIClpjw	2020-02-29	0.86	0.758	0.0695	0.344	97.014	172127	0.453
19	15	ROXANNE	https://open.spotify.com/track/696DnlkuDOXcMAnKlTgXXK	2019-10-10	0.621	0.601	0.148	0.46	116.735	163636	0.457
20	16	Tusa	https://open.spotify.com/track/7k4t7uLgtOxPwTpFmtJNTY	2019-11-07	0.803	0.715	0.298	0.0574	101.085	200960	0.574
21	17	Someone You Loved	https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf	2019-05-17	0.501	0.405	0.0319	0.105	109.891	182161	0.446
22	18	Savage	https://open.spotify.com/track/55CHeLEfn5iJ0IIkgaa4si	2020-03-06	0.843	0.741	0.334	0.096	168.983	155497	0.68
23	19	Circles	https://open.spotify.com/track/21jGcNKet2qwijlDFuPiPb	2019-09-06	0.695	0.762	0.0395	0.0863	120.042	215280	0.553
24	9	Boss Bitch	https://open.spotify.com/track/78qd8dvwea0Gosb6Fe6j3k	2020-01-23	0.707	0.955	0.222	0.202	125.989	134240	0.575
25	20	Rojo	https://open.spotify.com/track/380HmhwTE2NJgawn1NwkXi	2020-08-09	0.652	0.595	0.117	0.0836	172.277	151147	0.421
26	21	Adore You	https://open.spotify.com/track/3jjujdWJ72nww5eGnfs2E7	2019-12-13	0.676	0.771	0.0483	0.102	99.048	207133	0.569
27	22	Memories	https://open.spotify.com/track/2b8fOow8UzyDFAE27YhOZM	2019-06-11	0.775	0.327	0.0557	0.0821	91.05	189486	0.595
28	23	BELIEVE IT	https://open.spotify.com/track/4HDCLYli2SUdkq9OjmvhSD	2020-03-27	0.43	0.7	0.264	0.216	158.373	183219	0.731
29	24	Life Is Good (feat. Drake)	https://open.spotify.com/track/5yY9lUy8nbvjM1Uyo1Uqoc	2020-01-10	0.676	0.609	0.481	0.152	142.037	237735	0.508
30	25	WHATS POPPIN	https://open.spotify.com/track/1jaTQ3nqY3oAAYyCTbIvnM	2020-06-24	0.904	0.723	0.26	0.185	145.013	227478	0.835
31	26	Godzilla (feat. Juice WRLD)	https://open.spotify.com/track/7FIWs0pqAYbP91WWM0vlTQ	2020-01-17	0.808	0.745	0.342	0.292	165.995	210800	0.829
32	27	FIND MY WAY	https://open.spotify.com/track/1lGHa2pwYzxQHFBUynhLtO	2020-04-17	0.836	0.624	0.184	0.138	103.0	139890	0.7
33	28	bad guy	https://open.spotify.com/track/2Fxmhks0bxGSBdJ92vM42m	2019-04-29	0.701	0.425	0.375	0.1	135.128	194088	0.562
34	28	everything i wanted	https://open.spotify.com/track/3ZCTVFBt2Brf31RLEnCkWJ	2019-11-10	0.704	0.225	0.0994	0.106	120.006	245426	0.243
35	13	La Difícil	https://open.spotify.com/track/6NfrH0ANGmgBXyxgV2PeXt	2020-02-29	0.685	0.848	0.0858	0.0783	179.87	163084	0.761
36	17	Before You Go	https://open.spotify.com/track/2gMXnyrvIjhVBUZwvLZDMP	2019-11-22	0.459	0.575	0.0573	0.0885	111.881	215107	0.183
37	29	Señorita	https://open.spotify.com/track/6v3KW9xbzN5yKLt9YKDYA2	2019-06-21	0.759	0.54	0.0287	0.0945	116.947	190960	0.75
38	13	Si Veo a Tu Mamá	https://open.spotify.com/track/41wtwzCZkXwpnakmwJ239F	2020-02-29	0.9	0.603	0.0646	0.134	129.928	170972	0.824
39	13	Ignorantes	https://open.spotify.com/track/38RIEav39FGi86jppxO0du	2020-02-14	0.85	0.536	0.0599	0.0996	96.029	210607	0.505
40	30	Skechers	https://open.spotify.com/track/2alc8VZAzDgdAsL2QMk3hu	2020-01-12	0.903	0.327	0.0877	0.108	100.008	106000	0.274
41	1	After Hours	https://open.spotify.com/track/2p8IUWQDrpjuFltbdgLOag	2020-03-20	0.664	0.572	0.0305	0.121	108.959	361027	0.143
42	31	Turks (feat. Travis Scott)	https://open.spotify.com/track/0lSZh5W0wDeurkGzLYY6hf	2020-03-27	0.893	0.618	0.112	0.542	119.099	161377	0.389
43	10	Yummy	https://open.spotify.com/track/16wAOAZ2OkqoIDN7TpChjR	2020-01-03	0.687	0.514	0.0897	0.116	145.921	210427	0.494
44	20	Amarillo	https://open.spotify.com/track/6zEgnpM0qYmHLDnh8WPejL	2020-03-19	0.641	0.857	0.301	0.0695	122.728	157733	0.961
45	32	Tattoo	https://open.spotify.com/track/7na7Bk98usp84FaOJFPv3d	2020-07-09	0.848	0.637	0.156	0.0521	96.988	222680	0.698
46	33	Like It Is	https://open.spotify.com/track/3frUvGrmGcay91lvFbOgsN	2020-03-27	0.794	0.728	0.114	0.227	105.024	183067	0.36
47	34	If the World Was Ending (feat. Julia Michaels)	https://open.spotify.com/track/2kJwzbxV2ppxnQoYw4GLBZ	2020-10-17	\N	\N	\N	\N	\N	\N	\N
48	35	Ride It	https://open.spotify.com/track/2tnVG71enUj33Ic2nFN6kZ	2019-07-26	0.88	0.751	0.0874	0.106	117.948	157606	0.884
49	36	Sigues Con El	https://open.spotify.com/track/7sQKy5vlPQllr0k9IjYJv3	2019-12-13	0.883	0.668	0.113	0.0734	87.972	226533	0.676
50	5	High Fashion (feat. Mustard)	https://open.spotify.com/track/07KXEDMj78x68D884wgVEm	2019-12-06	0.831	0.499	0.114	0.3	97.956	220487	0.511
51	28	lovely (with Khalid)	https://open.spotify.com/track/0u2P5u6lvoDfwTYjAADbn4	2018-04-19	0.351	0.296	0.0333	0.095	115.284	200186	0.12
52	20	Morado	https://open.spotify.com/track/35KmOEIUqAGn02t7n4qaIr	2020-01-09	0.881	0.696	0.0797	0.0927	97.002	200667	0.781
53	37	Lose Control	https://open.spotify.com/track/7CHi4DtfK4heMlQaudCuHK	2019-10-11	0.598	0.526	0.0415	0.14	123.935	168387	0.529
54	19	Sunflower - Spider-Man: Into the Spider-Verse	https://open.spotify.com/track/0RiRZpuVRbi7oqRdSMwhQY	2018-12-14	0.76	0.479	0.0466	0.0703	89.911	158040	0.913
55	38	You should be sad	https://open.spotify.com/track/7lidXGPXPYLNThITAOTlkK	2020-01-17	0.591	0.585	0.0277	0.109	110.94	205473	0.324
56	39	RITMO (Bad Boys For Life)	https://open.spotify.com/track/6cy3ki60hLwimwIje7tALf	2019-10-12	0.721	0.716	0.0657	0.237	104.994	221714	0.667
57	5	Walk Em Down (feat. Roddy Ricch)	https://open.spotify.com/track/4cSSL3YafYjM3yjgFO1vJg	2020-03-19	0.867	0.744	0.227	0.0713	84.005	173288	0.645
58	40	hot girl bummer	https://open.spotify.com/track/7aiClxsDWFRQ0Kzk5KI5ku	2020-08-21	0.782	0.559	0.0767	0.385	129.992	188344	0.685
59	13	Vete	https://open.spotify.com/track/2n7ohqg1s68ToAHh4u9mcW	2019-11-21	0.886	0.672	0.188	0.101	91.976	192024	0.526
60	41	My Oh My (feat. DaBaby)	https://open.spotify.com/track/3yOlyBJuViE2YSGn3nVE1K	2019-12-06	0.724	0.491	0.0296	0.0887	105.046	170746	0.383
61	42	CITY OF ANGELS	https://open.spotify.com/track/6ap9lSRJ0iLriGLqoJ44cq	2019-11-22	0.686	0.541	0.0493	0.0675	120.082	112493	0.724
62	43	Breaking Me	https://open.spotify.com/track/3H7ihDc1dqLriiWXwsc2po	2019-12-19	0.789	0.72	0.218	0.129	122.031	166794	0.664
63	44	Diosa	https://open.spotify.com/track/3JHpk0DOTOzyh0777JFAky	2020-01-24	0.801	0.745	0.063	0.153	104.965	214013	0.245
64	45	I Don't Care (with Justin Bieber)	https://open.spotify.com/track/0hVXuCcriWRGvwMV1r5Yn9	2019-05-10	0.798	0.675	0.0442	0.0894	101.956	219947	0.842
65	13	La Santa	https://open.spotify.com/track/69vlMrzHwATKzupwNcUPyK	2020-02-29	0.744	0.868	0.047	0.0822	93.037	206420	0.586
66	46	Moral of the Story	https://open.spotify.com/track/2nC3QhMI9reBIOWutbU3Tj	2019-02-14	0.572	0.406	0.0427	0.102	119.812	201084	0.265
67	1	Heartless	https://open.spotify.com/track/6bnF93Rx87YqUBLSgjiMU8	2020-03-20	0.537	0.746	0.15	0.156	170.062	198267	0.252
68	47	ily (i love you baby) (feat. Emilee)	https://open.spotify.com/track/62aP9fBQKYKxi7PDXwcUAS	2019-11-26	0.674	0.774	0.0892	0.393	112.05	176547	0.33
69	48	Lucid Dreams	https://open.spotify.com/track/285pBltuF7vW8TeWk8hdRR	2018-12-10	0.511	0.566	0.2	0.34	83.903	239836	0.218
70	49	10,000 Hours (with Justin Bieber)	https://open.spotify.com/track/2wrJq5XKLnmhRXHIAf9xBa	2019-10-04	0.654	0.63	0.0259	0.111	89.991	167693	0.43
71	9	Like That (feat. Gucci Mane)	https://open.spotify.com/track/4EivmOT13NMpNSfTKn9p4s	2019-11-07	0.879	0.498	0.18	0.0967	106.044	163173	0.405
72	50	P2	https://open.spotify.com/track/3kW4z2pIj5VY5fLjBrMRL5	2020-03-06	0.775	0.72	0.193	0.114	155.086	234627	0.49
73	51	Salt	https://open.spotify.com/track/7vgv8KZBSo0TPzyIWG9yzV	2019-12-12	0.693	0.835	0.0624	0.073	128.052	180283	0.744
74	28	when the party's over	https://open.spotify.com/track/43zdsphuZLzwA9k4DJhU0I	2018-10-16	0.484	0.103	0.0627	0.0895	124.011	199931	0.194
75	45	Beautiful People (feat. Khalid)	https://open.spotify.com/track/70eFcWOvlMObDhURTqT4Fv	2019-06-28	0.64	0.648	0.187	0.0802	92.977	197867	0.548
76	52	Stupid Love	https://open.spotify.com/track/2kJu14V7hbZw3I4K8L8SXb	2020-02-28	0.68	0.825	0.0702	0.27	117.987	193533	0.784
77	53	Know Your Worth	https://open.spotify.com/track/0TrPqhAMoaKUFLR7iYDokf	2020-02-04	0.79	0.694	0.0708	0.281	103.007	181436	0.508
78	54	Suicidal (Remix) [feat. Juice WRLD]	https://open.spotify.com/track/4S2uhQE8L9V6p7rj7SiauJ	2020-03-13	0.655	0.441	0.0629	0.099	139.957	225857	0.273
79	55	Hola - Remix	https://open.spotify.com/track/5stPVcRqb4qixbafP9e8lt	2019-11-01	0.654	0.672	0.311	0.0781	181.857	249520	0.343
80	33	I'll Wait	https://open.spotify.com/track/6Q3K9gVUZRMZqZKrXovbM2	2020-04-03	0.611	0.651	0.0589	0.105	122.983	215361	0.351
81	52	Shallow	https://open.spotify.com/track/2VxeLyX666F8uXCJ0dZF8B	2018-10-05	0.572	0.385	0.0308	0.231	95.799	215733	0.323
82	56	HIGHEST IN THE ROOM	https://open.spotify.com/track/3eekarcy7kvN4yt5ZFzltW	2019-10-04	0.598	0.427	0.0317	0.21	76.469	175721	0.0605
83	57	Ballin' (with Roddy Ricch)	https://open.spotify.com/track/3QzAOrNlsabgbMwlZt7TAY	2019-06-28	0.809	0.545	0.0735	0.151	97.008	180435	0.244
84	58	In Your Eyes (feat. Alida)	https://open.spotify.com/track/61ZM92T2zaXIVsqncThQzC	2020-01-10	0.57	0.672	0.0716	0.0768	120.018	208222	0.461
85	28	No Time To Die	https://open.spotify.com/track/73SpzrcaHk0RQPFP73vqVR	2020-02-13	0.38	0.219	0.0358	0.0827	73.537	242265	0.0517
86	50	That Way - Bonus Track	https://open.spotify.com/track/2ajzBr7vwHTEBeqDzcsNRC	2020-03-06	0.712	0.598	0.0388	0.154	130.007	212354	0.504
87	59	Lalala	https://open.spotify.com/track/51Fjme0JiitpyXKuyQiCDo	2019-06-28	0.843	0.39	0.0846	0.137	129.972	160627	0.495
88	10	Forever (feat. Post Malone & Clever)	https://open.spotify.com/track/2ZlCGeK30BLRNSPC832pNZ	2020-02-14	0.825	0.483	0.08	0.204	139.98	219933	0.892
89	60	What A Man Gotta Do	https://open.spotify.com/track/4wNIkl5XGiAACjFBlDWuSd	2020-01-17	0.852	0.698	0.0629	0.0773	113.039	180645	0.324
90	61	What If I Told You That I Love You	https://open.spotify.com/track/3cqPu20DGTGUoZtbJH2Dmi	2020-01-23	0.596	0.366	0.115	0.0554	84.394	193668	0.229
91	61	It's You	https://open.spotify.com/track/5DqdesEfbRyOlSS3Tf6c29	2019-11-08	0.732	0.463	0.0287	0.194	95.971	212607	0.397
92	1	Save Your Tears	https://open.spotify.com/track/5QO79kh1waicV47BqGRL3g	2020-11-24	0.65	0.825	0.0325	0.0936	118.091	191014	0.593
93	62	Believer	https://open.spotify.com/track/0pqnGHJpmpxLKifKRmU6WP	2017-06-23	0.776	0.78	0.128	0.081	124.949	204347	0.666
94	19	rockstar (feat. 21 Savage)	https://open.spotify.com/track/0e7ipj03S05BNilyu5bRzt	2018-04-27	0.585	0.52	0.0712	0.131	159.801	218147	0.129
95	63	7 rings	https://open.spotify.com/track/6ocbgoVGwYJhOv1GgI9NsF	2019-02-08	0.778	0.317	0.334	0.0881	140.048	178627	0.327
96	50	Myron	https://open.spotify.com/track/56uXDJRCuoS7abX3SkzHKQ	2020-03-13	0.771	0.654	0.298	0.214	155.047	224955	0.573
97	64	Lose You To Love Me	https://open.spotify.com/track/4l0Mvzj72xxOpRrp6h8nHi	2020-01-10	0.488	0.343	0.0436	0.21	102.819	206459	0.0978
98	65	Selfish	https://open.spotify.com/track/4PV0uE5pZSh44E3NqNNDEH	2020-02-14	0.375	0.461	0.0279	0.386	75.217	223270	0.233
99	21	Watermelon Sugar	https://open.spotify.com/track/6UelLqGlWMcVH1E5c4H7lY	2019-12-13	0.548	0.816	0.0465	0.335	95.39	174000	0.557
100	66	Keii	https://open.spotify.com/track/5eEQCfq7MXQr6aHLNRUZLs	2020-02-07	0.708	0.797	0.0391	0.096	88.015	210000	0.51
101	67	Get You The Moon (feat. Snøw)	https://open.spotify.com/track/4ZLzoOkj0MPWrTLvooIuaa	2018-10-08	0.498	0.235	0.188	0.144	118.917	179080	0.0895
102	27	BOP	https://open.spotify.com/track/6Ozh9Ok6h4Oi1wUSLtBseN	2019-09-27	0.769	0.787	0.367	0.129	126.77	159715	0.836
103	68	Happier	https://open.spotify.com/track/2dpaYNEQHiRxtZbfNsse99	2018-08-17	0.687	0.792	0.0452	0.167	100.015	214290	0.671
104	69	Ransom	https://open.spotify.com/track/1lOe9qE0vR9zwWQAOk6CoO	2019-08-30	0.745	0.642	0.287	0.0658	179.974	131240	0.226
105	7	Never Seen the Rain	https://open.spotify.com/track/2grAr8pWMuLWn8ZYEE9wDV	2019-07-16	0.742	0.464	0.0318	0.284	92.107	200742	0.281
106	66	China	https://open.spotify.com/track/2ksOAxtIxY8yElEWw8RhgK	2019-07-19	0.786	0.808	0.0882	0.0822	105.027	301714	0.609
107	70	Jocelyn Flores	https://open.spotify.com/track/7m9OqQk4RVRkw9JJdeAw96	2017-08-25	0.872	0.391	0.242	0.297	134.021	119133	0.437
108	48	Bandit (with YoungBoy Never Broke Again)	https://open.spotify.com/track/6Gg1gjgKi2AK4e0qzsR7sd	2019-10-04	0.474	0.631	0.343	0.132	180.051	189323	0.425
109	70	SAD!	https://open.spotify.com/track/3ee8Jmje8o58CHK66QrVC2	2018-03-16	0.74	0.613	0.145	0.123	75.023	166606	0.473
110	32	Elegí (feat. Dímelo Flow)	https://open.spotify.com/track/50ZC4PM7hywH27RcCfViau	2020-03-26	0.824	0.631	0.0809	0.0531	171.965	197721	0.678
111	71	OUT WEST (feat. Young Thug)	https://open.spotify.com/track/6gi6y1xwmVszDWkUqab1qw	2019-12-27	0.802	0.591	0.225	0.196	139.864	157712	0.309
112	72	Oprah’s Bank Account (Lil Yachty & DaBaby feat. Drake)	https://open.spotify.com/track/7wsmIIm0xWmtP7TmACXkJn	2020-03-09	0.836	0.617	0.0534	0.319	138.066	206702	0.866
113	54	Suicidal	https://open.spotify.com/track/1iSqfoUFnQwV0QW1EfUit8	2020-03-13	0.655	0.441	0.0629	0.099	139.957	225857	0.273
114	19	Goodbyes (Feat. Young Thug)	https://open.spotify.com/track/6vBdBCoOhKHiYDDOcorfNo	2019-09-06	0.548	0.653	0.081	0.103	150.068	174853	0.163
115	73	Bohemian Rhapsody - Remastered 2011	https://open.spotify.com/track/4u7EnebtmKWzUH433cf5Qv	1975-11-21	0.392	0.402	0.0536	0.243	143.883	354320	0.228
116	74	Favorito	https://open.spotify.com/track/0Snbzbd74RLfL0i4nn1vU5	2020-03-26	0.611	0.851	0.0598	0.232	178.032	211613	0.823
117	17	Bruises	https://open.spotify.com/track/4Of7rzpRpV1mWRbhp5rAqG	2019-05-17	0.736	0.308	0.0677	0.186	111.202	220492	0.361
118	38	Without Me	https://open.spotify.com/track/6FZDfxM3a3UCqtzo5pxSLZ	2018-10-04	0.752	0.488	0.0705	0.0936	136.041	201661	0.533
119	75	Old Town Road - Remix	https://open.spotify.com/track/2YpeDb67231RjR0MgVLzsG	2019-06-21	0.878	0.619	0.102	0.113	136.041	157067	0.639
120	76	Me Gusta	https://open.spotify.com/track/5Xhqh4lwJPtMUTsdBztN1a	2020-01-13	0.775	0.696	0.0681	0.157	92.007	190570	0.775
121	20	LA CANCIÓN	https://open.spotify.com/track/0fea68AdmYNygeTGI4RC18	2019-06-28	0.754	0.646	0.317	0.108	176.089	242573	0.429
122	20	Azul	https://open.spotify.com/track/2lCkncy6bIB0LTMT7kvrD1	2020-03-19	0.843	0.836	0.0695	0.0532	94.018	205933	0.65
123	45	Shape of You	https://open.spotify.com/track/7qiZfU4dY1lWllzX7mPBI3	2017-03-03	0.825	0.652	0.0802	0.0931	95.977	233713	0.931
124	77	Maniac	https://open.spotify.com/track/6KfoDhO4XUWSbnyKjNp9c4	2020-03-20	0.628	0.639	0.0435	0.354	108.045	185773	0.493
125	78	Muévelo	https://open.spotify.com/track/4VgYtXCVJ7IbWAZ5ryfvEQ	2020-01-08	0.594	0.808	0.0489	0.565	188.09	194892	0.919
126	79	I Love Me	https://open.spotify.com/track/2IHLaN6wwYKQ3S24NsQqpA	2020-03-06	0.664	0.561	0.0495	0.0764	150.093	203672	0.713
127	16	Follow	https://open.spotify.com/track/2w1rq80FIrbxeJy9WYURxw	2020-04-01	0.735	0.787	0.16	0.0721	168.997	203093	0.455
128	80	Say You Won't Let Go	https://open.spotify.com/track/5uCax9HTNlzGybIStD3vDh	2016-10-28	0.358	0.557	0.059	0.0902	85.043	211467	0.494
129	81	Make You Mine	https://open.spotify.com/track/5iFwAOB2TFkPJk8sMlxP8g	2019-08-09	0.606	0.799	0.0261	0.15	103.014	232907	0.638
130	67	Can We Kiss Forever?	https://open.spotify.com/track/58wyJLv6yH1La9NIZPl3ne	2018-08-31	0.522	0.128	0.0357	0.0941	109.986	187932	0.124
131	2	Money In The Grave (Drake ft. Rick Ross)	https://open.spotify.com/track/5ry2OE6R2zPQFDO85XkgRb	2019-06-15	0.831	0.502	0.046	0.122	100.541	205427	0.101
132	32	Fantasias	https://open.spotify.com/track/6mAN61JH0dzyZpWslS11jy	2019-08-29	0.879	0.703	0.0701	0.0569	94.004	199711	0.788
133	82	SUGAR	https://open.spotify.com/track/6U0FIYXCQ3TGrk4tFpLrEA	2019-08-23	0.453	0.538	0.0638	0.19	122.973	204533	0.516
134	83	PTSD	https://open.spotify.com/track/3jT2LKH0RSbQ8jIUNFzXm5	2020-02-28	0.883	0.808	0.182	0.207	119.01	232065	0.806
135	20	Blanco	https://open.spotify.com/track/5pXy29xzxR3aTB0SYRI590	2019-11-15	0.87	0.706	0.126	0.0872	100.013	145800	0.593
136	13	A Tu Merced	https://open.spotify.com/track/4r9jkMEnArtWGH2rL2FZl0	2020-02-29	0.86	0.791	0.0568	0.106	92.023	175918	0.887
137	51	Kings & Queens	https://open.spotify.com/track/76nqCfJOcFFWBJN32PAksn	2020-09-18	0.637	0.69	0.0405	0.124	129.857	162399	0.457
138	45	Perfect	https://open.spotify.com/track/0tgVpDi06FyKpA1z0VMD4v	2017-03-03	0.599	0.448	0.0232	0.106	95.05	263400	0.168
139	60	Sucker	https://open.spotify.com/track/22vgEDb5hykfaTwLuskFGD	2019-06-07	0.842	0.734	0.0588	0.106	137.958	181027	0.952
140	33	Higher Love	https://open.spotify.com/track/6oJ6le65B3SEqPwMRNXWjY	2019-06-28	0.693	0.678	0.0324	0.101	103.952	228267	0.404
141	84	No Me Conoce - Remix	https://open.spotify.com/track/4R8BJggjosTswLxtkw8V7P	2019-05-24	0.806	0.786	0.0741	0.0935	91.973	309120	0.58
142	4	Levitating	https://open.spotify.com/track/39LLxExYz6ewLAcYrzQQyP	2020-10-01	0.702	0.825	0.0601	0.0674	102.977	203064	0.915
143	85	Go Stupid (feat. NLE Choppa & Mike WiLL Made-It)	https://open.spotify.com/track/74fV8TuLZKVzSIOOGu8wwI	2020-05-15	0.922	0.813	0.251	0.0539	141.087	165726	0.724
144	86	No Idea	https://open.spotify.com/track/7AzlLxHn24DxjgQX73F9fU	2020-03-13	0.652	0.631	0.0893	0.165	127.998	154424	0.35
145	19	Wow.	https://open.spotify.com/track/7xQAfvXzm3AkraOtGPWIZg	2019-09-06	0.829	0.539	0.208	0.103	99.96	149547	0.388
146	87	July	https://open.spotify.com/track/5a6pdCHlWS2ekOOQ70QnAr	2020-05-15	0.708	0.186	0.042	0.0779	72.541	156106	0.322
147	13	Callaita	https://open.spotify.com/track/2TH65lNHgvLxCKXM3apjxI	2019-05-31	0.61	0.624	0.309	0.243	176.169	250534	0.244
148	88	WANNABE	https://open.spotify.com/track/6tCssnvTUREcperDOUTqvA	2020-03-09	0.809	0.911	0.0617	0.181	122.035	191242	0.64
149	89	To Die For	https://open.spotify.com/track/2ZTYlnhhV1UAReg7wIGolx	2020-02-14	0.483	0.361	0.0738	0.098	171.649	193795	0.307
150	48	Robbery	https://open.spotify.com/track/6Hj9jySrnFppAI0sEMCZpJ	2019-03-08	0.685	0.692	0.0457	0.153	159.966	240051	0.578
151	90	PORFA	https://open.spotify.com/track/3iQOfefMGDVDwo8dZoco8T	2020-06-26	0.843	0.549	0.164	0.155	83.982	233000	0.542
152	91	Still Be Friends (feat. Tory Lanez & Tyga)	https://open.spotify.com/track/0JjM9bKm4wrwohMslcm892	2020-02-07	0.803	0.759	0.0494	0.0921	104.0	213308	0.284
153	51	Sweet but Psycho	https://open.spotify.com/track/25sgk305KZfyuqVBQIahim	2020-09-18	0.72	0.706	0.0473	0.166	133.002	187436	0.62
154	28	ocean eyes	https://open.spotify.com/track/2uIX8YMNjGMD7441kqyyNU	2016-11-18	0.358	0.372	0.0464	0.0877	144.833	200387	0.16
155	92	Dior	https://open.spotify.com/track/79s5XnCN4TJKTVMSmOx8Ep	2019-07-26	0.548	0.805	0.351	0.408	142.094	216387	0.648
156	37	Piece Of Your Heart	https://open.spotify.com/track/1DFD5Fotzgn6yYXkYsKiGs	2019-02-01	0.677	0.744	0.0295	0.074	124.08	152913	0.631
157	93	Jangueo	https://open.spotify.com/track/5m3jpKkgkfoMcym1qjToFg	2019-11-08	0.861	0.678	0.0536	0.106	103.994	259600	0.723
158	56	goosebumps	https://open.spotify.com/track/6gBFPUFcJLzWGx4lenP6h2	2016-12-13	0.841	0.593	0.0379	0.124	124.917	162803	0.808
159	94	Eastside (with Halsey & Khalid)	https://open.spotify.com/track/7FGq80cy8juXBCD2nrqdWU	2018-07-12	0.56	0.68	0.321	0.116	89.391	173800	0.319
160	89	How Do You Sleep?	https://open.spotify.com/track/6b2RcmUt1g9N9mQ3CbjX2Y	2019-07-19	0.477	0.682	0.0925	0.0763	110.567	202205	0.345
161	32	Fantasias - Remix	https://open.spotify.com/track/0A37XY67wSdGqkGjtfW6aV	2020-03-06	0.816	0.72	0.0684	0.277	94.004	267242	0.78
162	70	Moonlight	https://open.spotify.com/track/0JP9xo3adEtGSdUEISiszL	2018-03-16	0.921	0.537	0.0804	0.102	128.009	135090	0.711
163	95	Alone, Pt. II	https://open.spotify.com/track/0bMbDctzMmTyK2j74j3nF3	2019-12-27	0.67	0.668	0.0422	0.133	88.033	179053	0.608
164	96	The Take (feat. Chris Brown)	https://open.spotify.com/track/0Odu228D0yGcFySGuxU4rY	2019-11-15	0.464	0.547	0.339	0.155	67.003	221492	0.423
165	56	SICKO MODE	https://open.spotify.com/track/2xLMifQCjDGFmkHkpNLD9h	2018-08-03	0.834	0.73	0.222	0.124	155.008	312820	0.446
166	97	The Less I Know The Better	https://open.spotify.com/track/6K4t31amVTZDgR3sKmwUJJ	2015-07-17	0.64	0.74	0.0284	0.167	116.879	216320	0.785
167	4	Hallucinate	https://open.spotify.com/track/1nYeVF5vIBxMxfPoL0SIWg	2020-03-27	0.627	0.69	0.139	0.0742	122.053	208505	0.627
168	89	Dancing With A Stranger (with Normani)	https://open.spotify.com/track/6Qs4SXO9dwPj5GKvVOv8Ki	2019-01-11	0.741	0.52	0.0656	0.222	102.998	171030	0.347
169	98	Old Me	https://open.spotify.com/track/4POHzEwNTCYaIvqCUp3NnO	2020-03-27	0.722	0.62	0.0483	0.26	127.978	186786	0.474
170	99	Let Me Down Slowly	https://open.spotify.com/track/2qxmye6gAegTMjLKEBoR3d	2018-11-16	0.652	0.557	0.0318	0.124	150.073	169354	0.483
171	100	A Gente Fez Amor - Ao Vivo	https://open.spotify.com/track/3tv697PZNnaQN0Mn2zGhS5	2019-12-05	0.794	0.937	0.0336	0.962	134.012	237517	0.826
172	13	Pero Ya No	https://open.spotify.com/track/75pQqzwgCjUOSSy5CpmAjy	2020-02-29	0.882	0.612	0.118	0.182	147.982	160638	0.742
173	101	Be Alright	https://open.spotify.com/track/5qrSlOut2rNAWv3ubArkNy	2018-06-29	0.553	0.586	0.0362	0.0813	126.684	196373	0.443
174	102	All of Me	https://open.spotify.com/track/3U4isOIWM3VvDubwSI3y7a	2013-08-30	0.422	0.264	0.0322	0.132	119.93	269560	0.331
175	21	Lights Up	https://open.spotify.com/track/4jAIqgrPjKLTY9Gbez25Qb	2019-12-13	0.575	0.621	0.032	0.141	101.987	172213	0.27
176	103	3 Nights	https://open.spotify.com/track/0uI7yAKUf52Cn7y3sYyjiX	2018-10-16	0.815	0.518	0.0897	0.104	151.891	177667	0.877
177	104	Takeaway	https://open.spotify.com/track/3g0mEQx3NTanacLseoP0Gw	2019-12-06	0.528	0.511	0.0324	0.101	100.1	209880	0.351
178	98	Youngblood	https://open.spotify.com/track/2iUXsYOEPhVqEBwsqP70rE	2018-06-15	0.596	0.854	0.463	0.124	120.274	203418	0.152
179	105	Hate Me (with Juice WRLD)	https://open.spotify.com/track/6kls8cSlUyHW2BUOkDJIZE	2019-06-26	0.657	0.768	0.0507	0.144	75.025	186223	0.759
180	1	Hardest To Love	https://open.spotify.com/track/6kWxIqQDsKFYCJGbU4AjCX	2020-03-20	0.467	0.608	0.0707	0.125	80.957	211400	0.108
181	106	I Like Me Better	https://open.spotify.com/track/2P91MQbaiQOfbiz9VqhqKQ	2018-05-31	0.752	0.505	0.253	0.104	91.97	197437	0.419
182	104	Something Just Like This	https://open.spotify.com/track/6RUKPb4LETWmmr3iAEQktW	2017-04-07	0.617	0.635	0.0317	0.164	103.019	247160	0.446
183	29	If I Can't Have You	https://open.spotify.com/track/2bT1PH7Cw3J9p3t7nlXCdh	2019-05-03	0.692	0.809	0.0602	0.147	123.911	190800	0.864
184	19	Better Now	https://open.spotify.com/track/7dt6x5M1jzdTEt8oCbisTK	2018-04-27	0.68	0.578	0.04	0.135	145.038	231267	0.341
185	22	Girls Like You (feat. Cardi B) - Cardi B Version	https://open.spotify.com/track/7fa9MBXhVfQ8P8Df9OEbD8	2018-05-30	\N	\N	\N	\N	\N	\N	\N
186	2	God's Plan	https://open.spotify.com/track/6DCZcSspjsKoFjzjrWoCdn	2018-06-29	0.754	0.449	0.109	0.552	77.169	198973	0.357
187	63	thank u, next	https://open.spotify.com/track/3e9HZxeyfWwjeyPAMmWSSQ	2019-02-08	0.717	0.653	0.0658	0.101	106.966	207320	0.412
188	107	High Hopes	https://open.spotify.com/track/1rqqCSm0Qe4I9rUvWncaom	2018-06-22	0.579	0.904	0.0618	0.064	82.014	190947	0.681
189	108	Heart On Ice	https://open.spotify.com/track/6fWa5CRgy0z30OeGZyMBvD	2019-06-14	0.733	0.389	0.0738	0.141	157.878	159670	0.244
190	109	BRABA	https://open.spotify.com/track/2WlZuBDgLfT7Kc0admhFdg	2020-03-18	0.812	0.689	0.0619	0.0784	144.011	129782	0.663
191	110	Woah	https://open.spotify.com/track/02RCbjb9czvQKNGBmEmWob	2019-11-08	0.882	0.602	0.245	0.178	142.959	183011	0.43
192	70	changes	https://open.spotify.com/track/7AFASza1mXqntmGtbxXprO	2018-03-16	0.669	0.308	0.029	0.0984	64.934	121887	0.52
193	111	La Cama - Remix	https://open.spotify.com/track/2tGENA8xef0wABdHvyXwv9	2020-03-27	0.737	0.832	0.0798	0.255	173.986	330240	0.865
194	112	Good as Hell (feat. Ariana Grande)	https://open.spotify.com/track/2rjjNUYONZqC7wSd1i6OFq	2016-06-17	0.668	0.892	0.0645	0.735	95.927	159011	0.478
195	113	Astronomia	https://open.spotify.com/track/665AK0ovB11McZRwfa852G	2016-09-16	0.653	0.945	0.096	0.439	126.093	198095	0.326
196	50	XO Tour Llif3	https://open.spotify.com/track/7GX5flRQZVHRAGd6B4TmDO	2017-08-25	0.732	0.75	0.231	0.109	155.096	182707	0.401
197	114	Cradles	https://open.spotify.com/track/1y4jsQt7MjnZhiD1L6qFBC	2019-01-04	0.534	0.589	0.325	0.176	78.616	209829	0.632
198	4	Pretty Please	https://open.spotify.com/track/6DXZiYUbrYgrVIhfX3U9Z2	2020-03-27	0.906	0.474	0.194	0.286	106.976	194607	0.656
199	115	I.F.L.Y.	https://open.spotify.com/track/4a6q8CR2hzLk2plDkSxkfD	2019-08-09	0.812	0.519	0.0385	0.13	104.954	165714	0.554
200	27	ROCKSTAR (feat. Roddy Ricch)	https://open.spotify.com/track/7ytR5pFWmSjzHJIeQkgog4	2020-04-17	0.746	0.69	0.164	0.101	89.977	181733	0.497
201	52	Rain On Me (with Ariana Grande)	https://open.spotify.com/track/7ju97lgwC2rKQ6wwsf9no9	2020-05-22	0.672	0.855	0.0397	0.323	123.056	182200	0.646
202	116	Party Girl	https://open.spotify.com/track/5RqR4ZCCKJDcBLIn4sih9l	2020-04-21	0.728	0.431	0.0622	0.0996	130.022	147800	0.629
203	117	THE SCOTTS	https://open.spotify.com/track/39Yp9wwQiSRIDOvrVg7mbk	2020-04-24	0.716	0.537	0.0514	0.157	129.979	165978	0.28
204	63	Stuck with U (with Justin Bieber)	https://open.spotify.com/track/4HBZA5flZLE435QTztThqH	2020-05-08	0.597	0.45	0.0418	0.382	178.765	228482	0.537
205	118	GOOBA	https://open.spotify.com/track/4NhDYoQTYCdWHTvlbGVgwo	2020-05-08	0.611	0.688	0.341	0.251	178.462	132303	0.393
206	118	TROLLZ (with Nicki Minaj)	https://open.spotify.com/track/3dVvWnj4D8JGkKvo6Hucso	2020-06-12	0.744	0.422	0.294	0.11	180.006	202667	0.493
207	119	Savage Remix (feat. Beyoncé)	https://open.spotify.com/track/5v4GgrXPMghOnBBLmveLac	2020-04-29	0.822	0.743	0.28	0.127	84.459	242001	0.636
208	39	MAMACITA	https://open.spotify.com/track/2g1ukx0VolwI31t8z5vprw	2020-04-10	0.894	0.635	0.0473	0.0823	105.013	249143	0.428
209	120	TKN (feat. Travis Scott)	https://open.spotify.com/track/4w47S36wQGBhGg073q3nt7	2020-05-28	0.776	0.509	0.467	0.115	94.634	129371	0.485
210	66	Hasta Que Dios Diga	https://open.spotify.com/track/06s3QtMJVXw1AJX3UfvZG1	2020-05-29	0.691	0.765	0.111	0.203	174.021	246000	0.855
211	121	Play Date	https://open.spotify.com/track/4DpNNXFMMxQEKl7r0ykkWA	2015-08-14	0.68	0.729	0.0475	0.224	123.97	179867	0.446
212	52	Sour Candy (with BLACKPINK)	https://open.spotify.com/track/1IWNylpZ477gIVUDpJL66u	2020-05-28	0.752	0.87	0.0623	0.489	120.006	157707	0.784
213	33	Lose Somebody	https://open.spotify.com/track/1sgDyuLooyvEML4oHspNza	2020-05-29	0.58	0.586	0.0357	0.0755	147.988	199549	0.507
214	68	Be Kind (with Halsey)	https://open.spotify.com/track/3Z8FwOEN59mRMxDCtb8N0A	2020-05-01	0.63	0.633	0.0457	0.0541	93.995	172762	0.452
215	110	The Bigger Picture	https://open.spotify.com/track/44gRhRi2OhEf7moAUj6MD1	2020-06-12	0.59	0.618	0.334	0.244	96.459	252729	0.153
216	122	Savage Love (Laxed - Siren Beat)	https://open.spotify.com/track/1xQ6trAsedVPCdbtDAmk0c	2020-06-11	0.767	0.481	0.0803	0.269	150.076	171375	0.761
217	123	Relación	https://open.spotify.com/track/3ZG8N7aWw2meb6UrI5ZmnZ	2020-09-04	0.793	0.771	0.0959	0.284	171.943	247308	0.835
218	86	After Party	https://open.spotify.com/track/527k23H0A4Q0UJN3vGs0Da	2020-03-13	0.629	0.692	0.0376	0.603	162.948	167916	0.453
219	124	La Jeepeta - Remix	https://open.spotify.com/track/1mohfLaTJtB2RplHLQVM70	2020-04-24	0.815	0.715	0.207	0.091	176.007	345241	0.786
220	125	Tommy Lee (feat. Post Malone)	https://open.spotify.com/track/5QZKcQDp0tCcvMdyqEciBV	2020-06-12	0.457	0.621	0.138	0.0944	85.359	224638	0.634
221	126	GO (feat. Juice WRLD)	https://open.spotify.com/track/2t7D3y0jvYjR8IP9Bosyew	2020-07-24	0.487	0.74	0.0944	0.612	73.779	181688	0.522
222	2	Chicago Freestyle (feat. Giveon)	https://open.spotify.com/track/4wVOKKEHUJxHCFFNUWDn0B	2020-05-01	0.735	0.449	0.347	0.113	122.947	220488	0.0397
223	35	Secrets	https://open.spotify.com/track/66W1rVTnEv86dIkFhoiElg	2020-04-24	0.848	0.768	0.0373	0.195	118.961	176767	0.777
224	127	Deep End Freestyle	https://open.spotify.com/track/2AlYncTpVHKwHb55F9lF6O	2020-06-05	0.868	0.479	0.445	0.102	133.928	115200	0.776
225	9	Say So (feat. Nicki Minaj)	https://open.spotify.com/track/11VApNQCWLJdzxWrlmwzUa	2020-05-01	0.856	0.641	0.204	0.427	111.004	206221	0.745
226	27	ROCKSTAR (feat. Roddy Ricch) - BLM REMIX	https://open.spotify.com/track/4Aykm3xrOFSHrAnv80KUhh	2020-06-12	0.747	0.689	0.242	0.0884	89.901	204547	0.75
227	128	Tak Tiki Tak	https://open.spotify.com/track/6Hw21Z5CmEV78jrncFpMwz	2020-07-10	0.801	0.579	0.0813	0.172	99.994	212406	0.231
228	129	Rover (feat. DTG)	https://open.spotify.com/track/4slSrbTK1sNK4I1mDYEthf	2020-03-04	0.613	0.624	0.206	0.283	62.948	167917	0.804
229	84	CÓMO SE SIENTE - Remix	https://open.spotify.com/track/2tFwfmceQa1Y6nRPhYbEtC	2020-05-09	0.807	0.606	0.088	0.119	92.988	227520	0.304
230	48	Righteous	https://open.spotify.com/track/0OyQns5ayNK2OVaES0Vb8t	2020-07-10	0.706	0.625	0.0314	0.129	142.948	242181	0.225
231	130	Caramelo	https://open.spotify.com/track/3gD4J3RUHy4OUuZ3qAiaiG	2020-06-11	0.728	0.806	0.0623	0.153	168.084	217547	0.698
232	131	Shotta Flow 5	https://open.spotify.com/track/1orjH4IkSH9VrWmRCToKV8	2020-06-12	0.806	0.749	0.328	0.0621	140.032	145167	0.77
233	92	Make It Rain	https://open.spotify.com/track/4TgHt7vKCimpywaiKfl0uj	2020-06-12	0.54	0.77	0.389	0.372	159.494	204000	0.565
234	132	MORE & MORE	https://open.spotify.com/track/2bAAj29XGc4h1G4oEGYCmg	2020-06-01	0.739	0.841	0.06	0.173	106.99	199653	0.562
235	133	This City	https://open.spotify.com/track/3H3r2nKWa3Yk5gt8xgmsEt	2019-12-11	0.605	0.377	0.0443	0.0808	73.877	194853	0.519
236	134	Go Crazy	https://open.spotify.com/track/1IIKrJVP1C9N7iPtG6eOsK	2020-05-08	0.755	0.578	0.145	0.25	94.148	176960	0.581
237	135	Some Say - Felix Jaehn Remix	https://open.spotify.com/track/7C1trmcQQ5n5RNy4l6ziCv	2019-09-06	\N	\N	\N	\N	\N	\N	\N
238	32	El Efecto	https://open.spotify.com/track/4SJHHpKhcuXwDsCsPqshXj	2019-03-15	0.849	0.781	0.159	0.0801	84.041	217143	0.893
239	136	Djomb - Bien ou quoi	https://open.spotify.com/track/0KBwGCY9RYD9t2zjeW4h48	2020-05-29	0.945	0.676	0.207	0.322	123.109	141893	0.631
240	137	DOLLAZ ON MY HEAD (feat. Young Thug)	https://open.spotify.com/track/3nS9a01VvXHQriLqJYwRqG	2020-05-22	0.825	0.458	0.0577	0.102	145.115	197760	0.161
241	66	Fútbol & Rumba (feat. Enrique Iglesias)	https://open.spotify.com/track/2hDe0Ls5mVqs1XJqv7sbcM	2020-05-29	0.735	0.916	0.117	0.0918	167.994	221429	0.691
242	138	Daisies	https://open.spotify.com/track/4uqh9bualXNHXXwO2wPorc	2020-05-15	0.639	0.546	0.0407	0.122	122.179	173124	0.149
243	139	PAM	https://open.spotify.com/track/0eeKDrQxjqNl5bX5VCHDcn	2020-05-01	0.889	0.863	0.0757	0.0798	112.953	201000	0.776
244	48	Tell Me U Luv Me (with Trippie Redd)	https://open.spotify.com/track/4CNcRgjGw1v9VQaTaytdnD	2020-07-10	0.66	0.76	0.0787	0.632	127.984	180129	0.394
245	85	Flex (feat. Juice WRLD)	https://open.spotify.com/track/2QqJTIlGKRLJC3onkavYEz	2020-05-15	0.752	0.673	0.153	0.133	164.009	163902	0.35
246	140	M' Manc (con Geolier & Sfera Ebbasta)	https://open.spotify.com/track/0MLu1cFYL4ikdRTdasCQT9	2020-06-11	0.703	0.704	0.0641	0.41	139.933	180000	0.725
247	19	Goodbyes (feat. Young Thug)	https://open.spotify.com/track/0t3ZvGKlmYmVsDzBJAXK8C	2019-09-06	0.548	0.653	0.081	0.103	150.068	174853	0.163
248	110	Emotionally Scarred	https://open.spotify.com/track/7ge7BHazYbVKi8qyZUX1Bm	2020-02-28	0.585	0.641	0.133	0.316	88.284	197530	0.266
249	141	Emotions 2.0	https://open.spotify.com/track/3yZCjDTxzZxx1kll1sRjGc	2020-06-12	0.788	0.491	0.109	0.107	98.543	146028	0.271
250	13	PA' ROMPERLA	https://open.spotify.com/track/5XqCz18k96K8tx6DAYM97i	2020-05-10	0.772	0.83	0.0599	0.0843	94.011	194200	0.697
251	142	IDK You Yet	https://open.spotify.com/track/47EWMOElkkbMp5m9SBkx7d	2020-06-23	0.648	0.308	0.04	0.124	76.997	184638	0.198
252	143	Banana (feat. Shaggy) - DJ FLe - Minisiren Remix	https://open.spotify.com/track/0dZpw3h6KZhcHec61qwevZ	2020-05-15	0.824	0.854	0.177	0.117	95.114	210329	0.896
253	144	Airwaves	https://open.spotify.com/track/5CqkgDH8QZjSqqI3HmYxDD	2020-05-14	0.885	0.578	0.0783	0.102	131.999	178933	0.388
254	32	El Efecto - Remix	https://open.spotify.com/track/74j34STf8L6uADnTN69ohv	2019-12-13	0.771	0.769	0.0694	0.345	167.969	289899	0.931
255	145	Na Raba Toma Tapão	https://open.spotify.com/track/0AGS6ZRgzobrazmCi6pYMe	2020-06-06	0.962	0.787	0.0554	0.176	130.003	165231	0.968
256	146	Surrender	https://open.spotify.com/track/0ecC8p17cDNlxHXkuYqeR6	2019-10-29	0.39	0.448	0.0276	0.107	144.89	183103	0.077
257	31	Turks (with Gunna & ft. Travis Scott)	https://open.spotify.com/track/7IMwEtpAiJanqF6vQteZN2	2020-05-08	0.894	0.618	0.129	0.558	119.1	161320	0.379
258	13	BYE ME FUI	https://open.spotify.com/track/0FktnzDqjClqU6iqOZVEs2	2020-05-10	0.712	0.599	0.112	0.103	179.788	178000	0.588
259	147	I'm Yours	https://open.spotify.com/track/3S0OXQeoh0w6AY8WQVckRW	2008-05-12	0.686	0.457	0.0468	0.105	150.953	242187	0.718
260	48	All Girls Are The Same	https://open.spotify.com/track/4VXIryQMWpIdGgYR4TrjT1	2018-12-10	0.671	0.529	0.307	0.0856	161.989	165820	0.203
261	104	Closer	https://open.spotify.com/track/7BKLCZ1jbUBVqRi2FVlTVw	2016-07-29	0.748	0.524	0.0338	0.111	95.01	244960	0.661
262	148	Riptide	https://open.spotify.com/track/7yq4Qj7cqayVTp3FF9CWbm	2014-09-09	0.484	0.731	0.0379	0.151	101.654	204280	0.51
263	149	Mr. Brightside	https://open.spotify.com/track/7d8GetOsjbxYnlo6Y9e5Kw	2004-06-15	0.356	0.924	0.0808	0.0953	148.017	222587	0.232
264	73	Don't Stop Me Now - Remastered 2011	https://open.spotify.com/track/5T8EDUDqKcs6OSOwEsfqG7	1978-11-10	0.563	0.865	0.16	0.77	156.271	209413	0.601
265	89	I’m Ready (with Demi Lovato)	https://open.spotify.com/track/1fipvP2zmef6vN2IwXfJhY	2020-04-16	0.501	0.674	0.0408	0.282	155.051	200838	0.152
266	56	STARGAZING	https://open.spotify.com/track/7wBJfHzpfI3032CSD7CE2m	2018-08-03	0.487	0.789	0.044	0.189	150.007	270715	0.0564
267	56	BUTTERFLY EFFECT	https://open.spotify.com/track/6xcJyGpfZbuuiequtnlKt4	2018-08-03	0.763	0.628	0.05	0.114	140.958	190557	0.193
268	150	Level of Concern	https://open.spotify.com/track/6xZ4Q2k2ompmDppyeESIY8	2020-04-09	0.754	0.583	0.0432	0.144	122.012	220051	0.77
269	141	Emotions	https://open.spotify.com/track/6lU4BQWZomCWRfKSowfezE	2020-06-12	0.788	0.491	0.109	0.107	98.543	146028	0.271
270	64	Boyfriend	https://open.spotify.com/track/4QnC1bIaMSfDQvF4XDhV5M	2020-04-09	0.811	0.512	0.17	0.0768	92.046	161188	0.346
271	151	90-60-111	https://open.spotify.com/track/3ZdDYeaZzeYnrP4crgXzPk	2020-04-23	0.8	0.628	0.285	0.391	143.979	141387	0.745
272	56	YOSEMITE	https://open.spotify.com/track/7lAK3oHbfEnvUQWosrMMpR	2018-08-03	0.785	0.554	0.0409	0.116	128.047	150043	0.144
273	152	@ MEH	https://open.spotify.com/track/5UusfWUMMLEXLMc1ViNZoe	2020-04-16	0.877	0.492	0.153	0.0678	151.042	166799	0.4
274	153	Gimme Love	https://open.spotify.com/track/2hfoyc7ve6xM4ZEiNIiU1B	2020-04-16	\N	\N	\N	\N	\N	\N	\N
275	154	Sigues Con El - Remix	https://open.spotify.com/track/4Pu0a2TuHOYtI4CCE3HEXI	2020-04-10	0.747	0.693	0.298	0.0872	175.994	189567	0.736
276	74	Por Primera Vez	https://open.spotify.com/track/0pgj4EzB1XRqgZemoMNG5D	2020-03-09	0.716	0.588	0.116	0.0847	165.896	183547	0.707
277	155	Houdini (feat. Swarmz & Tion Wayne)	https://open.spotify.com/track/3lay6f81Lhy0qp2Uvp4cNJ	2020-04-24	0.572	0.519	0.243	0.129	100.453	169355	0.704
278	50	Sasuke	https://open.spotify.com/track/0ROE31C8Wu4neZoR9stM9e	2020-04-24	0.859	0.477	0.428	0.0819	145.979	251336	0.153
279	153	SLOW DANCING IN THE DARK	https://open.spotify.com/track/0rKtyWc8bvkriBthvHKY8d	2018-10-26	0.515	0.479	0.0261	0.191	88.964	209274	0.284
280	156	If You’re Too Shy (Let Me Know) - Edit	https://open.spotify.com/track/3iEqGBZ2wcpVzhiAcwXVC6	2020-04-23	0.651	0.806	0.0311	0.0927	125.641	239877	0.386
281	96	Broke In A Minute	https://open.spotify.com/track/4xqIYGwwZTEem9U8A42SPF	2020-04-10	0.929	0.7	0.0906	0.349	120.009	132024	0.802
282	74	Tutu	https://open.spotify.com/track/1Ol5LmdNDNpFu1oNwfgkux	2019-08-09	0.731	0.832	0.0503	0.0665	146.013	178613	0.94
283	63	positions	https://open.spotify.com/track/35mvY5S1H3J2QZyna3TFe0	2020-10-30	0.737	0.802	0.0878	0.0931	144.015	172325	0.682
284	13	DÁKITI	https://open.spotify.com/track/47EiUVwUp4C9fGccaPuUCS	2020-11-27	0.731	0.573	0.0544	0.113	109.928	205090	0.145
285	42	Mood (feat. iann dior)	https://open.spotify.com/track/3tjFYV6RSFtuktYl3ZtYcq	2020-07-24	0.701	0.716	0.0361	0.324	91.007	140533	0.732
286	157	Lemonade (feat. Gunna, Don Toliver & NAV)	https://open.spotify.com/track/7hxHWCCAIIxFLCzvDgnQHX	2020-08-14	0.799	0.66	0.079	0.111	140.04	195429	0.471
287	63	34+35	https://open.spotify.com/track/6Im9k8u9iIzKMrmV7BWtlF	2020-10-30	\N	\N	\N	\N	\N	\N	\N
288	92	What You Know Bout Love	https://open.spotify.com/track/1tkg4EHVoqnhR6iFEXb60y	2020-07-03	0.709	0.548	0.353	0.133	83.995	160000	0.543
289	158	Dynamite	https://open.spotify.com/track/0t1kP63rueHleOhQkYSXFY	2020-11-20	0.746	0.765	0.0993	0.0936	114.044	199054	0.737
290	10	Lonely (with benny blanco)	https://open.spotify.com/track/4y4spB9m0Q6026KfkAvy9Q	2020-10-16	0.631	0.239	0.0398	0.116	79.859	149297	0.0927
291	159	Hawái	https://open.spotify.com/track/1yoMvmasuxZfqHEipJhRbp	2020-11-05	0.766	0.788	0.312	0.142	179.984	200482	0.609
292	160	WAP (feat. Megan Thee Stallion)	https://open.spotify.com/track/4Oun2ylbjFKMPTiaSbbCih	2020-08-07	0.935	0.454	0.375	0.0824	133.073	187541	0.357
293	10	Holy (feat. Chance The Rapper)	https://open.spotify.com/track/5u1n1kITHCxxp8twBcZxWy	2020-09-18	0.673	0.704	0.36	0.0898	86.919	212093	0.372
294	92	For The Night (feat. Lil Baby & DaBaby)	https://open.spotify.com/track/0PvFJmanyNQMseIFrU708S	2020-07-03	0.823	0.586	0.2	0.193	125.971	190476	0.347
295	63	motive (with Doja Cat)	https://open.spotify.com/track/5GkQIP5mWPi4KZLLXeuFTT	2020-10-30	0.789	0.742	0.0652	0.166	116.965	167990	0.661
296	161	you broke me first	https://open.spotify.com/track/45bE4HXI0AwGZXfZtMp8JR	2020-04-17	0.667	0.373	0.05	0.0906	124.148	169266	0.0823
297	162	Head & Heart (feat. MNEK)	https://open.spotify.com/track/6cx06DFPPHchuUAcTxznu9	2020-07-03	0.734	0.874	0.0662	0.0489	122.953	166028	0.905
298	123	Relación - Remix	https://open.spotify.com/track/35UUpTmrcFXNIVIN26ujXl	2020-09-04	0.793	0.771	0.0959	0.284	171.943	247308	0.835
299	163	Put Your Records On	https://open.spotify.com/track/6AGOKlMZWLCaEJGnaROtF9	2020-04-24	0.399	0.491	0.0538	0.11	91.066	210463	0.151
300	63	off the table (with The Weeknd)	https://open.spotify.com/track/7E1jVNoWuemqUryI4FxsVD	2020-10-30	0.411	0.522	0.0981	0.398	88.332	239949	0.382
301	2	Laugh Now Cry Later (feat. Lil Durk)	https://open.spotify.com/track/2SAqBLGA283SUiwJ3xOUVI	2020-08-14	0.761	0.518	0.134	0.107	133.976	261493	0.522
302	63	pov	https://open.spotify.com/track/3UoULw70kMsiVXxW0L3A33	2020-10-30	0.487	0.534	0.0555	0.1	131.798	201882	0.173
303	77	Heather	https://open.spotify.com/track/4xqrdfXkTW4T0RauPLv3WA	2020-03-20	0.357	0.425	0.0333	0.322	102.078	198040	0.27
304	63	just like magic	https://open.spotify.com/track/7Dx9Z6Aon1qPS2N0rHSWTe	2020-10-30	0.719	0.607	0.165	0.125	128.006	149900	0.464
305	29	Wonder	https://open.spotify.com/track/5KCbr5ndeby4y4ggthdiAb	2020-12-04	0.333	0.637	0.0581	0.149	139.898	172693	0.132
306	164	La Tóxica	https://open.spotify.com/track/15OjBeqNX3bShsGYQbteRv	2020-07-24	0.659	0.701	0.164	0.0866	91.97	180520	0.623
307	165	Se Te Nota (with Guaynaa)	https://open.spotify.com/track/11EnQRgRMJwMAesfkB5pnu	2020-09-02	0.905	0.686	0.0664	0.266	103.013	155825	0.963
308	74	Vida de Rico	https://open.spotify.com/track/73nAK3HgQK8dak83Y2WQ8F	2020-09-21	0.824	0.457	0.0543	0.041	87.977	187427	0.95
309	63	shut up	https://open.spotify.com/track/3ko9jEHNt4O5fjKN65ULJp	2020-10-30	0.499	0.462	0.0312	0.0946	127.698	157710	0.599
310	20	UN DIA (ONE DAY) (Feat. Tainy)	https://open.spotify.com/track/0EhpEsp4L0oRGM0vmeaN5e	2020-07-24	0.571	0.693	0.0545	0.173	168.169	232253	0.393
311	166	La Nota	https://open.spotify.com/track/7ndTONDDRFGiPnnhOzOXxq	2020-10-08	0.736	0.632	0.0648	0.349	92.03	216107	0.503
312	167	La Curiosidad	https://open.spotify.com/track/4HYDUMY0xSpeBr0AMY9cUz	2020-06-12	0.845	0.677	0.136	0.108	90.013	219048	0.68
313	168	Take You Dancing	https://open.spotify.com/track/59qrUpoplZxbIZxk6X0Bm3	2020-07-22	0.789	0.711	0.041	0.0876	112.985	190306	0.753
314	63	safety net (feat. Ty Dolla $ign)	https://open.spotify.com/track/14gkWVFMwdxBMyqBw1wmIg	2020-10-30	0.552	0.599	0.0404	0.0986	161.884	208457	0.0916
315	4	Levitating (feat. DaBaby)	https://open.spotify.com/track/6OqrJqDMu15AGJHJazg9Nr	2020-10-01	0.702	0.825	0.0601	0.0674	102.977	203064	0.915
316	130	Una Locura	https://open.spotify.com/track/5y7DaS3jAc9eZzcSOoUIwU	2020-09-04	0.714	0.761	0.0427	0.241	168.022	230693	0.906
317	139	Jeans	https://open.spotify.com/track/3GtnId3Cm1Xa6joCj08nzW	2020-08-14	0.807	0.656	0.105	0.0693	83.943	185840	0.89
318	63	nasty	https://open.spotify.com/track/0sci7ppTZFm4mjcH3nu8yO	2020-10-30	0.772	0.506	0.139	0.182	127.894	200733	0.456
319	169	Midnight Sky	https://open.spotify.com/track/27ycaQnQAxaPiyeg3nr2aB	2020-08-14	0.705	0.814	0.0346	0.203	110.0	223279	0.259
320	170	Dreams - 2004 Remaster	https://open.spotify.com/track/0ofHAoxe9vBkTCp2UQIavz	1977-02-04	0.828	0.492	0.0276	0.128	120.151	257800	0.789
321	16	Ay, DiOs Mío!	https://open.spotify.com/track/7x4ASXYEKfQBCewcZhK776	2020-06-06	0.715	0.706	0.195	0.106	179.997	189840	0.522
322	63	my hair	https://open.spotify.com/track/6u7gmPOz7pzzaeR9xSBpsR	2020-10-30	0.686	0.526	0.0374	0.144	92.013	158436	0.372
323	171	Ice Cream (with Selena Gomez)	https://open.spotify.com/track/4JUPEh2DVSXFGExu4Uxevz	2020-10-02	0.79	0.701	0.365	0.0311	159.972	177813	0.91
324	63	six thirty	https://open.spotify.com/track/2IKJtXeR5UsaUjZB46fTOK	2020-10-30	0.739	0.516	0.0539	0.151	120.109	183874	0.434
325	130	Despeinada	https://open.spotify.com/track/0JAZWvvqttGFm4UMDsPQXC	2020-09-04	0.734	0.775	0.0614	0.123	166.039	224187	0.72
326	159	Parce (feat. Justin Quiles)	https://open.spotify.com/track/4RJz8NfIe09gpKMiRUWKhJ	2020-08-21	0.691	0.739	0.229	0.11	83.897	248345	0.884
327	172	POPSTAR (feat. Drake)	https://open.spotify.com/track/6EDO9iiTtwNv6waLwa1UUq	2020-07-17	0.8	0.56	0.261	0.134	163.071	200221	0.45
328	21	Golden	https://open.spotify.com/track/45S5WTQEGOB1VHr1Q4FuPl	2019-12-13	0.448	0.838	0.0557	0.131	139.863	208907	0.254
329	173	Mi Niña	https://open.spotify.com/track/2bgcUk2A3jjKbCJ7KPquTi	2020-09-23	\N	\N	\N	\N	\N	\N	\N
330	48	Come & Go (with Marshmello)	https://open.spotify.com/track/2Y0wPrPQBrGhoLn14xRYCG	2020-07-10	0.625	0.814	0.0657	0.158	144.991	205485	0.535
331	171	Lovesick Girls	https://open.spotify.com/track/4Ws314Ylb27BVsvlZOy30C	2020-10-02	0.654	0.707	0.0664	0.0873	127.97	194765	0.448
332	63	obvious	https://open.spotify.com/track/0q85C1JiECyYIQthz1posA	2020-10-30	0.624	0.672	0.106	0.155	159.852	146959	0.26
333	174	Daisy	https://open.spotify.com/track/0AUvWawuP0ibk4SQ3sIZjk	2020-07-09	0.834	0.663	0.133	0.372	121.876	146523	0.774
334	32	Tattoo - Remix with Camilo	https://open.spotify.com/track/4ZRrLHqzhGRXYj2qcB4s5S	2020-07-09	0.848	0.637	0.156	0.0521	96.988	222680	0.698
335	89	Diamonds	https://open.spotify.com/track/1hJIbOjWpid6LtnozHmzRS	2020-09-17	0.653	0.667	0.0423	0.107	104.181	213869	0.556
336	92	Mood Swings (feat. Lil Tjay)	https://open.spotify.com/track/5rZlwNFl01HqLWBQGryKSm	2020-07-03	0.48	0.602	0.368	0.0848	179.798	213333	0.269
337	175	Sofia	https://open.spotify.com/track/7B3z0ySL9Rr0XvZEAjWZzM	2019-08-02	0.744	0.619	0.039	0.231	112.997	188387	0.641
338	63	love language	https://open.spotify.com/track/6NYtLvyThMT0oALFdJFdzq	2020-10-30	0.688	0.573	0.208	0.0749	110.034	179861	0.553
339	63	west side	https://open.spotify.com/track/1whfVLMKWqAX3uk97VXsNN	2020-10-30	0.688	0.455	0.199	0.0794	87.865	132279	0.557
340	132	I CAN'T STOP ME	https://open.spotify.com/track/3apeXzypBMnUfYcZYNX6DH	2020-10-26	0.657	0.88	0.102	0.463	150.084	205493	0.769
341	25	Tyler Herro	https://open.spotify.com/track/4DuUwzP4ALMqpquHU0ltAB	2020-10-22	0.794	0.756	0.136	0.247	123.066	156498	0.775
342	171	How You Like That	https://open.spotify.com/track/4SFknyjLcyTLJFPKD2m96o	2020-10-02	0.812	0.761	0.0812	0.0601	130.032	182956	0.344
343	176	Mi Cuarto	https://open.spotify.com/track/6fmQjRuo7XvRFCK2qex5hQ	2020-04-03	0.854	0.525	0.214	0.146	97.054	197587	0.63
344	177	MORE	https://open.spotify.com/track/6juLaduD4STCUDWT0AYun4	2020-10-28	0.66	0.787	0.032	0.323	142.018	217088	0.199
345	178	Deep End	https://open.spotify.com/track/6HlE9t71z9DjGi7KqSyEpA	2020-06-05	0.868	0.479	0.445	0.102	133.928	115200	0.776
346	48	Wishing Well	https://open.spotify.com/track/2U5WueTLIK5WJLD7mvDODv	2020-07-10	0.65	0.613	0.128	0.267	149.972	194621	0.0804
347	4	Fever	https://open.spotify.com/track/3F1P0QzdXtBz0MXy7KIO5w	2020-10-29	0.868	0.693	0.181	0.106	114.999	156911	0.396
348	179	my ex's best friend (with blackbear)	https://open.spotify.com/track/7kDUspsoYfLkWnZR7qwHZl	2020-09-25	0.731	0.675	0.0434	0.141	124.939	139461	0.298
349	180	Chica Ideal	https://open.spotify.com/track/21N4Buj4xsyLb218lYle61	2020-10-16	0.574	0.891	0.157	0.16	100.978	183240	0.707
350	16	BICHOTA	https://open.spotify.com/track/7vrJn5hDSXRmdXoR30KgF1	2020-10-23	0.863	0.666	0.152	0.103	163.908	178947	0.838
351	80	Train Wreck	https://open.spotify.com/track/55Am8neGJkdj2ADaM3aw5H	2016-10-28	0.311	0.485	0.0365	0.0726	77.355	208827	0.225
352	126	SO DONE	https://open.spotify.com/track/5psEZhQu6lukjhavJo4AbC	2020-10-23	0.719	0.598	0.077	0.115	142.592	126521	0.303
353	181	Forever After All	https://open.spotify.com/track/6IBcOGPsniK3Pso1wHIhew	2020-10-23	0.487	0.65	0.0253	0.0933	151.964	232533	0.456
354	182	Mad at Disney	https://open.spotify.com/track/7aGyRfJWtLqgJaZoG9lJhE	2020-07-24	0.738	0.621	0.0486	0.692	113.968	136839	0.715
355	96	WHATS POPPIN (feat. DaBaby, Tory Lanez & Lil Wayne) - Remix	https://open.spotify.com/track/2MbdDtCv5LUVjYy9RuGTgC	2020-06-24	0.904	0.723	0.26	0.185	145.013	227478	0.835
356	183	Tick Tock (feat. 24kGoldn)	https://open.spotify.com/track/27u7t9d7ZQoyjsCROHuZJ3	2020-08-21	0.779	0.705	0.0344	0.124	101.022	178374	0.946
357	32	Reloj	https://open.spotify.com/track/7r9ZhitdQBONTFOiJW5mr8	2020-10-22	0.823	0.537	0.209	0.123	175.946	231595	0.615
358	184	Spicy (feat. Post Malone)	https://open.spotify.com/track/5IUtvfNvOyVYZUa6AJFrnP	2020-10-23	0.782	0.51	0.0419	0.115	99.993	143375	0.118
359	185	Sweater Weather	https://open.spotify.com/track/2QjOHCTQ1Jl3zawyYOpxh6	2013-04-19	0.612	0.807	0.0336	0.101	124.053	240400	0.398
360	171	Pretty Savage	https://open.spotify.com/track/1XnpzbOGptRwfJhZgLbmSr	2020-10-02	0.701	0.556	0.0414	0.106	152.045	201122	0.333
361	186	Agua (with J Balvin) - Music From "Sponge On The Run" Movie	https://open.spotify.com/track/1pqnQ41XbfKjaFu6M0eGJp	2020-07-09	\N	\N	\N	\N	\N	\N	\N
362	92	The Woo (feat. 50 Cent & Roddy Ricch)	https://open.spotify.com/track/1H7KnK26kc1YyellpbINEn	2020-07-03	0.49	0.618	0.104	0.259	99.7	201600	0.286
363	187	Electric Love	https://open.spotify.com/track/2GiJYvgVaD2HtM8GqD9EgQ	2015-10-16	0.611	0.797	0.0533	0.26	120.041	218107	0.518
364	188	Be Like That - feat. Swae Lee & Khalid	https://open.spotify.com/track/5f1joOtoMeyppIcJGZQvqJ	2020-07-10	0.727	0.626	0.0726	0.126	86.97	191406	0.322
365	189	Papi Chulo	https://open.spotify.com/track/6Juv5N0dNU1imms9c9u1dA	2020-03-13	0.866	0.563	0.108	0.0889	127.954	161668	0.307
366	190	Djadja (feat. Maluma) - Remix	https://open.spotify.com/track/13vDU8nPsvTGEVTMB8Vw7g	2020-06-12	0.791	0.682	0.158	0.0926	98.031	166851	0.672
367	191	Whoopty	https://open.spotify.com/track/1RSzyxqtIO4yX3EyiV4zT5	2020-08-20	0.719	0.648	0.125	0.127	140.201	123263	0.66
368	192	Jerusalema (feat. Nomcebo Zikode)	https://open.spotify.com/track/2MlOUXmcofMackX3bxfSwi	2020-01-24	0.88	0.483	0.0505	0.0607	124.009	342613	0.827
369	193	Someone To You	https://open.spotify.com/track/2f0pn9DkEJwAzXApnFh5cr	2019-10-04	0.52	0.903	0.042	0.254	74.988	219801	0.652
370	48	Smile (with The Weeknd)	https://open.spotify.com/track/6wQlQrTY5mVS8EGaFZVwVF	2020-07-10	0.694	0.685	0.133	0.124	158.831	196180	0.306
371	32	Enchule	https://open.spotify.com/track/3ThrfRAmijYU098H9q9tAs	2020-09-18	0.763	0.666	0.194	0.301	90.086	185719	0.587
372	85	Martin & Gina	https://open.spotify.com/track/1VLtjHwRWOVJiE5Py7JxoQ	2020-05-15	0.832	0.534	0.253	0.165	93.924	132833	0.116
373	194	Mr. Right Now (feat. Drake)	https://open.spotify.com/track/4Q34FP1AT7GEl9oLgNtiWj	2020-10-02	0.647	0.667	0.304	0.133	172.08	193839	0.704
374	195	You Got It	https://open.spotify.com/track/4lsHZ92XCFOQfzJFBTluk8	2020-03-27	0.762	0.433	0.187	0.118	122.074	203145	0.394
375	196	Don Don	https://open.spotify.com/track/3kml9ZdpT7UYk1ugkjqOzt	2020-09-11	0.838	0.819	0.211	0.224	105.027	275893	0.656
376	197	Recairei - Ao Vivo	https://open.spotify.com/track/2JTir3y1VuJQmexiTCMcTP	2020-04-17	0.582	0.937	0.0858	0.684	168.096	166838	0.939
377	198	Thriller	https://open.spotify.com/track/3S2R0EVwBSAVMd5UMgKTL0	2017-09-27	0.764	0.887	0.0744	0.847	118.427	358053	0.72
378	199	Blueberry Eyes (feat. SUGA of BTS)	https://open.spotify.com/track/6sI8Q7TTJeA9exw6hxEqq3	2020-09-15	0.746	0.611	0.101	0.133	149.967	172245	0.411
379	172	GREECE (feat. Drake)	https://open.spotify.com/track/35RJhm1pEovTBwnNR0zWad	2020-07-16	0.695	0.343	0.0432	0.107	85.84	218902	0.229
380	200	Lean (feat. Towy, Osquel, Beltito & Sammy & Falsetto)	https://open.spotify.com/track/5DoLhdU27owX1NMrKLUbUl	2017-03-31	\N	\N	\N	\N	\N	\N	\N
381	201	Head Shoulders Knees & Toes (feat. Norma Jean Martine)	https://open.spotify.com/track/6i7zAdNhzUN2k1HcrBxPHG	2020-05-08	0.798	0.828	0.193	0.121	124.962	156960	0.6
382	166	Quiéreme Mientras Se Pueda	https://open.spotify.com/track/34LI7rwi9H8w2S5KTHnv1M	2020-05-01	0.793	0.782	0.0582	0.124	143.86	191945	0.81
383	202	Promiscuous	https://open.spotify.com/track/2gam98EZKrF9XuOkU13ApN	2006-01-01	0.808	0.97	0.0506	0.154	114.328	242293	0.868
384	203	E-GIRLS ARE RUINING MY LIFE!	https://open.spotify.com/track/7bCfHiRcfUjG0YVVNUL7Ve	2020-09-25	0.614	0.937	0.115	0.103	84.98	105176	0.386
385	185	Daddy Issues	https://open.spotify.com/track/5E30LdtzQTGqRvNd7l6kG5	2015-10-30	0.588	0.521	0.0329	0.123	85.012	260173	0.337
386	204	Moonwalking in Calabasas (feat. Blueface) - Remix	https://open.spotify.com/track/7o4gBbTM6UBLkOYPw9xMCz	2020-12-02	0.928	0.341	0.103	0.162	129.966	170233	0.745
387	205	Angeklagt	https://open.spotify.com/track/5FLkxbVtsn88ejcLR62L4T	2020-10-29	0.658	0.624	0.0915	0.116	181.942	168991	0.314
388	37	Paradise (feat. Dermot Kennedy)	https://open.spotify.com/track/6ft4hAq6yde8jPZY2i5zLr	2020-10-30	0.632	0.595	0.0401	0.209	124.114	167903	0.435
389	122	Savage Love (Laxed – Siren Beat) [BTS Remix]	https://open.spotify.com/track/4TgxFMOn5yoESW6zCidCXL	2020-10-02	0.758	0.598	0.0868	0.295	149.836	184905	0.658
390	206	The Business	https://open.spotify.com/track/6f3Slt0GbA2bPZlz0aIFXN	2020-09-16	0.798	0.62	0.232	0.112	120.031	164000	0.235
391	207	Ayer Me Llamó Mi Ex (feat. Lenny Santos)	https://open.spotify.com/track/6C6mUonH6MNdSg5pw7kOc9	2020-08-20	0.752	0.716	0.0325	0.243	117.007	206760	0.553
392	89	Kids Again	https://open.spotify.com/track/1ABS9lKaZ1uXkXCqr9zFO7	2020-10-30	0.666	0.726	0.0262	0.0892	128.044	207528	0.468
393	130	Caramelo - Remix	https://open.spotify.com/track/67jvGGbJmOmVonlyX3mNkV	2020-08-17	0.754	0.796	0.139	0.204	168.045	233160	0.62
394	194	Runnin	https://open.spotify.com/track/5SWnsxjhdcEDc7LJjq9UHk	2020-10-02	0.819	0.626	0.202	0.167	143.01	195906	0.415
395	208	Highway to Hell	https://open.spotify.com/track/2zYzyRzz6pRmhPzyfMEC8s	1979-07-27	0.574	0.913	0.133	0.156	115.728	208400	0.423
396	159	Madrid (feat. Myke Towers)	https://open.spotify.com/track/19OXtYzrJyCrQvTbfukt4H	2020-08-21	0.764	0.741	0.101	0.107	170.081	198570	0.802
397	92	Got It On Me	https://open.spotify.com/track/25zlnOAzbVoOzIeXSvQFf1	2020-07-03	0.688	0.647	0.19	0.095	88.834	164580	0.195
398	209	Still Don't Know My Name	https://open.spotify.com/track/6N22FZs2ZhPBYi3b9XPajV	2019-10-04	0.316	0.63	0.117	0.205	89.643	153294	0.313
399	92	Hello (feat. A Boogie Wit da Hoodie)	https://open.spotify.com/track/2r6OAV3WsYtXuXjvJ1lIDi	2020-07-20	0.905	0.647	0.107	0.282	130.97	190534	0.367
400	210	All I Want for Christmas Is You	https://open.spotify.com/track/0bYg9bo50gSsH3LtXe2SQn	1994-11-01	0.336	0.627	0.0384	0.0708	150.273	241107	0.35
401	211	Investe Em Mim	https://open.spotify.com/track/15k1TDabqSEmyXOwMq9RM7	2019-12-13	0.632	0.953	0.0325	0.125	160.061	186533	0.798
402	212	Me Gusta (with Cardi B & Myke Towers)	https://open.spotify.com/track/7e1VoRlNumuEkXlITMHKLE	2020-09-18	0.91	0.604	0.082	0.0863	110.075	180788	0.807
403	213	24 (feat. Lil Baby)	https://open.spotify.com/track/0xUvi7wldroBzaZCengPa5	2020-08-21	0.868	0.638	0.0736	0.0931	126.03	182857	0.459
404	214	Are You Bored Yet? (feat. Clairo)	https://open.spotify.com/track/57RA3JGafJm5zRtKJiKPIm	2019-03-22	0.682	0.683	0.0287	0.273	120.023	178000	0.64
405	215	Nada	https://open.spotify.com/track/4K8cyoCDovlc4FvtUr2Hfx	2020-08-14	0.684	0.808	0.061	0.0858	173.905	174027	0.712
406	216	At My Worst	https://open.spotify.com/track/0ri0Han4IRJhzvERHOZTMr	2020-07-17	0.813	0.415	0.0349	0.131	91.921	170345	0.667
407	56	FRANCHISE (feat. Young Thug & M.I.A.)	https://open.spotify.com/track/4jVBIpuOiMj1crqd8LoCrJ	2020-09-25	0.835	0.699	0.277	0.195	154.981	202795	0.547
408	217	Star Shopping	https://open.spotify.com/track/30bqVoKjX479ab90a8Pafp	2015-04-19	0.585	0.471	0.0616	0.115	93.099	142000	0.323
409	27	PICK UP (feat. Quavo)	https://open.spotify.com/track/5gNOINI5dXZVom2b36LMOd	2020-04-17	0.915	0.612	0.407	0.115	129.93	118547	0.758
410	33	Freedom	https://open.spotify.com/track/5Gj1wG8b12VQdEd3hUuSwo	2020-04-17	0.715	0.635	0.0791	0.0862	112.887	198635	0.39
411	27	JUMP (feat. YoungBoy Never Broke Again)	https://open.spotify.com/track/0oT9ElXYSxvnOOagP9efDq	2020-04-17	0.896	0.72	0.355	0.252	140.1	212093	0.966
412	27	LIGHTSKIN SH*T (feat. Future & jetsonmade)	https://open.spotify.com/track/16oi4OiKmkO51l60F5R9kR	2020-04-17	0.932	0.578	0.366	0.115	129.991	111173	0.623
413	218	No Me Ame	https://open.spotify.com/track/2AuWgceaQyfMoI3EGavwGb	2020-04-17	0.68	0.766	0.0923	0.116	160.095	180000	0.28
414	27	BLAME IT ON BABY	https://open.spotify.com/track/0jWm0VyD8p3MrSInczpows	2020-04-17	0.875	0.687	0.387	0.141	109.791	125907	0.864
415	219	Last Christmas	https://open.spotify.com/track/2FRnf9qhLbvw8fu4IBXx78	1984-11-29	0.735	0.478	0.0293	0.355	107.682	262960	0.947
416	63	Santa Tell Me	https://open.spotify.com/track/0lizgQ7Qw35od7CYaoMBZb	2014-11-24	0.525	0.621	0.116	0.294	191.9	204093	0.591
417	220	Rockin' Around The Christmas Tree	https://open.spotify.com/track/2EjXfH91m7f8HiJN1yQg97	1964-10-19	0.589	0.472	0.0502	0.505	67.196	126267	0.898
418	221	It's Beginning to Look a Lot like Christmas	https://open.spotify.com/track/0lLdorYw7lVrJydTINhWdI	2012-11-09	0.339	0.214	0.0375	0.341	94.775	206640	0.363
419	222	Jingle Bell Rock	https://open.spotify.com/track/7vQbuQcyTflfCIOu3Uzzya	1957-12-02	0.754	0.424	0.0363	0.0652	119.705	130973	0.806
420	223	It's the Most Wonderful Time of the Year	https://open.spotify.com/track/1IcR6RlgvDczfvoWJSSY2A	1963-11-24	0.24	0.598	0.0369	0.117	201.629	151933	0.776
421	224	Underneath the Tree	https://open.spotify.com/track/3nAp4IvdMPPWEH9uuXFFV5	2013-10-29	0.509	0.812	0.0537	0.214	159.878	229640	0.689
422	225	Let It Snow! Let It Snow! Let It Snow!	https://open.spotify.com/track/2uFaJJtFpPDc5Pa95XzTvg	1959-01-01	0.451	0.24	0.0351	0.175	134.009	117147	0.701
423	226	Feliz Navidad	https://open.spotify.com/track/3qCeq0rWK67SoBDgFd2sId	2002-09-24	0.513	0.831	0.0383	0.336	148.837	182067	0.963
424	10	Mistletoe	https://open.spotify.com/track/7xapw9Oy21WpfEcib2ErSA	2011-01-01	0.657	0.56	0.0467	0.0794	161.993	182947	0.854
425	227	Sleigh Ride	https://open.spotify.com/track/7fUYUcWy853HS8YJn0b3Sr	1963-11-22	0.529	0.772	0.0287	0.316	91.751	181267	0.853
426	228	Do They Know It's Christmas? - 1984 Version	https://open.spotify.com/track/0247StOpd3AkeBQzANX4Zf	2004-01-01	0.599	0.642	0.0363	0.0992	115.412	222533	0.349
427	229	Snowman	https://open.spotify.com/track/7uoFMmxln0GPXQ0AcCBXRq	2018-11-01	0.716	0.512	0.0331	0.0928	104.957	165907	0.326
428	230	Let It Snow! Let It Snow! Let It Snow! (with The B. Swanson Quartet)	https://open.spotify.com/track/4kKdvXD0ez7jp1296JmAts	1994-11-08	0.652	0.259	0.0595	0.362	142.169	155453	0.836
429	221	Holly Jolly Christmas	https://open.spotify.com/track/6tjituizSxwSmBB5vtgHZE	2012-11-09	0.647	0.465	0.0428	0.0882	151.251	119787	0.699
430	231	Driving Home for Christmas - 2019 Remaster	https://open.spotify.com/track/27qAMKrDdKEs8HDXcvR24R	2019-12-24	\N	\N	\N	\N	\N	\N	\N
431	232	Wonderful Christmastime - Edited Version / Remastered 2011	https://open.spotify.com/track/1SV1fxF65n9NhRHp3KlBuu	1980-05-16	0.774	0.511	0.0319	0.0672	94.736	227653	0.771
432	233	Happy Xmas (War Is Over) - Remastered 2010	https://open.spotify.com/track/27RYrbL6S02LNVhDWVl38b	2010-10-05	0.321	0.64	0.0324	0.718	146.172	214333	0.414
433	13	LA NOCHE DE ANOCHE	https://open.spotify.com/track/2XIc1pqjXV3Cr2BQUGNBck	2020-11-27	0.856	0.618	0.286	0.0866	81.993	203201	0.391
434	234	willow	https://open.spotify.com/track/3Uo7WG0vmLQ07WB4BDwy7D	2020-12-11	0.392	0.574	0.17	0.145	81.112	214707	0.529
435	28	Therefore I Am	https://open.spotify.com/track/54bFM56PmE4YLRnqpW6Tha	2020-11-12	0.889	0.34	0.0697	0.055	94.009	174321	0.716
436	126	WITHOUT YOU	https://open.spotify.com/track/27OeeYzk6klgBh83TSvGMA	2020-11-06	0.662	0.413	0.0299	0.134	93.005	161385	0.467
437	235	The Christmas Song (Merry Christmas To You)	https://open.spotify.com/track/4PS1e8f2LvuTFgUs1Cn3ON	1962-10-15	0.319	0.21	0.0341	0.138	78.696	192160	0.209
438	75	HOLIDAY	https://open.spotify.com/track/6zFMeegAMYQo0mt8rXtrli	2020-11-13	0.81	0.511	0.164	0.0832	151.947	154998	0.837
439	29	Monster (Shawn Mendes & Justin Bieber)	https://open.spotify.com/track/1HbA4N1MiOsPthALesGFR1	2020-11-20	0.652	0.383	0.0516	0.0828	145.765	178994	0.549
440	236	Merry Christmas Everyone	https://open.spotify.com/track/2TE4xW3ImvpltVU0cPcKUn	1991-11-25	0.534	0.904	0.0369	0.128	202.899	220160	0.96
441	237	White Christmas	https://open.spotify.com/track/4so0Wek9Ig1p6CRCHuINwW	1942-01-01	0.317	0.158	0.0381	0.338	130.503	177480	0.247
442	238	A Holly Jolly Christmas - Single Version	https://open.spotify.com/track/77khP2fIVhSW23NwxrRluh	1965-01-01	0.683	0.375	0.0303	0.076	140.467	135533	0.888
443	239	Fairytale of New York (feat. Kirsty MacColl)	https://open.spotify.com/track/3VTNVsTTu05dmTsVFrmGpK	1988-09-05	0.271	0.551	0.0457	0.256	78.111	272467	0.428
444	169	Prisoner (feat. Dua Lipa)	https://open.spotify.com/track/2Oycxb8QbPkpHTo8ZrmG0B	2020-11-20	0.781	0.67	0.0452	0.0761	127.99	169333	0.595
445	240	Santa Baby	https://open.spotify.com/track/2SBr3MK1sdMs8IxdRcN6qz	2010-11-30	0.685	0.391	0.0435	0.142	87.101	202547	0.443
446	241	Hecha Pa' Mi	https://open.spotify.com/track/3VvA1wSxukMLsvXoXtlwWx	2020-07-31	0.725	0.756	0.0572	0.103	100.07	186133	0.828
447	242	Santa Claus Is Coming To Town	https://open.spotify.com/track/6a1hzBiTkgqTsDA0Xgfh9z	1970-10-15	0.691	0.776	0.0341	0.33	146.861	144080	0.961
448	243	It's Beginning to Look a Lot Like Christmas (with Mitchell Ayres & His Orchestra)	https://open.spotify.com/track/2pXpURmn6zC5ZYDMms6fwa	1999-08-20	0.724	0.276	0.0599	0.116	112.874	155933	0.718
449	244	Blue Christmas	https://open.spotify.com/track/3QiAAp20rPC3dcAtKtMaqQ	1957-10-15	0.465	0.27	0.0425	0.145	94.518	129173	0.58
450	13	TE MUDASTE	https://open.spotify.com/track/5RubKOuDoPn5Kj5TLVxSxY	2020-11-27	0.811	0.637	0.0591	0.118	92.025	130014	0.471
451	245	Run Rudolph Run - Single Version	https://open.spotify.com/track/2pnPe4pJtq7689i5ydzvJJ	1958-11-19	0.647	0.876	0.185	0.26	151.925	162897	0.949
452	246	Step Into Christmas	https://open.spotify.com/track/6sBWmE23q6xQHlnEZ8jYPT	1973-10-05	0.526	0.925	0.0363	0.305	140.308	272394	0.819
453	247	Christmas (Baby Please Come Home)	https://open.spotify.com/track/47ohYW8e7dxCYn9qbUMBCI	1963-11-22	0.325	0.759	0.053	0.0773	126.627	166453	0.36
454	248	Jingle Bell Rock - Daryl's Version	https://open.spotify.com/track/6pVW5LRWgeLaHudxauOTJU	1983-11-01	0.666	0.841	0.0312	0.113	128.706	126360	0.84
455	74	BEBÉ	https://open.spotify.com/track/7D7EH7MGyNHWSkqrszerI1	2020-11-25	0.862	0.72	0.0379	0.0604	129.972	198707	0.965
456	73	Thank God It's Christmas - Non-Album Single	https://open.spotify.com/track/2xGO2UjzxeVQSIkyg98vck	1984-11-26	\N	\N	\N	\N	\N	\N	\N
457	249	Christmas Lights	https://open.spotify.com/track/4fzyvSu73BhGvi96p2zwjL	2016-12-16	0.295	0.496	0.0327	0.858	132.062	268521	0.224
458	234	champagne problems	https://open.spotify.com/track/0sY6ZUTh4yoctD8VIXz339	2020-12-11	0.462	0.24	0.0377	0.113	171.319	244000	0.32
459	158	Life Goes On	https://open.spotify.com/track/249gnXrbfmV8NG6jTEMSwD	2020-11-20	0.566	0.716	0.0424	0.37	81.068	207481	0.45
460	89	Have Yourself A Merry Little Christmas	https://open.spotify.com/track/1Qi2wh8fFgDV7tl4Sj3f2K	2014-12-05	0.438	0.178	0.0414	0.316	75.248	170964	0.344
461	229	Santa's Coming for Us	https://open.spotify.com/track/1N1ZpYUJc9fwrqk53FGgWv	2018-11-01	0.547	0.814	0.12	0.0475	92.986	205267	0.724
462	250	My Only Wish (This Year)	https://open.spotify.com/track/0YWUHZPJVg4iujddsJDwhM	2000-11-14	0.669	0.843	0.0268	0.195	147.08	255400	0.702
463	251	Baby, It's Cold Outside (feat. Meghan Trainor)	https://open.spotify.com/track/5Q2P43CJra0uRAogjHyJDK	2016-10-28	0.583	0.572	0.0366	0.266	113.998	173560	0.684
464	60	Like It's Christmas	https://open.spotify.com/track/1OjmlSFuzYflWjSMTCyTJv	2019-11-08	0.725	0.571	0.102	0.0519	146.035	200880	0.61
465	234	no body, no crime (feat. HAIM)	https://open.spotify.com/track/6NriykdkRrjQMZo1sfVYUo	2020-12-11	0.546	0.613	0.0264	0.103	79.015	215627	0.535
466	18	Body	https://open.spotify.com/track/0A1hoCfMLkiAgvhWkkucJa	2020-11-20	0.883	0.674	0.357	0.0678	141.02	278085	0.73
467	51	Christmas Without You	https://open.spotify.com/track/1QLZKzC2pjP4ySf4ALrNhm	2020-10-15	0.654	0.596	0.0458	0.11	118.078	169245	0.382
518	273	Good News	https://open.spotify.com/track/1DWZUa5Mzf2BwzpHtgbHPY	2020-01-17	0.794	0.32	0.173	0.112	174.088	342040	0.241
468	252	You Make It Feel Like Christmas (feat. Blake Shelton)	https://open.spotify.com/track/2OQ6a4CfUeYskpTTgyawyJ	2017-10-06	0.635	0.87	0.04	0.118	93.0	156773	0.912
469	26	Gnat	https://open.spotify.com/track/6cS9PmLky2NhLOhpIsUlow	2020-12-18	0.835	0.869	0.27	0.462	140.945	224656	0.82
470	253	Goosebumps	https://open.spotify.com/track/20McUFi8KCIVdNDLrkTDuZ	2020-06-12	0.841	0.593	0.0379	0.124	124.917	162803	0.808
471	235	Joy To The World	https://open.spotify.com/track/1VuAamHM7P3VQQEXYGG3Uu	1960-10-15	0.59	0.305	0.032	0.14	102.103	86760	0.545
472	254	Nathy Peluso: Bzrp Music Sessions, Vol. 36	https://open.spotify.com/track/78SeXVRJ7KCqVmOwTiFjnI	2020-11-27	0.65	0.655	0.405	0.0691	94.059	171215	0.735
473	221	Santa Claus Is Coming to Town	https://open.spotify.com/track/5Ber68jZ7ytegr2UISEdb7	2012-11-09	0.594	0.389	0.0517	0.0313	122.331	171093	0.396
474	48	Reminds Me Of You	https://open.spotify.com/track/5YSHygGN9D0mID1NsVd5my	2020-12-08	0.613	0.631	0.12	0.169	149.992	158033	0.33
475	255	Baby It's Cold Outside (duet with Michael Bublé)	https://open.spotify.com/track/0Ie5uiv54KgCr7P4sYDTHl	2014-10-10	0.553	0.476	0.0649	0.281	113.401	166147	0.558
476	234	‘tis the damn season	https://open.spotify.com/track/4GBkffrtA51p17JH35irGA	2020-12-11	0.575	0.434	0.0312	0.105	145.916	229840	0.348
477	242	I Saw Mommy Kissing Santa Claus	https://open.spotify.com/track/3lkYS3iMpWMVpaJ0yJAFrJ	1970-10-15	0.583	0.712	0.0538	0.817	128.897	181267	0.614
478	256	Santa Baby (with Henri René & His Orchestra)	https://open.spotify.com/track/1foCxQtxBweJtZmdxhEHVO	2002-10-15	0.7	0.139	0.0607	0.185	84.485	206067	0.49
479	257	Carol of the Bells	https://open.spotify.com/track/4tHqQMWSqmL6YjXwsqthDI	1990-11-10	0.418	0.106	0.0448	0.179	46.718	85267	0.8
480	39	GIRL LIKE ME	https://open.spotify.com/track/2vBET2pmrQqafaS6zIaYta	2020-11-02	0.965	0.485	0.191	0.0655	124.025	222523	0.312
481	234	gold rush	https://open.spotify.com/track/5BK0uqwY9DNfZ630STAEaq	2020-12-11	0.512	0.462	0.0408	0.121	112.05	185320	0.353
482	258	What Christmas Means To Me	https://open.spotify.com/track/3h1EREJfCwyv6cG7CGak5d	1967-12-25	0.545	0.7	0.0323	0.1	83.506	148147	0.799
483	45	Afterglow	https://open.spotify.com/track/0E4Y1XIbs8GrAT1YqVy6dq	2020-12-21	0.641	0.324	0.0299	0.328	110.184	185487	0.273
484	159	Hawái - Remix	https://open.spotify.com/track/0GzuHFG4Ql6DoyxFRnIk3F	2020-11-05	0.766	0.788	0.312	0.142	179.984	200482	0.609
485	29	The Christmas Song (Shawn Mendes & Camila Cabello)	https://open.spotify.com/track/66VenHDtrQAw7FCjyF2J56	2020-12-07	0.341	0.181	0.0366	0.137	83.608	196254	0.212
486	44	Bandido	https://open.spotify.com/track/1xK1Gg9SxG8fy2Ya373oqb	2020-12-10	0.713	0.617	0.0887	0.0962	168.021	232853	0.682
487	225	Baby, It's Cold Outside	https://open.spotify.com/track/4MrfQL4TYQXJBlZYpAHTuE	1959-01-01	0.469	0.196	0.0571	0.0513	130.036	143733	0.537
488	259	Santa Claus Is Comin' to Town - Live at C.W. Post College, Greenvale, NY - December 1975	https://open.spotify.com/track/6s2wpWPFPAgKg2LXxi1Oee	1981-12-12	0.357	0.668	0.0479	0.727	139.986	267600	0.407
489	260	One More Sleep	https://open.spotify.com/track/78pn8k7RogKo2oxl0DyX6d	2013-12-02	0.638	0.813	0.0362	0.344	112.986	239587	0.754
490	261	Little Saint Nick - 1991 Remix	https://open.spotify.com/track/5xlS0QkVrSH7ssEbBgBzbM	1999-01-01	0.602	0.553	0.0328	0.0512	130.594	118840	0.971
491	262	Naughty List (with Dixie)	https://open.spotify.com/track/2Y0ktCGrGoGcQFXsGztvhi	2020-10-30	0.619	0.771	0.0601	0.114	81.966	154747	0.704
492	263	I'll Be Home	https://open.spotify.com/track/0lTurWECr2XL607eJAj1A3	2015-01-09	0.542	0.37	0.0257	0.108	84.796	219653	0.289
493	78	Polvo	https://open.spotify.com/track/68mrW6gXHgupgSiDHgaDi5	2020-11-20	0.763	0.621	0.066	0.106	82.042	211130	0.582
494	225	Rudolph The Red-Nosed Reindeer	https://open.spotify.com/track/2L9QLAhrvtP4EYg1lY0Tnw	1959-01-01	0.478	0.201	0.0332	0.0854	136.471	135760	0.857
495	230	Mistletoe And Holly - Remastered 1999	https://open.spotify.com/track/7faDzZnZYqTyYThx2sbHVQ	1957-09-17	0.607	0.103	0.0404	0.076	110.378	136427	0.341
496	230	Jingle Bells - Remastered 1999	https://open.spotify.com/track/4HEOgBHRCExyYVeTyrXsnL	1957-09-17	0.512	0.339	0.0498	0.0977	174.609	120693	0.951
497	210	Oh Santa! (feat. Ariana Grande & Jennifer Hudson)	https://open.spotify.com/track/2VkuxjlbnbaBiWYpdBGVol	2020-12-04	0.648	0.938	0.115	0.0564	78.496	200467	0.849
498	237	Do You Hear What I Hear? - Remastered 2006	https://open.spotify.com/track/35z5xJpu76nakf65i1BCMl	2006-01-01	0.566	0.246	0.0276	0.195	101.529	165667	0.412
499	264	Show Out (with Skepta & Pop Smoke)	https://open.spotify.com/track/5CFJRZRq6sdKKtRwNPWbYv	2020-12-11	0.619	0.589	0.124	0.378	143.896	174960	0.158
500	265	Hallelujah	https://open.spotify.com/track/550rQQCGkrTzvp4SfpOPzx	2017-12-06	0.364	0.378	0.0331	0.339	89.918	268960	0.366
501	264	Tequila Shots	https://open.spotify.com/track/30KctD1WsHKTIYczXjip5a	2020-12-11	0.712	0.556	0.0531	0.527	90.494	193293	0.22
502	266	Tú Me Dejaste De Querer	https://open.spotify.com/track/0XinBYhf1X3kdvKQHOX971	2020-11-05	0.823	0.723	0.229	0.0998	83.97	198493	0.505
503	267	This Christmas	https://open.spotify.com/track/7MSYSOobsombc1mbDWFxtD	1990-04-03	0.634	0.645	0.0376	0.246	93.047	231173	0.677
504	268	Winter Wonderland	https://open.spotify.com/track/4ricyQVd20UQde1jpXCSuJ	2014-12-09	0.604	0.497	0.0319	0.102	126.011	149307	0.72
505	234	Christmas Tree Farm	https://open.spotify.com/track/2mvabkN1i2gLnGAPUVdwek	2019-12-06	0.598	0.68	0.0331	0.324	134.002	228027	0.437
506	138	Cozy Little Christmas	https://open.spotify.com/track/02FaKXXL7KUtRc7K0k54tL	2018-11-15	0.774	0.608	0.128	0.0895	137.494	182521	0.56
507	269	Merry Christmas, Happy Holidays	https://open.spotify.com/track/15coTBAzEN1bOeipoNDZAR	1998-10-30	0.643	0.939	0.0463	0.881	104.999	255307	0.756
508	234	tolerate it	https://open.spotify.com/track/0PurA4JVJ8YQgSVopY8fn6	2020-12-11	0.316	0.361	0.0488	0.0797	74.952	245440	0.221
509	270	Si Me Tomo Una Cerveza	https://open.spotify.com/track/3lCbsHaN1wCxyDzcNN2x4N	2020-11-07	0.72	0.613	0.0572	0.155	84.974	182199	0.857
510	271	Please Come Home for Christmas - 2013 Remaster	https://open.spotify.com/track/3QIoEi8Enr9uHffwInGIsC	2013-10-15	0.612	0.289	0.0421	0.0561	183.18	177440	0.466
511	123	La Luz	https://open.spotify.com/track/5zj8WNkBrEzlI5FKeYV4ol	2020-10-31	0.665	0.697	0.154	0.599	94.053	216747	0.556
512	25	Way Out (feat. Big Sean)	https://open.spotify.com/track/57VeLYXrvNxe8Vs18K2M9W	2020-12-09	0.945	0.582	0.0719	0.103	108.025	168906	0.907
513	263	My Kind Of Present	https://open.spotify.com/track/2rkb8ijsPapKDMEh0cSe8I	2020-10-30	0.485	0.444	0.195	0.0969	179.967	161013	0.777
514	13	HACIENDO QUE ME AMAS	https://open.spotify.com/track/26QApq0cuO9brJigr0C0W4	2020-11-27	0.584	0.411	0.0838	0.0955	169.934	217769	0.412
515	64	Rare	https://open.spotify.com/track/7HMmFQsKsljwTw8bS7lu19	2020-01-10	0.838	0.545	0.0706	0.103	114.998	220590	0.631
516	10	Get Me	https://open.spotify.com/track/6zGPytJiZmFuyVq7RTNO9G	2020-02-14	0.832	0.508	0.149	0.107	109.352	185427	0.75
517	272	Ayy Macarena	https://open.spotify.com/track/6LcauUZjF1eXQrgqMUecHX	2019-11-13	0.816	0.629	0.226	0.0692	96.493	131607	0.714
519	158	Black Swan	https://open.spotify.com/track/24NuEDgyRIljwSyY0lsr7b	2020-02-21	0.719	0.758	0.0851	0.129	147.023	198261	0.49
520	234	Only The Young - Featured in Miss Americana	https://open.spotify.com/track/2slqvGLwzZZYsT4K4Y1GBC	2020-01-31	0.56	0.78	0.0517	0.0714	93.516	157507	0.602
521	78	Whine Up	https://open.spotify.com/track/2pWOMNQJW3g2zmGjP0Vkb0	2019-11-01	0.817	0.665	0.0758	0.103	104.957	215460	0.662
522	274	Baby	https://open.spotify.com/track/1V7JaMp11LKGwKiVmSetf0	2020-01-30	0.771	0.921	0.109	0.119	128.021	148125	0.56
523	27	TOES (feat. Lil Baby & Moneybagg Yo)	https://open.spotify.com/track/2FvD20Z8aoWIePi7PoN8sG	2019-09-27	0.816	0.582	0.341	0.0916	160.004	136366	0.542
524	275	I Do It (ft. Big Sean, Lil Baby)	https://open.spotify.com/track/1bRO28yzxgO3y3UmNR29TZ	2020-01-31	0.804	0.528	0.378	0.41	138.005	184440	0.321
525	53	Eleven	https://open.spotify.com/track/1ToprX3cpBiXoAe5eNSk74	2020-05-01	0.679	0.408	0.0882	0.23	129.079	206080	0.151
526	186	Adicto (with Anuel AA & Ozuna)	https://open.spotify.com/track/3jbT1Y5MoPwEIpZndDDwVq	2019-08-22	0.734	0.836	0.0735	0.179	80.002	270741	0.623
527	50	Futsal Shuffle 2020	https://open.spotify.com/track/2Ec33AVlkTTq8BHFgBTdQs	2019-12-12	0.881	0.457	0.156	0.231	136.97	198913	0.296
528	45	South of the Border (feat. Camila Cabello & Cardi B)	https://open.spotify.com/track/4vUmTMuQqjdnvlZmAH61Qk	2019-07-12	0.857	0.621	0.0825	0.0865	97.989	204467	0.668
529	196	Que Tire Pa Lante	https://open.spotify.com/track/6RyaV7owmVU6fzEPE17sF1	2019-10-18	0.658	0.901	0.0357	0.12	93.979	210520	0.708
530	111	Aventura	https://open.spotify.com/track/37zdqI4r1gswIzczSBkRon	2019-10-25	0.729	0.726	0.0422	0.101	92.025	217130	0.876
531	276	Own It (feat. Ed Sheeran & Burna Boy)	https://open.spotify.com/track/4QPEwDdOMhY7rNS05mTyMR	2019-12-13	0.817	0.781	0.112	0.123	104.0	216707	0.359
532	55	Bellaquita - Remix	https://open.spotify.com/track/1Xnn1TPyr5h0hpRAT4B4EA	2019-11-22	0.795	0.715	0.0838	0.179	165.941	304733	0.758
533	33	Forever Yours - Avicii Tribute	https://open.spotify.com/track/3o1CUVeHIid49sabk6A6Nf	2020-01-24	0.53	0.612	0.0518	0.246	119.255	193847	0.433
534	28	bury a friend	https://open.spotify.com/track/4SSnFejRGlZikf02HLewEF	2019-01-30	0.887	0.388	0.349	0.106	120.035	193143	0.205
535	27	VIBEZ	https://open.spotify.com/track/0fySG6A6qLE8IvDpayb5bM	2019-09-27	0.768	0.652	0.307	0.107	154.187	144935	0.777
536	56	HIGHEST IN THE ROOM (feat. ROSALÍA & Lil Baby) - REMIX	https://open.spotify.com/track/7h0d2h0fUmzbs7zeFigJPn	2019-12-27	0.559	0.491	0.0346	0.0992	153.131	244874	0.114
537	277	Yellow Hearts	https://open.spotify.com/track/2W4yABdLc4Jnds67Poi5Nl	2019-06-18	0.866	0.438	0.0719	0.0743	129.039	223258	0.695
538	79	Anyone	https://open.spotify.com/track/18ssFhD04lWo1RzpcohnrG	2020-01-26	0.686	0.538	0.0345	0.113	115.884	190779	0.584
539	278	Quizas	https://open.spotify.com/track/5Id5B3dxJZhPcV9GzgYZZe	2019-10-11	0.727	0.815	0.153	0.231	176.075	216067	0.677
540	40	me & ur ghost	https://open.spotify.com/track/4yJiXq86uM56uIfIZgE440	2020-08-21	0.742	0.679	0.0259	0.0754	100.041	201398	0.856
541	279	Indeciso	https://open.spotify.com/track/59s0s39NFWScuHDbHytI14	2019-08-23	0.738	0.748	0.0453	0.109	94.949	217253	0.896
542	112	Good as Hell (feat. Ariana Grande) - Remix	https://open.spotify.com/track/07Oz5StQ7GRoygNLaXs2pd	2016-03-08	0.668	0.892	0.0645	0.735	95.927	159011	0.478
543	15	FML	https://open.spotify.com/track/6lruHh1jF7ezgbLv72xYmf	2018-06-03	0.822	0.575	0.0934	0.106	100.087	223000	0.616
544	280	Trampoline (with ZAYN)	https://open.spotify.com/track/2ez6qvOTHKeI3ss80NGqnI	2019-09-26	0.619	0.459	0.0334	0.137	126.803	184280	0.498
545	281	Liberdade Provisória - Ao Vivo	https://open.spotify.com/track/3Ghyp3X5Ua9ypHnBIgOObI	2020-01-31	0.668	0.684	0.0527	0.923	108.138	187986	0.7
546	123	Si Te Vas	https://open.spotify.com/track/6Y4PDQv4XjYjHLeLmvyOt0	2019-09-26	0.73	0.644	0.132	0.143	174.101	204907	0.554
547	282	GOODMORNINGTOKYO!	https://open.spotify.com/track/0Q2n5yzl2XRqYbV77tZNYp	2019-10-18	0.907	0.539	0.36	0.253	124.918	150115	0.664
548	120	Yo x Ti, Tu x Mi	https://open.spotify.com/track/7BlBVFwvbWvcwNcUarQmjk	2019-08-15	0.78	0.759	0.225	0.143	91.952	201040	0.579
549	112	Truth Hurts	https://open.spotify.com/track/3HWzoMvoF3TQfYg4UPszDq	2019-04-19	0.715	0.624	0.114	0.123	158.087	173325	0.412
550	283	King Of My City	https://open.spotify.com/track/4GyMIm2BEMoOXjmIvSpfLi	2020-01-31	0.679	0.679	0.167	0.153	119.921	148676	0.245
551	28	all the good girls go to hell	https://open.spotify.com/track/6IRdLKIyS4p7XNiP8r6rsx	2019-03-29	0.726	0.444	0.372	0.177	185.044	168840	0.569
552	111	Soltera - Remix	https://open.spotify.com/track/4t9a07PAghtQMRAIP9FQ7Z	2019-05-10	0.795	0.783	0.0432	0.437	92.01	266087	0.799
553	26	Those Kinda Nights (feat. Ed Sheeran)	https://open.spotify.com/track/0VSzREd1OjEWJ9tXoFHRQH	2020-01-17	0.794	0.637	0.339	0.0919	103.868	177693	0.393
554	44	Girl	https://open.spotify.com/track/43NqTeL8pgBxKHPMiJKUP5	2020-01-24	0.733	0.708	0.0937	0.324	93.021	186427	0.694
555	284	Mon Ami	https://open.spotify.com/track/1R4xkZXQUQ8QJtAdwHkSgC	2020-01-29	0.801	0.731	0.383	0.111	105.666	138409	0.537
556	234	You Need To Calm Down	https://open.spotify.com/track/6RRNNciQGZEXnqk8SQ9yv5	2019-08-23	0.771	0.671	0.0553	0.0637	85.026	171360	0.714
557	154	Infeliz	https://open.spotify.com/track/4z6wo6PJG4Fve45OXK6D9m	2019-12-20	0.713	0.798	0.219	0.246	176.073	221103	0.721
558	278	Perreo en La Luna	https://open.spotify.com/track/0RDgqtvOHLwcI6yz9bjsZV	2019-10-11	0.711	0.757	0.29	0.367	174.013	218587	0.724
559	134	No Guidance (feat. Drake)	https://open.spotify.com/track/6XHVuErjQ4XNm6nDPVCxVX	2019-06-28	0.696	0.454	0.153	0.155	92.928	260640	0.136
560	28	wish you were gay	https://open.spotify.com/track/3Fj47GNK2kUF0uaEDgXLaD	2019-03-29	0.853	0.351	0.241	0.752	118.028	221543	0.282
561	285	Psycho	https://open.spotify.com/track/3CYH422oy1cZNoo0GTG1TK	2019-12-23	0.664	0.666	0.0446	0.0854	139.987	210560	0.405
562	28	i love you	https://open.spotify.com/track/6CcJMwBtXByIz4zQLzFkKc	2019-03-29	0.42	0.131	0.0382	0.109	137.421	291796	0.12
563	110	Sum 2 Prove	https://open.spotify.com/track/2u3EyuCqqV31woqGvO9LBz	2020-01-10	0.823	0.552	0.324	0.122	124.038	205760	0.418
564	286	Que Calor (with J Balvin & El Alfa)	https://open.spotify.com/track/1G2CAJeP7rCwOZjlSJ0Zw3	2019-12-13	0.873	0.656	0.068	0.0726	125.982	206811	0.546
565	287	Break My Stride	https://open.spotify.com/track/1mCsF9Tw4AkIZOjvZbZZdT	1983-03-19	0.917	0.588	0.0607	0.0914	110.077	184480	0.828
566	120	Con Altura	https://open.spotify.com/track/2qG5sZ7Si6sdK74qLxedYM	2019-03-28	0.882	0.689	0.124	0.0501	97.963	161627	0.746
567	288	EARFQUAKE	https://open.spotify.com/track/5hVghJ4KaYES3BFUATCYn0	2019-05-17	0.554	0.498	0.0685	0.795	79.635	190067	0.413
568	139	DJ No Pare (feat. Zion, Dalex, Lenny Tavárez) - Remix	https://open.spotify.com/track/1ndyl3wJCFs872XZ3ztPk6	2019-09-06	0.743	0.709	0.0879	0.0809	170.001	258600	0.831
569	289	Loco Contigo (feat. J. Balvin & Tyga)	https://open.spotify.com/track/6osaMSJh9NguagEDQcZaKx	2019-07-25	0.694	0.758	0.218	0.102	192.091	185195	0.371
570	20	QUE PRETENDES	https://open.spotify.com/track/25ZAibhr3bdlMCLmubZDVt	2019-06-28	0.639	0.791	0.253	0.362	92.603	222347	0.939
571	290	Pa' Olvidarme De Ella	https://open.spotify.com/track/1cVlW9WQiGlFdWUXFdFZGh	2019-09-06	0.728	0.542	0.0514	0.136	90.016	227234	0.637
572	291	Kein Wort	https://open.spotify.com/track/1hoLUVBx0ixX3kn0EX0P5n	2020-01-16	0.746	0.592	0.0914	0.187	160.065	162094	0.629
573	292	All I Want - From "High School Musical: The Musical: The Series"	https://open.spotify.com/track/4Yxc55NX3tAXC2mHRAhtcW	2019-11-27	0.376	0.43	0.0328	0.0912	77.599	177323	0.129
574	27	Suge	https://open.spotify.com/track/2gwkD6igEhQbDQegRCcdoB	2019-03-01	0.876	0.662	0.426	0.127	75.445	163320	0.844
575	56	Hot (Remix) [feat. Gunna and Travis Scott]	https://open.spotify.com/track/4ea9w8c4ROqiZpJVhfBA3m	2019-11-01	0.845	0.631	0.216	0.0806	111.983	279907	0.545
576	196	Con Calma	https://open.spotify.com/track/5w9c2J52mkdntKOmRLeM2m	2019-01-24	0.737	0.86	0.0594	0.0574	93.989	193227	0.656
577	28	you should see me in a crown	https://open.spotify.com/track/3XF5xLJHOQQRbWya6hBp7d	2018-07-18	0.683	0.534	0.189	0.148	150.469	180567	0.284
578	38	Graveyard	https://open.spotify.com/track/2ufmtcIFdFpuUYBPXK5f67	2020-01-17	0.667	0.583	0.0747	0.181	92.043	181806	0.187
579	155	Wake Up Call (feat. Trippie Redd)	https://open.spotify.com/track/5MYzajZVxBaPT2JUSRa99L	2020-01-27	0.642	0.669	0.0486	0.119	156.084	175067	0.227
580	60	Only Human	https://open.spotify.com/track/0DiDStADDVh3SvAsoJAFMk	2019-06-07	0.795	0.496	0.0722	0.0645	94.01	183000	0.874
581	123	Otro Trago - Remix	https://open.spotify.com/track/4bTZeO72FwMa6wKOiqoynL	2019-07-26	0.725	0.79	0.197	0.0602	175.988	287773	0.763
582	53	Talk (feat. Disclosure)	https://open.spotify.com/track/6TqXcAFInzjp0bODyvrWEq	2019-04-05	0.9	0.4	0.127	0.0599	135.984	197573	0.346
583	293	MIDDLE CHILD	https://open.spotify.com/track/2JvzF1RMd7lE3KmFlsyZD8	2019-01-23	0.837	0.364	0.276	0.271	123.984	213594	0.463
584	294	Turn Me On (feat. Vula)	https://open.spotify.com/track/0qaWEvPkts34WF68r8Dzx9	2019-09-13	0.737	0.828	0.0396	0.0862	124.051	208474	0.517
585	76	Hips Don't Lie (feat. Wyclef Jean)	https://open.spotify.com/track/3ZFTkvIE7kyPt6Nu3PEa7V	2005-11-28	0.778	0.824	0.0707	0.405	100.024	218093	0.758
586	41	Liar	https://open.spotify.com/track/073ILU1C3APNRGF66VhtyA	2019-09-04	0.74	0.498	0.0456	0.319	98.016	207039	0.652
587	295	Going Bad (feat. Drake)	https://open.spotify.com/track/2IRZnDFmlqMuOrYOLnZZyc	2018-11-30	0.889	0.496	0.0905	0.252	86.003	180522	0.544
588	234	ME! (feat. Brendon Urie of Panic! At The Disco)	https://open.spotify.com/track/2Rk4JlNc2TPmZe2af99d45	2019-08-23	0.61	0.83	0.0571	0.118	182.162	193000	0.728
589	75	Panini	https://open.spotify.com/track/1000nHvUdawXuUHgBod4Wv	2019-09-13	0.703	0.594	0.0752	0.123	153.848	114893	0.475
590	106	Mean It	https://open.spotify.com/track/2uiOyiRxtNix52dpeaDQPM	2020-03-06	0.746	0.45	0.0872	0.172	95.998	232853	0.336
591	28	idontwannabeyouanymore	https://open.spotify.com/track/40T5GIqQ1CegGm2PTEl8Bu	2017-12-22	0.483	0.412	0.0402	0.116	170.163	203569	0.247
592	293	The London (feat. J. Cole & Travis Scott)	https://open.spotify.com/track/3s4mrPrEFFPF0LmAfutW0n	2019-05-23	0.796	0.586	0.147	0.132	97.981	200107	0.179
593	296	Tudo Ok	https://open.spotify.com/track/4HUZBG98TYbxSR9V1V2DWS	2019-11-15	0.814	0.755	0.0942	0.306	79.976	178500	0.963
594	54	223's (feat. 9lokknine)	https://open.spotify.com/track/29ZXwWOOLz9t5fa3eT3i7T	2019-08-09	0.932	0.547	0.333	0.0924	94.998	176640	0.695
595	71	GANG GANG	https://open.spotify.com/track/6uJONCdr2rC65BNmCnTBWK	2019-12-27	0.859	0.6	0.301	0.353	123.017	244761	0.568
596	71	WHAT TO DO? (feat. Don Toliver)	https://open.spotify.com/track/4AO1XhrgJczQ9bNVxdfKQe	2019-12-27	0.643	0.594	0.0312	0.115	118.037	250142	0.195
597	86	Had Enough (feat. Quavo & Offset)	https://open.spotify.com/track/2jrAaawDRCn1JjeouxAyDN	2019-12-27	0.75	0.789	0.108	0.129	147.957	157133	0.673
598	280	Trampoline	https://open.spotify.com/track/4HBvwhhYo7YiYXkUDrOHzS	2019-09-26	0.619	0.459	0.0334	0.137	126.803	184280	0.498
599	71	GATTI	https://open.spotify.com/track/40mjsnRjCpycdUw3xhS20g	2019-12-27	0.594	0.676	0.344	0.163	143.477	181145	0.472
600	255	Into the Unknown	https://open.spotify.com/track/3Z0oQ8r78OUaHvGPiDBR3W	2019-11-15	0.323	0.405	0.0413	0.138	145.104	194848	0.274
601	64	Look At Her Now	https://open.spotify.com/track/4yI3HpbSFSgFZtJP2kDe5m	2019-10-24	0.753	0.564	0.251	0.359	77.341	162596	0.55
602	53	Up All Night	https://open.spotify.com/track/1mpD5Q8IM32I4bF6eCpU74	2019-11-14	0.665	0.712	0.0527	0.102	93.992	157220	0.669
603	104	Family	https://open.spotify.com/track/3TKpJrY9q49Mj1JOsM9zGL	2019-12-06	0.584	0.607	0.0356	0.101	117.817	194827	0.374
604	297	Writing on the Wall (feat. Post Malone, Cardi B & Rvssian)	https://open.spotify.com/track/7ntUbTIwmwOD6ygCMRZT6e	2019-09-27	0.773	0.836	0.153	0.0828	112.01	201271	0.497
605	48	Legends	https://open.spotify.com/track/1Knctxx9vGZxpZfF66BIEa	2018-06-22	0.594	0.798	0.0844	0.143	142.049	191840	0.381
606	9	Candy	https://open.spotify.com/track/1VJwtWR6z7SpZRwipI12be	2018-03-30	0.689	0.516	0.0444	0.163	124.876	190920	0.209
607	298	Calma - Remix	https://open.spotify.com/track/5iwz1NiezX7WWjnCgY5TH4	2018-10-05	0.826	0.773	0.0524	0.143	126.899	238200	0.761
608	8	Stuck In A Dream (feat. Gunna)	https://open.spotify.com/track/7iHHxY2NLlJRAmlAmC4ahQ	2019-11-08	0.748	0.648	0.0816	0.126	139.952	123560	0.726
609	299	Nice To Meet Ya	https://open.spotify.com/track/3cphb8kdsjElYR7r5icK3H	2019-10-04	0.591	0.841	0.0304	0.395	109.034	158805	0.392
610	300	Don't Call Me Up	https://open.spotify.com/track/5WHTFyqSii0lmT9R21abT8	2019-01-18	0.674	0.881	0.147	0.0793	98.994	178480	0.234
611	71	JACKBOYS	https://open.spotify.com/track/62zKJrpbLxz6InR3tGyr7o	2019-12-27	0.413	0.13	0.0336	0.111	123.342	46837	0.0676
612	301	One Kiss (with Dua Lipa)	https://open.spotify.com/track/7ef4DlsgrMEH11cDZd32M6	2018-04-06	0.791	0.862	0.11	0.0814	123.994	214847	0.592
613	19	Take What You Want (feat. Ozzy Osbourne & Travis Scott)	https://open.spotify.com/track/7CZyCXKG6d5ALeq41sLzbw	2019-09-06	0.499	0.8	0.0502	0.147	139.919	229573	0.272
614	302	Roller	https://open.spotify.com/track/6hw1Sy9wZ8UCxYGdpKrU6M	2019-10-25	0.941	0.758	0.17	0.193	128.017	157093	0.683
615	289	Taki Taki (feat. Selena Gomez, Ozuna & Cardi B)	https://open.spotify.com/track/0KoiMHhqKLoL4xM54rcWYY	2019-07-25	0.842	0.801	0.228	0.0642	95.881	212500	0.617
616	303	SENTADÃO	https://open.spotify.com/track/4lKuzrdZrJuCAedbIslF3A	2019-11-22	0.68	0.869	0.0589	0.223	173.997	143448	0.924
617	212	Combatchy (feat. MC Rebecca)	https://open.spotify.com/track/2bPtwnrpFNEe8N7Q85kLHw	2019-11-20	0.826	0.73	0.0809	0.0197	150.134	157600	0.605
618	159	11 PM	https://open.spotify.com/track/7KbF6AdprOXEEHlsq11Z6d	2019-05-17	0.777	0.712	0.277	0.091	95.692	175733	0.68
619	304	Wake Me Up	https://open.spotify.com/track/4h8VwCb1MTGoLKueQ1WgbD	2013-01-01	0.532	0.783	0.0523	0.161	124.08	247427	0.643
620	75	Old Town Road	https://open.spotify.com/track/0F7FA14euOIX8KcbEturGH	2019-06-21	0.878	0.619	0.102	0.113	136.041	157067	0.639
621	42	VALENTINO	https://open.spotify.com/track/6piAUJJQFD8oHDUr0b7l7q	2019-11-22	0.746	0.717	0.179	0.132	150.964	179133	0.523
622	62	Thunder	https://open.spotify.com/track/1zB4vmk8tFRmM9UULNzbLB	2017-06-23	0.605	0.822	0.0438	0.147	167.997	187147	0.288
623	305	Can't Hold Us - feat. Ray Dalton	https://open.spotify.com/track/3bidbhpOYeV4knp8AIu8Xn	2012-10-09	0.641	0.922	0.0786	0.0862	146.078	258343	0.847
624	306	2002	https://open.spotify.com/track/2BgEsaKNfHUdlh97KmvFyo	2018-04-27	0.697	0.683	0.117	0.137	96.133	186987	0.603
625	307	Death	https://open.spotify.com/track/3Kd6Wp3lG5HXMB2dlvuy7y	2019-11-22	0.802	0.82	0.146	0.149	164.005	172196	0.613
626	308	Post Malone (feat. RANI)	https://open.spotify.com/track/36orMWv2PgvnzXsd5CJ0yL	2019-05-24	0.59	0.642	0.122	0.105	107.356	174444	0.651
627	48	Let Me Know (I Wonder Why Freestyle)	https://open.spotify.com/track/3wwo0bJvDSorOpNfzEkfXx	2019-12-07	0.635	0.537	0.0832	0.418	125.028	215381	0.383
628	309	Ne reviens pas	https://open.spotify.com/track/4TnFANpjVwVKWzkxNzIyFH	2019-11-29	0.932	0.778	0.0638	0.168	124.996	188613	0.933
629	130	Fantasía	https://open.spotify.com/track/40rXWke6SnXiGkSmaT8ZUr	2019-11-29	0.695	0.719	0.0903	0.0884	180.074	175187	0.781
630	73	Another One Bites The Dust - Remastered 2011	https://open.spotify.com/track/5vdp5UmvTsnMEMESIF2Ym7	1980-06-27	0.933	0.528	0.162	0.163	109.975	214653	0.756
631	4	New Rules	https://open.spotify.com/track/2xJCMIJfcNYDc5iR0sAm2O	2017-06-02	0.762	0.7	0.0694	0.153	116.073	209320	0.608
632	310	Cheirosa - Ao Vivo	https://open.spotify.com/track/2PWjKmjyTZeDpmOUa3a5da	2019-10-11	0.528	0.87	0.0851	0.333	152.37	181930	0.714
633	41	Havana (feat. Young Thug)	https://open.spotify.com/track/1rfofaqEpACxVEHIZBJe6W	2018-01-12	0.765	0.523	0.03	0.132	104.988	217307	0.394
634	311	Surtada - Remix Brega Funk	https://open.spotify.com/track/5F8ffc8KWKNawllr5WsW0r	2019-09-25	0.832	0.55	0.0587	0.182	154.064	152784	0.881
635	234	Lover (Remix) [feat. Shawn Mendes]	https://open.spotify.com/track/3i9UVldZOE0aD0JnyfAZZ0	2019-11-13	0.448	0.603	0.064	0.0862	205.272	221307	0.422
636	48	Real Shit (with benny blanco)	https://open.spotify.com/track/3uVPLtkmDu8pDkYEAVqbgS	2020-12-02	0.703	0.703	0.133	0.12	76.017	183783	0.697
637	13	YO VISTO ASÍ	https://open.spotify.com/track/5fROvzNghPid8mbKNDYvpJ	2020-11-27	0.688	0.881	0.0474	0.0804	123.013	191526	0.677
638	29	Teach Me How To Love	https://open.spotify.com/track/5LZtB6nxvjIhUoElp3Zqk0	2020-12-04	0.592	0.885	0.0807	0.0843	98.991	202357	0.731
639	13	BOOKER T	https://open.spotify.com/track/26w9NTiE9NGjW1ZvIOd1So	2020-11-27	0.883	0.6	0.37	0.0931	113.903	156430	0.691
640	1	Blinding Lights (with ROSALÍA) - Remix	https://open.spotify.com/track/7MXgrcOQAJ5VwSNUL0lDd3	2020-12-04	0.49	0.694	0.0618	0.0946	170.903	216123	0.249
641	13	TE DESEO LO MEJOR	https://open.spotify.com/track/23XjN1s3DZC8Q9ZwuorYY4	2020-11-27	0.763	0.597	0.0416	0.111	126.054	139576	0.194
642	110	Errbody	https://open.spotify.com/track/6eVxH9Kyanzrw636zJRPcw	2020-12-03	0.887	0.606	0.324	0.151	139.995	210699	0.272
643	169	Angels Like You	https://open.spotify.com/track/1daDRI9ahBonbWD8YcxOIB	2020-11-27	0.672	0.642	0.0313	0.1	121.981	196453	0.494
644	158	Blue & Grey	https://open.spotify.com/track/0n2moJpAEWHwaPYYjkzMDl	2020-11-20	0.547	0.605	0.0415	0.125	121.953	254950	0.364
645	13	LA DROGA	https://open.spotify.com/track/67ACYA3UI6QMNtHX6b34wX	2020-11-27	0.643	0.727	0.0389	0.123	90.019	162299	0.295
646	312	Jenny (I Wanna Ruin Our Friendship)	https://open.spotify.com/track/7lgA34nFXxjqQgyLkPUcLv	2020-12-04	0.668	0.798	0.0334	0.277	133.928	215280	0.575
647	42	Mood (Remix) feat. Justin Bieber, J Balvin & iann dior	https://open.spotify.com/track/6FuGJB290AQMAHTfjOYVaK	2020-11-06	0.721	0.745	0.0366	0.372	90.988	192745	0.699
648	13	HOY COBRÉ	https://open.spotify.com/track/0tjZv2hChdHZCW1zFXpy1J	2020-11-27	0.86	0.725	0.249	0.0994	145.001	162151	0.375
649	13	MALDITA POBREZA	https://open.spotify.com/track/0Lsis3LB0XAK6XlTHXaJk2	2020-11-27	0.762	0.861	0.0652	0.0956	133.037	213609	0.588
650	13	EL MUNDO ES MÍO	https://open.spotify.com/track/36DHxTW2xdr9GG15T9oK9L	2020-11-27	0.716	0.522	0.0582	0.113	76.993	165199	0.224
651	13	ANTES QUE SE ACABE	https://open.spotify.com/track/7kjEqI6eZ7YlFrGhxixnlN	2020-11-27	0.693	0.549	0.0577	0.324	139.988	221187	0.473
652	13	SORRY PAPI	https://open.spotify.com/track/5jZ32WOU7sqzDYbzINwMUk	2020-11-27	0.612	0.561	0.0851	0.145	191.911	163053	0.393
653	13	120	https://open.spotify.com/track/3KJ3opyV29269SXkPrc19l	2020-11-27	\N	\N	\N	\N	\N	\N	\N
654	13	TRELLAS	https://open.spotify.com/track/09WAnxdBuebQopKhJT3oZS	2020-11-27	0.43	0.412	0.0281	0.324	90.872	157673	0.0508
655	232	Wonderful Christmastime [Edited Version] - Remastered 2011 / Edited Version	https://open.spotify.com/track/7Lbxvt42JsNSKVCaN63qhD	1980-05-16	0.774	0.511	0.0319	0.0672	94.736	227653	0.771
656	158	Fly To My Room	https://open.spotify.com/track/3QH8rQGNFX8VLbCgZ7uPTS	2020-11-20	0.764	0.526	0.212	0.0718	114.91	222243	0.588
657	158	Telepathy	https://open.spotify.com/track/2FVpOsjT1iquZ3SpCjZ9Ne	2020-11-20	0.787	0.669	0.0428	0.123	104.994	202313	0.57
658	158	Dis-ease	https://open.spotify.com/track/54DmTIv86D3sYdiawjULQ0	2020-11-20	0.731	0.845	0.132	0.0782	101.085	239722	0.484
659	158	Stay	https://open.spotify.com/track/3ndCsZfq8OVwwkz9mmZvUz	2020-11-20	0.582	0.693	0.0465	0.13	125.904	204800	0.341
660	169	Heart Of Glass (Live from the iHeart Festival)	https://open.spotify.com/track/5GK1GYXH16RdfmltogHhAk	2020-09-29	0.58	0.908	0.0341	0.087	115.016	213672	0.427
661	313	CANTARES DE NAVIDAD	https://open.spotify.com/track/2Iv6YBslkxslMJQsxshZh5	2020-11-27	0.764	0.523	0.0406	0.352	118.671	199720	0.962
662	169	Plastic Hearts	https://open.spotify.com/track/6qCsKKS7Ol63SJW3LOIX5R	2020-11-27	0.551	0.756	0.0652	0.0765	175.984	205733	0.618
663	32	De Cora <3	https://open.spotify.com/track/22Sh5dlwbERqJAq1fZk5b2	2020-11-13	0.811	0.683	0.241	0.128	176.037	190101	0.571
664	28	my future	https://open.spotify.com/track/2ygvZOXrIeVL4xZmAWJT2C	2020-07-30	0.456	0.285	0.0979	0.307	104.89	210005	0.0809
665	234	cardigan	https://open.spotify.com/track/4R2kfaDFhslZEMJqAFNpdd	2020-07-24	0.613	0.581	0.0424	0.25	130.033	239560	0.551
666	234	exile (feat. Bon Iver)	https://open.spotify.com/track/4pvb0WLRcMtbPGmtejJJ6y	2020-07-24	0.298	0.38	0.0287	0.11	75.602	285634	0.152
667	234	the 1	https://open.spotify.com/track/0Jlcvv8IykzHaSmj49uNW8	2020-07-24	0.777	0.357	0.0522	0.108	139.883	210252	0.172
668	314	Mamichula - con Nicki Nicole	https://open.spotify.com/track/4pXW6ZAHBz7ODXTRKklWrM	2020-07-23	0.696	0.678	0.0735	0.134	91.985	219202	0.346
669	234	the last great american dynasty	https://open.spotify.com/track/2Eeur20xVqfUoM3Q7EFPFt	2020-07-24	0.686	0.662	0.0413	0.109	147.922	230999	0.706
670	234	my tears ricochet	https://open.spotify.com/track/1MgV7FIyNxIG7WzMRJV5HC	2020-07-24	0.456	0.263	0.0332	0.0749	129.86	255894	0.111
671	234	august	https://open.spotify.com/track/3hUxzQpSfdDqwM3ZTFQY0K	2020-07-24	0.532	0.623	0.0331	0.0925	89.937	261923	0.403
672	22	Nobody's Love	https://open.spotify.com/track/3kwgqoBqTwoAH4nT29TYrq	2020-07-24	0.485	0.567	0.0388	0.0949	93.676	211254	0.157
673	234	mirrorball	https://open.spotify.com/track/0ZNU020wNYvgW84iljPkPP	2020-07-24	0.553	0.413	0.0334	0.0594	110.107	208978	0.379
674	234	seven	https://open.spotify.com/track/6KJqZcs9XDgVck7Lg9QOTC	2020-07-24	0.596	0.488	0.0274	0.091	94.926	208907	0.415
675	234	invisible string	https://open.spotify.com/track/6VsvKPJ4xjVNKpI8VVZ3SV	2020-07-24	0.653	0.452	0.055	0.108	83.433	252881	0.45
676	48	Conversations	https://open.spotify.com/track/2fZTS0VboxRpF0FdfY7E5P	2020-07-10	0.747	0.622	0.0838	0.151	159.93	181661	0.57
677	234	this is me trying	https://open.spotify.com/track/7kt9e9LFSpN1zQtYEl19o1	2020-07-24	0.515	0.476	0.0328	0.171	135.886	195097	0.412
678	315	Stunnin' (feat. Harm Franklin)	https://open.spotify.com/track/2D0dj3hVkRQJCp63cxCPEx	2020-10-09	0.885	0.685	0.0627	0.148	99.954	144000	0.937
679	234	illicit affairs	https://open.spotify.com/track/2NmsngXHeC1GQ9wWrzhOMf	2020-07-24	0.559	0.31	0.0338	0.106	119.845	190898	0.46
680	48	Hate The Other Side (with Marshmello & The Kid Laroi)	https://open.spotify.com/track/66FgjA5ZQJJuypFG1bc8se	2020-07-10	0.701	0.65	0.104	0.112	90.003	160212	0.647
681	108	Rags2Riches (feat. ATR Son Son)	https://open.spotify.com/track/1ENdcyhqdylaLsPVgB83qq	2020-04-03	0.904	0.26	0.101	0.121	117.967	167147	0.231
682	90	PORFA Remix ( Feat. Maluma, Nicky Jam, Sech) - Remix	https://open.spotify.com/track/7lUdbnz7wsv3C9zzf4WHl9	2020-06-26	0.793	0.737	0.0785	0.0747	167.969	333800	0.697
683	234	betty	https://open.spotify.com/track/5kI4eCXXzyuIUXjQra0Cxi	2020-07-24	0.593	0.377	0.0253	0.0976	95.939	294521	0.502
684	48	Life's A Mess (feat. Halsey)	https://open.spotify.com/track/4h5N4KyWZMtpeH9vhXSXjd	2020-07-10	0.63	0.446	0.0351	0.166	143.078	202193	0.177
685	89	My Oasis (feat. Burna Boy)	https://open.spotify.com/track/2KoHxhRyWxJzA0VafWd5Nk	2020-07-30	0.691	0.474	0.0583	0.099	143.783	179917	0.381
686	234	mad woman	https://open.spotify.com/track/2QDyYdZyhlP2fp79KZX8Bi	2020-07-24	0.592	0.699	0.0471	0.114	141.916	237258	0.506
687	316	Only You Freestyle	https://open.spotify.com/track/4OENnoidV0h8gJV6bhrw7r	2020-07-20	0.68	0.826	0.27	0.254	146.95	248937	0.804
688	110	We Paid (feat. 42 Dugg)	https://open.spotify.com/track/6gxKUmycQX7uyMwJcweFjp	2020-05-01	0.926	0.542	0.293	0.0877	135.14	181929	0.564
689	234	epiphany	https://open.spotify.com/track/08fa9LFcFBTcilB3iq2e2A	2020-07-24	0.354	0.267	0.0281	0.0858	94.219	289749	0.113
690	317	Mariposa	https://open.spotify.com/track/4ja2gzrNh9VNigzoXfmbwD	2019-08-28	0.676	0.525	0.028	0.356	112.011	210000	0.421
691	145	Oh Juliana	https://open.spotify.com/track/4xWzZmX4K1yyrdtRfbUvjt	2020-06-30	0.799	0.568	0.25	0.0892	129.63	153078	0.963
692	234	peace	https://open.spotify.com/track/7MbT4I8qGntX4fMdqMQgke	2020-07-24	0.647	0.272	0.0916	0.0918	150.044	234000	0.339
693	58	Alane	https://open.spotify.com/track/2u6Jm2klS4yvAlbSHlxUwI	2020-06-19	0.581	0.799	0.164	0.11	124.002	175016	0.662
694	302	Bläulich	https://open.spotify.com/track/2WRTnY0slmFgWcrmEr8dPj	2020-07-31	0.79	0.704	0.417	0.113	154.007	196213	0.212
695	318	Move Ya Hips (feat. Nicki Minaj & MadeinTYO)	https://open.spotify.com/track/5esKpsrB3TbGHwFaAjIGMx	2020-09-25	0.808	0.676	0.223	0.11	144.018	144973	0.0763
696	302	Sie ruft	https://open.spotify.com/track/4CyCHkhRsDXUeP5K4Y3xjU	2020-07-31	0.819	0.507	0.0881	0.105	130.009	152013	0.634
697	205	Tilidin Weg	https://open.spotify.com/track/1g3J9W88hTG173ySZR6E9S	2020-09-10	0.882	0.526	0.237	0.0835	109.075	180950	0.182
698	24	Over Your Head	https://open.spotify.com/track/0Tcw8w9pvPrZoORgxsNASW	2020-07-31	0.773	0.742	0.162	0.558	148.949	186843	0.35
699	33	What's Love Got to Do with It	https://open.spotify.com/track/3Be7CLdHZpyzsVijme39cW	2020-07-17	0.75	0.664	0.154	0.0632	105.023	208156	0.617
700	74	El Mismo Aire - con Pablo Alborán	https://open.spotify.com/track/5EbtodsuLbxrFDH6j5avVS	2020-06-10	0.483	0.492	0.295	0.323	144.511	188213	0.66
701	234	hoax	https://open.spotify.com/track/6MWoRt97mnSTXZhu3ggi9C	2020-07-24	0.662	0.181	0.0415	0.133	118.819	220043	0.429
702	319	Desce Pro Play (PA PA PA)	https://open.spotify.com/track/4zGtfOglDBfVUypabBwIjQ	2020-06-26	0.935	0.71	0.158	0.173	100.009	168507	0.635
703	190	Jolie nana	https://open.spotify.com/track/34FbkFgAbv4ffvhL2XQMVm	2020-11-13	0.813	0.64	0.272	0.131	92.989	147076	0.488
704	48	Blood On My Jeans	https://open.spotify.com/track/3MmCFghNjzZMn3HKqbVizn	2020-07-10	0.868	0.55	0.226	0.109	117.943	154767	0.464
705	302	Unterwegs	https://open.spotify.com/track/7oJW8vNkosiWuKJtsq3mZs	2020-08-07	0.88	0.607	0.0777	0.15	126.039	233905	0.823
706	66	Reggaetonera	https://open.spotify.com/track/6yVkakCN460KOVol9ZazjH	2020-05-29	0.694	0.796	0.0565	0.108	93.064	212312	0.515
707	131	Narrow Road (feat. Lil Baby)	https://open.spotify.com/track/3GZd1aDsgKL71Kt3VIp0hc	2020-07-30	0.614	0.553	0.169	0.203	159.999	240297	0.161
708	85	21	https://open.spotify.com/track/3JKgcAa7r07ocVWcV8bS0H	2020-05-15	0.783	0.479	0.541	0.101	176.027	163798	0.533
709	320	Singapur	https://open.spotify.com/track/4QfZYDhGZc0T2RDvGiI69E	2020-05-15	0.853	0.909	0.229	0.129	112.987	178407	0.803
710	184	Ego Death (feat. Kanye West, FKA twigs & Skrillex)	https://open.spotify.com/track/4JB0EAT4BkLShTyTt50FmO	2020-10-22	0.818	0.598	0.113	0.634	111.052	231618	0.331
711	321	Como Llora	https://open.spotify.com/track/52zq2a71SGs3f1vJuv59ui	2020-02-07	0.827	0.629	0.185	0.084	88.064	187500	0.486
712	322	Let Her Go	https://open.spotify.com/track/2jyjhRf6DVbMPU5zxagN2h	2013-02-17	0.479	0.545	0.0688	0.0963	74.897	252733	0.243
713	323	Never Let Me Down	https://open.spotify.com/track/5TGcyccg8Hkgn9jB7gUpMN	2020-04-24	0.758	0.848	0.0457	0.114	127.96	153149	0.706
714	168	Coño	https://open.spotify.com/track/5DV4ZSCqbFv74ui3ZhimXo	2020-07-03	0.899	0.528	0.181	0.105	100.037	111852	0.456
715	171	Bet You Wanna (feat. Cardi B)	https://open.spotify.com/track/7iAgNZdotu40NwtoIWJHFe	2020-10-02	0.653	0.662	0.162	0.0626	111.712	161168	0.674
716	324	Baby, I'm Jealous (feat. Doja Cat)	https://open.spotify.com/track/2fTdRdN73RgIgcUZN33dvt	2020-10-09	0.737	0.867	0.0458	0.32	98.05	175873	0.506
717	171	Love To Hate Me	https://open.spotify.com/track/7iKDsPfLT0d5mu2htfMKBZ	2020-10-02	0.686	0.64	0.159	0.0801	162.225	171798	0.597
718	171	Crazy Over You	https://open.spotify.com/track/7qq0EOPW4RRlqdvMBmdd73	2020-10-02	0.804	0.633	0.0612	0.102	115.002	163946	0.67
719	325	Wolves (feat. Post Malone)	https://open.spotify.com/track/33gwZOGJWEZ7dRWPqPxBEZ	2020-09-04	0.724	0.675	0.0867	0.351	160.048	199758	0.325
720	326	Bande organisée	https://open.spotify.com/track/6YzQOngfcV0W9F8UOTnEEK	2020-08-15	0.901	0.939	0.274	0.0643	142.948	356347	0.805
721	171	You Never Know	https://open.spotify.com/track/39kzWAiVPpycdMpr745oPj	2020-10-02	0.535	0.434	0.0505	0.253	144.497	229236	0.271
722	68	OK Not To Be OK	https://open.spotify.com/track/0zzVTGyRrWpQu8Fr28NRAv	2020-09-10	0.743	0.837	0.0649	0.0743	103.072	159863	0.263
723	194	Glock In My Lap	https://open.spotify.com/track/6pcywuOeGGWeOQzdUyti6k	2020-10-02	0.847	0.733	0.16	0.151	130.029	193591	0.202
724	327	Better	https://open.spotify.com/track/1dLXLETYiZohIZWnse4ypG	2020-09-25	0.637	0.418	0.301	0.131	84.295	174517	0.0807
725	328	In the End	https://open.spotify.com/track/60a0Rd6pjrkxjPbaKzXjfq	2000-10-24	0.556	0.864	0.0584	0.209	105.143	216880	0.4
726	45	Photograph	https://open.spotify.com/track/6fxVffaTuwjgEk5h9QyRjy	2014-06-21	0.614	0.379	0.0476	0.0986	107.989	258987	0.201
727	45	Thinking out Loud	https://open.spotify.com/track/1Slwb6dOYkBlWal1PGtnNg	2014-06-21	0.781	0.445	0.0295	0.184	78.998	281560	0.591
728	329	Take Me To Church	https://open.spotify.com/track/3dYD57lRAUcMHufyqn9GcI	2014-09-19	0.566	0.664	0.0464	0.116	128.945	241693	0.437
729	158	Boy With Luv (feat. Halsey)	https://open.spotify.com/track/5KawlOMHjWeUjQtnuRs22c	2019-04-12	0.645	0.862	0.0965	0.192	119.991	229773	0.798
730	179	forget me too (feat. Halsey)	https://open.spotify.com/track/1VSuFS7PahCN3SWbOcQ98m	2020-09-25	0.654	0.875	0.0744	0.194	99.975	171621	0.522
731	330	Wonderwall - Remastered	https://open.spotify.com/track/5qqabIl2vWzo9ApSC317sa	1995-10-30	0.375	0.893	0.0406	0.187	174.323	258773	0.434
732	24	Drankin N Smokin	https://open.spotify.com/track/0k7wmahjkn389wAZdz19Cv	2020-11-13	0.752	0.658	0.342	0.0927	151.951	213520	0.387
733	126	ALWAYS DO	https://open.spotify.com/track/3QCU8BT0zDS9LPVfEhRFEE	2020-11-06	0.762	0.426	0.113	0.0858	167.827	151705	0.582
734	24	Stripes Like Burberry	https://open.spotify.com/track/6lt8iodSkYWEV0ifKCSlfg	2020-11-13	0.758	0.574	0.217	0.144	144.081	274313	0.706
735	331	Sweet Melody	https://open.spotify.com/track/76Tuo484SLohJakHLnGI3B	2020-11-06	0.448	0.824	0.057	0.113	119.965	213693	0.419
736	24	That’s It	https://open.spotify.com/track/5n6gBhdEjCuj3obgCoTEFD	2020-11-13	0.94	0.532	0.358	0.0925	123.043	228796	0.599
737	249	Yellow	https://open.spotify.com/track/3AJwUDP919kvQ9QcozQPxg	2000-07-10	0.429	0.661	0.0281	0.234	173.372	266773	0.285
738	119	BLACK PARADE	https://open.spotify.com/track/2qzUpSVI4NnPyWxbXwumTj	2020-06-19	0.824	0.555	0.05	0.217	120.002	281273	0.0611
739	158	Stay Gold	https://open.spotify.com/track/0UwQTbq7ZtBJ7v530mpaxP	2020-07-14	0.723	0.634	0.0542	0.0787	129.017	243267	0.582
740	332	XXL	https://open.spotify.com/track/0p3euGPg5LgFeQGC7bBFuR	2020-06-26	0.798	0.527	0.0447	0.108	114.008	166173	0.548
741	11	Past Life (with Selena Gomez)	https://open.spotify.com/track/4P6IttK2PRBjyr3fm0pP7t	2020-06-26	0.575	0.543	0.0529	0.176	159.905	186480	0.283
742	333	Wash Us In The Blood	https://open.spotify.com/track/7mEUjhl6aTztdHCrxoTgBG	2020-06-30	0.67	0.847	0.409	0.304	137.22	189827	0.381
743	18	Girls in the Hood	https://open.spotify.com/track/6WbTTAGKrQtCQvmc5BuYfh	2020-06-26	0.821	0.863	0.353	0.0377	180.013	154324	0.874
744	334	Parasite Eve	https://open.spotify.com/track/5OxclJsdFESni44YlpNpkR	2020-06-25	0.589	0.797	0.15	0.383	102.489	291813	0.232
745	335	Prospect (ft. Lil Baby)	https://open.spotify.com/track/4iHSE5R1U8jf84tRn52xRt	2020-06-12	0.816	0.579	0.0867	0.127	120.078	226314	0.43
746	336	Karaoke	https://open.spotify.com/track/0D4GpOPInKiPxEfQMchu4p	2020-06-11	0.929	0.625	0.14	0.386	122.03	156493	0.578
747	171	Kill This Love	https://open.spotify.com/track/4pUCKHjJ4Ijewc37rRrvHn	2019-04-05	0.763	0.835	0.191	0.225	131.875	191050	0.645
748	337	Good Days	https://open.spotify.com/track/3YJJjQPAbDT7mGpX3WtQ9A	2020-12-25	0.436	0.655	0.0583	0.688	121.002	279204	0.412
749	109	MODO TURBO	https://open.spotify.com/track/0YqTL3nSL36OFdHwHoqCag	2020-04-26	0.655	0.726	0.0796	0.232	160.064	150260	0.766
750	152	Slay3r	https://open.spotify.com/track/1eMNW1HQjF1dbb4GtnmpaX	2020-12-25	0.885	0.661	0.141	0.334	140.028	164591	0.436
751	338	Meia Noite (Você tem meu Whatsapp)	https://open.spotify.com/track/6sPBi0qLI6KM3yXX56NxsA	2020-12-17	0.709	0.816	0.0346	0.146	150.06	237900	0.921
752	168	Love Not War (The Tampa Beat)	https://open.spotify.com/track/4Lt6GXGzYsa1tgkv3nGSTm	2020-11-20	0.738	0.85	0.0642	0.23	98.013	192921	0.865
753	339	Heat Waves	https://open.spotify.com/track/02MWAaffLxlfxAUY7c5dvx	2020-08-07	0.761	0.525	0.0944	0.0921	80.87	238805	0.531
754	340	Amor ou o Litrão	https://open.spotify.com/track/7qmnP8Woc47dLSrMD5MxL1	2020-10-16	0.934	0.707	0.0646	0.0628	138.023	173913	0.961
755	25	Whats Poppin (feat. DaBaby, Tory Lanez & Lil Wayne) [Remix] - Bonus Track	https://open.spotify.com/track/0ZLuW8uOXdFNWcI40C0OC2	2020-12-11	0.904	0.723	0.26	0.185	145.013	227478	0.835
756	58	All We Got (feat. KIDDO)	https://open.spotify.com/track/1FP9s72rDYty6mfoOEYKnE	2020-10-16	0.504	0.76	0.0426	0.151	183.933	190218	0.64
757	197	Basta Você Me Ligar - Ao Vivo	https://open.spotify.com/track/3rRin3LyLY92kpEbkCgwf4	2020-05-29	0.599	0.914	0.0629	0.694	168.008	182977	0.831
758	341	Why'd You Only Call Me When You're High?	https://open.spotify.com/track/48q0vSHcJdhK3IiXH8C5WJ	2013-09-09	0.691	0.631	0.0368	0.104	92.004	161124	0.8
759	341	Do I Wanna Know?	https://open.spotify.com/track/3rq5w4bQGigXOfdN30ATJt	2013-09-09	0.548	0.532	0.0323	0.217	85.03	272394	0.405
760	310	Lance Individual	https://open.spotify.com/track/7GLWWrk1YlkPYqJK3ynIA0	2020-11-13	0.752	0.62	0.0509	0.075	117.399	164459	0.962
761	139	Ponte Pa' Mi	https://open.spotify.com/track/4C6BlqqMwjFzOXzqpTeoWR	2020-11-20	0.878	0.713	0.0948	0.0822	92.028	202373	0.615
762	342	Hayloft	https://open.spotify.com/track/2kS6td1yvmpNgZTt1q5pQq	2008-09-23	0.527	0.922	0.0728	0.422	95.975	181680	0.49
763	158	ON	https://open.spotify.com/track/2QyuXBcV1LJ2rq01KhreMF	2020-02-21	0.583	0.817	0.0987	0.338	105.936	246381	0.438
764	158	ON (Feat. Sia)	https://open.spotify.com/track/3IB5qOeMayvpOdHxYCL5tZ	2020-02-21	0.591	0.848	0.0828	0.372	105.922	246816	0.386
765	64	Feel Me	https://open.spotify.com/track/6XXYdF6pJR1K3wKvuxmu7n	2020-02-21	0.71	0.808	0.0433	0.0734	99.989	226003	0.392
766	158	Filter	https://open.spotify.com/track/0ono6UCNVZ1XqOm6j78Blu	2020-02-21	0.781	0.762	0.0626	0.121	110.042	180221	0.86
767	158	Louder than bombs	https://open.spotify.com/track/3op7HNwLli54MBjFGzIlZO	2020-02-21	0.643	0.667	0.152	0.0904	145.999	217404	0.485
768	158	UGH!	https://open.spotify.com/track/1aKuG1GG76xPLUkjBbQo3W	2020-02-21	0.72	0.824	0.128	0.0509	165.998	225012	0.333
769	158	My Time	https://open.spotify.com/track/4vTgx6h4seHvkuFh84JXYP	2020-02-21	0.674	0.64	0.0339	0.0925	99.908	234458	0.664
770	158	00:00 (Zero O’Clock)	https://open.spotify.com/track/4AlihYDqxXshKhvh5tnMfP	2020-02-21	0.566	0.548	0.0579	0.11	157.999	250296	0.196
771	158	Friends	https://open.spotify.com/track/7w05lsU2VLSeiT8Nukrv5M	2020-02-21	0.55	0.747	0.0407	0.0536	79.98	199339	0.648
772	158	We are Bulletproof : the Eternal	https://open.spotify.com/track/44WLOqH7QayQOQdeUHeKUK	2020-02-21	0.526	0.575	0.0309	0.108	84.047	261543	0.19
773	158	Inner Child	https://open.spotify.com/track/4BKOjYosPhw334moS3wlbO	2020-02-21	0.589	0.696	0.0725	0.0808	134.953	233266	0.332
774	158	Moon	https://open.spotify.com/track/1xfXXujIlLZAx5wpu46Nyk	2020-02-21	0.703	0.646	0.0596	0.191	141.87	208590	0.64
775	283	Numbers (feat. Roddy Ricch, Gunna and London On Da Track)	https://open.spotify.com/track/733c1CWmIGymoQXdp7Us88	2020-02-14	0.819	0.654	0.136	0.0996	133.503	188563	0.455
776	84	Medusa	https://open.spotify.com/track/3qM0vBxIe4VUbK0Z0smuVP	2020-02-05	0.886	0.604	0.208	0.107	98.023	305333	0.383
777	158	Outro : Ego	https://open.spotify.com/track/3r9FFjLrAIQjoR8pSHVPC9	2020-02-21	0.808	0.903	0.0958	0.0993	116.988	196199	0.473
778	106	Modern Loneliness	https://open.spotify.com/track/7MZF7YLxOP2to9iblSulLc	2020-03-06	0.702	0.508	0.035	0.108	82.008	252337	0.143
779	158	Interlude : Shadow	https://open.spotify.com/track/2Nib4r0saYQf2pUV4RFDhl	2020-02-21	0.385	0.798	0.483	0.181	149.756	259821	0.141
780	158	Respect	https://open.spotify.com/track/37TSJmYKLxXmx8OehFpqMN	2020-02-21	0.661	0.84	0.116	0.287	91.457	237540	0.524
781	24	Life Is Good (feat. Drake, DaBaby & Lil Baby) - Remix	https://open.spotify.com/track/4iiWcajF1fEUpwcUewc464	2020-02-15	0.81	0.566	0.433	0.122	142.069	315346	0.582
782	196	Definitivamente	https://open.spotify.com/track/113PlnpZbHd3WIqeYjhZWv	2020-01-31	0.813	0.764	0.105	0.253	100.047	217773	0.429
783	299	No Judgement	https://open.spotify.com/track/5IUOU5xkzGHsRFOYNu3GSK	2020-02-07	0.723	0.726	0.0472	0.057	100.051	176283	0.962
784	1	Starboy	https://open.spotify.com/track/7MXVkk9YMctZqd1Srtv4MB	2016-11-25	0.679	0.587	0.276	0.137	186.003	230453	0.486
785	26	Lose Yourself - From "8 Mile" Soundtrack	https://open.spotify.com/track/1v7L65Lzy0j0vdpRjJewt1	2005-12-06	0.692	0.744	0.257	0.359	171.374	326467	0.0612
786	343	Lottery (Renegade)	https://open.spotify.com/track/4dZTZbmJBCCofAExHwefda	2019-06-21	0.915	0.556	0.216	0.0733	148.964	170947	0.67
787	141	Rich Rich	https://open.spotify.com/track/3VFT90E0yYjdHSFoGv02us	2020-04-24	0.548	0.648	0.292	0.123	141.937	204319	0.232
788	55	Mejor	https://open.spotify.com/track/1mF6sMUsRU9MisrdB9qWvg	2020-03-19	0.524	0.577	0.18	0.103	175.396	201361	0.19
789	1	Call Out My Name	https://open.spotify.com/track/09mEdoA6zrmBPgTEN5qXmN	2018-03-30	0.461	0.593	0.0356	0.307	134.17	228373	0.175
790	153	Daylight	https://open.spotify.com/track/6Ed1q0X8oSKSm4IIhiQbYg	2020-08-06	0.528	0.749	0.0479	0.0949	163.944	163906	0.729
791	344	Tap In	https://open.spotify.com/track/4Hpib09wXgD84w4uwTPnYD	2020-06-17	0.954	0.696	0.204	0.0754	100.036	139413	0.432
792	27	BLIND (feat. Young Thug)	https://open.spotify.com/track/2T5NBwKRySiCR78vVk08vr	2020-08-04	0.709	0.679	0.346	0.0971	162.973	153467	0.754
793	9	Freak	https://open.spotify.com/track/3aA6xB0tOilDDX17fIJ0Bl	2020-08-07	0.688	0.716	0.0385	0.0989	116.912	284480	0.373
794	118	PUNANI	https://open.spotify.com/track/41xKiK40e7MFu1bqcGSz1d	2020-08-02	0.841	0.541	0.229	0.123	97.961	115255	0.42
795	345	Anaranjado	https://open.spotify.com/track/0cRgJuB6TRtb5RZ2HkjSLh	2020-07-16	0.763	0.58	0.144	0.154	175.937	212011	0.608
796	108	Rags2Riches 2 (feat. Lil Baby)	https://open.spotify.com/track/0qJeyYAgv6UpvewUxRXAhb	2020-08-07	0.874	0.443	0.241	0.124	118.004	235988	0.298
797	346	Lovefool	https://open.spotify.com/track/51Of5p3lKZeOg6itfs4og4	2020-05-08	0.677	0.766	0.0568	0.129	123.062	190488	0.198
798	2	Pain 1993 (with Playboi Carti)	https://open.spotify.com/track/6Kj17Afjo1OKJYpf5VzCeo	2020-05-01	0.825	0.373	0.108	0.368	77.271	149078	0.12
799	24	D4L	https://open.spotify.com/track/5fHrHoJKfCgBd35zwIBmUK	2020-05-01	0.718	0.706	0.06	0.352	170.004	189176	0.815
800	2	Demons (feat. Fivio Foreign & Sosa Geek)	https://open.spotify.com/track/05aZ9sAU1YXndHv0FMi9iW	2020-05-01	0.543	0.766	0.343	0.155	106.869	204805	0.729
801	2	Time Flies	https://open.spotify.com/track/5H4mXWKcicuLKDn4Jy0sK7	2020-05-01	0.864	0.477	0.224	0.182	86.46	192932	0.5
802	2	Desires (with Future)	https://open.spotify.com/track/7eYAHC0RbBF9eaqWzT34Aq	2020-05-01	0.812	0.506	0.116	0.325	145.074	237946	0.554
803	2	Not You Too (feat. Chris Brown)	https://open.spotify.com/track/3Q4gttWQ6hxqWOa3tHoTNi	2020-05-01	0.458	0.452	0.047	0.0703	86.318	269680	0.316
804	2	Landed	https://open.spotify.com/track/3KixNgUEaDtrKJVzdqjU5q	2020-05-01	0.881	0.636	0.287	0.111	163.949	152195	0.715
805	2	When To Say When	https://open.spotify.com/track/5TCBWmEBrin7etRa4Lswr1	2020-05-01	0.41	0.82	0.533	0.538	170.718	223124	0.526
806	347	Nicht verdient	https://open.spotify.com/track/7v8OynJxOxHoeS5C2UA9Y7	2020-04-29	0.719	0.65	0.232	0.167	77.981	176953	0.488
807	2	Deep Pockets	https://open.spotify.com/track/3IvMYBE7A3c7to1aEcfFJk	2020-05-01	0.473	0.824	0.163	0.605	77.888	222929	0.374
808	348	Qué Maldición	https://open.spotify.com/track/2RxC2peY3FtrurYmbbmanr	2020-05-01	0.755	0.531	0.196	0.13	177.951	203360	0.683
809	2	War	https://open.spotify.com/track/1I55Ea0zVoSKs6MqW7DQ3i	2020-05-01	0.749	0.792	0.0826	0.109	144.064	180000	0.239
810	2	From Florida With Love	https://open.spotify.com/track/0YkUwXxnTkeJBvt5upeEtP	2020-05-01	0.787	0.477	0.199	0.104	80.506	234783	0.476
811	2	Losses	https://open.spotify.com/track/6fLVTVaHWaEfVKfEgbkf4D	2020-05-01	0.551	0.57	0.351	0.424	85.687	271184	0.505
812	349	eight(Prod.&Feat. SUGA of BTS)	https://open.spotify.com/track/0pYacDCZuRhcrwGUA5nTBe	2020-05-06	0.676	0.869	0.0423	0.132	120.029	167573	0.594
813	234	happiness	https://open.spotify.com/track/73YUReisjb3A9ActdLLjJQ	2020-12-11	0.559	0.334	0.0376	0.114	122.079	315147	0.211
814	234	ivy	https://open.spotify.com/track/19CSr8rwW05VJL2F91KFNK	2020-12-11	0.515	0.545	0.0353	0.0921	88.856	260440	0.535
815	234	dorothea	https://open.spotify.com/track/3w9VRlKPvNxj40RdUGRweH	2020-12-11	0.605	0.488	0.0264	0.129	119.966	225880	0.354
816	234	coney island (feat. The National)	https://open.spotify.com/track/4tyX1rw9X309WkEdh2As4B	2020-12-11	0.537	0.537	0.0617	0.142	107.895	275320	0.292
817	234	evermore (feat. Bon Iver)	https://open.spotify.com/track/0AaV4MJrgmLV3XhoiWXjjb	2020-12-11	0.39	0.27	0.0308	0.111	125.177	304107	0.32
818	234	long story short	https://open.spotify.com/track/0vVMlbdYx2080Oa9FndPZr	2020-12-11	0.546	0.73	0.0417	0.0972	157.895	215920	0.573
819	234	cowboy like me	https://open.spotify.com/track/1XjHRolIXL2M1EEOUsGGR4	2020-12-11	0.604	0.517	0.0347	0.123	127.967	275040	0.511
820	234	marjorie	https://open.spotify.com/track/7vBNFh3NIZTj6tB5s1IBjE	2020-12-11	0.535	0.561	0.0484	0.115	96.103	257773	0.287
821	234	closure	https://open.spotify.com/track/3uayvzcbqFydIbgUeC6EJh	2020-12-11	0.689	0.704	0.245	0.134	151.884	180653	0.92
822	264	She Knows This	https://open.spotify.com/track/1xzUQMiCoY5pdego0pHMeV	2020-12-11	0.39	0.724	0.0889	0.393	165.945	216560	0.312
823	264	Another Day	https://open.spotify.com/track/6myUpr3GDR80Dg3zqNTmmG	2020-12-11	0.646	0.758	0.0708	0.335	172.995	199787	0.0642
824	264	Solo Dolo, Pt. III	https://open.spotify.com/track/27oVCAziETRbNuo5A8LNpg	2020-12-11	0.589	0.727	0.0866	0.164	152.058	242267	0.52
825	264	Dive	https://open.spotify.com/track/7Hc3YL8oDiAzbiAW32KXrw	2020-12-11	0.64	0.621	0.0679	0.36	123.105	148707	0.332
826	264	Heaven On Earth	https://open.spotify.com/track/2koUj1Fn5TKFEkChSmBPIb	2020-12-11	0.786	0.61	0.0558	0.0765	130.036	201093	0.228
827	264	Sad People	https://open.spotify.com/track/4nuAslShoN77tq12fzwjUq	2020-12-11	0.636	0.647	0.0381	0.113	158.073	176027	0.416
828	264	Damaged	https://open.spotify.com/track/2n7Ao4nyESBa5ti8gcAbBt	2020-12-11	0.625	0.581	0.0316	0.254	142.04	150853	0.267
829	264	Beautiful Trip	https://open.spotify.com/track/4IIuCotvqijraSdnVLaFnM	2020-12-11	0.331	0.513	0.632	0.882	133.971	37013	0.42
830	264	The Void	https://open.spotify.com/track/2yg7MXp8nSPaf61HVkhEr3	2020-12-11	0.464	0.459	0.0314	0.117	142.017	325413	0.0786
831	116	Party Girl (Remix)	https://open.spotify.com/track/0XkmeG97T4mtYlWRJcrxec	2020-07-10	0.752	0.375	0.204	0.175	129.995	147673	0.591
832	48	Titanic	https://open.spotify.com/track/1QoG0Yqz1onMsdbOibZVke	2020-07-10	0.567	0.545	0.0448	0.112	174.146	176650	0.234
833	48	Bad Energy	https://open.spotify.com/track/0JoWBcL61YWLXM5vW0YTHO	2020-07-10	0.654	0.452	0.0439	0.114	138.034	186749	0.532
834	48	Fighting Demons	https://open.spotify.com/track/0jo6Nd4iJU0UFHqS0Xd4l4	2020-07-10	0.707	0.67	0.257	0.098	163.099	200629	0.235
835	48	Stay High	https://open.spotify.com/track/1AnkdcHl86kEhDvhaKDuIe	2020-07-10	0.745	0.5	0.135	0.0943	76.968	168685	0.433
836	48	Up Up And Away	https://open.spotify.com/track/5lcIegmdblnWqT9nS9EhZj	2020-07-10	0.661	0.665	0.053	0.0981	75.059	147548	0.486
837	48	Screw Juice	https://open.spotify.com/track/2XSO13Gyndo7MDdtYibIxO	2020-07-10	0.595	0.528	0.0935	0.142	150.075	179464	0.515
838	48	I Want It	https://open.spotify.com/track/6RsRMf9e4KUyo3MecGffNL	2020-07-10	0.288	0.638	0.0779	0.14	66.424	173114	0.147
839	48	Man Of The Year	https://open.spotify.com/track/1uA914Md6wsy9NDryyBypH	2020-07-10	0.621	0.695	0.0911	0.086	173.966	136408	0.298
840	48	Can't Die	https://open.spotify.com/track/6DuHcOuuGWXNvF3uocsrBa	2020-07-10	0.652	0.671	0.0756	0.107	84.008	182922	0.274
841	264	The Adventures of Moon Man & Slim Shady (with Eminem)	https://open.spotify.com/track/38iBrrbbXyWaSPkmuDNgjZ	2020-07-10	0.88	0.787	0.118	0.12	113.018	264834	0.588
842	48	Anxiety - Intro	https://open.spotify.com/track/0YevRlTDW9tyIwViCyke8Q	2020-07-10	0.307	0.528	0.108	0.222	174.795	70395	0.58
843	48	Juice WRLD Speaks From Heaven - Outro	https://open.spotify.com/track/2GriTXl7gRSBv1A2IGZtnL	2020-07-10	0.392	0.373	0.0968	0.545	121.678	30583	0.519
844	48	The Man, The Myth, The Legend - Interlude	https://open.spotify.com/track/0veNpTQFqfmTX0rsJmO2rO	2020-07-10	0.667	0.447	0.761	0.612	83.534	136545	0.829
845	350	Tiefschwarz (feat. Samra)	https://open.spotify.com/track/7bDSLyTjZ1VjU5kPHTL3Ko	2020-09-25	0.751	0.783	0.22	0.114	94.003	189739	0.379
846	92	Gangstas	https://open.spotify.com/track/1hg3RlqFZXJb5YgRoK9qmF	2020-07-03	0.548	0.506	0.102	0.0788	119.987	160000	0.557
847	351	Monster	https://open.spotify.com/track/6c1QaQHdDhtFMfUkhueuXK	2020-07-06	0.631	0.748	0.0488	0.537	115.665	178413	0.351
848	118	YAYA	https://open.spotify.com/track/6EfBMJQwe2xLgldra6DaYp	2020-07-03	0.672	0.733	0.0566	0.199	105.043	149857	0.354
849	66	Narcos	https://open.spotify.com/track/7mcdgAXmb35dakBnfDIv3q	2020-05-29	0.614	0.746	0.196	0.0874	168.072	259250	0.601
850	92	Make It Rain (feat. Rowdy Rebel)	https://open.spotify.com/track/71d7LaAgPcNcUopu3OzmP7	2020-07-03	0.5	0.767	0.403	0.385	159.477	202443	0.58
851	92	Something Special	https://open.spotify.com/track/5kkaSMcf4BFlhRRICCKZb6	2020-07-03	0.739	0.616	0.0338	0.101	91.071	158466	0.654
852	126	TRAGIC (feat. Youngboy Never Broke Again & Internet Money)	https://open.spotify.com/track/13EW51DKru044OJDJ9Bm8o	2020-11-06	0.779	0.642	0.116	0.2	82.363	153147	0.388
853	352	7 Summers	https://open.spotify.com/track/0Z0kNthq0sS4lvGz9SSlBF	2020-08-14	0.466	0.786	0.0328	0.125	203.903	210507	0.571
854	157	Lemonade	https://open.spotify.com/track/02kDW379Yfd5PzW5A6vuGt	2020-08-14	0.799	0.66	0.079	0.111	140.04	195429	0.471
855	4	Levitating (feat. Madonna and Missy Elliott) [The Blessed Madonna Remix]	https://open.spotify.com/track/0pk1hxhJLBSZZ5RKBhcwOa	2020-08-13	0.808	0.655	0.139	0.208	116.029	250280	0.56
856	353	Money Trees	https://open.spotify.com/track/2HbKqm4o0w5wEeEFXm2sD4	2012-10-22	0.716	0.531	0.122	0.224	71.994	386907	0.344
857	169	When I Look At You	https://open.spotify.com/track/6ZfXA2xakAvphXOSOJ3u1W	2009-01-01	0.459	0.545	0.0282	0.105	137.941	248587	0.194
858	301	Over Now (with The Weeknd)	https://open.spotify.com/track/58AGoOGbwsQMhBbH0eFLRR	2020-08-28	0.612	0.884	0.0454	0.247	178.043	210795	0.679
859	157	Blastoff (feat. Juice Wrld & Trippie Redd)	https://open.spotify.com/track/2rFsFjq0D9JAmc0APpCO6P	2020-08-29	0.761	0.517	0.0927	0.157	147.912	174730	0.46
860	177	THE BADDEST	https://open.spotify.com/track/2V4Fx72svQRxrFvNT1eq5f	2020-08-27	0.676	0.857	0.0438	0.254	149.981	162600	0.717
861	56	The Plan - From the Motion Picture "TENET"	https://open.spotify.com/track/551xyaSJsg8hILXFq9JdST	2020-08-22	0.433	0.443	0.0361	0.117	79.903	185851	0.0363
862	88	Not Shy	https://open.spotify.com/track/4ecVWqbtW6phQGpZMAyqIU	2020-08-17	0.776	0.911	0.131	0.268	101.027	177728	0.56
863	138	Cry About It Later	https://open.spotify.com/track/1RsD951uUUlJx0MRioZfev	2020-08-26	0.676	0.794	0.0366	0.0723	125.957	159286	0.161
864	159	ADMV	https://open.spotify.com/track/4j3iq13kHs5PB94jdTp3Y3	2020-04-23	0.565	0.39	0.0556	0.126	163.781	193700	0.708
865	356	feel something	https://open.spotify.com/track/7JDWhC422Gtk1Bq0mL3OTC	2019-06-21	0.74	0.415	0.0707	0.319	136.029	180161	0.156
866	316	Ain't It Different (feat. AJ Tracey & Stormzy)	https://open.spotify.com/track/6NJfIydBMYrXvlaXsFxmc8	2020-08-20	0.767	0.569	0.216	0.109	77.052	196363	0.524
867	357	Gifted (feat. Roddy Ricch)	https://open.spotify.com/track/0mb3uDw5vfFUcZfJYFOMRu	2020-08-27	0.653	0.603	0.171	0.18	151.016	168477	0.551
868	55	+Linda	https://open.spotify.com/track/5cBrOhKDyiJF9bPGUHKkG0	2020-04-18	\N	\N	\N	\N	\N	\N	\N
869	158	Skit	https://open.spotify.com/track/4GVwjLRT7oSsKby7Vy8EHr	2020-11-20	0.703	0.321	0.884	0.908	114.822	179548	0.544
870	358	Baby (with J Balvin)	https://open.spotify.com/track/4L5ZhW0VJeQ6je2iqvqZ4X	2020-12-18	0.755	0.882	0.0532	0.103	99.984	193555	0.606
871	352	Somebody’s Problem	https://open.spotify.com/track/0SErdEdRcVX1uJCf1eTGYH	2020-11-20	0.657	0.54	0.0287	0.123	136.97	161773	0.625
872	359	Dime Cómo Quieres	https://open.spotify.com/track/4jcxBTrNvyqMJdMDyyjdYV	2020-11-13	0.839	0.667	0.031	0.244	124.889	171360	0.878
873	358	Tik Tok (feat. Marracash & Guè Pequeno)	https://open.spotify.com/track/11jGgkrtDbYaKlN0y1nPbC	2020-12-18	0.723	0.673	0.137	0.323	120.046	230389	0.302
874	358	Abracadabra (feat. Future)	https://open.spotify.com/track/0lSVjlxmAMSJGFSjVB1FtU	2020-12-18	0.846	0.681	0.174	0.112	131.988	192965	0.809
875	360	Mirrors	https://open.spotify.com/track/4rHZZAmHpZrA3iH5zx8frV	2013-03-15	0.574	0.512	0.0503	0.0946	76.899	484147	0.512
876	358	Hollywood (feat. Diplo)	https://open.spotify.com/track/4CvW0iHAs7yJhbpnJ3NSnS	2020-12-18	0.848	0.708	0.0366	0.0948	137.973	191869	0.926
877	194	Rich Nigga Shit (feat. Young Thug)	https://open.spotify.com/track/3ruoIF2UnoXdzK8mR61ebq	2020-10-02	0.825	0.733	0.0969	0.112	97.974	190331	0.62
878	194	Many Men	https://open.spotify.com/track/3CDVMejYHnB1SkEEx0T1N4	2020-10-02	0.635	0.793	0.0322	0.113	77.594	201856	0.281
879	194	Slidin	https://open.spotify.com/track/7fxSLnklnayJNBIKntXedZ	2020-10-02	0.774	0.706	0.355	0.104	152.891	185037	0.382
880	361	Outta Time (feat. Drake)	https://open.spotify.com/track/4SCnCPOUOUXUmCX2uHb3r7	2020-10-02	0.714	0.582	0.0808	0.0774	92.819	198822	0.338
881	194	My Dawg	https://open.spotify.com/track/42Tohunwlh34o0mgxYx5iq	2020-10-02	0.831	0.532	0.301	0.464	140.105	181716	0.364
882	194	Snitches & Rats (feat. Young Nudy)	https://open.spotify.com/track/3WaDoMDQRqDdgtCDLxanpN	2020-10-02	0.821	0.671	0.18	0.0972	145.953	187773	0.494
883	194	Brand New Draco	https://open.spotify.com/track/4V9ynsDPwHtdItksqjuRu0	2020-10-02	0.697	0.709	0.298	0.0886	155.023	202420	0.439
884	157	Lemonade (Feat. Roddy Ricch & Don Toliver) [Remix]	https://open.spotify.com/track/5sBplhIrmzA4kQGyIOpmDf	2020-09-30	0.832	0.549	0.0602	0.11	140.045	181496	0.384
885	153	Your Man	https://open.spotify.com/track/6Vgtvd7I5yopJdBuxqjBd2	2020-09-24	0.785	0.818	0.099	0.149	117.98	163759	0.0503
886	194	No Opp Left Behind	https://open.spotify.com/track/50I7FNN2rl2rWiNwGxS146	2020-10-02	0.823	0.703	0.298	0.294	178.043	194214	0.26
887	362	Lets Link	https://open.spotify.com/track/6fMzgFFGzWCwiHMzDzNpp5	2020-08-20	0.839	0.683	0.165	0.241	120.003	159955	0.522
888	194	RIP Luv	https://open.spotify.com/track/1wGnp7ejkCuXRsehXx0PNP	2020-10-02	0.63	0.399	0.178	0.234	183.016	214192	0.0657
889	194	Steppin On Niggas	https://open.spotify.com/track/7FtZFla3ZH6PqsAJ9MvVCM	2020-10-02	0.849	0.635	0.254	0.062	89.484	140833	0.798
890	64	Vulnerable	https://open.spotify.com/track/11OwAR3GlBj9E35Cznf7Lj	2020-01-10	0.695	0.573	0.167	0.156	100.031	192172	0.38
891	64	Dance Again	https://open.spotify.com/track/5sK3o66yupTNIK6gWgzGjf	2020-01-10	0.784	0.552	0.0871	0.192	111.984	170498	0.465
892	64	Ring	https://open.spotify.com/track/11Ey4yJVeWEsA73KjACkVY	2020-01-10	0.873	0.51	0.0661	0.0738	110.953	148776	0.871
893	64	Crowded Room (feat. 6LACK)	https://open.spotify.com/track/2C0hTkdEoikhKzDCJl32QZ	2020-01-10	0.724	0.415	0.0518	0.103	89.999	186459	0.328
894	64	People You Know	https://open.spotify.com/track/63mdJr3NMY3wReOkNE6c6W	2020-01-10	0.695	0.62	0.0521	0.111	150.032	194900	0.62
895	64	Let Me Get Me	https://open.spotify.com/track/0uFForNKQPvgSCnxlZIhQy	2020-01-10	0.826	0.571	0.0426	0.215	121.06	189145	0.475
896	64	A Sweeter Place (feat. Kid Cudi)	https://open.spotify.com/track/4bb94wZVF1cX66vQjNeJTX	2020-01-10	0.583	0.777	0.185	0.108	190.054	263306	0.31
897	5	Tip Toe (feat. A Boogie Wit da Hoodie)	https://open.spotify.com/track/6ztvsy3C6hPjVg9j4x1XKJ	2019-12-06	0.757	0.673	0.141	0.338	92.958	185806	0.574
898	5	Start Wit Me (feat. Gunna)	https://open.spotify.com/track/7A20WnLkjtZU2d7hIB6Ziu	2019-12-06	0.886	0.479	0.334	0.135	130.029	158692	0.408
899	18	Diamonds (with Normani)	https://open.spotify.com/track/0PQsrLxPbOBBwwmXCnGvcF	2020-01-10	0.785	0.753	0.0873	0.265	94.012	199301	0.488
900	64	Cut You Off	https://open.spotify.com/track/4OtHGdb0KqEbaWb6edUnR9	2020-01-10	0.855	0.294	0.286	0.091	139.745	182017	0.842
901	64	Kinda Crazy	https://open.spotify.com/track/59iGOjPSOcPLGl3vqEStUp	2020-01-10	0.691	0.446	0.0472	0.183	93.03	212436	0.534
902	347	Frühstück in Paris	https://open.spotify.com/track/6qAxQhNfM909QrDGLYEocf	2020-09-17	0.744	0.644	0.0641	0.204	96.852	151360	0.577
903	363	2012	https://open.spotify.com/track/6bM4daGlfZHtKMQp8tEqVz	2020-08-21	0.805	0.619	0.0771	0.114	98.995	170200	0.476
904	40	if i were u (with Lauv)	https://open.spotify.com/track/4Rh4UxgPaRTaFfKumWtUbM	2020-08-19	0.666	0.628	0.0623	0.189	82.992	186468	0.767
905	364	What Makes You Beautiful	https://open.spotify.com/track/4cluDES4hQEUhmXj6TXkSo	2012-05-25	0.726	0.787	0.0737	0.0596	124.99	199987	0.888
906	365	Never Know (feat. SHIRIN DAVID)	https://open.spotify.com/track/5Hkj1XjMJv5QCGc9NwZm6z	2020-07-16	0.874	0.542	0.344	0.181	142.016	196933	0.481
907	10	Intentions	https://open.spotify.com/track/364dI1bYnvamSnBJ8JcNzN	2020-02-14	0.806	0.546	0.0575	0.102	147.986	212867	0.874
908	153	Run	https://open.spotify.com/track/6p8eEdiZLKJH8tcjGZuNTK	2020-02-06	0.682	0.72	0.0381	0.148	117.003	169011	0.673
909	98	No Shame	https://open.spotify.com/track/5JSVa5i6lFPoyOzK4gj0Ox	2020-03-27	0.576	0.807	0.0374	0.0963	90.932	192737	0.479
910	366	Yikes	https://open.spotify.com/track/75dLEqanQTupF3dtP9exT5	2020-02-07	0.911	0.637	0.447	0.238	149.996	156882	0.66
911	306	Birthday	https://open.spotify.com/track/5hff5RQeE84pznOt8WEWeO	2020-02-07	0.609	0.785	0.0891	0.171	151.995	181467	0.756
912	89	Too Good At Goodbyes	https://open.spotify.com/track/1mXVgsBdtIVeCLJnSnmtdV	2017-11-03	0.681	0.372	0.0432	0.169	91.873	201000	0.476
913	284	Weiss	https://open.spotify.com/track/38YP1STiBe3AZevFFJILf4	2020-02-07	0.6	0.525	0.423	0.111	96.989	162702	0.436
914	24	Solitaires (feat. Travis Scott)	https://open.spotify.com/track/4kfeRwpq5KUaqTkgi4TbDF	2020-05-15	0.691	0.632	0.0513	0.0646	169.982	205666	0.488
915	13	BAD CON NICKY	https://open.spotify.com/track/5bmSver2b3ZXyuyLKtgnFI	2020-05-10	0.59	0.729	0.0893	0.659	93.094	202240	0.712
916	367	CANCIÓN CON YANDEL	https://open.spotify.com/track/3pm4XtcsRIFFtH2UErk62R	2020-05-10	0.75	0.741	0.402	0.121	79.968	209180	0.495
917	302	Fame	https://open.spotify.com/track/3goH7O78TLkV9RhCAyM4AT	2020-05-08	0.811	0.645	0.104	0.103	129.967	173761	0.474
918	13	MÁS DE UNA CITA	https://open.spotify.com/track/4EJHKSnHENfjOxXWryyNtL	2020-05-10	0.865	0.5	0.0861	0.098	92.976	183520	0.317
919	60	X (with KAROL G)	https://open.spotify.com/track/77fvnWALKJR0ws1VUx09CY	2020-05-15	0.715	0.827	0.0617	0.321	117.977	185277	0.75
920	24	All Bad (feat. Lil Uzi Vert)	https://open.spotify.com/track/021lWIHJrURZrmvYQ1xcM8	2020-05-15	0.931	0.667	0.318	0.15	142.039	207739	0.667
921	24	Trillionaire (feat. Youngboy Never Broke Again)	https://open.spotify.com/track/740kQ8xwSGloumdiKR5Cwz	2020-05-15	0.768	0.526	0.209	0.139	139.999	167552	0.473
922	85	Go Stupid	https://open.spotify.com/track/4PklAHGXT5ityno3IA8SKd	2020-05-15	0.92	0.833	0.253	0.0596	141.034	165726	0.645
923	368	Racks 2 Skinny	https://open.spotify.com/track/568OIKgeHyGRD3uWR44JbO	2020-05-11	0.814	0.584	0.0819	0.0646	141.016	178025	0.405
924	85	Be Something (feat. Lil Baby)	https://open.spotify.com/track/65jw6GhwQW3Db55PxlPEpS	2020-05-15	0.829	0.52	0.294	0.134	136.103	194118	0.248
925	13	BENDICIONES	https://open.spotify.com/track/2CoMYp2uIKsT09nreEZnZn	2020-05-10	0.828	0.581	0.0725	0.103	143.995	155060	0.843
926	307	Excitement	https://open.spotify.com/track/3WnTQDd9A3bpBfzCziElU9	2020-10-30	0.443	0.536	0.0378	0.1	121.967	283285	0.0391
927	92	Aim For The Moon (feat. Quavo)	https://open.spotify.com/track/6O7fPYTsb2mY0PiFt2ymDB	2020-07-03	0.713	0.605	0.107	0.115	142.025	175756	0.432
928	92	44 BullDog	https://open.spotify.com/track/7sjFIZ1g5QLJLGja3k592K	2020-07-03	0.8	0.564	0.4	0.112	139.989	150857	0.318
929	92	Creature (feat. Swae Lee)	https://open.spotify.com/track/3eV2WT9YhfzkxbufnBF8wK	2020-07-03	0.794	0.717	0.251	0.195	141.881	202816	0.372
930	92	Yea Yea	https://open.spotify.com/track/0bjgQ24UZGwKikldIyEOgf	2020-07-03	0.717	0.474	0.403	0.139	123.906	185804	0.448
931	92	Enjoy Yourself (feat. Karol G)	https://open.spotify.com/track/3NWrHCwvyII4fTx05PN3IO	2020-07-03	0.764	0.676	0.0927	0.215	97.02	197938	0.461
932	92	Bad Bitch From Tokyo (Intro)	https://open.spotify.com/track/4OGIeHtYhRTJ8iW21UUyZW	2020-07-03	0.645	0.64	0.179	0.286	140.248	48000	0.674
933	92	Snitching (feat. Quavo & Future)	https://open.spotify.com/track/2FhEj9lvEIaJihjFprRrGt	2020-07-03	0.944	0.579	0.191	0.253	135.033	259346	0.769
934	92	West Coast Shit (feat. Tyga & Quavo)	https://open.spotify.com/track/1JDhNQ0oOT7XpclZn3aQ8F	2020-07-03	0.831	0.762	0.207	0.107	99.999	192000	0.495
935	92	Tunnel Vision (Outro)	https://open.spotify.com/track/2SxR5RitJdsG6wINvJLBSD	2020-07-03	0.718	0.66	0.325	0.159	142.879	132587	0.659
936	66	El Manual	https://open.spotify.com/track/7kOf0qHO4Rcwk6QJifZDRJ	2020-05-29	0.843	0.845	0.0503	0.0527	126.989	210624	0.898
937	369	Don't Stop Believin'	https://open.spotify.com/track/4bHsxqR3GMrXTxEPLuK5ue	1981-06-20	0.5	0.748	0.0363	0.447	118.852	250987	0.514
938	272	VACATION	https://open.spotify.com/track/6q2uIyLqASSpv2SIv2ehWK	2020-06-19	0.821	0.61	0.0959	0.185	110.973	192936	0.47
939	205	Big Body Benz	https://open.spotify.com/track/2WOJ7D52Ng3myrKlEf4Azj	2020-06-18	0.884	0.451	0.393	0.268	94.024	148284	0.311
940	347	Ich weiß nicht mal wie sie heißt	https://open.spotify.com/track/4KfL3Ne8bc9bC2PUB8QGwA	2020-06-18	0.498	0.836	0.184	0.0994	199.846	168750	0.609
941	283	Bleed	https://open.spotify.com/track/5XzombolzpiaOSTdj1W0VS	2020-06-19	0.698	0.572	0.198	0.154	71.446	176959	0.391
942	293	Snow On Tha Bluff	https://open.spotify.com/track/1oOEkBNp4zWnkD7nWjJdog	2020-06-16	0.586	0.512	0.0668	0.119	75.857	235480	0.235
943	370	Every Breath You Take	https://open.spotify.com/track/1JSTJqkT5qHq8MDJnJbRE1	1983-06-17	0.82	0.452	0.0348	0.0714	117.401	253920	0.74
944	371	September	https://open.spotify.com/track/4f2GB5ZC7vOUYPAg69N2Xw	1978-11-23	0.697	0.832	0.0298	0.269	125.926	215093	0.979
945	372	BXL ZOO	https://open.spotify.com/track/7BO3y8lmogACezwHqZ1HTB	2020-09-17	0.745	0.656	0.203	0.11	137.997	201333	0.405
946	372	DEUX TOILES DE MER	https://open.spotify.com/track/7yN9Qx1HtE4c1fhakBz8Ay	2020-09-22	0.521	0.39	0.128	0.112	104.106	315640	0.157
947	69	Dolly (with Lil Uzi Vert)	https://open.spotify.com/track/77Xwqkw7VrV8E5FCq9JhO8	2020-09-18	0.664	0.586	0.238	0.216	88.502	179813	0.589
948	33	Hot Stuff	https://open.spotify.com/track/00ETaeHUQ6lops3oWU1Wrt	2020-09-18	0.681	0.773	0.148	0.11	119.961	199008	0.429
949	51	Who's Laughing Now	https://open.spotify.com/track/2ICse7t8MB60EFk6o9aUyw	2020-09-18	0.648	0.641	0.0389	0.109	184.021	180348	0.505
950	302	Boot	https://open.spotify.com/track/0rqY8g1Y1zaA4YwU6vhBQg	2020-07-31	0.534	0.565	0.307	0.112	194.034	193360	0.529
951	70	Riot	https://open.spotify.com/track/4aOOExMBUyxKnEYb39SrTg	2020-06-01	0.509	0.542	0.442	0.23	97.767	78681	0.151
952	373	VALLA NEIN (feat. Luciano)	https://open.spotify.com/track/2rxxXYtTIFKyrhJpofeoIX	2020-06-05	0.761	0.657	0.138	0.356	135.909	182040	0.589
953	374	This Is America	https://open.spotify.com/track/0b9oOr2ZgvyQu88wzixux9	2018-05-06	0.854	0.463	0.137	0.354	120.024	225773	0.549
954	52	911	https://open.spotify.com/track/6qI0MU175Dk2DeoUjlrOpy	2020-09-18	0.816	0.71	0.0398	0.292	93.02	208631	0.784
955	52	Alice	https://open.spotify.com/track/41A89rj3GoMG6ktN37L7PG	2020-05-29	0.723	0.88	0.038	0.0632	123.036	177600	0.323
956	52	Free Woman	https://open.spotify.com/track/4L6ihclQPu1hqP9r3WNJjQ	2020-05-29	0.731	0.927	0.0781	0.187	119.006	191467	0.478
957	52	Fun Tonight	https://open.spotify.com/track/6hyQVqfHFvsJDjcmj4qrHf	2020-05-29	0.645	0.923	0.0725	0.14	117.945	173427	0.323
958	52	Sine From Above (with Elton John)	https://open.spotify.com/track/0zzsyWc45eUcSjw4FNHxeN	2020-05-29	0.642	0.792	0.0488	0.68	122.965	244880	0.0903
959	52	Enigma	https://open.spotify.com/track/7JDbfYUHjDzQPFSDh5lzGs	2020-05-29	0.669	0.804	0.036	0.694	116.001	179760	0.184
960	52	Replay	https://open.spotify.com/track/7sKbyYeJnITO1Eh9xd0lKd	2020-05-29	0.658	0.878	0.123	0.944	122.015	186653	0.683
961	52	Plastic Doll	https://open.spotify.com/track/3CidPLqWXqgesJlwYVJZdy	2020-05-29	0.743	0.853	0.04	0.0872	121.028	221667	0.422
962	52	Chromatica II	https://open.spotify.com/track/0oQc0F6KUE7QY7k5TU6bic	2020-05-29	0.184	0.297	0.0359	0.527	75.824	41867	0.113
963	52	Babylon	https://open.spotify.com/track/5DttNeiizFqWUON9hZBqTY	2020-05-29	0.698	0.799	0.0342	0.215	115.957	161733	0.351
964	52	Chromatica I	https://open.spotify.com/track/3CGZ7wfk4skmuyQgua1C1K	2020-05-29	0.184	0.297	0.0359	0.527	75.824	41867	0.113
965	52	1000 Doves	https://open.spotify.com/track/62hTXlVQacy3pjBW4ntRPl	2020-05-29	0.668	0.826	0.0383	0.474	122.973	215480	0.388
966	33	Broken Glass	https://open.spotify.com/track/78ldtCaBRJVp2i91B715L0	2020-05-29	0.526	0.633	0.134	0.129	171.044	203947	0.272
967	375	In meinem Benz	https://open.spotify.com/track/6BXyD6UUPizpRpA7iOi99r	2020-05-09	\N	\N	\N	\N	\N	\N	\N
968	373	FLY	https://open.spotify.com/track/1WoM4mof0Nl1xPtwf6h6ow	2020-05-29	0.835	0.596	0.297	0.164	100.706	174893	0.897
969	376	SKRR	https://open.spotify.com/track/0U9dP3BUlAgq9KkJXOijBH	2020-09-24	0.803	0.649	0.132	0.152	125.038	119040	0.584
970	72	T.D (Lil Yachty & Tierra Whack feat. A$AP Rocky & Tyler, The Creator)	https://open.spotify.com/track/0gO3E51A3fqp0ypJ26QbVP	2020-05-29	0.784	0.632	0.347	0.605	124.603	232839	0.746
971	72	Oprah's Bank Account (Lil Yachty & DaBaby feat. Drake)	https://open.spotify.com/track/0LEFmgIj8ABU7CelzGh5Bs	2020-03-09	0.836	0.617	0.0534	0.319	138.066	206702	0.866
972	205	Roadrunner	https://open.spotify.com/track/0BwO44CBPFWxAIO5ZbPf3N	2020-09-10	0.804	0.606	0.242	0.111	99.024	149028	0.247
973	368	Give No Fxk	https://open.spotify.com/track/6ZelF5APDN5r6XnFqcnvWR	2020-02-14	0.904	0.627	0.222	0.0923	145.976	224243	0.236
974	10	Come Around Me	https://open.spotify.com/track/2o9LAypwGH4ctV0i9boo6d	2020-02-14	0.648	0.681	0.0378	0.0971	157.941	200773	0.767
975	10	Habitual	https://open.spotify.com/track/40qyPyljksBEqlNw5sW37T	2020-02-14	0.764	0.443	0.0439	0.0749	138.999	168200	0.63
976	10	All Around Me	https://open.spotify.com/track/5Py8zRKGkZvgHniVVtvNCN	2020-02-14	0.566	0.438	0.0367	0.212	117.127	136907	0.692
977	10	Get Me (feat. Kehlani)	https://open.spotify.com/track/5VwwpU7KsLhgfbMEecedhJ	2020-02-14	0.832	0.508	0.149	0.107	109.352	185427	0.75
978	10	Second Emotion (feat. Travis Scott)	https://open.spotify.com/track/1PnAx788sAvcI3ZxTlEyX8	2020-02-14	0.796	0.777	0.0567	0.095	141.97	202720	0.96
979	10	Running Over (feat. Lil Dicky)	https://open.spotify.com/track/75nKBP8jQu681pTNCtrEnn	2020-02-14	0.774	0.603	0.0591	0.0869	149.982	179627	0.977
980	10	Available	https://open.spotify.com/track/1b6tPXXCV2fSNtR3SKWUQA	2020-02-14	0.702	0.608	0.0359	0.129	75.012	195333	0.597
981	97	Breathe Deeper	https://open.spotify.com/track/3LbZIhU0smEU5SUnxod4j4	2020-02-14	0.664	0.848	0.0322	0.172	104.998	372867	0.502
982	10	Changes	https://open.spotify.com/track/521Os1SMlxmsoevsqyjNmJ	2020-02-14	0.485	0.412	0.042	0.12	64.062	135493	0.612
983	10	Confirmation	https://open.spotify.com/track/60brXKLTC15vK0av5gIldm	2020-02-14	0.438	0.315	0.0375	0.151	190.064	170587	0.449
984	365	Mios mit Bars	https://open.spotify.com/track/7Ek9e3eIuktIFjpDRQfmHE	2020-02-13	0.677	0.633	0.0467	0.217	145.012	232147	0.404
985	10	E.T.A.	https://open.spotify.com/track/6PzOPrXx8tJEqace76yrv2	2020-02-14	0.465	0.494	0.066	0.127	127.298	176733	0.457
986	97	Borderline	https://open.spotify.com/track/5hM5arv9KDbCHS0k9uqwjr	2020-02-14	0.621	0.873	0.0369	0.0824	97.96	237800	0.873
987	10	Take It Out On Me	https://open.spotify.com/track/39nTNk5MfyiiRupTwn1iyC	2020-02-14	0.772	0.616	0.102	0.104	129.967	178013	0.279
988	283	Might Not Give Up (feat. Young Thug)	https://open.spotify.com/track/4l2rsMfr20dj6nf6i6F3Y8	2020-02-14	0.687	0.592	0.224	0.279	178.83	225266	0.246
989	10	That's What Love Is	https://open.spotify.com/track/2hLu8L8SNfCN4yKyPdX0h3	2020-02-14	0.639	0.437	0.0355	0.12	147.575	165120	0.751
990	97	One More Year	https://open.spotify.com/track/5ozqshq2dtU7SYCpCBu0NE	2020-02-14	0.602	0.88	0.0354	0.284	114.009	324013	0.493
991	97	Lost In Yesterday	https://open.spotify.com/track/5JWPUEov2wlX7c0jhYZpeB	2020-02-14	0.569	0.84	0.118	0.0995	183.059	249587	0.749
992	10	At Least For Now	https://open.spotify.com/track/6VLkgf5YmLixsabdqiCVGU	2020-02-14	0.375	0.304	0.0325	0.196	83.832	149653	0.295
993	106	Fake	https://open.spotify.com/track/4Gt2kh3QbAGU6yquOWn4aW	2020-10-13	0.703	0.657	0.0783	0.093	82.96	146375	0.455
994	377	Someone Like You	https://open.spotify.com/track/4kflIGfjdZJW4ot2ioixTB	2011-01-24	0.556	0.319	0.0281	0.0996	135.187	285240	0.294
995	337	Hit Different	https://open.spotify.com/track/7Bar1kLTmsRmH6FCKKMEyU	2020-09-04	0.679	0.516	0.0452	0.0965	120.074	202008	0.716
996	130	Del Mar	https://open.spotify.com/track/5cpJFiNwYyWwFLH0V6B3N8	2020-09-04	0.759	0.636	0.0369	0.166	109.976	214507	0.536
997	205	Fuckst mich nur ab	https://open.spotify.com/track/4iD5KYizD5e0KrCsk58P2r	2020-09-10	0.817	0.468	0.287	0.0905	104.875	182931	0.237
998	325	Lithuania (feat. Travis Scott)	https://open.spotify.com/track/4VLTxHOyFX5FRtkpsFm5Pc	2020-09-04	0.676	0.82	0.0554	0.615	152.028	199250	0.618
999	344	Tap In (feat. Post Malone, DaBaby & Jack Harlow)	https://open.spotify.com/track/5woaU1FNkqCwg6WzWiQPW5	2020-08-28	0.948	0.63	0.219	0.0737	100.032	253569	0.425
1000	91	Hate The Way (feat. blackbear)	https://open.spotify.com/track/3QGppKBPd9gHOgHJzRbVIw	2020-10-16	0.569	0.865	0.266	0.312	82.011	214363	0.361
1001	378	Let Me Love You Like A Woman	https://open.spotify.com/track/4HvE2E9rXJDcQhE4YfeNuG	2020-10-16	0.303	0.249	0.111	0.117	66.932	200661	0.131
1002	26	Darkness	https://open.spotify.com/track/5SiZJoLXp3WOl3J4C8IK0d	2020-01-17	0.671	0.623	0.308	0.643	75.055	337147	0.195
1003	26	You Gon’ Learn (feat. Royce Da 5'9" & White Gold)	https://open.spotify.com/track/0GQ5bFTVFFKpwNPc7KwQnB	2020-01-17	0.68	0.82	0.151	0.597	140.033	234653	0.243
1004	26	Unaccommodating (feat. Young M.A)	https://open.spotify.com/track/0q2vG0UVuy6ajjcpkQHdZM	2020-01-17	0.852	0.752	0.0597	0.394	89.95	216600	0.389
1005	273	Blue World	https://open.spotify.com/track/2hwOoMtWPtTSSn6WHV7Vp5	2020-01-17	0.742	0.553	0.419	0.0694	84.931	209440	0.508
1006	26	Leaving Heaven (feat. Skylar Grey)	https://open.spotify.com/track/5CpsIb7SMFHjmAG8RvIWfq	2020-01-17	0.661	0.748	0.206	0.254	171.983	265947	0.509
1007	26	In Too Deep	https://open.spotify.com/track/7Dj2wqPYXfSRFwa6qyOztr	2020-01-17	0.72	0.767	0.214	0.202	88.966	194707	0.595
1008	26	Premonition - Intro	https://open.spotify.com/track/7ccTcabbJlCJiIqtrSSwBk	2020-01-17	0.847	0.637	0.367	0.382	165.979	173893	0.511
1009	273	I Can See	https://open.spotify.com/track/3R8CyhJfVjvgIROd5RSGhQ	2020-01-17	0.699	0.503	0.0882	0.0996	114.86	220853	0.0546
1010	273	Hand Me Downs	https://open.spotify.com/track/2Yv2mHzr5AQavVdwQjEokV	2020-01-17	0.677	0.33	0.149	0.064	68.985	298440	0.336
1011	26	No Regrets (feat. Don Toliver)	https://open.spotify.com/track/1lO9CZo6eDrOy0S7khgryG	2020-01-17	0.756	0.747	0.046	0.588	134.935	200947	0.0687
1012	273	Complicated	https://open.spotify.com/track/3WfSNAoj2D8C9noPSGZZFM	2020-01-17	0.831	0.36	0.052	0.0703	75.014	232212	0.601
1013	26	Lock It Up (feat. Anderson .Paak)	https://open.spotify.com/track/1qwMkkRiD5jqLeUUjfgblh	2020-01-17	0.848	0.745	0.221	0.0796	137.024	170227	0.516
1014	26	Marsh	https://open.spotify.com/track/34d7sGX6WUqq8f04e7CSNF	2020-01-17	0.871	0.493	0.205	0.385	144.989	200573	0.0495
1015	26	Stepdad	https://open.spotify.com/track/3QVHSV8YKYq4L8tI5rnFgj	2020-01-17	0.779	0.805	0.178	0.321	145.68	213413	0.557
1016	26	Yah Yah (feat. Royce Da 5'9", Black Thought, Q-Tip & Denaun)	https://open.spotify.com/track/5mZXWEH2eh8zMZGCxT5aW0	2020-01-17	0.458	0.966	0.384	0.11	183.586	286960	0.356
1017	26	Never Love Again	https://open.spotify.com/track/40YbWniIEmqy6s58fYXLUh	2020-01-17	0.747	0.899	0.246	0.486	92.029	177547	0.581
1018	273	Woods	https://open.spotify.com/track/3Qa944OTMZkg8DHjET8JQv	2020-01-17	0.779	0.362	0.0474	0.111	85.011	286387	0.46
1019	26	Farewell	https://open.spotify.com/track/74gykWHknHDrg4eMdcmdRq	2020-01-17	0.89	0.664	0.106	0.257	93.007	247733	0.467
1020	273	Everybody	https://open.spotify.com/track/1OuN92HcVG6NVpWbeESNB3	2020-01-17	0.875	0.599	0.138	0.113	152.061	256507	0.112
1021	26	Alfred - Interlude	https://open.spotify.com/track/4EmunTy7kNBYQivOa8F6b8	2020-01-17	0.429	0.231	0.402	0.279	74.545	30133	0.914
1022	26	Little Engine	https://open.spotify.com/track/4qNWEOMyexn7b8Icyk29t9	2020-01-17	0.769	0.811	0.228	0.0451	155.081	177293	0.76
1023	26	I Will (feat. KXNG Crooked, Royce Da 5'9" & Joell Ortiz)	https://open.spotify.com/track/3CJbxqRQ0JNCqboWDNUUeX	2020-01-17	0.635	0.543	0.067	0.272	98.743	303000	0.036
1024	38	Still Learning	https://open.spotify.com/track/2Mfv5HaqnI18Q9JRv9hqnn	2020-01-17	0.708	0.661	0.0546	0.113	102.046	211784	0.317
1025	273	Surf	https://open.spotify.com/track/1kwnxJNVl7cwcU98RvMBaR	2020-01-17	0.828	0.182	0.166	0.15	147.279	330507	0.231
1026	273	That's On Me	https://open.spotify.com/track/0udOCZp7yk0Ml92C0k8H8D	2020-01-17	0.583	0.499	0.0261	0.33	155.199	217868	0.342
1027	273	Once A Day	https://open.spotify.com/track/26G5nmIx7Yvq79bIIluyZV	2020-01-17	0.762	0.054	0.0503	0.124	96.838	160267	0.339
1028	141	Big Drip	https://open.spotify.com/track/4qOesAYiMiMFiZrn2wfkl6	2020-04-24	0.791	0.535	0.311	0.129	158.922	173785	0.443
1029	273	Hands	https://open.spotify.com/track/6CrnvqCxBKVWahSiQwOesM	2020-01-17	0.739	0.627	0.171	0.159	74.962	199981	0.542
1030	379	Dans l'espace (feat. Heuss l'Enfoiré)	https://open.spotify.com/track/2KAkkba3PaYFegfmYpUITv	2020-01-17	0.916	0.57	0.18	0.0851	110.05	169702	0.7
1031	380	Blanche	https://open.spotify.com/track/5GyyPRvEwdI4wJSUbzxHQv	2020-01-16	0.776	0.713	0.143	0.306	127.987	193453	0.551
1032	1	Alone Again	https://open.spotify.com/track/6b5P51m8xx2XA6U7sdNZ5E	2020-03-20	0.218	0.652	0.0641	0.172	65.375	250053	0.0599
1033	1	Scared To Live	https://open.spotify.com/track/4BGZF4oLbTL0pWm7C18pbv	2020-03-20	0.504	0.498	0.0499	0.0929	87.221	191307	0.196
1034	1	Too Late	https://open.spotify.com/track/2K9Ovn1o2bTGqbsABGC6m3	2020-03-20	0.638	0.863	0.132	0.685	120.077	239973	0.226
1035	1	Snowchild	https://open.spotify.com/track/3WlbeuhfRSqU7ylK2Ui5U7	2020-03-20	0.55	0.611	0.137	0.121	148.062	247187	0.243
1036	1	Faith	https://open.spotify.com/track/3orEOtd8CPL8GFlpRpKuoE	2020-03-20	0.375	0.605	0.0729	0.147	175.946	283227	0.128
1037	1	Escape From LA	https://open.spotify.com/track/1sOW4PuG5X3Ie3EXUhAopJ	2020-03-20	0.404	0.524	0.0593	0.199	145.74	355960	0.168
1038	1	Repeat After Me (Interlude)	https://open.spotify.com/track/40U8d12pC5UHqmHwXjHjjl	2020-03-20	0.555	0.619	0.0314	0.0917	95.032	195813	0.141
1039	1	Until I Bleed Out	https://open.spotify.com/track/2BcnxwxBuar5wjCaLqm5N3	2020-03-20	0.245	0.394	0.0374	0.093	115.233	190173	0.148
1040	20	Rosa	https://open.spotify.com/track/464uJVLmr0fDJGXOnciaDe	2020-03-19	0.651	0.561	0.25	0.435	175.992	189827	0.369
1041	20	Gris	https://open.spotify.com/track/1syf62zw48zu4FrPwMtDHk	2020-03-19	0.849	0.709	0.0794	0.329	93.06	176627	0.916
1042	20	Negro	https://open.spotify.com/track/2hsA9YWuF3C9Gosi4dpjJN	2020-03-19	0.795	0.911	0.0875	0.131	164.081	182093	0.8
1043	20	Verde	https://open.spotify.com/track/3HTbI3yUJQw3fP0Po8qLcD	2020-03-19	0.828	0.738	0.0516	0.0917	94.995	142547	0.818
1044	50	Baby Pluto	https://open.spotify.com/track/7hav1MHURQf5SAoPk0egqh	2020-03-06	0.772	0.634	0.212	0.432	160.052	210261	0.671
1045	13	Bichiyal	https://open.spotify.com/track/4j4w4CXm6BSr0s25wAWrrX	2020-02-29	0.737	0.766	0.0458	0.114	93.956	196500	0.662
1046	50	Lo Mein	https://open.spotify.com/track/6CUP2khYzdphXebxVTfPE3	2020-03-06	0.855	0.676	0.325	0.144	133.082	195299	0.509
1047	50	Futsal Shuffle 2020 - Bonus Track	https://open.spotify.com/track/2fOlBMkWR7lXJfqp5VTbDG	2020-03-06	0.879	0.448	0.222	0.224	136.985	198913	0.278
1048	20	Arcoíris	https://open.spotify.com/track/5zzbORcD0GwLY0wQHP1Xs1	2020-03-19	0.731	0.787	0.0721	0.316	92.971	186693	0.393
1049	381	H <3 T E L	https://open.spotify.com/track/4n0Ke1KJsPHvd7xRoU29E2	2020-05-22	0.726	0.646	0.0977	0.112	134.999	163253	0.58
1050	13	25/8	https://open.spotify.com/track/4NqQaovM14WR2hNPMFxgjb	2020-02-29	0.761	0.732	0.0549	0.0716	151.982	243276	0.542
1051	359	Se Me Olvidó	https://open.spotify.com/track/5Xitt5a5uLQ1QtYdFxmi9e	2020-05-29	0.65	0.558	0.0309	0.303	141.82	159533	0.725
1052	382	B.S. (feat. H.E.R.)	https://open.spotify.com/track/63wx9vdskaXbYxyDx4oJCZ	2020-03-06	0.617	0.525	0.12	0.135	135.781	212867	0.377
1053	13	Soliá	https://open.spotify.com/track/7sOfmPd18RWp3FoCzpa7Kw	2020-02-29	0.71	0.81	0.0854	0.154	92.041	159282	0.184
1054	13	Está Cabrón Ser Yo	https://open.spotify.com/track/4saHEjXw7O1NXJOzBkUKKG	2020-02-29	0.81	0.854	0.254	0.123	154.083	227939	0.879
1055	383	René	https://open.spotify.com/track/6gm12xlADJwiBbHIKBXzGW	2020-02-27	0.486	0.388	0.126	0.196	90.471	457592	0.467
1056	50	That Way	https://open.spotify.com/track/5raTDhlbxFDnpn89bxArdH	2020-03-01	0.719	0.611	0.0403	0.155	129.962	212354	0.489
1057	13	Que Malo	https://open.spotify.com/track/53v2u51nq3CxiKUNphRzP1	2020-02-29	0.802	0.787	0.0599	0.153	94.026	167975	0.446
1058	13	La Zona	https://open.spotify.com/track/5kqNIqFjijuzvVLhuY9B8j	2020-02-29	0.762	0.801	0.0409	0.254	93.992	136893	0.81
1059	110	Heatin Up (feat. Gunna)	https://open.spotify.com/track/7KSSdFCBHCfq4KPzz78ghk	2020-02-28	0.788	0.436	0.364	0.0979	129.847	177314	0.341
1060	13	<3	https://open.spotify.com/track/4MZSqgwlE71CWZ6qQ3gkKm	2020-02-29	0.631	0.665	0.229	0.152	80.353	157967	0.634
1061	13	Una Vez	https://open.spotify.com/track/5J7teKIJGtqVypgYI6sqXj	2020-02-29	0.55	0.598	0.0831	0.0955	83.836	232496	0.543
1062	13	Hablamos Mañana	https://open.spotify.com/track/1V8XneTrX6kKeoxYbk4x6h	2020-02-29	0.683	0.677	0.0469	0.0998	156.019	240253	0.514
1063	337	The Other Side (from Trolls World Tour)	https://open.spotify.com/track/463PQggkmk5tTw8ug0ahOX	2020-02-26	0.76	0.607	0.0964	0.132	105.979	188187	0.709
1064	13	P FKN R	https://open.spotify.com/track/0fgsKar6uBO08vzHXkTjWi	2020-02-29	0.82	0.635	0.0772	0.244	101.024	258280	0.528
1065	13	Puesto Pa' Guerrial	https://open.spotify.com/track/5gCg2qMPzKkW4jS4dBKdDs	2020-02-29	0.867	0.686	0.221	0.1	139.968	190207	0.658
1066	110	Live Off My Closet (feat. Future)	https://open.spotify.com/track/6AyWdCtEn1DdxjnxPeojR2	2020-02-28	0.807	0.678	0.177	0.0986	147.004	173061	0.21
1067	110	Commercial (feat. Lil Uzi Vert)	https://open.spotify.com/track/3tDqEKKUs6gf8zMvSuLyLA	2020-02-28	0.892	0.486	0.384	0.146	120.998	214215	0.535
1068	302	Matrix	https://open.spotify.com/track/7ygVaACDENw4PgLbN1awFE	2020-02-24	0.789	0.509	0.291	0.272	114.957	183793	0.418
1069	347	100k Cash	https://open.spotify.com/track/033if6Adj8fwBYsQzHOfQ8	2020-02-27	0.701	0.714	0.524	0.0883	86.91	173353	0.604
1070	384	Drown (feat. Clinton Kane)	https://open.spotify.com/track/4RVtBlHFKj51Ipvpfv5ER4	2020-02-27	0.573	0.739	0.0581	0.175	120.077	174062	0.363
1071	4	Cool	https://open.spotify.com/track/2nMOodYNHBAQ3Kc1QNimZU	2020-03-27	0.469	0.785	0.0664	0.0931	89.719	209583	0.79
1072	4	Future Nostalgia	https://open.spotify.com/track/6zrJLhslleCHby0wbUnvVy	2020-03-27	0.875	0.813	0.0579	0.321	114.993	184882	0.859
1073	4	Love Again	https://open.spotify.com/track/4rPkN1FMzQyFNP9cLUGIIB	2020-03-27	0.659	0.667	0.0339	0.1	115.982	258004	0.468
1074	4	Good In Bed	https://open.spotify.com/track/6uAFJ75WDAoAPyCWJAtvks	2020-03-27	0.68	0.701	0.0917	0.168	94.06	218754	0.649
1075	4	Boys Will Be Boys	https://open.spotify.com/track/0vQcyuMEfRBd21ojZ62N2L	2020-03-27	0.768	0.486	0.0353	0.098	125.021	166266	0.519
1076	385	Auto Blu	https://open.spotify.com/track/2chEq24EHjyw9Zjmwq0hlS	2020-03-26	0.82	0.783	0.0621	0.0938	130.015	166087	0.653
1077	386	Du bist mein	https://open.spotify.com/track/719aY5gAzJbx2PHjyalZQu	2020-03-27	0.761	0.556	0.364	0.0976	187.81	160357	0.521
1078	98	Wildflower	https://open.spotify.com/track/353IDEfNzPJmGNRnOi5kJ1	2020-03-27	0.644	0.768	0.0455	0.469	108.992	220536	0.598
1079	141	Allein sein	https://open.spotify.com/track/2TrhpvxwuF6hrboTdRXwnS	2020-03-27	0.774	0.588	0.225	0.258	75.978	147353	0.392
1080	331	Break Up Song	https://open.spotify.com/track/3fEoJxnPpfIHwFHKiFtqbA	2020-11-06	0.631	0.75	0.0394	0.286	90.019	200293	0.593
1081	98	Teeth	https://open.spotify.com/track/26wLOs3ZuHJa2Ihhx6QIE6	2019-08-23	0.749	0.461	0.0416	0.0738	139.02	204887	0.42
1082	387	Daechwita	https://open.spotify.com/track/0H4ugk6rhnXmTl47ayy9O5	2020-05-22	0.65	0.827	0.0599	0.121	144.995	225668	0.223
1083	137	COOLER THAN A BITCH (feat. Roddy Ricch)	https://open.spotify.com/track/5LHHKZOwV8XW4LJP2C64mw	2020-05-22	0.837	0.586	0.0807	0.134	117.066	197000	0.618
1084	1	In Your Eyes (with Doja Cat) - Remix	https://open.spotify.com/track/0UnTaVkntyh3vqvLEvbpQx	2020-05-21	0.679	0.731	0.0319	0.0614	99.984	237912	0.727
1085	137	WUNNA	https://open.spotify.com/track/0y7Ao3CVJsyKFmqdjutiIF	2020-05-22	0.89	0.455	0.255	0.11	148.009	158240	0.313
1086	347	Komm Komm	https://open.spotify.com/track/3US6RbELvvrPw3DcvtJmis	2020-05-21	0.485	0.793	0.426	0.146	87.629	160667	0.371
1087	137	TOP FLOOR (feat. Travis Scott)	https://open.spotify.com/track/4YhJ3a6kBPGJWX4Ek77sDd	2020-05-22	0.823	0.504	0.16	0.417	112.985	169907	0.481
1088	229	Together	https://open.spotify.com/track/5id3Rqn7SPj1LX4FfY4nGz	2020-05-20	0.521	0.877	0.0683	0.0929	180.007	205208	0.199
1089	388	ANGELS & DEMONS	https://open.spotify.com/track/4GUj9MfPPkjpZskxb45uiX	2020-05-18	0.554	0.8	0.0395	0.629	115.056	160120	0.463
1090	123	Confía	https://open.spotify.com/track/5kbps8unnGH4raN5WduZuq	2020-05-21	0.722	0.757	0.0782	0.0657	167.987	202308	0.763
1091	153	Ew	https://open.spotify.com/track/3Nc86B5XmDlG1KuEeSLD8x	2020-09-25	0.48	0.373	0.0278	0.12	114.078	207710	0.0376
1092	85	Epidemic	https://open.spotify.com/track/170DNUSnQRp1tGpppF26pA	2020-09-25	0.616	0.617	0.52	0.177	175.929	177273	0.476
1093	179	bloody valentine	https://open.spotify.com/track/6mADjHs6FXdroPzEGW6KVJ	2020-09-25	0.533	0.858	0.0766	0.148	160.057	205159	0.506
1094	153	MODUS	https://open.spotify.com/track/5BibcbKVdZUuTttSG02JTp	2020-09-25	0.738	0.533	0.0492	0.115	132.008	207265	0.262
1095	153	Tick Tock	https://open.spotify.com/track/2Imn5iTu2xD3gXCqpBqubu	2020-09-25	0.781	0.613	0.0524	0.0976	80.53	132215	0.613
1096	153	Sanctuary	https://open.spotify.com/track/5F1ZmucV0uJY14y2dYKePa	2019-06-14	0.552	0.65	0.128	0.372	167.788	180019	0.316
1097	153	Pretty Boy (feat. Lil Yachty)	https://open.spotify.com/track/0f1G5SHFoFC9lO03gHCGVS	2020-09-25	0.656	0.776	0.0672	0.372	156.049	156759	0.638
1098	153	Afterthought	https://open.spotify.com/track/1ggYjU6zdFHgANcku82boU	2020-09-25	0.668	0.547	0.0353	0.0931	83.5	194871	0.192
1099	179	drunk face	https://open.spotify.com/track/3k0YJnqMKRZb8swo86vCkq	2020-09-25	0.691	0.77	0.0367	0.497	90.024	143901	0.344
1100	50	Silly Watch	https://open.spotify.com/track/5egD7A5x9AHdVO2fMo3Wbo	2020-03-06	0.903	0.535	0.286	0.0851	130.117	195692	0.157
1101	50	Homecoming	https://open.spotify.com/track/6vxU64pcIuQ38O015Zy4qj	2020-03-06	0.929	0.563	0.49	0.244	129.957	213885	0.353
1102	50	I'm Sorry	https://open.spotify.com/track/1xcOYJxDa5pObgxY1r0I9c	2020-03-06	0.858	0.547	0.29	0.104	128.02	211883	0.303
1103	50	Prices	https://open.spotify.com/track/4YcWzLSnGqLjSCycuSMHnn	2020-03-06	0.786	0.683	0.205	0.706	126.002	233333	0.57
1104	50	POP	https://open.spotify.com/track/1jDbQz6tr52WgScCTXMnaN	2020-03-06	0.741	0.599	0.419	0.785	139.891	227474	0.276
1105	50	Celebration Station	https://open.spotify.com/track/25B5fGr9K0VdZJiRFsnMO4	2020-03-06	0.748	0.771	0.15	0.135	142.086	195058	0.792
1106	50	Bigger Than Life	https://open.spotify.com/track/2oHDJHNondITqbl8xZ9vPn	2020-03-06	0.776	0.752	0.193	0.33	140.013	192705	0.716
1107	50	Venetia	https://open.spotify.com/track/3BYIzNZ3t9lRQCACXSMLrT	2020-03-06	0.775	0.757	0.175	0.148	142.933	188800	0.562
1108	50	You Better Move	https://open.spotify.com/track/6YAxCn4juTWn5hWl2hzHGw	2020-03-06	0.842	0.556	0.442	0.204	118.836	196639	0.306
1109	50	Chrome Heart Tags	https://open.spotify.com/track/46mT9NR7N9Zf5MolcrBgE3	2020-03-06	0.702	0.768	0.0669	0.105	70.056	212821	0.574
1110	50	Bust Me	https://open.spotify.com/track/4wBcaYqLPm7EtDVoJQORU4	2020-03-06	0.734	0.703	0.355	0.413	151.923	194452	0.608
1111	106	Who (feat. BTS)	https://open.spotify.com/track/2qG81jL9UIP54uS8gYyP4k	2020-03-06	0.632	0.345	0.0349	0.104	141.641	180413	0.0818
1112	50	Secure The Bag	https://open.spotify.com/track/7gHZGXSJzM29WA384suYY2	2020-03-06	0.803	0.719	0.392	0.425	129.945	238425	0.549
1113	389	Lettre à une femme	https://open.spotify.com/track/5HEtuK03ygUzqca6yfgOYZ	2020-03-07	0.487	0.398	0.0697	0.12	149.367	157766	0.905
1114	50	Urgency (feat. Syd)	https://open.spotify.com/track/5KlPy74NOEAt8jC3FYURnQ	2020-03-06	0.619	0.784	0.123	0.315	156.035	181161	0.471
1115	390	Angst	https://open.spotify.com/track/3R3rQ7FbTJdsi5She10YvI	2020-03-05	0.599	0.79	0.386	0.0778	100.119	201501	0.528
1116	137	SKYBOX	https://open.spotify.com/track/7GwYENSg87oERcW0Wacd6m	2020-03-06	0.779	0.707	0.16	0.0934	140.894	178097	0.343
1117	115	Young & Alive	https://open.spotify.com/track/5RsKelNxucrDxgMbZ3vd3W	2020-03-05	0.716	0.563	0.0425	0.119	86.005	160465	0.495
1118	106	i'm so tired...	https://open.spotify.com/track/4vjpLMyL3ZO6aphdYr8XYw	2020-03-06	0.599	0.733	0.203	0.242	102.211	162583	0.534
1119	19	I Fall Apart	https://open.spotify.com/track/75ZvA4QfFiZvzhj2xkaWAh	2016-12-09	0.556	0.538	0.0382	0.196	143.95	223347	0.291
1120	106	fuck, i'm lonely (with Anne-Marie)	https://open.spotify.com/track/09PGubKAMryhOWv1LHpCYz	2020-03-06	0.806	0.558	0.0683	0.0618	95.016	198973	0.678
1121	106	fuck, i'm lonely (with Anne-Marie) - from “13 Reasons Why: Season 3”	https://open.spotify.com/track/1DEkGXICCGLjDF7C65KBFw	2019-08-01	\N	\N	\N	\N	\N	\N	\N
1122	138	Never Really Over	https://open.spotify.com/track/5PYQUBXc7NYeI1obMKSJK0	2019-05-31	0.77	0.882	0.0602	0.316	99.991	223523	0.385
1123	96	Stupid Again	https://open.spotify.com/track/1fPnUpoXCpD2NDI4vPVeLw	2020-04-10	0.775	0.823	0.0635	0.309	120.059	174848	0.65
1124	205	Shotz Fired	https://open.spotify.com/track/0dy5NFDnx5fuZvE8ZXEX35	2020-04-09	0.839	0.594	0.139	0.165	76.007	179844	0.58
1125	284	BaeBae	https://open.spotify.com/track/1yYBOIXO2H9LDqEPui42GM	2020-04-09	0.628	0.712	0.156	0.156	86.627	167827	0.45
1126	13	SI ELLA SALE	https://open.spotify.com/track/1zaDh3qaGSeSmulNyWlUxm	2020-05-10	0.869	0.727	0.123	0.107	147.967	143240	0.92
1127	13	RONCA FREESTYLE	https://open.spotify.com/track/3XZeOzJ9tqnu58YP6cqApI	2020-05-10	0.856	0.656	0.131	0.0998	90.041	150060	0.586
1128	391	Zoo York (feat. Fivio Foreign & Pop Smoke)	https://open.spotify.com/track/3Ddny34bFoYBb8dIGq5lwp	2020-05-08	0.565	0.569	0.379	0.106	92.466	214825	0.303
1129	13	EN CASITA	https://open.spotify.com/track/2DhNdoHxavs7Qtf5MnhZD0	2020-05-10	0.779	0.764	0.0938	0.0909	158.093	176440	0.675
1130	392	Can I	https://open.spotify.com/track/0uDdI4fAXCuNhQbmxENdsO	2020-05-08	0.574	0.791	0.11	0.0982	119.537	167810	0.612
1131	393	Máquina do Tempo	https://open.spotify.com/track/5oI9blwsXC8AkTWw6wASY8	2020-09-10	0.629	0.727	0.0499	0.138	149.978	230400	0.132
1132	205	Ihr Hobby	https://open.spotify.com/track/4aZfvvgfoSfmSZpfwQYzC0	2020-09-10	0.774	0.814	0.0584	0.118	109.019	185330	0.254
1133	394	Donuts	https://open.spotify.com/track/2nNGV59DJJwk7D5ImGf6uc	2020-02-13	0.784	0.703	0.236	0.0754	141.035	162938	0.556
1134	284	Zu Ende	https://open.spotify.com/track/0Vl4eICpXMjtiK0RhdaWov	2020-01-23	0.707	0.747	0.279	0.183	80.025	197861	0.491
1135	18	B.I.T.C.H.	https://open.spotify.com/track/06scTb0zbkxYNgpAB3J9fN	2020-01-24	0.742	0.731	0.306	0.131	174.019	183143	0.547
1136	395	Bi Sonraki Hayatımda Gel	https://open.spotify.com/track/7BjmOMyfT4PBKbZuSCwWPc	2020-08-28	0.933	0.448	0.136	0.104	103.981	167350	0.737
1137	50	Bean (Kobe) [feat. Chief Keef]	https://open.spotify.com/track/0IpnZchq8ek2A6pGEP2Qb1	2020-03-13	0.733	0.567	0.319	0.382	75.491	238816	0.319
1138	50	Yessirskiii	https://open.spotify.com/track/59JWp4PjZ9TRM8cmtaDYB1	2020-03-13	0.895	0.739	0.283	0.102	140.007	219340	0.763
1139	86	Cardigan	https://open.spotify.com/track/0Li1OuXXfi7950ilZUFGkF	2020-03-13	0.747	0.497	0.0401	0.138	142.046	158709	0.0663
1140	50	Lotus	https://open.spotify.com/track/4SnlSaLJJ7reJMCHM5YUuX	2020-03-13	0.802	0.748	0.207	0.165	150.063	193861	0.516
1141	50	Leaders (feat. NAV)	https://open.spotify.com/track/4D7NrSeqkTarBrJ80b2sBc	2020-03-13	0.95	0.654	0.307	0.138	132.936	194844	0.886
1142	50	Strawberry Peels (feat. Young Thug & Gunna)	https://open.spotify.com/track/4lAQfuREAHG8IC0PiiigBt	2020-03-13	0.862	0.65	0.355	0.568	131.194	115350	0.658
1143	50	Wassup (feat. Future)	https://open.spotify.com/track/19Ec2gbNtQTE44IizcPjtD	2020-03-13	0.762	0.622	0.223	0.145	130.019	193314	0.626
1144	50	Moon Relate	https://open.spotify.com/track/4sWGHlZGM1XA7TyWdtBAbA	2020-03-13	0.867	0.768	0.0791	0.254	102.021	181826	0.34
1145	299	Black And White	https://open.spotify.com/track/7rpNuuoMbid56XkDsx2FjE	2020-03-13	0.443	0.582	0.0482	0.127	147.589	193090	0.239
1146	50	Trap This Way (This Way)	https://open.spotify.com/track/7vTspUAmMKFkUpKL9HLZNL	2020-03-13	0.71	0.586	0.381	0.193	175.987	185439	0.207
1147	50	Got The Guap (feat. Young Thug)	https://open.spotify.com/track/1HF6P40Z7nfExGaB1Gk99v	2020-03-13	0.837	0.601	0.198	0.0928	142.977	176756	0.749
1148	50	I Can Show You	https://open.spotify.com/track/0AhJag7VI8uFf3mJFsTwvf	2020-03-13	0.817	0.656	0.277	0.115	139.915	120076	0.314
1149	7	Bad Child	https://open.spotify.com/track/1qCmZnC1FUpNgOydIzqIPC	2020-03-12	0.756	0.553	0.0343	0.158	117.992	221467	0.597
1150	141	Bad Girls, Good Vibes	https://open.spotify.com/track/7IxGslFZA5QhgXbUsDmcjf	2020-03-13	0.826	0.368	0.133	0.0914	127.977	107446	0.158
1151	293	Lion King On Ice	https://open.spotify.com/track/1ZvBVbsaNqHEP6ymXaPGlj	2020-07-22	0.732	0.663	0.192	0.115	139.964	210587	0.227
1152	293	t h e . c l i m b . b a c k	https://open.spotify.com/track/0FlfN5cbUUpIHCRH8X1M44	2020-07-22	0.618	0.632	0.346	0.353	81.446	306257	0.319
1153	347	Andere Welt	https://open.spotify.com/track/5PAAUJTKLT0nCmHUlLdPXb	2020-07-23	0.692	0.764	0.113	0.106	84.029	189686	0.564
1154	126	TELL ME WHY	https://open.spotify.com/track/3jlxX3VXPiY3lvBBbppQD3	2020-07-24	0.6	0.723	0.158	0.167	149.881	195268	0.463
1155	141	Shit Changed	https://open.spotify.com/track/3JDPPLA5oReVAkrEDcBllG	2020-10-02	0.824	0.528	0.175	0.104	157.005	183839	0.32
1156	364	Story of My Life	https://open.spotify.com/track/4nVBt6MZDDP6tRVdQTgxJg	2013-11-25	0.6	0.663	0.0477	0.119	121.07	245493	0.286
1157	396	Hit My Line	https://open.spotify.com/track/24FR8mXTaiGZPrxnkf1kcP	2020-07-24	0.62	0.786	0.167	0.46	164.057	265191	0.679
\.


--
-- Data for Name: weekly_ranks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weekly_ranks (song_id, artist_id, week_start_date, week_end_date, ranking) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

