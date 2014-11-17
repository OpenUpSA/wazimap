--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: officialemploymentstatus15to17_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus15to17_country (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus15to17_country OWNER TO census;

--
-- Name: officialemploymentstatus15to17_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus15to17_municipality (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus15to17_municipality OWNER TO census;

--
-- Name: officialemploymentstatus15to17_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus15to17_province (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus15to17_province OWNER TO census;

--
-- Name: officialemploymentstatus15to17_subplace; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus15to17_subplace (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    subplace_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus15to17_subplace OWNER TO census;

--
-- Name: officialemploymentstatus15to17_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE officialemploymentstatus15to17_ward (
    total integer NOT NULL,
    "official employment status" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.officialemploymentstatus15to17_ward OWNER TO census;

--
-- Data for Name: officialemploymentstatus15to17_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus15to17_country (total, "official employment status", country_code) FROM stdin;
100680	Employed	ZA
215811	Unemployed	ZA
71469	Discouraged work-seeker	ZA
2579919	Other not economically active	ZA
0	Not applicable	ZA
\.


--
-- Data for Name: officialemploymentstatus15to17_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus15to17_municipality (total, "official employment status", municipality_code) FROM stdin;
138	Employed	EC101
321	Unemployed	EC101
60	Discouraged work-seeker	EC101
2511	Other not economically active	EC101
0	Not applicable	EC101
90	Employed	EC102
195	Unemployed	EC102
57	Discouraged work-seeker	EC102
1587	Other not economically active	EC102
0	Not applicable	EC102
36	Employed	EC103
27	Unemployed	EC103
27	Discouraged work-seeker	EC103
489	Other not economically active	EC103
0	Not applicable	EC103
141	Employed	EC104
369	Unemployed	EC104
126	Discouraged work-seeker	EC104
3420	Other not economically active	EC104
0	Not applicable	EC104
147	Employed	EC105
243	Unemployed	EC105
96	Discouraged work-seeker	EC105
2469	Other not economically active	EC105
0	Not applicable	EC105
150	Employed	EC106
168	Unemployed	EC106
63	Discouraged work-seeker	EC106
2304	Other not economically active	EC106
0	Not applicable	EC106
33	Employed	EC107
108	Unemployed	EC107
39	Discouraged work-seeker	EC107
741	Other not economically active	EC107
0	Not applicable	EC107
306	Employed	EC108
420	Unemployed	EC108
162	Discouraged work-seeker	EC108
3678	Other not economically active	EC108
0	Not applicable	EC108
162	Employed	EC109
162	Unemployed	EC109
75	Discouraged work-seeker	EC109
1449	Other not economically active	EC109
0	Not applicable	EC109
447	Employed	EC121
792	Unemployed	EC121
813	Discouraged work-seeker	EC121
20811	Other not economically active	EC121
0	Not applicable	EC121
330	Employed	EC122
780	Unemployed	EC122
486	Discouraged work-seeker	EC122
18438	Other not economically active	EC122
0	Not applicable	EC122
54	Employed	EC123
78	Unemployed	EC123
126	Discouraged work-seeker	EC123
2082	Other not economically active	EC123
0	Not applicable	EC123
192	Employed	EC124
249	Unemployed	EC124
282	Discouraged work-seeker	EC124
7233	Other not economically active	EC124
0	Not applicable	EC124
60	Employed	EC126
183	Unemployed	EC126
141	Discouraged work-seeker	EC126
3930	Other not economically active	EC126
0	Not applicable	EC126
144	Employed	EC127
441	Unemployed	EC127
294	Discouraged work-seeker	EC127
6417	Other not economically active	EC127
0	Not applicable	EC127
45	Employed	EC128
147	Unemployed	EC128
36	Discouraged work-seeker	EC128
1239	Other not economically active	EC128
0	Not applicable	EC128
156	Employed	EC131
237	Unemployed	EC131
129	Discouraged work-seeker	EC131
2988	Other not economically active	EC131
0	Not applicable	EC131
45	Employed	EC132
84	Unemployed	EC132
78	Discouraged work-seeker	EC132
1905	Other not economically active	EC132
0	Not applicable	EC132
54	Employed	EC133
108	Unemployed	EC133
51	Discouraged work-seeker	EC133
1002	Other not economically active	EC133
0	Not applicable	EC133
207	Employed	EC134
615	Unemployed	EC134
372	Discouraged work-seeker	EC134
10665	Other not economically active	EC134
0	Not applicable	EC134
177	Employed	EC135
432	Unemployed	EC135
369	Discouraged work-seeker	EC135
10257	Other not economically active	EC135
0	Not applicable	EC135
165	Employed	EC136
324	Unemployed	EC136
240	Discouraged work-seeker	EC136
8484	Other not economically active	EC136
0	Not applicable	EC136
321	Employed	EC137
651	Unemployed	EC137
459	Discouraged work-seeker	EC137
11502	Other not economically active	EC137
0	Not applicable	EC137
159	Employed	EC138
309	Unemployed	EC138
123	Discouraged work-seeker	EC138
4065	Other not economically active	EC138
0	Not applicable	EC138
231	Employed	EC141
558	Unemployed	EC141
276	Discouraged work-seeker	EC141
9702	Other not economically active	EC141
0	Not applicable	EC141
261	Employed	EC142
417	Unemployed	EC142
252	Discouraged work-seeker	EC142
8778	Other not economically active	EC142
0	Not applicable	EC142
57	Employed	EC143
213	Unemployed	EC143
63	Discouraged work-seeker	EC143
2121	Other not economically active	EC143
0	Not applicable	EC143
99	Employed	EC144
96	Unemployed	EC144
81	Discouraged work-seeker	EC144
1572	Other not economically active	EC144
0	Not applicable	EC144
489	Employed	EC153
1206	Unemployed	EC153
996	Discouraged work-seeker	EC153
22137	Other not economically active	EC153
0	Not applicable	EC153
315	Employed	EC154
594	Unemployed	EC154
684	Discouraged work-seeker	EC154
13173	Other not economically active	EC154
0	Not applicable	EC154
618	Employed	EC155
993	Unemployed	EC155
690	Discouraged work-seeker	EC155
24276	Other not economically active	EC155
0	Not applicable	EC155
402	Employed	EC156
738	Unemployed	EC156
450	Discouraged work-seeker	EC156
14664	Other not economically active	EC156
0	Not applicable	EC156
990	Employed	EC157
1854	Unemployed	EC157
1119	Discouraged work-seeker	EC157
34497	Other not economically active	EC157
0	Not applicable	EC157
507	Employed	EC441
855	Unemployed	EC441
369	Discouraged work-seeker	EC441
14859	Other not economically active	EC441
0	Not applicable	EC441
498	Employed	EC442
792	Unemployed	EC442
606	Discouraged work-seeker	EC442
13596	Other not economically active	EC442
0	Not applicable	EC442
564	Employed	EC443
996	Unemployed	EC443
984	Discouraged work-seeker	EC443
22950	Other not economically active	EC443
0	Not applicable	EC443
246	Employed	EC444
513	Unemployed	EC444
429	Discouraged work-seeker	EC444
9399	Other not economically active	EC444
0	Not applicable	EC444
1185	Employed	BUF
3312	Unemployed	BUF
792	Discouraged work-seeker	BUF
33642	Other not economically active	BUF
0	Not applicable	BUF
1569	Employed	NMA
5355	Unemployed	NMA
1497	Discouraged work-seeker	NMA
49302	Other not economically active	NMA
0	Not applicable	NMA
84	Employed	FS161
126	Unemployed	FS161
93	Discouraged work-seeker	FS161
1890	Other not economically active	FS161
0	Not applicable	FS161
99	Employed	FS162
162	Unemployed	FS162
99	Discouraged work-seeker	FS162
2253	Other not economically active	FS162
0	Not applicable	FS162
42	Employed	FS163
114	Unemployed	FS163
66	Discouraged work-seeker	FS163
1707	Other not economically active	FS163
0	Not applicable	FS163
27	Employed	FS164
48	Unemployed	FS164
45	Discouraged work-seeker	FS164
1392	Other not economically active	FS164
0	Not applicable	FS164
99	Employed	FS181
300	Unemployed	FS181
117	Discouraged work-seeker	FS181
3030	Other not economically active	FS181
0	Not applicable	FS181
57	Employed	FS182
105	Unemployed	FS182
42	Discouraged work-seeker	FS182
1461	Other not economically active	FS182
0	Not applicable	FS182
90	Employed	FS183
240	Unemployed	FS183
72	Discouraged work-seeker	FS183
2277	Other not economically active	FS183
0	Not applicable	FS183
576	Employed	FS184
1929	Unemployed	FS184
429	Discouraged work-seeker	FS184
18918	Other not economically active	FS184
0	Not applicable	FS184
126	Employed	FS185
309	Unemployed	FS185
165	Discouraged work-seeker	FS185
3897	Other not economically active	FS185
0	Not applicable	FS185
120	Employed	FS191
300	Unemployed	FS191
177	Discouraged work-seeker	FS191
6429	Other not economically active	FS191
0	Not applicable	FS191
168	Employed	FS192
405	Unemployed	FS192
132	Discouraged work-seeker	FS192
6096	Other not economically active	FS192
0	Not applicable	FS192
81	Employed	FS193
198	Unemployed	FS193
129	Discouraged work-seeker	FS193
3198	Other not economically active	FS193
0	Not applicable	FS193
414	Employed	FS194
1233	Unemployed	FS194
558	Discouraged work-seeker	FS194
21093	Other not economically active	FS194
0	Not applicable	FS194
69	Employed	FS195
129	Unemployed	FS195
135	Discouraged work-seeker	FS195
2499	Other not economically active	FS195
0	Not applicable	FS195
72	Employed	FS196
165	Unemployed	FS196
75	Discouraged work-seeker	FS196
2715	Other not economically active	FS196
0	Not applicable	FS196
186	Employed	FS201
672	Unemployed	FS201
138	Discouraged work-seeker	FS201
7500	Other not economically active	FS201
0	Not applicable	FS201
183	Employed	FS203
534	Unemployed	FS203
111	Discouraged work-seeker	FS203
5622	Other not economically active	FS203
0	Not applicable	FS203
273	Employed	FS204
675	Unemployed	FS204
84	Discouraged work-seeker	FS204
6165	Other not economically active	FS204
0	Not applicable	FS204
69	Employed	FS205
219	Unemployed	FS205
87	Discouraged work-seeker	FS205
3165	Other not economically active	FS205
0	Not applicable	FS205
1176	Employed	MAN
2622	Unemployed	MAN
573	Discouraged work-seeker	MAN
35322	Other not economically active	MAN
0	Not applicable	MAN
1107	Employed	GT421
3333	Unemployed	GT421
513	Discouraged work-seeker	GT421
30687	Other not economically active	GT421
0	Not applicable	GT421
243	Employed	GT422
315	Unemployed	GT422
66	Discouraged work-seeker	GT422
3885	Other not economically active	GT422
0	Not applicable	GT422
159	Employed	GT423
420	Unemployed	GT423
105	Discouraged work-seeker	GT423
4188	Other not economically active	GT423
0	Not applicable	GT423
723	Employed	GT481
1371	Unemployed	GT481
324	Discouraged work-seeker	GT481
13170	Other not economically active	GT481
0	Not applicable	GT481
255	Employed	GT482
525	Unemployed	GT482
123	Discouraged work-seeker	GT482
5850	Other not economically active	GT482
0	Not applicable	GT482
195	Employed	GT483
699	Unemployed	GT483
105	Discouraged work-seeker	GT483
3849	Other not economically active	GT483
0	Not applicable	GT483
360	Employed	GT484
807	Unemployed	GT484
177	Discouraged work-seeker	GT484
7257	Other not economically active	GT484
0	Not applicable	GT484
6183	Employed	EKU
14490	Unemployed	EKU
2343	Discouraged work-seeker	EKU
112911	Other not economically active	EKU
0	Not applicable	EKU
9939	Employed	JHB
18780	Unemployed	JHB
3294	Discouraged work-seeker	JHB
141783	Other not economically active	JHB
0	Not applicable	JHB
6195	Employed	TSH
11319	Unemployed	TSH
2211	Discouraged work-seeker	TSH
104016	Other not economically active	TSH
0	Not applicable	TSH
183	Employed	KZN213
555	Unemployed	KZN213
408	Discouraged work-seeker	KZN213
11742	Other not economically active	KZN213
0	Not applicable	KZN213
255	Employed	KZN214
306	Unemployed	KZN214
201	Discouraged work-seeker	KZN214
7191	Other not economically active	KZN214
0	Not applicable	KZN214
69	Employed	KZN215
162	Unemployed	KZN215
132	Discouraged work-seeker	KZN215
3801	Other not economically active	KZN215
0	Not applicable	KZN215
546	Employed	KZN216
975	Unemployed	KZN216
378	Discouraged work-seeker	KZN216
14109	Other not economically active	KZN216
0	Not applicable	KZN216
126	Employed	KZN211
351	Unemployed	KZN211
243	Discouraged work-seeker	KZN211
5250	Other not economically active	KZN211
0	Not applicable	KZN211
159	Employed	KZN212
384	Unemployed	KZN212
135	Discouraged work-seeker	KZN212
3783	Other not economically active	KZN212
0	Not applicable	KZN212
384	Employed	KZN221
429	Unemployed	KZN221
192	Discouraged work-seeker	KZN221
6642	Other not economically active	KZN221
0	Not applicable	KZN221
240	Employed	KZN222
477	Unemployed	KZN222
108	Discouraged work-seeker	KZN222
4683	Other not economically active	KZN222
0	Not applicable	KZN222
120	Employed	KZN223
144	Unemployed	KZN223
102	Discouraged work-seeker	KZN223
1950	Other not economically active	KZN223
0	Not applicable	KZN223
27	Employed	KZN224
69	Unemployed	KZN224
63	Discouraged work-seeker	KZN224
2394	Other not economically active	KZN224
0	Not applicable	KZN224
1029	Employed	KZN225
3441	Unemployed	KZN225
891	Discouraged work-seeker	KZN225
31194	Other not economically active	KZN225
0	Not applicable	KZN225
141	Employed	KZN226
264	Unemployed	KZN226
123	Discouraged work-seeker	KZN226
3555	Other not economically active	KZN226
0	Not applicable	KZN226
189	Employed	KZN227
258	Unemployed	KZN227
195	Discouraged work-seeker	KZN227
3471	Other not economically active	KZN227
0	Not applicable	KZN227
372	Employed	KZN232
1047	Unemployed	KZN232
420	Discouraged work-seeker	KZN232
13545	Other not economically active	KZN232
0	Not applicable	KZN232
117	Employed	KZN233
300	Unemployed	KZN233
372	Discouraged work-seeker	KZN233
7884	Other not economically active	KZN233
0	Not applicable	KZN233
120	Employed	KZN234
306	Unemployed	KZN234
309	Discouraged work-seeker	KZN234
4755	Other not economically active	KZN234
0	Not applicable	KZN234
171	Employed	KZN235
543	Unemployed	KZN235
408	Discouraged work-seeker	KZN235
8862	Other not economically active	KZN235
0	Not applicable	KZN235
210	Employed	KZN236
522	Unemployed	KZN236
231	Discouraged work-seeker	KZN236
7719	Other not economically active	KZN236
0	Not applicable	KZN236
270	Employed	KZN271
576	Unemployed	KZN271
471	Discouraged work-seeker	KZN271
11421	Other not economically active	KZN271
0	Not applicable	KZN271
486	Employed	KZN272
738	Unemployed	KZN272
639	Discouraged work-seeker	KZN272
13659	Other not economically active	KZN272
0	Not applicable	KZN272
96	Employed	KZN273
165	Unemployed	KZN273
69	Discouraged work-seeker	KZN273
2370	Other not economically active	KZN273
0	Not applicable	KZN273
126	Employed	KZN274
477	Unemployed	KZN274
234	Discouraged work-seeker	KZN274
5412	Other not economically active	KZN274
0	Not applicable	KZN274
423	Employed	KZN275
747	Unemployed	KZN275
282	Discouraged work-seeker	KZN275
12096	Other not economically active	KZN275
0	Not applicable	KZN275
654	Employed	KZN282
1674	Unemployed	KZN282
423	Discouraged work-seeker	KZN282
17688	Other not economically active	KZN282
0	Not applicable	KZN282
168	Employed	KZN286
282	Unemployed	KZN286
450	Discouraged work-seeker	KZN286
9045	Other not economically active	KZN286
0	Not applicable	KZN286
198	Employed	KZN281
699	Unemployed	KZN281
255	Discouraged work-seeker	KZN281
7728	Other not economically active	KZN281
0	Not applicable	KZN281
162	Employed	KZN283
441	Unemployed	KZN283
144	Discouraged work-seeker	KZN283
5376	Other not economically active	KZN283
0	Not applicable	KZN283
432	Employed	KZN284
714	Unemployed	KZN284
519	Discouraged work-seeker	KZN284
14715	Other not economically active	KZN284
0	Not applicable	KZN284
117	Employed	KZN285
240	Unemployed	KZN285
132	Discouraged work-seeker	KZN285
2976	Other not economically active	KZN285
0	Not applicable	KZN285
153	Employed	KZN431
354	Unemployed	KZN431
243	Discouraged work-seeker	KZN431
6981	Other not economically active	KZN431
0	Not applicable	KZN431
51	Employed	KZN432
45	Unemployed	KZN432
15	Discouraged work-seeker	KZN432
450	Other not economically active	KZN432
0	Not applicable	KZN432
189	Employed	KZN433
459	Unemployed	KZN433
42	Discouraged work-seeker	KZN433
3285	Other not economically active	KZN433
0	Not applicable	KZN433
204	Employed	KZN434
327	Unemployed	KZN434
216	Discouraged work-seeker	KZN434
6981	Other not economically active	KZN434
0	Not applicable	KZN434
321	Employed	KZN435
744	Unemployed	KZN435
606	Discouraged work-seeker	KZN435
13713	Other not economically active	KZN435
0	Not applicable	KZN435
87	Employed	KZN241
243	Unemployed	KZN241
108	Discouraged work-seeker	KZN241
3960	Other not economically active	KZN241
0	Not applicable	KZN241
369	Employed	KZN242
342	Unemployed	KZN242
462	Discouraged work-seeker	KZN242
12735	Other not economically active	KZN242
0	Not applicable	KZN242
261	Employed	KZN244
594	Unemployed	KZN244
873	Discouraged work-seeker	KZN244
13713	Other not economically active	KZN244
0	Not applicable	KZN244
291	Employed	KZN245
417	Unemployed	KZN245
228	Discouraged work-seeker	KZN245
6906	Other not economically active	KZN245
0	Not applicable	KZN245
504	Employed	KZN252
1278	Unemployed	KZN252
525	Discouraged work-seeker	KZN252
22074	Other not economically active	KZN252
0	Not applicable	KZN252
48	Employed	KZN253
123	Unemployed	KZN253
126	Discouraged work-seeker	KZN253
2052	Other not economically active	KZN253
0	Not applicable	KZN253
105	Employed	KZN254
375	Unemployed	KZN254
156	Discouraged work-seeker	KZN254
7419	Other not economically active	KZN254
0	Not applicable	KZN254
423	Employed	KZN263
810	Unemployed	KZN263
573	Discouraged work-seeker	KZN263
13935	Other not economically active	KZN263
0	Not applicable	KZN263
153	Employed	KZN261
297	Unemployed	KZN261
216	Discouraged work-seeker	KZN261
5367	Other not economically active	KZN261
0	Not applicable	KZN261
339	Employed	KZN262
543	Unemployed	KZN262
378	Discouraged work-seeker	KZN262
8463	Other not economically active	KZN262
0	Not applicable	KZN262
363	Employed	KZN265
756	Unemployed	KZN265
606	Discouraged work-seeker	KZN265
15264	Other not economically active	KZN265
0	Not applicable	KZN265
234	Employed	KZN266
693	Unemployed	KZN266
597	Discouraged work-seeker	KZN266
13830	Other not economically active	KZN266
0	Not applicable	KZN266
243	Employed	KZN294
258	Unemployed	KZN294
318	Discouraged work-seeker	KZN294
7800	Other not economically active	KZN294
0	Not applicable	KZN294
345	Employed	KZN291
543	Unemployed	KZN291
240	Discouraged work-seeker	KZN291
8166	Other not economically active	KZN291
0	Not applicable	KZN291
555	Employed	KZN292
870	Unemployed	KZN292
333	Discouraged work-seeker	KZN292
10737	Other not economically active	KZN292
0	Not applicable	KZN292
183	Employed	KZN293
696	Unemployed	KZN293
447	Discouraged work-seeker	KZN293
9747	Other not economically active	KZN293
0	Not applicable	KZN293
8385	Employed	ETH
17508	Unemployed	ETH
4278	Discouraged work-seeker	ETH
151527	Other not economically active	ETH
0	Not applicable	ETH
243	Employed	LIM331
894	Unemployed	LIM331
348	Discouraged work-seeker	LIM331
18015	Other not economically active	LIM331
0	Not applicable	LIM331
309	Employed	LIM332
636	Unemployed	LIM332
228	Discouraged work-seeker	LIM332
15723	Other not economically active	LIM332
0	Not applicable	LIM332
543	Employed	LIM333
1299	Unemployed	LIM333
318	Discouraged work-seeker	LIM333
23679	Other not economically active	LIM333
0	Not applicable	LIM333
153	Employed	LIM334
516	Unemployed	LIM334
123	Discouraged work-seeker	LIM334
7863	Other not economically active	LIM334
0	Not applicable	LIM334
108	Employed	LIM335
300	Unemployed	LIM335
135	Discouraged work-seeker	LIM335
6273	Other not economically active	LIM335
0	Not applicable	LIM335
108	Employed	LIM342
333	Unemployed	LIM342
144	Discouraged work-seeker	LIM342
6933	Other not economically active	LIM342
0	Not applicable	LIM342
786	Employed	LIM343
1974	Unemployed	LIM343
1035	Discouraged work-seeker	LIM343
45231	Other not economically active	LIM343
0	Not applicable	LIM343
294	Employed	LIM341
357	Unemployed	LIM341
69	Discouraged work-seeker	LIM341
2529	Other not economically active	LIM341
0	Not applicable	LIM341
699	Employed	LIM344
1623	Unemployed	LIM344
549	Discouraged work-seeker	LIM344
34803	Other not economically active	LIM344
0	Not applicable	LIM344
240	Employed	LIM351
465	Unemployed	LIM351
165	Discouraged work-seeker	LIM351
12486	Other not economically active	LIM351
0	Not applicable	LIM351
114	Employed	LIM352
405	Unemployed	LIM352
75	Discouraged work-seeker	LIM352
10458	Other not economically active	LIM352
0	Not applicable	LIM352
123	Employed	LIM353
360	Unemployed	LIM353
72	Discouraged work-seeker	LIM353
8022	Other not economically active	LIM353
0	Not applicable	LIM353
885	Employed	LIM354
2442	Unemployed	LIM354
342	Discouraged work-seeker	LIM354
36564	Other not economically active	LIM354
0	Not applicable	LIM354
216	Employed	LIM355
876	Unemployed	LIM355
231	Discouraged work-seeker	LIM355
16236	Other not economically active	LIM355
0	Not applicable	LIM355
219	Employed	LIM361
336	Unemployed	LIM361
54	Discouraged work-seeker	LIM361
2136	Other not economically active	LIM361
0	Not applicable	LIM361
201	Employed	LIM362
387	Unemployed	LIM362
54	Discouraged work-seeker	LIM362
5031	Other not economically active	LIM362
0	Not applicable	LIM362
105	Employed	LIM364
123	Unemployed	LIM364
42	Discouraged work-seeker	LIM364
1245	Other not economically active	LIM364
0	Not applicable	LIM364
138	Employed	LIM365
246	Unemployed	LIM365
57	Discouraged work-seeker	LIM365
3264	Other not economically active	LIM365
0	Not applicable	LIM365
87	Employed	LIM366
219	Unemployed	LIM366
39	Discouraged work-seeker	LIM366
3138	Other not economically active	LIM366
0	Not applicable	LIM366
324	Employed	LIM367
921	Unemployed	LIM367
321	Discouraged work-seeker	LIM367
20832	Other not economically active	LIM367
0	Not applicable	LIM367
219	Employed	LIM471
495	Unemployed	LIM471
168	Discouraged work-seeker	LIM471
7668	Other not economically active	LIM471
0	Not applicable	LIM471
321	Employed	LIM472
834	Unemployed	LIM472
249	Discouraged work-seeker	LIM472
16164	Other not economically active	LIM472
0	Not applicable	LIM472
246	Employed	LIM473
1059	Unemployed	LIM473
318	Discouraged work-seeker	LIM473
19059	Other not economically active	LIM473
0	Not applicable	LIM473
72	Employed	LIM474
546	Unemployed	LIM474
87	Discouraged work-seeker	LIM474
6165	Other not economically active	LIM474
0	Not applicable	LIM474
378	Employed	LIM475
1812	Unemployed	LIM475
330	Discouraged work-seeker	LIM475
19779	Other not economically active	LIM475
0	Not applicable	LIM475
258	Employed	MP301
720	Unemployed	MP301
345	Discouraged work-seeker	MP301
13089	Other not economically active	MP301
0	Not applicable	MP301
261	Employed	MP302
675	Unemployed	MP302
204	Discouraged work-seeker	MP302
7995	Other not economically active	MP302
0	Not applicable	MP302
354	Employed	MP303
897	Unemployed	MP303
282	Discouraged work-seeker	MP303
11034	Other not economically active	MP303
0	Not applicable	MP303
114	Employed	MP304
309	Unemployed	MP304
234	Discouraged work-seeker	MP304
5046	Other not economically active	MP304
0	Not applicable	MP304
192	Employed	MP305
453	Unemployed	MP305
126	Discouraged work-seeker	MP305
5823	Other not economically active	MP305
0	Not applicable	MP305
66	Employed	MP306
312	Unemployed	MP306
60	Discouraged work-seeker	MP306
1932	Other not economically active	MP306
0	Not applicable	MP306
765	Employed	MP307
1392	Unemployed	MP307
318	Discouraged work-seeker	MP307
12561	Other not economically active	MP307
0	Not applicable	MP307
141	Employed	MP311
354	Unemployed	MP311
75	Discouraged work-seeker	MP311
3390	Other not economically active	MP311
0	Not applicable	MP311
756	Employed	MP312
1650	Unemployed	MP312
318	Discouraged work-seeker	MP312
15618	Other not economically active	MP312
0	Not applicable	MP312
618	Employed	MP313
885	Unemployed	MP313
174	Discouraged work-seeker	MP313
9495	Other not economically active	MP313
0	Not applicable	MP313
63	Employed	MP314
183	Unemployed	MP314
48	Discouraged work-seeker	MP314
2331	Other not economically active	MP314
0	Not applicable	MP314
372	Employed	MP315
1077	Unemployed	MP315
321	Discouraged work-seeker	MP315
18246	Other not economically active	MP315
0	Not applicable	MP315
252	Employed	MP316
849	Unemployed	MP316
246	Discouraged work-seeker	MP316
15768	Other not economically active	MP316
0	Not applicable	MP316
249	Employed	MP321
369	Unemployed	MP321
126	Discouraged work-seeker	MP321
4164	Other not economically active	MP321
0	Not applicable	MP321
1131	Employed	MP322
2367	Unemployed	MP322
636	Discouraged work-seeker	MP322
31446	Other not economically active	MP322
0	Not applicable	MP322
108	Employed	MP323
348	Unemployed	MP323
78	Discouraged work-seeker	MP323
3057	Other not economically active	MP323
0	Not applicable	MP323
1110	Employed	MP324
2127	Unemployed	MP324
915	Discouraged work-seeker	MP324
25872	Other not economically active	MP324
0	Not applicable	MP324
444	Employed	MP325
2283	Unemployed	MP325
903	Discouraged work-seeker	MP325
37950	Other not economically active	MP325
0	Not applicable	MP325
171	Employed	NW371
621	Unemployed	NW371
201	Discouraged work-seeker	NW371
10239	Other not economically active	NW371
0	Not applicable	NW371
831	Employed	NW372
1893	Unemployed	NW372
354	Discouraged work-seeker	NW372
17925	Other not economically active	NW372
0	Not applicable	NW372
1116	Employed	NW373
2532	Unemployed	NW373
450	Discouraged work-seeker	NW373
18543	Other not economically active	NW373
0	Not applicable	NW373
129	Employed	NW374
270	Unemployed	NW374
90	Discouraged work-seeker	NW374
2070	Other not economically active	NW374
0	Not applicable	NW374
225	Employed	NW375
1038	Unemployed	NW375
297	Discouraged work-seeker	NW375
11940	Other not economically active	NW375
0	Not applicable	NW375
126	Employed	NW381
339	Unemployed	NW381
324	Discouraged work-seeker	NW381
6762	Other not economically active	NW381
0	Not applicable	NW381
189	Employed	NW382
315	Unemployed	NW382
240	Discouraged work-seeker	NW382
7500	Other not economically active	NW382
0	Not applicable	NW382
348	Employed	NW383
1176	Unemployed	NW383
450	Discouraged work-seeker	NW383
16734	Other not economically active	NW383
0	Not applicable	NW383
288	Employed	NW384
546	Unemployed	NW384
300	Discouraged work-seeker	NW384
8250	Other not economically active	NW384
0	Not applicable	NW384
183	Employed	NW385
465	Unemployed	NW385
324	Discouraged work-seeker	NW385
7902	Other not economically active	NW385
0	Not applicable	NW385
162	Employed	NW392
327	Unemployed	NW392
135	Discouraged work-seeker	NW392
3090	Other not economically active	NW392
0	Not applicable	NW392
177	Employed	NW393
222	Unemployed	NW393
114	Discouraged work-seeker	NW393
3045	Other not economically active	NW393
0	Not applicable	NW393
189	Employed	NW394
540	Unemployed	NW394
372	Discouraged work-seeker	NW394
11373	Other not economically active	NW394
0	Not applicable	NW394
102	Employed	NW396
168	Unemployed	NW396
153	Discouraged work-seeker	NW396
2598	Other not economically active	NW396
0	Not applicable	NW396
237	Employed	NW397
381	Unemployed	NW397
216	Discouraged work-seeker	NW397
6297	Other not economically active	NW397
0	Not applicable	NW397
114	Employed	NW401
159	Unemployed	NW401
111	Discouraged work-seeker	NW401
2724	Other not economically active	NW401
0	Not applicable	NW401
273	Employed	NW402
519	Unemployed	NW402
87	Discouraged work-seeker	NW402
6504	Other not economically active	NW402
0	Not applicable	NW402
651	Employed	NW403
1752	Unemployed	NW403
390	Discouraged work-seeker	NW403
17793	Other not economically active	NW403
0	Not applicable	NW403
132	Employed	NW404
336	Unemployed	NW404
165	Discouraged work-seeker	NW404
3417	Other not economically active	NW404
0	Not applicable	NW404
30	Employed	NC061
42	Unemployed	NC061
12	Discouraged work-seeker	NC061
468	Other not economically active	NC061
0	Not applicable	NC061
66	Employed	NC062
177	Unemployed	NC062
105	Discouraged work-seeker	NC062
2448	Other not economically active	NC062
0	Not applicable	NC062
12	Employed	NC064
48	Unemployed	NC064
48	Discouraged work-seeker	NC064
486	Other not economically active	NC064
0	Not applicable	NC064
72	Employed	NC065
45	Unemployed	NC065
21	Discouraged work-seeker	NC065
1026	Other not economically active	NC065
0	Not applicable	NC065
51	Employed	NC066
27	Unemployed	NC066
21	Discouraged work-seeker	NC066
531	Other not economically active	NC066
0	Not applicable	NC066
36	Employed	NC067
84	Unemployed	NC067
39	Discouraged work-seeker	NC067
432	Other not economically active	NC067
0	Not applicable	NC067
66	Employed	NC071
150	Unemployed	NC071
42	Discouraged work-seeker	NC071
693	Other not economically active	NC071
0	Not applicable	NC071
60	Employed	NC072
123	Unemployed	NC072
60	Discouraged work-seeker	NC072
1389	Other not economically active	NC072
0	Not applicable	NC072
63	Employed	NC073
267	Unemployed	NC073
102	Discouraged work-seeker	NC073
2124	Other not economically active	NC073
0	Not applicable	NC073
33	Employed	NC074
66	Unemployed	NC074
24	Discouraged work-seeker	NC074
489	Other not economically active	NC074
0	Not applicable	NC074
15	Employed	NC075
51	Unemployed	NC075
15	Discouraged work-seeker	NC075
456	Other not economically active	NC075
0	Not applicable	NC075
42	Employed	NC076
87	Unemployed	NC076
48	Discouraged work-seeker	NC076
726	Other not economically active	NC076
0	Not applicable	NC076
72	Employed	NC077
51	Unemployed	NC077
42	Discouraged work-seeker	NC077
1008	Other not economically active	NC077
0	Not applicable	NC077
60	Employed	NC078
162	Unemployed	NC078
75	Discouraged work-seeker	NC078
1869	Other not economically active	NC078
0	Not applicable	NC078
27	Employed	NC081
33	Unemployed	NC081
15	Discouraged work-seeker	NC081
333	Other not economically active	NC081
0	Not applicable	NC081
399	Employed	NC082
171	Unemployed	NC082
63	Discouraged work-seeker	NC082
2574	Other not economically active	NC082
0	Not applicable	NC082
177	Employed	NC083
390	Unemployed	NC083
162	Discouraged work-seeker	NC083
5076	Other not economically active	NC083
0	Not applicable	NC083
63	Employed	NC084
84	Unemployed	NC084
48	Discouraged work-seeker	NC084
780	Other not economically active	NC084
0	Not applicable	NC084
87	Employed	NC085
165	Unemployed	NC085
18	Discouraged work-seeker	NC085
1521	Other not economically active	NC085
0	Not applicable	NC085
42	Employed	NC086
66	Unemployed	NC086
6	Discouraged work-seeker	NC086
888	Other not economically active	NC086
0	Not applicable	NC086
336	Employed	NC091
1287	Unemployed	NC091
411	Discouraged work-seeker	NC091
11790	Other not economically active	NC091
0	Not applicable	NC091
54	Employed	NC092
279	Unemployed	NC092
90	Discouraged work-seeker	NC092
2199	Other not economically active	NC092
0	Not applicable	NC092
21	Employed	NC093
111	Unemployed	NC093
60	Discouraged work-seeker	NC093
1188	Other not economically active	NC093
0	Not applicable	NC093
78	Employed	NC094
279	Unemployed	NC094
102	Discouraged work-seeker	NC094
3345	Other not economically active	NC094
0	Not applicable	NC094
120	Employed	NC451
198	Unemployed	NC451
189	Discouraged work-seeker	NC451
5532	Other not economically active	NC451
0	Not applicable	NC451
120	Employed	NC452
342	Unemployed	NC452
147	Discouraged work-seeker	NC452
5211	Other not economically active	NC452
0	Not applicable	NC452
96	Employed	NC453
225	Unemployed	NC453
57	Discouraged work-seeker	NC453
1476	Other not economically active	NC453
0	Not applicable	NC453
342	Employed	WC011
234	Unemployed	WC011
93	Discouraged work-seeker	WC011
2895	Other not economically active	WC011
0	Not applicable	WC011
255	Employed	WC012
141	Unemployed	WC012
24	Discouraged work-seeker	WC012
2007	Other not economically active	WC012
0	Not applicable	WC012
315	Employed	WC013
144	Unemployed	WC013
33	Discouraged work-seeker	WC013
2586	Other not economically active	WC013
0	Not applicable	WC013
237	Employed	WC014
564	Unemployed	WC014
114	Discouraged work-seeker	WC014
3723	Other not economically active	WC014
0	Not applicable	WC014
483	Employed	WC015
435	Unemployed	WC015
123	Discouraged work-seeker	WC015
4539	Other not economically active	WC015
0	Not applicable	WC015
660	Employed	WC022
309	Unemployed	WC022
60	Discouraged work-seeker	WC022
4887	Other not economically active	WC022
0	Not applicable	WC022
963	Employed	WC023
1119	Unemployed	WC023
393	Discouraged work-seeker	WC023
11208	Other not economically active	WC023
0	Not applicable	WC023
534	Employed	WC024
606	Unemployed	WC024
210	Discouraged work-seeker	WC024
5931	Other not economically active	WC024
0	Not applicable	WC024
657	Employed	WC025
591	Unemployed	WC025
120	Discouraged work-seeker	WC025
8019	Other not economically active	WC025
0	Not applicable	WC025
636	Employed	WC026
309	Unemployed	WC026
66	Discouraged work-seeker	WC026
4263	Other not economically active	WC026
0	Not applicable	WC026
168	Employed	WC034
135	Unemployed	WC034
21	Discouraged work-seeker	WC034
1527	Other not economically active	WC034
0	Not applicable	WC034
426	Employed	WC031
459	Unemployed	WC031
201	Discouraged work-seeker	WC031
4134	Other not economically active	WC031
0	Not applicable	WC031
207	Employed	WC032
411	Unemployed	WC032
69	Discouraged work-seeker	WC032
2220	Other not economically active	WC032
0	Not applicable	WC032
123	Employed	WC033
135	Unemployed	WC033
99	Discouraged work-seeker	WC033
1281	Other not economically active	WC033
0	Not applicable	WC033
81	Employed	WC041
75	Unemployed	WC041
42	Discouraged work-seeker	WC041
1110	Other not economically active	WC041
0	Not applicable	WC041
168	Employed	WC042
219	Unemployed	WC042
150	Discouraged work-seeker	WC042
1944	Other not economically active	WC042
0	Not applicable	WC042
348	Employed	WC043
342	Unemployed	WC043
126	Discouraged work-seeker	WC043
3054	Other not economically active	WC043
0	Not applicable	WC043
582	Employed	WC044
882	Unemployed	WC044
303	Discouraged work-seeker	WC044
8328	Other not economically active	WC044
0	Not applicable	WC044
258	Employed	WC045
399	Unemployed	WC045
243	Discouraged work-seeker	WC045
4920	Other not economically active	WC045
0	Not applicable	WC045
96	Employed	WC047
330	Unemployed	WC047
69	Discouraged work-seeker	WC047
1821	Other not economically active	WC047
0	Not applicable	WC047
156	Employed	WC048
354	Unemployed	WC048
72	Discouraged work-seeker	WC048
2556	Other not economically active	WC048
0	Not applicable	WC048
45	Employed	WC051
30	Unemployed	WC051
24	Discouraged work-seeker	WC051
333	Other not economically active	WC051
0	Not applicable	WC051
51	Employed	WC052
48	Unemployed	WC052
36	Discouraged work-seeker	WC052
582	Other not economically active	WC052
0	Not applicable	WC052
153	Employed	WC053
225	Unemployed	WC053
195	Discouraged work-seeker	WC053
2160	Other not economically active	WC053
0	Not applicable	WC053
7863	Employed	CPT
17949	Unemployed	CPT
4113	Discouraged work-seeker	CPT
140337	Other not economically active	CPT
0	Not applicable	CPT
\.


--
-- Data for Name: officialemploymentstatus15to17_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus15to17_province (total, "official employment status", province_code) FROM stdin;
11796	Employed	EC
25932	Unemployed	EC
13989	Discouraged work-seeker	EC
404325	Other not economically active	EC
0	Not applicable	EC
4017	Employed	FS
10494	Unemployed	FS
3330	Discouraged work-seeker	FS
136629	Other not economically active	FS
0	Not applicable	FS
25359	Employed	GT
52059	Unemployed	GT
9267	Discouraged work-seeker	GT
427596	Other not economically active	GT
0	Not applicable	GT
21387	Employed	KZN
45561	Unemployed	KZN
20127	Discouraged work-seeker	KZN
590133	Other not economically active	KZN
0	Not applicable	KZN
7131	Employed	LIM
19458	Unemployed	LIM
5556	Discouraged work-seeker	LIM
349302	Other not economically active	LIM
0	Not applicable	LIM
7251	Employed	MP
17256	Unemployed	MP
5400	Discouraged work-seeker	MP
224814	Other not economically active	MP
0	Not applicable	MP
5634	Employed	NW
13590	Unemployed	NW
4779	Discouraged work-seeker	NW
164703	Other not economically active	NW
0	Not applicable	NW
2292	Employed	NC
5016	Unemployed	NC
2025	Discouraged work-seeker	NC
56052	Other not economically active	NC
0	Not applicable	NC
15810	Employed	WC
26448	Unemployed	WC
6999	Discouraged work-seeker	WC
226365	Other not economically active	WC
0	Not applicable	WC
\.


--
-- Data for Name: officialemploymentstatus15to17_subplace; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus15to17_subplace (total, "official employment status", subplace_code) FROM stdin;
\.


--
-- Data for Name: officialemploymentstatus15to17_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY officialemploymentstatus15to17_ward (total, "official employment status", ward_code) FROM stdin;
27	Employed	21001001
60	Unemployed	21001001
21	Discouraged work-seeker	21001001
378	Other not economically active	21001001
0	Not applicable	21001001
18	Employed	21001002
24	Unemployed	21001002
3	Discouraged work-seeker	21001002
363	Other not economically active	21001002
0	Not applicable	21001002
15	Employed	21001003
66	Unemployed	21001003
6	Discouraged work-seeker	21001003
366	Other not economically active	21001003
0	Not applicable	21001003
15	Employed	21001004
63	Unemployed	21001004
3	Discouraged work-seeker	21001004
624	Other not economically active	21001004
0	Not applicable	21001004
12	Employed	21001005
48	Unemployed	21001005
12	Discouraged work-seeker	21001005
291	Other not economically active	21001005
0	Not applicable	21001005
12	Employed	21001006
39	Unemployed	21001006
3	Discouraged work-seeker	21001006
318	Other not economically active	21001006
0	Not applicable	21001006
39	Employed	21001007
12	Unemployed	21001007
12	Discouraged work-seeker	21001007
171	Other not economically active	21001007
0	Not applicable	21001007
24	Employed	21002001
33	Unemployed	21002001
12	Discouraged work-seeker	21002001
168	Other not economically active	21002001
0	Not applicable	21002001
9	Employed	21002002
33	Unemployed	21002002
18	Discouraged work-seeker	21002002
342	Other not economically active	21002002
0	Not applicable	21002002
9	Employed	21002003
57	Unemployed	21002003
12	Discouraged work-seeker	21002003
291	Other not economically active	21002003
0	Not applicable	21002003
24	Employed	21002004
24	Unemployed	21002004
6	Discouraged work-seeker	21002004
303	Other not economically active	21002004
0	Not applicable	21002004
0	Employed	21002005
18	Unemployed	21002005
6	Discouraged work-seeker	21002005
267	Other not economically active	21002005
0	Not applicable	21002005
21	Employed	21002006
30	Unemployed	21002006
6	Discouraged work-seeker	21002006
219	Other not economically active	21002006
0	Not applicable	21002006
21	Employed	21003001
6	Unemployed	21003001
6	Discouraged work-seeker	21003001
120	Other not economically active	21003001
0	Not applicable	21003001
3	Employed	21003002
9	Unemployed	21003002
3	Discouraged work-seeker	21003002
219	Other not economically active	21003002
0	Not applicable	21003002
3	Employed	21003003
3	Unemployed	21003003
12	Discouraged work-seeker	21003003
57	Other not economically active	21003003
0	Not applicable	21003003
12	Employed	21003004
12	Unemployed	21003004
6	Discouraged work-seeker	21003004
90	Other not economically active	21003004
0	Not applicable	21003004
12	Employed	21004001
9	Unemployed	21004001
0	Discouraged work-seeker	21004001
105	Other not economically active	21004001
0	Not applicable	21004001
9	Employed	21004002
27	Unemployed	21004002
9	Discouraged work-seeker	21004002
303	Other not economically active	21004002
0	Not applicable	21004002
9	Employed	21004003
30	Unemployed	21004003
15	Discouraged work-seeker	21004003
300	Other not economically active	21004003
0	Not applicable	21004003
15	Employed	21004004
18	Unemployed	21004004
3	Discouraged work-seeker	21004004
375	Other not economically active	21004004
0	Not applicable	21004004
12	Employed	21004005
39	Unemployed	21004005
18	Discouraged work-seeker	21004005
405	Other not economically active	21004005
0	Not applicable	21004005
0	Employed	21004006
9	Unemployed	21004006
6	Discouraged work-seeker	21004006
228	Other not economically active	21004006
0	Not applicable	21004006
6	Employed	21004007
45	Unemployed	21004007
0	Discouraged work-seeker	21004007
135	Other not economically active	21004007
0	Not applicable	21004007
3	Employed	21004008
6	Unemployed	21004008
0	Discouraged work-seeker	21004008
321	Other not economically active	21004008
0	Not applicable	21004008
6	Employed	21004009
33	Unemployed	21004009
3	Discouraged work-seeker	21004009
207	Other not economically active	21004009
0	Not applicable	21004009
12	Employed	21004010
36	Unemployed	21004010
9	Discouraged work-seeker	21004010
270	Other not economically active	21004010
0	Not applicable	21004010
9	Employed	21004011
36	Unemployed	21004011
18	Discouraged work-seeker	21004011
339	Other not economically active	21004011
0	Not applicable	21004011
0	Employed	21004012
0	Unemployed	21004012
0	Discouraged work-seeker	21004012
33	Other not economically active	21004012
0	Not applicable	21004012
27	Employed	21004013
51	Unemployed	21004013
24	Discouraged work-seeker	21004013
231	Other not economically active	21004013
0	Not applicable	21004013
21	Employed	21004014
21	Unemployed	21004014
18	Discouraged work-seeker	21004014
165	Other not economically active	21004014
0	Not applicable	21004014
3	Employed	21005001
24	Unemployed	21005001
12	Discouraged work-seeker	21005001
333	Other not economically active	21005001
0	Not applicable	21005001
21	Employed	21005002
36	Unemployed	21005002
9	Discouraged work-seeker	21005002
246	Other not economically active	21005002
0	Not applicable	21005002
12	Employed	21005003
27	Unemployed	21005003
9	Discouraged work-seeker	21005003
279	Other not economically active	21005003
0	Not applicable	21005003
36	Employed	21005004
12	Unemployed	21005004
9	Discouraged work-seeker	21005004
180	Other not economically active	21005004
0	Not applicable	21005004
6	Employed	21005005
3	Unemployed	21005005
9	Discouraged work-seeker	21005005
261	Other not economically active	21005005
0	Not applicable	21005005
45	Employed	21005006
42	Unemployed	21005006
24	Discouraged work-seeker	21005006
288	Other not economically active	21005006
0	Not applicable	21005006
3	Employed	21005007
36	Unemployed	21005007
12	Discouraged work-seeker	21005007
258	Other not economically active	21005007
0	Not applicable	21005007
0	Employed	21005008
6	Unemployed	21005008
3	Discouraged work-seeker	21005008
183	Other not economically active	21005008
0	Not applicable	21005008
9	Employed	21005009
42	Unemployed	21005009
9	Discouraged work-seeker	21005009
207	Other not economically active	21005009
0	Not applicable	21005009
3	Employed	21005010
9	Unemployed	21005010
3	Discouraged work-seeker	21005010
231	Other not economically active	21005010
0	Not applicable	21005010
12	Employed	21006001
12	Unemployed	21006001
15	Discouraged work-seeker	21006001
252	Other not economically active	21006001
0	Not applicable	21006001
18	Employed	21006002
24	Unemployed	21006002
6	Discouraged work-seeker	21006002
312	Other not economically active	21006002
0	Not applicable	21006002
18	Employed	21006003
21	Unemployed	21006003
3	Discouraged work-seeker	21006003
318	Other not economically active	21006003
0	Not applicable	21006003
6	Employed	21006004
27	Unemployed	21006004
6	Discouraged work-seeker	21006004
183	Other not economically active	21006004
0	Not applicable	21006004
18	Employed	21006005
12	Unemployed	21006005
6	Discouraged work-seeker	21006005
258	Other not economically active	21006005
0	Not applicable	21006005
18	Employed	21006006
12	Unemployed	21006006
0	Discouraged work-seeker	21006006
258	Other not economically active	21006006
0	Not applicable	21006006
33	Employed	21006007
30	Unemployed	21006007
6	Discouraged work-seeker	21006007
321	Other not economically active	21006007
0	Not applicable	21006007
24	Employed	21006008
24	Unemployed	21006008
12	Discouraged work-seeker	21006008
405	Other not economically active	21006008
0	Not applicable	21006008
0	Employed	21007001
18	Unemployed	21007001
0	Discouraged work-seeker	21007001
72	Other not economically active	21007001
0	Not applicable	21007001
6	Employed	21007002
45	Unemployed	21007002
12	Discouraged work-seeker	21007002
204	Other not economically active	21007002
0	Not applicable	21007002
12	Employed	21007003
33	Unemployed	21007003
18	Discouraged work-seeker	21007003
375	Other not economically active	21007003
0	Not applicable	21007003
18	Employed	21007004
12	Unemployed	21007004
9	Discouraged work-seeker	21007004
90	Other not economically active	21007004
0	Not applicable	21007004
9	Employed	21008001
3	Unemployed	21008001
3	Discouraged work-seeker	21008001
60	Other not economically active	21008001
0	Not applicable	21008001
15	Employed	21008002
21	Unemployed	21008002
3	Discouraged work-seeker	21008002
111	Other not economically active	21008002
0	Not applicable	21008002
3	Employed	21008003
0	Unemployed	21008003
0	Discouraged work-seeker	21008003
24	Other not economically active	21008003
0	Not applicable	21008003
18	Employed	21008004
48	Unemployed	21008004
39	Discouraged work-seeker	21008004
645	Other not economically active	21008004
0	Not applicable	21008004
6	Employed	21008005
6	Unemployed	21008005
12	Discouraged work-seeker	21008005
279	Other not economically active	21008005
0	Not applicable	21008005
3	Employed	21008006
21	Unemployed	21008006
9	Discouraged work-seeker	21008006
255	Other not economically active	21008006
0	Not applicable	21008006
45	Employed	21008007
66	Unemployed	21008007
18	Discouraged work-seeker	21008007
318	Other not economically active	21008007
0	Not applicable	21008007
15	Employed	21008008
24	Unemployed	21008008
6	Discouraged work-seeker	21008008
207	Other not economically active	21008008
0	Not applicable	21008008
24	Employed	21008009
36	Unemployed	21008009
24	Discouraged work-seeker	21008009
480	Other not economically active	21008009
0	Not applicable	21008009
48	Employed	21008010
24	Unemployed	21008010
6	Discouraged work-seeker	21008010
258	Other not economically active	21008010
0	Not applicable	21008010
3	Employed	21008011
6	Unemployed	21008011
0	Discouraged work-seeker	21008011
87	Other not economically active	21008011
0	Not applicable	21008011
21	Employed	21008012
27	Unemployed	21008012
12	Discouraged work-seeker	21008012
135	Other not economically active	21008012
0	Not applicable	21008012
51	Employed	21008013
24	Unemployed	21008013
0	Discouraged work-seeker	21008013
231	Other not economically active	21008013
0	Not applicable	21008013
12	Employed	21008014
27	Unemployed	21008014
12	Discouraged work-seeker	21008014
240	Other not economically active	21008014
0	Not applicable	21008014
27	Employed	21008015
93	Unemployed	21008015
9	Discouraged work-seeker	21008015
351	Other not economically active	21008015
0	Not applicable	21008015
45	Employed	21009001
24	Unemployed	21009001
18	Discouraged work-seeker	21009001
345	Other not economically active	21009001
0	Not applicable	21009001
39	Employed	21009002
12	Unemployed	21009002
12	Discouraged work-seeker	21009002
189	Other not economically active	21009002
0	Not applicable	21009002
24	Employed	21009003
12	Unemployed	21009003
12	Discouraged work-seeker	21009003
273	Other not economically active	21009003
0	Not applicable	21009003
21	Employed	21009004
33	Unemployed	21009004
6	Discouraged work-seeker	21009004
255	Other not economically active	21009004
0	Not applicable	21009004
15	Employed	21009005
36	Unemployed	21009005
24	Discouraged work-seeker	21009005
219	Other not economically active	21009005
0	Not applicable	21009005
15	Employed	21009006
42	Unemployed	21009006
3	Discouraged work-seeker	21009006
168	Other not economically active	21009006
0	Not applicable	21009006
15	Employed	21201001
18	Unemployed	21201001
6	Discouraged work-seeker	21201001
1050	Other not economically active	21201001
0	Not applicable	21201001
30	Employed	21201002
24	Unemployed	21201002
21	Discouraged work-seeker	21201002
609	Other not economically active	21201002
0	Not applicable	21201002
9	Employed	21201003
30	Unemployed	21201003
18	Discouraged work-seeker	21201003
519	Other not economically active	21201003
0	Not applicable	21201003
6	Employed	21201004
18	Unemployed	21201004
18	Discouraged work-seeker	21201004
594	Other not economically active	21201004
0	Not applicable	21201004
24	Employed	21201005
42	Unemployed	21201005
24	Discouraged work-seeker	21201005
681	Other not economically active	21201005
0	Not applicable	21201005
6	Employed	21201006
12	Unemployed	21201006
12	Discouraged work-seeker	21201006
675	Other not economically active	21201006
0	Not applicable	21201006
12	Employed	21201007
18	Unemployed	21201007
27	Discouraged work-seeker	21201007
615	Other not economically active	21201007
0	Not applicable	21201007
21	Employed	21201008
27	Unemployed	21201008
21	Discouraged work-seeker	21201008
705	Other not economically active	21201008
0	Not applicable	21201008
36	Employed	21201009
54	Unemployed	21201009
15	Discouraged work-seeker	21201009
1008	Other not economically active	21201009
0	Not applicable	21201009
9	Employed	21201010
24	Unemployed	21201010
27	Discouraged work-seeker	21201010
585	Other not economically active	21201010
0	Not applicable	21201010
15	Employed	21201011
21	Unemployed	21201011
39	Discouraged work-seeker	21201011
561	Other not economically active	21201011
0	Not applicable	21201011
18	Employed	21201012
12	Unemployed	21201012
12	Discouraged work-seeker	21201012
726	Other not economically active	21201012
0	Not applicable	21201012
18	Employed	21201013
27	Unemployed	21201013
27	Discouraged work-seeker	21201013
567	Other not economically active	21201013
0	Not applicable	21201013
18	Employed	21201014
9	Unemployed	21201014
9	Discouraged work-seeker	21201014
570	Other not economically active	21201014
0	Not applicable	21201014
27	Employed	21201015
39	Unemployed	21201015
63	Discouraged work-seeker	21201015
927	Other not economically active	21201015
0	Not applicable	21201015
18	Employed	21201016
12	Unemployed	21201016
42	Discouraged work-seeker	21201016
855	Other not economically active	21201016
0	Not applicable	21201016
15	Employed	21201017
33	Unemployed	21201017
33	Discouraged work-seeker	21201017
822	Other not economically active	21201017
0	Not applicable	21201017
9	Employed	21201018
9	Unemployed	21201018
33	Discouraged work-seeker	21201018
573	Other not economically active	21201018
0	Not applicable	21201018
24	Employed	21201019
45	Unemployed	21201019
84	Discouraged work-seeker	21201019
1026	Other not economically active	21201019
0	Not applicable	21201019
9	Employed	21201020
18	Unemployed	21201020
66	Discouraged work-seeker	21201020
687	Other not economically active	21201020
0	Not applicable	21201020
12	Employed	21201021
24	Unemployed	21201021
24	Discouraged work-seeker	21201021
489	Other not economically active	21201021
0	Not applicable	21201021
12	Employed	21201022
33	Unemployed	21201022
18	Discouraged work-seeker	21201022
687	Other not economically active	21201022
0	Not applicable	21201022
6	Employed	21201023
9	Unemployed	21201023
18	Discouraged work-seeker	21201023
699	Other not economically active	21201023
0	Not applicable	21201023
18	Employed	21201024
18	Unemployed	21201024
12	Discouraged work-seeker	21201024
495	Other not economically active	21201024
0	Not applicable	21201024
18	Employed	21201025
36	Unemployed	21201025
21	Discouraged work-seeker	21201025
456	Other not economically active	21201025
0	Not applicable	21201025
9	Employed	21201026
48	Unemployed	21201026
36	Discouraged work-seeker	21201026
792	Other not economically active	21201026
0	Not applicable	21201026
6	Employed	21201027
21	Unemployed	21201027
18	Discouraged work-seeker	21201027
387	Other not economically active	21201027
0	Not applicable	21201027
9	Employed	21201028
66	Unemployed	21201028
24	Discouraged work-seeker	21201028
807	Other not economically active	21201028
0	Not applicable	21201028
6	Employed	21201029
12	Unemployed	21201029
6	Discouraged work-seeker	21201029
477	Other not economically active	21201029
0	Not applicable	21201029
9	Employed	21201030
27	Unemployed	21201030
24	Discouraged work-seeker	21201030
609	Other not economically active	21201030
0	Not applicable	21201030
9	Employed	21201031
12	Unemployed	21201031
15	Discouraged work-seeker	21201031
561	Other not economically active	21201031
0	Not applicable	21201031
3	Employed	21202001
36	Unemployed	21202001
0	Discouraged work-seeker	21202001
264	Other not economically active	21202001
0	Not applicable	21202001
30	Employed	21202002
51	Unemployed	21202002
6	Discouraged work-seeker	21202002
411	Other not economically active	21202002
0	Not applicable	21202002
9	Employed	21202003
57	Unemployed	21202003
0	Discouraged work-seeker	21202003
504	Other not economically active	21202003
0	Not applicable	21202003
33	Employed	21202004
24	Unemployed	21202004
3	Discouraged work-seeker	21202004
567	Other not economically active	21202004
0	Not applicable	21202004
27	Employed	21202005
54	Unemployed	21202005
21	Discouraged work-seeker	21202005
636	Other not economically active	21202005
0	Not applicable	21202005
3	Employed	21202006
6	Unemployed	21202006
0	Discouraged work-seeker	21202006
288	Other not economically active	21202006
0	Not applicable	21202006
6	Employed	21202007
27	Unemployed	21202007
15	Discouraged work-seeker	21202007
648	Other not economically active	21202007
0	Not applicable	21202007
3	Employed	21202008
18	Unemployed	21202008
9	Discouraged work-seeker	21202008
639	Other not economically active	21202008
0	Not applicable	21202008
3	Employed	21202009
12	Unemployed	21202009
9	Discouraged work-seeker	21202009
579	Other not economically active	21202009
0	Not applicable	21202009
9	Employed	21202010
27	Unemployed	21202010
18	Discouraged work-seeker	21202010
456	Other not economically active	21202010
0	Not applicable	21202010
3	Employed	21202011
12	Unemployed	21202011
24	Discouraged work-seeker	21202011
513	Other not economically active	21202011
0	Not applicable	21202011
6	Employed	21202012
18	Unemployed	21202012
15	Discouraged work-seeker	21202012
543	Other not economically active	21202012
0	Not applicable	21202012
3	Employed	21202013
9	Unemployed	21202013
12	Discouraged work-seeker	21202013
543	Other not economically active	21202013
0	Not applicable	21202013
6	Employed	21202014
30	Unemployed	21202014
21	Discouraged work-seeker	21202014
504	Other not economically active	21202014
0	Not applicable	21202014
6	Employed	21202015
3	Unemployed	21202015
18	Discouraged work-seeker	21202015
444	Other not economically active	21202015
0	Not applicable	21202015
12	Employed	21202016
15	Unemployed	21202016
18	Discouraged work-seeker	21202016
510	Other not economically active	21202016
0	Not applicable	21202016
15	Employed	21202017
33	Unemployed	21202017
15	Discouraged work-seeker	21202017
609	Other not economically active	21202017
0	Not applicable	21202017
6	Employed	21202018
18	Unemployed	21202018
18	Discouraged work-seeker	21202018
621	Other not economically active	21202018
0	Not applicable	21202018
6	Employed	21202019
18	Unemployed	21202019
9	Discouraged work-seeker	21202019
588	Other not economically active	21202019
0	Not applicable	21202019
12	Employed	21202020
15	Unemployed	21202020
18	Discouraged work-seeker	21202020
543	Other not economically active	21202020
0	Not applicable	21202020
12	Employed	21202021
21	Unemployed	21202021
18	Discouraged work-seeker	21202021
495	Other not economically active	21202021
0	Not applicable	21202021
6	Employed	21202022
21	Unemployed	21202022
27	Discouraged work-seeker	21202022
747	Other not economically active	21202022
0	Not applicable	21202022
6	Employed	21202023
39	Unemployed	21202023
12	Discouraged work-seeker	21202023
567	Other not economically active	21202023
0	Not applicable	21202023
21	Employed	21202024
24	Unemployed	21202024
33	Discouraged work-seeker	21202024
810	Other not economically active	21202024
0	Not applicable	21202024
24	Employed	21202025
33	Unemployed	21202025
51	Discouraged work-seeker	21202025
966	Other not economically active	21202025
0	Not applicable	21202025
12	Employed	21202026
24	Unemployed	21202026
30	Discouraged work-seeker	21202026
888	Other not economically active	21202026
0	Not applicable	21202026
6	Employed	21202027
27	Unemployed	21202027
15	Discouraged work-seeker	21202027
831	Other not economically active	21202027
0	Not applicable	21202027
9	Employed	21202028
42	Unemployed	21202028
12	Discouraged work-seeker	21202028
675	Other not economically active	21202028
0	Not applicable	21202028
9	Employed	21202029
15	Unemployed	21202029
15	Discouraged work-seeker	21202029
729	Other not economically active	21202029
0	Not applicable	21202029
18	Employed	21202030
18	Unemployed	21202030
24	Discouraged work-seeker	21202030
555	Other not economically active	21202030
0	Not applicable	21202030
9	Employed	21202031
30	Unemployed	21202031
9	Discouraged work-seeker	21202031
765	Other not economically active	21202031
0	Not applicable	21202031
18	Employed	21203001
15	Unemployed	21203001
18	Discouraged work-seeker	21203001
318	Other not economically active	21203001
0	Not applicable	21203001
0	Employed	21203002
0	Unemployed	21203002
6	Discouraged work-seeker	21203002
213	Other not economically active	21203002
0	Not applicable	21203002
6	Employed	21203003
6	Unemployed	21203003
15	Discouraged work-seeker	21203003
567	Other not economically active	21203003
0	Not applicable	21203003
6	Employed	21203004
9	Unemployed	21203004
42	Discouraged work-seeker	21203004
327	Other not economically active	21203004
0	Not applicable	21203004
9	Employed	21203005
18	Unemployed	21203005
12	Discouraged work-seeker	21203005
207	Other not economically active	21203005
0	Not applicable	21203005
9	Employed	21203006
15	Unemployed	21203006
18	Discouraged work-seeker	21203006
216	Other not economically active	21203006
0	Not applicable	21203006
9	Employed	21203007
12	Unemployed	21203007
18	Discouraged work-seeker	21203007
231	Other not economically active	21203007
0	Not applicable	21203007
9	Employed	21204001
9	Unemployed	21204001
21	Discouraged work-seeker	21204001
330	Other not economically active	21204001
0	Not applicable	21204001
9	Employed	21204002
18	Unemployed	21204002
6	Discouraged work-seeker	21204002
474	Other not economically active	21204002
0	Not applicable	21204002
3	Employed	21204003
9	Unemployed	21204003
3	Discouraged work-seeker	21204003
441	Other not economically active	21204003
0	Not applicable	21204003
72	Employed	21204004
6	Unemployed	21204004
21	Discouraged work-seeker	21204004
366	Other not economically active	21204004
0	Not applicable	21204004
9	Employed	21204005
18	Unemployed	21204005
21	Discouraged work-seeker	21204005
330	Other not economically active	21204005
0	Not applicable	21204005
15	Employed	21204006
27	Unemployed	21204006
18	Discouraged work-seeker	21204006
354	Other not economically active	21204006
0	Not applicable	21204006
3	Employed	21204007
9	Unemployed	21204007
6	Discouraged work-seeker	21204007
399	Other not economically active	21204007
0	Not applicable	21204007
6	Employed	21204008
3	Unemployed	21204008
9	Discouraged work-seeker	21204008
429	Other not economically active	21204008
0	Not applicable	21204008
3	Employed	21204009
15	Unemployed	21204009
12	Discouraged work-seeker	21204009
276	Other not economically active	21204009
0	Not applicable	21204009
3	Employed	21204010
3	Unemployed	21204010
15	Discouraged work-seeker	21204010
264	Other not economically active	21204010
0	Not applicable	21204010
3	Employed	21204011
9	Unemployed	21204011
3	Discouraged work-seeker	21204011
306	Other not economically active	21204011
0	Not applicable	21204011
3	Employed	21204012
6	Unemployed	21204012
30	Discouraged work-seeker	21204012
528	Other not economically active	21204012
0	Not applicable	21204012
9	Employed	21204013
9	Unemployed	21204013
21	Discouraged work-seeker	21204013
258	Other not economically active	21204013
0	Not applicable	21204013
6	Employed	21204014
6	Unemployed	21204014
9	Discouraged work-seeker	21204014
468	Other not economically active	21204014
0	Not applicable	21204014
9	Employed	21204015
15	Unemployed	21204015
18	Discouraged work-seeker	21204015
300	Other not economically active	21204015
0	Not applicable	21204015
9	Employed	21204016
48	Unemployed	21204016
15	Discouraged work-seeker	21204016
381	Other not economically active	21204016
0	Not applicable	21204016
9	Employed	21204017
9	Unemployed	21204017
9	Discouraged work-seeker	21204017
240	Other not economically active	21204017
0	Not applicable	21204017
6	Employed	21204018
12	Unemployed	21204018
18	Discouraged work-seeker	21204018
369	Other not economically active	21204018
0	Not applicable	21204018
0	Employed	21204019
9	Unemployed	21204019
18	Discouraged work-seeker	21204019
357	Other not economically active	21204019
0	Not applicable	21204019
6	Employed	21204020
18	Unemployed	21204020
15	Discouraged work-seeker	21204020
363	Other not economically active	21204020
0	Not applicable	21204020
6	Employed	21206001
9	Unemployed	21206001
18	Discouraged work-seeker	21206001
270	Other not economically active	21206001
0	Not applicable	21206001
6	Employed	21206002
24	Unemployed	21206002
9	Discouraged work-seeker	21206002
312	Other not economically active	21206002
0	Not applicable	21206002
0	Employed	21206003
15	Unemployed	21206003
0	Discouraged work-seeker	21206003
303	Other not economically active	21206003
0	Not applicable	21206003
0	Employed	21206004
18	Unemployed	21206004
3	Discouraged work-seeker	21206004
339	Other not economically active	21206004
0	Not applicable	21206004
6	Employed	21206005
12	Unemployed	21206005
12	Discouraged work-seeker	21206005
360	Other not economically active	21206005
0	Not applicable	21206005
0	Employed	21206006
6	Unemployed	21206006
6	Discouraged work-seeker	21206006
297	Other not economically active	21206006
0	Not applicable	21206006
6	Employed	21206007
12	Unemployed	21206007
9	Discouraged work-seeker	21206007
303	Other not economically active	21206007
0	Not applicable	21206007
6	Employed	21206008
15	Unemployed	21206008
15	Discouraged work-seeker	21206008
246	Other not economically active	21206008
0	Not applicable	21206008
3	Employed	21206009
9	Unemployed	21206009
9	Discouraged work-seeker	21206009
267	Other not economically active	21206009
0	Not applicable	21206009
6	Employed	21206010
36	Unemployed	21206010
9	Discouraged work-seeker	21206010
237	Other not economically active	21206010
0	Not applicable	21206010
9	Employed	21206011
12	Unemployed	21206011
6	Discouraged work-seeker	21206011
342	Other not economically active	21206011
0	Not applicable	21206011
3	Employed	21206012
6	Unemployed	21206012
24	Discouraged work-seeker	21206012
303	Other not economically active	21206012
0	Not applicable	21206012
6	Employed	21206013
15	Unemployed	21206013
15	Discouraged work-seeker	21206013
348	Other not economically active	21206013
0	Not applicable	21206013
3	Employed	21207001
9	Unemployed	21207001
12	Discouraged work-seeker	21207001
258	Other not economically active	21207001
0	Not applicable	21207001
3	Employed	21207002
30	Unemployed	21207002
9	Discouraged work-seeker	21207002
288	Other not economically active	21207002
0	Not applicable	21207002
6	Employed	21207003
15	Unemployed	21207003
9	Discouraged work-seeker	21207003
276	Other not economically active	21207003
0	Not applicable	21207003
9	Employed	21207004
21	Unemployed	21207004
12	Discouraged work-seeker	21207004
369	Other not economically active	21207004
0	Not applicable	21207004
9	Employed	21207005
15	Unemployed	21207005
6	Discouraged work-seeker	21207005
255	Other not economically active	21207005
0	Not applicable	21207005
3	Employed	21207006
12	Unemployed	21207006
6	Discouraged work-seeker	21207006
255	Other not economically active	21207006
0	Not applicable	21207006
12	Employed	21207007
18	Unemployed	21207007
42	Discouraged work-seeker	21207007
291	Other not economically active	21207007
0	Not applicable	21207007
9	Employed	21207008
66	Unemployed	21207008
36	Discouraged work-seeker	21207008
279	Other not economically active	21207008
0	Not applicable	21207008
9	Employed	21207009
21	Unemployed	21207009
21	Discouraged work-seeker	21207009
480	Other not economically active	21207009
0	Not applicable	21207009
6	Employed	21207010
18	Unemployed	21207010
9	Discouraged work-seeker	21207010
495	Other not economically active	21207010
0	Not applicable	21207010
0	Employed	21207011
6	Unemployed	21207011
9	Discouraged work-seeker	21207011
126	Other not economically active	21207011
0	Not applicable	21207011
3	Employed	21207012
15	Unemployed	21207012
12	Discouraged work-seeker	21207012
360	Other not economically active	21207012
0	Not applicable	21207012
3	Employed	21207013
21	Unemployed	21207013
24	Discouraged work-seeker	21207013
339	Other not economically active	21207013
0	Not applicable	21207013
3	Employed	21207014
18	Unemployed	21207014
6	Discouraged work-seeker	21207014
330	Other not economically active	21207014
0	Not applicable	21207014
3	Employed	21207015
18	Unemployed	21207015
6	Discouraged work-seeker	21207015
285	Other not economically active	21207015
0	Not applicable	21207015
6	Employed	21207016
39	Unemployed	21207016
9	Discouraged work-seeker	21207016
267	Other not economically active	21207016
0	Not applicable	21207016
0	Employed	21207017
18	Unemployed	21207017
0	Discouraged work-seeker	21207017
285	Other not economically active	21207017
0	Not applicable	21207017
3	Employed	21207018
12	Unemployed	21207018
18	Discouraged work-seeker	21207018
354	Other not economically active	21207018
0	Not applicable	21207018
9	Employed	21207019
6	Unemployed	21207019
24	Discouraged work-seeker	21207019
279	Other not economically active	21207019
0	Not applicable	21207019
12	Employed	21207020
24	Unemployed	21207020
9	Discouraged work-seeker	21207020
312	Other not economically active	21207020
0	Not applicable	21207020
27	Employed	21207021
39	Unemployed	21207021
18	Discouraged work-seeker	21207021
228	Other not economically active	21207021
0	Not applicable	21207021
3	Employed	21208001
33	Unemployed	21208001
3	Discouraged work-seeker	21208001
363	Other not economically active	21208001
0	Not applicable	21208001
3	Employed	21208002
18	Unemployed	21208002
3	Discouraged work-seeker	21208002
219	Other not economically active	21208002
0	Not applicable	21208002
3	Employed	21208003
12	Unemployed	21208003
0	Discouraged work-seeker	21208003
183	Other not economically active	21208003
0	Not applicable	21208003
36	Employed	21208004
81	Unemployed	21208004
27	Discouraged work-seeker	21208004
477	Other not economically active	21208004
0	Not applicable	21208004
9	Employed	21301001
51	Unemployed	21301001
27	Discouraged work-seeker	21301001
291	Other not economically active	21301001
0	Not applicable	21301001
12	Employed	21301002
15	Unemployed	21301002
12	Discouraged work-seeker	21301002
261	Other not economically active	21301002
0	Not applicable	21301002
3	Employed	21301003
9	Unemployed	21301003
12	Discouraged work-seeker	21301003
204	Other not economically active	21301003
0	Not applicable	21301003
18	Employed	21301004
12	Unemployed	21301004
15	Discouraged work-seeker	21301004
402	Other not economically active	21301004
0	Not applicable	21301004
27	Employed	21301005
9	Unemployed	21301005
3	Discouraged work-seeker	21301005
426	Other not economically active	21301005
0	Not applicable	21301005
69	Employed	21301006
75	Unemployed	21301006
48	Discouraged work-seeker	21301006
372	Other not economically active	21301006
0	Not applicable	21301006
9	Employed	21301007
21	Unemployed	21301007
12	Discouraged work-seeker	21301007
513	Other not economically active	21301007
0	Not applicable	21301007
3	Employed	21301008
18	Unemployed	21301008
6	Discouraged work-seeker	21301008
270	Other not economically active	21301008
0	Not applicable	21301008
9	Employed	21301009
24	Unemployed	21301009
0	Discouraged work-seeker	21301009
252	Other not economically active	21301009
0	Not applicable	21301009
6	Employed	21302001
12	Unemployed	21302001
27	Discouraged work-seeker	21302001
474	Other not economically active	21302001
0	Not applicable	21302001
6	Employed	21302002
12	Unemployed	21302002
3	Discouraged work-seeker	21302002
297	Other not economically active	21302002
0	Not applicable	21302002
0	Employed	21302003
15	Unemployed	21302003
9	Discouraged work-seeker	21302003
528	Other not economically active	21302003
0	Not applicable	21302003
9	Employed	21302004
21	Unemployed	21302004
21	Discouraged work-seeker	21302004
333	Other not economically active	21302004
0	Not applicable	21302004
24	Employed	21302005
30	Unemployed	21302005
15	Discouraged work-seeker	21302005
270	Other not economically active	21302005
0	Not applicable	21302005
3	Employed	21303001
24	Unemployed	21303001
0	Discouraged work-seeker	21303001
228	Other not economically active	21303001
0	Not applicable	21303001
24	Employed	21303002
30	Unemployed	21303002
6	Discouraged work-seeker	21303002
210	Other not economically active	21303002
0	Not applicable	21303002
3	Employed	21303003
18	Unemployed	21303003
15	Discouraged work-seeker	21303003
279	Other not economically active	21303003
0	Not applicable	21303003
24	Employed	21303004
36	Unemployed	21303004
30	Discouraged work-seeker	21303004
285	Other not economically active	21303004
0	Not applicable	21303004
12	Employed	21304001
21	Unemployed	21304001
18	Discouraged work-seeker	21304001
537	Other not economically active	21304001
0	Not applicable	21304001
9	Employed	21304002
30	Unemployed	21304002
12	Discouraged work-seeker	21304002
438	Other not economically active	21304002
0	Not applicable	21304002
0	Employed	21304003
9	Unemployed	21304003
9	Discouraged work-seeker	21304003
408	Other not economically active	21304003
0	Not applicable	21304003
6	Employed	21304004
3	Unemployed	21304004
12	Discouraged work-seeker	21304004
327	Other not economically active	21304004
0	Not applicable	21304004
3	Employed	21304005
6	Unemployed	21304005
9	Discouraged work-seeker	21304005
327	Other not economically active	21304005
0	Not applicable	21304005
9	Employed	21304006
15	Unemployed	21304006
0	Discouraged work-seeker	21304006
366	Other not economically active	21304006
0	Not applicable	21304006
15	Employed	21304007
87	Unemployed	21304007
27	Discouraged work-seeker	21304007
489	Other not economically active	21304007
0	Not applicable	21304007
9	Employed	21304008
18	Unemployed	21304008
6	Discouraged work-seeker	21304008
345	Other not economically active	21304008
0	Not applicable	21304008
6	Employed	21304009
33	Unemployed	21304009
18	Discouraged work-seeker	21304009
366	Other not economically active	21304009
0	Not applicable	21304009
3	Employed	21304010
6	Unemployed	21304010
15	Discouraged work-seeker	21304010
237	Other not economically active	21304010
0	Not applicable	21304010
9	Employed	21304011
27	Unemployed	21304011
33	Discouraged work-seeker	21304011
504	Other not economically active	21304011
0	Not applicable	21304011
9	Employed	21304012
18	Unemployed	21304012
9	Discouraged work-seeker	21304012
390	Other not economically active	21304012
0	Not applicable	21304012
0	Employed	21304013
18	Unemployed	21304013
6	Discouraged work-seeker	21304013
309	Other not economically active	21304013
0	Not applicable	21304013
6	Employed	21304014
15	Unemployed	21304014
9	Discouraged work-seeker	21304014
384	Other not economically active	21304014
0	Not applicable	21304014
3	Employed	21304015
9	Unemployed	21304015
15	Discouraged work-seeker	21304015
237	Other not economically active	21304015
0	Not applicable	21304015
9	Employed	21304016
9	Unemployed	21304016
9	Discouraged work-seeker	21304016
396	Other not economically active	21304016
0	Not applicable	21304016
9	Employed	21304017
21	Unemployed	21304017
45	Discouraged work-seeker	21304017
426	Other not economically active	21304017
0	Not applicable	21304017
24	Employed	21304018
42	Unemployed	21304018
45	Discouraged work-seeker	21304018
783	Other not economically active	21304018
0	Not applicable	21304018
9	Employed	21304019
48	Unemployed	21304019
18	Discouraged work-seeker	21304019
429	Other not economically active	21304019
0	Not applicable	21304019
6	Employed	21304020
21	Unemployed	21304020
15	Discouraged work-seeker	21304020
348	Other not economically active	21304020
0	Not applicable	21304020
9	Employed	21304021
27	Unemployed	21304021
3	Discouraged work-seeker	21304021
333	Other not economically active	21304021
0	Not applicable	21304021
3	Employed	21304022
33	Unemployed	21304022
0	Discouraged work-seeker	21304022
375	Other not economically active	21304022
0	Not applicable	21304022
3	Employed	21304023
9	Unemployed	21304023
3	Discouraged work-seeker	21304023
213	Other not economically active	21304023
0	Not applicable	21304023
9	Employed	21304024
30	Unemployed	21304024
3	Discouraged work-seeker	21304024
270	Other not economically active	21304024
0	Not applicable	21304024
9	Employed	21304025
36	Unemployed	21304025
6	Discouraged work-seeker	21304025
501	Other not economically active	21304025
0	Not applicable	21304025
9	Employed	21304026
3	Unemployed	21304026
12	Discouraged work-seeker	21304026
555	Other not economically active	21304026
0	Not applicable	21304026
6	Employed	21304027
18	Unemployed	21304027
12	Discouraged work-seeker	21304027
369	Other not economically active	21304027
0	Not applicable	21304027
12	Employed	21305001
12	Unemployed	21305001
15	Discouraged work-seeker	21305001
519	Other not economically active	21305001
0	Not applicable	21305001
0	Employed	21305002
9	Unemployed	21305002
24	Discouraged work-seeker	21305002
426	Other not economically active	21305002
0	Not applicable	21305002
9	Employed	21305003
24	Unemployed	21305003
9	Discouraged work-seeker	21305003
411	Other not economically active	21305003
0	Not applicable	21305003
15	Employed	21305004
24	Unemployed	21305004
24	Discouraged work-seeker	21305004
447	Other not economically active	21305004
0	Not applicable	21305004
9	Employed	21305005
18	Unemployed	21305005
9	Discouraged work-seeker	21305005
636	Other not economically active	21305005
0	Not applicable	21305005
15	Employed	21305006
18	Unemployed	21305006
9	Discouraged work-seeker	21305006
465	Other not economically active	21305006
0	Not applicable	21305006
3	Employed	21305007
9	Unemployed	21305007
9	Discouraged work-seeker	21305007
423	Other not economically active	21305007
0	Not applicable	21305007
9	Employed	21305008
24	Unemployed	21305008
12	Discouraged work-seeker	21305008
474	Other not economically active	21305008
0	Not applicable	21305008
3	Employed	21305009
18	Unemployed	21305009
6	Discouraged work-seeker	21305009
492	Other not economically active	21305009
0	Not applicable	21305009
6	Employed	21305010
24	Unemployed	21305010
6	Discouraged work-seeker	21305010
426	Other not economically active	21305010
0	Not applicable	21305010
3	Employed	21305011
6	Unemployed	21305011
48	Discouraged work-seeker	21305011
372	Other not economically active	21305011
0	Not applicable	21305011
3	Employed	21305012
18	Unemployed	21305012
12	Discouraged work-seeker	21305012
426	Other not economically active	21305012
0	Not applicable	21305012
9	Employed	21305013
15	Unemployed	21305013
12	Discouraged work-seeker	21305013
513	Other not economically active	21305013
0	Not applicable	21305013
12	Employed	21305014
27	Unemployed	21305014
9	Discouraged work-seeker	21305014
762	Other not economically active	21305014
0	Not applicable	21305014
9	Employed	21305015
39	Unemployed	21305015
12	Discouraged work-seeker	21305015
483	Other not economically active	21305015
0	Not applicable	21305015
15	Employed	21305016
21	Unemployed	21305016
9	Discouraged work-seeker	21305016
645	Other not economically active	21305016
0	Not applicable	21305016
9	Employed	21305017
27	Unemployed	21305017
21	Discouraged work-seeker	21305017
447	Other not economically active	21305017
0	Not applicable	21305017
3	Employed	21305018
54	Unemployed	21305018
51	Discouraged work-seeker	21305018
492	Other not economically active	21305018
0	Not applicable	21305018
18	Employed	21305019
15	Unemployed	21305019
18	Discouraged work-seeker	21305019
378	Other not economically active	21305019
0	Not applicable	21305019
6	Employed	21305020
3	Unemployed	21305020
21	Discouraged work-seeker	21305020
399	Other not economically active	21305020
0	Not applicable	21305020
9	Employed	21305021
21	Unemployed	21305021
21	Discouraged work-seeker	21305021
618	Other not economically active	21305021
0	Not applicable	21305021
9	Employed	21306001
15	Unemployed	21306001
24	Discouraged work-seeker	21306001
450	Other not economically active	21306001
0	Not applicable	21306001
6	Employed	21306002
12	Unemployed	21306002
9	Discouraged work-seeker	21306002
396	Other not economically active	21306002
0	Not applicable	21306002
9	Employed	21306003
12	Unemployed	21306003
15	Discouraged work-seeker	21306003
501	Other not economically active	21306003
0	Not applicable	21306003
3	Employed	21306004
30	Unemployed	21306004
12	Discouraged work-seeker	21306004
333	Other not economically active	21306004
0	Not applicable	21306004
18	Employed	21306005
45	Unemployed	21306005
24	Discouraged work-seeker	21306005
726	Other not economically active	21306005
0	Not applicable	21306005
6	Employed	21306006
33	Unemployed	21306006
27	Discouraged work-seeker	21306006
495	Other not economically active	21306006
0	Not applicable	21306006
6	Employed	21306007
27	Unemployed	21306007
6	Discouraged work-seeker	21306007
624	Other not economically active	21306007
0	Not applicable	21306007
6	Employed	21306008
33	Unemployed	21306008
3	Discouraged work-seeker	21306008
783	Other not economically active	21306008
0	Not applicable	21306008
12	Employed	21306009
12	Unemployed	21306009
12	Discouraged work-seeker	21306009
486	Other not economically active	21306009
0	Not applicable	21306009
3	Employed	21306010
18	Unemployed	21306010
6	Discouraged work-seeker	21306010
453	Other not economically active	21306010
0	Not applicable	21306010
12	Employed	21306011
15	Unemployed	21306011
27	Discouraged work-seeker	21306011
423	Other not economically active	21306011
0	Not applicable	21306011
12	Employed	21306012
9	Unemployed	21306012
27	Discouraged work-seeker	21306012
579	Other not economically active	21306012
0	Not applicable	21306012
6	Employed	21306013
9	Unemployed	21306013
18	Discouraged work-seeker	21306013
378	Other not economically active	21306013
0	Not applicable	21306013
6	Employed	21306014
12	Unemployed	21306014
12	Discouraged work-seeker	21306014
510	Other not economically active	21306014
0	Not applicable	21306014
30	Employed	21306015
9	Unemployed	21306015
12	Discouraged work-seeker	21306015
441	Other not economically active	21306015
0	Not applicable	21306015
9	Employed	21306016
12	Unemployed	21306016
3	Discouraged work-seeker	21306016
417	Other not economically active	21306016
0	Not applicable	21306016
6	Employed	21306017
18	Unemployed	21306017
6	Discouraged work-seeker	21306017
489	Other not economically active	21306017
0	Not applicable	21306017
6	Employed	21307001
15	Unemployed	21307001
18	Discouraged work-seeker	21307001
444	Other not economically active	21307001
0	Not applicable	21307001
9	Employed	21307002
27	Unemployed	21307002
12	Discouraged work-seeker	21307002
558	Other not economically active	21307002
0	Not applicable	21307002
9	Employed	21307003
12	Unemployed	21307003
9	Discouraged work-seeker	21307003
372	Other not economically active	21307003
0	Not applicable	21307003
9	Employed	21307004
54	Unemployed	21307004
12	Discouraged work-seeker	21307004
516	Other not economically active	21307004
0	Not applicable	21307004
9	Employed	21307005
48	Unemployed	21307005
33	Discouraged work-seeker	21307005
513	Other not economically active	21307005
0	Not applicable	21307005
18	Employed	21307006
45	Unemployed	21307006
24	Discouraged work-seeker	21307006
633	Other not economically active	21307006
0	Not applicable	21307006
21	Employed	21307007
18	Unemployed	21307007
27	Discouraged work-seeker	21307007
594	Other not economically active	21307007
0	Not applicable	21307007
12	Employed	21307008
51	Unemployed	21307008
24	Discouraged work-seeker	21307008
615	Other not economically active	21307008
0	Not applicable	21307008
9	Employed	21307009
39	Unemployed	21307009
15	Discouraged work-seeker	21307009
468	Other not economically active	21307009
0	Not applicable	21307009
21	Employed	21307010
66	Unemployed	21307010
18	Discouraged work-seeker	21307010
927	Other not economically active	21307010
0	Not applicable	21307010
27	Employed	21307011
12	Unemployed	21307011
6	Discouraged work-seeker	21307011
330	Other not economically active	21307011
0	Not applicable	21307011
21	Employed	21307012
15	Unemployed	21307012
15	Discouraged work-seeker	21307012
555	Other not economically active	21307012
0	Not applicable	21307012
27	Employed	21307013
24	Unemployed	21307013
39	Discouraged work-seeker	21307013
597	Other not economically active	21307013
0	Not applicable	21307013
24	Employed	21307014
27	Unemployed	21307014
9	Discouraged work-seeker	21307014
609	Other not economically active	21307014
0	Not applicable	21307014
45	Employed	21307015
42	Unemployed	21307015
57	Discouraged work-seeker	21307015
708	Other not economically active	21307015
0	Not applicable	21307015
3	Employed	21307016
12	Unemployed	21307016
63	Discouraged work-seeker	21307016
591	Other not economically active	21307016
0	Not applicable	21307016
15	Employed	21307017
57	Unemployed	21307017
15	Discouraged work-seeker	21307017
609	Other not economically active	21307017
0	Not applicable	21307017
18	Employed	21307018
39	Unemployed	21307018
24	Discouraged work-seeker	21307018
660	Other not economically active	21307018
0	Not applicable	21307018
15	Employed	21307019
24	Unemployed	21307019
27	Discouraged work-seeker	21307019
657	Other not economically active	21307019
0	Not applicable	21307019
12	Employed	21307020
30	Unemployed	21307020
15	Discouraged work-seeker	21307020
552	Other not economically active	21307020
0	Not applicable	21307020
33	Employed	21308001
60	Unemployed	21308001
15	Discouraged work-seeker	21308001
438	Other not economically active	21308001
0	Not applicable	21308001
15	Employed	21308002
48	Unemployed	21308002
36	Discouraged work-seeker	21308002
432	Other not economically active	21308002
0	Not applicable	21308002
15	Employed	21308003
24	Unemployed	21308003
9	Discouraged work-seeker	21308003
570	Other not economically active	21308003
0	Not applicable	21308003
12	Employed	21308004
33	Unemployed	21308004
6	Discouraged work-seeker	21308004
342	Other not economically active	21308004
0	Not applicable	21308004
12	Employed	21308005
42	Unemployed	21308005
9	Discouraged work-seeker	21308005
510	Other not economically active	21308005
0	Not applicable	21308005
33	Employed	21308006
18	Unemployed	21308006
6	Discouraged work-seeker	21308006
393	Other not economically active	21308006
0	Not applicable	21308006
9	Employed	21308007
27	Unemployed	21308007
12	Discouraged work-seeker	21308007
495	Other not economically active	21308007
0	Not applicable	21308007
6	Employed	21308008
30	Unemployed	21308008
12	Discouraged work-seeker	21308008
459	Other not economically active	21308008
0	Not applicable	21308008
18	Employed	21308009
27	Unemployed	21308009
21	Discouraged work-seeker	21308009
426	Other not economically active	21308009
0	Not applicable	21308009
18	Employed	21401001
30	Unemployed	21401001
39	Discouraged work-seeker	21401001
630	Other not economically active	21401001
0	Not applicable	21401001
9	Employed	21401002
57	Unemployed	21401002
3	Discouraged work-seeker	21401002
612	Other not economically active	21401002
0	Not applicable	21401002
12	Employed	21401003
42	Unemployed	21401003
15	Discouraged work-seeker	21401003
411	Other not economically active	21401003
0	Not applicable	21401003
12	Employed	21401004
24	Unemployed	21401004
27	Discouraged work-seeker	21401004
348	Other not economically active	21401004
0	Not applicable	21401004
15	Employed	21401005
27	Unemployed	21401005
21	Discouraged work-seeker	21401005
621	Other not economically active	21401005
0	Not applicable	21401005
0	Employed	21401006
21	Unemployed	21401006
6	Discouraged work-seeker	21401006
351	Other not economically active	21401006
0	Not applicable	21401006
9	Employed	21401007
12	Unemployed	21401007
9	Discouraged work-seeker	21401007
519	Other not economically active	21401007
0	Not applicable	21401007
9	Employed	21401008
21	Unemployed	21401008
12	Discouraged work-seeker	21401008
513	Other not economically active	21401008
0	Not applicable	21401008
27	Employed	21401009
48	Unemployed	21401009
21	Discouraged work-seeker	21401009
927	Other not economically active	21401009
0	Not applicable	21401009
12	Employed	21401010
36	Unemployed	21401010
15	Discouraged work-seeker	21401010
636	Other not economically active	21401010
0	Not applicable	21401010
15	Employed	21401011
51	Unemployed	21401011
6	Discouraged work-seeker	21401011
729	Other not economically active	21401011
0	Not applicable	21401011
18	Employed	21401012
18	Unemployed	21401012
12	Discouraged work-seeker	21401012
567	Other not economically active	21401012
0	Not applicable	21401012
24	Employed	21401013
39	Unemployed	21401013
36	Discouraged work-seeker	21401013
726	Other not economically active	21401013
0	Not applicable	21401013
3	Employed	21401014
24	Unemployed	21401014
12	Discouraged work-seeker	21401014
516	Other not economically active	21401014
0	Not applicable	21401014
15	Employed	21401015
51	Unemployed	21401015
12	Discouraged work-seeker	21401015
687	Other not economically active	21401015
0	Not applicable	21401015
9	Employed	21401016
21	Unemployed	21401016
15	Discouraged work-seeker	21401016
486	Other not economically active	21401016
0	Not applicable	21401016
24	Employed	21401017
39	Unemployed	21401017
6	Discouraged work-seeker	21401017
426	Other not economically active	21401017
0	Not applicable	21401017
15	Employed	21402001
30	Unemployed	21402001
12	Discouraged work-seeker	21402001
522	Other not economically active	21402001
0	Not applicable	21402001
15	Employed	21402002
45	Unemployed	21402002
12	Discouraged work-seeker	21402002
966	Other not economically active	21402002
0	Not applicable	21402002
9	Employed	21402003
15	Unemployed	21402003
15	Discouraged work-seeker	21402003
420	Other not economically active	21402003
0	Not applicable	21402003
9	Employed	21402004
15	Unemployed	21402004
6	Discouraged work-seeker	21402004
366	Other not economically active	21402004
0	Not applicable	21402004
6	Employed	21402005
9	Unemployed	21402005
21	Discouraged work-seeker	21402005
330	Other not economically active	21402005
0	Not applicable	21402005
15	Employed	21402006
24	Unemployed	21402006
21	Discouraged work-seeker	21402006
438	Other not economically active	21402006
0	Not applicable	21402006
6	Employed	21402007
18	Unemployed	21402007
18	Discouraged work-seeker	21402007
537	Other not economically active	21402007
0	Not applicable	21402007
30	Employed	21402008
63	Unemployed	21402008
9	Discouraged work-seeker	21402008
540	Other not economically active	21402008
0	Not applicable	21402008
12	Employed	21402009
21	Unemployed	21402009
9	Discouraged work-seeker	21402009
456	Other not economically active	21402009
0	Not applicable	21402009
18	Employed	21402010
21	Unemployed	21402010
21	Discouraged work-seeker	21402010
597	Other not economically active	21402010
0	Not applicable	21402010
15	Employed	21402011
24	Unemployed	21402011
6	Discouraged work-seeker	21402011
474	Other not economically active	21402011
0	Not applicable	21402011
9	Employed	21402012
15	Unemployed	21402012
15	Discouraged work-seeker	21402012
330	Other not economically active	21402012
0	Not applicable	21402012
3	Employed	21402013
12	Unemployed	21402013
9	Discouraged work-seeker	21402013
426	Other not economically active	21402013
0	Not applicable	21402013
15	Employed	21402014
21	Unemployed	21402014
6	Discouraged work-seeker	21402014
486	Other not economically active	21402014
0	Not applicable	21402014
27	Employed	21402015
21	Unemployed	21402015
18	Discouraged work-seeker	21402015
294	Other not economically active	21402015
0	Not applicable	21402015
33	Employed	21402016
15	Unemployed	21402016
21	Discouraged work-seeker	21402016
231	Other not economically active	21402016
0	Not applicable	21402016
9	Employed	21402017
18	Unemployed	21402017
18	Discouraged work-seeker	21402017
447	Other not economically active	21402017
0	Not applicable	21402017
9	Employed	21402018
15	Unemployed	21402018
9	Discouraged work-seeker	21402018
366	Other not economically active	21402018
0	Not applicable	21402018
12	Employed	21402019
18	Unemployed	21402019
12	Discouraged work-seeker	21402019
549	Other not economically active	21402019
0	Not applicable	21402019
6	Employed	21403001
30	Unemployed	21403001
30	Discouraged work-seeker	21403001
264	Other not economically active	21403001
0	Not applicable	21403001
18	Employed	21403002
36	Unemployed	21403002
12	Discouraged work-seeker	21403002
480	Other not economically active	21403002
0	Not applicable	21403002
9	Employed	21403003
24	Unemployed	21403003
6	Discouraged work-seeker	21403003
312	Other not economically active	21403003
0	Not applicable	21403003
12	Employed	21403004
24	Unemployed	21403004
9	Discouraged work-seeker	21403004
366	Other not economically active	21403004
0	Not applicable	21403004
6	Employed	21403005
42	Unemployed	21403005
3	Discouraged work-seeker	21403005
198	Other not economically active	21403005
0	Not applicable	21403005
6	Employed	21403006
57	Unemployed	21403006
9	Discouraged work-seeker	21403006
501	Other not economically active	21403006
0	Not applicable	21403006
15	Employed	21404001
15	Unemployed	21404001
12	Discouraged work-seeker	21404001
267	Other not economically active	21404001
0	Not applicable	21404001
3	Employed	21404002
9	Unemployed	21404002
9	Discouraged work-seeker	21404002
222	Other not economically active	21404002
0	Not applicable	21404002
63	Employed	21404003
39	Unemployed	21404003
30	Discouraged work-seeker	21404003
351	Other not economically active	21404003
0	Not applicable	21404003
9	Employed	21404004
18	Unemployed	21404004
6	Discouraged work-seeker	21404004
255	Other not economically active	21404004
0	Not applicable	21404004
12	Employed	21404005
18	Unemployed	21404005
27	Discouraged work-seeker	21404005
474	Other not economically active	21404005
0	Not applicable	21404005
12	Employed	21503001
12	Unemployed	21503001
33	Discouraged work-seeker	21503001
501	Other not economically active	21503001
0	Not applicable	21503001
12	Employed	21503002
30	Unemployed	21503002
33	Discouraged work-seeker	21503002
792	Other not economically active	21503002
0	Not applicable	21503002
18	Employed	21503003
15	Unemployed	21503003
27	Discouraged work-seeker	21503003
603	Other not economically active	21503003
0	Not applicable	21503003
15	Employed	21503004
27	Unemployed	21503004
39	Discouraged work-seeker	21503004
696	Other not economically active	21503004
0	Not applicable	21503004
21	Employed	21503005
21	Unemployed	21503005
39	Discouraged work-seeker	21503005
837	Other not economically active	21503005
0	Not applicable	21503005
21	Employed	21503006
66	Unemployed	21503006
27	Discouraged work-seeker	21503006
732	Other not economically active	21503006
0	Not applicable	21503006
18	Employed	21503007
42	Unemployed	21503007
51	Discouraged work-seeker	21503007
732	Other not economically active	21503007
0	Not applicable	21503007
15	Employed	21503008
51	Unemployed	21503008
18	Discouraged work-seeker	21503008
657	Other not economically active	21503008
0	Not applicable	21503008
15	Employed	21503009
72	Unemployed	21503009
9	Discouraged work-seeker	21503009
708	Other not economically active	21503009
0	Not applicable	21503009
9	Employed	21503010
27	Unemployed	21503010
33	Discouraged work-seeker	21503010
744	Other not economically active	21503010
0	Not applicable	21503010
15	Employed	21503011
24	Unemployed	21503011
48	Discouraged work-seeker	21503011
771	Other not economically active	21503011
0	Not applicable	21503011
12	Employed	21503012
27	Unemployed	21503012
39	Discouraged work-seeker	21503012
657	Other not economically active	21503012
0	Not applicable	21503012
6	Employed	21503013
27	Unemployed	21503013
24	Discouraged work-seeker	21503013
765	Other not economically active	21503013
0	Not applicable	21503013
9	Employed	21503014
39	Unemployed	21503014
33	Discouraged work-seeker	21503014
639	Other not economically active	21503014
0	Not applicable	21503014
9	Employed	21503015
51	Unemployed	21503015
3	Discouraged work-seeker	21503015
288	Other not economically active	21503015
0	Not applicable	21503015
18	Employed	21503016
39	Unemployed	21503016
42	Discouraged work-seeker	21503016
711	Other not economically active	21503016
0	Not applicable	21503016
9	Employed	21503017
15	Unemployed	21503017
6	Discouraged work-seeker	21503017
654	Other not economically active	21503017
0	Not applicable	21503017
18	Employed	21503018
27	Unemployed	21503018
24	Discouraged work-seeker	21503018
660	Other not economically active	21503018
0	Not applicable	21503018
54	Employed	21503019
36	Unemployed	21503019
15	Discouraged work-seeker	21503019
756	Other not economically active	21503019
0	Not applicable	21503019
12	Employed	21503020
51	Unemployed	21503020
12	Discouraged work-seeker	21503020
921	Other not economically active	21503020
0	Not applicable	21503020
18	Employed	21503021
63	Unemployed	21503021
18	Discouraged work-seeker	21503021
810	Other not economically active	21503021
0	Not applicable	21503021
18	Employed	21503022
66	Unemployed	21503022
39	Discouraged work-seeker	21503022
618	Other not economically active	21503022
0	Not applicable	21503022
15	Employed	21503023
69	Unemployed	21503023
36	Discouraged work-seeker	21503023
438	Other not economically active	21503023
0	Not applicable	21503023
6	Employed	21503024
45	Unemployed	21503024
30	Discouraged work-seeker	21503024
639	Other not economically active	21503024
0	Not applicable	21503024
18	Employed	21503025
42	Unemployed	21503025
30	Discouraged work-seeker	21503025
777	Other not economically active	21503025
0	Not applicable	21503025
39	Employed	21503026
60	Unemployed	21503026
12	Discouraged work-seeker	21503026
774	Other not economically active	21503026
0	Not applicable	21503026
6	Employed	21503027
18	Unemployed	21503027
30	Discouraged work-seeker	21503027
663	Other not economically active	21503027
0	Not applicable	21503027
12	Employed	21503028
24	Unemployed	21503028
42	Discouraged work-seeker	21503028
1032	Other not economically active	21503028
0	Not applicable	21503028
9	Employed	21503029
33	Unemployed	21503029
69	Discouraged work-seeker	21503029
879	Other not economically active	21503029
0	Not applicable	21503029
15	Employed	21503030
42	Unemployed	21503030
48	Discouraged work-seeker	21503030
954	Other not economically active	21503030
0	Not applicable	21503030
12	Employed	21503031
54	Unemployed	21503031
81	Discouraged work-seeker	21503031
723	Other not economically active	21503031
0	Not applicable	21503031
21	Employed	21504001
15	Unemployed	21504001
90	Discouraged work-seeker	21504001
750	Other not economically active	21504001
0	Not applicable	21504001
15	Employed	21504002
6	Unemployed	21504002
18	Discouraged work-seeker	21504002
816	Other not economically active	21504002
0	Not applicable	21504002
30	Employed	21504003
30	Unemployed	21504003
24	Discouraged work-seeker	21504003
843	Other not economically active	21504003
0	Not applicable	21504003
18	Employed	21504004
21	Unemployed	21504004
57	Discouraged work-seeker	21504004
552	Other not economically active	21504004
0	Not applicable	21504004
21	Employed	21504005
63	Unemployed	21504005
9	Discouraged work-seeker	21504005
492	Other not economically active	21504005
0	Not applicable	21504005
12	Employed	21504006
57	Unemployed	21504006
6	Discouraged work-seeker	21504006
318	Other not economically active	21504006
0	Not applicable	21504006
12	Employed	21504007
21	Unemployed	21504007
30	Discouraged work-seeker	21504007
738	Other not economically active	21504007
0	Not applicable	21504007
36	Employed	21504008
9	Unemployed	21504008
33	Discouraged work-seeker	21504008
600	Other not economically active	21504008
0	Not applicable	21504008
18	Employed	21504009
39	Unemployed	21504009
21	Discouraged work-seeker	21504009
510	Other not economically active	21504009
0	Not applicable	21504009
15	Employed	21504010
33	Unemployed	21504010
33	Discouraged work-seeker	21504010
651	Other not economically active	21504010
0	Not applicable	21504010
15	Employed	21504011
33	Unemployed	21504011
42	Discouraged work-seeker	21504011
696	Other not economically active	21504011
0	Not applicable	21504011
9	Employed	21504012
33	Unemployed	21504012
39	Discouraged work-seeker	21504012
840	Other not economically active	21504012
0	Not applicable	21504012
9	Employed	21504013
15	Unemployed	21504013
39	Discouraged work-seeker	21504013
702	Other not economically active	21504013
0	Not applicable	21504013
24	Employed	21504014
36	Unemployed	21504014
30	Discouraged work-seeker	21504014
618	Other not economically active	21504014
0	Not applicable	21504014
9	Employed	21504015
12	Unemployed	21504015
18	Discouraged work-seeker	21504015
396	Other not economically active	21504015
0	Not applicable	21504015
9	Employed	21504016
66	Unemployed	21504016
87	Discouraged work-seeker	21504016
489	Other not economically active	21504016
0	Not applicable	21504016
6	Employed	21504017
9	Unemployed	21504017
42	Discouraged work-seeker	21504017
597	Other not economically active	21504017
0	Not applicable	21504017
15	Employed	21504018
24	Unemployed	21504018
24	Discouraged work-seeker	21504018
732	Other not economically active	21504018
0	Not applicable	21504018
15	Employed	21504019
39	Unemployed	21504019
27	Discouraged work-seeker	21504019
972	Other not economically active	21504019
0	Not applicable	21504019
9	Employed	21504020
30	Unemployed	21504020
18	Discouraged work-seeker	21504020
864	Other not economically active	21504020
0	Not applicable	21504020
12	Employed	21505001
36	Unemployed	21505001
51	Discouraged work-seeker	21505001
852	Other not economically active	21505001
0	Not applicable	21505001
18	Employed	21505002
15	Unemployed	21505002
12	Discouraged work-seeker	21505002
672	Other not economically active	21505002
0	Not applicable	21505002
18	Employed	21505003
39	Unemployed	21505003
39	Discouraged work-seeker	21505003
534	Other not economically active	21505003
0	Not applicable	21505003
9	Employed	21505004
18	Unemployed	21505004
27	Discouraged work-seeker	21505004
684	Other not economically active	21505004
0	Not applicable	21505004
6	Employed	21505005
12	Unemployed	21505005
54	Discouraged work-seeker	21505005
786	Other not economically active	21505005
0	Not applicable	21505005
27	Employed	21505006
39	Unemployed	21505006
12	Discouraged work-seeker	21505006
930	Other not economically active	21505006
0	Not applicable	21505006
6	Employed	21505007
39	Unemployed	21505007
18	Discouraged work-seeker	21505007
639	Other not economically active	21505007
0	Not applicable	21505007
3	Employed	21505008
42	Unemployed	21505008
9	Discouraged work-seeker	21505008
666	Other not economically active	21505008
0	Not applicable	21505008
21	Employed	21505009
69	Unemployed	21505009
9	Discouraged work-seeker	21505009
852	Other not economically active	21505009
0	Not applicable	21505009
48	Employed	21505010
51	Unemployed	21505010
15	Discouraged work-seeker	21505010
831	Other not economically active	21505010
0	Not applicable	21505010
27	Employed	21505011
72	Unemployed	21505011
36	Discouraged work-seeker	21505011
915	Other not economically active	21505011
0	Not applicable	21505011
27	Employed	21505012
45	Unemployed	21505012
15	Discouraged work-seeker	21505012
756	Other not economically active	21505012
0	Not applicable	21505012
9	Employed	21505013
33	Unemployed	21505013
21	Discouraged work-seeker	21505013
690	Other not economically active	21505013
0	Not applicable	21505013
24	Employed	21505014
6	Unemployed	21505014
12	Discouraged work-seeker	21505014
708	Other not economically active	21505014
0	Not applicable	21505014
12	Employed	21505015
33	Unemployed	21505015
15	Discouraged work-seeker	21505015
960	Other not economically active	21505015
0	Not applicable	21505015
12	Employed	21505016
24	Unemployed	21505016
27	Discouraged work-seeker	21505016
762	Other not economically active	21505016
0	Not applicable	21505016
57	Employed	21505017
30	Unemployed	21505017
3	Discouraged work-seeker	21505017
915	Other not economically active	21505017
0	Not applicable	21505017
9	Employed	21505018
9	Unemployed	21505018
24	Discouraged work-seeker	21505018
708	Other not economically active	21505018
0	Not applicable	21505018
18	Employed	21505019
18	Unemployed	21505019
33	Discouraged work-seeker	21505019
1023	Other not economically active	21505019
0	Not applicable	21505019
21	Employed	21505020
18	Unemployed	21505020
39	Discouraged work-seeker	21505020
1086	Other not economically active	21505020
0	Not applicable	21505020
48	Employed	21505021
18	Unemployed	21505021
12	Discouraged work-seeker	21505021
534	Other not economically active	21505021
0	Not applicable	21505021
24	Employed	21505022
48	Unemployed	21505022
9	Discouraged work-seeker	21505022
924	Other not economically active	21505022
0	Not applicable	21505022
21	Employed	21505023
15	Unemployed	21505023
30	Discouraged work-seeker	21505023
762	Other not economically active	21505023
0	Not applicable	21505023
6	Employed	21505024
27	Unemployed	21505024
12	Discouraged work-seeker	21505024
660	Other not economically active	21505024
0	Not applicable	21505024
15	Employed	21505025
18	Unemployed	21505025
60	Discouraged work-seeker	21505025
675	Other not economically active	21505025
0	Not applicable	21505025
18	Employed	21505026
33	Unemployed	21505026
27	Discouraged work-seeker	21505026
915	Other not economically active	21505026
0	Not applicable	21505026
12	Employed	21505027
27	Unemployed	21505027
9	Discouraged work-seeker	21505027
555	Other not economically active	21505027
0	Not applicable	21505027
30	Employed	21505028
9	Unemployed	21505028
18	Discouraged work-seeker	21505028
720	Other not economically active	21505028
0	Not applicable	21505028
36	Employed	21505029
27	Unemployed	21505029
12	Discouraged work-seeker	21505029
855	Other not economically active	21505029
0	Not applicable	21505029
9	Employed	21505030
54	Unemployed	21505030
12	Discouraged work-seeker	21505030
900	Other not economically active	21505030
0	Not applicable	21505030
9	Employed	21505031
60	Unemployed	21505031
18	Discouraged work-seeker	21505031
804	Other not economically active	21505031
0	Not applicable	21505031
6	Employed	21506001
36	Unemployed	21506001
18	Discouraged work-seeker	21506001
615	Other not economically active	21506001
0	Not applicable	21506001
12	Employed	21506002
12	Unemployed	21506002
39	Discouraged work-seeker	21506002
408	Other not economically active	21506002
0	Not applicable	21506002
6	Employed	21506003
18	Unemployed	21506003
18	Discouraged work-seeker	21506003
684	Other not economically active	21506003
0	Not applicable	21506003
24	Employed	21506004
36	Unemployed	21506004
15	Discouraged work-seeker	21506004
504	Other not economically active	21506004
0	Not applicable	21506004
12	Employed	21506005
30	Unemployed	21506005
6	Discouraged work-seeker	21506005
423	Other not economically active	21506005
0	Not applicable	21506005
63	Employed	21506006
54	Unemployed	21506006
12	Discouraged work-seeker	21506006
681	Other not economically active	21506006
0	Not applicable	21506006
6	Employed	21506007
18	Unemployed	21506007
21	Discouraged work-seeker	21506007
468	Other not economically active	21506007
0	Not applicable	21506007
9	Employed	21506008
18	Unemployed	21506008
21	Discouraged work-seeker	21506008
717	Other not economically active	21506008
0	Not applicable	21506008
9	Employed	21506009
33	Unemployed	21506009
0	Discouraged work-seeker	21506009
411	Other not economically active	21506009
0	Not applicable	21506009
15	Employed	21506010
27	Unemployed	21506010
12	Discouraged work-seeker	21506010
561	Other not economically active	21506010
0	Not applicable	21506010
33	Employed	21506011
39	Unemployed	21506011
15	Discouraged work-seeker	21506011
633	Other not economically active	21506011
0	Not applicable	21506011
12	Employed	21506012
27	Unemployed	21506012
27	Discouraged work-seeker	21506012
723	Other not economically active	21506012
0	Not applicable	21506012
12	Employed	21506013
21	Unemployed	21506013
21	Discouraged work-seeker	21506013
690	Other not economically active	21506013
0	Not applicable	21506013
9	Employed	21506014
51	Unemployed	21506014
33	Discouraged work-seeker	21506014
549	Other not economically active	21506014
0	Not applicable	21506014
33	Employed	21506015
21	Unemployed	21506015
12	Discouraged work-seeker	21506015
768	Other not economically active	21506015
0	Not applicable	21506015
48	Employed	21506016
24	Unemployed	21506016
24	Discouraged work-seeker	21506016
615	Other not economically active	21506016
0	Not applicable	21506016
15	Employed	21506017
24	Unemployed	21506017
36	Discouraged work-seeker	21506017
591	Other not economically active	21506017
0	Not applicable	21506017
15	Employed	21506018
36	Unemployed	21506018
15	Discouraged work-seeker	21506018
504	Other not economically active	21506018
0	Not applicable	21506018
9	Employed	21506019
39	Unemployed	21506019
9	Discouraged work-seeker	21506019
555	Other not economically active	21506019
0	Not applicable	21506019
9	Employed	21506020
15	Unemployed	21506020
21	Discouraged work-seeker	21506020
354	Other not economically active	21506020
0	Not applicable	21506020
3	Employed	21506021
27	Unemployed	21506021
12	Discouraged work-seeker	21506021
483	Other not economically active	21506021
0	Not applicable	21506021
21	Employed	21506022
24	Unemployed	21506022
6	Discouraged work-seeker	21506022
438	Other not economically active	21506022
0	Not applicable	21506022
9	Employed	21506023
42	Unemployed	21506023
24	Discouraged work-seeker	21506023
600	Other not economically active	21506023
0	Not applicable	21506023
3	Employed	21506024
18	Unemployed	21506024
12	Discouraged work-seeker	21506024
708	Other not economically active	21506024
0	Not applicable	21506024
12	Employed	21506025
33	Unemployed	21506025
6	Discouraged work-seeker	21506025
594	Other not economically active	21506025
0	Not applicable	21506025
3	Employed	21506026
9	Unemployed	21506026
12	Discouraged work-seeker	21506026
399	Other not economically active	21506026
0	Not applicable	21506026
39	Employed	21507001
45	Unemployed	21507001
9	Discouraged work-seeker	21507001
681	Other not economically active	21507001
0	Not applicable	21507001
15	Employed	21507002
36	Unemployed	21507002
18	Discouraged work-seeker	21507002
651	Other not economically active	21507002
0	Not applicable	21507002
18	Employed	21507003
63	Unemployed	21507003
12	Discouraged work-seeker	21507003
819	Other not economically active	21507003
0	Not applicable	21507003
63	Employed	21507004
66	Unemployed	21507004
27	Discouraged work-seeker	21507004
1125	Other not economically active	21507004
0	Not applicable	21507004
15	Employed	21507005
12	Unemployed	21507005
0	Discouraged work-seeker	21507005
411	Other not economically active	21507005
0	Not applicable	21507005
21	Employed	21507006
30	Unemployed	21507006
0	Discouraged work-seeker	21507006
603	Other not economically active	21507006
0	Not applicable	21507006
6	Employed	21507007
15	Unemployed	21507007
3	Discouraged work-seeker	21507007
105	Other not economically active	21507007
0	Not applicable	21507007
24	Employed	21507008
51	Unemployed	21507008
18	Discouraged work-seeker	21507008
888	Other not economically active	21507008
0	Not applicable	21507008
36	Employed	21507009
48	Unemployed	21507009
12	Discouraged work-seeker	21507009
1017	Other not economically active	21507009
0	Not applicable	21507009
18	Employed	21507010
39	Unemployed	21507010
27	Discouraged work-seeker	21507010
846	Other not economically active	21507010
0	Not applicable	21507010
45	Employed	21507011
108	Unemployed	21507011
15	Discouraged work-seeker	21507011
1683	Other not economically active	21507011
0	Not applicable	21507011
33	Employed	21507012
87	Unemployed	21507012
18	Discouraged work-seeker	21507012
936	Other not economically active	21507012
0	Not applicable	21507012
12	Employed	21507013
51	Unemployed	21507013
9	Discouraged work-seeker	21507013
744	Other not economically active	21507013
0	Not applicable	21507013
21	Employed	21507014
45	Unemployed	21507014
18	Discouraged work-seeker	21507014
933	Other not economically active	21507014
0	Not applicable	21507014
18	Employed	21507015
24	Unemployed	21507015
33	Discouraged work-seeker	21507015
834	Other not economically active	21507015
0	Not applicable	21507015
15	Employed	21507016
96	Unemployed	21507016
39	Discouraged work-seeker	21507016
1050	Other not economically active	21507016
0	Not applicable	21507016
18	Employed	21507017
45	Unemployed	21507017
57	Discouraged work-seeker	21507017
909	Other not economically active	21507017
0	Not applicable	21507017
27	Employed	21507018
48	Unemployed	21507018
30	Discouraged work-seeker	21507018
1014	Other not economically active	21507018
0	Not applicable	21507018
15	Employed	21507019
42	Unemployed	21507019
51	Discouraged work-seeker	21507019
1188	Other not economically active	21507019
0	Not applicable	21507019
27	Employed	21507020
33	Unemployed	21507020
78	Discouraged work-seeker	21507020
1398	Other not economically active	21507020
0	Not applicable	21507020
27	Employed	21507021
39	Unemployed	21507021
27	Discouraged work-seeker	21507021
1128	Other not economically active	21507021
0	Not applicable	21507021
33	Employed	21507022
57	Unemployed	21507022
51	Discouraged work-seeker	21507022
1269	Other not economically active	21507022
0	Not applicable	21507022
54	Employed	21507023
51	Unemployed	21507023
51	Discouraged work-seeker	21507023
1266	Other not economically active	21507023
0	Not applicable	21507023
24	Employed	21507024
54	Unemployed	21507024
21	Discouraged work-seeker	21507024
1371	Other not economically active	21507024
0	Not applicable	21507024
45	Employed	21507025
96	Unemployed	21507025
93	Discouraged work-seeker	21507025
1767	Other not economically active	21507025
0	Not applicable	21507025
30	Employed	21507026
78	Unemployed	21507026
42	Discouraged work-seeker	21507026
1086	Other not economically active	21507026
0	Not applicable	21507026
24	Employed	21507027
60	Unemployed	21507027
69	Discouraged work-seeker	21507027
1119	Other not economically active	21507027
0	Not applicable	21507027
18	Employed	21507028
30	Unemployed	21507028
42	Discouraged work-seeker	21507028
972	Other not economically active	21507028
0	Not applicable	21507028
45	Employed	21507029
48	Unemployed	21507029
30	Discouraged work-seeker	21507029
1014	Other not economically active	21507029
0	Not applicable	21507029
33	Employed	21507030
96	Unemployed	21507030
30	Discouraged work-seeker	21507030
840	Other not economically active	21507030
0	Not applicable	21507030
12	Employed	21507031
33	Unemployed	21507031
27	Discouraged work-seeker	21507031
978	Other not economically active	21507031
0	Not applicable	21507031
21	Employed	21507032
54	Unemployed	21507032
54	Discouraged work-seeker	21507032
1137	Other not economically active	21507032
0	Not applicable	21507032
21	Employed	21507033
54	Unemployed	21507033
21	Discouraged work-seeker	21507033
975	Other not economically active	21507033
0	Not applicable	21507033
15	Employed	21507034
51	Unemployed	21507034
48	Discouraged work-seeker	21507034
888	Other not economically active	21507034
0	Not applicable	21507034
105	Employed	21507035
57	Unemployed	21507035
39	Discouraged work-seeker	21507035
855	Other not economically active	21507035
0	Not applicable	21507035
12	Employed	24401001
15	Unemployed	24401001
12	Discouraged work-seeker	24401001
564	Other not economically active	24401001
0	Not applicable	24401001
30	Employed	24401002
78	Unemployed	24401002
18	Discouraged work-seeker	24401002
987	Other not economically active	24401002
0	Not applicable	24401002
18	Employed	24401003
78	Unemployed	24401003
18	Discouraged work-seeker	24401003
534	Other not economically active	24401003
0	Not applicable	24401003
9	Employed	24401004
18	Unemployed	24401004
6	Discouraged work-seeker	24401004
726	Other not economically active	24401004
0	Not applicable	24401004
27	Employed	24401005
33	Unemployed	24401005
27	Discouraged work-seeker	24401005
582	Other not economically active	24401005
0	Not applicable	24401005
6	Employed	24401006
33	Unemployed	24401006
6	Discouraged work-seeker	24401006
474	Other not economically active	24401006
0	Not applicable	24401006
21	Employed	24401007
15	Unemployed	24401007
30	Discouraged work-seeker	24401007
630	Other not economically active	24401007
0	Not applicable	24401007
39	Employed	24401008
27	Unemployed	24401008
18	Discouraged work-seeker	24401008
783	Other not economically active	24401008
0	Not applicable	24401008
33	Employed	24401009
21	Unemployed	24401009
18	Discouraged work-seeker	24401009
477	Other not economically active	24401009
0	Not applicable	24401009
6	Employed	24401010
18	Unemployed	24401010
9	Discouraged work-seeker	24401010
624	Other not economically active	24401010
0	Not applicable	24401010
24	Employed	24401011
78	Unemployed	24401011
27	Discouraged work-seeker	24401011
771	Other not economically active	24401011
0	Not applicable	24401011
15	Employed	24401012
39	Unemployed	24401012
18	Discouraged work-seeker	24401012
417	Other not economically active	24401012
0	Not applicable	24401012
21	Employed	24401013
51	Unemployed	24401013
6	Discouraged work-seeker	24401013
492	Other not economically active	24401013
0	Not applicable	24401013
15	Employed	24401014
24	Unemployed	24401014
15	Discouraged work-seeker	24401014
696	Other not economically active	24401014
0	Not applicable	24401014
9	Employed	24401015
66	Unemployed	24401015
6	Discouraged work-seeker	24401015
495	Other not economically active	24401015
0	Not applicable	24401015
6	Employed	24401016
21	Unemployed	24401016
9	Discouraged work-seeker	24401016
480	Other not economically active	24401016
0	Not applicable	24401016
18	Employed	24401017
33	Unemployed	24401017
15	Discouraged work-seeker	24401017
660	Other not economically active	24401017
0	Not applicable	24401017
12	Employed	24401018
27	Unemployed	24401018
9	Discouraged work-seeker	24401018
459	Other not economically active	24401018
0	Not applicable	24401018
21	Employed	24401019
9	Unemployed	24401019
3	Discouraged work-seeker	24401019
174	Other not economically active	24401019
0	Not applicable	24401019
21	Employed	24401020
51	Unemployed	24401020
18	Discouraged work-seeker	24401020
690	Other not economically active	24401020
0	Not applicable	24401020
24	Employed	24401021
30	Unemployed	24401021
12	Discouraged work-seeker	24401021
813	Other not economically active	24401021
0	Not applicable	24401021
15	Employed	24401022
24	Unemployed	24401022
15	Discouraged work-seeker	24401022
399	Other not economically active	24401022
0	Not applicable	24401022
15	Employed	24401023
9	Unemployed	24401023
6	Discouraged work-seeker	24401023
465	Other not economically active	24401023
0	Not applicable	24401023
15	Employed	24401024
18	Unemployed	24401024
12	Discouraged work-seeker	24401024
441	Other not economically active	24401024
0	Not applicable	24401024
21	Employed	24401025
15	Unemployed	24401025
15	Discouraged work-seeker	24401025
558	Other not economically active	24401025
0	Not applicable	24401025
72	Employed	24401026
33	Unemployed	24401026
27	Discouraged work-seeker	24401026
465	Other not economically active	24401026
0	Not applicable	24401026
9	Employed	24402001
27	Unemployed	24402001
18	Discouraged work-seeker	24402001
609	Other not economically active	24402001
0	Not applicable	24402001
12	Employed	24402002
39	Unemployed	24402002
24	Discouraged work-seeker	24402002
396	Other not economically active	24402002
0	Not applicable	24402002
18	Employed	24402003
27	Unemployed	24402003
57	Discouraged work-seeker	24402003
678	Other not economically active	24402003
0	Not applicable	24402003
15	Employed	24402004
27	Unemployed	24402004
48	Discouraged work-seeker	24402004
498	Other not economically active	24402004
0	Not applicable	24402004
9	Employed	24402005
30	Unemployed	24402005
30	Discouraged work-seeker	24402005
441	Other not economically active	24402005
0	Not applicable	24402005
6	Employed	24402006
30	Unemployed	24402006
21	Discouraged work-seeker	24402006
375	Other not economically active	24402006
0	Not applicable	24402006
12	Employed	24402007
75	Unemployed	24402007
48	Discouraged work-seeker	24402007
399	Other not economically active	24402007
0	Not applicable	24402007
12	Employed	24402008
27	Unemployed	24402008
30	Discouraged work-seeker	24402008
537	Other not economically active	24402008
0	Not applicable	24402008
6	Employed	24402009
9	Unemployed	24402009
33	Discouraged work-seeker	24402009
477	Other not economically active	24402009
0	Not applicable	24402009
18	Employed	24402010
30	Unemployed	24402010
18	Discouraged work-seeker	24402010
609	Other not economically active	24402010
0	Not applicable	24402010
6	Employed	24402011
30	Unemployed	24402011
39	Discouraged work-seeker	24402011
597	Other not economically active	24402011
0	Not applicable	24402011
15	Employed	24402012
24	Unemployed	24402012
15	Discouraged work-seeker	24402012
513	Other not economically active	24402012
0	Not applicable	24402012
27	Employed	24402013
9	Unemployed	24402013
24	Discouraged work-seeker	24402013
450	Other not economically active	24402013
0	Not applicable	24402013
18	Employed	24402014
24	Unemployed	24402014
27	Discouraged work-seeker	24402014
486	Other not economically active	24402014
0	Not applicable	24402014
24	Employed	24402015
24	Unemployed	24402015
9	Discouraged work-seeker	24402015
612	Other not economically active	24402015
0	Not applicable	24402015
66	Employed	24402016
48	Unemployed	24402016
6	Discouraged work-seeker	24402016
531	Other not economically active	24402016
0	Not applicable	24402016
15	Employed	24402017
54	Unemployed	24402017
12	Discouraged work-seeker	24402017
507	Other not economically active	24402017
0	Not applicable	24402017
51	Employed	24402018
18	Unemployed	24402018
6	Discouraged work-seeker	24402018
300	Other not economically active	24402018
0	Not applicable	24402018
24	Employed	24402019
30	Unemployed	24402019
6	Discouraged work-seeker	24402019
666	Other not economically active	24402019
0	Not applicable	24402019
27	Employed	24402020
27	Unemployed	24402020
18	Discouraged work-seeker	24402020
630	Other not economically active	24402020
0	Not applicable	24402020
15	Employed	24402021
30	Unemployed	24402021
30	Discouraged work-seeker	24402021
480	Other not economically active	24402021
0	Not applicable	24402021
15	Employed	24402022
18	Unemployed	24402022
9	Discouraged work-seeker	24402022
471	Other not economically active	24402022
0	Not applicable	24402022
33	Employed	24402023
48	Unemployed	24402023
12	Discouraged work-seeker	24402023
399	Other not economically active	24402023
0	Not applicable	24402023
18	Employed	24402024
15	Unemployed	24402024
15	Discouraged work-seeker	24402024
492	Other not economically active	24402024
0	Not applicable	24402024
12	Employed	24402025
24	Unemployed	24402025
18	Discouraged work-seeker	24402025
429	Other not economically active	24402025
0	Not applicable	24402025
12	Employed	24402026
30	Unemployed	24402026
30	Discouraged work-seeker	24402026
570	Other not economically active	24402026
0	Not applicable	24402026
12	Employed	24402027
27	Unemployed	24402027
6	Discouraged work-seeker	24402027
444	Other not economically active	24402027
0	Not applicable	24402027
12	Employed	24403001
30	Unemployed	24403001
21	Discouraged work-seeker	24403001
459	Other not economically active	24403001
0	Not applicable	24403001
18	Employed	24403002
6	Unemployed	24403002
6	Discouraged work-seeker	24403002
657	Other not economically active	24403002
0	Not applicable	24403002
9	Employed	24403003
18	Unemployed	24403003
33	Discouraged work-seeker	24403003
663	Other not economically active	24403003
0	Not applicable	24403003
12	Employed	24403004
15	Unemployed	24403004
9	Discouraged work-seeker	24403004
561	Other not economically active	24403004
0	Not applicable	24403004
27	Employed	24403005
30	Unemployed	24403005
27	Discouraged work-seeker	24403005
672	Other not economically active	24403005
0	Not applicable	24403005
21	Employed	24403006
54	Unemployed	24403006
27	Discouraged work-seeker	24403006
945	Other not economically active	24403006
0	Not applicable	24403006
9	Employed	24403007
27	Unemployed	24403007
9	Discouraged work-seeker	24403007
762	Other not economically active	24403007
0	Not applicable	24403007
15	Employed	24403008
39	Unemployed	24403008
30	Discouraged work-seeker	24403008
687	Other not economically active	24403008
0	Not applicable	24403008
48	Employed	24403009
33	Unemployed	24403009
66	Discouraged work-seeker	24403009
978	Other not economically active	24403009
0	Not applicable	24403009
21	Employed	24403010
39	Unemployed	24403010
42	Discouraged work-seeker	24403010
801	Other not economically active	24403010
0	Not applicable	24403010
18	Employed	24403011
21	Unemployed	24403011
57	Discouraged work-seeker	24403011
732	Other not economically active	24403011
0	Not applicable	24403011
12	Employed	24403012
24	Unemployed	24403012
33	Discouraged work-seeker	24403012
741	Other not economically active	24403012
0	Not applicable	24403012
21	Employed	24403013
15	Unemployed	24403013
30	Discouraged work-seeker	24403013
639	Other not economically active	24403013
0	Not applicable	24403013
21	Employed	24403014
78	Unemployed	24403014
24	Discouraged work-seeker	24403014
849	Other not economically active	24403014
0	Not applicable	24403014
24	Employed	24403015
21	Unemployed	24403015
42	Discouraged work-seeker	24403015
840	Other not economically active	24403015
0	Not applicable	24403015
6	Employed	24403016
15	Unemployed	24403016
36	Discouraged work-seeker	24403016
858	Other not economically active	24403016
0	Not applicable	24403016
15	Employed	24403017
57	Unemployed	24403017
12	Discouraged work-seeker	24403017
1029	Other not economically active	24403017
0	Not applicable	24403017
18	Employed	24403018
27	Unemployed	24403018
24	Discouraged work-seeker	24403018
777	Other not economically active	24403018
0	Not applicable	24403018
36	Employed	24403019
39	Unemployed	24403019
162	Discouraged work-seeker	24403019
846	Other not economically active	24403019
0	Not applicable	24403019
18	Employed	24403020
48	Unemployed	24403020
48	Discouraged work-seeker	24403020
942	Other not economically active	24403020
0	Not applicable	24403020
6	Employed	24403021
24	Unemployed	24403021
6	Discouraged work-seeker	24403021
528	Other not economically active	24403021
0	Not applicable	24403021
15	Employed	24403022
33	Unemployed	24403022
18	Discouraged work-seeker	24403022
768	Other not economically active	24403022
0	Not applicable	24403022
24	Employed	24403023
66	Unemployed	24403023
42	Discouraged work-seeker	24403023
879	Other not economically active	24403023
0	Not applicable	24403023
9	Employed	24403024
30	Unemployed	24403024
12	Discouraged work-seeker	24403024
375	Other not economically active	24403024
0	Not applicable	24403024
33	Employed	24403025
21	Unemployed	24403025
45	Discouraged work-seeker	24403025
951	Other not economically active	24403025
0	Not applicable	24403025
9	Employed	24403026
21	Unemployed	24403026
18	Discouraged work-seeker	24403026
567	Other not economically active	24403026
0	Not applicable	24403026
30	Employed	24403027
30	Unemployed	24403027
18	Discouraged work-seeker	24403027
723	Other not economically active	24403027
0	Not applicable	24403027
6	Employed	24403028
39	Unemployed	24403028
21	Discouraged work-seeker	24403028
573	Other not economically active	24403028
0	Not applicable	24403028
9	Employed	24403029
12	Unemployed	24403029
6	Discouraged work-seeker	24403029
705	Other not economically active	24403029
0	Not applicable	24403029
15	Employed	24403030
39	Unemployed	24403030
48	Discouraged work-seeker	24403030
765	Other not economically active	24403030
0	Not applicable	24403030
15	Employed	24403031
39	Unemployed	24403031
9	Discouraged work-seeker	24403031
678	Other not economically active	24403031
0	Not applicable	24403031
12	Employed	24404001
12	Unemployed	24404001
18	Discouraged work-seeker	24404001
444	Other not economically active	24404001
0	Not applicable	24404001
18	Employed	24404002
27	Unemployed	24404002
39	Discouraged work-seeker	24404002
513	Other not economically active	24404002
0	Not applicable	24404002
18	Employed	24404003
18	Unemployed	24404003
15	Discouraged work-seeker	24404003
501	Other not economically active	24404003
0	Not applicable	24404003
21	Employed	24404004
21	Unemployed	24404004
21	Discouraged work-seeker	24404004
435	Other not economically active	24404004
0	Not applicable	24404004
45	Employed	24404005
81	Unemployed	24404005
27	Discouraged work-seeker	24404005
384	Other not economically active	24404005
0	Not applicable	24404005
9	Employed	24404006
15	Unemployed	24404006
9	Discouraged work-seeker	24404006
531	Other not economically active	24404006
0	Not applicable	24404006
12	Employed	24404007
36	Unemployed	24404007
24	Discouraged work-seeker	24404007
669	Other not economically active	24404007
0	Not applicable	24404007
6	Employed	24404008
15	Unemployed	24404008
15	Discouraged work-seeker	24404008
615	Other not economically active	24404008
0	Not applicable	24404008
3	Employed	24404009
18	Unemployed	24404009
27	Discouraged work-seeker	24404009
432	Other not economically active	24404009
0	Not applicable	24404009
9	Employed	24404010
18	Unemployed	24404010
15	Discouraged work-seeker	24404010
411	Other not economically active	24404010
0	Not applicable	24404010
15	Employed	24404011
24	Unemployed	24404011
9	Discouraged work-seeker	24404011
489	Other not economically active	24404011
0	Not applicable	24404011
18	Employed	24404012
24	Unemployed	24404012
21	Discouraged work-seeker	24404012
567	Other not economically active	24404012
0	Not applicable	24404012
18	Employed	24404013
45	Unemployed	24404013
24	Discouraged work-seeker	24404013
687	Other not economically active	24404013
0	Not applicable	24404013
3	Employed	24404014
39	Unemployed	24404014
15	Discouraged work-seeker	24404014
540	Other not economically active	24404014
0	Not applicable	24404014
6	Employed	24404015
27	Unemployed	24404015
48	Discouraged work-seeker	24404015
375	Other not economically active	24404015
0	Not applicable	24404015
18	Employed	24404016
33	Unemployed	24404016
18	Discouraged work-seeker	24404016
690	Other not economically active	24404016
0	Not applicable	24404016
12	Employed	24404017
21	Unemployed	24404017
42	Discouraged work-seeker	24404017
561	Other not economically active	24404017
0	Not applicable	24404017
6	Employed	24404018
39	Unemployed	24404018
42	Discouraged work-seeker	24404018
543	Other not economically active	24404018
0	Not applicable	24404018
33	Employed	29200001
81	Unemployed	29200001
27	Discouraged work-seeker	29200001
531	Other not economically active	29200001
0	Not applicable	29200001
27	Employed	29200002
78	Unemployed	29200002
24	Discouraged work-seeker	29200002
417	Other not economically active	29200002
0	Not applicable	29200002
21	Employed	29200003
30	Unemployed	29200003
3	Discouraged work-seeker	29200003
525	Other not economically active	29200003
0	Not applicable	29200003
36	Employed	29200004
15	Unemployed	29200004
0	Discouraged work-seeker	29200004
459	Other not economically active	29200004
0	Not applicable	29200004
18	Employed	29200005
66	Unemployed	29200005
6	Discouraged work-seeker	29200005
615	Other not economically active	29200005
0	Not applicable	29200005
33	Employed	29200006
129	Unemployed	29200006
27	Discouraged work-seeker	29200006
594	Other not economically active	29200006
0	Not applicable	29200006
21	Employed	29200007
135	Unemployed	29200007
15	Discouraged work-seeker	29200007
423	Other not economically active	29200007
0	Not applicable	29200007
15	Employed	29200008
51	Unemployed	29200008
15	Discouraged work-seeker	29200008
453	Other not economically active	29200008
0	Not applicable	29200008
45	Employed	29200009
96	Unemployed	29200009
6	Discouraged work-seeker	29200009
768	Other not economically active	29200009
0	Not applicable	29200009
48	Employed	29200010
177	Unemployed	29200010
30	Discouraged work-seeker	29200010
861	Other not economically active	29200010
0	Not applicable	29200010
12	Employed	29200011
81	Unemployed	29200011
18	Discouraged work-seeker	29200011
735	Other not economically active	29200011
0	Not applicable	29200011
27	Employed	29200012
78	Unemployed	29200012
18	Discouraged work-seeker	29200012
672	Other not economically active	29200012
0	Not applicable	29200012
54	Employed	29200013
111	Unemployed	29200013
33	Discouraged work-seeker	29200013
1050	Other not economically active	29200013
0	Not applicable	29200013
9	Employed	29200014
33	Unemployed	29200014
21	Discouraged work-seeker	29200014
459	Other not economically active	29200014
0	Not applicable	29200014
27	Employed	29200015
60	Unemployed	29200015
9	Discouraged work-seeker	29200015
453	Other not economically active	29200015
0	Not applicable	29200015
45	Employed	29200016
63	Unemployed	29200016
9	Discouraged work-seeker	29200016
1158	Other not economically active	29200016
0	Not applicable	29200016
9	Employed	29200017
57	Unemployed	29200017
27	Discouraged work-seeker	29200017
780	Other not economically active	29200017
0	Not applicable	29200017
54	Employed	29200018
30	Unemployed	29200018
0	Discouraged work-seeker	29200018
420	Other not economically active	29200018
0	Not applicable	29200018
18	Employed	29200019
69	Unemployed	29200019
9	Discouraged work-seeker	29200019
555	Other not economically active	29200019
0	Not applicable	29200019
21	Employed	29200020
45	Unemployed	29200020
15	Discouraged work-seeker	29200020
537	Other not economically active	29200020
0	Not applicable	29200020
18	Employed	29200021
99	Unemployed	29200021
6	Discouraged work-seeker	29200021
642	Other not economically active	29200021
0	Not applicable	29200021
15	Employed	29200022
39	Unemployed	29200022
6	Discouraged work-seeker	29200022
765	Other not economically active	29200022
0	Not applicable	29200022
33	Employed	29200023
60	Unemployed	29200023
12	Discouraged work-seeker	29200023
849	Other not economically active	29200023
0	Not applicable	29200023
15	Employed	29200024
108	Unemployed	29200024
15	Discouraged work-seeker	29200024
546	Other not economically active	29200024
0	Not applicable	29200024
36	Employed	29200025
33	Unemployed	29200025
6	Discouraged work-seeker	29200025
657	Other not economically active	29200025
0	Not applicable	29200025
12	Employed	29200026
33	Unemployed	29200026
21	Discouraged work-seeker	29200026
825	Other not economically active	29200026
0	Not applicable	29200026
45	Employed	29200027
51	Unemployed	29200027
0	Discouraged work-seeker	29200027
501	Other not economically active	29200027
0	Not applicable	29200027
30	Employed	29200028
57	Unemployed	29200028
15	Discouraged work-seeker	29200028
567	Other not economically active	29200028
0	Not applicable	29200028
45	Employed	29200029
102	Unemployed	29200029
21	Discouraged work-seeker	29200029
654	Other not economically active	29200029
0	Not applicable	29200029
9	Employed	29200030
39	Unemployed	29200030
36	Discouraged work-seeker	29200030
591	Other not economically active	29200030
0	Not applicable	29200030
60	Employed	29200031
108	Unemployed	29200031
33	Discouraged work-seeker	29200031
858	Other not economically active	29200031
0	Not applicable	29200031
6	Employed	29200032
48	Unemployed	29200032
15	Discouraged work-seeker	29200032
846	Other not economically active	29200032
0	Not applicable	29200032
15	Employed	29200033
63	Unemployed	29200033
24	Discouraged work-seeker	29200033
933	Other not economically active	29200033
0	Not applicable	29200033
9	Employed	29200034
48	Unemployed	29200034
18	Discouraged work-seeker	29200034
714	Other not economically active	29200034
0	Not applicable	29200034
18	Employed	29200035
30	Unemployed	29200035
9	Discouraged work-seeker	29200035
759	Other not economically active	29200035
0	Not applicable	29200035
9	Employed	29200036
42	Unemployed	29200036
24	Discouraged work-seeker	29200036
888	Other not economically active	29200036
0	Not applicable	29200036
30	Employed	29200037
66	Unemployed	29200037
9	Discouraged work-seeker	29200037
621	Other not economically active	29200037
0	Not applicable	29200037
6	Employed	29200038
48	Unemployed	29200038
9	Discouraged work-seeker	29200038
888	Other not economically active	29200038
0	Not applicable	29200038
12	Employed	29200039
51	Unemployed	29200039
18	Discouraged work-seeker	29200039
804	Other not economically active	29200039
0	Not applicable	29200039
12	Employed	29200040
66	Unemployed	29200040
9	Discouraged work-seeker	29200040
618	Other not economically active	29200040
0	Not applicable	29200040
12	Employed	29200041
42	Unemployed	29200041
12	Discouraged work-seeker	29200041
567	Other not economically active	29200041
0	Not applicable	29200041
6	Employed	29200042
51	Unemployed	29200042
18	Discouraged work-seeker	29200042
690	Other not economically active	29200042
0	Not applicable	29200042
33	Employed	29200043
75	Unemployed	29200043
27	Discouraged work-seeker	29200043
894	Other not economically active	29200043
0	Not applicable	29200043
24	Employed	29200044
90	Unemployed	29200044
24	Discouraged work-seeker	29200044
1104	Other not economically active	29200044
0	Not applicable	29200044
9	Employed	29200045
45	Unemployed	29200045
12	Discouraged work-seeker	29200045
672	Other not economically active	29200045
0	Not applicable	29200045
48	Employed	29200046
123	Unemployed	29200046
12	Discouraged work-seeker	29200046
633	Other not economically active	29200046
0	Not applicable	29200046
12	Employed	29200047
24	Unemployed	29200047
0	Discouraged work-seeker	29200047
363	Other not economically active	29200047
0	Not applicable	29200047
3	Employed	29200048
45	Unemployed	29200048
12	Discouraged work-seeker	29200048
507	Other not economically active	29200048
0	Not applicable	29200048
15	Employed	29200049
96	Unemployed	29200049
30	Discouraged work-seeker	29200049
690	Other not economically active	29200049
0	Not applicable	29200049
12	Employed	29200050
30	Unemployed	29200050
24	Discouraged work-seeker	29200050
534	Other not economically active	29200050
0	Not applicable	29200050
27	Employed	29300001
39	Unemployed	29300001
0	Discouraged work-seeker	29300001
558	Other not economically active	29300001
0	Not applicable	29300001
30	Employed	29300002
27	Unemployed	29300002
3	Discouraged work-seeker	29300002
522	Other not economically active	29300002
0	Not applicable	29300002
57	Employed	29300003
27	Unemployed	29300003
0	Discouraged work-seeker	29300003
528	Other not economically active	29300003
0	Not applicable	29300003
36	Employed	29300004
177	Unemployed	29300004
39	Discouraged work-seeker	29300004
1011	Other not economically active	29300004
0	Not applicable	29300004
21	Employed	29300005
39	Unemployed	29300005
3	Discouraged work-seeker	29300005
564	Other not economically active	29300005
0	Not applicable	29300005
33	Employed	29300006
18	Unemployed	29300006
3	Discouraged work-seeker	29300006
465	Other not economically active	29300006
0	Not applicable	29300006
27	Employed	29300007
87	Unemployed	29300007
9	Discouraged work-seeker	29300007
798	Other not economically active	29300007
0	Not applicable	29300007
36	Employed	29300008
15	Unemployed	29300008
3	Discouraged work-seeker	29300008
651	Other not economically active	29300008
0	Not applicable	29300008
36	Employed	29300009
21	Unemployed	29300009
9	Discouraged work-seeker	29300009
615	Other not economically active	29300009
0	Not applicable	29300009
33	Employed	29300010
72	Unemployed	29300010
45	Discouraged work-seeker	29300010
828	Other not economically active	29300010
0	Not applicable	29300010
42	Employed	29300011
81	Unemployed	29300011
24	Discouraged work-seeker	29300011
747	Other not economically active	29300011
0	Not applicable	29300011
51	Employed	29300012
90	Unemployed	29300012
15	Discouraged work-seeker	29300012
1098	Other not economically active	29300012
0	Not applicable	29300012
30	Employed	29300013
189	Unemployed	29300013
81	Discouraged work-seeker	29300013
936	Other not economically active	29300013
0	Not applicable	29300013
9	Employed	29300014
24	Unemployed	29300014
15	Discouraged work-seeker	29300014
516	Other not economically active	29300014
0	Not applicable	29300014
6	Employed	29300015
66	Unemployed	29300015
9	Discouraged work-seeker	29300015
645	Other not economically active	29300015
0	Not applicable	29300015
9	Employed	29300016
51	Unemployed	29300016
12	Discouraged work-seeker	29300016
372	Other not economically active	29300016
0	Not applicable	29300016
12	Employed	29300017
84	Unemployed	29300017
21	Discouraged work-seeker	29300017
636	Other not economically active	29300017
0	Not applicable	29300017
15	Employed	29300018
54	Unemployed	29300018
0	Discouraged work-seeker	29300018
777	Other not economically active	29300018
0	Not applicable	29300018
3	Employed	29300019
42	Unemployed	29300019
9	Discouraged work-seeker	29300019
552	Other not economically active	29300019
0	Not applicable	29300019
6	Employed	29300020
42	Unemployed	29300020
3	Discouraged work-seeker	29300020
498	Other not economically active	29300020
0	Not applicable	29300020
12	Employed	29300021
78	Unemployed	29300021
9	Discouraged work-seeker	29300021
591	Other not economically active	29300021
0	Not applicable	29300021
30	Employed	29300022
111	Unemployed	29300022
21	Discouraged work-seeker	29300022
639	Other not economically active	29300022
0	Not applicable	29300022
3	Employed	29300023
42	Unemployed	29300023
9	Discouraged work-seeker	29300023
666	Other not economically active	29300023
0	Not applicable	29300023
12	Employed	29300024
99	Unemployed	29300024
18	Discouraged work-seeker	29300024
609	Other not economically active	29300024
0	Not applicable	29300024
12	Employed	29300025
72	Unemployed	29300025
3	Discouraged work-seeker	29300025
681	Other not economically active	29300025
0	Not applicable	29300025
3	Employed	29300026
75	Unemployed	29300026
3	Discouraged work-seeker	29300026
498	Other not economically active	29300026
0	Not applicable	29300026
12	Employed	29300027
57	Unemployed	29300027
36	Discouraged work-seeker	29300027
663	Other not economically active	29300027
0	Not applicable	29300027
45	Employed	29300028
90	Unemployed	29300028
12	Discouraged work-seeker	29300028
714	Other not economically active	29300028
0	Not applicable	29300028
36	Employed	29300029
63	Unemployed	29300029
39	Discouraged work-seeker	29300029
1134	Other not economically active	29300029
0	Not applicable	29300029
18	Employed	29300030
81	Unemployed	29300030
33	Discouraged work-seeker	29300030
717	Other not economically active	29300030
0	Not applicable	29300030
48	Employed	29300031
147	Unemployed	29300031
48	Discouraged work-seeker	29300031
906	Other not economically active	29300031
0	Not applicable	29300031
24	Employed	29300032
96	Unemployed	29300032
21	Discouraged work-seeker	29300032
1047	Other not economically active	29300032
0	Not applicable	29300032
15	Employed	29300033
108	Unemployed	29300033
45	Discouraged work-seeker	29300033
831	Other not economically active	29300033
0	Not applicable	29300033
15	Employed	29300034
141	Unemployed	29300034
45	Discouraged work-seeker	29300034
1056	Other not economically active	29300034
0	Not applicable	29300034
21	Employed	29300035
105	Unemployed	29300035
51	Discouraged work-seeker	29300035
930	Other not economically active	29300035
0	Not applicable	29300035
3	Employed	29300036
54	Unemployed	29300036
12	Discouraged work-seeker	29300036
654	Other not economically active	29300036
0	Not applicable	29300036
21	Employed	29300037
117	Unemployed	29300037
66	Discouraged work-seeker	29300037
978	Other not economically active	29300037
0	Not applicable	29300037
39	Employed	29300038
135	Unemployed	29300038
27	Discouraged work-seeker	29300038
810	Other not economically active	29300038
0	Not applicable	29300038
27	Employed	29300039
33	Unemployed	29300039
9	Discouraged work-seeker	29300039
582	Other not economically active	29300039
0	Not applicable	29300039
84	Employed	29300040
141	Unemployed	29300040
51	Discouraged work-seeker	29300040
1008	Other not economically active	29300040
0	Not applicable	29300040
84	Employed	29300041
243	Unemployed	29300041
120	Discouraged work-seeker	29300041
1878	Other not economically active	29300041
0	Not applicable	29300041
30	Employed	29300042
48	Unemployed	29300042
42	Discouraged work-seeker	29300042
930	Other not economically active	29300042
0	Not applicable	29300042
12	Employed	29300043
81	Unemployed	29300043
33	Discouraged work-seeker	29300043
762	Other not economically active	29300043
0	Not applicable	29300043
18	Employed	29300044
138	Unemployed	29300044
27	Discouraged work-seeker	29300044
1155	Other not economically active	29300044
0	Not applicable	29300044
18	Employed	29300045
108	Unemployed	29300045
42	Discouraged work-seeker	29300045
828	Other not economically active	29300045
0	Not applicable	29300045
21	Employed	29300046
69	Unemployed	29300046
21	Discouraged work-seeker	29300046
744	Other not economically active	29300046
0	Not applicable	29300046
12	Employed	29300047
48	Unemployed	29300047
15	Discouraged work-seeker	29300047
672	Other not economically active	29300047
0	Not applicable	29300047
15	Employed	29300048
108	Unemployed	29300048
15	Discouraged work-seeker	29300048
732	Other not economically active	29300048
0	Not applicable	29300048
30	Employed	29300049
63	Unemployed	29300049
15	Discouraged work-seeker	29300049
963	Other not economically active	29300049
0	Not applicable	29300049
45	Employed	29300050
144	Unemployed	29300050
60	Discouraged work-seeker	29300050
1158	Other not economically active	29300050
0	Not applicable	29300050
24	Employed	29300051
48	Unemployed	29300051
3	Discouraged work-seeker	29300051
1317	Other not economically active	29300051
0	Not applicable	29300051
36	Employed	29300052
105	Unemployed	29300052
27	Discouraged work-seeker	29300052
1098	Other not economically active	29300052
0	Not applicable	29300052
39	Employed	29300053
165	Unemployed	29300053
48	Discouraged work-seeker	29300053
1245	Other not economically active	29300053
0	Not applicable	29300053
51	Employed	29300054
156	Unemployed	29300054
57	Discouraged work-seeker	29300054
1095	Other not economically active	29300054
0	Not applicable	29300054
9	Employed	29300055
213	Unemployed	29300055
27	Discouraged work-seeker	29300055
1134	Other not economically active	29300055
0	Not applicable	29300055
21	Employed	29300056
132	Unemployed	29300056
15	Discouraged work-seeker	29300056
1065	Other not economically active	29300056
0	Not applicable	29300056
15	Employed	29300057
120	Unemployed	29300057
9	Discouraged work-seeker	29300057
735	Other not economically active	29300057
0	Not applicable	29300057
18	Employed	29300058
69	Unemployed	29300058
15	Discouraged work-seeker	29300058
870	Other not economically active	29300058
0	Not applicable	29300058
18	Employed	29300059
72	Unemployed	29300059
6	Discouraged work-seeker	29300059
879	Other not economically active	29300059
0	Not applicable	29300059
45	Employed	29300060
126	Unemployed	29300060
27	Discouraged work-seeker	29300060
1011	Other not economically active	29300060
0	Not applicable	29300060
9	Employed	41601001
15	Unemployed	41601001
27	Discouraged work-seeker	41601001
318	Other not economically active	41601001
0	Not applicable	41601001
12	Employed	41601002
30	Unemployed	41601002
36	Discouraged work-seeker	41601002
387	Other not economically active	41601002
0	Not applicable	41601002
36	Employed	41601003
30	Unemployed	41601003
18	Discouraged work-seeker	41601003
258	Other not economically active	41601003
0	Not applicable	41601003
9	Employed	41601004
18	Unemployed	41601004
9	Discouraged work-seeker	41601004
339	Other not economically active	41601004
0	Not applicable	41601004
9	Employed	41601005
3	Unemployed	41601005
3	Discouraged work-seeker	41601005
258	Other not economically active	41601005
0	Not applicable	41601005
12	Employed	41601006
30	Unemployed	41601006
6	Discouraged work-seeker	41601006
333	Other not economically active	41601006
0	Not applicable	41601006
18	Employed	41602001
15	Unemployed	41602001
15	Discouraged work-seeker	41602001
222	Other not economically active	41602001
0	Not applicable	41602001
18	Employed	41602002
24	Unemployed	41602002
9	Discouraged work-seeker	41602002
306	Other not economically active	41602002
0	Not applicable	41602002
6	Employed	41602003
18	Unemployed	41602003
18	Discouraged work-seeker	41602003
402	Other not economically active	41602003
0	Not applicable	41602003
15	Employed	41602004
36	Unemployed	41602004
9	Discouraged work-seeker	41602004
258	Other not economically active	41602004
0	Not applicable	41602004
18	Employed	41602005
18	Unemployed	41602005
9	Discouraged work-seeker	41602005
213	Other not economically active	41602005
0	Not applicable	41602005
6	Employed	41602006
21	Unemployed	41602006
27	Discouraged work-seeker	41602006
273	Other not economically active	41602006
0	Not applicable	41602006
12	Employed	41602007
9	Unemployed	41602007
9	Discouraged work-seeker	41602007
252	Other not economically active	41602007
0	Not applicable	41602007
9	Employed	41602008
24	Unemployed	41602008
0	Discouraged work-seeker	41602008
327	Other not economically active	41602008
0	Not applicable	41602008
3	Employed	41603001
27	Unemployed	41603001
12	Discouraged work-seeker	41603001
366	Other not economically active	41603001
0	Not applicable	41603001
6	Employed	41603002
24	Unemployed	41603002
21	Discouraged work-seeker	41603002
357	Other not economically active	41603002
0	Not applicable	41603002
9	Employed	41603003
18	Unemployed	41603003
15	Discouraged work-seeker	41603003
285	Other not economically active	41603003
0	Not applicable	41603003
9	Employed	41603004
12	Unemployed	41603004
6	Discouraged work-seeker	41603004
135	Other not economically active	41603004
0	Not applicable	41603004
0	Employed	41603005
6	Unemployed	41603005
9	Discouraged work-seeker	41603005
285	Other not economically active	41603005
0	Not applicable	41603005
12	Employed	41603006
30	Unemployed	41603006
6	Discouraged work-seeker	41603006
279	Other not economically active	41603006
0	Not applicable	41603006
9	Employed	41604001
12	Unemployed	41604001
15	Discouraged work-seeker	41604001
480	Other not economically active	41604001
0	Not applicable	41604001
12	Employed	41604002
21	Unemployed	41604002
12	Discouraged work-seeker	41604002
315	Other not economically active	41604002
0	Not applicable	41604002
9	Employed	41604003
12	Unemployed	41604003
9	Discouraged work-seeker	41604003
279	Other not economically active	41604003
0	Not applicable	41604003
0	Employed	41604004
9	Unemployed	41604004
9	Discouraged work-seeker	41604004
318	Other not economically active	41604004
0	Not applicable	41604004
12	Employed	41801001
36	Unemployed	41801001
0	Discouraged work-seeker	41801001
285	Other not economically active	41801001
0	Not applicable	41801001
18	Employed	41801002
42	Unemployed	41801002
12	Discouraged work-seeker	41801002
330	Other not economically active	41801002
0	Not applicable	41801002
18	Employed	41801003
33	Unemployed	41801003
18	Discouraged work-seeker	41801003
342	Other not economically active	41801003
0	Not applicable	41801003
9	Employed	41801004
12	Unemployed	41801004
3	Discouraged work-seeker	41801004
186	Other not economically active	41801004
0	Not applicable	41801004
9	Employed	41801005
51	Unemployed	41801005
36	Discouraged work-seeker	41801005
567	Other not economically active	41801005
0	Not applicable	41801005
6	Employed	41801006
0	Unemployed	41801006
0	Discouraged work-seeker	41801006
90	Other not economically active	41801006
0	Not applicable	41801006
9	Employed	41801007
24	Unemployed	41801007
9	Discouraged work-seeker	41801007
339	Other not economically active	41801007
0	Not applicable	41801007
9	Employed	41801008
15	Unemployed	41801008
9	Discouraged work-seeker	41801008
273	Other not economically active	41801008
0	Not applicable	41801008
9	Employed	41801009
33	Unemployed	41801009
21	Discouraged work-seeker	41801009
369	Other not economically active	41801009
0	Not applicable	41801009
3	Employed	41801010
54	Unemployed	41801010
6	Discouraged work-seeker	41801010
249	Other not economically active	41801010
0	Not applicable	41801010
15	Employed	41802001
24	Unemployed	41802001
9	Discouraged work-seeker	41802001
327	Other not economically active	41802001
0	Not applicable	41802001
9	Employed	41802002
33	Unemployed	41802002
9	Discouraged work-seeker	41802002
552	Other not economically active	41802002
0	Not applicable	41802002
21	Employed	41802003
36	Unemployed	41802003
12	Discouraged work-seeker	41802003
423	Other not economically active	41802003
0	Not applicable	41802003
12	Employed	41802004
15	Unemployed	41802004
6	Discouraged work-seeker	41802004
162	Other not economically active	41802004
0	Not applicable	41802004
3	Employed	41803001
18	Unemployed	41803001
9	Discouraged work-seeker	41803001
285	Other not economically active	41803001
0	Not applicable	41803001
12	Employed	41803002
24	Unemployed	41803002
6	Discouraged work-seeker	41803002
267	Other not economically active	41803002
0	Not applicable	41803002
3	Employed	41803003
24	Unemployed	41803003
6	Discouraged work-seeker	41803003
345	Other not economically active	41803003
0	Not applicable	41803003
9	Employed	41803004
69	Unemployed	41803004
6	Discouraged work-seeker	41803004
339	Other not economically active	41803004
0	Not applicable	41803004
30	Employed	41803005
18	Unemployed	41803005
12	Discouraged work-seeker	41803005
177	Other not economically active	41803005
0	Not applicable	41803005
6	Employed	41803006
30	Unemployed	41803006
15	Discouraged work-seeker	41803006
333	Other not economically active	41803006
0	Not applicable	41803006
9	Employed	41803007
12	Unemployed	41803007
15	Discouraged work-seeker	41803007
288	Other not economically active	41803007
0	Not applicable	41803007
12	Employed	41803008
42	Unemployed	41803008
3	Discouraged work-seeker	41803008
237	Other not economically active	41803008
0	Not applicable	41803008
6	Employed	41804001
36	Unemployed	41804001
12	Discouraged work-seeker	41804001
606	Other not economically active	41804001
0	Not applicable	41804001
9	Employed	41804002
93	Unemployed	41804002
21	Discouraged work-seeker	41804002
672	Other not economically active	41804002
0	Not applicable	41804002
30	Employed	41804003
36	Unemployed	41804003
3	Discouraged work-seeker	41804003
636	Other not economically active	41804003
0	Not applicable	41804003
12	Employed	41804004
48	Unemployed	41804004
33	Discouraged work-seeker	41804004
597	Other not economically active	41804004
0	Not applicable	41804004
9	Employed	41804005
72	Unemployed	41804005
21	Discouraged work-seeker	41804005
414	Other not economically active	41804005
0	Not applicable	41804005
15	Employed	41804006
39	Unemployed	41804006
24	Discouraged work-seeker	41804006
516	Other not economically active	41804006
0	Not applicable	41804006
21	Employed	41804007
102	Unemployed	41804007
15	Discouraged work-seeker	41804007
603	Other not economically active	41804007
0	Not applicable	41804007
12	Employed	41804008
27	Unemployed	41804008
9	Discouraged work-seeker	41804008
483	Other not economically active	41804008
0	Not applicable	41804008
9	Employed	41804009
24	Unemployed	41804009
3	Discouraged work-seeker	41804009
507	Other not economically active	41804009
0	Not applicable	41804009
27	Employed	41804010
69	Unemployed	41804010
27	Discouraged work-seeker	41804010
564	Other not economically active	41804010
0	Not applicable	41804010
6	Employed	41804011
75	Unemployed	41804011
12	Discouraged work-seeker	41804011
618	Other not economically active	41804011
0	Not applicable	41804011
12	Employed	41804012
108	Unemployed	41804012
27	Discouraged work-seeker	41804012
831	Other not economically active	41804012
0	Not applicable	41804012
9	Employed	41804013
42	Unemployed	41804013
9	Discouraged work-seeker	41804013
330	Other not economically active	41804013
0	Not applicable	41804013
36	Employed	41804014
63	Unemployed	41804014
9	Discouraged work-seeker	41804014
600	Other not economically active	41804014
0	Not applicable	41804014
6	Employed	41804015
99	Unemployed	41804015
24	Discouraged work-seeker	41804015
663	Other not economically active	41804015
0	Not applicable	41804015
9	Employed	41804016
81	Unemployed	41804016
15	Discouraged work-seeker	41804016
726	Other not economically active	41804016
0	Not applicable	41804016
21	Employed	41804017
90	Unemployed	41804017
12	Discouraged work-seeker	41804017
693	Other not economically active	41804017
0	Not applicable	41804017
3	Employed	41804018
48	Unemployed	41804018
6	Discouraged work-seeker	41804018
507	Other not economically active	41804018
0	Not applicable	41804018
12	Employed	41804019
69	Unemployed	41804019
33	Discouraged work-seeker	41804019
822	Other not economically active	41804019
0	Not applicable	41804019
6	Employed	41804020
48	Unemployed	41804020
3	Discouraged work-seeker	41804020
561	Other not economically active	41804020
0	Not applicable	41804020
18	Employed	41804021
81	Unemployed	41804021
9	Discouraged work-seeker	41804021
768	Other not economically active	41804021
0	Not applicable	41804021
12	Employed	41804022
63	Unemployed	41804022
6	Discouraged work-seeker	41804022
612	Other not economically active	41804022
0	Not applicable	41804022
6	Employed	41804023
42	Unemployed	41804023
9	Discouraged work-seeker	41804023
192	Other not economically active	41804023
0	Not applicable	41804023
18	Employed	41804024
30	Unemployed	41804024
12	Discouraged work-seeker	41804024
174	Other not economically active	41804024
0	Not applicable	41804024
39	Employed	41804025
60	Unemployed	41804025
12	Discouraged work-seeker	41804025
759	Other not economically active	41804025
0	Not applicable	41804025
15	Employed	41804026
48	Unemployed	41804026
3	Discouraged work-seeker	41804026
411	Other not economically active	41804026
0	Not applicable	41804026
21	Employed	41804027
36	Unemployed	41804027
9	Discouraged work-seeker	41804027
447	Other not economically active	41804027
0	Not applicable	41804027
3	Employed	41804028
27	Unemployed	41804028
6	Discouraged work-seeker	41804028
324	Other not economically active	41804028
0	Not applicable	41804028
15	Employed	41804029
72	Unemployed	41804029
15	Discouraged work-seeker	41804029
279	Other not economically active	41804029
0	Not applicable	41804029
12	Employed	41804030
39	Unemployed	41804030
9	Discouraged work-seeker	41804030
342	Other not economically active	41804030
0	Not applicable	41804030
27	Employed	41804031
42	Unemployed	41804031
9	Discouraged work-seeker	41804031
354	Other not economically active	41804031
0	Not applicable	41804031
15	Employed	41804032
27	Unemployed	41804032
9	Discouraged work-seeker	41804032
492	Other not economically active	41804032
0	Not applicable	41804032
15	Employed	41804033
21	Unemployed	41804033
3	Discouraged work-seeker	41804033
453	Other not economically active	41804033
0	Not applicable	41804033
21	Employed	41804034
30	Unemployed	41804034
3	Discouraged work-seeker	41804034
561	Other not economically active	41804034
0	Not applicable	41804034
42	Employed	41804035
21	Unemployed	41804035
3	Discouraged work-seeker	41804035
324	Other not economically active	41804035
0	Not applicable	41804035
21	Employed	41804036
30	Unemployed	41804036
3	Discouraged work-seeker	41804036
471	Other not economically active	41804036
0	Not applicable	41804036
9	Employed	41805001
12	Unemployed	41805001
27	Discouraged work-seeker	41805001
387	Other not economically active	41805001
0	Not applicable	41805001
21	Employed	41805002
12	Unemployed	41805002
6	Discouraged work-seeker	41805002
273	Other not economically active	41805002
0	Not applicable	41805002
9	Employed	41805003
21	Unemployed	41805003
15	Discouraged work-seeker	41805003
336	Other not economically active	41805003
0	Not applicable	41805003
0	Employed	41805004
57	Unemployed	41805004
27	Discouraged work-seeker	41805004
381	Other not economically active	41805004
0	Not applicable	41805004
6	Employed	41805005
12	Unemployed	41805005
3	Discouraged work-seeker	41805005
321	Other not economically active	41805005
0	Not applicable	41805005
0	Employed	41805006
30	Unemployed	41805006
12	Discouraged work-seeker	41805006
300	Other not economically active	41805006
0	Not applicable	41805006
9	Employed	41805007
9	Unemployed	41805007
0	Discouraged work-seeker	41805007
279	Other not economically active	41805007
0	Not applicable	41805007
9	Employed	41805008
27	Unemployed	41805008
9	Discouraged work-seeker	41805008
270	Other not economically active	41805008
0	Not applicable	41805008
15	Employed	41805009
48	Unemployed	41805009
24	Discouraged work-seeker	41805009
573	Other not economically active	41805009
0	Not applicable	41805009
30	Employed	41805010
30	Unemployed	41805010
9	Discouraged work-seeker	41805010
153	Other not economically active	41805010
0	Not applicable	41805010
12	Employed	41805011
45	Unemployed	41805011
15	Discouraged work-seeker	41805011
423	Other not economically active	41805011
0	Not applicable	41805011
12	Employed	41805012
12	Unemployed	41805012
15	Discouraged work-seeker	41805012
198	Other not economically active	41805012
0	Not applicable	41805012
0	Employed	41901001
18	Unemployed	41901001
3	Discouraged work-seeker	41901001
330	Other not economically active	41901001
0	Not applicable	41901001
12	Employed	41901002
18	Unemployed	41901002
18	Discouraged work-seeker	41901002
540	Other not economically active	41901002
0	Not applicable	41901002
21	Employed	41901003
9	Unemployed	41901003
15	Discouraged work-seeker	41901003
150	Other not economically active	41901003
0	Not applicable	41901003
3	Employed	41901004
12	Unemployed	41901004
0	Discouraged work-seeker	41901004
246	Other not economically active	41901004
0	Not applicable	41901004
0	Employed	41901005
6	Unemployed	41901005
3	Discouraged work-seeker	41901005
195	Other not economically active	41901005
0	Not applicable	41901005
9	Employed	41901006
18	Unemployed	41901006
36	Discouraged work-seeker	41901006
762	Other not economically active	41901006
0	Not applicable	41901006
3	Employed	41901007
9	Unemployed	41901007
9	Discouraged work-seeker	41901007
372	Other not economically active	41901007
0	Not applicable	41901007
9	Employed	41901008
27	Unemployed	41901008
15	Discouraged work-seeker	41901008
540	Other not economically active	41901008
0	Not applicable	41901008
18	Employed	41901009
24	Unemployed	41901009
9	Discouraged work-seeker	41901009
261	Other not economically active	41901009
0	Not applicable	41901009
6	Employed	41901010
3	Unemployed	41901010
3	Discouraged work-seeker	41901010
192	Other not economically active	41901010
0	Not applicable	41901010
9	Employed	41901011
21	Unemployed	41901011
9	Discouraged work-seeker	41901011
399	Other not economically active	41901011
0	Not applicable	41901011
6	Employed	41901012
18	Unemployed	41901012
0	Discouraged work-seeker	41901012
312	Other not economically active	41901012
0	Not applicable	41901012
6	Employed	41901013
24	Unemployed	41901013
15	Discouraged work-seeker	41901013
495	Other not economically active	41901013
0	Not applicable	41901013
0	Employed	41901014
15	Unemployed	41901014
6	Discouraged work-seeker	41901014
315	Other not economically active	41901014
0	Not applicable	41901014
18	Employed	41901015
30	Unemployed	41901015
21	Discouraged work-seeker	41901015
468	Other not economically active	41901015
0	Not applicable	41901015
3	Employed	41901016
21	Unemployed	41901016
12	Discouraged work-seeker	41901016
393	Other not economically active	41901016
0	Not applicable	41901016
0	Employed	41901017
3	Unemployed	41901017
3	Discouraged work-seeker	41901017
99	Other not economically active	41901017
0	Not applicable	41901017
0	Employed	41901018
21	Unemployed	41901018
3	Discouraged work-seeker	41901018
360	Other not economically active	41901018
0	Not applicable	41901018
3	Employed	41902001
18	Unemployed	41902001
0	Discouraged work-seeker	41902001
291	Other not economically active	41902001
0	Not applicable	41902001
3	Employed	41902002
12	Unemployed	41902002
3	Discouraged work-seeker	41902002
237	Other not economically active	41902002
0	Not applicable	41902002
6	Employed	41902003
12	Unemployed	41902003
0	Discouraged work-seeker	41902003
267	Other not economically active	41902003
0	Not applicable	41902003
6	Employed	41902004
12	Unemployed	41902004
6	Discouraged work-seeker	41902004
315	Other not economically active	41902004
0	Not applicable	41902004
9	Employed	41902005
18	Unemployed	41902005
0	Discouraged work-seeker	41902005
255	Other not economically active	41902005
0	Not applicable	41902005
12	Employed	41902006
24	Unemployed	41902006
0	Discouraged work-seeker	41902006
306	Other not economically active	41902006
0	Not applicable	41902006
3	Employed	41902007
24	Unemployed	41902007
6	Discouraged work-seeker	41902007
285	Other not economically active	41902007
0	Not applicable	41902007
3	Employed	41902008
15	Unemployed	41902008
6	Discouraged work-seeker	41902008
249	Other not economically active	41902008
0	Not applicable	41902008
3	Employed	41902009
15	Unemployed	41902009
0	Discouraged work-seeker	41902009
102	Other not economically active	41902009
0	Not applicable	41902009
15	Employed	41902010
3	Unemployed	41902010
15	Discouraged work-seeker	41902010
144	Other not economically active	41902010
0	Not applicable	41902010
9	Employed	41902011
45	Unemployed	41902011
21	Discouraged work-seeker	41902011
357	Other not economically active	41902011
0	Not applicable	41902011
9	Employed	41902012
48	Unemployed	41902012
12	Discouraged work-seeker	41902012
528	Other not economically active	41902012
0	Not applicable	41902012
3	Employed	41902013
24	Unemployed	41902013
3	Discouraged work-seeker	41902013
153	Other not economically active	41902013
0	Not applicable	41902013
12	Employed	41902014
12	Unemployed	41902014
3	Discouraged work-seeker	41902014
306	Other not economically active	41902014
0	Not applicable	41902014
15	Employed	41902015
18	Unemployed	41902015
18	Discouraged work-seeker	41902015
357	Other not economically active	41902015
0	Not applicable	41902015
9	Employed	41902016
15	Unemployed	41902016
3	Discouraged work-seeker	41902016
264	Other not economically active	41902016
0	Not applicable	41902016
3	Employed	41902017
18	Unemployed	41902017
12	Discouraged work-seeker	41902017
366	Other not economically active	41902017
0	Not applicable	41902017
15	Employed	41902018
6	Unemployed	41902018
6	Discouraged work-seeker	41902018
372	Other not economically active	41902018
0	Not applicable	41902018
15	Employed	41902019
45	Unemployed	41902019
12	Discouraged work-seeker	41902019
651	Other not economically active	41902019
0	Not applicable	41902019
9	Employed	41902020
24	Unemployed	41902020
6	Discouraged work-seeker	41902020
291	Other not economically active	41902020
0	Not applicable	41902020
6	Employed	41903001
9	Unemployed	41903001
18	Discouraged work-seeker	41903001
354	Other not economically active	41903001
0	Not applicable	41903001
9	Employed	41903002
30	Unemployed	41903002
12	Discouraged work-seeker	41903002
462	Other not economically active	41903002
0	Not applicable	41903002
9	Employed	41903003
21	Unemployed	41903003
30	Discouraged work-seeker	41903003
489	Other not economically active	41903003
0	Not applicable	41903003
15	Employed	41903004
18	Unemployed	41903004
18	Discouraged work-seeker	41903004
306	Other not economically active	41903004
0	Not applicable	41903004
9	Employed	41903005
30	Unemployed	41903005
6	Discouraged work-seeker	41903005
309	Other not economically active	41903005
0	Not applicable	41903005
15	Employed	41903006
15	Unemployed	41903006
9	Discouraged work-seeker	41903006
231	Other not economically active	41903006
0	Not applicable	41903006
3	Employed	41903007
18	Unemployed	41903007
18	Discouraged work-seeker	41903007
264	Other not economically active	41903007
0	Not applicable	41903007
9	Employed	41903008
24	Unemployed	41903008
6	Discouraged work-seeker	41903008
273	Other not economically active	41903008
0	Not applicable	41903008
6	Employed	41903009
33	Unemployed	41903009
15	Discouraged work-seeker	41903009
510	Other not economically active	41903009
0	Not applicable	41903009
24	Employed	41904001
66	Unemployed	41904001
27	Discouraged work-seeker	41904001
804	Other not economically active	41904001
0	Not applicable	41904001
12	Employed	41904002
30	Unemployed	41904002
27	Discouraged work-seeker	41904002
582	Other not economically active	41904002
0	Not applicable	41904002
6	Employed	41904003
30	Unemployed	41904003
21	Discouraged work-seeker	41904003
603	Other not economically active	41904003
0	Not applicable	41904003
18	Employed	41904004
69	Unemployed	41904004
24	Discouraged work-seeker	41904004
444	Other not economically active	41904004
0	Not applicable	41904004
21	Employed	41904005
36	Unemployed	41904005
21	Discouraged work-seeker	41904005
567	Other not economically active	41904005
0	Not applicable	41904005
18	Employed	41904006
9	Unemployed	41904006
18	Discouraged work-seeker	41904006
297	Other not economically active	41904006
0	Not applicable	41904006
6	Employed	41904007
24	Unemployed	41904007
6	Discouraged work-seeker	41904007
522	Other not economically active	41904007
0	Not applicable	41904007
3	Employed	41904008
9	Unemployed	41904008
12	Discouraged work-seeker	41904008
300	Other not economically active	41904008
0	Not applicable	41904008
6	Employed	41904009
36	Unemployed	41904009
6	Discouraged work-seeker	41904009
630	Other not economically active	41904009
0	Not applicable	41904009
6	Employed	41904010
36	Unemployed	41904010
9	Discouraged work-seeker	41904010
606	Other not economically active	41904010
0	Not applicable	41904010
9	Employed	41904011
30	Unemployed	41904011
9	Discouraged work-seeker	41904011
606	Other not economically active	41904011
0	Not applicable	41904011
27	Employed	41904012
48	Unemployed	41904012
24	Discouraged work-seeker	41904012
798	Other not economically active	41904012
0	Not applicable	41904012
15	Employed	41904013
51	Unemployed	41904013
6	Discouraged work-seeker	41904013
561	Other not economically active	41904013
0	Not applicable	41904013
15	Employed	41904014
36	Unemployed	41904014
6	Discouraged work-seeker	41904014
657	Other not economically active	41904014
0	Not applicable	41904014
15	Employed	41904015
30	Unemployed	41904015
51	Discouraged work-seeker	41904015
582	Other not economically active	41904015
0	Not applicable	41904015
12	Employed	41904016
36	Unemployed	41904016
15	Discouraged work-seeker	41904016
639	Other not economically active	41904016
0	Not applicable	41904016
12	Employed	41904017
9	Unemployed	41904017
6	Discouraged work-seeker	41904017
504	Other not economically active	41904017
0	Not applicable	41904017
9	Employed	41904018
39	Unemployed	41904018
6	Discouraged work-seeker	41904018
540	Other not economically active	41904018
0	Not applicable	41904018
9	Employed	41904019
54	Unemployed	41904019
9	Discouraged work-seeker	41904019
681	Other not economically active	41904019
0	Not applicable	41904019
9	Employed	41904020
24	Unemployed	41904020
3	Discouraged work-seeker	41904020
453	Other not economically active	41904020
0	Not applicable	41904020
6	Employed	41904021
27	Unemployed	41904021
15	Discouraged work-seeker	41904021
774	Other not economically active	41904021
0	Not applicable	41904021
27	Employed	41904022
45	Unemployed	41904022
12	Discouraged work-seeker	41904022
612	Other not economically active	41904022
0	Not applicable	41904022
9	Employed	41904023
24	Unemployed	41904023
18	Discouraged work-seeker	41904023
633	Other not economically active	41904023
0	Not applicable	41904023
18	Employed	41904024
57	Unemployed	41904024
36	Discouraged work-seeker	41904024
1122	Other not economically active	41904024
0	Not applicable	41904024
3	Employed	41904025
27	Unemployed	41904025
15	Discouraged work-seeker	41904025
486	Other not economically active	41904025
0	Not applicable	41904025
6	Employed	41904026
6	Unemployed	41904026
12	Discouraged work-seeker	41904026
378	Other not economically active	41904026
0	Not applicable	41904026
6	Employed	41904027
39	Unemployed	41904027
6	Discouraged work-seeker	41904027
477	Other not economically active	41904027
0	Not applicable	41904027
9	Employed	41904028
42	Unemployed	41904028
27	Discouraged work-seeker	41904028
672	Other not economically active	41904028
0	Not applicable	41904028
12	Employed	41904029
27	Unemployed	41904029
12	Discouraged work-seeker	41904029
435	Other not economically active	41904029
0	Not applicable	41904029
9	Employed	41904030
18	Unemployed	41904030
3	Discouraged work-seeker	41904030
462	Other not economically active	41904030
0	Not applicable	41904030
6	Employed	41904031
24	Unemployed	41904031
24	Discouraged work-seeker	41904031
630	Other not economically active	41904031
0	Not applicable	41904031
12	Employed	41904032
45	Unemployed	41904032
12	Discouraged work-seeker	41904032
879	Other not economically active	41904032
0	Not applicable	41904032
12	Employed	41904033
54	Unemployed	41904033
15	Discouraged work-seeker	41904033
864	Other not economically active	41904033
0	Not applicable	41904033
18	Employed	41904034
72	Unemployed	41904034
27	Discouraged work-seeker	41904034
849	Other not economically active	41904034
0	Not applicable	41904034
6	Employed	41904035
18	Unemployed	41904035
9	Discouraged work-seeker	41904035
450	Other not economically active	41904035
0	Not applicable	41904035
3	Employed	41905001
3	Unemployed	41905001
3	Discouraged work-seeker	41905001
144	Other not economically active	41905001
0	Not applicable	41905001
12	Employed	41905002
27	Unemployed	41905002
21	Discouraged work-seeker	41905002
408	Other not economically active	41905002
0	Not applicable	41905002
0	Employed	41905003
6	Unemployed	41905003
0	Discouraged work-seeker	41905003
207	Other not economically active	41905003
0	Not applicable	41905003
6	Employed	41905004
9	Unemployed	41905004
9	Discouraged work-seeker	41905004
327	Other not economically active	41905004
0	Not applicable	41905004
21	Employed	41905005
27	Unemployed	41905005
30	Discouraged work-seeker	41905005
198	Other not economically active	41905005
0	Not applicable	41905005
6	Employed	41905006
15	Unemployed	41905006
21	Discouraged work-seeker	41905006
405	Other not economically active	41905006
0	Not applicable	41905006
9	Employed	41905007
18	Unemployed	41905007
9	Discouraged work-seeker	41905007
357	Other not economically active	41905007
0	Not applicable	41905007
12	Employed	41905008
24	Unemployed	41905008
39	Discouraged work-seeker	41905008
450	Other not economically active	41905008
0	Not applicable	41905008
6	Employed	41906001
18	Unemployed	41906001
18	Discouraged work-seeker	41906001
294	Other not economically active	41906001
0	Not applicable	41906001
9	Employed	41906002
12	Unemployed	41906002
12	Discouraged work-seeker	41906002
321	Other not economically active	41906002
0	Not applicable	41906002
9	Employed	41906003
9	Unemployed	41906003
3	Discouraged work-seeker	41906003
273	Other not economically active	41906003
0	Not applicable	41906003
6	Employed	41906004
24	Unemployed	41906004
6	Discouraged work-seeker	41906004
438	Other not economically active	41906004
0	Not applicable	41906004
6	Employed	41906005
21	Unemployed	41906005
0	Discouraged work-seeker	41906005
357	Other not economically active	41906005
0	Not applicable	41906005
3	Employed	41906006
18	Unemployed	41906006
3	Discouraged work-seeker	41906006
285	Other not economically active	41906006
0	Not applicable	41906006
9	Employed	41906007
21	Unemployed	41906007
15	Discouraged work-seeker	41906007
192	Other not economically active	41906007
0	Not applicable	41906007
3	Employed	41906008
33	Unemployed	41906008
3	Discouraged work-seeker	41906008
294	Other not economically active	41906008
0	Not applicable	41906008
15	Employed	41906009
9	Unemployed	41906009
12	Discouraged work-seeker	41906009
258	Other not economically active	41906009
0	Not applicable	41906009
6	Employed	42001001
27	Unemployed	42001001
9	Discouraged work-seeker	42001001
456	Other not economically active	42001001
0	Not applicable	42001001
27	Employed	42001002
12	Unemployed	42001002
18	Discouraged work-seeker	42001002
324	Other not economically active	42001002
0	Not applicable	42001002
15	Employed	42001003
3	Unemployed	42001003
0	Discouraged work-seeker	42001003
450	Other not economically active	42001003
0	Not applicable	42001003
3	Employed	42001004
24	Unemployed	42001004
6	Discouraged work-seeker	42001004
348	Other not economically active	42001004
0	Not applicable	42001004
3	Employed	42001005
39	Unemployed	42001005
9	Discouraged work-seeker	42001005
411	Other not economically active	42001005
0	Not applicable	42001005
3	Employed	42001006
21	Unemployed	42001006
0	Discouraged work-seeker	42001006
177	Other not economically active	42001006
0	Not applicable	42001006
6	Employed	42001007
54	Unemployed	42001007
6	Discouraged work-seeker	42001007
372	Other not economically active	42001007
0	Not applicable	42001007
3	Employed	42001008
36	Unemployed	42001008
3	Discouraged work-seeker	42001008
237	Other not economically active	42001008
0	Not applicable	42001008
3	Employed	42001009
48	Unemployed	42001009
6	Discouraged work-seeker	42001009
363	Other not economically active	42001009
0	Not applicable	42001009
3	Employed	42001010
18	Unemployed	42001010
3	Discouraged work-seeker	42001010
267	Other not economically active	42001010
0	Not applicable	42001010
3	Employed	42001011
51	Unemployed	42001011
0	Discouraged work-seeker	42001011
156	Other not economically active	42001011
0	Not applicable	42001011
6	Employed	42001012
36	Unemployed	42001012
3	Discouraged work-seeker	42001012
177	Other not economically active	42001012
0	Not applicable	42001012
3	Employed	42001013
45	Unemployed	42001013
12	Discouraged work-seeker	42001013
417	Other not economically active	42001013
0	Not applicable	42001013
0	Employed	42001014
12	Unemployed	42001014
0	Discouraged work-seeker	42001014
234	Other not economically active	42001014
0	Not applicable	42001014
3	Employed	42001015
24	Unemployed	42001015
6	Discouraged work-seeker	42001015
216	Other not economically active	42001015
0	Not applicable	42001015
15	Employed	42001016
33	Unemployed	42001016
6	Discouraged work-seeker	42001016
201	Other not economically active	42001016
0	Not applicable	42001016
18	Employed	42001017
12	Unemployed	42001017
3	Discouraged work-seeker	42001017
186	Other not economically active	42001017
0	Not applicable	42001017
3	Employed	42001018
48	Unemployed	42001018
3	Discouraged work-seeker	42001018
393	Other not economically active	42001018
0	Not applicable	42001018
12	Employed	42001019
27	Unemployed	42001019
3	Discouraged work-seeker	42001019
399	Other not economically active	42001019
0	Not applicable	42001019
12	Employed	42001020
12	Unemployed	42001020
6	Discouraged work-seeker	42001020
471	Other not economically active	42001020
0	Not applicable	42001020
3	Employed	42001021
15	Unemployed	42001021
3	Discouraged work-seeker	42001021
387	Other not economically active	42001021
0	Not applicable	42001021
18	Employed	42001022
45	Unemployed	42001022
12	Discouraged work-seeker	42001022
366	Other not economically active	42001022
0	Not applicable	42001022
9	Employed	42001023
12	Unemployed	42001023
6	Discouraged work-seeker	42001023
135	Other not economically active	42001023
0	Not applicable	42001023
3	Employed	42001024
3	Unemployed	42001024
3	Discouraged work-seeker	42001024
51	Other not economically active	42001024
0	Not applicable	42001024
15	Employed	42001025
21	Unemployed	42001025
12	Discouraged work-seeker	42001025
318	Other not economically active	42001025
0	Not applicable	42001025
36	Employed	42003001
57	Unemployed	42003001
6	Discouraged work-seeker	42003001
282	Other not economically active	42003001
0	Not applicable	42003001
9	Employed	42003002
12	Unemployed	42003002
12	Discouraged work-seeker	42003002
264	Other not economically active	42003002
0	Not applicable	42003002
3	Employed	42003003
9	Unemployed	42003003
0	Discouraged work-seeker	42003003
264	Other not economically active	42003003
0	Not applicable	42003003
3	Employed	42003004
54	Unemployed	42003004
0	Discouraged work-seeker	42003004
135	Other not economically active	42003004
0	Not applicable	42003004
3	Employed	42003005
12	Unemployed	42003005
3	Discouraged work-seeker	42003005
300	Other not economically active	42003005
0	Not applicable	42003005
0	Employed	42003006
18	Unemployed	42003006
6	Discouraged work-seeker	42003006
81	Other not economically active	42003006
0	Not applicable	42003006
15	Employed	42003007
93	Unemployed	42003007
9	Discouraged work-seeker	42003007
459	Other not economically active	42003007
0	Not applicable	42003007
27	Employed	42003008
39	Unemployed	42003008
9	Discouraged work-seeker	42003008
591	Other not economically active	42003008
0	Not applicable	42003008
9	Employed	42003009
21	Unemployed	42003009
3	Discouraged work-seeker	42003009
306	Other not economically active	42003009
0	Not applicable	42003009
6	Employed	42003010
9	Unemployed	42003010
15	Discouraged work-seeker	42003010
258	Other not economically active	42003010
0	Not applicable	42003010
0	Employed	42003011
9	Unemployed	42003011
6	Discouraged work-seeker	42003011
210	Other not economically active	42003011
0	Not applicable	42003011
6	Employed	42003012
27	Unemployed	42003012
3	Discouraged work-seeker	42003012
237	Other not economically active	42003012
0	Not applicable	42003012
15	Employed	42003013
12	Unemployed	42003013
0	Discouraged work-seeker	42003013
144	Other not economically active	42003013
0	Not applicable	42003013
9	Employed	42003014
33	Unemployed	42003014
18	Discouraged work-seeker	42003014
306	Other not economically active	42003014
0	Not applicable	42003014
3	Employed	42003015
18	Unemployed	42003015
3	Discouraged work-seeker	42003015
252	Other not economically active	42003015
0	Not applicable	42003015
3	Employed	42003016
36	Unemployed	42003016
12	Discouraged work-seeker	42003016
459	Other not economically active	42003016
0	Not applicable	42003016
15	Employed	42003017
39	Unemployed	42003017
0	Discouraged work-seeker	42003017
402	Other not economically active	42003017
0	Not applicable	42003017
12	Employed	42003018
12	Unemployed	42003018
3	Discouraged work-seeker	42003018
180	Other not economically active	42003018
0	Not applicable	42003018
3	Employed	42003019
21	Unemployed	42003019
6	Discouraged work-seeker	42003019
381	Other not economically active	42003019
0	Not applicable	42003019
9	Employed	42003020
6	Unemployed	42003020
6	Discouraged work-seeker	42003020
108	Other not economically active	42003020
0	Not applicable	42003020
39	Employed	42004001
111	Unemployed	42004001
15	Discouraged work-seeker	42004001
570	Other not economically active	42004001
0	Not applicable	42004001
3	Employed	42004002
15	Unemployed	42004002
0	Discouraged work-seeker	42004002
279	Other not economically active	42004002
0	Not applicable	42004002
12	Employed	42004003
30	Unemployed	42004003
3	Discouraged work-seeker	42004003
306	Other not economically active	42004003
0	Not applicable	42004003
3	Employed	42004004
27	Unemployed	42004004
3	Discouraged work-seeker	42004004
312	Other not economically active	42004004
0	Not applicable	42004004
9	Employed	42004005
21	Unemployed	42004005
9	Discouraged work-seeker	42004005
267	Other not economically active	42004005
0	Not applicable	42004005
18	Employed	42004006
54	Unemployed	42004006
0	Discouraged work-seeker	42004006
210	Other not economically active	42004006
0	Not applicable	42004006
3	Employed	42004007
9	Unemployed	42004007
3	Discouraged work-seeker	42004007
255	Other not economically active	42004007
0	Not applicable	42004007
12	Employed	42004008
48	Unemployed	42004008
6	Discouraged work-seeker	42004008
321	Other not economically active	42004008
0	Not applicable	42004008
0	Employed	42004009
30	Unemployed	42004009
0	Discouraged work-seeker	42004009
216	Other not economically active	42004009
0	Not applicable	42004009
3	Employed	42004010
33	Unemployed	42004010
3	Discouraged work-seeker	42004010
330	Other not economically active	42004010
0	Not applicable	42004010
3	Employed	42004011
24	Unemployed	42004011
3	Discouraged work-seeker	42004011
198	Other not economically active	42004011
0	Not applicable	42004011
6	Employed	42004012
6	Unemployed	42004012
3	Discouraged work-seeker	42004012
120	Other not economically active	42004012
0	Not applicable	42004012
15	Employed	42004013
66	Unemployed	42004013
3	Discouraged work-seeker	42004013
558	Other not economically active	42004013
0	Not applicable	42004013
48	Employed	42004014
21	Unemployed	42004014
3	Discouraged work-seeker	42004014
363	Other not economically active	42004014
0	Not applicable	42004014
12	Employed	42004015
15	Unemployed	42004015
0	Discouraged work-seeker	42004015
108	Other not economically active	42004015
0	Not applicable	42004015
24	Employed	42004016
12	Unemployed	42004016
0	Discouraged work-seeker	42004016
270	Other not economically active	42004016
0	Not applicable	42004016
15	Employed	42004017
27	Unemployed	42004017
6	Discouraged work-seeker	42004017
273	Other not economically active	42004017
0	Not applicable	42004017
9	Employed	42004018
3	Unemployed	42004018
0	Discouraged work-seeker	42004018
96	Other not economically active	42004018
0	Not applicable	42004018
18	Employed	42004019
66	Unemployed	42004019
0	Discouraged work-seeker	42004019
510	Other not economically active	42004019
0	Not applicable	42004019
18	Employed	42004020
39	Unemployed	42004020
12	Discouraged work-seeker	42004020
384	Other not economically active	42004020
0	Not applicable	42004020
3	Employed	42004021
21	Unemployed	42004021
0	Discouraged work-seeker	42004021
219	Other not economically active	42004021
0	Not applicable	42004021
9	Employed	42005001
9	Unemployed	42005001
6	Discouraged work-seeker	42005001
204	Other not economically active	42005001
0	Not applicable	42005001
9	Employed	42005002
45	Unemployed	42005002
21	Discouraged work-seeker	42005002
507	Other not economically active	42005002
0	Not applicable	42005002
6	Employed	42005003
27	Unemployed	42005003
9	Discouraged work-seeker	42005003
360	Other not economically active	42005003
0	Not applicable	42005003
9	Employed	42005004
6	Unemployed	42005004
12	Discouraged work-seeker	42005004
291	Other not economically active	42005004
0	Not applicable	42005004
18	Employed	42005005
6	Unemployed	42005005
3	Discouraged work-seeker	42005005
264	Other not economically active	42005005
0	Not applicable	42005005
3	Employed	42005006
24	Unemployed	42005006
0	Discouraged work-seeker	42005006
267	Other not economically active	42005006
0	Not applicable	42005006
9	Employed	42005007
33	Unemployed	42005007
12	Discouraged work-seeker	42005007
330	Other not economically active	42005007
0	Not applicable	42005007
9	Employed	42005008
27	Unemployed	42005008
21	Discouraged work-seeker	42005008
465	Other not economically active	42005008
0	Not applicable	42005008
3	Employed	42005009
39	Unemployed	42005009
3	Discouraged work-seeker	42005009
474	Other not economically active	42005009
0	Not applicable	42005009
21	Employed	49400001
54	Unemployed	49400001
6	Discouraged work-seeker	49400001
447	Other not economically active	49400001
0	Not applicable	49400001
9	Employed	49400002
36	Unemployed	49400002
9	Discouraged work-seeker	49400002
489	Other not economically active	49400002
0	Not applicable	49400002
9	Employed	49400003
24	Unemployed	49400003
18	Discouraged work-seeker	49400003
588	Other not economically active	49400003
0	Not applicable	49400003
21	Employed	49400004
87	Unemployed	49400004
15	Discouraged work-seeker	49400004
525	Other not economically active	49400004
0	Not applicable	49400004
24	Employed	49400005
54	Unemployed	49400005
9	Discouraged work-seeker	49400005
609	Other not economically active	49400005
0	Not applicable	49400005
27	Employed	49400006
117	Unemployed	49400006
24	Discouraged work-seeker	49400006
858	Other not economically active	49400006
0	Not applicable	49400006
12	Employed	49400007
24	Unemployed	49400007
3	Discouraged work-seeker	49400007
366	Other not economically active	49400007
0	Not applicable	49400007
18	Employed	49400008
120	Unemployed	49400008
15	Discouraged work-seeker	49400008
891	Other not economically active	49400008
0	Not applicable	49400008
18	Employed	49400009
69	Unemployed	49400009
3	Discouraged work-seeker	49400009
672	Other not economically active	49400009
0	Not applicable	49400009
18	Employed	49400010
60	Unemployed	49400010
3	Discouraged work-seeker	49400010
816	Other not economically active	49400010
0	Not applicable	49400010
21	Employed	49400011
72	Unemployed	49400011
18	Discouraged work-seeker	49400011
822	Other not economically active	49400011
0	Not applicable	49400011
33	Employed	49400012
102	Unemployed	49400012
27	Discouraged work-seeker	49400012
921	Other not economically active	49400012
0	Not applicable	49400012
3	Employed	49400013
48	Unemployed	49400013
9	Discouraged work-seeker	49400013
345	Other not economically active	49400013
0	Not applicable	49400013
12	Employed	49400014
24	Unemployed	49400014
3	Discouraged work-seeker	49400014
618	Other not economically active	49400014
0	Not applicable	49400014
24	Employed	49400015
39	Unemployed	49400015
15	Discouraged work-seeker	49400015
717	Other not economically active	49400015
0	Not applicable	49400015
30	Employed	49400016
90	Unemployed	49400016
30	Discouraged work-seeker	49400016
666	Other not economically active	49400016
0	Not applicable	49400016
36	Employed	49400017
48	Unemployed	49400017
18	Discouraged work-seeker	49400017
696	Other not economically active	49400017
0	Not applicable	49400017
66	Employed	49400018
51	Unemployed	49400018
24	Discouraged work-seeker	49400018
996	Other not economically active	49400018
0	Not applicable	49400018
15	Employed	49400019
15	Unemployed	49400019
0	Discouraged work-seeker	49400019
351	Other not economically active	49400019
0	Not applicable	49400019
24	Employed	49400020
9	Unemployed	49400020
0	Discouraged work-seeker	49400020
366	Other not economically active	49400020
0	Not applicable	49400020
42	Employed	49400021
12	Unemployed	49400021
0	Discouraged work-seeker	49400021
480	Other not economically active	49400021
0	Not applicable	49400021
42	Employed	49400022
15	Unemployed	49400022
0	Discouraged work-seeker	49400022
345	Other not economically active	49400022
0	Not applicable	49400022
21	Employed	49400023
9	Unemployed	49400023
0	Discouraged work-seeker	49400023
420	Other not economically active	49400023
0	Not applicable	49400023
42	Employed	49400024
15	Unemployed	49400024
0	Discouraged work-seeker	49400024
339	Other not economically active	49400024
0	Not applicable	49400024
48	Employed	49400025
12	Unemployed	49400025
0	Discouraged work-seeker	49400025
627	Other not economically active	49400025
0	Not applicable	49400025
54	Employed	49400026
12	Unemployed	49400026
6	Discouraged work-seeker	49400026
372	Other not economically active	49400026
0	Not applicable	49400026
12	Employed	49400027
111	Unemployed	49400027
36	Discouraged work-seeker	49400027
1068	Other not economically active	49400027
0	Not applicable	49400027
18	Employed	49400028
48	Unemployed	49400028
12	Discouraged work-seeker	49400028
927	Other not economically active	49400028
0	Not applicable	49400028
12	Employed	49400029
39	Unemployed	49400029
15	Discouraged work-seeker	49400029
834	Other not economically active	49400029
0	Not applicable	49400029
15	Employed	49400030
48	Unemployed	49400030
3	Discouraged work-seeker	49400030
915	Other not economically active	49400030
0	Not applicable	49400030
6	Employed	49400031
66	Unemployed	49400031
3	Discouraged work-seeker	49400031
699	Other not economically active	49400031
0	Not applicable	49400031
12	Employed	49400032
66	Unemployed	49400032
12	Discouraged work-seeker	49400032
747	Other not economically active	49400032
0	Not applicable	49400032
12	Employed	49400033
39	Unemployed	49400033
12	Discouraged work-seeker	49400033
834	Other not economically active	49400033
0	Not applicable	49400033
9	Employed	49400034
45	Unemployed	49400034
18	Discouraged work-seeker	49400034
1149	Other not economically active	49400034
0	Not applicable	49400034
9	Employed	49400035
57	Unemployed	49400035
9	Discouraged work-seeker	49400035
1131	Other not economically active	49400035
0	Not applicable	49400035
9	Employed	49400036
45	Unemployed	49400036
6	Discouraged work-seeker	49400036
810	Other not economically active	49400036
0	Not applicable	49400036
18	Employed	49400037
75	Unemployed	49400037
21	Discouraged work-seeker	49400037
1053	Other not economically active	49400037
0	Not applicable	49400037
12	Employed	49400038
27	Unemployed	49400038
15	Discouraged work-seeker	49400038
684	Other not economically active	49400038
0	Not applicable	49400038
12	Employed	49400039
33	Unemployed	49400039
18	Discouraged work-seeker	49400039
708	Other not economically active	49400039
0	Not applicable	49400039
6	Employed	49400040
51	Unemployed	49400040
3	Discouraged work-seeker	49400040
699	Other not economically active	49400040
0	Not applicable	49400040
12	Employed	49400041
33	Unemployed	49400041
15	Discouraged work-seeker	49400041
666	Other not economically active	49400041
0	Not applicable	49400041
6	Employed	49400042
33	Unemployed	49400042
9	Discouraged work-seeker	49400042
729	Other not economically active	49400042
0	Not applicable	49400042
6	Employed	49400043
39	Unemployed	49400043
6	Discouraged work-seeker	49400043
846	Other not economically active	49400043
0	Not applicable	49400043
78	Employed	49400044
57	Unemployed	49400044
6	Discouraged work-seeker	49400044
816	Other not economically active	49400044
0	Not applicable	49400044
66	Employed	49400045
183	Unemployed	49400045
36	Discouraged work-seeker	49400045
1326	Other not economically active	49400045
0	Not applicable	49400045
60	Employed	49400046
174	Unemployed	49400046
45	Discouraged work-seeker	49400046
1428	Other not economically active	49400046
0	Not applicable	49400046
39	Employed	49400047
57	Unemployed	49400047
21	Discouraged work-seeker	49400047
771	Other not economically active	49400047
0	Not applicable	49400047
33	Employed	49400048
15	Unemployed	49400048
3	Discouraged work-seeker	49400048
324	Other not economically active	49400048
0	Not applicable	49400048
12	Employed	49400049
57	Unemployed	49400049
12	Discouraged work-seeker	49400049
813	Other not economically active	49400049
0	Not applicable	49400049
57	Employed	74201001
27	Unemployed	74201001
24	Discouraged work-seeker	74201001
516	Other not economically active	74201001
0	Not applicable	74201001
27	Employed	74201002
117	Unemployed	74201002
3	Discouraged work-seeker	74201002
804	Other not economically active	74201002
0	Not applicable	74201002
24	Employed	74201003
81	Unemployed	74201003
12	Discouraged work-seeker	74201003
669	Other not economically active	74201003
0	Not applicable	74201003
36	Employed	74201004
15	Unemployed	74201004
3	Discouraged work-seeker	74201004
531	Other not economically active	74201004
0	Not applicable	74201004
54	Employed	74201005
33	Unemployed	74201005
3	Discouraged work-seeker	74201005
603	Other not economically active	74201005
0	Not applicable	74201005
36	Employed	74201006
159	Unemployed	74201006
18	Discouraged work-seeker	74201006
1215	Other not economically active	74201006
0	Not applicable	74201006
33	Employed	74201007
186	Unemployed	74201007
12	Discouraged work-seeker	74201007
771	Other not economically active	74201007
0	Not applicable	74201007
42	Employed	74201008
75	Unemployed	74201008
18	Discouraged work-seeker	74201008
636	Other not economically active	74201008
0	Not applicable	74201008
33	Employed	74201009
42	Unemployed	74201009
3	Discouraged work-seeker	74201009
594	Other not economically active	74201009
0	Not applicable	74201009
45	Employed	74201010
72	Unemployed	74201010
12	Discouraged work-seeker	74201010
645	Other not economically active	74201010
0	Not applicable	74201010
18	Employed	74201011
126	Unemployed	74201011
15	Discouraged work-seeker	74201011
894	Other not economically active	74201011
0	Not applicable	74201011
9	Employed	74201012
54	Unemployed	74201012
9	Discouraged work-seeker	74201012
393	Other not economically active	74201012
0	Not applicable	74201012
12	Employed	74201013
57	Unemployed	74201013
21	Discouraged work-seeker	74201013
522	Other not economically active	74201013
0	Not applicable	74201013
6	Employed	74201014
57	Unemployed	74201014
9	Discouraged work-seeker	74201014
396	Other not economically active	74201014
0	Not applicable	74201014
27	Employed	74201015
48	Unemployed	74201015
9	Discouraged work-seeker	74201015
753	Other not economically active	74201015
0	Not applicable	74201015
33	Employed	74201016
48	Unemployed	74201016
18	Discouraged work-seeker	74201016
615	Other not economically active	74201016
0	Not applicable	74201016
12	Employed	74201017
54	Unemployed	74201017
3	Discouraged work-seeker	74201017
405	Other not economically active	74201017
0	Not applicable	74201017
15	Employed	74201018
78	Unemployed	74201018
12	Discouraged work-seeker	74201018
699	Other not economically active	74201018
0	Not applicable	74201018
30	Employed	74201019
66	Unemployed	74201019
6	Discouraged work-seeker	74201019
843	Other not economically active	74201019
0	Not applicable	74201019
18	Employed	74201020
111	Unemployed	74201020
9	Discouraged work-seeker	74201020
738	Other not economically active	74201020
0	Not applicable	74201020
45	Employed	74201021
72	Unemployed	74201021
27	Discouraged work-seeker	74201021
855	Other not economically active	74201021
0	Not applicable	74201021
30	Employed	74201022
138	Unemployed	74201022
6	Discouraged work-seeker	74201022
813	Other not economically active	74201022
0	Not applicable	74201022
18	Employed	74201023
72	Unemployed	74201023
24	Discouraged work-seeker	74201023
621	Other not economically active	74201023
0	Not applicable	74201023
9	Employed	74201024
39	Unemployed	74201024
24	Discouraged work-seeker	74201024
597	Other not economically active	74201024
0	Not applicable	74201024
36	Employed	74201025
102	Unemployed	74201025
18	Discouraged work-seeker	74201025
825	Other not economically active	74201025
0	Not applicable	74201025
42	Employed	74201026
132	Unemployed	74201026
12	Discouraged work-seeker	74201026
1374	Other not economically active	74201026
0	Not applicable	74201026
15	Employed	74201027
42	Unemployed	74201027
3	Discouraged work-seeker	74201027
567	Other not economically active	74201027
0	Not applicable	74201027
30	Employed	74201028
144	Unemployed	74201028
15	Discouraged work-seeker	74201028
1350	Other not economically active	74201028
0	Not applicable	74201028
24	Employed	74201029
66	Unemployed	74201029
27	Discouraged work-seeker	74201029
744	Other not economically active	74201029
0	Not applicable	74201029
12	Employed	74201030
42	Unemployed	74201030
3	Discouraged work-seeker	74201030
567	Other not economically active	74201030
0	Not applicable	74201030
9	Employed	74201031
48	Unemployed	74201031
3	Discouraged work-seeker	74201031
600	Other not economically active	74201031
0	Not applicable	74201031
3	Employed	74201032
51	Unemployed	74201032
0	Discouraged work-seeker	74201032
498	Other not economically active	74201032
0	Not applicable	74201032
21	Employed	74201033
51	Unemployed	74201033
9	Discouraged work-seeker	74201033
819	Other not economically active	74201033
0	Not applicable	74201033
9	Employed	74201034
66	Unemployed	74201034
6	Discouraged work-seeker	74201034
477	Other not economically active	74201034
0	Not applicable	74201034
6	Employed	74201035
57	Unemployed	74201035
3	Discouraged work-seeker	74201035
522	Other not economically active	74201035
0	Not applicable	74201035
48	Employed	74201036
171	Unemployed	74201036
27	Discouraged work-seeker	74201036
921	Other not economically active	74201036
0	Not applicable	74201036
9	Employed	74201037
39	Unemployed	74201037
3	Discouraged work-seeker	74201037
561	Other not economically active	74201037
0	Not applicable	74201037
39	Employed	74201038
87	Unemployed	74201038
9	Discouraged work-seeker	74201038
594	Other not economically active	74201038
0	Not applicable	74201038
15	Employed	74201039
57	Unemployed	74201039
12	Discouraged work-seeker	74201039
651	Other not economically active	74201039
0	Not applicable	74201039
9	Employed	74201040
51	Unemployed	74201040
9	Discouraged work-seeker	74201040
546	Other not economically active	74201040
0	Not applicable	74201040
12	Employed	74201041
69	Unemployed	74201041
0	Discouraged work-seeker	74201041
621	Other not economically active	74201041
0	Not applicable	74201041
3	Employed	74201042
33	Unemployed	74201042
9	Discouraged work-seeker	74201042
393	Other not economically active	74201042
0	Not applicable	74201042
33	Employed	74201043
60	Unemployed	74201043
21	Discouraged work-seeker	74201043
672	Other not economically active	74201043
0	Not applicable	74201043
24	Employed	74201044
102	Unemployed	74201044
18	Discouraged work-seeker	74201044
756	Other not economically active	74201044
0	Not applicable	74201044
30	Employed	74201045
33	Unemployed	74201045
9	Discouraged work-seeker	74201045
510	Other not economically active	74201045
0	Not applicable	74201045
36	Employed	74202001
24	Unemployed	74202001
6	Discouraged work-seeker	74202001
255	Other not economically active	74202001
0	Not applicable	74202001
24	Employed	74202002
3	Unemployed	74202002
0	Discouraged work-seeker	74202002
183	Other not economically active	74202002
0	Not applicable	74202002
9	Employed	74202003
9	Unemployed	74202003
0	Discouraged work-seeker	74202003
210	Other not economically active	74202003
0	Not applicable	74202003
18	Employed	74202004
9	Unemployed	74202004
3	Discouraged work-seeker	74202004
585	Other not economically active	74202004
0	Not applicable	74202004
36	Employed	74202005
33	Unemployed	74202005
15	Discouraged work-seeker	74202005
342	Other not economically active	74202005
0	Not applicable	74202005
18	Employed	74202006
54	Unemployed	74202006
12	Discouraged work-seeker	74202006
435	Other not economically active	74202006
0	Not applicable	74202006
15	Employed	74202007
12	Unemployed	74202007
0	Discouraged work-seeker	74202007
231	Other not economically active	74202007
0	Not applicable	74202007
9	Employed	74202008
51	Unemployed	74202008
12	Discouraged work-seeker	74202008
273	Other not economically active	74202008
0	Not applicable	74202008
0	Employed	74202009
6	Unemployed	74202009
0	Discouraged work-seeker	74202009
15	Other not economically active	74202009
0	Not applicable	74202009
12	Employed	74202010
39	Unemployed	74202010
9	Discouraged work-seeker	74202010
414	Other not economically active	74202010
0	Not applicable	74202010
15	Employed	74202011
30	Unemployed	74202011
0	Discouraged work-seeker	74202011
318	Other not economically active	74202011
0	Not applicable	74202011
15	Employed	74202012
3	Unemployed	74202012
0	Discouraged work-seeker	74202012
144	Other not economically active	74202012
0	Not applicable	74202012
27	Employed	74202013
18	Unemployed	74202013
6	Discouraged work-seeker	74202013
240	Other not economically active	74202013
0	Not applicable	74202013
6	Employed	74202014
21	Unemployed	74202014
0	Discouraged work-seeker	74202014
243	Other not economically active	74202014
0	Not applicable	74202014
27	Employed	74203001
36	Unemployed	74203001
21	Discouraged work-seeker	74203001
210	Other not economically active	74203001
0	Not applicable	74203001
12	Employed	74203002
42	Unemployed	74203002
6	Discouraged work-seeker	74203002
396	Other not economically active	74203002
0	Not applicable	74203002
9	Employed	74203003
21	Unemployed	74203003
3	Discouraged work-seeker	74203003
315	Other not economically active	74203003
0	Not applicable	74203003
3	Employed	74203004
39	Unemployed	74203004
9	Discouraged work-seeker	74203004
345	Other not economically active	74203004
0	Not applicable	74203004
6	Employed	74203005
18	Unemployed	74203005
6	Discouraged work-seeker	74203005
351	Other not economically active	74203005
0	Not applicable	74203005
6	Employed	74203006
18	Unemployed	74203006
15	Discouraged work-seeker	74203006
255	Other not economically active	74203006
0	Not applicable	74203006
12	Employed	74203007
63	Unemployed	74203007
9	Discouraged work-seeker	74203007
402	Other not economically active	74203007
0	Not applicable	74203007
24	Employed	74203008
48	Unemployed	74203008
9	Discouraged work-seeker	74203008
330	Other not economically active	74203008
0	Not applicable	74203008
15	Employed	74203009
6	Unemployed	74203009
0	Discouraged work-seeker	74203009
216	Other not economically active	74203009
0	Not applicable	74203009
18	Employed	74203010
27	Unemployed	74203010
3	Discouraged work-seeker	74203010
276	Other not economically active	74203010
0	Not applicable	74203010
6	Employed	74203011
24	Unemployed	74203011
6	Discouraged work-seeker	74203011
276	Other not economically active	74203011
0	Not applicable	74203011
15	Employed	74203012
45	Unemployed	74203012
3	Discouraged work-seeker	74203012
402	Other not economically active	74203012
0	Not applicable	74203012
6	Employed	74203013
27	Unemployed	74203013
6	Discouraged work-seeker	74203013
414	Other not economically active	74203013
0	Not applicable	74203013
36	Employed	74801001
75	Unemployed	74801001
33	Discouraged work-seeker	74801001
582	Other not economically active	74801001
0	Not applicable	74801001
39	Employed	74801002
69	Unemployed	74801002
30	Discouraged work-seeker	74801002
726	Other not economically active	74801002
0	Not applicable	74801002
12	Employed	74801003
42	Unemployed	74801003
12	Discouraged work-seeker	74801003
666	Other not economically active	74801003
0	Not applicable	74801003
12	Employed	74801004
57	Unemployed	74801004
6	Discouraged work-seeker	74801004
567	Other not economically active	74801004
0	Not applicable	74801004
21	Employed	74801005
18	Unemployed	74801005
18	Discouraged work-seeker	74801005
321	Other not economically active	74801005
0	Not applicable	74801005
3	Employed	74801006
48	Unemployed	74801006
36	Discouraged work-seeker	74801006
285	Other not economically active	74801006
0	Not applicable	74801006
15	Employed	74801007
18	Unemployed	74801007
0	Discouraged work-seeker	74801007
441	Other not economically active	74801007
0	Not applicable	74801007
9	Employed	74801008
45	Unemployed	74801008
9	Discouraged work-seeker	74801008
396	Other not economically active	74801008
0	Not applicable	74801008
18	Employed	74801009
15	Unemployed	74801009
0	Discouraged work-seeker	74801009
273	Other not economically active	74801009
0	Not applicable	74801009
3	Employed	74801010
36	Unemployed	74801010
0	Discouraged work-seeker	74801010
336	Other not economically active	74801010
0	Not applicable	74801010
12	Employed	74801011
51	Unemployed	74801011
9	Discouraged work-seeker	74801011
639	Other not economically active	74801011
0	Not applicable	74801011
3	Employed	74801012
24	Unemployed	74801012
0	Discouraged work-seeker	74801012
261	Other not economically active	74801012
0	Not applicable	74801012
12	Employed	74801013
33	Unemployed	74801013
3	Discouraged work-seeker	74801013
492	Other not economically active	74801013
0	Not applicable	74801013
36	Employed	74801014
54	Unemployed	74801014
12	Discouraged work-seeker	74801014
426	Other not economically active	74801014
0	Not applicable	74801014
3	Employed	74801015
36	Unemployed	74801015
3	Discouraged work-seeker	74801015
222	Other not economically active	74801015
0	Not applicable	74801015
24	Employed	74801016
60	Unemployed	74801016
12	Discouraged work-seeker	74801016
258	Other not economically active	74801016
0	Not applicable	74801016
33	Employed	74801017
18	Unemployed	74801017
0	Discouraged work-seeker	74801017
324	Other not economically active	74801017
0	Not applicable	74801017
33	Employed	74801018
24	Unemployed	74801018
0	Discouraged work-seeker	74801018
426	Other not economically active	74801018
0	Not applicable	74801018
3	Employed	74801019
21	Unemployed	74801019
3	Discouraged work-seeker	74801019
255	Other not economically active	74801019
0	Not applicable	74801019
36	Employed	74801020
45	Unemployed	74801020
12	Discouraged work-seeker	74801020
366	Other not economically active	74801020
0	Not applicable	74801020
36	Employed	74801021
12	Unemployed	74801021
3	Discouraged work-seeker	74801021
309	Other not economically active	74801021
0	Not applicable	74801021
30	Employed	74801022
21	Unemployed	74801022
3	Discouraged work-seeker	74801022
339	Other not economically active	74801022
0	Not applicable	74801022
12	Employed	74801023
75	Unemployed	74801023
0	Discouraged work-seeker	74801023
231	Other not economically active	74801023
0	Not applicable	74801023
12	Employed	74801024
42	Unemployed	74801024
9	Discouraged work-seeker	74801024
540	Other not economically active	74801024
0	Not applicable	74801024
9	Employed	74801025
21	Unemployed	74801025
6	Discouraged work-seeker	74801025
204	Other not economically active	74801025
0	Not applicable	74801025
39	Employed	74801026
48	Unemployed	74801026
0	Discouraged work-seeker	74801026
453	Other not economically active	74801026
0	Not applicable	74801026
39	Employed	74801027
66	Unemployed	74801027
6	Discouraged work-seeker	74801027
405	Other not economically active	74801027
0	Not applicable	74801027
24	Employed	74801028
15	Unemployed	74801028
0	Discouraged work-seeker	74801028
315	Other not economically active	74801028
0	Not applicable	74801028
39	Employed	74801029
18	Unemployed	74801029
3	Discouraged work-seeker	74801029
201	Other not economically active	74801029
0	Not applicable	74801029
33	Employed	74801030
69	Unemployed	74801030
12	Discouraged work-seeker	74801030
510	Other not economically active	74801030
0	Not applicable	74801030
27	Employed	74801031
45	Unemployed	74801031
0	Discouraged work-seeker	74801031
381	Other not economically active	74801031
0	Not applicable	74801031
24	Employed	74801032
45	Unemployed	74801032
24	Discouraged work-seeker	74801032
258	Other not economically active	74801032
0	Not applicable	74801032
18	Employed	74801033
33	Unemployed	74801033
12	Discouraged work-seeker	74801033
204	Other not economically active	74801033
0	Not applicable	74801033
21	Employed	74801034
90	Unemployed	74801034
51	Discouraged work-seeker	74801034
564	Other not economically active	74801034
0	Not applicable	74801034
24	Employed	74802001
60	Unemployed	74802001
6	Discouraged work-seeker	74802001
399	Other not economically active	74802001
0	Not applicable	74802001
33	Employed	74802002
75	Unemployed	74802002
12	Discouraged work-seeker	74802002
483	Other not economically active	74802002
0	Not applicable	74802002
15	Employed	74802003
6	Unemployed	74802003
6	Discouraged work-seeker	74802003
222	Other not economically active	74802003
0	Not applicable	74802003
12	Employed	74802004
6	Unemployed	74802004
3	Discouraged work-seeker	74802004
132	Other not economically active	74802004
0	Not applicable	74802004
9	Employed	74802005
6	Unemployed	74802005
3	Discouraged work-seeker	74802005
150	Other not economically active	74802005
0	Not applicable	74802005
12	Employed	74802006
6	Unemployed	74802006
3	Discouraged work-seeker	74802006
237	Other not economically active	74802006
0	Not applicable	74802006
24	Employed	74802007
24	Unemployed	74802007
0	Discouraged work-seeker	74802007
267	Other not economically active	74802007
0	Not applicable	74802007
18	Employed	74802008
30	Unemployed	74802008
15	Discouraged work-seeker	74802008
393	Other not economically active	74802008
0	Not applicable	74802008
21	Employed	74802009
30	Unemployed	74802009
12	Discouraged work-seeker	74802009
348	Other not economically active	74802009
0	Not applicable	74802009
6	Employed	74802010
30	Unemployed	74802010
0	Discouraged work-seeker	74802010
168	Other not economically active	74802010
0	Not applicable	74802010
15	Employed	74802011
12	Unemployed	74802011
15	Discouraged work-seeker	74802011
171	Other not economically active	74802011
0	Not applicable	74802011
9	Employed	74802012
27	Unemployed	74802012
9	Discouraged work-seeker	74802012
267	Other not economically active	74802012
0	Not applicable	74802012
3	Employed	74802013
12	Unemployed	74802013
9	Discouraged work-seeker	74802013
279	Other not economically active	74802013
0	Not applicable	74802013
0	Employed	74802014
24	Unemployed	74802014
6	Discouraged work-seeker	74802014
255	Other not economically active	74802014
0	Not applicable	74802014
15	Employed	74802015
27	Unemployed	74802015
6	Discouraged work-seeker	74802015
378	Other not economically active	74802015
0	Not applicable	74802015
9	Employed	74802016
21	Unemployed	74802016
0	Discouraged work-seeker	74802016
336	Other not economically active	74802016
0	Not applicable	74802016
3	Employed	74802017
12	Unemployed	74802017
0	Discouraged work-seeker	74802017
183	Other not economically active	74802017
0	Not applicable	74802017
12	Employed	74802018
27	Unemployed	74802018
0	Discouraged work-seeker	74802018
258	Other not economically active	74802018
0	Not applicable	74802018
6	Employed	74802019
24	Unemployed	74802019
0	Discouraged work-seeker	74802019
198	Other not economically active	74802019
0	Not applicable	74802019
6	Employed	74802020
36	Unemployed	74802020
12	Discouraged work-seeker	74802020
372	Other not economically active	74802020
0	Not applicable	74802020
0	Employed	74802021
18	Unemployed	74802021
3	Discouraged work-seeker	74802021
174	Other not economically active	74802021
0	Not applicable	74802021
6	Employed	74802022
18	Unemployed	74802022
3	Discouraged work-seeker	74802022
189	Other not economically active	74802022
0	Not applicable	74802022
9	Employed	74803001
36	Unemployed	74803001
3	Discouraged work-seeker	74803001
108	Other not economically active	74803001
0	Not applicable	74803001
9	Employed	74803002
36	Unemployed	74803002
3	Discouraged work-seeker	74803002
138	Other not economically active	74803002
0	Not applicable	74803002
0	Employed	74803003
0	Unemployed	74803003
0	Discouraged work-seeker	74803003
0	Other not economically active	74803003
0	Not applicable	74803003
9	Employed	74803004
24	Unemployed	74803004
6	Discouraged work-seeker	74803004
186	Other not economically active	74803004
0	Not applicable	74803004
6	Employed	74803005
24	Unemployed	74803005
6	Discouraged work-seeker	74803005
156	Other not economically active	74803005
0	Not applicable	74803005
27	Employed	74803006
30	Unemployed	74803006
3	Discouraged work-seeker	74803006
357	Other not economically active	74803006
0	Not applicable	74803006
6	Employed	74803007
69	Unemployed	74803007
12	Discouraged work-seeker	74803007
432	Other not economically active	74803007
0	Not applicable	74803007
12	Employed	74803008
99	Unemployed	74803008
3	Discouraged work-seeker	74803008
498	Other not economically active	74803008
0	Not applicable	74803008
21	Employed	74803009
51	Unemployed	74803009
18	Discouraged work-seeker	74803009
237	Other not economically active	74803009
0	Not applicable	74803009
15	Employed	74803010
51	Unemployed	74803010
3	Discouraged work-seeker	74803010
276	Other not economically active	74803010
0	Not applicable	74803010
15	Employed	74803011
42	Unemployed	74803011
15	Discouraged work-seeker	74803011
132	Other not economically active	74803011
0	Not applicable	74803011
9	Employed	74803012
42	Unemployed	74803012
3	Discouraged work-seeker	74803012
300	Other not economically active	74803012
0	Not applicable	74803012
15	Employed	74803013
33	Unemployed	74803013
3	Discouraged work-seeker	74803013
222	Other not economically active	74803013
0	Not applicable	74803013
15	Employed	74803014
72	Unemployed	74803014
15	Discouraged work-seeker	74803014
192	Other not economically active	74803014
0	Not applicable	74803014
15	Employed	74803015
54	Unemployed	74803015
6	Discouraged work-seeker	74803015
273	Other not economically active	74803015
0	Not applicable	74803015
24	Employed	74803016
36	Unemployed	74803016
12	Discouraged work-seeker	74803016
336	Other not economically active	74803016
0	Not applicable	74803016
24	Employed	74804001
60	Unemployed	74804001
12	Discouraged work-seeker	74804001
471	Other not economically active	74804001
0	Not applicable	74804001
12	Employed	74804002
39	Unemployed	74804002
6	Discouraged work-seeker	74804002
390	Other not economically active	74804002
0	Not applicable	74804002
12	Employed	74804003
36	Unemployed	74804003
9	Discouraged work-seeker	74804003
273	Other not economically active	74804003
0	Not applicable	74804003
12	Employed	74804004
48	Unemployed	74804004
9	Discouraged work-seeker	74804004
396	Other not economically active	74804004
0	Not applicable	74804004
3	Employed	74804005
15	Unemployed	74804005
3	Discouraged work-seeker	74804005
60	Other not economically active	74804005
0	Not applicable	74804005
9	Employed	74804006
27	Unemployed	74804006
0	Discouraged work-seeker	74804006
267	Other not economically active	74804006
0	Not applicable	74804006
3	Employed	74804007
45	Unemployed	74804007
6	Discouraged work-seeker	74804007
378	Other not economically active	74804007
0	Not applicable	74804007
3	Employed	74804008
39	Unemployed	74804008
9	Discouraged work-seeker	74804008
255	Other not economically active	74804008
0	Not applicable	74804008
6	Employed	74804009
21	Unemployed	74804009
9	Discouraged work-seeker	74804009
270	Other not economically active	74804009
0	Not applicable	74804009
9	Employed	74804010
15	Unemployed	74804010
15	Discouraged work-seeker	74804010
276	Other not economically active	74804010
0	Not applicable	74804010
6	Employed	74804011
15	Unemployed	74804011
0	Discouraged work-seeker	74804011
165	Other not economically active	74804011
0	Not applicable	74804011
9	Employed	74804012
6	Unemployed	74804012
3	Discouraged work-seeker	74804012
180	Other not economically active	74804012
0	Not applicable	74804012
9	Employed	74804013
18	Unemployed	74804013
0	Discouraged work-seeker	74804013
231	Other not economically active	74804013
0	Not applicable	74804013
6	Employed	74804014
12	Unemployed	74804014
0	Discouraged work-seeker	74804014
72	Other not economically active	74804014
0	Not applicable	74804014
3	Employed	74804015
9	Unemployed	74804015
12	Discouraged work-seeker	74804015
99	Other not economically active	74804015
0	Not applicable	74804015
18	Employed	74804016
15	Unemployed	74804016
9	Discouraged work-seeker	74804016
264	Other not economically active	74804016
0	Not applicable	74804016
15	Employed	74804017
9	Unemployed	74804017
6	Discouraged work-seeker	74804017
234	Other not economically active	74804017
0	Not applicable	74804017
18	Employed	74804018
15	Unemployed	74804018
0	Discouraged work-seeker	74804018
198	Other not economically active	74804018
0	Not applicable	74804018
0	Employed	74804019
0	Unemployed	74804019
0	Discouraged work-seeker	74804019
9	Other not economically active	74804019
0	Not applicable	74804019
21	Employed	74804020
57	Unemployed	74804020
3	Discouraged work-seeker	74804020
381	Other not economically active	74804020
0	Not applicable	74804020
36	Employed	74804021
81	Unemployed	74804021
9	Discouraged work-seeker	74804021
357	Other not economically active	74804021
0	Not applicable	74804021
15	Employed	74804022
48	Unemployed	74804022
12	Discouraged work-seeker	74804022
303	Other not economically active	74804022
0	Not applicable	74804022
21	Employed	74804023
45	Unemployed	74804023
12	Discouraged work-seeker	74804023
318	Other not economically active	74804023
0	Not applicable	74804023
15	Employed	74804024
12	Unemployed	74804024
6	Discouraged work-seeker	74804024
219	Other not economically active	74804024
0	Not applicable	74804024
12	Employed	74804025
39	Unemployed	74804025
18	Discouraged work-seeker	74804025
384	Other not economically active	74804025
0	Not applicable	74804025
27	Employed	74804026
63	Unemployed	74804026
9	Discouraged work-seeker	74804026
441	Other not economically active	74804026
0	Not applicable	74804026
9	Employed	74804027
3	Unemployed	74804027
3	Discouraged work-seeker	74804027
105	Other not economically active	74804027
0	Not applicable	74804027
24	Employed	74804028
18	Unemployed	74804028
3	Discouraged work-seeker	74804028
270	Other not economically active	74804028
0	Not applicable	74804028
120	Employed	79700001
210	Unemployed	79700001
30	Discouraged work-seeker	79700001
1425	Other not economically active	79700001
0	Not applicable	79700001
51	Employed	79700002
219	Unemployed	79700002
18	Discouraged work-seeker	79700002
777	Other not economically active	79700002
0	Not applicable	79700002
39	Employed	79700003
108	Unemployed	79700003
15	Discouraged work-seeker	79700003
783	Other not economically active	79700003
0	Not applicable	79700003
15	Employed	79700004
48	Unemployed	79700004
3	Discouraged work-seeker	79700004
222	Other not economically active	79700004
0	Not applicable	79700004
27	Employed	79700005
147	Unemployed	79700005
21	Discouraged work-seeker	79700005
828	Other not economically active	79700005
0	Not applicable	79700005
30	Employed	79700006
168	Unemployed	79700006
6	Discouraged work-seeker	79700006
894	Other not economically active	79700006
0	Not applicable	79700006
21	Employed	79700007
123	Unemployed	79700007
24	Discouraged work-seeker	79700007
834	Other not economically active	79700007
0	Not applicable	79700007
39	Employed	79700008
162	Unemployed	79700008
21	Discouraged work-seeker	79700008
1089	Other not economically active	79700008
0	Not applicable	79700008
57	Employed	79700009
132	Unemployed	79700009
9	Discouraged work-seeker	79700009
765	Other not economically active	79700009
0	Not applicable	79700009
36	Employed	79700010
171	Unemployed	79700010
21	Discouraged work-seeker	79700010
738	Other not economically active	79700010
0	Not applicable	79700010
39	Employed	79700011
162	Unemployed	79700011
18	Discouraged work-seeker	79700011
1017	Other not economically active	79700011
0	Not applicable	79700011
69	Employed	79700012
264	Unemployed	79700012
12	Discouraged work-seeker	79700012
1026	Other not economically active	79700012
0	Not applicable	79700012
54	Employed	79700013
108	Unemployed	79700013
12	Discouraged work-seeker	79700013
912	Other not economically active	79700013
0	Not applicable	79700013
75	Employed	79700014
165	Unemployed	79700014
27	Discouraged work-seeker	79700014
1047	Other not economically active	79700014
0	Not applicable	79700014
114	Employed	79700015
66	Unemployed	79700015
3	Discouraged work-seeker	79700015
894	Other not economically active	79700015
0	Not applicable	79700015
126	Employed	79700016
66	Unemployed	79700016
6	Discouraged work-seeker	79700016
762	Other not economically active	79700016
0	Not applicable	79700016
126	Employed	79700017
90	Unemployed	79700017
9	Discouraged work-seeker	79700017
921	Other not economically active	79700017
0	Not applicable	79700017
93	Employed	79700018
57	Unemployed	79700018
18	Discouraged work-seeker	79700018
798	Other not economically active	79700018
0	Not applicable	79700018
96	Employed	79700019
51	Unemployed	79700019
3	Discouraged work-seeker	79700019
861	Other not economically active	79700019
0	Not applicable	79700019
102	Employed	79700020
51	Unemployed	79700020
6	Discouraged work-seeker	79700020
795	Other not economically active	79700020
0	Not applicable	79700020
102	Employed	79700021
126	Unemployed	79700021
30	Discouraged work-seeker	79700021
933	Other not economically active	79700021
0	Not applicable	79700021
105	Employed	79700022
54	Unemployed	79700022
6	Discouraged work-seeker	79700022
690	Other not economically active	79700022
0	Not applicable	79700022
117	Employed	79700023
72	Unemployed	79700023
3	Discouraged work-seeker	79700023
795	Other not economically active	79700023
0	Not applicable	79700023
105	Employed	79700024
135	Unemployed	79700024
15	Discouraged work-seeker	79700024
1629	Other not economically active	79700024
0	Not applicable	79700024
90	Employed	79700025
234	Unemployed	79700025
12	Discouraged work-seeker	79700025
1638	Other not economically active	79700025
0	Not applicable	79700025
57	Employed	79700026
174	Unemployed	79700026
54	Discouraged work-seeker	79700026
1572	Other not economically active	79700026
0	Not applicable	79700026
108	Employed	79700027
36	Unemployed	79700027
15	Discouraged work-seeker	79700027
834	Other not economically active	79700027
0	Not applicable	79700027
111	Employed	79700028
66	Unemployed	79700028
3	Discouraged work-seeker	79700028
708	Other not economically active	79700028
0	Not applicable	79700028
27	Employed	79700029
96	Unemployed	79700029
3	Discouraged work-seeker	79700029
714	Other not economically active	79700029
0	Not applicable	79700029
33	Employed	79700030
129	Unemployed	79700030
39	Discouraged work-seeker	79700030
720	Other not economically active	79700030
0	Not applicable	79700030
84	Employed	79700031
156	Unemployed	79700031
45	Discouraged work-seeker	79700031
1185	Other not economically active	79700031
0	Not applicable	79700031
81	Employed	79700032
45	Unemployed	79700032
3	Discouraged work-seeker	79700032
774	Other not economically active	79700032
0	Not applicable	79700032
99	Employed	79700033
153	Unemployed	79700033
18	Discouraged work-seeker	79700033
741	Other not economically active	79700033
0	Not applicable	79700033
24	Employed	79700034
213	Unemployed	79700034
27	Discouraged work-seeker	79700034
933	Other not economically active	79700034
0	Not applicable	79700034
45	Employed	79700035
204	Unemployed	79700035
12	Discouraged work-seeker	79700035
543	Other not economically active	79700035
0	Not applicable	79700035
66	Employed	79700036
66	Unemployed	79700036
6	Discouraged work-seeker	79700036
639	Other not economically active	79700036
0	Not applicable	79700036
66	Employed	79700037
36	Unemployed	79700037
9	Discouraged work-seeker	79700037
1005	Other not economically active	79700037
0	Not applicable	79700037
120	Employed	79700038
66	Unemployed	79700038
3	Discouraged work-seeker	79700038
1329	Other not economically active	79700038
0	Not applicable	79700038
87	Employed	79700039
78	Unemployed	79700039
30	Discouraged work-seeker	79700039
1128	Other not economically active	79700039
0	Not applicable	79700039
57	Employed	79700040
216	Unemployed	79700040
9	Discouraged work-seeker	79700040
1152	Other not economically active	79700040
0	Not applicable	79700040
57	Employed	79700041
207	Unemployed	79700041
30	Discouraged work-seeker	79700041
1788	Other not economically active	79700041
0	Not applicable	79700041
60	Employed	79700042
162	Unemployed	79700042
21	Discouraged work-seeker	79700042
1128	Other not economically active	79700042
0	Not applicable	79700042
75	Employed	79700043
90	Unemployed	79700043
18	Discouraged work-seeker	79700043
1215	Other not economically active	79700043
0	Not applicable	79700043
39	Employed	79700044
180	Unemployed	79700044
18	Discouraged work-seeker	79700044
1326	Other not economically active	79700044
0	Not applicable	79700044
78	Employed	79700045
180	Unemployed	79700045
18	Discouraged work-seeker	79700045
1212	Other not economically active	79700045
0	Not applicable	79700045
30	Employed	79700046
132	Unemployed	79700046
15	Discouraged work-seeker	79700046
1290	Other not economically active	79700046
0	Not applicable	79700046
24	Employed	79700047
198	Unemployed	79700047
18	Discouraged work-seeker	79700047
1209	Other not economically active	79700047
0	Not applicable	79700047
30	Employed	79700048
141	Unemployed	79700048
6	Discouraged work-seeker	79700048
930	Other not economically active	79700048
0	Not applicable	79700048
39	Employed	79700049
132	Unemployed	79700049
57	Discouraged work-seeker	79700049
918	Other not economically active	79700049
0	Not applicable	79700049
21	Employed	79700050
87	Unemployed	79700050
24	Discouraged work-seeker	79700050
1050	Other not economically active	79700050
0	Not applicable	79700050
57	Employed	79700051
186	Unemployed	79700051
18	Discouraged work-seeker	79700051
903	Other not economically active	79700051
0	Not applicable	79700051
42	Employed	79700052
126	Unemployed	79700052
18	Discouraged work-seeker	79700052
900	Other not economically active	79700052
0	Not applicable	79700052
57	Employed	79700053
168	Unemployed	79700053
60	Discouraged work-seeker	79700053
1524	Other not economically active	79700053
0	Not applicable	79700053
33	Employed	79700054
159	Unemployed	79700054
36	Discouraged work-seeker	79700054
948	Other not economically active	79700054
0	Not applicable	79700054
39	Employed	79700055
210	Unemployed	79700055
18	Discouraged work-seeker	79700055
1119	Other not economically active	79700055
0	Not applicable	79700055
27	Employed	79700056
135	Unemployed	79700056
3	Discouraged work-seeker	79700056
924	Other not economically active	79700056
0	Not applicable	79700056
48	Employed	79700057
174	Unemployed	79700057
9	Discouraged work-seeker	79700057
1293	Other not economically active	79700057
0	Not applicable	79700057
75	Employed	79700058
219	Unemployed	79700058
54	Discouraged work-seeker	79700058
1827	Other not economically active	79700058
0	Not applicable	79700058
33	Employed	79700059
102	Unemployed	79700059
36	Discouraged work-seeker	79700059
1347	Other not economically active	79700059
0	Not applicable	79700059
33	Employed	79700060
174	Unemployed	79700060
60	Discouraged work-seeker	79700060
1302	Other not economically active	79700060
0	Not applicable	79700060
57	Employed	79700061
189	Unemployed	79700061
45	Discouraged work-seeker	79700061
1800	Other not economically active	79700061
0	Not applicable	79700061
21	Employed	79700062
87	Unemployed	79700062
48	Discouraged work-seeker	79700062
1179	Other not economically active	79700062
0	Not applicable	79700062
39	Employed	79700063
216	Unemployed	79700063
39	Discouraged work-seeker	79700063
1551	Other not economically active	79700063
0	Not applicable	79700063
60	Employed	79700064
186	Unemployed	79700064
24	Discouraged work-seeker	79700064
1605	Other not economically active	79700064
0	Not applicable	79700064
72	Employed	79700065
201	Unemployed	79700065
57	Discouraged work-seeker	79700065
1932	Other not economically active	79700065
0	Not applicable	79700065
57	Employed	79700066
228	Unemployed	79700066
66	Discouraged work-seeker	79700066
2079	Other not economically active	79700066
0	Not applicable	79700066
54	Employed	79700067
147	Unemployed	79700067
33	Discouraged work-seeker	79700067
1608	Other not economically active	79700067
0	Not applicable	79700067
48	Employed	79700068
156	Unemployed	79700068
33	Discouraged work-seeker	79700068
1290	Other not economically active	79700068
0	Not applicable	79700068
48	Employed	79700069
66	Unemployed	79700069
30	Discouraged work-seeker	79700069
909	Other not economically active	79700069
0	Not applicable	79700069
48	Employed	79700070
108	Unemployed	79700070
39	Discouraged work-seeker	79700070
840	Other not economically active	79700070
0	Not applicable	79700070
63	Employed	79700071
216	Unemployed	79700071
24	Discouraged work-seeker	79700071
1302	Other not economically active	79700071
0	Not applicable	79700071
84	Employed	79700072
117	Unemployed	79700072
21	Discouraged work-seeker	79700072
1221	Other not economically active	79700072
0	Not applicable	79700072
81	Employed	79700073
126	Unemployed	79700073
6	Discouraged work-seeker	79700073
1263	Other not economically active	79700073
0	Not applicable	79700073
57	Employed	79700074
78	Unemployed	79700074
9	Discouraged work-seeker	79700074
927	Other not economically active	79700074
0	Not applicable	79700074
90	Employed	79700075
114	Unemployed	79700075
18	Discouraged work-seeker	79700075
1191	Other not economically active	79700075
0	Not applicable	79700075
99	Employed	79700076
99	Unemployed	79700076
18	Discouraged work-seeker	79700076
924	Other not economically active	79700076
0	Not applicable	79700076
36	Employed	79700077
159	Unemployed	79700077
18	Discouraged work-seeker	79700077
1431	Other not economically active	79700077
0	Not applicable	79700077
21	Employed	79700078
105	Unemployed	79700078
15	Discouraged work-seeker	79700078
885	Other not economically active	79700078
0	Not applicable	79700078
30	Employed	79700079
186	Unemployed	79700079
42	Discouraged work-seeker	79700079
1407	Other not economically active	79700079
0	Not applicable	79700079
33	Employed	79700080
129	Unemployed	79700080
12	Discouraged work-seeker	79700080
903	Other not economically active	79700080
0	Not applicable	79700080
60	Employed	79700081
306	Unemployed	79700081
42	Discouraged work-seeker	79700081
1878	Other not economically active	79700081
0	Not applicable	79700081
30	Employed	79700082
117	Unemployed	79700082
18	Discouraged work-seeker	79700082
1257	Other not economically active	79700082
0	Not applicable	79700082
42	Employed	79700083
99	Unemployed	79700083
21	Discouraged work-seeker	79700083
1164	Other not economically active	79700083
0	Not applicable	79700083
66	Employed	79700084
276	Unemployed	79700084
57	Discouraged work-seeker	79700084
1608	Other not economically active	79700084
0	Not applicable	79700084
33	Employed	79700085
159	Unemployed	79700085
48	Discouraged work-seeker	79700085
1368	Other not economically active	79700085
0	Not applicable	79700085
51	Employed	79700086
240	Unemployed	79700086
66	Discouraged work-seeker	79700086
1719	Other not economically active	79700086
0	Not applicable	79700086
30	Employed	79700087
198	Unemployed	79700087
27	Discouraged work-seeker	79700087
1419	Other not economically active	79700087
0	Not applicable	79700087
81	Employed	79700088
168	Unemployed	79700088
18	Discouraged work-seeker	79700088
1281	Other not economically active	79700088
0	Not applicable	79700088
57	Employed	79700089
228	Unemployed	79700089
27	Discouraged work-seeker	79700089
1149	Other not economically active	79700089
0	Not applicable	79700089
45	Employed	79700090
123	Unemployed	79700090
33	Discouraged work-seeker	79700090
726	Other not economically active	79700090
0	Not applicable	79700090
84	Employed	79700091
78	Unemployed	79700091
0	Discouraged work-seeker	79700091
1188	Other not economically active	79700091
0	Not applicable	79700091
114	Employed	79700092
72	Unemployed	79700092
9	Discouraged work-seeker	79700092
819	Other not economically active	79700092
0	Not applicable	79700092
30	Employed	79700093
108	Unemployed	79700093
18	Discouraged work-seeker	79700093
414	Other not economically active	79700093
0	Not applicable	79700093
75	Employed	79700094
54	Unemployed	79700094
3	Discouraged work-seeker	79700094
885	Other not economically active	79700094
0	Not applicable	79700094
24	Employed	79700095
198	Unemployed	79700095
15	Discouraged work-seeker	79700095
1026	Other not economically active	79700095
0	Not applicable	79700095
42	Employed	79700096
168	Unemployed	79700096
30	Discouraged work-seeker	79700096
1122	Other not economically active	79700096
0	Not applicable	79700096
126	Employed	79700097
135	Unemployed	79700097
21	Discouraged work-seeker	79700097
1215	Other not economically active	79700097
0	Not applicable	79700097
33	Employed	79700098
102	Unemployed	79700098
9	Discouraged work-seeker	79700098
900	Other not economically active	79700098
0	Not applicable	79700098
90	Employed	79700099
348	Unemployed	79700099
66	Discouraged work-seeker	79700099
1665	Other not economically active	79700099
0	Not applicable	79700099
111	Employed	79700100
93	Unemployed	79700100
15	Discouraged work-seeker	79700100
795	Other not economically active	79700100
0	Not applicable	79700100
36	Employed	79700101
228	Unemployed	79700101
36	Discouraged work-seeker	79700101
1857	Other not economically active	79700101
0	Not applicable	79700101
60	Employed	79800001
222	Unemployed	79800001
57	Discouraged work-seeker	79800001
2283	Other not economically active	79800001
0	Not applicable	79800001
51	Employed	79800002
162	Unemployed	79800002
48	Discouraged work-seeker	79800002
2043	Other not economically active	79800002
0	Not applicable	79800002
39	Employed	79800003
171	Unemployed	79800003
33	Discouraged work-seeker	79800003
1575	Other not economically active	79800003
0	Not applicable	79800003
48	Employed	79800004
228	Unemployed	79800004
81	Discouraged work-seeker	79800004
2061	Other not economically active	79800004
0	Not applicable	79800004
99	Employed	79800005
312	Unemployed	79800005
87	Discouraged work-seeker	79800005
2349	Other not economically active	79800005
0	Not applicable	79800005
54	Employed	79800006
231	Unemployed	79800006
63	Discouraged work-seeker	79800006
1716	Other not economically active	79800006
0	Not applicable	79800006
72	Employed	79800007
204	Unemployed	79800007
33	Discouraged work-seeker	79800007
1764	Other not economically active	79800007
0	Not applicable	79800007
93	Employed	79800008
192	Unemployed	79800008
51	Discouraged work-seeker	79800008
1341	Other not economically active	79800008
0	Not applicable	79800008
81	Employed	79800009
102	Unemployed	79800009
6	Discouraged work-seeker	79800009
1188	Other not economically active	79800009
0	Not applicable	79800009
63	Employed	79800010
135	Unemployed	79800010
27	Discouraged work-seeker	79800010
1275	Other not economically active	79800010
0	Not applicable	79800010
75	Employed	79800011
195	Unemployed	79800011
27	Discouraged work-seeker	79800011
1176	Other not economically active	79800011
0	Not applicable	79800011
51	Employed	79800012
138	Unemployed	79800012
24	Discouraged work-seeker	79800012
1005	Other not economically active	79800012
0	Not applicable	79800012
69	Employed	79800013
165	Unemployed	79800013
18	Discouraged work-seeker	79800013
1656	Other not economically active	79800013
0	Not applicable	79800013
33	Employed	79800014
93	Unemployed	79800014
6	Discouraged work-seeker	79800014
1440	Other not economically active	79800014
0	Not applicable	79800014
39	Employed	79800015
138	Unemployed	79800015
30	Discouraged work-seeker	79800015
1023	Other not economically active	79800015
0	Not applicable	79800015
24	Employed	79800016
108	Unemployed	79800016
12	Discouraged work-seeker	79800016
981	Other not economically active	79800016
0	Not applicable	79800016
66	Employed	79800017
324	Unemployed	79800017
27	Discouraged work-seeker	79800017
1632	Other not economically active	79800017
0	Not applicable	79800017
51	Employed	79800018
207	Unemployed	79800018
33	Discouraged work-seeker	79800018
1839	Other not economically active	79800018
0	Not applicable	79800018
39	Employed	79800019
177	Unemployed	79800019
39	Discouraged work-seeker	79800019
1074	Other not economically active	79800019
0	Not applicable	79800019
48	Employed	79800020
135	Unemployed	79800020
9	Discouraged work-seeker	79800020
1194	Other not economically active	79800020
0	Not applicable	79800020
51	Employed	79800021
114	Unemployed	79800021
3	Discouraged work-seeker	79800021
1101	Other not economically active	79800021
0	Not applicable	79800021
33	Employed	79800022
162	Unemployed	79800022
51	Discouraged work-seeker	79800022
1164	Other not economically active	79800022
0	Not applicable	79800022
117	Employed	79800023
39	Unemployed	79800023
36	Discouraged work-seeker	79800023
1068	Other not economically active	79800023
0	Not applicable	79800023
39	Employed	79800024
177	Unemployed	79800024
30	Discouraged work-seeker	79800024
1038	Other not economically active	79800024
0	Not applicable	79800024
33	Employed	79800025
132	Unemployed	79800025
27	Discouraged work-seeker	79800025
1431	Other not economically active	79800025
0	Not applicable	79800025
27	Employed	79800026
183	Unemployed	79800026
42	Discouraged work-seeker	79800026
795	Other not economically active	79800026
0	Not applicable	79800026
30	Employed	79800027
132	Unemployed	79800027
30	Discouraged work-seeker	79800027
918	Other not economically active	79800027
0	Not applicable	79800027
48	Employed	79800028
216	Unemployed	79800028
39	Discouraged work-seeker	79800028
924	Other not economically active	79800028
0	Not applicable	79800028
51	Employed	79800029
171	Unemployed	79800029
45	Discouraged work-seeker	79800029
1704	Other not economically active	79800029
0	Not applicable	79800029
45	Employed	79800030
195	Unemployed	79800030
51	Discouraged work-seeker	79800030
1059	Other not economically active	79800030
0	Not applicable	79800030
57	Employed	79800031
207	Unemployed	79800031
12	Discouraged work-seeker	79800031
786	Other not economically active	79800031
0	Not applicable	79800031
96	Employed	79800032
105	Unemployed	79800032
36	Discouraged work-seeker	79800032
990	Other not economically active	79800032
0	Not applicable	79800032
39	Employed	79800033
126	Unemployed	79800033
15	Discouraged work-seeker	79800033
1068	Other not economically active	79800033
0	Not applicable	79800033
39	Employed	79800034
123	Unemployed	79800034
24	Discouraged work-seeker	79800034
951	Other not economically active	79800034
0	Not applicable	79800034
18	Employed	79800035
135	Unemployed	79800035
9	Discouraged work-seeker	79800035
972	Other not economically active	79800035
0	Not applicable	79800035
21	Employed	79800036
123	Unemployed	79800036
42	Discouraged work-seeker	79800036
891	Other not economically active	79800036
0	Not applicable	79800036
51	Employed	79800037
171	Unemployed	79800037
48	Discouraged work-seeker	79800037
1053	Other not economically active	79800037
0	Not applicable	79800037
21	Employed	79800038
84	Unemployed	79800038
27	Discouraged work-seeker	79800038
708	Other not economically active	79800038
0	Not applicable	79800038
39	Employed	79800039
222	Unemployed	79800039
18	Discouraged work-seeker	79800039
981	Other not economically active	79800039
0	Not applicable	79800039
69	Employed	79800040
153	Unemployed	79800040
57	Discouraged work-seeker	79800040
804	Other not economically active	79800040
0	Not applicable	79800040
48	Employed	79800041
144	Unemployed	79800041
12	Discouraged work-seeker	79800041
906	Other not economically active	79800041
0	Not applicable	79800041
48	Employed	79800042
105	Unemployed	79800042
21	Discouraged work-seeker	79800042
837	Other not economically active	79800042
0	Not applicable	79800042
21	Employed	79800043
102	Unemployed	79800043
24	Discouraged work-seeker	79800043
960	Other not economically active	79800043
0	Not applicable	79800043
96	Employed	79800044
279	Unemployed	79800044
42	Discouraged work-seeker	79800044
1992	Other not economically active	79800044
0	Not applicable	79800044
63	Employed	79800045
120	Unemployed	79800045
15	Discouraged work-seeker	79800045
942	Other not economically active	79800045
0	Not applicable	79800045
39	Employed	79800046
81	Unemployed	79800046
24	Discouraged work-seeker	79800046
1074	Other not economically active	79800046
0	Not applicable	79800046
48	Employed	79800047
150	Unemployed	79800047
18	Discouraged work-seeker	79800047
1023	Other not economically active	79800047
0	Not applicable	79800047
42	Employed	79800048
129	Unemployed	79800048
12	Discouraged work-seeker	79800048
1332	Other not economically active	79800048
0	Not applicable	79800048
99	Employed	79800049
297	Unemployed	79800049
72	Discouraged work-seeker	79800049
1926	Other not economically active	79800049
0	Not applicable	79800049
27	Employed	79800050
153	Unemployed	79800050
57	Discouraged work-seeker	79800050
981	Other not economically active	79800050
0	Not applicable	79800050
30	Employed	79800051
129	Unemployed	79800051
42	Discouraged work-seeker	79800051
1125	Other not economically active	79800051
0	Not applicable	79800051
48	Employed	79800052
162	Unemployed	79800052
45	Discouraged work-seeker	79800052
1230	Other not economically active	79800052
0	Not applicable	79800052
138	Employed	79800053
282	Unemployed	79800053
39	Discouraged work-seeker	79800053
2598	Other not economically active	79800053
0	Not applicable	79800053
189	Employed	79800054
81	Unemployed	79800054
12	Discouraged work-seeker	79800054
1308	Other not economically active	79800054
0	Not applicable	79800054
90	Employed	79800055
114	Unemployed	79800055
27	Discouraged work-seeker	79800055
978	Other not economically active	79800055
0	Not applicable	79800055
114	Employed	79800056
150	Unemployed	79800056
12	Discouraged work-seeker	79800056
876	Other not economically active	79800056
0	Not applicable	79800056
102	Employed	79800057
156	Unemployed	79800057
27	Discouraged work-seeker	79800057
1152	Other not economically active	79800057
0	Not applicable	79800057
87	Employed	79800058
93	Unemployed	79800058
9	Discouraged work-seeker	79800058
981	Other not economically active	79800058
0	Not applicable	79800058
15	Employed	79800059
36	Unemployed	79800059
15	Discouraged work-seeker	79800059
129	Other not economically active	79800059
0	Not applicable	79800059
96	Employed	79800060
132	Unemployed	79800060
24	Discouraged work-seeker	79800060
816	Other not economically active	79800060
0	Not applicable	79800060
36	Employed	79800061
84	Unemployed	79800061
18	Discouraged work-seeker	79800061
261	Other not economically active	79800061
0	Not applicable	79800061
33	Employed	79800062
99	Unemployed	79800062
12	Discouraged work-seeker	79800062
483	Other not economically active	79800062
0	Not applicable	79800062
99	Employed	79800063
141	Unemployed	79800063
12	Discouraged work-seeker	79800063
531	Other not economically active	79800063
0	Not applicable	79800063
93	Employed	79800064
162	Unemployed	79800064
12	Discouraged work-seeker	79800064
732	Other not economically active	79800064
0	Not applicable	79800064
48	Employed	79800065
75	Unemployed	79800065
18	Discouraged work-seeker	79800065
402	Other not economically active	79800065
0	Not applicable	79800065
180	Employed	79800066
135	Unemployed	79800066
12	Discouraged work-seeker	79800066
1269	Other not economically active	79800066
0	Not applicable	79800066
51	Employed	79800067
60	Unemployed	79800067
21	Discouraged work-seeker	79800067
591	Other not economically active	79800067
0	Not applicable	79800067
48	Employed	79800068
207	Unemployed	79800068
18	Discouraged work-seeker	79800068
1110	Other not economically active	79800068
0	Not applicable	79800068
78	Employed	79800069
105	Unemployed	79800069
15	Discouraged work-seeker	79800069
951	Other not economically active	79800069
0	Not applicable	79800069
84	Employed	79800070
120	Unemployed	79800070
9	Discouraged work-seeker	79800070
945	Other not economically active	79800070
0	Not applicable	79800070
93	Employed	79800071
102	Unemployed	79800071
18	Discouraged work-seeker	79800071
1152	Other not economically active	79800071
0	Not applicable	79800071
69	Employed	79800072
21	Unemployed	79800072
3	Discouraged work-seeker	79800072
603	Other not economically active	79800072
0	Not applicable	79800072
75	Employed	79800073
42	Unemployed	79800073
18	Discouraged work-seeker	79800073
741	Other not economically active	79800073
0	Not applicable	79800073
90	Employed	79800074
33	Unemployed	79800074
0	Discouraged work-seeker	79800074
678	Other not economically active	79800074
0	Not applicable	79800074
54	Employed	79800075
111	Unemployed	79800075
27	Discouraged work-seeker	79800075
552	Other not economically active	79800075
0	Not applicable	79800075
45	Employed	79800076
120	Unemployed	79800076
12	Discouraged work-seeker	79800076
594	Other not economically active	79800076
0	Not applicable	79800076
126	Employed	79800077
288	Unemployed	79800077
54	Discouraged work-seeker	79800077
1515	Other not economically active	79800077
0	Not applicable	79800077
147	Employed	79800078
330	Unemployed	79800078
39	Discouraged work-seeker	79800078
1299	Other not economically active	79800078
0	Not applicable	79800078
102	Employed	79800079
267	Unemployed	79800079
69	Discouraged work-seeker	79800079
1197	Other not economically active	79800079
0	Not applicable	79800079
78	Employed	79800080
132	Unemployed	79800080
33	Discouraged work-seeker	79800080
663	Other not economically active	79800080
0	Not applicable	79800080
87	Employed	79800081
150	Unemployed	79800081
12	Discouraged work-seeker	79800081
885	Other not economically active	79800081
0	Not applicable	79800081
78	Employed	79800082
153	Unemployed	79800082
45	Discouraged work-seeker	79800082
1344	Other not economically active	79800082
0	Not applicable	79800082
114	Employed	79800083
66	Unemployed	79800083
3	Discouraged work-seeker	79800083
642	Other not economically active	79800083
0	Not applicable	79800083
123	Employed	79800084
75	Unemployed	79800084
6	Discouraged work-seeker	79800084
1116	Other not economically active	79800084
0	Not applicable	79800084
84	Employed	79800085
90	Unemployed	79800085
12	Discouraged work-seeker	79800085
660	Other not economically active	79800085
0	Not applicable	79800085
90	Employed	79800086
78	Unemployed	79800086
6	Discouraged work-seeker	79800086
1236	Other not economically active	79800086
0	Not applicable	79800086
63	Employed	79800087
15	Unemployed	79800087
0	Discouraged work-seeker	79800087
537	Other not economically active	79800087
0	Not applicable	79800087
90	Employed	79800088
24	Unemployed	79800088
3	Discouraged work-seeker	79800088
750	Other not economically active	79800088
0	Not applicable	79800088
78	Employed	79800089
33	Unemployed	79800089
0	Discouraged work-seeker	79800089
573	Other not economically active	79800089
0	Not applicable	79800089
75	Employed	79800090
24	Unemployed	79800090
0	Discouraged work-seeker	79800090
471	Other not economically active	79800090
0	Not applicable	79800090
69	Employed	79800091
54	Unemployed	79800091
6	Discouraged work-seeker	79800091
642	Other not economically active	79800091
0	Not applicable	79800091
150	Employed	79800092
246	Unemployed	79800092
30	Discouraged work-seeker	79800092
1401	Other not economically active	79800092
0	Not applicable	79800092
54	Employed	79800093
24	Unemployed	79800093
3	Discouraged work-seeker	79800093
462	Other not economically active	79800093
0	Not applicable	79800093
75	Employed	79800094
18	Unemployed	79800094
0	Discouraged work-seeker	79800094
516	Other not economically active	79800094
0	Not applicable	79800094
90	Employed	79800095
261	Unemployed	79800095
33	Discouraged work-seeker	79800095
672	Other not economically active	79800095
0	Not applicable	79800095
216	Employed	79800096
192	Unemployed	79800096
15	Discouraged work-seeker	79800096
1158	Other not economically active	79800096
0	Not applicable	79800096
168	Employed	79800097
81	Unemployed	79800097
3	Discouraged work-seeker	79800097
1122	Other not economically active	79800097
0	Not applicable	79800097
126	Employed	79800098
90	Unemployed	79800098
6	Discouraged work-seeker	79800098
729	Other not economically active	79800098
0	Not applicable	79800098
72	Employed	79800099
21	Unemployed	79800099
0	Discouraged work-seeker	79800099
609	Other not economically active	79800099
0	Not applicable	79800099
120	Employed	79800100
261	Unemployed	79800100
87	Discouraged work-seeker	79800100
1302	Other not economically active	79800100
0	Not applicable	79800100
87	Employed	79800101
57	Unemployed	79800101
3	Discouraged work-seeker	79800101
699	Other not economically active	79800101
0	Not applicable	79800101
78	Employed	79800102
45	Unemployed	79800102
0	Discouraged work-seeker	79800102
1005	Other not economically active	79800102
0	Not applicable	79800102
90	Employed	79800103
27	Unemployed	79800103
0	Discouraged work-seeker	79800103
816	Other not economically active	79800103
0	Not applicable	79800103
99	Employed	79800104
54	Unemployed	79800104
0	Discouraged work-seeker	79800104
720	Other not economically active	79800104
0	Not applicable	79800104
108	Employed	79800105
231	Unemployed	79800105
42	Discouraged work-seeker	79800105
1671	Other not economically active	79800105
0	Not applicable	79800105
84	Employed	79800106
66	Unemployed	79800106
6	Discouraged work-seeker	79800106
705	Other not economically active	79800106
0	Not applicable	79800106
30	Employed	79800107
126	Unemployed	79800107
12	Discouraged work-seeker	79800107
534	Other not economically active	79800107
0	Not applicable	79800107
102	Employed	79800108
171	Unemployed	79800108
24	Discouraged work-seeker	79800108
939	Other not economically active	79800108
0	Not applicable	79800108
51	Employed	79800109
69	Unemployed	79800109
12	Discouraged work-seeker	79800109
624	Other not economically active	79800109
0	Not applicable	79800109
105	Employed	79800110
282	Unemployed	79800110
54	Discouraged work-seeker	79800110
1536	Other not economically active	79800110
0	Not applicable	79800110
135	Employed	79800111
333	Unemployed	79800111
51	Discouraged work-seeker	79800111
1806	Other not economically active	79800111
0	Not applicable	79800111
90	Employed	79800112
60	Unemployed	79800112
0	Discouraged work-seeker	79800112
1092	Other not economically active	79800112
0	Not applicable	79800112
156	Employed	79800113
387	Unemployed	79800113
78	Discouraged work-seeker	79800113
1920	Other not economically active	79800113
0	Not applicable	79800113
126	Employed	79800114
156	Unemployed	79800114
24	Discouraged work-seeker	79800114
873	Other not economically active	79800114
0	Not applicable	79800114
120	Employed	79800115
63	Unemployed	79800115
3	Discouraged work-seeker	79800115
762	Other not economically active	79800115
0	Not applicable	79800115
33	Employed	79800116
108	Unemployed	79800116
3	Discouraged work-seeker	79800116
705	Other not economically active	79800116
0	Not applicable	79800116
72	Employed	79800117
21	Unemployed	79800117
0	Discouraged work-seeker	79800117
396	Other not economically active	79800117
0	Not applicable	79800117
93	Employed	79800118
99	Unemployed	79800118
18	Discouraged work-seeker	79800118
1053	Other not economically active	79800118
0	Not applicable	79800118
123	Employed	79800119
225	Unemployed	79800119
27	Discouraged work-seeker	79800119
1698	Other not economically active	79800119
0	Not applicable	79800119
90	Employed	79800120
267	Unemployed	79800120
39	Discouraged work-seeker	79800120
1620	Other not economically active	79800120
0	Not applicable	79800120
126	Employed	79800121
318	Unemployed	79800121
63	Discouraged work-seeker	79800121
2298	Other not economically active	79800121
0	Not applicable	79800121
102	Employed	79800122
255	Unemployed	79800122
33	Discouraged work-seeker	79800122
2268	Other not economically active	79800122
0	Not applicable	79800122
135	Employed	79800123
213	Unemployed	79800123
21	Discouraged work-seeker	79800123
765	Other not economically active	79800123
0	Not applicable	79800123
111	Employed	79800124
123	Unemployed	79800124
30	Discouraged work-seeker	79800124
1032	Other not economically active	79800124
0	Not applicable	79800124
90	Employed	79800125
105	Unemployed	79800125
15	Discouraged work-seeker	79800125
1227	Other not economically active	79800125
0	Not applicable	79800125
138	Employed	79800126
51	Unemployed	79800126
3	Discouraged work-seeker	79800126
690	Other not economically active	79800126
0	Not applicable	79800126
48	Employed	79800127
198	Unemployed	79800127
27	Discouraged work-seeker	79800127
558	Other not economically active	79800127
0	Not applicable	79800127
87	Employed	79800128
237	Unemployed	79800128
69	Discouraged work-seeker	79800128
2046	Other not economically active	79800128
0	Not applicable	79800128
39	Employed	79800129
219	Unemployed	79800129
27	Discouraged work-seeker	79800129
1566	Other not economically active	79800129
0	Not applicable	79800129
27	Employed	79800130
132	Unemployed	79800130
15	Discouraged work-seeker	79800130
879	Other not economically active	79800130
0	Not applicable	79800130
114	Employed	79900001
63	Unemployed	79900001
6	Discouraged work-seeker	79900001
852	Other not economically active	79900001
0	Not applicable	79900001
45	Employed	79900002
45	Unemployed	79900002
3	Discouraged work-seeker	79900002
699	Other not economically active	79900002
0	Not applicable	79900002
54	Employed	79900003
108	Unemployed	79900003
12	Discouraged work-seeker	79900003
1275	Other not economically active	79900003
0	Not applicable	79900003
81	Employed	79900004
87	Unemployed	79900004
3	Discouraged work-seeker	79900004
1368	Other not economically active	79900004
0	Not applicable	79900004
108	Employed	79900005
42	Unemployed	79900005
0	Discouraged work-seeker	79900005
774	Other not economically active	79900005
0	Not applicable	79900005
24	Employed	79900006
87	Unemployed	79900006
21	Discouraged work-seeker	79900006
558	Other not economically active	79900006
0	Not applicable	79900006
78	Employed	79900007
234	Unemployed	79900007
27	Discouraged work-seeker	79900007
1599	Other not economically active	79900007
0	Not applicable	79900007
39	Employed	79900008
198	Unemployed	79900008
21	Discouraged work-seeker	79900008
1476	Other not economically active	79900008
0	Not applicable	79900008
96	Employed	79900009
192	Unemployed	79900009
72	Discouraged work-seeker	79900009
1626	Other not economically active	79900009
0	Not applicable	79900009
45	Employed	79900010
207	Unemployed	79900010
30	Discouraged work-seeker	79900010
1179	Other not economically active	79900010
0	Not applicable	79900010
45	Employed	79900011
108	Unemployed	79900011
48	Discouraged work-seeker	79900011
1170	Other not economically active	79900011
0	Not applicable	79900011
39	Employed	79900012
132	Unemployed	79900012
63	Discouraged work-seeker	79900012
705	Other not economically active	79900012
0	Not applicable	79900012
33	Employed	79900013
150	Unemployed	79900013
63	Discouraged work-seeker	79900013
1299	Other not economically active	79900013
0	Not applicable	79900013
30	Employed	79900014
168	Unemployed	79900014
42	Discouraged work-seeker	79900014
1380	Other not economically active	79900014
0	Not applicable	79900014
36	Employed	79900015
69	Unemployed	79900015
6	Discouraged work-seeker	79900015
798	Other not economically active	79900015
0	Not applicable	79900015
18	Employed	79900016
96	Unemployed	79900016
12	Discouraged work-seeker	79900016
882	Other not economically active	79900016
0	Not applicable	79900016
87	Employed	79900017
225	Unemployed	79900017
24	Discouraged work-seeker	79900017
1476	Other not economically active	79900017
0	Not applicable	79900017
39	Employed	79900018
138	Unemployed	79900018
6	Discouraged work-seeker	79900018
837	Other not economically active	79900018
0	Not applicable	79900018
42	Employed	79900019
150	Unemployed	79900019
51	Discouraged work-seeker	79900019
1317	Other not economically active	79900019
0	Not applicable	79900019
39	Employed	79900020
108	Unemployed	79900020
15	Discouraged work-seeker	79900020
1146	Other not economically active	79900020
0	Not applicable	79900020
42	Employed	79900021
207	Unemployed	79900021
21	Discouraged work-seeker	79900021
1275	Other not economically active	79900021
0	Not applicable	79900021
63	Employed	79900022
177	Unemployed	79900022
33	Discouraged work-seeker	79900022
1551	Other not economically active	79900022
0	Not applicable	79900022
42	Employed	79900023
108	Unemployed	79900023
21	Discouraged work-seeker	79900023
723	Other not economically active	79900023
0	Not applicable	79900023
63	Employed	79900024
228	Unemployed	79900024
57	Discouraged work-seeker	79900024
2172	Other not economically active	79900024
0	Not applicable	79900024
30	Employed	79900025
129	Unemployed	79900025
18	Discouraged work-seeker	79900025
1218	Other not economically active	79900025
0	Not applicable	79900025
36	Employed	79900026
144	Unemployed	79900026
33	Discouraged work-seeker	79900026
1251	Other not economically active	79900026
0	Not applicable	79900026
24	Employed	79900027
132	Unemployed	79900027
27	Discouraged work-seeker	79900027
1428	Other not economically active	79900027
0	Not applicable	79900027
27	Employed	79900028
84	Unemployed	79900028
18	Discouraged work-seeker	79900028
585	Other not economically active	79900028
0	Not applicable	79900028
30	Employed	79900029
150	Unemployed	79900029
30	Discouraged work-seeker	79900029
1380	Other not economically active	79900029
0	Not applicable	79900029
39	Employed	79900030
225	Unemployed	79900030
27	Discouraged work-seeker	79900030
1545	Other not economically active	79900030
0	Not applicable	79900030
27	Employed	79900031
90	Unemployed	79900031
9	Discouraged work-seeker	79900031
822	Other not economically active	79900031
0	Not applicable	79900031
54	Employed	79900032
108	Unemployed	79900032
15	Discouraged work-seeker	79900032
1131	Other not economically active	79900032
0	Not applicable	79900032
6	Employed	79900033
72	Unemployed	79900033
9	Discouraged work-seeker	79900033
693	Other not economically active	79900033
0	Not applicable	79900033
27	Employed	79900034
120	Unemployed	79900034
6	Discouraged work-seeker	79900034
825	Other not economically active	79900034
0	Not applicable	79900034
18	Employed	79900035
84	Unemployed	79900035
12	Discouraged work-seeker	79900035
750	Other not economically active	79900035
0	Not applicable	79900035
54	Employed	79900036
102	Unemployed	79900036
21	Discouraged work-seeker	79900036
720	Other not economically active	79900036
0	Not applicable	79900036
69	Employed	79900037
219	Unemployed	79900037
69	Discouraged work-seeker	79900037
1701	Other not economically active	79900037
0	Not applicable	79900037
12	Employed	79900038
15	Unemployed	79900038
0	Discouraged work-seeker	79900038
171	Other not economically active	79900038
0	Not applicable	79900038
78	Employed	79900039
201	Unemployed	79900039
57	Discouraged work-seeker	79900039
1305	Other not economically active	79900039
0	Not applicable	79900039
123	Employed	79900040
294	Unemployed	79900040
81	Discouraged work-seeker	79900040
1845	Other not economically active	79900040
0	Not applicable	79900040
54	Employed	79900041
27	Unemployed	79900041
0	Discouraged work-seeker	79900041
615	Other not economically active	79900041
0	Not applicable	79900041
87	Employed	79900042
24	Unemployed	79900042
3	Discouraged work-seeker	79900042
627	Other not economically active	79900042
0	Not applicable	79900042
87	Employed	79900043
138	Unemployed	79900043
57	Discouraged work-seeker	79900043
936	Other not economically active	79900043
0	Not applicable	79900043
63	Employed	79900044
21	Unemployed	79900044
0	Discouraged work-seeker	79900044
465	Other not economically active	79900044
0	Not applicable	79900044
39	Employed	79900045
21	Unemployed	79900045
0	Discouraged work-seeker	79900045
357	Other not economically active	79900045
0	Not applicable	79900045
90	Employed	79900046
42	Unemployed	79900046
0	Discouraged work-seeker	79900046
738	Other not economically active	79900046
0	Not applicable	79900046
63	Employed	79900047
27	Unemployed	79900047
0	Discouraged work-seeker	79900047
543	Other not economically active	79900047
0	Not applicable	79900047
57	Employed	79900048
168	Unemployed	79900048
30	Discouraged work-seeker	79900048
1002	Other not economically active	79900048
0	Not applicable	79900048
78	Employed	79900049
117	Unemployed	79900049
36	Discouraged work-seeker	79900049
1719	Other not economically active	79900049
0	Not applicable	79900049
105	Employed	79900050
24	Unemployed	79900050
9	Discouraged work-seeker	79900050
624	Other not economically active	79900050
0	Not applicable	79900050
33	Employed	79900051
93	Unemployed	79900051
15	Discouraged work-seeker	79900051
717	Other not economically active	79900051
0	Not applicable	79900051
63	Employed	79900052
45	Unemployed	79900052
6	Discouraged work-seeker	79900052
699	Other not economically active	79900052
0	Not applicable	79900052
75	Employed	79900053
18	Unemployed	79900053
0	Discouraged work-seeker	79900053
708	Other not economically active	79900053
0	Not applicable	79900053
57	Employed	79900054
24	Unemployed	79900054
0	Discouraged work-seeker	79900054
729	Other not economically active	79900054
0	Not applicable	79900054
87	Employed	79900055
63	Unemployed	79900055
18	Discouraged work-seeker	79900055
945	Other not economically active	79900055
0	Not applicable	79900055
33	Employed	79900056
18	Unemployed	79900056
0	Discouraged work-seeker	79900056
582	Other not economically active	79900056
0	Not applicable	79900056
75	Employed	79900057
33	Unemployed	79900057
6	Discouraged work-seeker	79900057
648	Other not economically active	79900057
0	Not applicable	79900057
72	Employed	79900058
78	Unemployed	79900058
6	Discouraged work-seeker	79900058
756	Other not economically active	79900058
0	Not applicable	79900058
30	Employed	79900059
30	Unemployed	79900059
6	Discouraged work-seeker	79900059
435	Other not economically active	79900059
0	Not applicable	79900059
54	Employed	79900060
84	Unemployed	79900060
3	Discouraged work-seeker	79900060
519	Other not economically active	79900060
0	Not applicable	79900060
150	Employed	79900061
147	Unemployed	79900061
15	Discouraged work-seeker	79900061
1284	Other not economically active	79900061
0	Not applicable	79900061
18	Employed	79900062
81	Unemployed	79900062
3	Discouraged work-seeker	79900062
765	Other not economically active	79900062
0	Not applicable	79900062
39	Employed	79900063
60	Unemployed	79900063
9	Discouraged work-seeker	79900063
435	Other not economically active	79900063
0	Not applicable	79900063
204	Employed	79900064
57	Unemployed	79900064
0	Discouraged work-seeker	79900064
1113	Other not economically active	79900064
0	Not applicable	79900064
75	Employed	79900065
21	Unemployed	79900065
0	Discouraged work-seeker	79900065
651	Other not economically active	79900065
0	Not applicable	79900065
75	Employed	79900066
60	Unemployed	79900066
0	Discouraged work-seeker	79900066
741	Other not economically active	79900066
0	Not applicable	79900066
33	Employed	79900067
141	Unemployed	79900067
9	Discouraged work-seeker	79900067
519	Other not economically active	79900067
0	Not applicable	79900067
48	Employed	79900068
156	Unemployed	79900068
21	Discouraged work-seeker	79900068
1104	Other not economically active	79900068
0	Not applicable	79900068
90	Employed	79900069
36	Unemployed	79900069
9	Discouraged work-seeker	79900069
798	Other not economically active	79900069
0	Not applicable	79900069
99	Employed	79900070
48	Unemployed	79900070
3	Discouraged work-seeker	79900070
1077	Other not economically active	79900070
0	Not applicable	79900070
60	Employed	79900071
132	Unemployed	79900071
18	Discouraged work-seeker	79900071
873	Other not economically active	79900071
0	Not applicable	79900071
24	Employed	79900072
96	Unemployed	79900072
24	Discouraged work-seeker	79900072
702	Other not economically active	79900072
0	Not applicable	79900072
78	Employed	79900073
288	Unemployed	79900073
42	Discouraged work-seeker	79900073
1869	Other not economically active	79900073
0	Not applicable	79900073
27	Employed	79900074
147	Unemployed	79900074
51	Discouraged work-seeker	79900074
1107	Other not economically active	79900074
0	Not applicable	79900074
63	Employed	79900075
153	Unemployed	79900075
36	Discouraged work-seeker	79900075
1608	Other not economically active	79900075
0	Not applicable	79900075
42	Employed	79900076
141	Unemployed	79900076
30	Discouraged work-seeker	79900076
1137	Other not economically active	79900076
0	Not applicable	79900076
189	Employed	79900077
297	Unemployed	79900077
72	Discouraged work-seeker	79900077
1779	Other not economically active	79900077
0	Not applicable	79900077
36	Employed	79900078
18	Unemployed	79900078
0	Discouraged work-seeker	79900078
543	Other not economically active	79900078
0	Not applicable	79900078
99	Employed	79900079
45	Unemployed	79900079
6	Discouraged work-seeker	79900079
852	Other not economically active	79900079
0	Not applicable	79900079
36	Employed	79900080
39	Unemployed	79900080
0	Discouraged work-seeker	79900080
387	Other not economically active	79900080
0	Not applicable	79900080
12	Employed	79900081
27	Unemployed	79900081
0	Discouraged work-seeker	79900081
141	Other not economically active	79900081
0	Not applicable	79900081
54	Employed	79900082
24	Unemployed	79900082
0	Discouraged work-seeker	79900082
801	Other not economically active	79900082
0	Not applicable	79900082
45	Employed	79900083
12	Unemployed	79900083
0	Discouraged work-seeker	79900083
342	Other not economically active	79900083
0	Not applicable	79900083
57	Employed	79900084
57	Unemployed	79900084
6	Discouraged work-seeker	79900084
927	Other not economically active	79900084
0	Not applicable	79900084
75	Employed	79900085
27	Unemployed	79900085
3	Discouraged work-seeker	79900085
789	Other not economically active	79900085
0	Not applicable	79900085
84	Employed	79900086
258	Unemployed	79900086
48	Discouraged work-seeker	79900086
1524	Other not economically active	79900086
0	Not applicable	79900086
48	Employed	79900087
99	Unemployed	79900087
6	Discouraged work-seeker	79900087
927	Other not economically active	79900087
0	Not applicable	79900087
42	Employed	79900088
195	Unemployed	79900088
36	Discouraged work-seeker	79900088
1326	Other not economically active	79900088
0	Not applicable	79900088
45	Employed	79900089
192	Unemployed	79900089
108	Discouraged work-seeker	79900089
1218	Other not economically active	79900089
0	Not applicable	79900089
63	Employed	79900090
195	Unemployed	79900090
45	Discouraged work-seeker	79900090
1467	Other not economically active	79900090
0	Not applicable	79900090
153	Employed	79900091
63	Unemployed	79900091
6	Discouraged work-seeker	79900091
1035	Other not economically active	79900091
0	Not applicable	79900091
30	Employed	79900092
27	Unemployed	79900092
3	Discouraged work-seeker	79900092
543	Other not economically active	79900092
0	Not applicable	79900092
12	Employed	79900093
54	Unemployed	79900093
21	Discouraged work-seeker	79900093
615	Other not economically active	79900093
0	Not applicable	79900093
21	Employed	79900094
84	Unemployed	79900094
24	Discouraged work-seeker	79900094
978	Other not economically active	79900094
0	Not applicable	79900094
15	Employed	79900095
108	Unemployed	79900095
39	Discouraged work-seeker	79900095
1230	Other not economically active	79900095
0	Not applicable	79900095
96	Employed	79900096
126	Unemployed	79900096
27	Discouraged work-seeker	79900096
1008	Other not economically active	79900096
0	Not applicable	79900096
42	Employed	79900097
111	Unemployed	79900097
18	Discouraged work-seeker	79900097
669	Other not economically active	79900097
0	Not applicable	79900097
102	Employed	79900098
72	Unemployed	79900098
15	Discouraged work-seeker	79900098
867	Other not economically active	79900098
0	Not applicable	79900098
81	Employed	79900099
105	Unemployed	79900099
33	Discouraged work-seeker	79900099
1185	Other not economically active	79900099
0	Not applicable	79900099
45	Employed	79900100
129	Unemployed	79900100
24	Discouraged work-seeker	79900100
1170	Other not economically active	79900100
0	Not applicable	79900100
105	Employed	79900101
33	Unemployed	79900101
9	Discouraged work-seeker	79900101
852	Other not economically active	79900101
0	Not applicable	79900101
84	Employed	79900102
162	Unemployed	79900102
75	Discouraged work-seeker	79900102
1320	Other not economically active	79900102
0	Not applicable	79900102
18	Employed	79900103
141	Unemployed	79900103
12	Discouraged work-seeker	79900103
1386	Other not economically active	79900103
0	Not applicable	79900103
48	Employed	79900104
135	Unemployed	79900104
15	Discouraged work-seeker	79900104
1296	Other not economically active	79900104
0	Not applicable	79900104
72	Employed	79900105
114	Unemployed	79900105
21	Discouraged work-seeker	79900105
1200	Other not economically active	79900105
0	Not applicable	79900105
9	Employed	52103001
18	Unemployed	52103001
21	Discouraged work-seeker	52103001
558	Other not economically active	52103001
0	Not applicable	52103001
9	Employed	52103002
21	Unemployed	52103002
21	Discouraged work-seeker	52103002
657	Other not economically active	52103002
0	Not applicable	52103002
24	Employed	52103003
42	Unemployed	52103003
9	Discouraged work-seeker	52103003
750	Other not economically active	52103003
0	Not applicable	52103003
6	Employed	52103004
33	Unemployed	52103004
21	Discouraged work-seeker	52103004
762	Other not economically active	52103004
0	Not applicable	52103004
15	Employed	52103005
45	Unemployed	52103005
21	Discouraged work-seeker	52103005
666	Other not economically active	52103005
0	Not applicable	52103005
6	Employed	52103006
15	Unemployed	52103006
27	Discouraged work-seeker	52103006
414	Other not economically active	52103006
0	Not applicable	52103006
6	Employed	52103007
6	Unemployed	52103007
24	Discouraged work-seeker	52103007
474	Other not economically active	52103007
0	Not applicable	52103007
9	Employed	52103008
21	Unemployed	52103008
18	Discouraged work-seeker	52103008
597	Other not economically active	52103008
0	Not applicable	52103008
6	Employed	52103009
15	Unemployed	52103009
21	Discouraged work-seeker	52103009
435	Other not economically active	52103009
0	Not applicable	52103009
3	Employed	52103010
51	Unemployed	52103010
36	Discouraged work-seeker	52103010
771	Other not economically active	52103010
0	Not applicable	52103010
3	Employed	52103011
30	Unemployed	52103011
21	Discouraged work-seeker	52103011
729	Other not economically active	52103011
0	Not applicable	52103011
6	Employed	52103012
15	Unemployed	52103012
15	Discouraged work-seeker	52103012
486	Other not economically active	52103012
0	Not applicable	52103012
3	Employed	52103013
27	Unemployed	52103013
18	Discouraged work-seeker	52103013
579	Other not economically active	52103013
0	Not applicable	52103013
6	Employed	52103014
15	Unemployed	52103014
12	Discouraged work-seeker	52103014
600	Other not economically active	52103014
0	Not applicable	52103014
12	Employed	52103015
21	Unemployed	52103015
27	Discouraged work-seeker	52103015
657	Other not economically active	52103015
0	Not applicable	52103015
15	Employed	52103016
33	Unemployed	52103016
21	Discouraged work-seeker	52103016
630	Other not economically active	52103016
0	Not applicable	52103016
12	Employed	52103017
60	Unemployed	52103017
9	Discouraged work-seeker	52103017
501	Other not economically active	52103017
0	Not applicable	52103017
15	Employed	52103018
60	Unemployed	52103018
51	Discouraged work-seeker	52103018
852	Other not economically active	52103018
0	Not applicable	52103018
12	Employed	52103019
30	Unemployed	52103019
21	Discouraged work-seeker	52103019
627	Other not economically active	52103019
0	Not applicable	52103019
15	Employed	52104001
24	Unemployed	52104001
9	Discouraged work-seeker	52104001
816	Other not economically active	52104001
0	Not applicable	52104001
48	Employed	52104002
12	Unemployed	52104002
24	Discouraged work-seeker	52104002
789	Other not economically active	52104002
0	Not applicable	52104002
33	Employed	52104003
30	Unemployed	52104003
18	Discouraged work-seeker	52104003
573	Other not economically active	52104003
0	Not applicable	52104003
12	Employed	52104004
39	Unemployed	52104004
33	Discouraged work-seeker	52104004
618	Other not economically active	52104004
0	Not applicable	52104004
42	Employed	52104005
42	Unemployed	52104005
21	Discouraged work-seeker	52104005
765	Other not economically active	52104005
0	Not applicable	52104005
51	Employed	52104006
21	Unemployed	52104006
21	Discouraged work-seeker	52104006
546	Other not economically active	52104006
0	Not applicable	52104006
15	Employed	52104007
39	Unemployed	52104007
18	Discouraged work-seeker	52104007
714	Other not economically active	52104007
0	Not applicable	52104007
15	Employed	52104008
42	Unemployed	52104008
18	Discouraged work-seeker	52104008
729	Other not economically active	52104008
0	Not applicable	52104008
9	Employed	52104009
24	Unemployed	52104009
27	Discouraged work-seeker	52104009
810	Other not economically active	52104009
0	Not applicable	52104009
18	Employed	52104010
33	Unemployed	52104010
18	Discouraged work-seeker	52104010
828	Other not economically active	52104010
0	Not applicable	52104010
12	Employed	52105001
15	Unemployed	52105001
21	Discouraged work-seeker	52105001
483	Other not economically active	52105001
0	Not applicable	52105001
9	Employed	52105002
39	Unemployed	52105002
21	Discouraged work-seeker	52105002
405	Other not economically active	52105002
0	Not applicable	52105002
12	Employed	52105003
36	Unemployed	52105003
12	Discouraged work-seeker	52105003
807	Other not economically active	52105003
0	Not applicable	52105003
15	Employed	52105004
42	Unemployed	52105004
12	Discouraged work-seeker	52105004
762	Other not economically active	52105004
0	Not applicable	52105004
15	Employed	52105005
18	Unemployed	52105005
33	Discouraged work-seeker	52105005
759	Other not economically active	52105005
0	Not applicable	52105005
3	Employed	52105006
18	Unemployed	52105006
36	Discouraged work-seeker	52105006
585	Other not economically active	52105006
0	Not applicable	52105006
24	Employed	52106001
0	Unemployed	52106001
6	Discouraged work-seeker	52106001
264	Other not economically active	52106001
0	Not applicable	52106001
27	Employed	52106002
9	Unemployed	52106002
9	Discouraged work-seeker	52106002
282	Other not economically active	52106002
0	Not applicable	52106002
33	Employed	52106003
24	Unemployed	52106003
18	Discouraged work-seeker	52106003
258	Other not economically active	52106003
0	Not applicable	52106003
6	Employed	52106004
45	Unemployed	52106004
9	Discouraged work-seeker	52106004
573	Other not economically active	52106004
0	Not applicable	52106004
12	Employed	52106005
27	Unemployed	52106005
33	Discouraged work-seeker	52106005
663	Other not economically active	52106005
0	Not applicable	52106005
45	Employed	52106006
24	Unemployed	52106006
3	Discouraged work-seeker	52106006
483	Other not economically active	52106006
0	Not applicable	52106006
9	Employed	52106007
27	Unemployed	52106007
12	Discouraged work-seeker	52106007
576	Other not economically active	52106007
0	Not applicable	52106007
12	Employed	52106008
12	Unemployed	52106008
15	Discouraged work-seeker	52106008
624	Other not economically active	52106008
0	Not applicable	52106008
24	Employed	52106009
105	Unemployed	52106009
21	Discouraged work-seeker	52106009
723	Other not economically active	52106009
0	Not applicable	52106009
18	Employed	52106010
75	Unemployed	52106010
6	Discouraged work-seeker	52106010
672	Other not economically active	52106010
0	Not applicable	52106010
6	Employed	52106011
33	Unemployed	52106011
21	Discouraged work-seeker	52106011
600	Other not economically active	52106011
0	Not applicable	52106011
36	Employed	52106012
42	Unemployed	52106012
21	Discouraged work-seeker	52106012
402	Other not economically active	52106012
0	Not applicable	52106012
27	Employed	52106013
18	Unemployed	52106013
6	Discouraged work-seeker	52106013
222	Other not economically active	52106013
0	Not applicable	52106013
6	Employed	52106014
39	Unemployed	52106014
9	Discouraged work-seeker	52106014
567	Other not economically active	52106014
0	Not applicable	52106014
21	Employed	52106015
33	Unemployed	52106015
9	Discouraged work-seeker	52106015
297	Other not economically active	52106015
0	Not applicable	52106015
24	Employed	52106016
12	Unemployed	52106016
15	Discouraged work-seeker	52106016
255	Other not economically active	52106016
0	Not applicable	52106016
15	Employed	52106017
33	Unemployed	52106017
3	Discouraged work-seeker	52106017
396	Other not economically active	52106017
0	Not applicable	52106017
24	Employed	52106018
9	Unemployed	52106018
3	Discouraged work-seeker	52106018
408	Other not economically active	52106018
0	Not applicable	52106018
15	Employed	52106019
6	Unemployed	52106019
0	Discouraged work-seeker	52106019
141	Other not economically active	52106019
0	Not applicable	52106019
27	Employed	52106020
54	Unemployed	52106020
21	Discouraged work-seeker	52106020
648	Other not economically active	52106020
0	Not applicable	52106020
15	Employed	52106021
27	Unemployed	52106021
9	Discouraged work-seeker	52106021
420	Other not economically active	52106021
0	Not applicable	52106021
12	Employed	52106022
60	Unemployed	52106022
21	Discouraged work-seeker	52106022
468	Other not economically active	52106022
0	Not applicable	52106022
15	Employed	52106023
18	Unemployed	52106023
9	Discouraged work-seeker	52106023
330	Other not economically active	52106023
0	Not applicable	52106023
24	Employed	52106024
39	Unemployed	52106024
21	Discouraged work-seeker	52106024
645	Other not economically active	52106024
0	Not applicable	52106024
12	Employed	52106025
36	Unemployed	52106025
9	Discouraged work-seeker	52106025
552	Other not economically active	52106025
0	Not applicable	52106025
15	Employed	52106026
99	Unemployed	52106026
15	Discouraged work-seeker	52106026
795	Other not economically active	52106026
0	Not applicable	52106026
15	Employed	52106027
36	Unemployed	52106027
27	Discouraged work-seeker	52106027
669	Other not economically active	52106027
0	Not applicable	52106027
9	Employed	52106028
21	Unemployed	52106028
18	Discouraged work-seeker	52106028
435	Other not economically active	52106028
0	Not applicable	52106028
15	Employed	52106029
15	Unemployed	52106029
12	Discouraged work-seeker	52106029
750	Other not economically active	52106029
0	Not applicable	52106029
9	Employed	52101001
12	Unemployed	52101001
27	Discouraged work-seeker	52101001
456	Other not economically active	52101001
0	Not applicable	52101001
6	Employed	52101002
54	Unemployed	52101002
21	Discouraged work-seeker	52101002
414	Other not economically active	52101002
0	Not applicable	52101002
6	Employed	52101003
21	Unemployed	52101003
24	Discouraged work-seeker	52101003
375	Other not economically active	52101003
0	Not applicable	52101003
9	Employed	52101004
81	Unemployed	52101004
12	Discouraged work-seeker	52101004
510	Other not economically active	52101004
0	Not applicable	52101004
9	Employed	52101005
45	Unemployed	52101005
33	Discouraged work-seeker	52101005
858	Other not economically active	52101005
0	Not applicable	52101005
12	Employed	52101006
21	Unemployed	52101006
42	Discouraged work-seeker	52101006
705	Other not economically active	52101006
0	Not applicable	52101006
9	Employed	52101007
24	Unemployed	52101007
27	Discouraged work-seeker	52101007
402	Other not economically active	52101007
0	Not applicable	52101007
6	Employed	52101008
18	Unemployed	52101008
24	Discouraged work-seeker	52101008
543	Other not economically active	52101008
0	Not applicable	52101008
54	Employed	52101009
30	Unemployed	52101009
12	Discouraged work-seeker	52101009
558	Other not economically active	52101009
0	Not applicable	52101009
12	Employed	52101010
45	Unemployed	52101010
24	Discouraged work-seeker	52101010
426	Other not economically active	52101010
0	Not applicable	52101010
9	Employed	52102001
27	Unemployed	52102001
21	Discouraged work-seeker	52102001
435	Other not economically active	52102001
0	Not applicable	52102001
12	Employed	52102002
66	Unemployed	52102002
36	Discouraged work-seeker	52102002
630	Other not economically active	52102002
0	Not applicable	52102002
30	Employed	52102003
60	Unemployed	52102003
3	Discouraged work-seeker	52102003
399	Other not economically active	52102003
0	Not applicable	52102003
12	Employed	52102004
21	Unemployed	52102004
9	Discouraged work-seeker	52102004
369	Other not economically active	52102004
0	Not applicable	52102004
24	Employed	52102005
9	Unemployed	52102005
9	Discouraged work-seeker	52102005
210	Other not economically active	52102005
0	Not applicable	52102005
9	Employed	52102006
27	Unemployed	52102006
6	Discouraged work-seeker	52102006
207	Other not economically active	52102006
0	Not applicable	52102006
18	Employed	52102007
54	Unemployed	52102007
15	Discouraged work-seeker	52102007
339	Other not economically active	52102007
0	Not applicable	52102007
18	Employed	52102008
30	Unemployed	52102008
15	Discouraged work-seeker	52102008
540	Other not economically active	52102008
0	Not applicable	52102008
12	Employed	52102009
75	Unemployed	52102009
18	Discouraged work-seeker	52102009
366	Other not economically active	52102009
0	Not applicable	52102009
12	Employed	52102010
18	Unemployed	52102010
6	Discouraged work-seeker	52102010
297	Other not economically active	52102010
0	Not applicable	52102010
66	Employed	52201001
60	Unemployed	52201001
15	Discouraged work-seeker	52201001
519	Other not economically active	52201001
0	Not applicable	52201001
48	Employed	52201002
9	Unemployed	52201002
9	Discouraged work-seeker	52201002
270	Other not economically active	52201002
0	Not applicable	52201002
21	Employed	52201003
51	Unemployed	52201003
21	Discouraged work-seeker	52201003
732	Other not economically active	52201003
0	Not applicable	52201003
78	Employed	52201004
36	Unemployed	52201004
9	Discouraged work-seeker	52201004
615	Other not economically active	52201004
0	Not applicable	52201004
15	Employed	52201005
30	Unemployed	52201005
18	Discouraged work-seeker	52201005
849	Other not economically active	52201005
0	Not applicable	52201005
9	Employed	52201006
30	Unemployed	52201006
33	Discouraged work-seeker	52201006
564	Other not economically active	52201006
0	Not applicable	52201006
39	Employed	52201007
15	Unemployed	52201007
12	Discouraged work-seeker	52201007
246	Other not economically active	52201007
0	Not applicable	52201007
15	Employed	52201008
30	Unemployed	52201008
9	Discouraged work-seeker	52201008
525	Other not economically active	52201008
0	Not applicable	52201008
39	Employed	52201009
57	Unemployed	52201009
36	Discouraged work-seeker	52201009
429	Other not economically active	52201009
0	Not applicable	52201009
15	Employed	52201010
21	Unemployed	52201010
6	Discouraged work-seeker	52201010
471	Other not economically active	52201010
0	Not applicable	52201010
3	Employed	52201011
27	Unemployed	52201011
15	Discouraged work-seeker	52201011
528	Other not economically active	52201011
0	Not applicable	52201011
27	Employed	52201012
39	Unemployed	52201012
9	Discouraged work-seeker	52201012
495	Other not economically active	52201012
0	Not applicable	52201012
6	Employed	52201013
21	Unemployed	52201013
3	Discouraged work-seeker	52201013
399	Other not economically active	52201013
0	Not applicable	52201013
21	Employed	52202001
57	Unemployed	52202001
24	Discouraged work-seeker	52202001
222	Other not economically active	52202001
0	Not applicable	52202001
3	Employed	52202002
3	Unemployed	52202002
6	Discouraged work-seeker	52202002
24	Other not economically active	52202002
0	Not applicable	52202002
24	Employed	52202003
3	Unemployed	52202003
0	Discouraged work-seeker	52202003
549	Other not economically active	52202003
0	Not applicable	52202003
39	Employed	52202004
63	Unemployed	52202004
15	Discouraged work-seeker	52202004
297	Other not economically active	52202004
0	Not applicable	52202004
24	Employed	52202005
12	Unemployed	52202005
9	Discouraged work-seeker	52202005
165	Other not economically active	52202005
0	Not applicable	52202005
15	Employed	52202006
12	Unemployed	52202006
0	Discouraged work-seeker	52202006
627	Other not economically active	52202006
0	Not applicable	52202006
33	Employed	52202007
18	Unemployed	52202007
0	Discouraged work-seeker	52202007
435	Other not economically active	52202007
0	Not applicable	52202007
18	Employed	52202008
99	Unemployed	52202008
27	Discouraged work-seeker	52202008
741	Other not economically active	52202008
0	Not applicable	52202008
36	Employed	52202009
66	Unemployed	52202009
12	Discouraged work-seeker	52202009
471	Other not economically active	52202009
0	Not applicable	52202009
3	Employed	52202010
45	Unemployed	52202010
6	Discouraged work-seeker	52202010
267	Other not economically active	52202010
0	Not applicable	52202010
6	Employed	52202011
45	Unemployed	52202011
3	Discouraged work-seeker	52202011
408	Other not economically active	52202011
0	Not applicable	52202011
15	Employed	52202012
60	Unemployed	52202012
3	Discouraged work-seeker	52202012
477	Other not economically active	52202012
0	Not applicable	52202012
27	Employed	52203001
42	Unemployed	52203001
27	Discouraged work-seeker	52203001
609	Other not economically active	52203001
0	Not applicable	52203001
39	Employed	52203002
24	Unemployed	52203002
12	Discouraged work-seeker	52203002
297	Other not economically active	52203002
0	Not applicable	52203002
24	Employed	52203003
42	Unemployed	52203003
9	Discouraged work-seeker	52203003
399	Other not economically active	52203003
0	Not applicable	52203003
33	Employed	52203004
39	Unemployed	52203004
51	Discouraged work-seeker	52203004
642	Other not economically active	52203004
0	Not applicable	52203004
9	Employed	52204001
18	Unemployed	52204001
18	Discouraged work-seeker	52204001
549	Other not economically active	52204001
0	Not applicable	52204001
6	Employed	52204002
30	Unemployed	52204002
21	Discouraged work-seeker	52204002
783	Other not economically active	52204002
0	Not applicable	52204002
3	Employed	52204003
9	Unemployed	52204003
15	Discouraged work-seeker	52204003
576	Other not economically active	52204003
0	Not applicable	52204003
6	Employed	52204004
12	Unemployed	52204004
9	Discouraged work-seeker	52204004
489	Other not economically active	52204004
0	Not applicable	52204004
21	Employed	52205001
138	Unemployed	52205001
30	Discouraged work-seeker	52205001
1053	Other not economically active	52205001
0	Not applicable	52205001
30	Employed	52205002
147	Unemployed	52205002
27	Discouraged work-seeker	52205002
1032	Other not economically active	52205002
0	Not applicable	52205002
30	Employed	52205003
120	Unemployed	52205003
21	Discouraged work-seeker	52205003
972	Other not economically active	52205003
0	Not applicable	52205003
15	Employed	52205004
249	Unemployed	52205004
21	Discouraged work-seeker	52205004
711	Other not economically active	52205004
0	Not applicable	52205004
18	Employed	52205005
105	Unemployed	52205005
27	Discouraged work-seeker	52205005
1008	Other not economically active	52205005
0	Not applicable	52205005
30	Employed	52205006
123	Unemployed	52205006
45	Discouraged work-seeker	52205006
1095	Other not economically active	52205006
0	Not applicable	52205006
9	Employed	52205007
102	Unemployed	52205007
48	Discouraged work-seeker	52205007
1134	Other not economically active	52205007
0	Not applicable	52205007
21	Employed	52205008
72	Unemployed	52205008
36	Discouraged work-seeker	52205008
918	Other not economically active	52205008
0	Not applicable	52205008
9	Employed	52205009
102	Unemployed	52205009
36	Discouraged work-seeker	52205009
852	Other not economically active	52205009
0	Not applicable	52205009
24	Employed	52205010
102	Unemployed	52205010
51	Discouraged work-seeker	52205010
711	Other not economically active	52205010
0	Not applicable	52205010
15	Employed	52205011
198	Unemployed	52205011
42	Discouraged work-seeker	52205011
1074	Other not economically active	52205011
0	Not applicable	52205011
9	Employed	52205012
42	Unemployed	52205012
9	Discouraged work-seeker	52205012
597	Other not economically active	52205012
0	Not applicable	52205012
33	Employed	52205013
144	Unemployed	52205013
39	Discouraged work-seeker	52205013
1128	Other not economically active	52205013
0	Not applicable	52205013
21	Employed	52205014
72	Unemployed	52205014
27	Discouraged work-seeker	52205014
918	Other not economically active	52205014
0	Not applicable	52205014
24	Employed	52205015
87	Unemployed	52205015
39	Discouraged work-seeker	52205015
1026	Other not economically active	52205015
0	Not applicable	52205015
24	Employed	52205016
189	Unemployed	52205016
66	Discouraged work-seeker	52205016
987	Other not economically active	52205016
0	Not applicable	52205016
33	Employed	52205017
111	Unemployed	52205017
9	Discouraged work-seeker	52205017
1191	Other not economically active	52205017
0	Not applicable	52205017
36	Employed	52205018
90	Unemployed	52205018
45	Discouraged work-seeker	52205018
951	Other not economically active	52205018
0	Not applicable	52205018
12	Employed	52205019
117	Unemployed	52205019
6	Discouraged work-seeker	52205019
831	Other not economically active	52205019
0	Not applicable	52205019
24	Employed	52205020
120	Unemployed	52205020
6	Discouraged work-seeker	52205020
720	Other not economically active	52205020
0	Not applicable	52205020
18	Employed	52205021
66	Unemployed	52205021
18	Discouraged work-seeker	52205021
462	Other not economically active	52205021
0	Not applicable	52205021
24	Employed	52205022
69	Unemployed	52205022
36	Discouraged work-seeker	52205022
693	Other not economically active	52205022
0	Not applicable	52205022
21	Employed	52205023
114	Unemployed	52205023
15	Discouraged work-seeker	52205023
729	Other not economically active	52205023
0	Not applicable	52205023
33	Employed	52205024
87	Unemployed	52205024
6	Discouraged work-seeker	52205024
867	Other not economically active	52205024
0	Not applicable	52205024
42	Employed	52205025
36	Unemployed	52205025
0	Discouraged work-seeker	52205025
552	Other not economically active	52205025
0	Not applicable	52205025
54	Employed	52205026
30	Unemployed	52205026
12	Discouraged work-seeker	52205026
756	Other not economically active	52205026
0	Not applicable	52205026
30	Employed	52205027
24	Unemployed	52205027
3	Discouraged work-seeker	52205027
636	Other not economically active	52205027
0	Not applicable	52205027
33	Employed	52205028
39	Unemployed	52205028
9	Discouraged work-seeker	52205028
1056	Other not economically active	52205028
0	Not applicable	52205028
39	Employed	52205029
132	Unemployed	52205029
27	Discouraged work-seeker	52205029
822	Other not economically active	52205029
0	Not applicable	52205029
51	Employed	52205030
48	Unemployed	52205030
33	Discouraged work-seeker	52205030
876	Other not economically active	52205030
0	Not applicable	52205030
24	Employed	52205031
30	Unemployed	52205031
15	Discouraged work-seeker	52205031
540	Other not economically active	52205031
0	Not applicable	52205031
39	Employed	52205032
66	Unemployed	52205032
33	Discouraged work-seeker	52205032
792	Other not economically active	52205032
0	Not applicable	52205032
27	Employed	52205033
33	Unemployed	52205033
3	Discouraged work-seeker	52205033
474	Other not economically active	52205033
0	Not applicable	52205033
39	Employed	52205034
105	Unemployed	52205034
24	Discouraged work-seeker	52205034
1065	Other not economically active	52205034
0	Not applicable	52205034
24	Employed	52205035
42	Unemployed	52205035
18	Discouraged work-seeker	52205035
708	Other not economically active	52205035
0	Not applicable	52205035
45	Employed	52205036
24	Unemployed	52205036
6	Discouraged work-seeker	52205036
630	Other not economically active	52205036
0	Not applicable	52205036
42	Employed	52205037
54	Unemployed	52205037
6	Discouraged work-seeker	52205037
624	Other not economically active	52205037
0	Not applicable	52205037
9	Employed	52206001
63	Unemployed	52206001
21	Discouraged work-seeker	52206001
720	Other not economically active	52206001
0	Not applicable	52206001
12	Employed	52206002
57	Unemployed	52206002
15	Discouraged work-seeker	52206002
693	Other not economically active	52206002
0	Not applicable	52206002
12	Employed	52206003
39	Unemployed	52206003
18	Discouraged work-seeker	52206003
384	Other not economically active	52206003
0	Not applicable	52206003
45	Employed	52206004
21	Unemployed	52206004
9	Discouraged work-seeker	52206004
303	Other not economically active	52206004
0	Not applicable	52206004
9	Employed	52206005
48	Unemployed	52206005
30	Discouraged work-seeker	52206005
507	Other not economically active	52206005
0	Not applicable	52206005
39	Employed	52206006
21	Unemployed	52206006
9	Discouraged work-seeker	52206006
390	Other not economically active	52206006
0	Not applicable	52206006
15	Employed	52206007
15	Unemployed	52206007
21	Discouraged work-seeker	52206007
558	Other not economically active	52206007
0	Not applicable	52206007
12	Employed	52207001
21	Unemployed	52207001
18	Discouraged work-seeker	52207001
300	Other not economically active	52207001
0	Not applicable	52207001
21	Employed	52207002
30	Unemployed	52207002
21	Discouraged work-seeker	52207002
561	Other not economically active	52207002
0	Not applicable	52207002
90	Employed	52207003
30	Unemployed	52207003
30	Discouraged work-seeker	52207003
639	Other not economically active	52207003
0	Not applicable	52207003
24	Employed	52207004
6	Unemployed	52207004
6	Discouraged work-seeker	52207004
99	Other not economically active	52207004
0	Not applicable	52207004
12	Employed	52207005
6	Unemployed	52207005
63	Discouraged work-seeker	52207005
588	Other not economically active	52207005
0	Not applicable	52207005
18	Employed	52207006
42	Unemployed	52207006
21	Discouraged work-seeker	52207006
642	Other not economically active	52207006
0	Not applicable	52207006
12	Employed	52207007
126	Unemployed	52207007
30	Discouraged work-seeker	52207007
645	Other not economically active	52207007
0	Not applicable	52207007
9	Employed	52302001
51	Unemployed	52302001
9	Discouraged work-seeker	52302001
519	Other not economically active	52302001
0	Not applicable	52302001
6	Employed	52302002
24	Unemployed	52302002
9	Discouraged work-seeker	52302002
423	Other not economically active	52302002
0	Not applicable	52302002
30	Employed	52302003
45	Unemployed	52302003
39	Discouraged work-seeker	52302003
531	Other not economically active	52302003
0	Not applicable	52302003
6	Employed	52302004
45	Unemployed	52302004
6	Discouraged work-seeker	52302004
345	Other not economically active	52302004
0	Not applicable	52302004
9	Employed	52302005
39	Unemployed	52302005
18	Discouraged work-seeker	52302005
528	Other not economically active	52302005
0	Not applicable	52302005
6	Employed	52302006
33	Unemployed	52302006
15	Discouraged work-seeker	52302006
474	Other not economically active	52302006
0	Not applicable	52302006
15	Employed	52302007
51	Unemployed	52302007
18	Discouraged work-seeker	52302007
615	Other not economically active	52302007
0	Not applicable	52302007
9	Employed	52302008
15	Unemployed	52302008
3	Discouraged work-seeker	52302008
408	Other not economically active	52302008
0	Not applicable	52302008
15	Employed	52302009
60	Unemployed	52302009
9	Discouraged work-seeker	52302009
519	Other not economically active	52302009
0	Not applicable	52302009
18	Employed	52302010
39	Unemployed	52302010
15	Discouraged work-seeker	52302010
273	Other not economically active	52302010
0	Not applicable	52302010
21	Employed	52302011
9	Unemployed	52302011
6	Discouraged work-seeker	52302011
330	Other not economically active	52302011
0	Not applicable	52302011
9	Employed	52302012
6	Unemployed	52302012
3	Discouraged work-seeker	52302012
237	Other not economically active	52302012
0	Not applicable	52302012
15	Employed	52302013
90	Unemployed	52302013
36	Discouraged work-seeker	52302013
777	Other not economically active	52302013
0	Not applicable	52302013
9	Employed	52302014
39	Unemployed	52302014
30	Discouraged work-seeker	52302014
771	Other not economically active	52302014
0	Not applicable	52302014
9	Employed	52302015
21	Unemployed	52302015
27	Discouraged work-seeker	52302015
513	Other not economically active	52302015
0	Not applicable	52302015
15	Employed	52302016
39	Unemployed	52302016
12	Discouraged work-seeker	52302016
444	Other not economically active	52302016
0	Not applicable	52302016
21	Employed	52302017
15	Unemployed	52302017
18	Discouraged work-seeker	52302017
579	Other not economically active	52302017
0	Not applicable	52302017
6	Employed	52302018
57	Unemployed	52302018
12	Discouraged work-seeker	52302018
552	Other not economically active	52302018
0	Not applicable	52302018
15	Employed	52302019
42	Unemployed	52302019
15	Discouraged work-seeker	52302019
531	Other not economically active	52302019
0	Not applicable	52302019
27	Employed	52302020
57	Unemployed	52302020
12	Discouraged work-seeker	52302020
555	Other not economically active	52302020
0	Not applicable	52302020
12	Employed	52302021
45	Unemployed	52302021
9	Discouraged work-seeker	52302021
432	Other not economically active	52302021
0	Not applicable	52302021
24	Employed	52302022
21	Unemployed	52302022
12	Discouraged work-seeker	52302022
516	Other not economically active	52302022
0	Not applicable	52302022
6	Employed	52302023
21	Unemployed	52302023
27	Discouraged work-seeker	52302023
528	Other not economically active	52302023
0	Not applicable	52302023
12	Employed	52302024
6	Unemployed	52302024
6	Discouraged work-seeker	52302024
537	Other not economically active	52302024
0	Not applicable	52302024
15	Employed	52302025
42	Unemployed	52302025
21	Discouraged work-seeker	52302025
474	Other not economically active	52302025
0	Not applicable	52302025
6	Employed	52302026
51	Unemployed	52302026
21	Discouraged work-seeker	52302026
243	Other not economically active	52302026
0	Not applicable	52302026
24	Employed	52302027
78	Unemployed	52302027
21	Discouraged work-seeker	52302027
900	Other not economically active	52302027
0	Not applicable	52302027
12	Employed	52303001
15	Unemployed	52303001
69	Discouraged work-seeker	52303001
831	Other not economically active	52303001
0	Not applicable	52303001
9	Employed	52303002
21	Unemployed	52303002
15	Discouraged work-seeker	52303002
984	Other not economically active	52303002
0	Not applicable	52303002
15	Employed	52303003
30	Unemployed	52303003
9	Discouraged work-seeker	52303003
753	Other not economically active	52303003
0	Not applicable	52303003
9	Employed	52303004
21	Unemployed	52303004
21	Discouraged work-seeker	52303004
903	Other not economically active	52303004
0	Not applicable	52303004
6	Employed	52303005
33	Unemployed	52303005
9	Discouraged work-seeker	52303005
561	Other not economically active	52303005
0	Not applicable	52303005
3	Employed	52303006
27	Unemployed	52303006
21	Discouraged work-seeker	52303006
777	Other not economically active	52303006
0	Not applicable	52303006
12	Employed	52303007
27	Unemployed	52303007
48	Discouraged work-seeker	52303007
837	Other not economically active	52303007
0	Not applicable	52303007
15	Employed	52303008
21	Unemployed	52303008
45	Discouraged work-seeker	52303008
897	Other not economically active	52303008
0	Not applicable	52303008
21	Employed	52303009
15	Unemployed	52303009
93	Discouraged work-seeker	52303009
765	Other not economically active	52303009
0	Not applicable	52303009
15	Employed	52303010
90	Unemployed	52303010
42	Discouraged work-seeker	52303010
582	Other not economically active	52303010
0	Not applicable	52303010
6	Employed	52304001
45	Unemployed	52304001
12	Discouraged work-seeker	52304001
549	Other not economically active	52304001
0	Not applicable	52304001
3	Employed	52304002
27	Unemployed	52304002
57	Discouraged work-seeker	52304002
522	Other not economically active	52304002
0	Not applicable	52304002
36	Employed	52304003
30	Unemployed	52304003
12	Discouraged work-seeker	52304003
522	Other not economically active	52304003
0	Not applicable	52304003
21	Employed	52304004
15	Unemployed	52304004
3	Discouraged work-seeker	52304004
366	Other not economically active	52304004
0	Not applicable	52304004
9	Employed	52304005
15	Unemployed	52304005
108	Discouraged work-seeker	52304005
555	Other not economically active	52304005
0	Not applicable	52304005
12	Employed	52304006
27	Unemployed	52304006
6	Discouraged work-seeker	52304006
459	Other not economically active	52304006
0	Not applicable	52304006
3	Employed	52304007
51	Unemployed	52304007
69	Discouraged work-seeker	52304007
555	Other not economically active	52304007
0	Not applicable	52304007
18	Employed	52304008
54	Unemployed	52304008
36	Discouraged work-seeker	52304008
687	Other not economically active	52304008
0	Not applicable	52304008
6	Employed	52304009
42	Unemployed	52304009
6	Discouraged work-seeker	52304009
537	Other not economically active	52304009
0	Not applicable	52304009
15	Employed	52305001
42	Unemployed	52305001
21	Discouraged work-seeker	52305001
492	Other not economically active	52305001
0	Not applicable	52305001
12	Employed	52305002
42	Unemployed	52305002
60	Discouraged work-seeker	52305002
681	Other not economically active	52305002
0	Not applicable	52305002
6	Employed	52305003
24	Unemployed	52305003
30	Discouraged work-seeker	52305003
714	Other not economically active	52305003
0	Not applicable	52305003
21	Employed	52305004
36	Unemployed	52305004
24	Discouraged work-seeker	52305004
702	Other not economically active	52305004
0	Not applicable	52305004
9	Employed	52305005
45	Unemployed	52305005
39	Discouraged work-seeker	52305005
624	Other not economically active	52305005
0	Not applicable	52305005
12	Employed	52305006
30	Unemployed	52305006
24	Discouraged work-seeker	52305006
699	Other not economically active	52305006
0	Not applicable	52305006
6	Employed	52305007
36	Unemployed	52305007
6	Discouraged work-seeker	52305007
657	Other not economically active	52305007
0	Not applicable	52305007
15	Employed	52305008
36	Unemployed	52305008
27	Discouraged work-seeker	52305008
708	Other not economically active	52305008
0	Not applicable	52305008
9	Employed	52305009
72	Unemployed	52305009
33	Discouraged work-seeker	52305009
690	Other not economically active	52305009
0	Not applicable	52305009
9	Employed	52305010
15	Unemployed	52305010
15	Discouraged work-seeker	52305010
609	Other not economically active	52305010
0	Not applicable	52305010
3	Employed	52305011
87	Unemployed	52305011
21	Discouraged work-seeker	52305011
654	Other not economically active	52305011
0	Not applicable	52305011
15	Employed	52305012
18	Unemployed	52305012
42	Discouraged work-seeker	52305012
594	Other not economically active	52305012
0	Not applicable	52305012
12	Employed	52305013
24	Unemployed	52305013
36	Discouraged work-seeker	52305013
501	Other not economically active	52305013
0	Not applicable	52305013
24	Employed	52305014
33	Unemployed	52305014
30	Discouraged work-seeker	52305014
537	Other not economically active	52305014
0	Not applicable	52305014
69	Employed	52306001
33	Unemployed	52306001
12	Discouraged work-seeker	52306001
522	Other not economically active	52306001
0	Not applicable	52306001
9	Employed	52306002
27	Unemployed	52306002
9	Discouraged work-seeker	52306002
513	Other not economically active	52306002
0	Not applicable	52306002
12	Employed	52306003
72	Unemployed	52306003
12	Discouraged work-seeker	52306003
516	Other not economically active	52306003
0	Not applicable	52306003
15	Employed	52306004
72	Unemployed	52306004
9	Discouraged work-seeker	52306004
675	Other not economically active	52306004
0	Not applicable	52306004
12	Employed	52306005
27	Unemployed	52306005
18	Discouraged work-seeker	52306005
423	Other not economically active	52306005
0	Not applicable	52306005
9	Employed	52306006
27	Unemployed	52306006
24	Discouraged work-seeker	52306006
588	Other not economically active	52306006
0	Not applicable	52306006
9	Employed	52306007
48	Unemployed	52306007
18	Discouraged work-seeker	52306007
501	Other not economically active	52306007
0	Not applicable	52306007
15	Employed	52306008
39	Unemployed	52306008
54	Discouraged work-seeker	52306008
657	Other not economically active	52306008
0	Not applicable	52306008
18	Employed	52306009
27	Unemployed	52306009
9	Discouraged work-seeker	52306009
774	Other not economically active	52306009
0	Not applicable	52306009
12	Employed	52306010
60	Unemployed	52306010
21	Discouraged work-seeker	52306010
834	Other not economically active	52306010
0	Not applicable	52306010
12	Employed	52306011
12	Unemployed	52306011
9	Discouraged work-seeker	52306011
591	Other not economically active	52306011
0	Not applicable	52306011
12	Employed	52306012
27	Unemployed	52306012
27	Discouraged work-seeker	52306012
498	Other not economically active	52306012
0	Not applicable	52306012
9	Employed	52306013
48	Unemployed	52306013
12	Discouraged work-seeker	52306013
627	Other not economically active	52306013
0	Not applicable	52306013
3	Employed	52701001
57	Unemployed	52701001
6	Discouraged work-seeker	52701001
297	Other not economically active	52701001
0	Not applicable	52701001
12	Employed	52701002
36	Unemployed	52701002
24	Discouraged work-seeker	52701002
489	Other not economically active	52701002
0	Not applicable	52701002
33	Employed	52701003
45	Unemployed	52701003
30	Discouraged work-seeker	52701003
759	Other not economically active	52701003
0	Not applicable	52701003
3	Employed	52701004
33	Unemployed	52701004
15	Discouraged work-seeker	52701004
921	Other not economically active	52701004
0	Not applicable	52701004
15	Employed	52701005
42	Unemployed	52701005
18	Discouraged work-seeker	52701005
573	Other not economically active	52701005
0	Not applicable	52701005
18	Employed	52701006
54	Unemployed	52701006
90	Discouraged work-seeker	52701006
990	Other not economically active	52701006
0	Not applicable	52701006
15	Employed	52701007
30	Unemployed	52701007
24	Discouraged work-seeker	52701007
669	Other not economically active	52701007
0	Not applicable	52701007
15	Employed	52701008
33	Unemployed	52701008
36	Discouraged work-seeker	52701008
654	Other not economically active	52701008
0	Not applicable	52701008
9	Employed	52701009
24	Unemployed	52701009
45	Discouraged work-seeker	52701009
867	Other not economically active	52701009
0	Not applicable	52701009
12	Employed	52701010
27	Unemployed	52701010
9	Discouraged work-seeker	52701010
582	Other not economically active	52701010
0	Not applicable	52701010
9	Employed	52701011
24	Unemployed	52701011
12	Discouraged work-seeker	52701011
798	Other not economically active	52701011
0	Not applicable	52701011
9	Employed	52701012
27	Unemployed	52701012
6	Discouraged work-seeker	52701012
588	Other not economically active	52701012
0	Not applicable	52701012
15	Employed	52701013
36	Unemployed	52701013
63	Discouraged work-seeker	52701013
621	Other not economically active	52701013
0	Not applicable	52701013
39	Employed	52701014
12	Unemployed	52701014
63	Discouraged work-seeker	52701014
555	Other not economically active	52701014
0	Not applicable	52701014
18	Employed	52701015
51	Unemployed	52701015
12	Discouraged work-seeker	52701015
786	Other not economically active	52701015
0	Not applicable	52701015
30	Employed	52701016
12	Unemployed	52701016
21	Discouraged work-seeker	52701016
612	Other not economically active	52701016
0	Not applicable	52701016
12	Employed	52701017
45	Unemployed	52701017
6	Discouraged work-seeker	52701017
657	Other not economically active	52701017
0	Not applicable	52701017
66	Employed	52702001
45	Unemployed	52702001
24	Discouraged work-seeker	52702001
450	Other not economically active	52702001
0	Not applicable	52702001
15	Employed	52702002
54	Unemployed	52702002
24	Discouraged work-seeker	52702002
501	Other not economically active	52702002
0	Not applicable	52702002
30	Employed	52702003
39	Unemployed	52702003
33	Discouraged work-seeker	52702003
702	Other not economically active	52702003
0	Not applicable	52702003
12	Employed	52702004
27	Unemployed	52702004
39	Discouraged work-seeker	52702004
618	Other not economically active	52702004
0	Not applicable	52702004
24	Employed	52702005
60	Unemployed	52702005
36	Discouraged work-seeker	52702005
1089	Other not economically active	52702005
0	Not applicable	52702005
30	Employed	52702006
39	Unemployed	52702006
9	Discouraged work-seeker	52702006
531	Other not economically active	52702006
0	Not applicable	52702006
27	Employed	52702007
48	Unemployed	52702007
24	Discouraged work-seeker	52702007
543	Other not economically active	52702007
0	Not applicable	52702007
30	Employed	52702008
39	Unemployed	52702008
9	Discouraged work-seeker	52702008
654	Other not economically active	52702008
0	Not applicable	52702008
9	Employed	52702009
45	Unemployed	52702009
21	Discouraged work-seeker	52702009
765	Other not economically active	52702009
0	Not applicable	52702009
21	Employed	52702010
18	Unemployed	52702010
120	Discouraged work-seeker	52702010
789	Other not economically active	52702010
0	Not applicable	52702010
36	Employed	52702011
18	Unemployed	52702011
18	Discouraged work-seeker	52702011
672	Other not economically active	52702011
0	Not applicable	52702011
21	Employed	52702012
18	Unemployed	52702012
45	Discouraged work-seeker	52702012
825	Other not economically active	52702012
0	Not applicable	52702012
6	Employed	52702013
33	Unemployed	52702013
45	Discouraged work-seeker	52702013
849	Other not economically active	52702013
0	Not applicable	52702013
39	Employed	52702014
33	Unemployed	52702014
75	Discouraged work-seeker	52702014
819	Other not economically active	52702014
0	Not applicable	52702014
15	Employed	52702015
33	Unemployed	52702015
15	Discouraged work-seeker	52702015
615	Other not economically active	52702015
0	Not applicable	52702015
15	Employed	52702016
21	Unemployed	52702016
9	Discouraged work-seeker	52702016
804	Other not economically active	52702016
0	Not applicable	52702016
21	Employed	52702017
21	Unemployed	52702017
21	Discouraged work-seeker	52702017
900	Other not economically active	52702017
0	Not applicable	52702017
54	Employed	52702018
36	Unemployed	52702018
36	Discouraged work-seeker	52702018
510	Other not economically active	52702018
0	Not applicable	52702018
12	Employed	52702019
42	Unemployed	52702019
24	Discouraged work-seeker	52702019
672	Other not economically active	52702019
0	Not applicable	52702019
9	Employed	52702020
78	Unemployed	52702020
12	Discouraged work-seeker	52702020
360	Other not economically active	52702020
0	Not applicable	52702020
18	Employed	52703001
51	Unemployed	52703001
24	Discouraged work-seeker	52703001
843	Other not economically active	52703001
0	Not applicable	52703001
42	Employed	52703002
51	Unemployed	52703002
12	Discouraged work-seeker	52703002
492	Other not economically active	52703002
0	Not applicable	52703002
18	Employed	52703003
15	Unemployed	52703003
6	Discouraged work-seeker	52703003
132	Other not economically active	52703003
0	Not applicable	52703003
18	Employed	52703004
48	Unemployed	52703004
27	Discouraged work-seeker	52703004
906	Other not economically active	52703004
0	Not applicable	52703004
6	Employed	52704001
60	Unemployed	52704001
21	Discouraged work-seeker	52704001
477	Other not economically active	52704001
0	Not applicable	52704001
15	Employed	52704002
24	Unemployed	52704002
6	Discouraged work-seeker	52704002
327	Other not economically active	52704002
0	Not applicable	52704002
27	Employed	52704003
42	Unemployed	52704003
24	Discouraged work-seeker	52704003
921	Other not economically active	52704003
0	Not applicable	52704003
18	Employed	52704004
42	Unemployed	52704004
24	Discouraged work-seeker	52704004
957	Other not economically active	52704004
0	Not applicable	52704004
9	Employed	52704005
54	Unemployed	52704005
15	Discouraged work-seeker	52704005
585	Other not economically active	52704005
0	Not applicable	52704005
9	Employed	52704006
138	Unemployed	52704006
18	Discouraged work-seeker	52704006
579	Other not economically active	52704006
0	Not applicable	52704006
21	Employed	52704007
36	Unemployed	52704007
60	Discouraged work-seeker	52704007
624	Other not economically active	52704007
0	Not applicable	52704007
18	Employed	52704008
84	Unemployed	52704008
66	Discouraged work-seeker	52704008
942	Other not economically active	52704008
0	Not applicable	52704008
6	Employed	52705001
15	Unemployed	52705001
3	Discouraged work-seeker	52705001
396	Other not economically active	52705001
0	Not applicable	52705001
36	Employed	52705002
78	Unemployed	52705002
15	Discouraged work-seeker	52705002
921	Other not economically active	52705002
0	Not applicable	52705002
48	Employed	52705003
87	Unemployed	52705003
42	Discouraged work-seeker	52705003
1125	Other not economically active	52705003
0	Not applicable	52705003
30	Employed	52705004
24	Unemployed	52705004
0	Discouraged work-seeker	52705004
294	Other not economically active	52705004
0	Not applicable	52705004
15	Employed	52705005
0	Unemployed	52705005
0	Discouraged work-seeker	52705005
138	Other not economically active	52705005
0	Not applicable	52705005
114	Employed	52705006
72	Unemployed	52705006
30	Discouraged work-seeker	52705006
888	Other not economically active	52705006
0	Not applicable	52705006
15	Employed	52705007
27	Unemployed	52705007
15	Discouraged work-seeker	52705007
618	Other not economically active	52705007
0	Not applicable	52705007
15	Employed	52705008
51	Unemployed	52705008
27	Discouraged work-seeker	52705008
729	Other not economically active	52705008
0	Not applicable	52705008
3	Employed	52705009
15	Unemployed	52705009
9	Discouraged work-seeker	52705009
531	Other not economically active	52705009
0	Not applicable	52705009
18	Employed	52705010
21	Unemployed	52705010
24	Discouraged work-seeker	52705010
696	Other not economically active	52705010
0	Not applicable	52705010
15	Employed	52705011
18	Unemployed	52705011
18	Discouraged work-seeker	52705011
594	Other not economically active	52705011
0	Not applicable	52705011
9	Employed	52705012
54	Unemployed	52705012
18	Discouraged work-seeker	52705012
654	Other not economically active	52705012
0	Not applicable	52705012
9	Employed	52705013
21	Unemployed	52705013
0	Discouraged work-seeker	52705013
366	Other not economically active	52705013
0	Not applicable	52705013
9	Employed	52705014
21	Unemployed	52705014
6	Discouraged work-seeker	52705014
582	Other not economically active	52705014
0	Not applicable	52705014
18	Employed	52705015
39	Unemployed	52705015
3	Discouraged work-seeker	52705015
510	Other not economically active	52705015
0	Not applicable	52705015
12	Employed	52705016
129	Unemployed	52705016
24	Discouraged work-seeker	52705016
810	Other not economically active	52705016
0	Not applicable	52705016
21	Employed	52705017
39	Unemployed	52705017
15	Discouraged work-seeker	52705017
549	Other not economically active	52705017
0	Not applicable	52705017
15	Employed	52705018
30	Unemployed	52705018
21	Discouraged work-seeker	52705018
984	Other not economically active	52705018
0	Not applicable	52705018
15	Employed	52705019
9	Unemployed	52705019
12	Discouraged work-seeker	52705019
708	Other not economically active	52705019
0	Not applicable	52705019
30	Employed	52802001
66	Unemployed	52802001
3	Discouraged work-seeker	52802001
507	Other not economically active	52802001
0	Not applicable	52802001
24	Employed	52802002
21	Unemployed	52802002
0	Discouraged work-seeker	52802002
345	Other not economically active	52802002
0	Not applicable	52802002
42	Employed	52802003
21	Unemployed	52802003
12	Discouraged work-seeker	52802003
360	Other not economically active	52802003
0	Not applicable	52802003
27	Employed	52802004
27	Unemployed	52802004
33	Discouraged work-seeker	52802004
645	Other not economically active	52802004
0	Not applicable	52802004
42	Employed	52802005
102	Unemployed	52802005
21	Discouraged work-seeker	52802005
768	Other not economically active	52802005
0	Not applicable	52802005
42	Employed	52802006
87	Unemployed	52802006
9	Discouraged work-seeker	52802006
603	Other not economically active	52802006
0	Not applicable	52802006
9	Employed	52802007
21	Unemployed	52802007
9	Discouraged work-seeker	52802007
234	Other not economically active	52802007
0	Not applicable	52802007
3	Employed	52802008
21	Unemployed	52802008
3	Discouraged work-seeker	52802008
252	Other not economically active	52802008
0	Not applicable	52802008
42	Employed	52802009
27	Unemployed	52802009
24	Discouraged work-seeker	52802009
648	Other not economically active	52802009
0	Not applicable	52802009
12	Employed	52802010
24	Unemployed	52802010
15	Discouraged work-seeker	52802010
744	Other not economically active	52802010
0	Not applicable	52802010
18	Employed	52802011
69	Unemployed	52802011
36	Discouraged work-seeker	52802011
561	Other not economically active	52802011
0	Not applicable	52802011
9	Employed	52802012
27	Unemployed	52802012
21	Discouraged work-seeker	52802012
507	Other not economically active	52802012
0	Not applicable	52802012
21	Employed	52802013
75	Unemployed	52802013
30	Discouraged work-seeker	52802013
1053	Other not economically active	52802013
0	Not applicable	52802013
24	Employed	52802014
72	Unemployed	52802014
24	Discouraged work-seeker	52802014
708	Other not economically active	52802014
0	Not applicable	52802014
27	Employed	52802015
60	Unemployed	52802015
15	Discouraged work-seeker	52802015
726	Other not economically active	52802015
0	Not applicable	52802015
21	Employed	52802016
15	Unemployed	52802016
24	Discouraged work-seeker	52802016
465	Other not economically active	52802016
0	Not applicable	52802016
27	Employed	52802017
69	Unemployed	52802017
3	Discouraged work-seeker	52802017
558	Other not economically active	52802017
0	Not applicable	52802017
51	Employed	52802018
96	Unemployed	52802018
57	Discouraged work-seeker	52802018
840	Other not economically active	52802018
0	Not applicable	52802018
15	Employed	52802019
165	Unemployed	52802019
21	Discouraged work-seeker	52802019
582	Other not economically active	52802019
0	Not applicable	52802019
18	Employed	52802020
39	Unemployed	52802020
3	Discouraged work-seeker	52802020
465	Other not economically active	52802020
0	Not applicable	52802020
6	Employed	52802021
12	Unemployed	52802021
6	Discouraged work-seeker	52802021
438	Other not economically active	52802021
0	Not applicable	52802021
9	Employed	52802022
108	Unemployed	52802022
3	Discouraged work-seeker	52802022
489	Other not economically active	52802022
0	Not applicable	52802022
21	Employed	52802023
15	Unemployed	52802023
3	Discouraged work-seeker	52802023
432	Other not economically active	52802023
0	Not applicable	52802023
24	Employed	52802024
123	Unemployed	52802024
6	Discouraged work-seeker	52802024
807	Other not economically active	52802024
0	Not applicable	52802024
12	Employed	52802025
111	Unemployed	52802025
21	Discouraged work-seeker	52802025
831	Other not economically active	52802025
0	Not applicable	52802025
27	Employed	52802026
57	Unemployed	52802026
6	Discouraged work-seeker	52802026
582	Other not economically active	52802026
0	Not applicable	52802026
15	Employed	52802027
39	Unemployed	52802027
6	Discouraged work-seeker	52802027
543	Other not economically active	52802027
0	Not applicable	52802027
6	Employed	52802028
18	Unemployed	52802028
3	Discouraged work-seeker	52802028
327	Other not economically active	52802028
0	Not applicable	52802028
27	Employed	52802029
66	Unemployed	52802029
9	Discouraged work-seeker	52802029
993	Other not economically active	52802029
0	Not applicable	52802029
9	Employed	52802030
30	Unemployed	52802030
3	Discouraged work-seeker	52802030
672	Other not economically active	52802030
0	Not applicable	52802030
39	Employed	52806001
36	Unemployed	52806001
36	Discouraged work-seeker	52806001
717	Other not economically active	52806001
0	Not applicable	52806001
9	Employed	52806002
24	Unemployed	52806002
15	Discouraged work-seeker	52806002
564	Other not economically active	52806002
0	Not applicable	52806002
6	Employed	52806003
45	Unemployed	52806003
9	Discouraged work-seeker	52806003
609	Other not economically active	52806003
0	Not applicable	52806003
3	Employed	52806004
21	Unemployed	52806004
24	Discouraged work-seeker	52806004
519	Other not economically active	52806004
0	Not applicable	52806004
9	Employed	52806005
3	Unemployed	52806005
9	Discouraged work-seeker	52806005
603	Other not economically active	52806005
0	Not applicable	52806005
12	Employed	52806006
12	Unemployed	52806006
69	Discouraged work-seeker	52806006
828	Other not economically active	52806006
0	Not applicable	52806006
18	Employed	52806007
18	Unemployed	52806007
27	Discouraged work-seeker	52806007
684	Other not economically active	52806007
0	Not applicable	52806007
3	Employed	52806008
9	Unemployed	52806008
39	Discouraged work-seeker	52806008
558	Other not economically active	52806008
0	Not applicable	52806008
6	Employed	52806009
9	Unemployed	52806009
15	Discouraged work-seeker	52806009
657	Other not economically active	52806009
0	Not applicable	52806009
15	Employed	52806010
30	Unemployed	52806010
60	Discouraged work-seeker	52806010
663	Other not economically active	52806010
0	Not applicable	52806010
9	Employed	52806011
9	Unemployed	52806011
21	Discouraged work-seeker	52806011
510	Other not economically active	52806011
0	Not applicable	52806011
15	Employed	52806012
21	Unemployed	52806012
48	Discouraged work-seeker	52806012
657	Other not economically active	52806012
0	Not applicable	52806012
18	Employed	52806013
12	Unemployed	52806013
27	Discouraged work-seeker	52806013
858	Other not economically active	52806013
0	Not applicable	52806013
12	Employed	52806014
30	Unemployed	52806014
51	Discouraged work-seeker	52806014
621	Other not economically active	52806014
0	Not applicable	52806014
6	Employed	52801001
21	Unemployed	52801001
24	Discouraged work-seeker	52801001
354	Other not economically active	52801001
0	Not applicable	52801001
6	Employed	52801002
12	Unemployed	52801002
3	Discouraged work-seeker	52801002
171	Other not economically active	52801002
0	Not applicable	52801002
12	Employed	52801003
51	Unemployed	52801003
18	Discouraged work-seeker	52801003
486	Other not economically active	52801003
0	Not applicable	52801003
21	Employed	52801004
33	Unemployed	52801004
24	Discouraged work-seeker	52801004
630	Other not economically active	52801004
0	Not applicable	52801004
9	Employed	52801005
57	Unemployed	52801005
36	Discouraged work-seeker	52801005
396	Other not economically active	52801005
0	Not applicable	52801005
21	Employed	52801006
96	Unemployed	52801006
3	Discouraged work-seeker	52801006
333	Other not economically active	52801006
0	Not applicable	52801006
6	Employed	52801007
21	Unemployed	52801007
9	Discouraged work-seeker	52801007
387	Other not economically active	52801007
0	Not applicable	52801007
15	Employed	52801008
54	Unemployed	52801008
36	Discouraged work-seeker	52801008
726	Other not economically active	52801008
0	Not applicable	52801008
12	Employed	52801009
132	Unemployed	52801009
9	Discouraged work-seeker	52801009
654	Other not economically active	52801009
0	Not applicable	52801009
18	Employed	52801010
51	Unemployed	52801010
9	Discouraged work-seeker	52801010
537	Other not economically active	52801010
0	Not applicable	52801010
18	Employed	52801011
27	Unemployed	52801011
21	Discouraged work-seeker	52801011
567	Other not economically active	52801011
0	Not applicable	52801011
12	Employed	52801012
45	Unemployed	52801012
6	Discouraged work-seeker	52801012
624	Other not economically active	52801012
0	Not applicable	52801012
15	Employed	52801013
21	Unemployed	52801013
6	Discouraged work-seeker	52801013
585	Other not economically active	52801013
0	Not applicable	52801013
6	Employed	52801014
57	Unemployed	52801014
36	Discouraged work-seeker	52801014
501	Other not economically active	52801014
0	Not applicable	52801014
21	Employed	52801015
15	Unemployed	52801015
15	Discouraged work-seeker	52801015
777	Other not economically active	52801015
0	Not applicable	52801015
9	Employed	52803001
30	Unemployed	52803001
6	Discouraged work-seeker	52803001
510	Other not economically active	52803001
0	Not applicable	52803001
15	Employed	52803002
66	Unemployed	52803002
9	Discouraged work-seeker	52803002
801	Other not economically active	52803002
0	Not applicable	52803002
51	Employed	52803003
51	Unemployed	52803003
24	Discouraged work-seeker	52803003
726	Other not economically active	52803003
0	Not applicable	52803003
15	Employed	52803004
12	Unemployed	52803004
12	Discouraged work-seeker	52803004
627	Other not economically active	52803004
0	Not applicable	52803004
24	Employed	52803005
18	Unemployed	52803005
12	Discouraged work-seeker	52803005
909	Other not economically active	52803005
0	Not applicable	52803005
12	Employed	52803006
138	Unemployed	52803006
33	Discouraged work-seeker	52803006
597	Other not economically active	52803006
0	Not applicable	52803006
18	Employed	52803007
45	Unemployed	52803007
21	Discouraged work-seeker	52803007
600	Other not economically active	52803007
0	Not applicable	52803007
15	Employed	52803008
78	Unemployed	52803008
27	Discouraged work-seeker	52803008
612	Other not economically active	52803008
0	Not applicable	52803008
21	Employed	52804001
39	Unemployed	52804001
36	Discouraged work-seeker	52804001
540	Other not economically active	52804001
0	Not applicable	52804001
3	Employed	52804002
15	Unemployed	52804002
15	Discouraged work-seeker	52804002
636	Other not economically active	52804002
0	Not applicable	52804002
9	Employed	52804003
9	Unemployed	52804003
27	Discouraged work-seeker	52804003
513	Other not economically active	52804003
0	Not applicable	52804003
15	Employed	52804004
36	Unemployed	52804004
18	Discouraged work-seeker	52804004
645	Other not economically active	52804004
0	Not applicable	52804004
12	Employed	52804005
36	Unemployed	52804005
24	Discouraged work-seeker	52804005
777	Other not economically active	52804005
0	Not applicable	52804005
12	Employed	52804006
15	Unemployed	52804006
21	Discouraged work-seeker	52804006
528	Other not economically active	52804006
0	Not applicable	52804006
42	Employed	52804007
27	Unemployed	52804007
15	Discouraged work-seeker	52804007
423	Other not economically active	52804007
0	Not applicable	52804007
24	Employed	52804008
21	Unemployed	52804008
21	Discouraged work-seeker	52804008
651	Other not economically active	52804008
0	Not applicable	52804008
6	Employed	52804009
42	Unemployed	52804009
6	Discouraged work-seeker	52804009
615	Other not economically active	52804009
0	Not applicable	52804009
12	Employed	52804010
36	Unemployed	52804010
18	Discouraged work-seeker	52804010
711	Other not economically active	52804010
0	Not applicable	52804010
18	Employed	52804011
15	Unemployed	52804011
9	Discouraged work-seeker	52804011
447	Other not economically active	52804011
0	Not applicable	52804011
21	Employed	52804012
36	Unemployed	52804012
6	Discouraged work-seeker	52804012
336	Other not economically active	52804012
0	Not applicable	52804012
9	Employed	52804013
60	Unemployed	52804013
0	Discouraged work-seeker	52804013
570	Other not economically active	52804013
0	Not applicable	52804013
3	Employed	52804014
30	Unemployed	52804014
36	Discouraged work-seeker	52804014
666	Other not economically active	52804014
0	Not applicable	52804014
6	Employed	52804015
18	Unemployed	52804015
27	Discouraged work-seeker	52804015
750	Other not economically active	52804015
0	Not applicable	52804015
6	Employed	52804016
36	Unemployed	52804016
57	Discouraged work-seeker	52804016
843	Other not economically active	52804016
0	Not applicable	52804016
6	Employed	52804017
30	Unemployed	52804017
18	Discouraged work-seeker	52804017
495	Other not economically active	52804017
0	Not applicable	52804017
18	Employed	52804018
6	Unemployed	52804018
36	Discouraged work-seeker	52804018
147	Other not economically active	52804018
0	Not applicable	52804018
30	Employed	52804019
9	Unemployed	52804019
0	Discouraged work-seeker	52804019
264	Other not economically active	52804019
0	Not applicable	52804019
21	Employed	52804020
45	Unemployed	52804020
12	Discouraged work-seeker	52804020
681	Other not economically active	52804020
0	Not applicable	52804020
9	Employed	52804021
21	Unemployed	52804021
6	Discouraged work-seeker	52804021
531	Other not economically active	52804021
0	Not applicable	52804021
9	Employed	52804022
12	Unemployed	52804022
42	Discouraged work-seeker	52804022
570	Other not economically active	52804022
0	Not applicable	52804022
75	Employed	52804023
39	Unemployed	52804023
15	Discouraged work-seeker	52804023
591	Other not economically active	52804023
0	Not applicable	52804023
9	Employed	52804024
33	Unemployed	52804024
24	Discouraged work-seeker	52804024
675	Other not economically active	52804024
0	Not applicable	52804024
15	Employed	52804025
30	Unemployed	52804025
9	Discouraged work-seeker	52804025
495	Other not economically active	52804025
0	Not applicable	52804025
15	Employed	52804026
21	Unemployed	52804026
18	Discouraged work-seeker	52804026
612	Other not economically active	52804026
0	Not applicable	52804026
39	Employed	52805001
45	Unemployed	52805001
3	Discouraged work-seeker	52805001
372	Other not economically active	52805001
0	Not applicable	52805001
27	Employed	52805002
30	Unemployed	52805002
9	Discouraged work-seeker	52805002
378	Other not economically active	52805002
0	Not applicable	52805002
15	Employed	52805003
102	Unemployed	52805003
24	Discouraged work-seeker	52805003
603	Other not economically active	52805003
0	Not applicable	52805003
9	Employed	52805004
42	Unemployed	52805004
39	Discouraged work-seeker	52805004
450	Other not economically active	52805004
0	Not applicable	52805004
15	Employed	52805005
12	Unemployed	52805005
45	Discouraged work-seeker	52805005
714	Other not economically active	52805005
0	Not applicable	52805005
6	Employed	52805006
15	Unemployed	52805006
12	Discouraged work-seeker	52805006
456	Other not economically active	52805006
0	Not applicable	52805006
9	Employed	54301001
33	Unemployed	54301001
39	Discouraged work-seeker	54301001
801	Other not economically active	54301001
0	Not applicable	54301001
12	Employed	54301002
21	Unemployed	54301002
21	Discouraged work-seeker	54301002
708	Other not economically active	54301002
0	Not applicable	54301002
15	Employed	54301003
27	Unemployed	54301003
21	Discouraged work-seeker	54301003
750	Other not economically active	54301003
0	Not applicable	54301003
12	Employed	54301004
18	Unemployed	54301004
30	Discouraged work-seeker	54301004
705	Other not economically active	54301004
0	Not applicable	54301004
6	Employed	54301005
54	Unemployed	54301005
15	Discouraged work-seeker	54301005
543	Other not economically active	54301005
0	Not applicable	54301005
18	Employed	54301006
60	Unemployed	54301006
39	Discouraged work-seeker	54301006
543	Other not economically active	54301006
0	Not applicable	54301006
18	Employed	54301007
27	Unemployed	54301007
12	Discouraged work-seeker	54301007
498	Other not economically active	54301007
0	Not applicable	54301007
9	Employed	54301008
9	Unemployed	54301008
12	Discouraged work-seeker	54301008
744	Other not economically active	54301008
0	Not applicable	54301008
12	Employed	54301009
39	Unemployed	54301009
30	Discouraged work-seeker	54301009
669	Other not economically active	54301009
0	Not applicable	54301009
15	Employed	54301010
45	Unemployed	54301010
12	Discouraged work-seeker	54301010
627	Other not economically active	54301010
0	Not applicable	54301010
24	Employed	54301011
21	Unemployed	54301011
3	Discouraged work-seeker	54301011
396	Other not economically active	54301011
0	Not applicable	54301011
18	Employed	54302001
9	Unemployed	54302001
3	Discouraged work-seeker	54302001
195	Other not economically active	54302001
0	Not applicable	54302001
12	Employed	54302002
18	Unemployed	54302002
3	Discouraged work-seeker	54302002
141	Other not economically active	54302002
0	Not applicable	54302002
15	Employed	54302003
6	Unemployed	54302003
3	Discouraged work-seeker	54302003
81	Other not economically active	54302003
0	Not applicable	54302003
9	Employed	54302004
9	Unemployed	54302004
6	Discouraged work-seeker	54302004
30	Other not economically active	54302004
0	Not applicable	54302004
27	Employed	54303001
96	Unemployed	54303001
6	Discouraged work-seeker	54303001
561	Other not economically active	54303001
0	Not applicable	54303001
51	Employed	54303002
48	Unemployed	54303002
15	Discouraged work-seeker	54303002
390	Other not economically active	54303002
0	Not applicable	54303002
21	Employed	54303003
33	Unemployed	54303003
0	Discouraged work-seeker	54303003
294	Other not economically active	54303003
0	Not applicable	54303003
24	Employed	54303004
66	Unemployed	54303004
3	Discouraged work-seeker	54303004
672	Other not economically active	54303004
0	Not applicable	54303004
3	Employed	54303005
21	Unemployed	54303005
0	Discouraged work-seeker	54303005
165	Other not economically active	54303005
0	Not applicable	54303005
42	Employed	54303006
72	Unemployed	54303006
6	Discouraged work-seeker	54303006
396	Other not economically active	54303006
0	Not applicable	54303006
6	Employed	54303007
57	Unemployed	54303007
3	Discouraged work-seeker	54303007
360	Other not economically active	54303007
0	Not applicable	54303007
15	Employed	54303008
63	Unemployed	54303008
9	Discouraged work-seeker	54303008
447	Other not economically active	54303008
0	Not applicable	54303008
24	Employed	54304001
63	Unemployed	54304001
15	Discouraged work-seeker	54304001
456	Other not economically active	54304001
0	Not applicable	54304001
27	Employed	54304002
3	Unemployed	54304002
9	Discouraged work-seeker	54304002
273	Other not economically active	54304002
0	Not applicable	54304002
12	Employed	54304003
27	Unemployed	54304003
9	Discouraged work-seeker	54304003
624	Other not economically active	54304003
0	Not applicable	54304003
27	Employed	54304004
60	Unemployed	54304004
12	Discouraged work-seeker	54304004
678	Other not economically active	54304004
0	Not applicable	54304004
27	Employed	54304005
15	Unemployed	54304005
33	Discouraged work-seeker	54304005
678	Other not economically active	54304005
0	Not applicable	54304005
9	Employed	54304006
18	Unemployed	54304006
18	Discouraged work-seeker	54304006
552	Other not economically active	54304006
0	Not applicable	54304006
15	Employed	54304007
21	Unemployed	54304007
15	Discouraged work-seeker	54304007
549	Other not economically active	54304007
0	Not applicable	54304007
18	Employed	54304008
30	Unemployed	54304008
15	Discouraged work-seeker	54304008
903	Other not economically active	54304008
0	Not applicable	54304008
12	Employed	54304009
21	Unemployed	54304009
42	Discouraged work-seeker	54304009
348	Other not economically active	54304009
0	Not applicable	54304009
15	Employed	54304010
36	Unemployed	54304010
36	Discouraged work-seeker	54304010
600	Other not economically active	54304010
0	Not applicable	54304010
6	Employed	54304011
15	Unemployed	54304011
9	Discouraged work-seeker	54304011
594	Other not economically active	54304011
0	Not applicable	54304011
12	Employed	54304012
15	Unemployed	54304012
9	Discouraged work-seeker	54304012
726	Other not economically active	54304012
0	Not applicable	54304012
12	Employed	54305001
30	Unemployed	54305001
24	Discouraged work-seeker	54305001
699	Other not economically active	54305001
0	Not applicable	54305001
18	Employed	54305002
45	Unemployed	54305002
39	Discouraged work-seeker	54305002
669	Other not economically active	54305002
0	Not applicable	54305002
9	Employed	54305003
30	Unemployed	54305003
36	Discouraged work-seeker	54305003
561	Other not economically active	54305003
0	Not applicable	54305003
27	Employed	54305004
18	Unemployed	54305004
48	Discouraged work-seeker	54305004
645	Other not economically active	54305004
0	Not applicable	54305004
18	Employed	54305005
42	Unemployed	54305005
60	Discouraged work-seeker	54305005
681	Other not economically active	54305005
0	Not applicable	54305005
15	Employed	54305006
45	Unemployed	54305006
30	Discouraged work-seeker	54305006
807	Other not economically active	54305006
0	Not applicable	54305006
9	Employed	54305007
18	Unemployed	54305007
27	Discouraged work-seeker	54305007
756	Other not economically active	54305007
0	Not applicable	54305007
54	Employed	54305008
24	Unemployed	54305008
57	Discouraged work-seeker	54305008
588	Other not economically active	54305008
0	Not applicable	54305008
3	Employed	54305009
24	Unemployed	54305009
15	Discouraged work-seeker	54305009
540	Other not economically active	54305009
0	Not applicable	54305009
12	Employed	54305010
18	Unemployed	54305010
48	Discouraged work-seeker	54305010
738	Other not economically active	54305010
0	Not applicable	54305010
12	Employed	54305011
12	Unemployed	54305011
12	Discouraged work-seeker	54305011
567	Other not economically active	54305011
0	Not applicable	54305011
9	Employed	54305012
60	Unemployed	54305012
12	Discouraged work-seeker	54305012
744	Other not economically active	54305012
0	Not applicable	54305012
15	Employed	54305013
39	Unemployed	54305013
27	Discouraged work-seeker	54305013
957	Other not economically active	54305013
0	Not applicable	54305013
12	Employed	54305014
57	Unemployed	54305014
3	Discouraged work-seeker	54305014
888	Other not economically active	54305014
0	Not applicable	54305014
6	Employed	54305015
6	Unemployed	54305015
24	Discouraged work-seeker	54305015
660	Other not economically active	54305015
0	Not applicable	54305015
30	Employed	54305016
30	Unemployed	54305016
9	Discouraged work-seeker	54305016
570	Other not economically active	54305016
0	Not applicable	54305016
27	Employed	54305017
123	Unemployed	54305017
30	Discouraged work-seeker	54305017
630	Other not economically active	54305017
0	Not applicable	54305017
9	Employed	54305018
33	Unemployed	54305018
54	Discouraged work-seeker	54305018
699	Other not economically active	54305018
0	Not applicable	54305018
9	Employed	54305019
36	Unemployed	54305019
15	Discouraged work-seeker	54305019
564	Other not economically active	54305019
0	Not applicable	54305019
18	Employed	54305020
48	Unemployed	54305020
36	Discouraged work-seeker	54305020
753	Other not economically active	54305020
0	Not applicable	54305020
6	Employed	52401001
6	Unemployed	52401001
15	Discouraged work-seeker	52401001
462	Other not economically active	52401001
0	Not applicable	52401001
18	Employed	52401002
30	Unemployed	52401002
12	Discouraged work-seeker	52401002
954	Other not economically active	52401002
0	Not applicable	52401002
30	Employed	52401003
63	Unemployed	52401003
33	Discouraged work-seeker	52401003
960	Other not economically active	52401003
0	Not applicable	52401003
3	Employed	52401004
48	Unemployed	52401004
18	Discouraged work-seeker	52401004
450	Other not economically active	52401004
0	Not applicable	52401004
6	Employed	52401005
33	Unemployed	52401005
21	Discouraged work-seeker	52401005
552	Other not economically active	52401005
0	Not applicable	52401005
30	Employed	52401006
57	Unemployed	52401006
6	Discouraged work-seeker	52401006
588	Other not economically active	52401006
0	Not applicable	52401006
237	Employed	52402001
24	Unemployed	52402001
39	Discouraged work-seeker	52402001
750	Other not economically active	52402001
0	Not applicable	52402001
9	Employed	52402002
24	Unemployed	52402002
48	Discouraged work-seeker	52402002
717	Other not economically active	52402002
0	Not applicable	52402002
15	Employed	52402003
12	Unemployed	52402003
30	Discouraged work-seeker	52402003
930	Other not economically active	52402003
0	Not applicable	52402003
3	Employed	52402004
12	Unemployed	52402004
15	Discouraged work-seeker	52402004
783	Other not economically active	52402004
0	Not applicable	52402004
15	Employed	52402005
9	Unemployed	52402005
18	Discouraged work-seeker	52402005
750	Other not economically active	52402005
0	Not applicable	52402005
6	Employed	52402006
9	Unemployed	52402006
30	Discouraged work-seeker	52402006
513	Other not economically active	52402006
0	Not applicable	52402006
9	Employed	52402007
9	Unemployed	52402007
30	Discouraged work-seeker	52402007
708	Other not economically active	52402007
0	Not applicable	52402007
6	Employed	52402008
24	Unemployed	52402008
48	Discouraged work-seeker	52402008
666	Other not economically active	52402008
0	Not applicable	52402008
9	Employed	52402009
15	Unemployed	52402009
33	Discouraged work-seeker	52402009
768	Other not economically active	52402009
0	Not applicable	52402009
6	Employed	52402010
15	Unemployed	52402010
27	Discouraged work-seeker	52402010
957	Other not economically active	52402010
0	Not applicable	52402010
9	Employed	52402011
30	Unemployed	52402011
30	Discouraged work-seeker	52402011
975	Other not economically active	52402011
0	Not applicable	52402011
3	Employed	52402012
24	Unemployed	52402012
27	Discouraged work-seeker	52402012
717	Other not economically active	52402012
0	Not applicable	52402012
0	Employed	52402013
33	Unemployed	52402013
21	Discouraged work-seeker	52402013
726	Other not economically active	52402013
0	Not applicable	52402013
9	Employed	52402014
33	Unemployed	52402014
33	Discouraged work-seeker	52402014
696	Other not economically active	52402014
0	Not applicable	52402014
9	Employed	52402015
30	Unemployed	52402015
6	Discouraged work-seeker	52402015
834	Other not economically active	52402015
0	Not applicable	52402015
9	Employed	52402016
21	Unemployed	52402016
18	Discouraged work-seeker	52402016
606	Other not economically active	52402016
0	Not applicable	52402016
15	Employed	52402017
15	Unemployed	52402017
15	Discouraged work-seeker	52402017
633	Other not economically active	52402017
0	Not applicable	52402017
12	Employed	52404001
24	Unemployed	52404001
27	Discouraged work-seeker	52404001
858	Other not economically active	52404001
0	Not applicable	52404001
15	Employed	52404002
9	Unemployed	52404002
114	Discouraged work-seeker	52404002
714	Other not economically active	52404002
0	Not applicable	52404002
9	Employed	52404003
21	Unemployed	52404003
57	Discouraged work-seeker	52404003
894	Other not economically active	52404003
0	Not applicable	52404003
21	Employed	52404004
66	Unemployed	52404004
48	Discouraged work-seeker	52404004
903	Other not economically active	52404004
0	Not applicable	52404004
27	Employed	52404005
84	Unemployed	52404005
48	Discouraged work-seeker	52404005
927	Other not economically active	52404005
0	Not applicable	52404005
30	Employed	52404006
54	Unemployed	52404006
81	Discouraged work-seeker	52404006
717	Other not economically active	52404006
0	Not applicable	52404006
6	Employed	52404007
60	Unemployed	52404007
27	Discouraged work-seeker	52404007
531	Other not economically active	52404007
0	Not applicable	52404007
9	Employed	52404008
15	Unemployed	52404008
45	Discouraged work-seeker	52404008
507	Other not economically active	52404008
0	Not applicable	52404008
18	Employed	52404009
21	Unemployed	52404009
27	Discouraged work-seeker	52404009
768	Other not economically active	52404009
0	Not applicable	52404009
18	Employed	52404010
54	Unemployed	52404010
36	Discouraged work-seeker	52404010
654	Other not economically active	52404010
0	Not applicable	52404010
6	Employed	52404011
15	Unemployed	52404011
81	Discouraged work-seeker	52404011
639	Other not economically active	52404011
0	Not applicable	52404011
12	Employed	52404012
6	Unemployed	52404012
24	Discouraged work-seeker	52404012
705	Other not economically active	52404012
0	Not applicable	52404012
12	Employed	52404013
3	Unemployed	52404013
15	Discouraged work-seeker	52404013
675	Other not economically active	52404013
0	Not applicable	52404013
15	Employed	52404014
30	Unemployed	52404014
48	Discouraged work-seeker	52404014
798	Other not economically active	52404014
0	Not applicable	52404014
15	Employed	52404015
27	Unemployed	52404015
54	Discouraged work-seeker	52404015
588	Other not economically active	52404015
0	Not applicable	52404015
15	Employed	52404016
24	Unemployed	52404016
66	Discouraged work-seeker	52404016
657	Other not economically active	52404016
0	Not applicable	52404016
12	Employed	52404017
27	Unemployed	52404017
39	Discouraged work-seeker	52404017
825	Other not economically active	52404017
0	Not applicable	52404017
6	Employed	52404018
27	Unemployed	52404018
18	Discouraged work-seeker	52404018
663	Other not economically active	52404018
0	Not applicable	52404018
9	Employed	52404019
30	Unemployed	52404019
21	Discouraged work-seeker	52404019
690	Other not economically active	52404019
0	Not applicable	52404019
36	Employed	52405001
21	Unemployed	52405001
6	Discouraged work-seeker	52405001
909	Other not economically active	52405001
0	Not applicable	52405001
27	Employed	52405002
30	Unemployed	52405002
24	Discouraged work-seeker	52405002
801	Other not economically active	52405002
0	Not applicable	52405002
0	Employed	52405003
36	Unemployed	52405003
9	Discouraged work-seeker	52405003
744	Other not economically active	52405003
0	Not applicable	52405003
15	Employed	52405004
45	Unemployed	52405004
24	Discouraged work-seeker	52405004
624	Other not economically active	52405004
0	Not applicable	52405004
27	Employed	52405005
51	Unemployed	52405005
36	Discouraged work-seeker	52405005
573	Other not economically active	52405005
0	Not applicable	52405005
15	Employed	52405006
21	Unemployed	52405006
33	Discouraged work-seeker	52405006
702	Other not economically active	52405006
0	Not applicable	52405006
18	Employed	52405007
48	Unemployed	52405007
39	Discouraged work-seeker	52405007
618	Other not economically active	52405007
0	Not applicable	52405007
63	Employed	52405008
84	Unemployed	52405008
15	Discouraged work-seeker	52405008
819	Other not economically active	52405008
0	Not applicable	52405008
9	Employed	52405009
27	Unemployed	52405009
3	Discouraged work-seeker	52405009
213	Other not economically active	52405009
0	Not applicable	52405009
39	Employed	52405010
39	Unemployed	52405010
18	Discouraged work-seeker	52405010
330	Other not economically active	52405010
0	Not applicable	52405010
36	Employed	52405011
18	Unemployed	52405011
21	Discouraged work-seeker	52405011
567	Other not economically active	52405011
0	Not applicable	52405011
36	Employed	52502001
39	Unemployed	52502001
54	Discouraged work-seeker	52502001
1062	Other not economically active	52502001
0	Not applicable	52502001
27	Employed	52502002
21	Unemployed	52502002
3	Discouraged work-seeker	52502002
477	Other not economically active	52502002
0	Not applicable	52502002
18	Employed	52502003
9	Unemployed	52502003
3	Discouraged work-seeker	52502003
432	Other not economically active	52502003
0	Not applicable	52502003
18	Employed	52502004
9	Unemployed	52502004
0	Discouraged work-seeker	52502004
375	Other not economically active	52502004
0	Not applicable	52502004
9	Employed	52502005
15	Unemployed	52502005
3	Discouraged work-seeker	52502005
546	Other not economically active	52502005
0	Not applicable	52502005
48	Employed	52502006
72	Unemployed	52502006
36	Discouraged work-seeker	52502006
1551	Other not economically active	52502006
0	Not applicable	52502006
9	Employed	52502007
63	Unemployed	52502007
30	Discouraged work-seeker	52502007
1176	Other not economically active	52502007
0	Not applicable	52502007
24	Employed	52502008
72	Unemployed	52502008
33	Discouraged work-seeker	52502008
477	Other not economically active	52502008
0	Not applicable	52502008
15	Employed	52502009
51	Unemployed	52502009
12	Discouraged work-seeker	52502009
981	Other not economically active	52502009
0	Not applicable	52502009
6	Employed	52502010
24	Unemployed	52502010
6	Discouraged work-seeker	52502010
636	Other not economically active	52502010
0	Not applicable	52502010
15	Employed	52502011
18	Unemployed	52502011
9	Discouraged work-seeker	52502011
648	Other not economically active	52502011
0	Not applicable	52502011
12	Employed	52502012
45	Unemployed	52502012
3	Discouraged work-seeker	52502012
687	Other not economically active	52502012
0	Not applicable	52502012
6	Employed	52502013
27	Unemployed	52502013
21	Discouraged work-seeker	52502013
513	Other not economically active	52502013
0	Not applicable	52502013
18	Employed	52502014
48	Unemployed	52502014
24	Discouraged work-seeker	52502014
846	Other not economically active	52502014
0	Not applicable	52502014
15	Employed	52502015
30	Unemployed	52502015
36	Discouraged work-seeker	52502015
798	Other not economically active	52502015
0	Not applicable	52502015
27	Employed	52502016
60	Unemployed	52502016
21	Discouraged work-seeker	52502016
966	Other not economically active	52502016
0	Not applicable	52502016
6	Employed	52502017
42	Unemployed	52502017
18	Discouraged work-seeker	52502017
735	Other not economically active	52502017
0	Not applicable	52502017
6	Employed	52502018
51	Unemployed	52502018
24	Discouraged work-seeker	52502018
861	Other not economically active	52502018
0	Not applicable	52502018
9	Employed	52502019
45	Unemployed	52502019
3	Discouraged work-seeker	52502019
618	Other not economically active	52502019
0	Not applicable	52502019
18	Employed	52502020
75	Unemployed	52502020
33	Discouraged work-seeker	52502020
720	Other not economically active	52502020
0	Not applicable	52502020
18	Employed	52502021
39	Unemployed	52502021
24	Discouraged work-seeker	52502021
810	Other not economically active	52502021
0	Not applicable	52502021
18	Employed	52502022
33	Unemployed	52502022
12	Discouraged work-seeker	52502022
633	Other not economically active	52502022
0	Not applicable	52502022
15	Employed	52502023
18	Unemployed	52502023
15	Discouraged work-seeker	52502023
561	Other not economically active	52502023
0	Not applicable	52502023
15	Employed	52502024
63	Unemployed	52502024
15	Discouraged work-seeker	52502024
711	Other not economically active	52502024
0	Not applicable	52502024
9	Employed	52502025
54	Unemployed	52502025
6	Discouraged work-seeker	52502025
534	Other not economically active	52502025
0	Not applicable	52502025
6	Employed	52502026
15	Unemployed	52502026
6	Discouraged work-seeker	52502026
408	Other not economically active	52502026
0	Not applicable	52502026
36	Employed	52502027
27	Unemployed	52502027
15	Discouraged work-seeker	52502027
687	Other not economically active	52502027
0	Not applicable	52502027
0	Employed	52502028
18	Unemployed	52502028
3	Discouraged work-seeker	52502028
462	Other not economically active	52502028
0	Not applicable	52502028
15	Employed	52502029
36	Unemployed	52502029
9	Discouraged work-seeker	52502029
711	Other not economically active	52502029
0	Not applicable	52502029
21	Employed	52502030
84	Unemployed	52502030
33	Discouraged work-seeker	52502030
777	Other not economically active	52502030
0	Not applicable	52502030
9	Employed	52502031
78	Unemployed	52502031
15	Discouraged work-seeker	52502031
678	Other not economically active	52502031
0	Not applicable	52502031
27	Employed	52503001
48	Unemployed	52503001
60	Discouraged work-seeker	52503001
576	Other not economically active	52503001
0	Not applicable	52503001
3	Employed	52503002
12	Unemployed	52503002
3	Discouraged work-seeker	52503002
306	Other not economically active	52503002
0	Not applicable	52503002
6	Employed	52503003
39	Unemployed	52503003
24	Discouraged work-seeker	52503003
585	Other not economically active	52503003
0	Not applicable	52503003
9	Employed	52503004
24	Unemployed	52503004
36	Discouraged work-seeker	52503004
585	Other not economically active	52503004
0	Not applicable	52503004
12	Employed	52504001
36	Unemployed	52504001
21	Discouraged work-seeker	52504001
627	Other not economically active	52504001
0	Not applicable	52504001
18	Employed	52504002
30	Unemployed	52504002
12	Discouraged work-seeker	52504002
399	Other not economically active	52504002
0	Not applicable	52504002
6	Employed	52504003
21	Unemployed	52504003
21	Discouraged work-seeker	52504003
663	Other not economically active	52504003
0	Not applicable	52504003
0	Employed	52504004
33	Unemployed	52504004
30	Discouraged work-seeker	52504004
708	Other not economically active	52504004
0	Not applicable	52504004
12	Employed	52504005
12	Unemployed	52504005
15	Discouraged work-seeker	52504005
627	Other not economically active	52504005
0	Not applicable	52504005
3	Employed	52504006
45	Unemployed	52504006
6	Discouraged work-seeker	52504006
675	Other not economically active	52504006
0	Not applicable	52504006
3	Employed	52504007
12	Unemployed	52504007
12	Discouraged work-seeker	52504007
630	Other not economically active	52504007
0	Not applicable	52504007
21	Employed	52504008
96	Unemployed	52504008
9	Discouraged work-seeker	52504008
657	Other not economically active	52504008
0	Not applicable	52504008
12	Employed	52504009
21	Unemployed	52504009
9	Discouraged work-seeker	52504009
798	Other not economically active	52504009
0	Not applicable	52504009
9	Employed	52504010
39	Unemployed	52504010
12	Discouraged work-seeker	52504010
822	Other not economically active	52504010
0	Not applicable	52504010
9	Employed	52504011
30	Unemployed	52504011
15	Discouraged work-seeker	52504011
807	Other not economically active	52504011
0	Not applicable	52504011
27	Employed	52603001
24	Unemployed	52603001
27	Discouraged work-seeker	52603001
684	Other not economically active	52603001
0	Not applicable	52603001
21	Employed	52603002
48	Unemployed	52603002
36	Discouraged work-seeker	52603002
582	Other not economically active	52603002
0	Not applicable	52603002
15	Employed	52603003
36	Unemployed	52603003
36	Discouraged work-seeker	52603003
756	Other not economically active	52603003
0	Not applicable	52603003
36	Employed	52603004
66	Unemployed	52603004
33	Discouraged work-seeker	52603004
378	Other not economically active	52603004
0	Not applicable	52603004
27	Employed	52603005
39	Unemployed	52603005
27	Discouraged work-seeker	52603005
711	Other not economically active	52603005
0	Not applicable	52603005
36	Employed	52603006
27	Unemployed	52603006
36	Discouraged work-seeker	52603006
687	Other not economically active	52603006
0	Not applicable	52603006
6	Employed	52603007
30	Unemployed	52603007
57	Discouraged work-seeker	52603007
717	Other not economically active	52603007
0	Not applicable	52603007
12	Employed	52603008
6	Unemployed	52603008
3	Discouraged work-seeker	52603008
186	Other not economically active	52603008
0	Not applicable	52603008
15	Employed	52603009
9	Unemployed	52603009
3	Discouraged work-seeker	52603009
291	Other not economically active	52603009
0	Not applicable	52603009
0	Employed	52603010
12	Unemployed	52603010
0	Discouraged work-seeker	52603010
159	Other not economically active	52603010
0	Not applicable	52603010
30	Employed	52603011
57	Unemployed	52603011
12	Discouraged work-seeker	52603011
750	Other not economically active	52603011
0	Not applicable	52603011
21	Employed	52603012
15	Unemployed	52603012
45	Discouraged work-seeker	52603012
804	Other not economically active	52603012
0	Not applicable	52603012
24	Employed	52603013
114	Unemployed	52603013
18	Discouraged work-seeker	52603013
846	Other not economically active	52603013
0	Not applicable	52603013
9	Employed	52603014
21	Unemployed	52603014
9	Discouraged work-seeker	52603014
717	Other not economically active	52603014
0	Not applicable	52603014
9	Employed	52603015
30	Unemployed	52603015
3	Discouraged work-seeker	52603015
663	Other not economically active	52603015
0	Not applicable	52603015
3	Employed	52603016
48	Unemployed	52603016
15	Discouraged work-seeker	52603016
681	Other not economically active	52603016
0	Not applicable	52603016
15	Employed	52603017
30	Unemployed	52603017
15	Discouraged work-seeker	52603017
936	Other not economically active	52603017
0	Not applicable	52603017
12	Employed	52603018
27	Unemployed	52603018
9	Discouraged work-seeker	52603018
516	Other not economically active	52603018
0	Not applicable	52603018
12	Employed	52603019
15	Unemployed	52603019
60	Discouraged work-seeker	52603019
480	Other not economically active	52603019
0	Not applicable	52603019
6	Employed	52603020
27	Unemployed	52603020
27	Discouraged work-seeker	52603020
795	Other not economically active	52603020
0	Not applicable	52603020
12	Employed	52603021
39	Unemployed	52603021
75	Discouraged work-seeker	52603021
999	Other not economically active	52603021
0	Not applicable	52603021
57	Employed	52603022
90	Unemployed	52603022
27	Discouraged work-seeker	52603022
600	Other not economically active	52603022
0	Not applicable	52603022
54	Employed	52601001
33	Unemployed	52601001
30	Discouraged work-seeker	52601001
699	Other not economically active	52601001
0	Not applicable	52601001
24	Employed	52601002
81	Unemployed	52601002
54	Discouraged work-seeker	52601002
1023	Other not economically active	52601002
0	Not applicable	52601002
12	Employed	52601003
36	Unemployed	52601003
6	Discouraged work-seeker	52601003
615	Other not economically active	52601003
0	Not applicable	52601003
12	Employed	52601004
42	Unemployed	52601004
60	Discouraged work-seeker	52601004
651	Other not economically active	52601004
0	Not applicable	52601004
21	Employed	52601005
9	Unemployed	52601005
9	Discouraged work-seeker	52601005
654	Other not economically active	52601005
0	Not applicable	52601005
21	Employed	52601006
21	Unemployed	52601006
36	Discouraged work-seeker	52601006
579	Other not economically active	52601006
0	Not applicable	52601006
9	Employed	52601007
36	Unemployed	52601007
9	Discouraged work-seeker	52601007
552	Other not economically active	52601007
0	Not applicable	52601007
9	Employed	52601008
36	Unemployed	52601008
12	Discouraged work-seeker	52601008
594	Other not economically active	52601008
0	Not applicable	52601008
33	Employed	52602001
63	Unemployed	52602001
63	Discouraged work-seeker	52602001
684	Other not economically active	52602001
0	Not applicable	52602001
12	Employed	52602002
39	Unemployed	52602002
6	Discouraged work-seeker	52602002
540	Other not economically active	52602002
0	Not applicable	52602002
9	Employed	52602003
21	Unemployed	52602003
24	Discouraged work-seeker	52602003
669	Other not economically active	52602003
0	Not applicable	52602003
21	Employed	52602004
57	Unemployed	52602004
42	Discouraged work-seeker	52602004
801	Other not economically active	52602004
0	Not applicable	52602004
9	Employed	52602005
15	Unemployed	52602005
21	Discouraged work-seeker	52602005
669	Other not economically active	52602005
0	Not applicable	52602005
15	Employed	52602006
33	Unemployed	52602006
27	Discouraged work-seeker	52602006
561	Other not economically active	52602006
0	Not applicable	52602006
9	Employed	52602007
15	Unemployed	52602007
36	Discouraged work-seeker	52602007
564	Other not economically active	52602007
0	Not applicable	52602007
12	Employed	52602008
21	Unemployed	52602008
15	Discouraged work-seeker	52602008
567	Other not economically active	52602008
0	Not applicable	52602008
69	Employed	52602009
42	Unemployed	52602009
33	Discouraged work-seeker	52602009
927	Other not economically active	52602009
0	Not applicable	52602009
9	Employed	52602010
99	Unemployed	52602010
42	Discouraged work-seeker	52602010
645	Other not economically active	52602010
0	Not applicable	52602010
75	Employed	52602011
39	Unemployed	52602011
15	Discouraged work-seeker	52602011
372	Other not economically active	52602011
0	Not applicable	52602011
6	Employed	52602012
57	Unemployed	52602012
15	Discouraged work-seeker	52602012
723	Other not economically active	52602012
0	Not applicable	52602012
6	Employed	52602013
15	Unemployed	52602013
9	Discouraged work-seeker	52602013
417	Other not economically active	52602013
0	Not applicable	52602013
48	Employed	52602014
27	Unemployed	52602014
21	Discouraged work-seeker	52602014
321	Other not economically active	52602014
0	Not applicable	52602014
12	Employed	52605001
24	Unemployed	52605001
60	Discouraged work-seeker	52605001
783	Other not economically active	52605001
0	Not applicable	52605001
27	Employed	52605002
21	Unemployed	52605002
66	Discouraged work-seeker	52605002
831	Other not economically active	52605002
0	Not applicable	52605002
21	Employed	52605003
24	Unemployed	52605003
24	Discouraged work-seeker	52605003
876	Other not economically active	52605003
0	Not applicable	52605003
12	Employed	52605004
60	Unemployed	52605004
18	Discouraged work-seeker	52605004
966	Other not economically active	52605004
0	Not applicable	52605004
12	Employed	52605005
42	Unemployed	52605005
18	Discouraged work-seeker	52605005
792	Other not economically active	52605005
0	Not applicable	52605005
6	Employed	52605006
33	Unemployed	52605006
33	Discouraged work-seeker	52605006
537	Other not economically active	52605006
0	Not applicable	52605006
15	Employed	52605007
30	Unemployed	52605007
21	Discouraged work-seeker	52605007
900	Other not economically active	52605007
0	Not applicable	52605007
15	Employed	52605008
27	Unemployed	52605008
36	Discouraged work-seeker	52605008
645	Other not economically active	52605008
0	Not applicable	52605008
21	Employed	52605009
60	Unemployed	52605009
15	Discouraged work-seeker	52605009
876	Other not economically active	52605009
0	Not applicable	52605009
18	Employed	52605010
30	Unemployed	52605010
42	Discouraged work-seeker	52605010
666	Other not economically active	52605010
0	Not applicable	52605010
21	Employed	52605011
51	Unemployed	52605011
21	Discouraged work-seeker	52605011
795	Other not economically active	52605011
0	Not applicable	52605011
27	Employed	52605012
45	Unemployed	52605012
63	Discouraged work-seeker	52605012
708	Other not economically active	52605012
0	Not applicable	52605012
6	Employed	52605013
15	Unemployed	52605013
6	Discouraged work-seeker	52605013
516	Other not economically active	52605013
0	Not applicable	52605013
18	Employed	52605014
15	Unemployed	52605014
36	Discouraged work-seeker	52605014
921	Other not economically active	52605014
0	Not applicable	52605014
18	Employed	52605015
24	Unemployed	52605015
12	Discouraged work-seeker	52605015
627	Other not economically active	52605015
0	Not applicable	52605015
57	Employed	52605016
48	Unemployed	52605016
39	Discouraged work-seeker	52605016
1380	Other not economically active	52605016
0	Not applicable	52605016
6	Employed	52605017
39	Unemployed	52605017
27	Discouraged work-seeker	52605017
711	Other not economically active	52605017
0	Not applicable	52605017
27	Employed	52605018
72	Unemployed	52605018
18	Discouraged work-seeker	52605018
756	Other not economically active	52605018
0	Not applicable	52605018
0	Employed	52605019
3	Unemployed	52605019
0	Discouraged work-seeker	52605019
18	Other not economically active	52605019
0	Not applicable	52605019
9	Employed	52605020
66	Unemployed	52605020
18	Discouraged work-seeker	52605020
381	Other not economically active	52605020
0	Not applicable	52605020
15	Employed	52605021
30	Unemployed	52605021
24	Discouraged work-seeker	52605021
579	Other not economically active	52605021
0	Not applicable	52605021
3	Employed	52606001
33	Unemployed	52606001
24	Discouraged work-seeker	52606001
501	Other not economically active	52606001
0	Not applicable	52606001
21	Employed	52606002
30	Unemployed	52606002
33	Discouraged work-seeker	52606002
738	Other not economically active	52606002
0	Not applicable	52606002
9	Employed	52606003
15	Unemployed	52606003
27	Discouraged work-seeker	52606003
528	Other not economically active	52606003
0	Not applicable	52606003
12	Employed	52606004
9	Unemployed	52606004
54	Discouraged work-seeker	52606004
519	Other not economically active	52606004
0	Not applicable	52606004
21	Employed	52606005
12	Unemployed	52606005
54	Discouraged work-seeker	52606005
621	Other not economically active	52606005
0	Not applicable	52606005
3	Employed	52606006
9	Unemployed	52606006
27	Discouraged work-seeker	52606006
456	Other not economically active	52606006
0	Not applicable	52606006
15	Employed	52606007
18	Unemployed	52606007
36	Discouraged work-seeker	52606007
432	Other not economically active	52606007
0	Not applicable	52606007
15	Employed	52606008
18	Unemployed	52606008
45	Discouraged work-seeker	52606008
687	Other not economically active	52606008
0	Not applicable	52606008
3	Employed	52606009
30	Unemployed	52606009
24	Discouraged work-seeker	52606009
630	Other not economically active	52606009
0	Not applicable	52606009
6	Employed	52606010
9	Unemployed	52606010
6	Discouraged work-seeker	52606010
516	Other not economically active	52606010
0	Not applicable	52606010
18	Employed	52606011
90	Unemployed	52606011
27	Discouraged work-seeker	52606011
543	Other not economically active	52606011
0	Not applicable	52606011
6	Employed	52606012
24	Unemployed	52606012
12	Discouraged work-seeker	52606012
336	Other not economically active	52606012
0	Not applicable	52606012
18	Employed	52606013
39	Unemployed	52606013
27	Discouraged work-seeker	52606013
705	Other not economically active	52606013
0	Not applicable	52606013
21	Employed	52606014
9	Unemployed	52606014
24	Discouraged work-seeker	52606014
714	Other not economically active	52606014
0	Not applicable	52606014
6	Employed	52606015
21	Unemployed	52606015
15	Discouraged work-seeker	52606015
678	Other not economically active	52606015
0	Not applicable	52606015
0	Employed	52606016
27	Unemployed	52606016
27	Discouraged work-seeker	52606016
600	Other not economically active	52606016
0	Not applicable	52606016
6	Employed	52606017
24	Unemployed	52606017
15	Discouraged work-seeker	52606017
672	Other not economically active	52606017
0	Not applicable	52606017
15	Employed	52606018
51	Unemployed	52606018
24	Discouraged work-seeker	52606018
753	Other not economically active	52606018
0	Not applicable	52606018
3	Employed	52606019
27	Unemployed	52606019
3	Discouraged work-seeker	52606019
258	Other not economically active	52606019
0	Not applicable	52606019
3	Employed	52606020
51	Unemployed	52606020
27	Discouraged work-seeker	52606020
567	Other not economically active	52606020
0	Not applicable	52606020
6	Employed	52606021
87	Unemployed	52606021
27	Discouraged work-seeker	52606021
747	Other not economically active	52606021
0	Not applicable	52606021
6	Employed	52606022
24	Unemployed	52606022
3	Discouraged work-seeker	52606022
513	Other not economically active	52606022
0	Not applicable	52606022
3	Employed	52606023
12	Unemployed	52606023
27	Discouraged work-seeker	52606023
564	Other not economically active	52606023
0	Not applicable	52606023
9	Employed	52606024
18	Unemployed	52606024
15	Discouraged work-seeker	52606024
558	Other not economically active	52606024
0	Not applicable	52606024
15	Employed	52904001
15	Unemployed	52904001
42	Discouraged work-seeker	52904001
657	Other not economically active	52904001
0	Not applicable	52904001
57	Employed	52904002
18	Unemployed	52904002
21	Discouraged work-seeker	52904002
792	Other not economically active	52904002
0	Not applicable	52904002
72	Employed	52904003
15	Unemployed	52904003
12	Discouraged work-seeker	52904003
612	Other not economically active	52904003
0	Not applicable	52904003
15	Employed	52904004
21	Unemployed	52904004
72	Discouraged work-seeker	52904004
789	Other not economically active	52904004
0	Not applicable	52904004
12	Employed	52904005
39	Unemployed	52904005
12	Discouraged work-seeker	52904005
921	Other not economically active	52904005
0	Not applicable	52904005
9	Employed	52904006
39	Unemployed	52904006
6	Discouraged work-seeker	52904006
648	Other not economically active	52904006
0	Not applicable	52904006
21	Employed	52904007
21	Unemployed	52904007
15	Discouraged work-seeker	52904007
612	Other not economically active	52904007
0	Not applicable	52904007
12	Employed	52904008
27	Unemployed	52904008
72	Discouraged work-seeker	52904008
612	Other not economically active	52904008
0	Not applicable	52904008
9	Employed	52904009
33	Unemployed	52904009
24	Discouraged work-seeker	52904009
615	Other not economically active	52904009
0	Not applicable	52904009
12	Employed	52904010
15	Unemployed	52904010
12	Discouraged work-seeker	52904010
948	Other not economically active	52904010
0	Not applicable	52904010
9	Employed	52904011
18	Unemployed	52904011
30	Discouraged work-seeker	52904011
588	Other not economically active	52904011
0	Not applicable	52904011
15	Employed	52901001
30	Unemployed	52901001
21	Discouraged work-seeker	52901001
522	Other not economically active	52901001
0	Not applicable	52901001
60	Employed	52901002
45	Unemployed	52901002
9	Discouraged work-seeker	52901002
501	Other not economically active	52901002
0	Not applicable	52901002
12	Employed	52901003
42	Unemployed	52901003
9	Discouraged work-seeker	52901003
429	Other not economically active	52901003
0	Not applicable	52901003
30	Employed	52901004
30	Unemployed	52901004
12	Discouraged work-seeker	52901004
498	Other not economically active	52901004
0	Not applicable	52901004
9	Employed	52901005
30	Unemployed	52901005
15	Discouraged work-seeker	52901005
519	Other not economically active	52901005
0	Not applicable	52901005
9	Employed	52901006
27	Unemployed	52901006
6	Discouraged work-seeker	52901006
537	Other not economically active	52901006
0	Not applicable	52901006
21	Employed	52901007
30	Unemployed	52901007
54	Discouraged work-seeker	52901007
480	Other not economically active	52901007
0	Not applicable	52901007
48	Employed	52901008
30	Unemployed	52901008
0	Discouraged work-seeker	52901008
594	Other not economically active	52901008
0	Not applicable	52901008
18	Employed	52901009
96	Unemployed	52901009
12	Discouraged work-seeker	52901009
684	Other not economically active	52901009
0	Not applicable	52901009
15	Employed	52901010
15	Unemployed	52901010
15	Discouraged work-seeker	52901010
474	Other not economically active	52901010
0	Not applicable	52901010
9	Employed	52901011
24	Unemployed	52901011
21	Discouraged work-seeker	52901011
516	Other not economically active	52901011
0	Not applicable	52901011
24	Employed	52901012
60	Unemployed	52901012
21	Discouraged work-seeker	52901012
741	Other not economically active	52901012
0	Not applicable	52901012
6	Employed	52901013
18	Unemployed	52901013
0	Discouraged work-seeker	52901013
174	Other not economically active	52901013
0	Not applicable	52901013
9	Employed	52901014
30	Unemployed	52901014
24	Discouraged work-seeker	52901014
570	Other not economically active	52901014
0	Not applicable	52901014
3	Employed	52901015
15	Unemployed	52901015
9	Discouraged work-seeker	52901015
204	Other not economically active	52901015
0	Not applicable	52901015
39	Employed	52901016
18	Unemployed	52901016
6	Discouraged work-seeker	52901016
489	Other not economically active	52901016
0	Not applicable	52901016
21	Employed	52901017
15	Unemployed	52901017
0	Discouraged work-seeker	52901017
234	Other not economically active	52901017
0	Not applicable	52901017
6	Employed	52902001
21	Unemployed	52902001
15	Discouraged work-seeker	52902001
468	Other not economically active	52902001
0	Not applicable	52902001
12	Employed	52902002
21	Unemployed	52902002
12	Discouraged work-seeker	52902002
489	Other not economically active	52902002
0	Not applicable	52902002
6	Employed	52902003
18	Unemployed	52902003
6	Discouraged work-seeker	52902003
243	Other not economically active	52902003
0	Not applicable	52902003
18	Employed	52902004
36	Unemployed	52902004
12	Discouraged work-seeker	52902004
237	Other not economically active	52902004
0	Not applicable	52902004
6	Employed	52902005
30	Unemployed	52902005
18	Discouraged work-seeker	52902005
414	Other not economically active	52902005
0	Not applicable	52902005
24	Employed	52902006
6	Unemployed	52902006
0	Discouraged work-seeker	52902006
225	Other not economically active	52902006
0	Not applicable	52902006
39	Employed	52902007
30	Unemployed	52902007
3	Discouraged work-seeker	52902007
504	Other not economically active	52902007
0	Not applicable	52902007
27	Employed	52902008
30	Unemployed	52902008
18	Discouraged work-seeker	52902008
294	Other not economically active	52902008
0	Not applicable	52902008
6	Employed	52902009
27	Unemployed	52902009
24	Discouraged work-seeker	52902009
390	Other not economically active	52902009
0	Not applicable	52902009
15	Employed	52902010
48	Unemployed	52902010
33	Discouraged work-seeker	52902010
510	Other not economically active	52902010
0	Not applicable	52902010
27	Employed	52902011
27	Unemployed	52902011
18	Discouraged work-seeker	52902011
411	Other not economically active	52902011
0	Not applicable	52902011
51	Employed	52902012
57	Unemployed	52902012
9	Discouraged work-seeker	52902012
513	Other not economically active	52902012
0	Not applicable	52902012
9	Employed	52902013
27	Unemployed	52902013
30	Discouraged work-seeker	52902013
438	Other not economically active	52902013
0	Not applicable	52902013
9	Employed	52902014
48	Unemployed	52902014
12	Discouraged work-seeker	52902014
393	Other not economically active	52902014
0	Not applicable	52902014
42	Employed	52902015
78	Unemployed	52902015
18	Discouraged work-seeker	52902015
495	Other not economically active	52902015
0	Not applicable	52902015
36	Employed	52902016
33	Unemployed	52902016
3	Discouraged work-seeker	52902016
447	Other not economically active	52902016
0	Not applicable	52902016
27	Employed	52902017
12	Unemployed	52902017
12	Discouraged work-seeker	52902017
321	Other not economically active	52902017
0	Not applicable	52902017
9	Employed	52902018
24	Unemployed	52902018
6	Discouraged work-seeker	52902018
399	Other not economically active	52902018
0	Not applicable	52902018
18	Employed	52902019
18	Unemployed	52902019
3	Discouraged work-seeker	52902019
363	Other not economically active	52902019
0	Not applicable	52902019
9	Employed	52902020
15	Unemployed	52902020
3	Discouraged work-seeker	52902020
141	Other not economically active	52902020
0	Not applicable	52902020
39	Employed	52902021
27	Unemployed	52902021
6	Discouraged work-seeker	52902021
327	Other not economically active	52902021
0	Not applicable	52902021
36	Employed	52902022
18	Unemployed	52902022
12	Discouraged work-seeker	52902022
372	Other not economically active	52902022
0	Not applicable	52902022
24	Employed	52902023
66	Unemployed	52902023
18	Discouraged work-seeker	52902023
501	Other not economically active	52902023
0	Not applicable	52902023
30	Employed	52902024
69	Unemployed	52902024
18	Discouraged work-seeker	52902024
522	Other not economically active	52902024
0	Not applicable	52902024
12	Employed	52902025
48	Unemployed	52902025
12	Discouraged work-seeker	52902025
561	Other not economically active	52902025
0	Not applicable	52902025
15	Employed	52902026
30	Unemployed	52902026
3	Discouraged work-seeker	52902026
270	Other not economically active	52902026
0	Not applicable	52902026
12	Employed	52902027
6	Unemployed	52902027
15	Discouraged work-seeker	52902027
495	Other not economically active	52902027
0	Not applicable	52902027
21	Employed	52903001
66	Unemployed	52903001
9	Discouraged work-seeker	52903001
333	Other not economically active	52903001
0	Not applicable	52903001
3	Employed	52903002
27	Unemployed	52903002
48	Discouraged work-seeker	52903002
396	Other not economically active	52903002
0	Not applicable	52903002
36	Employed	52903003
39	Unemployed	52903003
18	Discouraged work-seeker	52903003
423	Other not economically active	52903003
0	Not applicable	52903003
3	Employed	52903004
54	Unemployed	52903004
24	Discouraged work-seeker	52903004
492	Other not economically active	52903004
0	Not applicable	52903004
6	Employed	52903005
21	Unemployed	52903005
30	Discouraged work-seeker	52903005
519	Other not economically active	52903005
0	Not applicable	52903005
15	Employed	52903006
21	Unemployed	52903006
27	Discouraged work-seeker	52903006
678	Other not economically active	52903006
0	Not applicable	52903006
3	Employed	52903007
27	Unemployed	52903007
18	Discouraged work-seeker	52903007
414	Other not economically active	52903007
0	Not applicable	52903007
3	Employed	52903008
45	Unemployed	52903008
18	Discouraged work-seeker	52903008
576	Other not economically active	52903008
0	Not applicable	52903008
3	Employed	52903009
21	Unemployed	52903009
24	Discouraged work-seeker	52903009
402	Other not economically active	52903009
0	Not applicable	52903009
6	Employed	52903010
21	Unemployed	52903010
36	Discouraged work-seeker	52903010
633	Other not economically active	52903010
0	Not applicable	52903010
6	Employed	52903011
42	Unemployed	52903011
12	Discouraged work-seeker	52903011
546	Other not economically active	52903011
0	Not applicable	52903011
21	Employed	52903012
129	Unemployed	52903012
42	Discouraged work-seeker	52903012
516	Other not economically active	52903012
0	Not applicable	52903012
9	Employed	52903013
57	Unemployed	52903013
18	Discouraged work-seeker	52903013
609	Other not economically active	52903013
0	Not applicable	52903013
6	Employed	52903014
24	Unemployed	52903014
21	Discouraged work-seeker	52903014
405	Other not economically active	52903014
0	Not applicable	52903014
15	Employed	52903015
24	Unemployed	52903015
15	Discouraged work-seeker	52903015
450	Other not economically active	52903015
0	Not applicable	52903015
6	Employed	52903016
12	Unemployed	52903016
33	Discouraged work-seeker	52903016
678	Other not economically active	52903016
0	Not applicable	52903016
6	Employed	52903017
9	Unemployed	52903017
18	Discouraged work-seeker	52903017
519	Other not economically active	52903017
0	Not applicable	52903017
6	Employed	52903018
48	Unemployed	52903018
6	Discouraged work-seeker	52903018
522	Other not economically active	52903018
0	Not applicable	52903018
6	Employed	52903019
27	Unemployed	52903019
30	Discouraged work-seeker	52903019
633	Other not economically active	52903019
0	Not applicable	52903019
96	Employed	59500001
204	Unemployed	59500001
27	Discouraged work-seeker	59500001
1743	Other not economically active	59500001
0	Not applicable	59500001
57	Employed	59500002
240	Unemployed	59500002
69	Discouraged work-seeker	59500002
1833	Other not economically active	59500002
0	Not applicable	59500002
66	Employed	59500003
225	Unemployed	59500003
57	Discouraged work-seeker	59500003
2547	Other not economically active	59500003
0	Not applicable	59500003
72	Employed	59500004
210	Unemployed	59500004
60	Discouraged work-seeker	59500004
2148	Other not economically active	59500004
0	Not applicable	59500004
45	Employed	59500005
294	Unemployed	59500005
21	Discouraged work-seeker	59500005
1689	Other not economically active	59500005
0	Not applicable	59500005
51	Employed	59500006
246	Unemployed	59500006
15	Discouraged work-seeker	59500006
1572	Other not economically active	59500006
0	Not applicable	59500006
105	Employed	59500007
171	Unemployed	59500007
42	Discouraged work-seeker	59500007
1656	Other not economically active	59500007
0	Not applicable	59500007
162	Employed	59500008
213	Unemployed	59500008
21	Discouraged work-seeker	59500008
1755	Other not economically active	59500008
0	Not applicable	59500008
93	Employed	59500009
111	Unemployed	59500009
21	Discouraged work-seeker	59500009
1509	Other not economically active	59500009
0	Not applicable	59500009
84	Employed	59500010
33	Unemployed	59500010
9	Discouraged work-seeker	59500010
786	Other not economically active	59500010
0	Not applicable	59500010
177	Employed	59500011
258	Unemployed	59500011
69	Discouraged work-seeker	59500011
2181	Other not economically active	59500011
0	Not applicable	59500011
39	Employed	59500012
147	Unemployed	59500012
33	Discouraged work-seeker	59500012
1428	Other not economically active	59500012
0	Not applicable	59500012
135	Employed	59500013
216	Unemployed	59500013
72	Discouraged work-seeker	59500013
1638	Other not economically active	59500013
0	Not applicable	59500013
114	Employed	59500014
204	Unemployed	59500014
27	Discouraged work-seeker	59500014
1134	Other not economically active	59500014
0	Not applicable	59500014
114	Employed	59500015
255	Unemployed	59500015
51	Discouraged work-seeker	59500015
1590	Other not economically active	59500015
0	Not applicable	59500015
93	Employed	59500016
156	Unemployed	59500016
27	Discouraged work-seeker	59500016
1455	Other not economically active	59500016
0	Not applicable	59500016
57	Employed	59500017
192	Unemployed	59500017
42	Discouraged work-seeker	59500017
1755	Other not economically active	59500017
0	Not applicable	59500017
81	Employed	59500018
24	Unemployed	59500018
6	Discouraged work-seeker	59500018
1005	Other not economically active	59500018
0	Not applicable	59500018
84	Employed	59500019
300	Unemployed	59500019
42	Discouraged work-seeker	59500019
1944	Other not economically active	59500019
0	Not applicable	59500019
63	Employed	59500020
132	Unemployed	59500020
39	Discouraged work-seeker	59500020
1002	Other not economically active	59500020
0	Not applicable	59500020
45	Employed	59500021
105	Unemployed	59500021
18	Discouraged work-seeker	59500021
990	Other not economically active	59500021
0	Not applicable	59500021
57	Employed	59500022
102	Unemployed	59500022
48	Discouraged work-seeker	59500022
957	Other not economically active	59500022
0	Not applicable	59500022
90	Employed	59500023
81	Unemployed	59500023
15	Discouraged work-seeker	59500023
918	Other not economically active	59500023
0	Not applicable	59500023
108	Employed	59500024
156	Unemployed	59500024
6	Discouraged work-seeker	59500024
1440	Other not economically active	59500024
0	Not applicable	59500024
144	Employed	59500025
141	Unemployed	59500025
18	Discouraged work-seeker	59500025
1110	Other not economically active	59500025
0	Not applicable	59500025
63	Employed	59500026
75	Unemployed	59500026
9	Discouraged work-seeker	59500026
678	Other not economically active	59500026
0	Not applicable	59500026
63	Employed	59500027
24	Unemployed	59500027
6	Discouraged work-seeker	59500027
492	Other not economically active	59500027
0	Not applicable	59500027
51	Employed	59500028
48	Unemployed	59500028
3	Discouraged work-seeker	59500028
453	Other not economically active	59500028
0	Not applicable	59500028
69	Employed	59500029
294	Unemployed	59500029
66	Discouraged work-seeker	59500029
1347	Other not economically active	59500029
0	Not applicable	59500029
66	Employed	59500030
192	Unemployed	59500030
33	Discouraged work-seeker	59500030
1473	Other not economically active	59500030
0	Not applicable	59500030
90	Employed	59500031
57	Unemployed	59500031
3	Discouraged work-seeker	59500031
1254	Other not economically active	59500031
0	Not applicable	59500031
45	Employed	59500032
51	Unemployed	59500032
6	Discouraged work-seeker	59500032
432	Other not economically active	59500032
0	Not applicable	59500032
78	Employed	59500033
54	Unemployed	59500033
18	Discouraged work-seeker	59500033
984	Other not economically active	59500033
0	Not applicable	59500033
114	Employed	59500034
120	Unemployed	59500034
21	Discouraged work-seeker	59500034
1245	Other not economically active	59500034
0	Not applicable	59500034
114	Employed	59500035
45	Unemployed	59500035
3	Discouraged work-seeker	59500035
978	Other not economically active	59500035
0	Not applicable	59500035
117	Employed	59500036
84	Unemployed	59500036
9	Discouraged work-seeker	59500036
984	Other not economically active	59500036
0	Not applicable	59500036
132	Employed	59500037
210	Unemployed	59500037
42	Discouraged work-seeker	59500037
1983	Other not economically active	59500037
0	Not applicable	59500037
87	Employed	59500038
285	Unemployed	59500038
90	Discouraged work-seeker	59500038
1782	Other not economically active	59500038
0	Not applicable	59500038
36	Employed	59500039
93	Unemployed	59500039
15	Discouraged work-seeker	59500039
375	Other not economically active	59500039
0	Not applicable	59500039
72	Employed	59500040
150	Unemployed	59500040
33	Discouraged work-seeker	59500040
1086	Other not economically active	59500040
0	Not applicable	59500040
114	Employed	59500041
210	Unemployed	59500041
93	Discouraged work-seeker	59500041
1485	Other not economically active	59500041
0	Not applicable	59500041
78	Employed	59500042
240	Unemployed	59500042
84	Discouraged work-seeker	59500042
1911	Other not economically active	59500042
0	Not applicable	59500042
87	Employed	59500043
210	Unemployed	59500043
33	Discouraged work-seeker	59500043
1578	Other not economically active	59500043
0	Not applicable	59500043
60	Employed	59500044
276	Unemployed	59500044
93	Discouraged work-seeker	59500044
2289	Other not economically active	59500044
0	Not applicable	59500044
372	Employed	59500045
150	Unemployed	59500045
75	Discouraged work-seeker	59500045
1728	Other not economically active	59500045
0	Not applicable	59500045
54	Employed	59500046
144	Unemployed	59500046
51	Discouraged work-seeker	59500046
1245	Other not economically active	59500046
0	Not applicable	59500046
87	Employed	59500047
177	Unemployed	59500047
45	Discouraged work-seeker	59500047
1464	Other not economically active	59500047
0	Not applicable	59500047
69	Employed	59500048
96	Unemployed	59500048
24	Discouraged work-seeker	59500048
1425	Other not economically active	59500048
0	Not applicable	59500048
84	Employed	59500049
99	Unemployed	59500049
9	Discouraged work-seeker	59500049
1497	Other not economically active	59500049
0	Not applicable	59500049
81	Employed	59500050
93	Unemployed	59500050
9	Discouraged work-seeker	59500050
984	Other not economically active	59500050
0	Not applicable	59500050
117	Employed	59500051
153	Unemployed	59500051
36	Discouraged work-seeker	59500051
1638	Other not economically active	59500051
0	Not applicable	59500051
87	Employed	59500052
144	Unemployed	59500052
30	Discouraged work-seeker	59500052
1530	Other not economically active	59500052
0	Not applicable	59500052
120	Employed	59500053
255	Unemployed	59500053
99	Discouraged work-seeker	59500053
1467	Other not economically active	59500053
0	Not applicable	59500053
45	Employed	59500054
186	Unemployed	59500054
33	Discouraged work-seeker	59500054
1461	Other not economically active	59500054
0	Not applicable	59500054
93	Employed	59500055
216	Unemployed	59500055
102	Discouraged work-seeker	59500055
2136	Other not economically active	59500055
0	Not applicable	59500055
81	Employed	59500056
249	Unemployed	59500056
33	Discouraged work-seeker	59500056
2187	Other not economically active	59500056
0	Not applicable	59500056
81	Employed	59500057
267	Unemployed	59500057
66	Discouraged work-seeker	59500057
1569	Other not economically active	59500057
0	Not applicable	59500057
108	Employed	59500058
210	Unemployed	59500058
18	Discouraged work-seeker	59500058
1650	Other not economically active	59500058
0	Not applicable	59500058
99	Employed	59500059
270	Unemployed	59500059
105	Discouraged work-seeker	59500059
2109	Other not economically active	59500059
0	Not applicable	59500059
174	Employed	59500060
180	Unemployed	59500060
90	Discouraged work-seeker	59500060
1407	Other not economically active	59500060
0	Not applicable	59500060
63	Employed	59500061
111	Unemployed	59500061
42	Discouraged work-seeker	59500061
1452	Other not economically active	59500061
0	Not applicable	59500061
111	Employed	59500062
141	Unemployed	59500062
57	Discouraged work-seeker	59500062
1359	Other not economically active	59500062
0	Not applicable	59500062
93	Employed	59500063
69	Unemployed	59500063
12	Discouraged work-seeker	59500063
1296	Other not economically active	59500063
0	Not applicable	59500063
96	Employed	59500064
129	Unemployed	59500064
24	Discouraged work-seeker	59500064
1515	Other not economically active	59500064
0	Not applicable	59500064
93	Employed	59500065
156	Unemployed	59500065
30	Discouraged work-seeker	59500065
1527	Other not economically active	59500065
0	Not applicable	59500065
141	Employed	59500066
75	Unemployed	59500066
12	Discouraged work-seeker	59500066
1149	Other not economically active	59500066
0	Not applicable	59500066
78	Employed	59500067
312	Unemployed	59500067
93	Discouraged work-seeker	59500067
2382	Other not economically active	59500067
0	Not applicable	59500067
108	Employed	59500068
180	Unemployed	59500068
18	Discouraged work-seeker	59500068
1977	Other not economically active	59500068
0	Not applicable	59500068
66	Employed	59500069
87	Unemployed	59500069
27	Discouraged work-seeker	59500069
1428	Other not economically active	59500069
0	Not applicable	59500069
39	Employed	59500070
69	Unemployed	59500070
18	Discouraged work-seeker	59500070
1281	Other not economically active	59500070
0	Not applicable	59500070
75	Employed	59500071
150	Unemployed	59500071
42	Discouraged work-seeker	59500071
1419	Other not economically active	59500071
0	Not applicable	59500071
72	Employed	59500072
186	Unemployed	59500072
48	Discouraged work-seeker	59500072
1878	Other not economically active	59500072
0	Not applicable	59500072
78	Employed	59500073
135	Unemployed	59500073
18	Discouraged work-seeker	59500073
1362	Other not economically active	59500073
0	Not applicable	59500073
30	Employed	59500074
120	Unemployed	59500074
15	Discouraged work-seeker	59500074
1047	Other not economically active	59500074
0	Not applicable	59500074
30	Employed	59500075
81	Unemployed	59500075
9	Discouraged work-seeker	59500075
699	Other not economically active	59500075
0	Not applicable	59500075
21	Employed	59500076
126	Unemployed	59500076
27	Discouraged work-seeker	59500076
594	Other not economically active	59500076
0	Not applicable	59500076
75	Employed	59500077
351	Unemployed	59500077
45	Discouraged work-seeker	59500077
2085	Other not economically active	59500077
0	Not applicable	59500077
24	Employed	59500078
153	Unemployed	59500078
54	Discouraged work-seeker	59500078
1404	Other not economically active	59500078
0	Not applicable	59500078
54	Employed	59500079
234	Unemployed	59500079
63	Discouraged work-seeker	59500079
1986	Other not economically active	59500079
0	Not applicable	59500079
75	Employed	59500080
195	Unemployed	59500080
30	Discouraged work-seeker	59500080
1443	Other not economically active	59500080
0	Not applicable	59500080
33	Employed	59500081
153	Unemployed	59500081
21	Discouraged work-seeker	59500081
1197	Other not economically active	59500081
0	Not applicable	59500081
63	Employed	59500082
162	Unemployed	59500082
60	Discouraged work-seeker	59500082
1395	Other not economically active	59500082
0	Not applicable	59500082
48	Employed	59500083
222	Unemployed	59500083
33	Discouraged work-seeker	59500083
1980	Other not economically active	59500083
0	Not applicable	59500083
108	Employed	59500084
201	Unemployed	59500084
48	Discouraged work-seeker	59500084
2007	Other not economically active	59500084
0	Not applicable	59500084
33	Employed	59500085
156	Unemployed	59500085
60	Discouraged work-seeker	59500085
1743	Other not economically active	59500085
0	Not applicable	59500085
57	Employed	59500086
381	Unemployed	59500086
90	Discouraged work-seeker	59500086
1623	Other not economically active	59500086
0	Not applicable	59500086
54	Employed	59500087
156	Unemployed	59500087
18	Discouraged work-seeker	59500087
1311	Other not economically active	59500087
0	Not applicable	59500087
63	Employed	59500088
126	Unemployed	59500088
18	Discouraged work-seeker	59500088
1710	Other not economically active	59500088
0	Not applicable	59500088
51	Employed	59500089
210	Unemployed	59500089
90	Discouraged work-seeker	59500089
981	Other not economically active	59500089
0	Not applicable	59500089
57	Employed	59500090
75	Unemployed	59500090
18	Discouraged work-seeker	59500090
1074	Other not economically active	59500090
0	Not applicable	59500090
72	Employed	59500091
300	Unemployed	59500091
69	Discouraged work-seeker	59500091
1938	Other not economically active	59500091
0	Not applicable	59500091
81	Employed	59500092
156	Unemployed	59500092
15	Discouraged work-seeker	59500092
957	Other not economically active	59500092
0	Not applicable	59500092
57	Employed	59500093
189	Unemployed	59500093
69	Discouraged work-seeker	59500093
1671	Other not economically active	59500093
0	Not applicable	59500093
39	Employed	59500094
177	Unemployed	59500094
72	Discouraged work-seeker	59500094
1626	Other not economically active	59500094
0	Not applicable	59500094
57	Employed	59500095
237	Unemployed	59500095
102	Discouraged work-seeker	59500095
2103	Other not economically active	59500095
0	Not applicable	59500095
45	Employed	59500096
174	Unemployed	59500096
63	Discouraged work-seeker	59500096
1935	Other not economically active	59500096
0	Not applicable	59500096
75	Employed	59500097
66	Unemployed	59500097
9	Discouraged work-seeker	59500097
840	Other not economically active	59500097
0	Not applicable	59500097
102	Employed	59500098
225	Unemployed	59500098
96	Discouraged work-seeker	59500098
2421	Other not economically active	59500098
0	Not applicable	59500098
84	Employed	59500099
264	Unemployed	59500099
39	Discouraged work-seeker	59500099
1806	Other not economically active	59500099
0	Not applicable	59500099
45	Employed	59500100
282	Unemployed	59500100
81	Discouraged work-seeker	59500100
1836	Other not economically active	59500100
0	Not applicable	59500100
84	Employed	59500101
195	Unemployed	59500101
12	Discouraged work-seeker	59500101
705	Other not economically active	59500101
0	Not applicable	59500101
72	Employed	59500102
147	Unemployed	59500102
30	Discouraged work-seeker	59500102
1926	Other not economically active	59500102
0	Not applicable	59500102
60	Employed	59500103
141	Unemployed	59500103
117	Discouraged work-seeker	59500103
1374	Other not economically active	59500103
0	Not applicable	59500103
6	Employed	93301001
30	Unemployed	93301001
9	Discouraged work-seeker	93301001
573	Other not economically active	93301001
0	Not applicable	93301001
3	Employed	93301002
15	Unemployed	93301002
6	Discouraged work-seeker	93301002
459	Other not economically active	93301002
0	Not applicable	93301002
6	Employed	93301003
27	Unemployed	93301003
15	Discouraged work-seeker	93301003
651	Other not economically active	93301003
0	Not applicable	93301003
6	Employed	93301004
24	Unemployed	93301004
24	Discouraged work-seeker	93301004
642	Other not economically active	93301004
0	Not applicable	93301004
9	Employed	93301005
33	Unemployed	93301005
6	Discouraged work-seeker	93301005
648	Other not economically active	93301005
0	Not applicable	93301005
6	Employed	93301006
18	Unemployed	93301006
3	Discouraged work-seeker	93301006
567	Other not economically active	93301006
0	Not applicable	93301006
9	Employed	93301007
48	Unemployed	93301007
0	Discouraged work-seeker	93301007
864	Other not economically active	93301007
0	Not applicable	93301007
9	Employed	93301008
12	Unemployed	93301008
6	Discouraged work-seeker	93301008
597	Other not economically active	93301008
0	Not applicable	93301008
6	Employed	93301009
51	Unemployed	93301009
12	Discouraged work-seeker	93301009
423	Other not economically active	93301009
0	Not applicable	93301009
6	Employed	93301010
21	Unemployed	93301010
15	Discouraged work-seeker	93301010
570	Other not economically active	93301010
0	Not applicable	93301010
6	Employed	93301011
15	Unemployed	93301011
3	Discouraged work-seeker	93301011
525	Other not economically active	93301011
0	Not applicable	93301011
15	Employed	93301012
54	Unemployed	93301012
36	Discouraged work-seeker	93301012
813	Other not economically active	93301012
0	Not applicable	93301012
12	Employed	93301013
39	Unemployed	93301013
9	Discouraged work-seeker	93301013
726	Other not economically active	93301013
0	Not applicable	93301013
6	Employed	93301014
33	Unemployed	93301014
9	Discouraged work-seeker	93301014
750	Other not economically active	93301014
0	Not applicable	93301014
6	Employed	93301015
12	Unemployed	93301015
6	Discouraged work-seeker	93301015
555	Other not economically active	93301015
0	Not applicable	93301015
9	Employed	93301016
18	Unemployed	93301016
9	Discouraged work-seeker	93301016
495	Other not economically active	93301016
0	Not applicable	93301016
9	Employed	93301017
27	Unemployed	93301017
9	Discouraged work-seeker	93301017
405	Other not economically active	93301017
0	Not applicable	93301017
15	Employed	93301018
21	Unemployed	93301018
15	Discouraged work-seeker	93301018
582	Other not economically active	93301018
0	Not applicable	93301018
6	Employed	93301019
27	Unemployed	93301019
21	Discouraged work-seeker	93301019
717	Other not economically active	93301019
0	Not applicable	93301019
6	Employed	93301020
15	Unemployed	93301020
12	Discouraged work-seeker	93301020
555	Other not economically active	93301020
0	Not applicable	93301020
6	Employed	93301021
30	Unemployed	93301021
3	Discouraged work-seeker	93301021
612	Other not economically active	93301021
0	Not applicable	93301021
9	Employed	93301022
33	Unemployed	93301022
3	Discouraged work-seeker	93301022
549	Other not economically active	93301022
0	Not applicable	93301022
12	Employed	93301023
24	Unemployed	93301023
15	Discouraged work-seeker	93301023
504	Other not economically active	93301023
0	Not applicable	93301023
12	Employed	93301024
15	Unemployed	93301024
9	Discouraged work-seeker	93301024
681	Other not economically active	93301024
0	Not applicable	93301024
3	Employed	93301025
72	Unemployed	93301025
24	Discouraged work-seeker	93301025
816	Other not economically active	93301025
0	Not applicable	93301025
9	Employed	93301026
24	Unemployed	93301026
21	Discouraged work-seeker	93301026
564	Other not economically active	93301026
0	Not applicable	93301026
3	Employed	93301027
33	Unemployed	93301027
12	Discouraged work-seeker	93301027
480	Other not economically active	93301027
0	Not applicable	93301027
3	Employed	93301028
15	Unemployed	93301028
18	Discouraged work-seeker	93301028
570	Other not economically active	93301028
0	Not applicable	93301028
6	Employed	93301029
39	Unemployed	93301029
18	Discouraged work-seeker	93301029
711	Other not economically active	93301029
0	Not applicable	93301029
12	Employed	93301030
66	Unemployed	93301030
6	Discouraged work-seeker	93301030
411	Other not economically active	93301030
0	Not applicable	93301030
6	Employed	93302001
27	Unemployed	93302001
6	Discouraged work-seeker	93302001
552	Other not economically active	93302001
0	Not applicable	93302001
3	Employed	93302002
24	Unemployed	93302002
3	Discouraged work-seeker	93302002
339	Other not economically active	93302002
0	Not applicable	93302002
3	Employed	93302003
27	Unemployed	93302003
0	Discouraged work-seeker	93302003
384	Other not economically active	93302003
0	Not applicable	93302003
15	Employed	93302004
30	Unemployed	93302004
3	Discouraged work-seeker	93302004
507	Other not economically active	93302004
0	Not applicable	93302004
15	Employed	93302005
33	Unemployed	93302005
6	Discouraged work-seeker	93302005
444	Other not economically active	93302005
0	Not applicable	93302005
3	Employed	93302006
30	Unemployed	93302006
9	Discouraged work-seeker	93302006
540	Other not economically active	93302006
0	Not applicable	93302006
3	Employed	93302007
12	Unemployed	93302007
0	Discouraged work-seeker	93302007
519	Other not economically active	93302007
0	Not applicable	93302007
6	Employed	93302008
60	Unemployed	93302008
9	Discouraged work-seeker	93302008
480	Other not economically active	93302008
0	Not applicable	93302008
9	Employed	93302009
27	Unemployed	93302009
6	Discouraged work-seeker	93302009
678	Other not economically active	93302009
0	Not applicable	93302009
3	Employed	93302010
27	Unemployed	93302010
0	Discouraged work-seeker	93302010
726	Other not economically active	93302010
0	Not applicable	93302010
6	Employed	93302011
27	Unemployed	93302011
12	Discouraged work-seeker	93302011
669	Other not economically active	93302011
0	Not applicable	93302011
15	Employed	93302012
18	Unemployed	93302012
9	Discouraged work-seeker	93302012
444	Other not economically active	93302012
0	Not applicable	93302012
12	Employed	93302013
18	Unemployed	93302013
12	Discouraged work-seeker	93302013
621	Other not economically active	93302013
0	Not applicable	93302013
30	Employed	93302014
0	Unemployed	93302014
12	Discouraged work-seeker	93302014
384	Other not economically active	93302014
0	Not applicable	93302014
6	Employed	93302015
21	Unemployed	93302015
0	Discouraged work-seeker	93302015
690	Other not economically active	93302015
0	Not applicable	93302015
3	Employed	93302016
18	Unemployed	93302016
3	Discouraged work-seeker	93302016
588	Other not economically active	93302016
0	Not applicable	93302016
0	Employed	93302017
24	Unemployed	93302017
6	Discouraged work-seeker	93302017
663	Other not economically active	93302017
0	Not applicable	93302017
12	Employed	93302018
24	Unemployed	93302018
18	Discouraged work-seeker	93302018
651	Other not economically active	93302018
0	Not applicable	93302018
12	Employed	93302019
18	Unemployed	93302019
12	Discouraged work-seeker	93302019
633	Other not economically active	93302019
0	Not applicable	93302019
6	Employed	93302020
24	Unemployed	93302020
6	Discouraged work-seeker	93302020
618	Other not economically active	93302020
0	Not applicable	93302020
6	Employed	93302021
12	Unemployed	93302021
9	Discouraged work-seeker	93302021
675	Other not economically active	93302021
0	Not applicable	93302021
9	Employed	93302022
21	Unemployed	93302022
15	Discouraged work-seeker	93302022
696	Other not economically active	93302022
0	Not applicable	93302022
18	Employed	93302023
9	Unemployed	93302023
24	Discouraged work-seeker	93302023
591	Other not economically active	93302023
0	Not applicable	93302023
0	Employed	93302024
6	Unemployed	93302024
6	Discouraged work-seeker	93302024
399	Other not economically active	93302024
0	Not applicable	93302024
6	Employed	93302025
18	Unemployed	93302025
3	Discouraged work-seeker	93302025
567	Other not economically active	93302025
0	Not applicable	93302025
6	Employed	93302026
21	Unemployed	93302026
9	Discouraged work-seeker	93302026
597	Other not economically active	93302026
0	Not applicable	93302026
6	Employed	93302027
18	Unemployed	93302027
18	Discouraged work-seeker	93302027
411	Other not economically active	93302027
0	Not applicable	93302027
0	Employed	93302028
9	Unemployed	93302028
3	Discouraged work-seeker	93302028
372	Other not economically active	93302028
0	Not applicable	93302028
84	Employed	93302029
42	Unemployed	93302029
12	Discouraged work-seeker	93302029
279	Other not economically active	93302029
0	Not applicable	93302029
15	Employed	93303001
30	Unemployed	93303001
12	Discouraged work-seeker	93303001
876	Other not economically active	93303001
0	Not applicable	93303001
6	Employed	93303002
30	Unemployed	93303002
12	Discouraged work-seeker	93303002
813	Other not economically active	93303002
0	Not applicable	93303002
6	Employed	93303003
12	Unemployed	93303003
30	Discouraged work-seeker	93303003
816	Other not economically active	93303003
0	Not applicable	93303003
21	Employed	93303004
39	Unemployed	93303004
0	Discouraged work-seeker	93303004
894	Other not economically active	93303004
0	Not applicable	93303004
18	Employed	93303005
48	Unemployed	93303005
18	Discouraged work-seeker	93303005
873	Other not economically active	93303005
0	Not applicable	93303005
3	Employed	93303006
24	Unemployed	93303006
3	Discouraged work-seeker	93303006
756	Other not economically active	93303006
0	Not applicable	93303006
12	Employed	93303007
42	Unemployed	93303007
12	Discouraged work-seeker	93303007
711	Other not economically active	93303007
0	Not applicable	93303007
9	Employed	93303008
33	Unemployed	93303008
6	Discouraged work-seeker	93303008
651	Other not economically active	93303008
0	Not applicable	93303008
9	Employed	93303009
114	Unemployed	93303009
6	Discouraged work-seeker	93303009
1161	Other not economically active	93303009
0	Not applicable	93303009
6	Employed	93303010
27	Unemployed	93303010
9	Discouraged work-seeker	93303010
381	Other not economically active	93303010
0	Not applicable	93303010
15	Employed	93303011
36	Unemployed	93303011
6	Discouraged work-seeker	93303011
501	Other not economically active	93303011
0	Not applicable	93303011
27	Employed	93303012
48	Unemployed	93303012
15	Discouraged work-seeker	93303012
648	Other not economically active	93303012
0	Not applicable	93303012
36	Employed	93303013
33	Unemployed	93303013
6	Discouraged work-seeker	93303013
639	Other not economically active	93303013
0	Not applicable	93303013
45	Employed	93303014
24	Unemployed	93303014
0	Discouraged work-seeker	93303014
366	Other not economically active	93303014
0	Not applicable	93303014
18	Employed	93303015
6	Unemployed	93303015
0	Discouraged work-seeker	93303015
186	Other not economically active	93303015
0	Not applicable	93303015
93	Employed	93303016
87	Unemployed	93303016
27	Discouraged work-seeker	93303016
714	Other not economically active	93303016
0	Not applicable	93303016
18	Employed	93303017
33	Unemployed	93303017
9	Discouraged work-seeker	93303017
690	Other not economically active	93303017
0	Not applicable	93303017
9	Employed	93303018
45	Unemployed	93303018
9	Discouraged work-seeker	93303018
738	Other not economically active	93303018
0	Not applicable	93303018
9	Employed	93303019
15	Unemployed	93303019
6	Discouraged work-seeker	93303019
507	Other not economically active	93303019
0	Not applicable	93303019
12	Employed	93303020
45	Unemployed	93303020
15	Discouraged work-seeker	93303020
669	Other not economically active	93303020
0	Not applicable	93303020
12	Employed	93303021
24	Unemployed	93303021
0	Discouraged work-seeker	93303021
894	Other not economically active	93303021
0	Not applicable	93303021
12	Employed	93303022
27	Unemployed	93303022
6	Discouraged work-seeker	93303022
549	Other not economically active	93303022
0	Not applicable	93303022
9	Employed	93303023
15	Unemployed	93303023
18	Discouraged work-seeker	93303023
468	Other not economically active	93303023
0	Not applicable	93303023
6	Employed	93303024
18	Unemployed	93303024
6	Discouraged work-seeker	93303024
609	Other not economically active	93303024
0	Not applicable	93303024
9	Employed	93303025
24	Unemployed	93303025
18	Discouraged work-seeker	93303025
708	Other not economically active	93303025
0	Not applicable	93303025
6	Employed	93303026
30	Unemployed	93303026
0	Discouraged work-seeker	93303026
621	Other not economically active	93303026
0	Not applicable	93303026
9	Employed	93303027
36	Unemployed	93303027
3	Discouraged work-seeker	93303027
786	Other not economically active	93303027
0	Not applicable	93303027
6	Employed	93303028
51	Unemployed	93303028
6	Discouraged work-seeker	93303028
753	Other not economically active	93303028
0	Not applicable	93303028
12	Employed	93303029
60	Unemployed	93303029
12	Discouraged work-seeker	93303029
966	Other not economically active	93303029
0	Not applicable	93303029
6	Employed	93303030
54	Unemployed	93303030
3	Discouraged work-seeker	93303030
402	Other not economically active	93303030
0	Not applicable	93303030
9	Employed	93303031
21	Unemployed	93303031
3	Discouraged work-seeker	93303031
705	Other not economically active	93303031
0	Not applicable	93303031
6	Employed	93303032
42	Unemployed	93303032
15	Discouraged work-seeker	93303032
744	Other not economically active	93303032
0	Not applicable	93303032
48	Employed	93303033
84	Unemployed	93303033
15	Discouraged work-seeker	93303033
1080	Other not economically active	93303033
0	Not applicable	93303033
9	Employed	93303034
48	Unemployed	93303034
9	Discouraged work-seeker	93303034
804	Other not economically active	93303034
0	Not applicable	93303034
15	Employed	93304001
57	Unemployed	93304001
12	Discouraged work-seeker	93304001
579	Other not economically active	93304001
0	Not applicable	93304001
3	Employed	93304002
42	Unemployed	93304002
6	Discouraged work-seeker	93304002
291	Other not economically active	93304002
0	Not applicable	93304002
9	Employed	93304003
18	Unemployed	93304003
3	Discouraged work-seeker	93304003
402	Other not economically active	93304003
0	Not applicable	93304003
12	Employed	93304004
15	Unemployed	93304004
3	Discouraged work-seeker	93304004
354	Other not economically active	93304004
0	Not applicable	93304004
6	Employed	93304005
9	Unemployed	93304005
0	Discouraged work-seeker	93304005
288	Other not economically active	93304005
0	Not applicable	93304005
3	Employed	93304006
21	Unemployed	93304006
0	Discouraged work-seeker	93304006
306	Other not economically active	93304006
0	Not applicable	93304006
3	Employed	93304007
15	Unemployed	93304007
0	Discouraged work-seeker	93304007
303	Other not economically active	93304007
0	Not applicable	93304007
3	Employed	93304008
39	Unemployed	93304008
9	Discouraged work-seeker	93304008
393	Other not economically active	93304008
0	Not applicable	93304008
0	Employed	93304009
18	Unemployed	93304009
3	Discouraged work-seeker	93304009
390	Other not economically active	93304009
0	Not applicable	93304009
9	Employed	93304010
27	Unemployed	93304010
3	Discouraged work-seeker	93304010
396	Other not economically active	93304010
0	Not applicable	93304010
12	Employed	93304011
9	Unemployed	93304011
9	Discouraged work-seeker	93304011
207	Other not economically active	93304011
0	Not applicable	93304011
9	Employed	93304012
12	Unemployed	93304012
0	Discouraged work-seeker	93304012
264	Other not economically active	93304012
0	Not applicable	93304012
3	Employed	93304013
24	Unemployed	93304013
27	Discouraged work-seeker	93304013
552	Other not economically active	93304013
0	Not applicable	93304013
0	Employed	93304014
3	Unemployed	93304014
3	Discouraged work-seeker	93304014
183	Other not economically active	93304014
0	Not applicable	93304014
9	Employed	93304015
33	Unemployed	93304015
3	Discouraged work-seeker	93304015
570	Other not economically active	93304015
0	Not applicable	93304015
9	Employed	93304016
63	Unemployed	93304016
21	Discouraged work-seeker	93304016
963	Other not economically active	93304016
0	Not applicable	93304016
27	Employed	93304017
66	Unemployed	93304017
21	Discouraged work-seeker	93304017
927	Other not economically active	93304017
0	Not applicable	93304017
12	Employed	93304018
51	Unemployed	93304018
3	Discouraged work-seeker	93304018
489	Other not economically active	93304018
0	Not applicable	93304018
6	Employed	93305001
9	Unemployed	93305001
3	Discouraged work-seeker	93305001
129	Other not economically active	93305001
0	Not applicable	93305001
9	Employed	93305002
18	Unemployed	93305002
3	Discouraged work-seeker	93305002
330	Other not economically active	93305002
0	Not applicable	93305002
9	Employed	93305003
24	Unemployed	93305003
3	Discouraged work-seeker	93305003
423	Other not economically active	93305003
0	Not applicable	93305003
3	Employed	93305004
12	Unemployed	93305004
15	Discouraged work-seeker	93305004
495	Other not economically active	93305004
0	Not applicable	93305004
6	Employed	93305005
24	Unemployed	93305005
18	Discouraged work-seeker	93305005
423	Other not economically active	93305005
0	Not applicable	93305005
9	Employed	93305006
21	Unemployed	93305006
12	Discouraged work-seeker	93305006
522	Other not economically active	93305006
0	Not applicable	93305006
3	Employed	93305007
21	Unemployed	93305007
12	Discouraged work-seeker	93305007
462	Other not economically active	93305007
0	Not applicable	93305007
6	Employed	93305008
21	Unemployed	93305008
12	Discouraged work-seeker	93305008
543	Other not economically active	93305008
0	Not applicable	93305008
6	Employed	93305009
18	Unemployed	93305009
6	Discouraged work-seeker	93305009
450	Other not economically active	93305009
0	Not applicable	93305009
6	Employed	93305010
33	Unemployed	93305010
12	Discouraged work-seeker	93305010
471	Other not economically active	93305010
0	Not applicable	93305010
12	Employed	93305011
39	Unemployed	93305011
6	Discouraged work-seeker	93305011
681	Other not economically active	93305011
0	Not applicable	93305011
15	Employed	93305012
33	Unemployed	93305012
18	Discouraged work-seeker	93305012
597	Other not economically active	93305012
0	Not applicable	93305012
9	Employed	93305013
15	Unemployed	93305013
15	Discouraged work-seeker	93305013
408	Other not economically active	93305013
0	Not applicable	93305013
6	Employed	93305014
12	Unemployed	93305014
6	Discouraged work-seeker	93305014
339	Other not economically active	93305014
0	Not applicable	93305014
3	Employed	93402001
9	Unemployed	93402001
6	Discouraged work-seeker	93402001
516	Other not economically active	93402001
0	Not applicable	93402001
15	Employed	93402002
18	Unemployed	93402002
12	Discouraged work-seeker	93402002
543	Other not economically active	93402002
0	Not applicable	93402002
9	Employed	93402003
21	Unemployed	93402003
3	Discouraged work-seeker	93402003
552	Other not economically active	93402003
0	Not applicable	93402003
3	Employed	93402004
27	Unemployed	93402004
0	Discouraged work-seeker	93402004
465	Other not economically active	93402004
0	Not applicable	93402004
3	Employed	93402005
24	Unemployed	93402005
6	Discouraged work-seeker	93402005
744	Other not economically active	93402005
0	Not applicable	93402005
3	Employed	93402006
15	Unemployed	93402006
18	Discouraged work-seeker	93402006
465	Other not economically active	93402006
0	Not applicable	93402006
12	Employed	93402007
18	Unemployed	93402007
12	Discouraged work-seeker	93402007
519	Other not economically active	93402007
0	Not applicable	93402007
9	Employed	93402008
30	Unemployed	93402008
3	Discouraged work-seeker	93402008
390	Other not economically active	93402008
0	Not applicable	93402008
12	Employed	93402009
42	Unemployed	93402009
18	Discouraged work-seeker	93402009
681	Other not economically active	93402009
0	Not applicable	93402009
18	Employed	93402010
18	Unemployed	93402010
18	Discouraged work-seeker	93402010
480	Other not economically active	93402010
0	Not applicable	93402010
6	Employed	93402011
27	Unemployed	93402011
24	Discouraged work-seeker	93402011
663	Other not economically active	93402011
0	Not applicable	93402011
12	Employed	93402012
54	Unemployed	93402012
15	Discouraged work-seeker	93402012
528	Other not economically active	93402012
0	Not applicable	93402012
6	Employed	93402013
30	Unemployed	93402013
9	Discouraged work-seeker	93402013
384	Other not economically active	93402013
0	Not applicable	93402013
12	Employed	93403001
42	Unemployed	93403001
96	Discouraged work-seeker	93403001
1308	Other not economically active	93403001
0	Not applicable	93403001
9	Employed	93403002
48	Unemployed	93403002
27	Discouraged work-seeker	93403002
897	Other not economically active	93403002
0	Not applicable	93403002
15	Employed	93403003
33	Unemployed	93403003
15	Discouraged work-seeker	93403003
1134	Other not economically active	93403003
0	Not applicable	93403003
18	Employed	93403004
42	Unemployed	93403004
36	Discouraged work-seeker	93403004
1203	Other not economically active	93403004
0	Not applicable	93403004
24	Employed	93403005
51	Unemployed	93403005
6	Discouraged work-seeker	93403005
1158	Other not economically active	93403005
0	Not applicable	93403005
15	Employed	93403006
36	Unemployed	93403006
21	Discouraged work-seeker	93403006
1224	Other not economically active	93403006
0	Not applicable	93403006
21	Employed	93403007
48	Unemployed	93403007
66	Discouraged work-seeker	93403007
1452	Other not economically active	93403007
0	Not applicable	93403007
12	Employed	93403008
39	Unemployed	93403008
18	Discouraged work-seeker	93403008
1227	Other not economically active	93403008
0	Not applicable	93403008
6	Employed	93403009
24	Unemployed	93403009
6	Discouraged work-seeker	93403009
1161	Other not economically active	93403009
0	Not applicable	93403009
51	Employed	93403010
12	Unemployed	93403010
21	Discouraged work-seeker	93403010
1161	Other not economically active	93403010
0	Not applicable	93403010
12	Employed	93403011
60	Unemployed	93403011
30	Discouraged work-seeker	93403011
1416	Other not economically active	93403011
0	Not applicable	93403011
12	Employed	93403012
21	Unemployed	93403012
24	Discouraged work-seeker	93403012
1158	Other not economically active	93403012
0	Not applicable	93403012
27	Employed	93403013
39	Unemployed	93403013
9	Discouraged work-seeker	93403013
1254	Other not economically active	93403013
0	Not applicable	93403013
30	Employed	93403014
48	Unemployed	93403014
18	Discouraged work-seeker	93403014
1125	Other not economically active	93403014
0	Not applicable	93403014
30	Employed	93403015
75	Unemployed	93403015
21	Discouraged work-seeker	93403015
1284	Other not economically active	93403015
0	Not applicable	93403015
6	Employed	93403016
96	Unemployed	93403016
51	Discouraged work-seeker	93403016
921	Other not economically active	93403016
0	Not applicable	93403016
27	Employed	93403017
63	Unemployed	93403017
231	Discouraged work-seeker	93403017
828	Other not economically active	93403017
0	Not applicable	93403017
36	Employed	93403018
45	Unemployed	93403018
12	Discouraged work-seeker	93403018
1254	Other not economically active	93403018
0	Not applicable	93403018
15	Employed	93403019
51	Unemployed	93403019
18	Discouraged work-seeker	93403019
1152	Other not economically active	93403019
0	Not applicable	93403019
33	Employed	93403020
33	Unemployed	93403020
15	Discouraged work-seeker	93403020
1275	Other not economically active	93403020
0	Not applicable	93403020
24	Employed	93403021
48	Unemployed	93403021
18	Discouraged work-seeker	93403021
1191	Other not economically active	93403021
0	Not applicable	93403021
18	Employed	93403022
66	Unemployed	93403022
15	Discouraged work-seeker	93403022
993	Other not economically active	93403022
0	Not applicable	93403022
21	Employed	93403023
87	Unemployed	93403023
9	Discouraged work-seeker	93403023
987	Other not economically active	93403023
0	Not applicable	93403023
24	Employed	93403024
45	Unemployed	93403024
18	Discouraged work-seeker	93403024
1317	Other not economically active	93403024
0	Not applicable	93403024
21	Employed	93403025
63	Unemployed	93403025
12	Discouraged work-seeker	93403025
1071	Other not economically active	93403025
0	Not applicable	93403025
15	Employed	93403026
33	Unemployed	93403026
9	Discouraged work-seeker	93403026
1080	Other not economically active	93403026
0	Not applicable	93403026
21	Employed	93403027
69	Unemployed	93403027
9	Discouraged work-seeker	93403027
1248	Other not economically active	93403027
0	Not applicable	93403027
21	Employed	93403028
51	Unemployed	93403028
3	Discouraged work-seeker	93403028
1005	Other not economically active	93403028
0	Not applicable	93403028
15	Employed	93403029
75	Unemployed	93403029
18	Discouraged work-seeker	93403029
1248	Other not economically active	93403029
0	Not applicable	93403029
33	Employed	93403030
36	Unemployed	93403030
33	Discouraged work-seeker	93403030
1068	Other not economically active	93403030
0	Not applicable	93403030
9	Employed	93403031
54	Unemployed	93403031
27	Discouraged work-seeker	93403031
912	Other not economically active	93403031
0	Not applicable	93403031
15	Employed	93403032
48	Unemployed	93403032
6	Discouraged work-seeker	93403032
1020	Other not economically active	93403032
0	Not applicable	93403032
18	Employed	93403033
48	Unemployed	93403033
15	Discouraged work-seeker	93403033
1278	Other not economically active	93403033
0	Not applicable	93403033
12	Employed	93403034
81	Unemployed	93403034
9	Discouraged work-seeker	93403034
1098	Other not economically active	93403034
0	Not applicable	93403034
30	Employed	93403035
54	Unemployed	93403035
27	Discouraged work-seeker	93403035
1245	Other not economically active	93403035
0	Not applicable	93403035
21	Employed	93403036
78	Unemployed	93403036
0	Discouraged work-seeker	93403036
867	Other not economically active	93403036
0	Not applicable	93403036
18	Employed	93403037
42	Unemployed	93403037
9	Discouraged work-seeker	93403037
987	Other not economically active	93403037
0	Not applicable	93403037
15	Employed	93403038
18	Unemployed	93403038
21	Discouraged work-seeker	93403038
1038	Other not economically active	93403038
0	Not applicable	93403038
9	Employed	93403039
39	Unemployed	93403039
21	Discouraged work-seeker	93403039
1014	Other not economically active	93403039
0	Not applicable	93403039
3	Employed	93403040
33	Unemployed	93403040
9	Discouraged work-seeker	93403040
975	Other not economically active	93403040
0	Not applicable	93403040
129	Employed	93401001
72	Unemployed	93401001
18	Discouraged work-seeker	93401001
597	Other not economically active	93401001
0	Not applicable	93401001
96	Employed	93401002
66	Unemployed	93401002
24	Discouraged work-seeker	93401002
309	Other not economically active	93401002
0	Not applicable	93401002
18	Employed	93401003
60	Unemployed	93401003
3	Discouraged work-seeker	93401003
564	Other not economically active	93401003
0	Not applicable	93401003
6	Employed	93401004
6	Unemployed	93401004
3	Discouraged work-seeker	93401004
174	Other not economically active	93401004
0	Not applicable	93401004
24	Employed	93401005
69	Unemployed	93401005
15	Discouraged work-seeker	93401005
498	Other not economically active	93401005
0	Not applicable	93401005
21	Employed	93401006
84	Unemployed	93401006
3	Discouraged work-seeker	93401006
390	Other not economically active	93401006
0	Not applicable	93401006
6	Employed	93404001
27	Unemployed	93404001
12	Discouraged work-seeker	93404001
924	Other not economically active	93404001
0	Not applicable	93404001
15	Employed	93404002
54	Unemployed	93404002
30	Discouraged work-seeker	93404002
888	Other not economically active	93404002
0	Not applicable	93404002
24	Employed	93404003
60	Unemployed	93404003
9	Discouraged work-seeker	93404003
1023	Other not economically active	93404003
0	Not applicable	93404003
6	Employed	93404004
39	Unemployed	93404004
18	Discouraged work-seeker	93404004
1311	Other not economically active	93404004
0	Not applicable	93404004
9	Employed	93404005
30	Unemployed	93404005
18	Discouraged work-seeker	93404005
942	Other not economically active	93404005
0	Not applicable	93404005
9	Employed	93404006
33	Unemployed	93404006
15	Discouraged work-seeker	93404006
888	Other not economically active	93404006
0	Not applicable	93404006
18	Employed	93404007
33	Unemployed	93404007
0	Discouraged work-seeker	93404007
897	Other not economically active	93404007
0	Not applicable	93404007
21	Employed	93404008
39	Unemployed	93404008
27	Discouraged work-seeker	93404008
843	Other not economically active	93404008
0	Not applicable	93404008
9	Employed	93404009
54	Unemployed	93404009
9	Discouraged work-seeker	93404009
930	Other not economically active	93404009
0	Not applicable	93404009
12	Employed	93404010
27	Unemployed	93404010
15	Discouraged work-seeker	93404010
675	Other not economically active	93404010
0	Not applicable	93404010
15	Employed	93404011
30	Unemployed	93404011
12	Discouraged work-seeker	93404011
771	Other not economically active	93404011
0	Not applicable	93404011
3	Employed	93404012
24	Unemployed	93404012
12	Discouraged work-seeker	93404012
777	Other not economically active	93404012
0	Not applicable	93404012
9	Employed	93404013
78	Unemployed	93404013
27	Discouraged work-seeker	93404013
831	Other not economically active	93404013
0	Not applicable	93404013
15	Employed	93404014
36	Unemployed	93404014
15	Discouraged work-seeker	93404014
921	Other not economically active	93404014
0	Not applicable	93404014
18	Employed	93404015
30	Unemployed	93404015
12	Discouraged work-seeker	93404015
1134	Other not economically active	93404015
0	Not applicable	93404015
15	Employed	93404016
54	Unemployed	93404016
6	Discouraged work-seeker	93404016
960	Other not economically active	93404016
0	Not applicable	93404016
30	Employed	93404017
51	Unemployed	93404017
6	Discouraged work-seeker	93404017
795	Other not economically active	93404017
0	Not applicable	93404017
15	Employed	93404018
21	Unemployed	93404018
24	Discouraged work-seeker	93404018
849	Other not economically active	93404018
0	Not applicable	93404018
9	Employed	93404019
18	Unemployed	93404019
12	Discouraged work-seeker	93404019
966	Other not economically active	93404019
0	Not applicable	93404019
66	Employed	93404020
57	Unemployed	93404020
9	Discouraged work-seeker	93404020
885	Other not economically active	93404020
0	Not applicable	93404020
111	Employed	93404021
45	Unemployed	93404021
15	Discouraged work-seeker	93404021
675	Other not economically active	93404021
0	Not applicable	93404021
15	Employed	93404022
60	Unemployed	93404022
9	Discouraged work-seeker	93404022
1059	Other not economically active	93404022
0	Not applicable	93404022
9	Employed	93404023
24	Unemployed	93404023
3	Discouraged work-seeker	93404023
711	Other not economically active	93404023
0	Not applicable	93404023
15	Employed	93404024
51	Unemployed	93404024
18	Discouraged work-seeker	93404024
1143	Other not economically active	93404024
0	Not applicable	93404024
24	Employed	93404025
30	Unemployed	93404025
30	Discouraged work-seeker	93404025
1068	Other not economically active	93404025
0	Not applicable	93404025
33	Employed	93404026
24	Unemployed	93404026
15	Discouraged work-seeker	93404026
858	Other not economically active	93404026
0	Not applicable	93404026
12	Employed	93404027
45	Unemployed	93404027
9	Discouraged work-seeker	93404027
759	Other not economically active	93404027
0	Not applicable	93404027
24	Employed	93404028
57	Unemployed	93404028
24	Discouraged work-seeker	93404028
975	Other not economically active	93404028
0	Not applicable	93404028
9	Employed	93404029
42	Unemployed	93404029
12	Discouraged work-seeker	93404029
807	Other not economically active	93404029
0	Not applicable	93404029
12	Employed	93404030
36	Unemployed	93404030
9	Discouraged work-seeker	93404030
681	Other not economically active	93404030
0	Not applicable	93404030
21	Employed	93404031
63	Unemployed	93404031
9	Discouraged work-seeker	93404031
741	Other not economically active	93404031
0	Not applicable	93404031
12	Employed	93404032
48	Unemployed	93404032
18	Discouraged work-seeker	93404032
1071	Other not economically active	93404032
0	Not applicable	93404032
9	Employed	93404033
75	Unemployed	93404033
18	Discouraged work-seeker	93404033
1044	Other not economically active	93404033
0	Not applicable	93404033
21	Employed	93404034
69	Unemployed	93404034
18	Discouraged work-seeker	93404034
1023	Other not economically active	93404034
0	Not applicable	93404034
12	Employed	93404035
42	Unemployed	93404035
15	Discouraged work-seeker	93404035
1044	Other not economically active	93404035
0	Not applicable	93404035
9	Employed	93404036
36	Unemployed	93404036
15	Discouraged work-seeker	93404036
1218	Other not economically active	93404036
0	Not applicable	93404036
12	Employed	93404037
24	Unemployed	93404037
18	Discouraged work-seeker	93404037
921	Other not economically active	93404037
0	Not applicable	93404037
15	Employed	93404038
66	Unemployed	93404038
9	Discouraged work-seeker	93404038
792	Other not economically active	93404038
0	Not applicable	93404038
6	Employed	93501001
15	Unemployed	93501001
3	Discouraged work-seeker	93501001
489	Other not economically active	93501001
0	Not applicable	93501001
6	Employed	93501002
18	Unemployed	93501002
3	Discouraged work-seeker	93501002
609	Other not economically active	93501002
0	Not applicable	93501002
3	Employed	93501003
21	Unemployed	93501003
15	Discouraged work-seeker	93501003
594	Other not economically active	93501003
0	Not applicable	93501003
3	Employed	93501004
15	Unemployed	93501004
6	Discouraged work-seeker	93501004
540	Other not economically active	93501004
0	Not applicable	93501004
9	Employed	93501005
24	Unemployed	93501005
9	Discouraged work-seeker	93501005
537	Other not economically active	93501005
0	Not applicable	93501005
9	Employed	93501006
12	Unemployed	93501006
3	Discouraged work-seeker	93501006
681	Other not economically active	93501006
0	Not applicable	93501006
6	Employed	93501007
6	Unemployed	93501007
3	Discouraged work-seeker	93501007
768	Other not economically active	93501007
0	Not applicable	93501007
3	Employed	93501008
9	Unemployed	93501008
12	Discouraged work-seeker	93501008
429	Other not economically active	93501008
0	Not applicable	93501008
9	Employed	93501009
33	Unemployed	93501009
9	Discouraged work-seeker	93501009
849	Other not economically active	93501009
0	Not applicable	93501009
6	Employed	93501010
36	Unemployed	93501010
30	Discouraged work-seeker	93501010
675	Other not economically active	93501010
0	Not applicable	93501010
15	Employed	93501011
6	Unemployed	93501011
0	Discouraged work-seeker	93501011
618	Other not economically active	93501011
0	Not applicable	93501011
12	Employed	93501012
30	Unemployed	93501012
0	Discouraged work-seeker	93501012
483	Other not economically active	93501012
0	Not applicable	93501012
3	Employed	93501013
54	Unemployed	93501013
3	Discouraged work-seeker	93501013
519	Other not economically active	93501013
0	Not applicable	93501013
15	Employed	93501014
12	Unemployed	93501014
12	Discouraged work-seeker	93501014
633	Other not economically active	93501014
0	Not applicable	93501014
6	Employed	93501015
21	Unemployed	93501015
6	Discouraged work-seeker	93501015
513	Other not economically active	93501015
0	Not applicable	93501015
3	Employed	93501016
6	Unemployed	93501016
6	Discouraged work-seeker	93501016
522	Other not economically active	93501016
0	Not applicable	93501016
15	Employed	93501017
42	Unemployed	93501017
0	Discouraged work-seeker	93501017
510	Other not economically active	93501017
0	Not applicable	93501017
21	Employed	93501018
30	Unemployed	93501018
15	Discouraged work-seeker	93501018
546	Other not economically active	93501018
0	Not applicable	93501018
15	Employed	93501019
33	Unemployed	93501019
21	Discouraged work-seeker	93501019
1020	Other not economically active	93501019
0	Not applicable	93501019
6	Employed	93501020
15	Unemployed	93501020
3	Discouraged work-seeker	93501020
510	Other not economically active	93501020
0	Not applicable	93501020
66	Employed	93501021
24	Unemployed	93501021
3	Discouraged work-seeker	93501021
450	Other not economically active	93501021
0	Not applicable	93501021
9	Employed	93502001
12	Unemployed	93502001
3	Discouraged work-seeker	93502001
444	Other not economically active	93502001
0	Not applicable	93502001
3	Employed	93502002
18	Unemployed	93502002
0	Discouraged work-seeker	93502002
546	Other not economically active	93502002
0	Not applicable	93502002
3	Employed	93502003
21	Unemployed	93502003
6	Discouraged work-seeker	93502003
582	Other not economically active	93502003
0	Not applicable	93502003
3	Employed	93502004
18	Unemployed	93502004
3	Discouraged work-seeker	93502004
549	Other not economically active	93502004
0	Not applicable	93502004
9	Employed	93502005
9	Unemployed	93502005
3	Discouraged work-seeker	93502005
519	Other not economically active	93502005
0	Not applicable	93502005
3	Employed	93502006
6	Unemployed	93502006
0	Discouraged work-seeker	93502006
441	Other not economically active	93502006
0	Not applicable	93502006
9	Employed	93502007
45	Unemployed	93502007
0	Discouraged work-seeker	93502007
714	Other not economically active	93502007
0	Not applicable	93502007
6	Employed	93502008
30	Unemployed	93502008
0	Discouraged work-seeker	93502008
537	Other not economically active	93502008
0	Not applicable	93502008
18	Employed	93502009
6	Unemployed	93502009
0	Discouraged work-seeker	93502009
537	Other not economically active	93502009
0	Not applicable	93502009
0	Employed	93502010
21	Unemployed	93502010
6	Discouraged work-seeker	93502010
633	Other not economically active	93502010
0	Not applicable	93502010
6	Employed	93502011
15	Unemployed	93502011
6	Discouraged work-seeker	93502011
411	Other not economically active	93502011
0	Not applicable	93502011
3	Employed	93502012
30	Unemployed	93502012
3	Discouraged work-seeker	93502012
441	Other not economically active	93502012
0	Not applicable	93502012
6	Employed	93502013
36	Unemployed	93502013
3	Discouraged work-seeker	93502013
423	Other not economically active	93502013
0	Not applicable	93502013
9	Employed	93502014
15	Unemployed	93502014
9	Discouraged work-seeker	93502014
528	Other not economically active	93502014
0	Not applicable	93502014
6	Employed	93502015
18	Unemployed	93502015
3	Discouraged work-seeker	93502015
570	Other not economically active	93502015
0	Not applicable	93502015
6	Employed	93502016
15	Unemployed	93502016
9	Discouraged work-seeker	93502016
669	Other not economically active	93502016
0	Not applicable	93502016
6	Employed	93502017
24	Unemployed	93502017
3	Discouraged work-seeker	93502017
477	Other not economically active	93502017
0	Not applicable	93502017
3	Employed	93502018
51	Unemployed	93502018
3	Discouraged work-seeker	93502018
894	Other not economically active	93502018
0	Not applicable	93502018
3	Employed	93502019
21	Unemployed	93502019
3	Discouraged work-seeker	93502019
546	Other not economically active	93502019
0	Not applicable	93502019
36	Employed	93503001
33	Unemployed	93503001
9	Discouraged work-seeker	93503001
327	Other not economically active	93503001
0	Not applicable	93503001
12	Employed	93503002
36	Unemployed	93503002
9	Discouraged work-seeker	93503002
693	Other not economically active	93503002
0	Not applicable	93503002
3	Employed	93503003
30	Unemployed	93503003
6	Discouraged work-seeker	93503003
660	Other not economically active	93503003
0	Not applicable	93503003
3	Employed	93503004
21	Unemployed	93503004
3	Discouraged work-seeker	93503004
513	Other not economically active	93503004
0	Not applicable	93503004
3	Employed	93503005
18	Unemployed	93503005
3	Discouraged work-seeker	93503005
345	Other not economically active	93503005
0	Not applicable	93503005
3	Employed	93503006
30	Unemployed	93503006
0	Discouraged work-seeker	93503006
603	Other not economically active	93503006
0	Not applicable	93503006
6	Employed	93503007
48	Unemployed	93503007
0	Discouraged work-seeker	93503007
732	Other not economically active	93503007
0	Not applicable	93503007
12	Employed	93503008
33	Unemployed	93503008
6	Discouraged work-seeker	93503008
696	Other not economically active	93503008
0	Not applicable	93503008
9	Employed	93503009
45	Unemployed	93503009
3	Discouraged work-seeker	93503009
522	Other not economically active	93503009
0	Not applicable	93503009
12	Employed	93503010
9	Unemployed	93503010
12	Discouraged work-seeker	93503010
939	Other not economically active	93503010
0	Not applicable	93503010
0	Employed	93503011
15	Unemployed	93503011
3	Discouraged work-seeker	93503011
345	Other not economically active	93503011
0	Not applicable	93503011
3	Employed	93503012
18	Unemployed	93503012
12	Discouraged work-seeker	93503012
651	Other not economically active	93503012
0	Not applicable	93503012
6	Employed	93503013
24	Unemployed	93503013
6	Discouraged work-seeker	93503013
522	Other not economically active	93503013
0	Not applicable	93503013
3	Employed	93503014
12	Unemployed	93503014
3	Discouraged work-seeker	93503014
477	Other not economically active	93503014
0	Not applicable	93503014
30	Employed	93504001
63	Unemployed	93504001
12	Discouraged work-seeker	93504001
1272	Other not economically active	93504001
0	Not applicable	93504001
9	Employed	93504002
54	Unemployed	93504002
9	Discouraged work-seeker	93504002
1089	Other not economically active	93504002
0	Not applicable	93504002
9	Employed	93504003
36	Unemployed	93504003
0	Discouraged work-seeker	93504003
873	Other not economically active	93504003
0	Not applicable	93504003
12	Employed	93504004
42	Unemployed	93504004
12	Discouraged work-seeker	93504004
1440	Other not economically active	93504004
0	Not applicable	93504004
18	Employed	93504005
90	Unemployed	93504005
12	Discouraged work-seeker	93504005
1170	Other not economically active	93504005
0	Not applicable	93504005
78	Employed	93504006
63	Unemployed	93504006
3	Discouraged work-seeker	93504006
960	Other not economically active	93504006
0	Not applicable	93504006
6	Employed	93504007
102	Unemployed	93504007
15	Discouraged work-seeker	93504007
915	Other not economically active	93504007
0	Not applicable	93504007
72	Employed	93504008
165	Unemployed	93504008
15	Discouraged work-seeker	93504008
1107	Other not economically active	93504008
0	Not applicable	93504008
9	Employed	93504009
45	Unemployed	93504009
6	Discouraged work-seeker	93504009
1137	Other not economically active	93504009
0	Not applicable	93504009
18	Employed	93504010
117	Unemployed	93504010
12	Discouraged work-seeker	93504010
873	Other not economically active	93504010
0	Not applicable	93504010
24	Employed	93504011
57	Unemployed	93504011
9	Discouraged work-seeker	93504011
954	Other not economically active	93504011
0	Not applicable	93504011
12	Employed	93504012
18	Unemployed	93504012
0	Discouraged work-seeker	93504012
510	Other not economically active	93504012
0	Not applicable	93504012
24	Employed	93504013
84	Unemployed	93504013
12	Discouraged work-seeker	93504013
522	Other not economically active	93504013
0	Not applicable	93504013
18	Employed	93504014
42	Unemployed	93504014
6	Discouraged work-seeker	93504014
927	Other not economically active	93504014
0	Not applicable	93504014
6	Employed	93504015
30	Unemployed	93504015
9	Discouraged work-seeker	93504015
861	Other not economically active	93504015
0	Not applicable	93504015
36	Employed	93504016
159	Unemployed	93504016
18	Discouraged work-seeker	93504016
1281	Other not economically active	93504016
0	Not applicable	93504016
21	Employed	93504017
57	Unemployed	93504017
0	Discouraged work-seeker	93504017
654	Other not economically active	93504017
0	Not applicable	93504017
15	Employed	93504018
51	Unemployed	93504018
18	Discouraged work-seeker	93504018
1185	Other not economically active	93504018
0	Not applicable	93504018
48	Employed	93504019
69	Unemployed	93504019
3	Discouraged work-seeker	93504019
792	Other not economically active	93504019
0	Not applicable	93504019
63	Employed	93504020
54	Unemployed	93504020
3	Discouraged work-seeker	93504020
1302	Other not economically active	93504020
0	Not applicable	93504020
27	Employed	93504021
12	Unemployed	93504021
0	Discouraged work-seeker	93504021
384	Other not economically active	93504021
0	Not applicable	93504021
27	Employed	93504022
27	Unemployed	93504022
3	Discouraged work-seeker	93504022
1467	Other not economically active	93504022
0	Not applicable	93504022
36	Employed	93504023
30	Unemployed	93504023
0	Discouraged work-seeker	93504023
582	Other not economically active	93504023
0	Not applicable	93504023
21	Employed	93504024
69	Unemployed	93504024
12	Discouraged work-seeker	93504024
897	Other not economically active	93504024
0	Not applicable	93504024
24	Employed	93504025
87	Unemployed	93504025
18	Discouraged work-seeker	93504025
1512	Other not economically active	93504025
0	Not applicable	93504025
3	Employed	93504026
6	Unemployed	93504026
0	Discouraged work-seeker	93504026
132	Other not economically active	93504026
0	Not applicable	93504026
42	Employed	93504027
108	Unemployed	93504027
21	Discouraged work-seeker	93504027
1509	Other not economically active	93504027
0	Not applicable	93504027
21	Employed	93504028
54	Unemployed	93504028
21	Discouraged work-seeker	93504028
1017	Other not economically active	93504028
0	Not applicable	93504028
6	Employed	93504029
30	Unemployed	93504029
6	Discouraged work-seeker	93504029
687	Other not economically active	93504029
0	Not applicable	93504029
6	Employed	93504030
42	Unemployed	93504030
9	Discouraged work-seeker	93504030
840	Other not economically active	93504030
0	Not applicable	93504030
15	Employed	93504031
54	Unemployed	93504031
9	Discouraged work-seeker	93504031
1206	Other not economically active	93504031
0	Not applicable	93504031
12	Employed	93504032
75	Unemployed	93504032
15	Discouraged work-seeker	93504032
1065	Other not economically active	93504032
0	Not applicable	93504032
30	Employed	93504033
117	Unemployed	93504033
6	Discouraged work-seeker	93504033
1062	Other not economically active	93504033
0	Not applicable	93504033
15	Employed	93504034
51	Unemployed	93504034
9	Discouraged work-seeker	93504034
1065	Other not economically active	93504034
0	Not applicable	93504034
21	Employed	93504035
57	Unemployed	93504035
18	Discouraged work-seeker	93504035
882	Other not economically active	93504035
0	Not applicable	93504035
36	Employed	93504036
63	Unemployed	93504036
6	Discouraged work-seeker	93504036
882	Other not economically active	93504036
0	Not applicable	93504036
9	Employed	93504037
75	Unemployed	93504037
3	Discouraged work-seeker	93504037
633	Other not economically active	93504037
0	Not applicable	93504037
15	Employed	93504038
75	Unemployed	93504038
12	Discouraged work-seeker	93504038
906	Other not economically active	93504038
0	Not applicable	93504038
3	Employed	93505001
18	Unemployed	93505001
9	Discouraged work-seeker	93505001
648	Other not economically active	93505001
0	Not applicable	93505001
9	Employed	93505002
12	Unemployed	93505002
18	Discouraged work-seeker	93505002
690	Other not economically active	93505002
0	Not applicable	93505002
6	Employed	93505003
27	Unemployed	93505003
30	Discouraged work-seeker	93505003
657	Other not economically active	93505003
0	Not applicable	93505003
6	Employed	93505004
27	Unemployed	93505004
12	Discouraged work-seeker	93505004
474	Other not economically active	93505004
0	Not applicable	93505004
6	Employed	93505005
36	Unemployed	93505005
12	Discouraged work-seeker	93505005
564	Other not economically active	93505005
0	Not applicable	93505005
3	Employed	93505006
51	Unemployed	93505006
6	Discouraged work-seeker	93505006
600	Other not economically active	93505006
0	Not applicable	93505006
6	Employed	93505007
30	Unemployed	93505007
0	Discouraged work-seeker	93505007
624	Other not economically active	93505007
0	Not applicable	93505007
9	Employed	93505008
48	Unemployed	93505008
9	Discouraged work-seeker	93505008
606	Other not economically active	93505008
0	Not applicable	93505008
6	Employed	93505009
30	Unemployed	93505009
3	Discouraged work-seeker	93505009
474	Other not economically active	93505009
0	Not applicable	93505009
6	Employed	93505010
33	Unemployed	93505010
9	Discouraged work-seeker	93505010
327	Other not economically active	93505010
0	Not applicable	93505010
9	Employed	93505011
15	Unemployed	93505011
3	Discouraged work-seeker	93505011
516	Other not economically active	93505011
0	Not applicable	93505011
6	Employed	93505012
39	Unemployed	93505012
3	Discouraged work-seeker	93505012
402	Other not economically active	93505012
0	Not applicable	93505012
6	Employed	93505013
27	Unemployed	93505013
6	Discouraged work-seeker	93505013
486	Other not economically active	93505013
0	Not applicable	93505013
6	Employed	93505014
15	Unemployed	93505014
3	Discouraged work-seeker	93505014
522	Other not economically active	93505014
0	Not applicable	93505014
12	Employed	93505015
45	Unemployed	93505015
0	Discouraged work-seeker	93505015
678	Other not economically active	93505015
0	Not applicable	93505015
6	Employed	93505016
39	Unemployed	93505016
0	Discouraged work-seeker	93505016
555	Other not economically active	93505016
0	Not applicable	93505016
18	Employed	93505017
42	Unemployed	93505017
9	Discouraged work-seeker	93505017
615	Other not economically active	93505017
0	Not applicable	93505017
6	Employed	93505018
33	Unemployed	93505018
3	Discouraged work-seeker	93505018
360	Other not economically active	93505018
0	Not applicable	93505018
9	Employed	93505019
33	Unemployed	93505019
6	Discouraged work-seeker	93505019
723	Other not economically active	93505019
0	Not applicable	93505019
12	Employed	93505020
15	Unemployed	93505020
3	Discouraged work-seeker	93505020
684	Other not economically active	93505020
0	Not applicable	93505020
3	Employed	93505021
24	Unemployed	93505021
9	Discouraged work-seeker	93505021
531	Other not economically active	93505021
0	Not applicable	93505021
3	Employed	93505022
48	Unemployed	93505022
3	Discouraged work-seeker	93505022
771	Other not economically active	93505022
0	Not applicable	93505022
15	Employed	93505023
39	Unemployed	93505023
30	Discouraged work-seeker	93505023
477	Other not economically active	93505023
0	Not applicable	93505023
3	Employed	93505024
27	Unemployed	93505024
6	Discouraged work-seeker	93505024
432	Other not economically active	93505024
0	Not applicable	93505024
6	Employed	93505025
27	Unemployed	93505025
3	Discouraged work-seeker	93505025
615	Other not economically active	93505025
0	Not applicable	93505025
15	Employed	93505026
39	Unemployed	93505026
12	Discouraged work-seeker	93505026
735	Other not economically active	93505026
0	Not applicable	93505026
12	Employed	93505027
15	Unemployed	93505027
6	Discouraged work-seeker	93505027
516	Other not economically active	93505027
0	Not applicable	93505027
6	Employed	93505028
45	Unemployed	93505028
9	Discouraged work-seeker	93505028
495	Other not economically active	93505028
0	Not applicable	93505028
9	Employed	93505029
12	Unemployed	93505029
15	Discouraged work-seeker	93505029
459	Other not economically active	93505029
0	Not applicable	93505029
51	Employed	93601001
36	Unemployed	93601001
3	Discouraged work-seeker	93601001
237	Other not economically active	93601001
0	Not applicable	93601001
54	Employed	93601002
48	Unemployed	93601002
15	Discouraged work-seeker	93601002
312	Other not economically active	93601002
0	Not applicable	93601002
21	Employed	93601003
33	Unemployed	93601003
6	Discouraged work-seeker	93601003
90	Other not economically active	93601003
0	Not applicable	93601003
24	Employed	93601004
33	Unemployed	93601004
3	Discouraged work-seeker	93601004
156	Other not economically active	93601004
0	Not applicable	93601004
6	Employed	93601005
12	Unemployed	93601005
0	Discouraged work-seeker	93601005
102	Other not economically active	93601005
0	Not applicable	93601005
15	Employed	93601006
21	Unemployed	93601006
3	Discouraged work-seeker	93601006
90	Other not economically active	93601006
0	Not applicable	93601006
18	Employed	93601007
39	Unemployed	93601007
12	Discouraged work-seeker	93601007
276	Other not economically active	93601007
0	Not applicable	93601007
6	Employed	93601008
12	Unemployed	93601008
0	Discouraged work-seeker	93601008
96	Other not economically active	93601008
0	Not applicable	93601008
21	Employed	93601009
75	Unemployed	93601009
9	Discouraged work-seeker	93601009
468	Other not economically active	93601009
0	Not applicable	93601009
9	Employed	93601010
18	Unemployed	93601010
3	Discouraged work-seeker	93601010
171	Other not economically active	93601010
0	Not applicable	93601010
0	Employed	93601011
0	Unemployed	93601011
0	Discouraged work-seeker	93601011
15	Other not economically active	93601011
0	Not applicable	93601011
0	Employed	93601012
3	Unemployed	93601012
0	Discouraged work-seeker	93601012
126	Other not economically active	93601012
0	Not applicable	93601012
18	Employed	93602001
93	Unemployed	93602001
18	Discouraged work-seeker	93602001
483	Other not economically active	93602001
0	Not applicable	93602001
3	Employed	93602002
21	Unemployed	93602002
0	Discouraged work-seeker	93602002
219	Other not economically active	93602002
0	Not applicable	93602002
54	Employed	93602003
21	Unemployed	93602003
9	Discouraged work-seeker	93602003
243	Other not economically active	93602003
0	Not applicable	93602003
33	Employed	93602004
24	Unemployed	93602004
0	Discouraged work-seeker	93602004
255	Other not economically active	93602004
0	Not applicable	93602004
21	Employed	93602005
9	Unemployed	93602005
0	Discouraged work-seeker	93602005
135	Other not economically active	93602005
0	Not applicable	93602005
3	Employed	93602006
27	Unemployed	93602006
3	Discouraged work-seeker	93602006
387	Other not economically active	93602006
0	Not applicable	93602006
6	Employed	93602007
33	Unemployed	93602007
3	Discouraged work-seeker	93602007
453	Other not economically active	93602007
0	Not applicable	93602007
15	Employed	93602008
66	Unemployed	93602008
3	Discouraged work-seeker	93602008
612	Other not economically active	93602008
0	Not applicable	93602008
9	Employed	93602009
27	Unemployed	93602009
3	Discouraged work-seeker	93602009
591	Other not economically active	93602009
0	Not applicable	93602009
6	Employed	93602010
27	Unemployed	93602010
9	Discouraged work-seeker	93602010
603	Other not economically active	93602010
0	Not applicable	93602010
30	Employed	93602011
12	Unemployed	93602011
3	Discouraged work-seeker	93602011
489	Other not economically active	93602011
0	Not applicable	93602011
9	Employed	93602012
27	Unemployed	93602012
3	Discouraged work-seeker	93602012
555	Other not economically active	93602012
0	Not applicable	93602012
39	Employed	93604001
48	Unemployed	93604001
24	Discouraged work-seeker	93604001
522	Other not economically active	93604001
0	Not applicable	93604001
9	Employed	93604002
27	Unemployed	93604002
6	Discouraged work-seeker	93604002
261	Other not economically active	93604002
0	Not applicable	93604002
33	Employed	93604003
6	Unemployed	93604003
0	Discouraged work-seeker	93604003
117	Other not economically active	93604003
0	Not applicable	93604003
9	Employed	93604004
0	Unemployed	93604004
6	Discouraged work-seeker	93604004
90	Other not economically active	93604004
0	Not applicable	93604004
15	Employed	93604005
36	Unemployed	93604005
12	Discouraged work-seeker	93604005
258	Other not economically active	93604005
0	Not applicable	93604005
21	Employed	93605001
75	Unemployed	93605001
6	Discouraged work-seeker	93605001
531	Other not economically active	93605001
0	Not applicable	93605001
30	Employed	93605002
36	Unemployed	93605002
6	Discouraged work-seeker	93605002
204	Other not economically active	93605002
0	Not applicable	93605002
9	Employed	93605003
33	Unemployed	93605003
15	Discouraged work-seeker	93605003
378	Other not economically active	93605003
0	Not applicable	93605003
12	Employed	93605004
6	Unemployed	93605004
3	Discouraged work-seeker	93605004
141	Other not economically active	93605004
0	Not applicable	93605004
24	Employed	93605005
42	Unemployed	93605005
9	Discouraged work-seeker	93605005
624	Other not economically active	93605005
0	Not applicable	93605005
6	Employed	93605006
12	Unemployed	93605006
9	Discouraged work-seeker	93605006
591	Other not economically active	93605006
0	Not applicable	93605006
9	Employed	93605007
18	Unemployed	93605007
3	Discouraged work-seeker	93605007
390	Other not economically active	93605007
0	Not applicable	93605007
15	Employed	93605008
6	Unemployed	93605008
3	Discouraged work-seeker	93605008
180	Other not economically active	93605008
0	Not applicable	93605008
6	Employed	93605009
15	Unemployed	93605009
3	Discouraged work-seeker	93605009
228	Other not economically active	93605009
0	Not applicable	93605009
33	Employed	93606001
24	Unemployed	93606001
0	Discouraged work-seeker	93606001
426	Other not economically active	93606001
0	Not applicable	93606001
3	Employed	93606002
45	Unemployed	93606002
3	Discouraged work-seeker	93606002
324	Other not economically active	93606002
0	Not applicable	93606002
6	Employed	93606003
45	Unemployed	93606003
0	Discouraged work-seeker	93606003
321	Other not economically active	93606003
0	Not applicable	93606003
21	Employed	93606004
42	Unemployed	93606004
3	Discouraged work-seeker	93606004
804	Other not economically active	93606004
0	Not applicable	93606004
3	Employed	93606005
9	Unemployed	93606005
0	Discouraged work-seeker	93606005
210	Other not economically active	93606005
0	Not applicable	93606005
9	Employed	93606006
15	Unemployed	93606006
12	Discouraged work-seeker	93606006
246	Other not economically active	93606006
0	Not applicable	93606006
6	Employed	93606007
30	Unemployed	93606007
6	Discouraged work-seeker	93606007
393	Other not economically active	93606007
0	Not applicable	93606007
3	Employed	93606008
9	Unemployed	93606008
6	Discouraged work-seeker	93606008
306	Other not economically active	93606008
0	Not applicable	93606008
0	Employed	93606009
0	Unemployed	93606009
0	Discouraged work-seeker	93606009
108	Other not economically active	93606009
0	Not applicable	93606009
15	Employed	93607001
21	Unemployed	93607001
6	Discouraged work-seeker	93607001
828	Other not economically active	93607001
0	Not applicable	93607001
12	Employed	93607002
30	Unemployed	93607002
15	Discouraged work-seeker	93607002
717	Other not economically active	93607002
0	Not applicable	93607002
3	Employed	93607003
15	Unemployed	93607003
3	Discouraged work-seeker	93607003
780	Other not economically active	93607003
0	Not applicable	93607003
15	Employed	93607004
15	Unemployed	93607004
9	Discouraged work-seeker	93607004
816	Other not economically active	93607004
0	Not applicable	93607004
6	Employed	93607005
6	Unemployed	93607005
3	Discouraged work-seeker	93607005
549	Other not economically active	93607005
0	Not applicable	93607005
12	Employed	93607006
12	Unemployed	93607006
21	Discouraged work-seeker	93607006
816	Other not economically active	93607006
0	Not applicable	93607006
12	Employed	93607007
27	Unemployed	93607007
15	Discouraged work-seeker	93607007
735	Other not economically active	93607007
0	Not applicable	93607007
9	Employed	93607008
27	Unemployed	93607008
3	Discouraged work-seeker	93607008
690	Other not economically active	93607008
0	Not applicable	93607008
3	Employed	93607009
48	Unemployed	93607009
6	Discouraged work-seeker	93607009
657	Other not economically active	93607009
0	Not applicable	93607009
3	Employed	93607010
24	Unemployed	93607010
3	Discouraged work-seeker	93607010
612	Other not economically active	93607010
0	Not applicable	93607010
15	Employed	93607011
42	Unemployed	93607011
42	Discouraged work-seeker	93607011
702	Other not economically active	93607011
0	Not applicable	93607011
12	Employed	93607012
15	Unemployed	93607012
6	Discouraged work-seeker	93607012
627	Other not economically active	93607012
0	Not applicable	93607012
9	Employed	93607013
36	Unemployed	93607013
18	Discouraged work-seeker	93607013
714	Other not economically active	93607013
0	Not applicable	93607013
3	Employed	93607014
24	Unemployed	93607014
18	Discouraged work-seeker	93607014
627	Other not economically active	93607014
0	Not applicable	93607014
0	Employed	93607015
33	Unemployed	93607015
3	Discouraged work-seeker	93607015
573	Other not economically active	93607015
0	Not applicable	93607015
15	Employed	93607016
30	Unemployed	93607016
15	Discouraged work-seeker	93607016
672	Other not economically active	93607016
0	Not applicable	93607016
12	Employed	93607017
30	Unemployed	93607017
9	Discouraged work-seeker	93607017
696	Other not economically active	93607017
0	Not applicable	93607017
6	Employed	93607018
45	Unemployed	93607018
12	Discouraged work-seeker	93607018
708	Other not economically active	93607018
0	Not applicable	93607018
15	Employed	93607019
12	Unemployed	93607019
6	Discouraged work-seeker	93607019
603	Other not economically active	93607019
0	Not applicable	93607019
6	Employed	93607020
48	Unemployed	93607020
0	Discouraged work-seeker	93607020
684	Other not economically active	93607020
0	Not applicable	93607020
3	Employed	93607021
21	Unemployed	93607021
12	Discouraged work-seeker	93607021
390	Other not economically active	93607021
0	Not applicable	93607021
9	Employed	93607022
33	Unemployed	93607022
6	Discouraged work-seeker	93607022
636	Other not economically active	93607022
0	Not applicable	93607022
12	Employed	93607023
24	Unemployed	93607023
12	Discouraged work-seeker	93607023
537	Other not economically active	93607023
0	Not applicable	93607023
9	Employed	93607024
42	Unemployed	93607024
9	Discouraged work-seeker	93607024
708	Other not economically active	93607024
0	Not applicable	93607024
6	Employed	93607025
27	Unemployed	93607025
3	Discouraged work-seeker	93607025
660	Other not economically active	93607025
0	Not applicable	93607025
0	Employed	93607026
9	Unemployed	93607026
3	Discouraged work-seeker	93607026
288	Other not economically active	93607026
0	Not applicable	93607026
9	Employed	93607027
24	Unemployed	93607027
6	Discouraged work-seeker	93607027
495	Other not economically active	93607027
0	Not applicable	93607027
15	Employed	93607028
51	Unemployed	93607028
6	Discouraged work-seeker	93607028
738	Other not economically active	93607028
0	Not applicable	93607028
12	Employed	93607029
39	Unemployed	93607029
12	Discouraged work-seeker	93607029
648	Other not economically active	93607029
0	Not applicable	93607029
12	Employed	93607030
24	Unemployed	93607030
12	Discouraged work-seeker	93607030
504	Other not economically active	93607030
0	Not applicable	93607030
30	Employed	93607031
57	Unemployed	93607031
15	Discouraged work-seeker	93607031
1125	Other not economically active	93607031
0	Not applicable	93607031
15	Employed	93607032
21	Unemployed	93607032
3	Discouraged work-seeker	93607032
303	Other not economically active	93607032
0	Not applicable	93607032
3	Employed	94701001
18	Unemployed	94701001
12	Discouraged work-seeker	94701001
456	Other not economically active	94701001
0	Not applicable	94701001
6	Employed	94701002
18	Unemployed	94701002
0	Discouraged work-seeker	94701002
453	Other not economically active	94701002
0	Not applicable	94701002
12	Employed	94701003
27	Unemployed	94701003
27	Discouraged work-seeker	94701003
678	Other not economically active	94701003
0	Not applicable	94701003
9	Employed	94701004
15	Unemployed	94701004
12	Discouraged work-seeker	94701004
495	Other not economically active	94701004
0	Not applicable	94701004
93	Employed	94701005
42	Unemployed	94701005
6	Discouraged work-seeker	94701005
186	Other not economically active	94701005
0	Not applicable	94701005
15	Employed	94701006
54	Unemployed	94701006
3	Discouraged work-seeker	94701006
528	Other not economically active	94701006
0	Not applicable	94701006
30	Employed	94701007
12	Unemployed	94701007
9	Discouraged work-seeker	94701007
93	Other not economically active	94701007
0	Not applicable	94701007
9	Employed	94701008
39	Unemployed	94701008
3	Discouraged work-seeker	94701008
456	Other not economically active	94701008
0	Not applicable	94701008
3	Employed	94701009
39	Unemployed	94701009
6	Discouraged work-seeker	94701009
576	Other not economically active	94701009
0	Not applicable	94701009
6	Employed	94701010
69	Unemployed	94701010
3	Discouraged work-seeker	94701010
498	Other not economically active	94701010
0	Not applicable	94701010
6	Employed	94701011
18	Unemployed	94701011
27	Discouraged work-seeker	94701011
450	Other not economically active	94701011
0	Not applicable	94701011
6	Employed	94701012
24	Unemployed	94701012
6	Discouraged work-seeker	94701012
690	Other not economically active	94701012
0	Not applicable	94701012
3	Employed	94701013
36	Unemployed	94701013
3	Discouraged work-seeker	94701013
465	Other not economically active	94701013
0	Not applicable	94701013
3	Employed	94701014
27	Unemployed	94701014
12	Discouraged work-seeker	94701014
414	Other not economically active	94701014
0	Not applicable	94701014
9	Employed	94701015
33	Unemployed	94701015
15	Discouraged work-seeker	94701015
648	Other not economically active	94701015
0	Not applicable	94701015
12	Employed	94701016
21	Unemployed	94701016
18	Discouraged work-seeker	94701016
585	Other not economically active	94701016
0	Not applicable	94701016
12	Employed	94702001
48	Unemployed	94702001
12	Discouraged work-seeker	94702001
714	Other not economically active	94702001
0	Not applicable	94702001
6	Employed	94702002
21	Unemployed	94702002
15	Discouraged work-seeker	94702002
330	Other not economically active	94702002
0	Not applicable	94702002
12	Employed	94702003
21	Unemployed	94702003
0	Discouraged work-seeker	94702003
516	Other not economically active	94702003
0	Not applicable	94702003
3	Employed	94702004
9	Unemployed	94702004
6	Discouraged work-seeker	94702004
411	Other not economically active	94702004
0	Not applicable	94702004
0	Employed	94702005
15	Unemployed	94702005
12	Discouraged work-seeker	94702005
654	Other not economically active	94702005
0	Not applicable	94702005
6	Employed	94702006
12	Unemployed	94702006
6	Discouraged work-seeker	94702006
435	Other not economically active	94702006
0	Not applicable	94702006
21	Employed	94702007
36	Unemployed	94702007
3	Discouraged work-seeker	94702007
768	Other not economically active	94702007
0	Not applicable	94702007
3	Employed	94702008
15	Unemployed	94702008
15	Discouraged work-seeker	94702008
444	Other not economically active	94702008
0	Not applicable	94702008
9	Employed	94702009
39	Unemployed	94702009
15	Discouraged work-seeker	94702009
747	Other not economically active	94702009
0	Not applicable	94702009
3	Employed	94702010
18	Unemployed	94702010
9	Discouraged work-seeker	94702010
669	Other not economically active	94702010
0	Not applicable	94702010
0	Employed	94702011
12	Unemployed	94702011
3	Discouraged work-seeker	94702011
270	Other not economically active	94702011
0	Not applicable	94702011
27	Employed	94702012
30	Unemployed	94702012
12	Discouraged work-seeker	94702012
513	Other not economically active	94702012
0	Not applicable	94702012
15	Employed	94702013
12	Unemployed	94702013
0	Discouraged work-seeker	94702013
180	Other not economically active	94702013
0	Not applicable	94702013
48	Employed	94702014
36	Unemployed	94702014
3	Discouraged work-seeker	94702014
525	Other not economically active	94702014
0	Not applicable	94702014
9	Employed	94702015
21	Unemployed	94702015
9	Discouraged work-seeker	94702015
609	Other not economically active	94702015
0	Not applicable	94702015
15	Employed	94702016
39	Unemployed	94702016
3	Discouraged work-seeker	94702016
642	Other not economically active	94702016
0	Not applicable	94702016
6	Employed	94702017
12	Unemployed	94702017
15	Discouraged work-seeker	94702017
414	Other not economically active	94702017
0	Not applicable	94702017
6	Employed	94702018
30	Unemployed	94702018
12	Discouraged work-seeker	94702018
552	Other not economically active	94702018
0	Not applicable	94702018
6	Employed	94702019
30	Unemployed	94702019
3	Discouraged work-seeker	94702019
546	Other not economically active	94702019
0	Not applicable	94702019
15	Employed	94702020
15	Unemployed	94702020
6	Discouraged work-seeker	94702020
717	Other not economically active	94702020
0	Not applicable	94702020
18	Employed	94702021
45	Unemployed	94702021
9	Discouraged work-seeker	94702021
780	Other not economically active	94702021
0	Not applicable	94702021
6	Employed	94702022
9	Unemployed	94702022
9	Discouraged work-seeker	94702022
387	Other not economically active	94702022
0	Not applicable	94702022
3	Employed	94702023
6	Unemployed	94702023
3	Discouraged work-seeker	94702023
540	Other not economically active	94702023
0	Not applicable	94702023
6	Employed	94702024
39	Unemployed	94702024
15	Discouraged work-seeker	94702024
759	Other not economically active	94702024
0	Not applicable	94702024
6	Employed	94702025
66	Unemployed	94702025
3	Discouraged work-seeker	94702025
537	Other not economically active	94702025
0	Not applicable	94702025
6	Employed	94702026
18	Unemployed	94702026
0	Discouraged work-seeker	94702026
339	Other not economically active	94702026
0	Not applicable	94702026
9	Employed	94702027
87	Unemployed	94702027
24	Discouraged work-seeker	94702027
699	Other not economically active	94702027
0	Not applicable	94702027
9	Employed	94702028
24	Unemployed	94702028
15	Discouraged work-seeker	94702028
657	Other not economically active	94702028
0	Not applicable	94702028
15	Employed	94702029
30	Unemployed	94702029
9	Discouraged work-seeker	94702029
414	Other not economically active	94702029
0	Not applicable	94702029
12	Employed	94702030
39	Unemployed	94702030
3	Discouraged work-seeker	94702030
390	Other not economically active	94702030
0	Not applicable	94702030
6	Employed	94703001
45	Unemployed	94703001
15	Discouraged work-seeker	94703001
696	Other not economically active	94703001
0	Not applicable	94703001
3	Employed	94703002
6	Unemployed	94703002
0	Discouraged work-seeker	94703002
480	Other not economically active	94703002
0	Not applicable	94703002
6	Employed	94703003
30	Unemployed	94703003
6	Discouraged work-seeker	94703003
732	Other not economically active	94703003
0	Not applicable	94703003
6	Employed	94703004
54	Unemployed	94703004
18	Discouraged work-seeker	94703004
576	Other not economically active	94703004
0	Not applicable	94703004
12	Employed	94703005
30	Unemployed	94703005
3	Discouraged work-seeker	94703005
639	Other not economically active	94703005
0	Not applicable	94703005
9	Employed	94703006
9	Unemployed	94703006
3	Discouraged work-seeker	94703006
651	Other not economically active	94703006
0	Not applicable	94703006
6	Employed	94703007
9	Unemployed	94703007
0	Discouraged work-seeker	94703007
489	Other not economically active	94703007
0	Not applicable	94703007
12	Employed	94703008
63	Unemployed	94703008
12	Discouraged work-seeker	94703008
1173	Other not economically active	94703008
0	Not applicable	94703008
12	Employed	94703009
72	Unemployed	94703009
9	Discouraged work-seeker	94703009
684	Other not economically active	94703009
0	Not applicable	94703009
3	Employed	94703010
12	Unemployed	94703010
3	Discouraged work-seeker	94703010
507	Other not economically active	94703010
0	Not applicable	94703010
3	Employed	94703011
36	Unemployed	94703011
0	Discouraged work-seeker	94703011
396	Other not economically active	94703011
0	Not applicable	94703011
9	Employed	94703012
30	Unemployed	94703012
12	Discouraged work-seeker	94703012
621	Other not economically active	94703012
0	Not applicable	94703012
6	Employed	94703013
48	Unemployed	94703013
24	Discouraged work-seeker	94703013
780	Other not economically active	94703013
0	Not applicable	94703013
6	Employed	94703014
33	Unemployed	94703014
6	Discouraged work-seeker	94703014
327	Other not economically active	94703014
0	Not applicable	94703014
9	Employed	94703015
12	Unemployed	94703015
15	Discouraged work-seeker	94703015
519	Other not economically active	94703015
0	Not applicable	94703015
12	Employed	94703016
24	Unemployed	94703016
12	Discouraged work-seeker	94703016
504	Other not economically active	94703016
0	Not applicable	94703016
18	Employed	94703017
33	Unemployed	94703017
21	Discouraged work-seeker	94703017
609	Other not economically active	94703017
0	Not applicable	94703017
6	Employed	94703018
60	Unemployed	94703018
3	Discouraged work-seeker	94703018
585	Other not economically active	94703018
0	Not applicable	94703018
6	Employed	94703019
48	Unemployed	94703019
6	Discouraged work-seeker	94703019
618	Other not economically active	94703019
0	Not applicable	94703019
6	Employed	94703020
27	Unemployed	94703020
9	Discouraged work-seeker	94703020
639	Other not economically active	94703020
0	Not applicable	94703020
12	Employed	94703021
33	Unemployed	94703021
3	Discouraged work-seeker	94703021
693	Other not economically active	94703021
0	Not applicable	94703021
12	Employed	94703022
36	Unemployed	94703022
0	Discouraged work-seeker	94703022
546	Other not economically active	94703022
0	Not applicable	94703022
12	Employed	94703023
39	Unemployed	94703023
24	Discouraged work-seeker	94703023
711	Other not economically active	94703023
0	Not applicable	94703023
6	Employed	94703024
33	Unemployed	94703024
27	Discouraged work-seeker	94703024
540	Other not economically active	94703024
0	Not applicable	94703024
6	Employed	94703025
36	Unemployed	94703025
21	Discouraged work-seeker	94703025
792	Other not economically active	94703025
0	Not applicable	94703025
9	Employed	94703026
24	Unemployed	94703026
3	Discouraged work-seeker	94703026
654	Other not economically active	94703026
0	Not applicable	94703026
3	Employed	94703027
42	Unemployed	94703027
9	Discouraged work-seeker	94703027
564	Other not economically active	94703027
0	Not applicable	94703027
9	Employed	94703028
63	Unemployed	94703028
12	Discouraged work-seeker	94703028
762	Other not economically active	94703028
0	Not applicable	94703028
6	Employed	94703029
27	Unemployed	94703029
3	Discouraged work-seeker	94703029
480	Other not economically active	94703029
0	Not applicable	94703029
15	Employed	94703030
36	Unemployed	94703030
27	Discouraged work-seeker	94703030
615	Other not economically active	94703030
0	Not applicable	94703030
9	Employed	94703031
18	Unemployed	94703031
9	Discouraged work-seeker	94703031
471	Other not economically active	94703031
0	Not applicable	94703031
9	Employed	94704001
48	Unemployed	94704001
9	Discouraged work-seeker	94704001
390	Other not economically active	94704001
0	Not applicable	94704001
6	Employed	94704002
33	Unemployed	94704002
6	Discouraged work-seeker	94704002
636	Other not economically active	94704002
0	Not applicable	94704002
3	Employed	94704003
36	Unemployed	94704003
9	Discouraged work-seeker	94704003
522	Other not economically active	94704003
0	Not applicable	94704003
3	Employed	94704004
15	Unemployed	94704004
0	Discouraged work-seeker	94704004
471	Other not economically active	94704004
0	Not applicable	94704004
3	Employed	94704005
33	Unemployed	94704005
12	Discouraged work-seeker	94704005
387	Other not economically active	94704005
0	Not applicable	94704005
6	Employed	94704006
27	Unemployed	94704006
6	Discouraged work-seeker	94704006
561	Other not economically active	94704006
0	Not applicable	94704006
3	Employed	94704007
18	Unemployed	94704007
3	Discouraged work-seeker	94704007
543	Other not economically active	94704007
0	Not applicable	94704007
12	Employed	94704008
24	Unemployed	94704008
3	Discouraged work-seeker	94704008
417	Other not economically active	94704008
0	Not applicable	94704008
3	Employed	94704009
54	Unemployed	94704009
12	Discouraged work-seeker	94704009
369	Other not economically active	94704009
0	Not applicable	94704009
6	Employed	94704010
90	Unemployed	94704010
0	Discouraged work-seeker	94704010
303	Other not economically active	94704010
0	Not applicable	94704010
6	Employed	94704011
90	Unemployed	94704011
12	Discouraged work-seeker	94704011
696	Other not economically active	94704011
0	Not applicable	94704011
6	Employed	94704012
48	Unemployed	94704012
0	Discouraged work-seeker	94704012
387	Other not economically active	94704012
0	Not applicable	94704012
3	Employed	94704013
36	Unemployed	94704013
21	Discouraged work-seeker	94704013
483	Other not economically active	94704013
0	Not applicable	94704013
15	Employed	94705001
36	Unemployed	94705001
15	Discouraged work-seeker	94705001
432	Other not economically active	94705001
0	Not applicable	94705001
9	Employed	94705002
66	Unemployed	94705002
6	Discouraged work-seeker	94705002
684	Other not economically active	94705002
0	Not applicable	94705002
9	Employed	94705003
81	Unemployed	94705003
3	Discouraged work-seeker	94705003
612	Other not economically active	94705003
0	Not applicable	94705003
18	Employed	94705004
27	Unemployed	94705004
3	Discouraged work-seeker	94705004
300	Other not economically active	94705004
0	Not applicable	94705004
18	Employed	94705005
105	Unemployed	94705005
39	Discouraged work-seeker	94705005
783	Other not economically active	94705005
0	Not applicable	94705005
6	Employed	94705006
33	Unemployed	94705006
3	Discouraged work-seeker	94705006
567	Other not economically active	94705006
0	Not applicable	94705006
24	Employed	94705007
63	Unemployed	94705007
12	Discouraged work-seeker	94705007
642	Other not economically active	94705007
0	Not applicable	94705007
6	Employed	94705008
93	Unemployed	94705008
0	Discouraged work-seeker	94705008
660	Other not economically active	94705008
0	Not applicable	94705008
6	Employed	94705009
72	Unemployed	94705009
6	Discouraged work-seeker	94705009
792	Other not economically active	94705009
0	Not applicable	94705009
15	Employed	94705010
63	Unemployed	94705010
21	Discouraged work-seeker	94705010
756	Other not economically active	94705010
0	Not applicable	94705010
9	Employed	94705011
69	Unemployed	94705011
12	Discouraged work-seeker	94705011
420	Other not economically active	94705011
0	Not applicable	94705011
6	Employed	94705012
42	Unemployed	94705012
9	Discouraged work-seeker	94705012
495	Other not economically active	94705012
0	Not applicable	94705012
21	Employed	94705013
75	Unemployed	94705013
42	Discouraged work-seeker	94705013
780	Other not economically active	94705013
0	Not applicable	94705013
9	Employed	94705014
78	Unemployed	94705014
6	Discouraged work-seeker	94705014
861	Other not economically active	94705014
0	Not applicable	94705014
12	Employed	94705015
45	Unemployed	94705015
3	Discouraged work-seeker	94705015
618	Other not economically active	94705015
0	Not applicable	94705015
9	Employed	94705016
45	Unemployed	94705016
18	Discouraged work-seeker	94705016
591	Other not economically active	94705016
0	Not applicable	94705016
9	Employed	94705017
69	Unemployed	94705017
15	Discouraged work-seeker	94705017
681	Other not economically active	94705017
0	Not applicable	94705017
15	Employed	94705018
45	Unemployed	94705018
9	Discouraged work-seeker	94705018
477	Other not economically active	94705018
0	Not applicable	94705018
9	Employed	94705019
45	Unemployed	94705019
3	Discouraged work-seeker	94705019
630	Other not economically active	94705019
0	Not applicable	94705019
15	Employed	94705020
114	Unemployed	94705020
12	Discouraged work-seeker	94705020
702	Other not economically active	94705020
0	Not applicable	94705020
21	Employed	94705021
36	Unemployed	94705021
3	Discouraged work-seeker	94705021
423	Other not economically active	94705021
0	Not applicable	94705021
12	Employed	94705022
36	Unemployed	94705022
3	Discouraged work-seeker	94705022
627	Other not economically active	94705022
0	Not applicable	94705022
6	Employed	94705023
33	Unemployed	94705023
18	Discouraged work-seeker	94705023
663	Other not economically active	94705023
0	Not applicable	94705023
6	Employed	94705024
18	Unemployed	94705024
12	Discouraged work-seeker	94705024
657	Other not economically active	94705024
0	Not applicable	94705024
27	Employed	94705025
87	Unemployed	94705025
12	Discouraged work-seeker	94705025
792	Other not economically active	94705025
0	Not applicable	94705025
6	Employed	94705026
24	Unemployed	94705026
12	Discouraged work-seeker	94705026
492	Other not economically active	94705026
0	Not applicable	94705026
9	Employed	94705027
81	Unemployed	94705027
6	Discouraged work-seeker	94705027
744	Other not economically active	94705027
0	Not applicable	94705027
21	Employed	94705028
66	Unemployed	94705028
0	Discouraged work-seeker	94705028
720	Other not economically active	94705028
0	Not applicable	94705028
6	Employed	94705029
54	Unemployed	94705029
15	Discouraged work-seeker	94705029
846	Other not economically active	94705029
0	Not applicable	94705029
12	Employed	94705030
54	Unemployed	94705030
6	Discouraged work-seeker	94705030
822	Other not economically active	94705030
0	Not applicable	94705030
15	Employed	94705031
60	Unemployed	94705031
6	Discouraged work-seeker	94705031
516	Other not economically active	94705031
0	Not applicable	94705031
3	Employed	83001001
15	Unemployed	83001001
27	Discouraged work-seeker	83001001
750	Other not economically active	83001001
0	Not applicable	83001001
3	Employed	83001002
12	Unemployed	83001002
12	Discouraged work-seeker	83001002
651	Other not economically active	83001002
0	Not applicable	83001002
6	Employed	83001003
21	Unemployed	83001003
21	Discouraged work-seeker	83001003
681	Other not economically active	83001003
0	Not applicable	83001003
3	Employed	83001004
18	Unemployed	83001004
15	Discouraged work-seeker	83001004
699	Other not economically active	83001004
0	Not applicable	83001004
6	Employed	83001005
54	Unemployed	83001005
15	Discouraged work-seeker	83001005
465	Other not economically active	83001005
0	Not applicable	83001005
3	Employed	83001006
24	Unemployed	83001006
21	Discouraged work-seeker	83001006
681	Other not economically active	83001006
0	Not applicable	83001006
3	Employed	83001007
6	Unemployed	83001007
0	Discouraged work-seeker	83001007
186	Other not economically active	83001007
0	Not applicable	83001007
3	Employed	83001008
12	Unemployed	83001008
6	Discouraged work-seeker	83001008
324	Other not economically active	83001008
0	Not applicable	83001008
21	Employed	83001009
27	Unemployed	83001009
30	Discouraged work-seeker	83001009
993	Other not economically active	83001009
0	Not applicable	83001009
15	Employed	83001010
21	Unemployed	83001010
9	Discouraged work-seeker	83001010
426	Other not economically active	83001010
0	Not applicable	83001010
12	Employed	83001011
15	Unemployed	83001011
15	Discouraged work-seeker	83001011
525	Other not economically active	83001011
0	Not applicable	83001011
9	Employed	83001012
39	Unemployed	83001012
12	Discouraged work-seeker	83001012
588	Other not economically active	83001012
0	Not applicable	83001012
6	Employed	83001013
27	Unemployed	83001013
3	Discouraged work-seeker	83001013
306	Other not economically active	83001013
0	Not applicable	83001013
6	Employed	83001014
27	Unemployed	83001014
15	Discouraged work-seeker	83001014
582	Other not economically active	83001014
0	Not applicable	83001014
27	Employed	83001015
66	Unemployed	83001015
15	Discouraged work-seeker	83001015
582	Other not economically active	83001015
0	Not applicable	83001015
15	Employed	83001016
48	Unemployed	83001016
30	Discouraged work-seeker	83001016
630	Other not economically active	83001016
0	Not applicable	83001016
18	Employed	83001017
15	Unemployed	83001017
0	Discouraged work-seeker	83001017
201	Other not economically active	83001017
0	Not applicable	83001017
12	Employed	83001018
30	Unemployed	83001018
24	Discouraged work-seeker	83001018
717	Other not economically active	83001018
0	Not applicable	83001018
6	Employed	83001019
21	Unemployed	83001019
21	Discouraged work-seeker	83001019
492	Other not economically active	83001019
0	Not applicable	83001019
0	Employed	83001020
36	Unemployed	83001020
6	Discouraged work-seeker	83001020
378	Other not economically active	83001020
0	Not applicable	83001020
39	Employed	83001021
36	Unemployed	83001021
12	Discouraged work-seeker	83001021
507	Other not economically active	83001021
0	Not applicable	83001021
0	Employed	83001022
6	Unemployed	83001022
0	Discouraged work-seeker	83001022
105	Other not economically active	83001022
0	Not applicable	83001022
33	Employed	83001023
66	Unemployed	83001023
6	Discouraged work-seeker	83001023
459	Other not economically active	83001023
0	Not applicable	83001023
9	Employed	83001024
54	Unemployed	83001024
12	Discouraged work-seeker	83001024
714	Other not economically active	83001024
0	Not applicable	83001024
6	Employed	83001025
18	Unemployed	83001025
18	Discouraged work-seeker	83001025
444	Other not economically active	83001025
0	Not applicable	83001025
9	Employed	83002001
48	Unemployed	83002001
6	Discouraged work-seeker	83002001
300	Other not economically active	83002001
0	Not applicable	83002001
12	Employed	83002002
33	Unemployed	83002002
24	Discouraged work-seeker	83002002
480	Other not economically active	83002002
0	Not applicable	83002002
15	Employed	83002003
45	Unemployed	83002003
9	Discouraged work-seeker	83002003
420	Other not economically active	83002003
0	Not applicable	83002003
3	Employed	83002004
18	Unemployed	83002004
12	Discouraged work-seeker	83002004
225	Other not economically active	83002004
0	Not applicable	83002004
3	Employed	83002005
6	Unemployed	83002005
12	Discouraged work-seeker	83002005
177	Other not economically active	83002005
0	Not applicable	83002005
9	Employed	83002006
54	Unemployed	83002006
3	Discouraged work-seeker	83002006
225	Other not economically active	83002006
0	Not applicable	83002006
9	Employed	83002007
30	Unemployed	83002007
0	Discouraged work-seeker	83002007
117	Other not economically active	83002007
0	Not applicable	83002007
33	Employed	83002008
18	Unemployed	83002008
12	Discouraged work-seeker	83002008
774	Other not economically active	83002008
0	Not applicable	83002008
21	Employed	83002009
72	Unemployed	83002009
12	Discouraged work-seeker	83002009
462	Other not economically active	83002009
0	Not applicable	83002009
15	Employed	83002010
24	Unemployed	83002010
24	Discouraged work-seeker	83002010
498	Other not economically active	83002010
0	Not applicable	83002010
21	Employed	83002011
36	Unemployed	83002011
18	Discouraged work-seeker	83002011
543	Other not economically active	83002011
0	Not applicable	83002011
3	Employed	83002012
12	Unemployed	83002012
6	Discouraged work-seeker	83002012
192	Other not economically active	83002012
0	Not applicable	83002012
9	Employed	83002013
30	Unemployed	83002013
12	Discouraged work-seeker	83002013
501	Other not economically active	83002013
0	Not applicable	83002013
0	Employed	83002014
27	Unemployed	83002014
9	Discouraged work-seeker	83002014
357	Other not economically active	83002014
0	Not applicable	83002014
15	Employed	83002015
45	Unemployed	83002015
6	Discouraged work-seeker	83002015
678	Other not economically active	83002015
0	Not applicable	83002015
30	Employed	83002016
75	Unemployed	83002016
15	Discouraged work-seeker	83002016
777	Other not economically active	83002016
0	Not applicable	83002016
9	Employed	83002017
27	Unemployed	83002017
6	Discouraged work-seeker	83002017
384	Other not economically active	83002017
0	Not applicable	83002017
21	Employed	83002018
33	Unemployed	83002018
12	Discouraged work-seeker	83002018
384	Other not economically active	83002018
0	Not applicable	83002018
15	Employed	83002019
42	Unemployed	83002019
6	Discouraged work-seeker	83002019
504	Other not economically active	83002019
0	Not applicable	83002019
15	Employed	83003001
42	Unemployed	83003001
18	Discouraged work-seeker	83003001
738	Other not economically active	83003001
0	Not applicable	83003001
21	Employed	83003002
57	Unemployed	83003002
36	Discouraged work-seeker	83003002
1152	Other not economically active	83003002
0	Not applicable	83003002
15	Employed	83003003
81	Unemployed	83003003
27	Discouraged work-seeker	83003003
1002	Other not economically active	83003003
0	Not applicable	83003003
9	Employed	83003004
12	Unemployed	83003004
6	Discouraged work-seeker	83003004
372	Other not economically active	83003004
0	Not applicable	83003004
30	Employed	83003005
42	Unemployed	83003005
9	Discouraged work-seeker	83003005
828	Other not economically active	83003005
0	Not applicable	83003005
27	Employed	83003006
36	Unemployed	83003006
9	Discouraged work-seeker	83003006
495	Other not economically active	83003006
0	Not applicable	83003006
24	Employed	83003007
39	Unemployed	83003007
0	Discouraged work-seeker	83003007
273	Other not economically active	83003007
0	Not applicable	83003007
24	Employed	83003008
48	Unemployed	83003008
27	Discouraged work-seeker	83003008
582	Other not economically active	83003008
0	Not applicable	83003008
21	Employed	83003009
75	Unemployed	83003009
24	Discouraged work-seeker	83003009
990	Other not economically active	83003009
0	Not applicable	83003009
6	Employed	83003010
21	Unemployed	83003010
6	Discouraged work-seeker	83003010
354	Other not economically active	83003010
0	Not applicable	83003010
21	Employed	83003011
117	Unemployed	83003011
18	Discouraged work-seeker	83003011
663	Other not economically active	83003011
0	Not applicable	83003011
6	Employed	83003012
27	Unemployed	83003012
3	Discouraged work-seeker	83003012
438	Other not economically active	83003012
0	Not applicable	83003012
6	Employed	83003013
84	Unemployed	83003013
0	Discouraged work-seeker	83003013
423	Other not economically active	83003013
0	Not applicable	83003013
30	Employed	83003014
36	Unemployed	83003014
12	Discouraged work-seeker	83003014
552	Other not economically active	83003014
0	Not applicable	83003014
30	Employed	83003015
18	Unemployed	83003015
24	Discouraged work-seeker	83003015
519	Other not economically active	83003015
0	Not applicable	83003015
6	Employed	83003016
24	Unemployed	83003016
30	Discouraged work-seeker	83003016
345	Other not economically active	83003016
0	Not applicable	83003016
9	Employed	83003017
90	Unemployed	83003017
9	Discouraged work-seeker	83003017
375	Other not economically active	83003017
0	Not applicable	83003017
6	Employed	83003018
24	Unemployed	83003018
0	Discouraged work-seeker	83003018
270	Other not economically active	83003018
0	Not applicable	83003018
45	Employed	83003019
18	Unemployed	83003019
12	Discouraged work-seeker	83003019
666	Other not economically active	83003019
0	Not applicable	83003019
9	Employed	83004001
63	Unemployed	83004001
12	Discouraged work-seeker	83004001
402	Other not economically active	83004001
0	Not applicable	83004001
3	Employed	83004002
9	Unemployed	83004002
0	Discouraged work-seeker	83004002
192	Other not economically active	83004002
0	Not applicable	83004002
3	Employed	83004003
48	Unemployed	83004003
6	Discouraged work-seeker	83004003
429	Other not economically active	83004003
0	Not applicable	83004003
12	Employed	83004004
15	Unemployed	83004004
6	Discouraged work-seeker	83004004
312	Other not economically active	83004004
0	Not applicable	83004004
24	Employed	83004005
21	Unemployed	83004005
21	Discouraged work-seeker	83004005
456	Other not economically active	83004005
0	Not applicable	83004005
15	Employed	83004006
18	Unemployed	83004006
21	Discouraged work-seeker	83004006
495	Other not economically active	83004006
0	Not applicable	83004006
6	Employed	83004007
24	Unemployed	83004007
12	Discouraged work-seeker	83004007
402	Other not economically active	83004007
0	Not applicable	83004007
9	Employed	83004008
21	Unemployed	83004008
15	Discouraged work-seeker	83004008
441	Other not economically active	83004008
0	Not applicable	83004008
6	Employed	83004009
24	Unemployed	83004009
15	Discouraged work-seeker	83004009
402	Other not economically active	83004009
0	Not applicable	83004009
18	Employed	83004010
45	Unemployed	83004010
102	Discouraged work-seeker	83004010
816	Other not economically active	83004010
0	Not applicable	83004010
3	Employed	83004011
24	Unemployed	83004011
21	Discouraged work-seeker	83004011
705	Other not economically active	83004011
0	Not applicable	83004011
9	Employed	83005001
39	Unemployed	83005001
3	Discouraged work-seeker	83005001
333	Other not economically active	83005001
0	Not applicable	83005001
3	Employed	83005002
12	Unemployed	83005002
0	Discouraged work-seeker	83005002
207	Other not economically active	83005002
0	Not applicable	83005002
6	Employed	83005003
36	Unemployed	83005003
12	Discouraged work-seeker	83005003
357	Other not economically active	83005003
0	Not applicable	83005003
27	Employed	83005004
9	Unemployed	83005004
0	Discouraged work-seeker	83005004
291	Other not economically active	83005004
0	Not applicable	83005004
6	Employed	83005005
27	Unemployed	83005005
0	Discouraged work-seeker	83005005
384	Other not economically active	83005005
0	Not applicable	83005005
9	Employed	83005006
24	Unemployed	83005006
3	Discouraged work-seeker	83005006
210	Other not economically active	83005006
0	Not applicable	83005006
6	Employed	83005007
24	Unemployed	83005007
6	Discouraged work-seeker	83005007
336	Other not economically active	83005007
0	Not applicable	83005007
15	Employed	83005008
21	Unemployed	83005008
12	Discouraged work-seeker	83005008
480	Other not economically active	83005008
0	Not applicable	83005008
18	Employed	83005009
30	Unemployed	83005009
21	Discouraged work-seeker	83005009
396	Other not economically active	83005009
0	Not applicable	83005009
3	Employed	83005010
6	Unemployed	83005010
0	Discouraged work-seeker	83005010
192	Other not economically active	83005010
0	Not applicable	83005010
33	Employed	83005011
99	Unemployed	83005011
33	Discouraged work-seeker	83005011
573	Other not economically active	83005011
0	Not applicable	83005011
27	Employed	83005012
36	Unemployed	83005012
6	Discouraged work-seeker	83005012
510	Other not economically active	83005012
0	Not applicable	83005012
15	Employed	83005013
21	Unemployed	83005013
6	Discouraged work-seeker	83005013
342	Other not economically active	83005013
0	Not applicable	83005013
6	Employed	83005014
27	Unemployed	83005014
3	Discouraged work-seeker	83005014
597	Other not economically active	83005014
0	Not applicable	83005014
12	Employed	83005015
39	Unemployed	83005015
15	Discouraged work-seeker	83005015
618	Other not economically active	83005015
0	Not applicable	83005015
15	Employed	83006001
48	Unemployed	83006001
3	Discouraged work-seeker	83006001
372	Other not economically active	83006001
0	Not applicable	83006001
15	Employed	83006002
78	Unemployed	83006002
6	Discouraged work-seeker	83006002
324	Other not economically active	83006002
0	Not applicable	83006002
9	Employed	83006003
21	Unemployed	83006003
9	Discouraged work-seeker	83006003
192	Other not economically active	83006003
0	Not applicable	83006003
3	Employed	83006004
99	Unemployed	83006004
30	Discouraged work-seeker	83006004
306	Other not economically active	83006004
0	Not applicable	83006004
9	Employed	83006005
36	Unemployed	83006005
3	Discouraged work-seeker	83006005
294	Other not economically active	83006005
0	Not applicable	83006005
12	Employed	83006006
30	Unemployed	83006006
12	Discouraged work-seeker	83006006
450	Other not economically active	83006006
0	Not applicable	83006006
27	Employed	83007001
54	Unemployed	83007001
18	Discouraged work-seeker	83007001
660	Other not economically active	83007001
0	Not applicable	83007001
12	Employed	83007002
27	Unemployed	83007002
15	Discouraged work-seeker	83007002
543	Other not economically active	83007002
0	Not applicable	83007002
15	Employed	83007003
60	Unemployed	83007003
3	Discouraged work-seeker	83007003
486	Other not economically active	83007003
0	Not applicable	83007003
3	Employed	83007004
42	Unemployed	83007004
9	Discouraged work-seeker	83007004
282	Other not economically active	83007004
0	Not applicable	83007004
27	Employed	83007005
21	Unemployed	83007005
0	Discouraged work-seeker	83007005
258	Other not economically active	83007005
0	Not applicable	83007005
12	Employed	83007006
33	Unemployed	83007006
0	Discouraged work-seeker	83007006
243	Other not economically active	83007006
0	Not applicable	83007006
24	Employed	83007007
45	Unemployed	83007007
3	Discouraged work-seeker	83007007
336	Other not economically active	83007007
0	Not applicable	83007007
9	Employed	83007008
36	Unemployed	83007008
9	Discouraged work-seeker	83007008
363	Other not economically active	83007008
0	Not applicable	83007008
6	Employed	83007009
57	Unemployed	83007009
3	Discouraged work-seeker	83007009
252	Other not economically active	83007009
0	Not applicable	83007009
45	Employed	83007010
66	Unemployed	83007010
9	Discouraged work-seeker	83007010
420	Other not economically active	83007010
0	Not applicable	83007010
21	Employed	83007011
27	Unemployed	83007011
27	Discouraged work-seeker	83007011
393	Other not economically active	83007011
0	Not applicable	83007011
63	Employed	83007012
87	Unemployed	83007012
21	Discouraged work-seeker	83007012
369	Other not economically active	83007012
0	Not applicable	83007012
3	Employed	83007013
24	Unemployed	83007013
21	Discouraged work-seeker	83007013
321	Other not economically active	83007013
0	Not applicable	83007013
15	Employed	83007014
9	Unemployed	83007014
6	Discouraged work-seeker	83007014
207	Other not economically active	83007014
0	Not applicable	83007014
54	Employed	83007015
54	Unemployed	83007015
33	Discouraged work-seeker	83007015
594	Other not economically active	83007015
0	Not applicable	83007015
30	Employed	83007016
45	Unemployed	83007016
9	Discouraged work-seeker	83007016
621	Other not economically active	83007016
0	Not applicable	83007016
15	Employed	83007017
18	Unemployed	83007017
9	Discouraged work-seeker	83007017
186	Other not economically active	83007017
0	Not applicable	83007017
45	Employed	83007018
24	Unemployed	83007018
3	Discouraged work-seeker	83007018
390	Other not economically active	83007018
0	Not applicable	83007018
24	Employed	83007019
117	Unemployed	83007019
24	Discouraged work-seeker	83007019
669	Other not economically active	83007019
0	Not applicable	83007019
18	Employed	83007020
111	Unemployed	83007020
18	Discouraged work-seeker	83007020
393	Other not economically active	83007020
0	Not applicable	83007020
48	Employed	83007021
6	Unemployed	83007021
0	Discouraged work-seeker	83007021
225	Other not economically active	83007021
0	Not applicable	83007021
27	Employed	83007022
39	Unemployed	83007022
15	Discouraged work-seeker	83007022
582	Other not economically active	83007022
0	Not applicable	83007022
9	Employed	83007023
27	Unemployed	83007023
3	Discouraged work-seeker	83007023
285	Other not economically active	83007023
0	Not applicable	83007023
9	Employed	83007024
36	Unemployed	83007024
15	Discouraged work-seeker	83007024
387	Other not economically active	83007024
0	Not applicable	83007024
42	Employed	83007025
27	Unemployed	83007025
9	Discouraged work-seeker	83007025
324	Other not economically active	83007025
0	Not applicable	83007025
36	Employed	83007026
78	Unemployed	83007026
9	Discouraged work-seeker	83007026
528	Other not economically active	83007026
0	Not applicable	83007026
12	Employed	83007027
27	Unemployed	83007027
3	Discouraged work-seeker	83007027
240	Other not economically active	83007027
0	Not applicable	83007027
42	Employed	83007028
39	Unemployed	83007028
6	Discouraged work-seeker	83007028
525	Other not economically active	83007028
0	Not applicable	83007028
15	Employed	83007029
24	Unemployed	83007029
0	Discouraged work-seeker	83007029
228	Other not economically active	83007029
0	Not applicable	83007029
27	Employed	83007030
18	Unemployed	83007030
6	Discouraged work-seeker	83007030
342	Other not economically active	83007030
0	Not applicable	83007030
24	Employed	83007031
69	Unemployed	83007031
12	Discouraged work-seeker	83007031
543	Other not economically active	83007031
0	Not applicable	83007031
15	Employed	83007032
39	Unemployed	83007032
9	Discouraged work-seeker	83007032
375	Other not economically active	83007032
0	Not applicable	83007032
12	Employed	83101001
39	Unemployed	83101001
9	Discouraged work-seeker	83101001
282	Other not economically active	83101001
0	Not applicable	83101001
3	Employed	83101002
15	Unemployed	83101002
0	Discouraged work-seeker	83101002
231	Other not economically active	83101002
0	Not applicable	83101002
15	Employed	83101003
45	Unemployed	83101003
18	Discouraged work-seeker	83101003
693	Other not economically active	83101003
0	Not applicable	83101003
9	Employed	83101004
33	Unemployed	83101004
6	Discouraged work-seeker	83101004
351	Other not economically active	83101004
0	Not applicable	83101004
9	Employed	83101005
48	Unemployed	83101005
24	Discouraged work-seeker	83101005
387	Other not economically active	83101005
0	Not applicable	83101005
6	Employed	83101006
48	Unemployed	83101006
0	Discouraged work-seeker	83101006
294	Other not economically active	83101006
0	Not applicable	83101006
30	Employed	83101007
51	Unemployed	83101007
12	Discouraged work-seeker	83101007
471	Other not economically active	83101007
0	Not applicable	83101007
9	Employed	83101008
15	Unemployed	83101008
3	Discouraged work-seeker	83101008
186	Other not economically active	83101008
0	Not applicable	83101008
45	Employed	83101009
63	Unemployed	83101009
0	Discouraged work-seeker	83101009
495	Other not economically active	83101009
0	Not applicable	83101009
15	Employed	83102001
87	Unemployed	83102001
15	Discouraged work-seeker	83102001
738	Other not economically active	83102001
0	Not applicable	83102001
9	Employed	83102002
45	Unemployed	83102002
6	Discouraged work-seeker	83102002
516	Other not economically active	83102002
0	Not applicable	83102002
6	Employed	83102003
33	Unemployed	83102003
0	Discouraged work-seeker	83102003
195	Other not economically active	83102003
0	Not applicable	83102003
12	Employed	83102004
63	Unemployed	83102004
12	Discouraged work-seeker	83102004
483	Other not economically active	83102004
0	Not applicable	83102004
15	Employed	83102005
27	Unemployed	83102005
6	Discouraged work-seeker	83102005
567	Other not economically active	83102005
0	Not applicable	83102005
15	Employed	83102006
60	Unemployed	83102006
12	Discouraged work-seeker	83102006
732	Other not economically active	83102006
0	Not applicable	83102006
6	Employed	83102007
54	Unemployed	83102007
0	Discouraged work-seeker	83102007
396	Other not economically active	83102007
0	Not applicable	83102007
27	Employed	83102008
57	Unemployed	83102008
12	Discouraged work-seeker	83102008
615	Other not economically active	83102008
0	Not applicable	83102008
9	Employed	83102009
36	Unemployed	83102009
6	Discouraged work-seeker	83102009
492	Other not economically active	83102009
0	Not applicable	83102009
6	Employed	83102010
27	Unemployed	83102010
3	Discouraged work-seeker	83102010
330	Other not economically active	83102010
0	Not applicable	83102010
12	Employed	83102011
45	Unemployed	83102011
3	Discouraged work-seeker	83102011
243	Other not economically active	83102011
0	Not applicable	83102011
30	Employed	83102012
54	Unemployed	83102012
0	Discouraged work-seeker	83102012
465	Other not economically active	83102012
0	Not applicable	83102012
6	Employed	83102013
24	Unemployed	83102013
0	Discouraged work-seeker	83102013
237	Other not economically active	83102013
0	Not applicable	83102013
45	Employed	83102014
69	Unemployed	83102014
3	Discouraged work-seeker	83102014
306	Other not economically active	83102014
0	Not applicable	83102014
24	Employed	83102015
132	Unemployed	83102015
15	Discouraged work-seeker	83102015
552	Other not economically active	83102015
0	Not applicable	83102015
9	Employed	83102016
30	Unemployed	83102016
3	Discouraged work-seeker	83102016
318	Other not economically active	83102016
0	Not applicable	83102016
18	Employed	83102017
33	Unemployed	83102017
3	Discouraged work-seeker	83102017
393	Other not economically active	83102017
0	Not applicable	83102017
36	Employed	83102018
27	Unemployed	83102018
9	Discouraged work-seeker	83102018
393	Other not economically active	83102018
0	Not applicable	83102018
33	Employed	83102019
39	Unemployed	83102019
15	Discouraged work-seeker	83102019
381	Other not economically active	83102019
0	Not applicable	83102019
18	Employed	83102020
21	Unemployed	83102020
15	Discouraged work-seeker	83102020
339	Other not economically active	83102020
0	Not applicable	83102020
27	Employed	83102021
51	Unemployed	83102021
9	Discouraged work-seeker	83102021
690	Other not economically active	83102021
0	Not applicable	83102021
18	Employed	83102022
9	Unemployed	83102022
0	Discouraged work-seeker	83102022
126	Other not economically active	83102022
0	Not applicable	83102022
27	Employed	83102023
33	Unemployed	83102023
9	Discouraged work-seeker	83102023
642	Other not economically active	83102023
0	Not applicable	83102023
27	Employed	83102024
12	Unemployed	83102024
3	Discouraged work-seeker	83102024
417	Other not economically active	83102024
0	Not applicable	83102024
36	Employed	83102025
84	Unemployed	83102025
9	Discouraged work-seeker	83102025
684	Other not economically active	83102025
0	Not applicable	83102025
21	Employed	83102026
21	Unemployed	83102026
12	Discouraged work-seeker	83102026
408	Other not economically active	83102026
0	Not applicable	83102026
21	Employed	83102027
30	Unemployed	83102027
18	Discouraged work-seeker	83102027
309	Other not economically active	83102027
0	Not applicable	83102027
33	Employed	83102028
84	Unemployed	83102028
27	Discouraged work-seeker	83102028
618	Other not economically active	83102028
0	Not applicable	83102028
33	Employed	83102029
99	Unemployed	83102029
24	Discouraged work-seeker	83102029
840	Other not economically active	83102029
0	Not applicable	83102029
15	Employed	83102030
66	Unemployed	83102030
9	Discouraged work-seeker	83102030
375	Other not economically active	83102030
0	Not applicable	83102030
33	Employed	83102031
93	Unemployed	83102031
6	Discouraged work-seeker	83102031
480	Other not economically active	83102031
0	Not applicable	83102031
24	Employed	83102032
36	Unemployed	83102032
42	Discouraged work-seeker	83102032
378	Other not economically active	83102032
0	Not applicable	83102032
39	Employed	83102033
39	Unemployed	83102033
0	Discouraged work-seeker	83102033
528	Other not economically active	83102033
0	Not applicable	83102033
63	Employed	83102034
33	Unemployed	83102034
9	Discouraged work-seeker	83102034
423	Other not economically active	83102034
0	Not applicable	83102034
3	Employed	83103001
12	Unemployed	83103001
6	Discouraged work-seeker	83103001
204	Other not economically active	83103001
0	Not applicable	83103001
15	Employed	83103002
63	Unemployed	83103002
24	Discouraged work-seeker	83103002
639	Other not economically active	83103002
0	Not applicable	83103002
9	Employed	83103003
36	Unemployed	83103003
6	Discouraged work-seeker	83103003
351	Other not economically active	83103003
0	Not applicable	83103003
21	Employed	83103004
21	Unemployed	83103004
0	Discouraged work-seeker	83103004
138	Other not economically active	83103004
0	Not applicable	83103004
12	Employed	83103005
12	Unemployed	83103005
3	Discouraged work-seeker	83103005
111	Other not economically active	83103005
0	Not applicable	83103005
27	Employed	83103006
39	Unemployed	83103006
0	Discouraged work-seeker	83103006
300	Other not economically active	83103006
0	Not applicable	83103006
24	Employed	83103007
18	Unemployed	83103007
36	Discouraged work-seeker	83103007
183	Other not economically active	83103007
0	Not applicable	83103007
21	Employed	83103008
48	Unemployed	83103008
18	Discouraged work-seeker	83103008
366	Other not economically active	83103008
0	Not applicable	83103008
42	Employed	83103009
21	Unemployed	83103009
3	Discouraged work-seeker	83103009
306	Other not economically active	83103009
0	Not applicable	83103009
90	Employed	83103010
27	Unemployed	83103010
0	Discouraged work-seeker	83103010
630	Other not economically active	83103010
0	Not applicable	83103010
21	Employed	83103011
27	Unemployed	83103011
0	Discouraged work-seeker	83103011
420	Other not economically active	83103011
0	Not applicable	83103011
42	Employed	83103012
33	Unemployed	83103012
0	Discouraged work-seeker	83103012
771	Other not economically active	83103012
0	Not applicable	83103012
18	Employed	83103013
12	Unemployed	83103013
0	Discouraged work-seeker	83103013
141	Other not economically active	83103013
0	Not applicable	83103013
21	Employed	83103014
9	Unemployed	83103014
0	Discouraged work-seeker	83103014
339	Other not economically active	83103014
0	Not applicable	83103014
21	Employed	83103015
30	Unemployed	83103015
0	Discouraged work-seeker	83103015
276	Other not economically active	83103015
0	Not applicable	83103015
27	Employed	83103016
21	Unemployed	83103016
3	Discouraged work-seeker	83103016
300	Other not economically active	83103016
0	Not applicable	83103016
12	Employed	83103017
42	Unemployed	83103017
9	Discouraged work-seeker	83103017
300	Other not economically active	83103017
0	Not applicable	83103017
9	Employed	83103018
9	Unemployed	83103018
0	Discouraged work-seeker	83103018
204	Other not economically active	83103018
0	Not applicable	83103018
15	Employed	83103019
21	Unemployed	83103019
0	Discouraged work-seeker	83103019
159	Other not economically active	83103019
0	Not applicable	83103019
3	Employed	83103020
15	Unemployed	83103020
0	Discouraged work-seeker	83103020
204	Other not economically active	83103020
0	Not applicable	83103020
21	Employed	83103021
15	Unemployed	83103021
3	Discouraged work-seeker	83103021
294	Other not economically active	83103021
0	Not applicable	83103021
6	Employed	83103022
6	Unemployed	83103022
3	Discouraged work-seeker	83103022
147	Other not economically active	83103022
0	Not applicable	83103022
36	Employed	83103023
66	Unemployed	83103023
12	Discouraged work-seeker	83103023
573	Other not economically active	83103023
0	Not applicable	83103023
0	Employed	83103024
9	Unemployed	83103024
3	Discouraged work-seeker	83103024
90	Other not economically active	83103024
0	Not applicable	83103024
36	Employed	83103025
78	Unemployed	83103025
3	Discouraged work-seeker	83103025
633	Other not economically active	83103025
0	Not applicable	83103025
6	Employed	83103026
15	Unemployed	83103026
0	Discouraged work-seeker	83103026
123	Other not economically active	83103026
0	Not applicable	83103026
12	Employed	83103027
48	Unemployed	83103027
6	Discouraged work-seeker	83103027
222	Other not economically active	83103027
0	Not applicable	83103027
39	Employed	83103028
105	Unemployed	83103028
21	Discouraged work-seeker	83103028
756	Other not economically active	83103028
0	Not applicable	83103028
12	Employed	83103029
33	Unemployed	83103029
12	Discouraged work-seeker	83103029
309	Other not economically active	83103029
0	Not applicable	83103029
3	Employed	83104001
24	Unemployed	83104001
3	Discouraged work-seeker	83104001
324	Other not economically active	83104001
0	Not applicable	83104001
3	Employed	83104002
30	Unemployed	83104002
3	Discouraged work-seeker	83104002
228	Other not economically active	83104002
0	Not applicable	83104002
6	Employed	83104003
24	Unemployed	83104003
3	Discouraged work-seeker	83104003
369	Other not economically active	83104003
0	Not applicable	83104003
12	Employed	83104004
33	Unemployed	83104004
18	Discouraged work-seeker	83104004
273	Other not economically active	83104004
0	Not applicable	83104004
6	Employed	83104005
9	Unemployed	83104005
3	Discouraged work-seeker	83104005
156	Other not economically active	83104005
0	Not applicable	83104005
9	Employed	83104006
30	Unemployed	83104006
6	Discouraged work-seeker	83104006
345	Other not economically active	83104006
0	Not applicable	83104006
6	Employed	83104007
21	Unemployed	83104007
0	Discouraged work-seeker	83104007
297	Other not economically active	83104007
0	Not applicable	83104007
15	Employed	83104008
12	Unemployed	83104008
9	Discouraged work-seeker	83104008
336	Other not economically active	83104008
0	Not applicable	83104008
9	Employed	83105001
27	Unemployed	83105001
21	Discouraged work-seeker	83105001
612	Other not economically active	83105001
0	Not applicable	83105001
9	Employed	83105002
36	Unemployed	83105002
12	Discouraged work-seeker	83105002
678	Other not economically active	83105002
0	Not applicable	83105002
3	Employed	83105003
18	Unemployed	83105003
3	Discouraged work-seeker	83105003
453	Other not economically active	83105003
0	Not applicable	83105003
30	Employed	83105004
63	Unemployed	83105004
6	Discouraged work-seeker	83105004
924	Other not economically active	83105004
0	Not applicable	83105004
6	Employed	83105005
21	Unemployed	83105005
9	Discouraged work-seeker	83105005
465	Other not economically active	83105005
0	Not applicable	83105005
18	Employed	83105006
72	Unemployed	83105006
15	Discouraged work-seeker	83105006
630	Other not economically active	83105006
0	Not applicable	83105006
3	Employed	83105007
24	Unemployed	83105007
3	Discouraged work-seeker	83105007
543	Other not economically active	83105007
0	Not applicable	83105007
12	Employed	83105008
27	Unemployed	83105008
12	Discouraged work-seeker	83105008
798	Other not economically active	83105008
0	Not applicable	83105008
30	Employed	83105009
45	Unemployed	83105009
9	Discouraged work-seeker	83105009
600	Other not economically active	83105009
0	Not applicable	83105009
3	Employed	83105010
15	Unemployed	83105010
0	Discouraged work-seeker	83105010
507	Other not economically active	83105010
0	Not applicable	83105010
12	Employed	83105011
42	Unemployed	83105011
21	Discouraged work-seeker	83105011
777	Other not economically active	83105011
0	Not applicable	83105011
21	Employed	83105012
45	Unemployed	83105012
0	Discouraged work-seeker	83105012
378	Other not economically active	83105012
0	Not applicable	83105012
9	Employed	83105013
27	Unemployed	83105013
6	Discouraged work-seeker	83105013
465	Other not economically active	83105013
0	Not applicable	83105013
21	Employed	83105014
39	Unemployed	83105014
12	Discouraged work-seeker	83105014
744	Other not economically active	83105014
0	Not applicable	83105014
6	Employed	83105015
30	Unemployed	83105015
9	Discouraged work-seeker	83105015
588	Other not economically active	83105015
0	Not applicable	83105015
9	Employed	83105016
21	Unemployed	83105016
15	Discouraged work-seeker	83105016
543	Other not economically active	83105016
0	Not applicable	83105016
15	Employed	83105017
18	Unemployed	83105017
6	Discouraged work-seeker	83105017
540	Other not economically active	83105017
0	Not applicable	83105017
9	Employed	83105018
45	Unemployed	83105018
24	Discouraged work-seeker	83105018
591	Other not economically active	83105018
0	Not applicable	83105018
24	Employed	83105019
39	Unemployed	83105019
0	Discouraged work-seeker	83105019
687	Other not economically active	83105019
0	Not applicable	83105019
6	Employed	83105020
45	Unemployed	83105020
0	Discouraged work-seeker	83105020
825	Other not economically active	83105020
0	Not applicable	83105020
12	Employed	83105021
33	Unemployed	83105021
15	Discouraged work-seeker	83105021
474	Other not economically active	83105021
0	Not applicable	83105021
12	Employed	83105022
36	Unemployed	83105022
15	Discouraged work-seeker	83105022
600	Other not economically active	83105022
0	Not applicable	83105022
12	Employed	83105023
12	Unemployed	83105023
27	Discouraged work-seeker	83105023
489	Other not economically active	83105023
0	Not applicable	83105023
9	Employed	83105024
18	Unemployed	83105024
3	Discouraged work-seeker	83105024
618	Other not economically active	83105024
0	Not applicable	83105024
6	Employed	83105025
27	Unemployed	83105025
9	Discouraged work-seeker	83105025
483	Other not economically active	83105025
0	Not applicable	83105025
9	Employed	83105026
9	Unemployed	83105026
9	Discouraged work-seeker	83105026
456	Other not economically active	83105026
0	Not applicable	83105026
15	Employed	83105027
72	Unemployed	83105027
9	Discouraged work-seeker	83105027
453	Other not economically active	83105027
0	Not applicable	83105027
9	Employed	83105028
27	Unemployed	83105028
9	Discouraged work-seeker	83105028
411	Other not economically active	83105028
0	Not applicable	83105028
9	Employed	83105029
15	Unemployed	83105029
6	Discouraged work-seeker	83105029
324	Other not economically active	83105029
0	Not applicable	83105029
9	Employed	83105030
54	Unemployed	83105030
27	Discouraged work-seeker	83105030
642	Other not economically active	83105030
0	Not applicable	83105030
15	Employed	83105031
42	Unemployed	83105031
9	Discouraged work-seeker	83105031
573	Other not economically active	83105031
0	Not applicable	83105031
9	Employed	83105032
27	Unemployed	83105032
6	Discouraged work-seeker	83105032
378	Other not economically active	83105032
0	Not applicable	83105032
21	Employed	83106001
66	Unemployed	83106001
3	Discouraged work-seeker	83106001
543	Other not economically active	83106001
0	Not applicable	83106001
9	Employed	83106002
33	Unemployed	83106002
27	Discouraged work-seeker	83106002
579	Other not economically active	83106002
0	Not applicable	83106002
3	Employed	83106003
24	Unemployed	83106003
6	Discouraged work-seeker	83106003
402	Other not economically active	83106003
0	Not applicable	83106003
9	Employed	83106004
18	Unemployed	83106004
6	Discouraged work-seeker	83106004
432	Other not economically active	83106004
0	Not applicable	83106004
9	Employed	83106005
30	Unemployed	83106005
3	Discouraged work-seeker	83106005
531	Other not economically active	83106005
0	Not applicable	83106005
30	Employed	83106006
21	Unemployed	83106006
6	Discouraged work-seeker	83106006
708	Other not economically active	83106006
0	Not applicable	83106006
9	Employed	83106007
18	Unemployed	83106007
3	Discouraged work-seeker	83106007
447	Other not economically active	83106007
0	Not applicable	83106007
3	Employed	83106008
12	Unemployed	83106008
3	Discouraged work-seeker	83106008
423	Other not economically active	83106008
0	Not applicable	83106008
0	Employed	83106009
6	Unemployed	83106009
15	Discouraged work-seeker	83106009
306	Other not economically active	83106009
0	Not applicable	83106009
0	Employed	83106010
30	Unemployed	83106010
12	Discouraged work-seeker	83106010
459	Other not economically active	83106010
0	Not applicable	83106010
9	Employed	83106011
24	Unemployed	83106011
12	Discouraged work-seeker	83106011
540	Other not economically active	83106011
0	Not applicable	83106011
3	Employed	83106012
24	Unemployed	83106012
12	Discouraged work-seeker	83106012
525	Other not economically active	83106012
0	Not applicable	83106012
6	Employed	83106013
24	Unemployed	83106013
3	Discouraged work-seeker	83106013
405	Other not economically active	83106013
0	Not applicable	83106013
3	Employed	83106014
12	Unemployed	83106014
3	Discouraged work-seeker	83106014
393	Other not economically active	83106014
0	Not applicable	83106014
6	Employed	83106015
57	Unemployed	83106015
15	Discouraged work-seeker	83106015
600	Other not economically active	83106015
0	Not applicable	83106015
6	Employed	83106016
18	Unemployed	83106016
3	Discouraged work-seeker	83106016
255	Other not economically active	83106016
0	Not applicable	83106016
6	Employed	83106017
45	Unemployed	83106017
15	Discouraged work-seeker	83106017
729	Other not economically active	83106017
0	Not applicable	83106017
0	Employed	83106018
18	Unemployed	83106018
3	Discouraged work-seeker	83106018
546	Other not economically active	83106018
0	Not applicable	83106018
6	Employed	83106019
15	Unemployed	83106019
3	Discouraged work-seeker	83106019
654	Other not economically active	83106019
0	Not applicable	83106019
3	Employed	83106020
15	Unemployed	83106020
3	Discouraged work-seeker	83106020
444	Other not economically active	83106020
0	Not applicable	83106020
6	Employed	83106021
42	Unemployed	83106021
18	Discouraged work-seeker	83106021
624	Other not economically active	83106021
0	Not applicable	83106021
9	Employed	83106022
36	Unemployed	83106022
3	Discouraged work-seeker	83106022
699	Other not economically active	83106022
0	Not applicable	83106022
6	Employed	83106023
18	Unemployed	83106023
3	Discouraged work-seeker	83106023
369	Other not economically active	83106023
0	Not applicable	83106023
6	Employed	83106024
30	Unemployed	83106024
6	Discouraged work-seeker	83106024
642	Other not economically active	83106024
0	Not applicable	83106024
24	Employed	83106025
39	Unemployed	83106025
3	Discouraged work-seeker	83106025
459	Other not economically active	83106025
0	Not applicable	83106025
9	Employed	83106026
33	Unemployed	83106026
12	Discouraged work-seeker	83106026
546	Other not economically active	83106026
0	Not applicable	83106026
3	Employed	83106027
45	Unemployed	83106027
9	Discouraged work-seeker	83106027
531	Other not economically active	83106027
0	Not applicable	83106027
9	Employed	83106028
18	Unemployed	83106028
6	Discouraged work-seeker	83106028
375	Other not economically active	83106028
0	Not applicable	83106028
6	Employed	83106029
33	Unemployed	83106029
3	Discouraged work-seeker	83106029
513	Other not economically active	83106029
0	Not applicable	83106029
12	Employed	83106030
21	Unemployed	83106030
18	Discouraged work-seeker	83106030
564	Other not economically active	83106030
0	Not applicable	83106030
9	Employed	83106031
18	Unemployed	83106031
15	Discouraged work-seeker	83106031
534	Other not economically active	83106031
0	Not applicable	83106031
3	Employed	83201001
15	Unemployed	83201001
0	Discouraged work-seeker	83201001
132	Other not economically active	83201001
0	Not applicable	83201001
21	Employed	83201002
54	Unemployed	83201002
6	Discouraged work-seeker	83201002
306	Other not economically active	83201002
0	Not applicable	83201002
18	Employed	83201003
39	Unemployed	83201003
9	Discouraged work-seeker	83201003
396	Other not economically active	83201003
0	Not applicable	83201003
21	Employed	83201004
9	Unemployed	83201004
6	Discouraged work-seeker	83201004
312	Other not economically active	83201004
0	Not applicable	83201004
36	Employed	83201005
48	Unemployed	83201005
6	Discouraged work-seeker	83201005
459	Other not economically active	83201005
0	Not applicable	83201005
15	Employed	83201006
33	Unemployed	83201006
0	Discouraged work-seeker	83201006
168	Other not economically active	83201006
0	Not applicable	83201006
30	Employed	83201007
30	Unemployed	83201007
36	Discouraged work-seeker	83201007
432	Other not economically active	83201007
0	Not applicable	83201007
12	Employed	83201008
36	Unemployed	83201008
15	Discouraged work-seeker	83201008
480	Other not economically active	83201008
0	Not applicable	83201008
12	Employed	83201009
48	Unemployed	83201009
0	Discouraged work-seeker	83201009
540	Other not economically active	83201009
0	Not applicable	83201009
15	Employed	83201010
12	Unemployed	83201010
6	Discouraged work-seeker	83201010
141	Other not economically active	83201010
0	Not applicable	83201010
15	Employed	83201011
0	Unemployed	83201011
3	Discouraged work-seeker	83201011
24	Other not economically active	83201011
0	Not applicable	83201011
9	Employed	83201012
3	Unemployed	83201012
6	Discouraged work-seeker	83201012
213	Other not economically active	83201012
0	Not applicable	83201012
3	Employed	83201013
0	Unemployed	83201013
0	Discouraged work-seeker	83201013
105	Other not economically active	83201013
0	Not applicable	83201013
39	Employed	83201014
36	Unemployed	83201014
24	Discouraged work-seeker	83201014
459	Other not economically active	83201014
0	Not applicable	83201014
27	Employed	83202001
57	Unemployed	83202001
33	Discouraged work-seeker	83202001
1203	Other not economically active	83202001
0	Not applicable	83202001
21	Employed	83202002
90	Unemployed	83202002
27	Discouraged work-seeker	83202002
1362	Other not economically active	83202002
0	Not applicable	83202002
27	Employed	83202003
33	Unemployed	83202003
24	Discouraged work-seeker	83202003
879	Other not economically active	83202003
0	Not applicable	83202003
15	Employed	83202004
45	Unemployed	83202004
18	Discouraged work-seeker	83202004
606	Other not economically active	83202004
0	Not applicable	83202004
15	Employed	83202005
54	Unemployed	83202005
24	Discouraged work-seeker	83202005
1038	Other not economically active	83202005
0	Not applicable	83202005
21	Employed	83202006
63	Unemployed	83202006
15	Discouraged work-seeker	83202006
960	Other not economically active	83202006
0	Not applicable	83202006
6	Employed	83202007
42	Unemployed	83202007
18	Discouraged work-seeker	83202007
798	Other not economically active	83202007
0	Not applicable	83202007
18	Employed	83202008
57	Unemployed	83202008
15	Discouraged work-seeker	83202008
804	Other not economically active	83202008
0	Not applicable	83202008
3	Employed	83202009
72	Unemployed	83202009
15	Discouraged work-seeker	83202009
780	Other not economically active	83202009
0	Not applicable	83202009
42	Employed	83202010
90	Unemployed	83202010
15	Discouraged work-seeker	83202010
891	Other not economically active	83202010
0	Not applicable	83202010
30	Employed	83202011
66	Unemployed	83202011
21	Discouraged work-seeker	83202011
921	Other not economically active	83202011
0	Not applicable	83202011
48	Employed	83202012
39	Unemployed	83202012
6	Discouraged work-seeker	83202012
411	Other not economically active	83202012
0	Not applicable	83202012
30	Employed	83202013
57	Unemployed	83202013
0	Discouraged work-seeker	83202013
588	Other not economically active	83202013
0	Not applicable	83202013
63	Employed	83202014
57	Unemployed	83202014
15	Discouraged work-seeker	83202014
720	Other not economically active	83202014
0	Not applicable	83202014
72	Employed	83202015
6	Unemployed	83202015
0	Discouraged work-seeker	83202015
654	Other not economically active	83202015
0	Not applicable	83202015
51	Employed	83202016
12	Unemployed	83202016
6	Discouraged work-seeker	83202016
387	Other not economically active	83202016
0	Not applicable	83202016
60	Employed	83202017
21	Unemployed	83202017
0	Discouraged work-seeker	83202017
543	Other not economically active	83202017
0	Not applicable	83202017
27	Employed	83202018
84	Unemployed	83202018
6	Discouraged work-seeker	83202018
564	Other not economically active	83202018
0	Not applicable	83202018
15	Employed	83202019
69	Unemployed	83202019
12	Discouraged work-seeker	83202019
726	Other not economically active	83202019
0	Not applicable	83202019
18	Employed	83202020
33	Unemployed	83202020
15	Discouraged work-seeker	83202020
693	Other not economically active	83202020
0	Not applicable	83202020
12	Employed	83202021
48	Unemployed	83202021
6	Discouraged work-seeker	83202021
978	Other not economically active	83202021
0	Not applicable	83202021
15	Employed	83202022
75	Unemployed	83202022
3	Discouraged work-seeker	83202022
837	Other not economically active	83202022
0	Not applicable	83202022
9	Employed	83202023
66	Unemployed	83202023
6	Discouraged work-seeker	83202023
606	Other not economically active	83202023
0	Not applicable	83202023
6	Employed	83202024
99	Unemployed	83202024
21	Discouraged work-seeker	83202024
798	Other not economically active	83202024
0	Not applicable	83202024
12	Employed	83202025
57	Unemployed	83202025
27	Discouraged work-seeker	83202025
876	Other not economically active	83202025
0	Not applicable	83202025
30	Employed	83202026
78	Unemployed	83202026
9	Discouraged work-seeker	83202026
966	Other not economically active	83202026
0	Not applicable	83202026
33	Employed	83202027
93	Unemployed	83202027
30	Discouraged work-seeker	83202027
1017	Other not economically active	83202027
0	Not applicable	83202027
24	Employed	83202028
90	Unemployed	83202028
3	Discouraged work-seeker	83202028
897	Other not economically active	83202028
0	Not applicable	83202028
21	Employed	83202029
33	Unemployed	83202029
48	Discouraged work-seeker	83202029
996	Other not economically active	83202029
0	Not applicable	83202029
42	Employed	83202030
36	Unemployed	83202030
0	Discouraged work-seeker	83202030
564	Other not economically active	83202030
0	Not applicable	83202030
12	Employed	83202031
51	Unemployed	83202031
6	Discouraged work-seeker	83202031
624	Other not economically active	83202031
0	Not applicable	83202031
27	Employed	83202032
81	Unemployed	83202032
15	Discouraged work-seeker	83202032
897	Other not economically active	83202032
0	Not applicable	83202032
18	Employed	83202033
51	Unemployed	83202033
6	Discouraged work-seeker	83202033
678	Other not economically active	83202033
0	Not applicable	83202033
12	Employed	83202034
54	Unemployed	83202034
18	Discouraged work-seeker	83202034
717	Other not economically active	83202034
0	Not applicable	83202034
18	Employed	83202035
69	Unemployed	83202035
21	Discouraged work-seeker	83202035
819	Other not economically active	83202035
0	Not applicable	83202035
39	Employed	83202036
60	Unemployed	83202036
27	Discouraged work-seeker	83202036
798	Other not economically active	83202036
0	Not applicable	83202036
69	Employed	83202037
48	Unemployed	83202037
21	Discouraged work-seeker	83202037
804	Other not economically active	83202037
0	Not applicable	83202037
90	Employed	83202038
144	Unemployed	83202038
60	Discouraged work-seeker	83202038
1281	Other not economically active	83202038
0	Not applicable	83202038
30	Employed	83202039
78	Unemployed	83202039
21	Discouraged work-seeker	83202039
765	Other not economically active	83202039
0	Not applicable	83202039
9	Employed	83203001
30	Unemployed	83203001
3	Discouraged work-seeker	83203001
195	Other not economically active	83203001
0	Not applicable	83203001
9	Employed	83203002
27	Unemployed	83203002
6	Discouraged work-seeker	83203002
354	Other not economically active	83203002
0	Not applicable	83203002
24	Employed	83203003
132	Unemployed	83203003
18	Discouraged work-seeker	83203003
543	Other not economically active	83203003
0	Not applicable	83203003
12	Employed	83203004
48	Unemployed	83203004
6	Discouraged work-seeker	83203004
462	Other not economically active	83203004
0	Not applicable	83203004
9	Employed	83203005
15	Unemployed	83203005
6	Discouraged work-seeker	83203005
297	Other not economically active	83203005
0	Not applicable	83203005
12	Employed	83203006
33	Unemployed	83203006
15	Discouraged work-seeker	83203006
339	Other not economically active	83203006
0	Not applicable	83203006
9	Employed	83203007
12	Unemployed	83203007
0	Discouraged work-seeker	83203007
129	Other not economically active	83203007
0	Not applicable	83203007
15	Employed	83203008
42	Unemployed	83203008
6	Discouraged work-seeker	83203008
423	Other not economically active	83203008
0	Not applicable	83203008
12	Employed	83203009
6	Unemployed	83203009
21	Discouraged work-seeker	83203009
324	Other not economically active	83203009
0	Not applicable	83203009
45	Employed	83204001
87	Unemployed	83204001
39	Discouraged work-seeker	83204001
990	Other not economically active	83204001
0	Not applicable	83204001
57	Employed	83204002
120	Unemployed	83204002
39	Discouraged work-seeker	83204002
1605	Other not economically active	83204002
0	Not applicable	83204002
72	Employed	83204003
156	Unemployed	83204003
27	Discouraged work-seeker	83204003
1014	Other not economically active	83204003
0	Not applicable	83204003
24	Employed	83204004
51	Unemployed	83204004
42	Discouraged work-seeker	83204004
609	Other not economically active	83204004
0	Not applicable	83204004
60	Employed	83204005
117	Unemployed	83204005
27	Discouraged work-seeker	83204005
885	Other not economically active	83204005
0	Not applicable	83204005
60	Employed	83204006
51	Unemployed	83204006
27	Discouraged work-seeker	83204006
711	Other not economically active	83204006
0	Not applicable	83204006
102	Employed	83204007
48	Unemployed	83204007
18	Discouraged work-seeker	83204007
561	Other not economically active	83204007
0	Not applicable	83204007
36	Employed	83204008
66	Unemployed	83204008
36	Discouraged work-seeker	83204008
966	Other not economically active	83204008
0	Not applicable	83204008
21	Employed	83204009
102	Unemployed	83204009
12	Discouraged work-seeker	83204009
837	Other not economically active	83204009
0	Not applicable	83204009
15	Employed	83204010
123	Unemployed	83204010
36	Discouraged work-seeker	83204010
813	Other not economically active	83204010
0	Not applicable	83204010
42	Employed	83204011
60	Unemployed	83204011
72	Discouraged work-seeker	83204011
921	Other not economically active	83204011
0	Not applicable	83204011
48	Employed	83204012
36	Unemployed	83204012
12	Discouraged work-seeker	83204012
840	Other not economically active	83204012
0	Not applicable	83204012
21	Employed	83204013
21	Unemployed	83204013
9	Discouraged work-seeker	83204013
813	Other not economically active	83204013
0	Not applicable	83204013
15	Employed	83204014
48	Unemployed	83204014
24	Discouraged work-seeker	83204014
846	Other not economically active	83204014
0	Not applicable	83204014
18	Employed	83204015
45	Unemployed	83204015
30	Discouraged work-seeker	83204015
1137	Other not economically active	83204015
0	Not applicable	83204015
24	Employed	83204016
30	Unemployed	83204016
12	Discouraged work-seeker	83204016
801	Other not economically active	83204016
0	Not applicable	83204016
9	Employed	83204017
33	Unemployed	83204017
21	Discouraged work-seeker	83204017
498	Other not economically active	83204017
0	Not applicable	83204017
18	Employed	83204018
48	Unemployed	83204018
9	Discouraged work-seeker	83204018
807	Other not economically active	83204018
0	Not applicable	83204018
6	Employed	83204019
78	Unemployed	83204019
24	Discouraged work-seeker	83204019
591	Other not economically active	83204019
0	Not applicable	83204019
36	Employed	83204020
87	Unemployed	83204020
15	Discouraged work-seeker	83204020
960	Other not economically active	83204020
0	Not applicable	83204020
36	Employed	83204021
105	Unemployed	83204021
18	Discouraged work-seeker	83204021
948	Other not economically active	83204021
0	Not applicable	83204021
18	Employed	83204022
69	Unemployed	83204022
21	Discouraged work-seeker	83204022
831	Other not economically active	83204022
0	Not applicable	83204022
21	Employed	83204023
30	Unemployed	83204023
51	Discouraged work-seeker	83204023
513	Other not economically active	83204023
0	Not applicable	83204023
24	Employed	83204024
48	Unemployed	83204024
27	Discouraged work-seeker	83204024
840	Other not economically active	83204024
0	Not applicable	83204024
9	Employed	83204025
24	Unemployed	83204025
18	Discouraged work-seeker	83204025
579	Other not economically active	83204025
0	Not applicable	83204025
15	Employed	83204026
36	Unemployed	83204026
3	Discouraged work-seeker	83204026
426	Other not economically active	83204026
0	Not applicable	83204026
42	Employed	83204027
108	Unemployed	83204027
39	Discouraged work-seeker	83204027
792	Other not economically active	83204027
0	Not applicable	83204027
18	Employed	83204028
45	Unemployed	83204028
12	Discouraged work-seeker	83204028
408	Other not economically active	83204028
0	Not applicable	83204028
36	Employed	83204029
36	Unemployed	83204029
66	Discouraged work-seeker	83204029
603	Other not economically active	83204029
0	Not applicable	83204029
69	Employed	83204030
48	Unemployed	83204030
24	Discouraged work-seeker	83204030
555	Other not economically active	83204030
0	Not applicable	83204030
60	Employed	83204031
33	Unemployed	83204031
6	Discouraged work-seeker	83204031
477	Other not economically active	83204031
0	Not applicable	83204031
12	Employed	83204032
48	Unemployed	83204032
63	Discouraged work-seeker	83204032
786	Other not economically active	83204032
0	Not applicable	83204032
24	Employed	83204033
108	Unemployed	83204033
33	Discouraged work-seeker	83204033
903	Other not economically active	83204033
0	Not applicable	83204033
18	Employed	83205001
96	Unemployed	83205001
12	Discouraged work-seeker	83205001
1395	Other not economically active	83205001
0	Not applicable	83205001
6	Employed	83205002
33	Unemployed	83205002
24	Discouraged work-seeker	83205002
768	Other not economically active	83205002
0	Not applicable	83205002
15	Employed	83205003
48	Unemployed	83205003
18	Discouraged work-seeker	83205003
1125	Other not economically active	83205003
0	Not applicable	83205003
15	Employed	83205004
18	Unemployed	83205004
24	Discouraged work-seeker	83205004
735	Other not economically active	83205004
0	Not applicable	83205004
12	Employed	83205005
36	Unemployed	83205005
12	Discouraged work-seeker	83205005
750	Other not economically active	83205005
0	Not applicable	83205005
15	Employed	83205006
66	Unemployed	83205006
21	Discouraged work-seeker	83205006
1116	Other not economically active	83205006
0	Not applicable	83205006
12	Employed	83205007
69	Unemployed	83205007
21	Discouraged work-seeker	83205007
981	Other not economically active	83205007
0	Not applicable	83205007
9	Employed	83205008
93	Unemployed	83205008
18	Discouraged work-seeker	83205008
813	Other not economically active	83205008
0	Not applicable	83205008
9	Employed	83205009
87	Unemployed	83205009
24	Discouraged work-seeker	83205009
1197	Other not economically active	83205009
0	Not applicable	83205009
9	Employed	83205010
123	Unemployed	83205010
33	Discouraged work-seeker	83205010
1032	Other not economically active	83205010
0	Not applicable	83205010
9	Employed	83205011
54	Unemployed	83205011
6	Discouraged work-seeker	83205011
1044	Other not economically active	83205011
0	Not applicable	83205011
9	Employed	83205012
39	Unemployed	83205012
36	Discouraged work-seeker	83205012
966	Other not economically active	83205012
0	Not applicable	83205012
9	Employed	83205013
66	Unemployed	83205013
21	Discouraged work-seeker	83205013
822	Other not economically active	83205013
0	Not applicable	83205013
12	Employed	83205014
72	Unemployed	83205014
27	Discouraged work-seeker	83205014
924	Other not economically active	83205014
0	Not applicable	83205014
9	Employed	83205015
96	Unemployed	83205015
21	Discouraged work-seeker	83205015
927	Other not economically active	83205015
0	Not applicable	83205015
15	Employed	83205016
81	Unemployed	83205016
12	Discouraged work-seeker	83205016
765	Other not economically active	83205016
0	Not applicable	83205016
15	Employed	83205017
66	Unemployed	83205017
27	Discouraged work-seeker	83205017
969	Other not economically active	83205017
0	Not applicable	83205017
21	Employed	83205018
108	Unemployed	83205018
18	Discouraged work-seeker	83205018
1161	Other not economically active	83205018
0	Not applicable	83205018
18	Employed	83205019
69	Unemployed	83205019
15	Discouraged work-seeker	83205019
1170	Other not economically active	83205019
0	Not applicable	83205019
12	Employed	83205020
36	Unemployed	83205020
30	Discouraged work-seeker	83205020
849	Other not economically active	83205020
0	Not applicable	83205020
6	Employed	83205021
54	Unemployed	83205021
33	Discouraged work-seeker	83205021
1026	Other not economically active	83205021
0	Not applicable	83205021
12	Employed	83205022
54	Unemployed	83205022
21	Discouraged work-seeker	83205022
978	Other not economically active	83205022
0	Not applicable	83205022
12	Employed	83205023
72	Unemployed	83205023
33	Discouraged work-seeker	83205023
1170	Other not economically active	83205023
0	Not applicable	83205023
12	Employed	83205024
39	Unemployed	83205024
21	Discouraged work-seeker	83205024
1083	Other not economically active	83205024
0	Not applicable	83205024
21	Employed	83205025
96	Unemployed	83205025
45	Discouraged work-seeker	83205025
1245	Other not economically active	83205025
0	Not applicable	83205025
15	Employed	83205026
36	Unemployed	83205026
9	Discouraged work-seeker	83205026
1005	Other not economically active	83205026
0	Not applicable	83205026
12	Employed	83205027
30	Unemployed	83205027
15	Discouraged work-seeker	83205027
1113	Other not economically active	83205027
0	Not applicable	83205027
3	Employed	83205028
36	Unemployed	83205028
24	Discouraged work-seeker	83205028
735	Other not economically active	83205028
0	Not applicable	83205028
15	Employed	83205029
48	Unemployed	83205029
18	Discouraged work-seeker	83205029
864	Other not economically active	83205029
0	Not applicable	83205029
12	Employed	83205030
42	Unemployed	83205030
18	Discouraged work-seeker	83205030
1167	Other not economically active	83205030
0	Not applicable	83205030
9	Employed	83205031
102	Unemployed	83205031
33	Discouraged work-seeker	83205031
1425	Other not economically active	83205031
0	Not applicable	83205031
6	Employed	83205032
81	Unemployed	83205032
27	Discouraged work-seeker	83205032
1014	Other not economically active	83205032
0	Not applicable	83205032
18	Employed	83205033
45	Unemployed	83205033
30	Discouraged work-seeker	83205033
1320	Other not economically active	83205033
0	Not applicable	83205033
24	Employed	83205034
48	Unemployed	83205034
45	Discouraged work-seeker	83205034
1179	Other not economically active	83205034
0	Not applicable	83205034
9	Employed	83205035
27	Unemployed	83205035
36	Discouraged work-seeker	83205035
1302	Other not economically active	83205035
0	Not applicable	83205035
9	Employed	83205036
48	Unemployed	83205036
60	Discouraged work-seeker	83205036
1053	Other not economically active	83205036
0	Not applicable	83205036
9	Employed	83205037
66	Unemployed	83205037
18	Discouraged work-seeker	83205037
759	Other not economically active	83205037
0	Not applicable	83205037
9	Employed	63701001
48	Unemployed	63701001
12	Discouraged work-seeker	63701001
477	Other not economically active	63701001
0	Not applicable	63701001
9	Employed	63701002
24	Unemployed	63701002
6	Discouraged work-seeker	63701002
537	Other not economically active	63701002
0	Not applicable	63701002
12	Employed	63701003
18	Unemployed	63701003
15	Discouraged work-seeker	63701003
579	Other not economically active	63701003
0	Not applicable	63701003
6	Employed	63701004
24	Unemployed	63701004
12	Discouraged work-seeker	63701004
381	Other not economically active	63701004
0	Not applicable	63701004
3	Employed	63701005
12	Unemployed	63701005
3	Discouraged work-seeker	63701005
330	Other not economically active	63701005
0	Not applicable	63701005
0	Employed	63701006
15	Unemployed	63701006
0	Discouraged work-seeker	63701006
330	Other not economically active	63701006
0	Not applicable	63701006
3	Employed	63701007
24	Unemployed	63701007
15	Discouraged work-seeker	63701007
366	Other not economically active	63701007
0	Not applicable	63701007
3	Employed	63701008
21	Unemployed	63701008
6	Discouraged work-seeker	63701008
336	Other not economically active	63701008
0	Not applicable	63701008
3	Employed	63701009
9	Unemployed	63701009
9	Discouraged work-seeker	63701009
258	Other not economically active	63701009
0	Not applicable	63701009
15	Employed	63701010
9	Unemployed	63701010
6	Discouraged work-seeker	63701010
339	Other not economically active	63701010
0	Not applicable	63701010
9	Employed	63701011
3	Unemployed	63701011
12	Discouraged work-seeker	63701011
402	Other not economically active	63701011
0	Not applicable	63701011
3	Employed	63701012
30	Unemployed	63701012
12	Discouraged work-seeker	63701012
399	Other not economically active	63701012
0	Not applicable	63701012
15	Employed	63701013
33	Unemployed	63701013
9	Discouraged work-seeker	63701013
579	Other not economically active	63701013
0	Not applicable	63701013
6	Employed	63701014
21	Unemployed	63701014
3	Discouraged work-seeker	63701014
411	Other not economically active	63701014
0	Not applicable	63701014
6	Employed	63701015
21	Unemployed	63701015
3	Discouraged work-seeker	63701015
267	Other not economically active	63701015
0	Not applicable	63701015
3	Employed	63701016
18	Unemployed	63701016
12	Discouraged work-seeker	63701016
318	Other not economically active	63701016
0	Not applicable	63701016
6	Employed	63701017
6	Unemployed	63701017
0	Discouraged work-seeker	63701017
255	Other not economically active	63701017
0	Not applicable	63701017
6	Employed	63701018
21	Unemployed	63701018
6	Discouraged work-seeker	63701018
288	Other not economically active	63701018
0	Not applicable	63701018
9	Employed	63701019
12	Unemployed	63701019
0	Discouraged work-seeker	63701019
381	Other not economically active	63701019
0	Not applicable	63701019
0	Employed	63701020
21	Unemployed	63701020
3	Discouraged work-seeker	63701020
318	Other not economically active	63701020
0	Not applicable	63701020
3	Employed	63701021
9	Unemployed	63701021
6	Discouraged work-seeker	63701021
273	Other not economically active	63701021
0	Not applicable	63701021
6	Employed	63701022
36	Unemployed	63701022
15	Discouraged work-seeker	63701022
468	Other not economically active	63701022
0	Not applicable	63701022
9	Employed	63701023
54	Unemployed	63701023
15	Discouraged work-seeker	63701023
336	Other not economically active	63701023
0	Not applicable	63701023
3	Employed	63701024
3	Unemployed	63701024
9	Discouraged work-seeker	63701024
234	Other not economically active	63701024
0	Not applicable	63701024
3	Employed	63701025
18	Unemployed	63701025
6	Discouraged work-seeker	63701025
330	Other not economically active	63701025
0	Not applicable	63701025
3	Employed	63701026
15	Unemployed	63701026
0	Discouraged work-seeker	63701026
366	Other not economically active	63701026
0	Not applicable	63701026
9	Employed	63701027
39	Unemployed	63701027
3	Discouraged work-seeker	63701027
195	Other not economically active	63701027
0	Not applicable	63701027
12	Employed	63701028
60	Unemployed	63701028
9	Discouraged work-seeker	63701028
477	Other not economically active	63701028
0	Not applicable	63701028
15	Employed	63702001
12	Unemployed	63702001
12	Discouraged work-seeker	63702001
426	Other not economically active	63702001
0	Not applicable	63702001
9	Employed	63702002
39	Unemployed	63702002
3	Discouraged work-seeker	63702002
438	Other not economically active	63702002
0	Not applicable	63702002
3	Employed	63702003
30	Unemployed	63702003
6	Discouraged work-seeker	63702003
501	Other not economically active	63702003
0	Not applicable	63702003
6	Employed	63702004
30	Unemployed	63702004
12	Discouraged work-seeker	63702004
420	Other not economically active	63702004
0	Not applicable	63702004
12	Employed	63702005
48	Unemployed	63702005
3	Discouraged work-seeker	63702005
627	Other not economically active	63702005
0	Not applicable	63702005
6	Employed	63702006
9	Unemployed	63702006
15	Discouraged work-seeker	63702006
480	Other not economically active	63702006
0	Not applicable	63702006
12	Employed	63702007
27	Unemployed	63702007
12	Discouraged work-seeker	63702007
456	Other not economically active	63702007
0	Not applicable	63702007
12	Employed	63702008
60	Unemployed	63702008
9	Discouraged work-seeker	63702008
435	Other not economically active	63702008
0	Not applicable	63702008
9	Employed	63702009
96	Unemployed	63702009
12	Discouraged work-seeker	63702009
681	Other not economically active	63702009
0	Not applicable	63702009
12	Employed	63702010
78	Unemployed	63702010
12	Discouraged work-seeker	63702010
789	Other not economically active	63702010
0	Not applicable	63702010
6	Employed	63702011
48	Unemployed	63702011
6	Discouraged work-seeker	63702011
657	Other not economically active	63702011
0	Not applicable	63702011
15	Employed	63702012
42	Unemployed	63702012
9	Discouraged work-seeker	63702012
435	Other not economically active	63702012
0	Not applicable	63702012
12	Employed	63702013
33	Unemployed	63702013
6	Discouraged work-seeker	63702013
228	Other not economically active	63702013
0	Not applicable	63702013
141	Employed	63702014
132	Unemployed	63702014
18	Discouraged work-seeker	63702014
627	Other not economically active	63702014
0	Not applicable	63702014
6	Employed	63702015
21	Unemployed	63702015
0	Discouraged work-seeker	63702015
354	Other not economically active	63702015
0	Not applicable	63702015
33	Employed	63702016
33	Unemployed	63702016
12	Discouraged work-seeker	63702016
666	Other not economically active	63702016
0	Not applicable	63702016
18	Employed	63702017
39	Unemployed	63702017
12	Discouraged work-seeker	63702017
492	Other not economically active	63702017
0	Not applicable	63702017
12	Employed	63702018
24	Unemployed	63702018
30	Discouraged work-seeker	63702018
492	Other not economically active	63702018
0	Not applicable	63702018
15	Employed	63702019
51	Unemployed	63702019
12	Discouraged work-seeker	63702019
495	Other not economically active	63702019
0	Not applicable	63702019
15	Employed	63702020
36	Unemployed	63702020
0	Discouraged work-seeker	63702020
483	Other not economically active	63702020
0	Not applicable	63702020
39	Employed	63702021
81	Unemployed	63702021
12	Discouraged work-seeker	63702021
438	Other not economically active	63702021
0	Not applicable	63702021
33	Employed	63702022
63	Unemployed	63702022
6	Discouraged work-seeker	63702022
552	Other not economically active	63702022
0	Not applicable	63702022
12	Employed	63702023
12	Unemployed	63702023
0	Discouraged work-seeker	63702023
162	Other not economically active	63702023
0	Not applicable	63702023
12	Employed	63702024
54	Unemployed	63702024
15	Discouraged work-seeker	63702024
627	Other not economically active	63702024
0	Not applicable	63702024
75	Employed	63702025
165	Unemployed	63702025
24	Discouraged work-seeker	63702025
1371	Other not economically active	63702025
0	Not applicable	63702025
48	Employed	63702026
84	Unemployed	63702026
6	Discouraged work-seeker	63702026
267	Other not economically active	63702026
0	Not applicable	63702026
30	Employed	63702027
81	Unemployed	63702027
12	Discouraged work-seeker	63702027
360	Other not economically active	63702027
0	Not applicable	63702027
15	Employed	63702028
39	Unemployed	63702028
6	Discouraged work-seeker	63702028
501	Other not economically active	63702028
0	Not applicable	63702028
42	Employed	63702029
93	Unemployed	63702029
12	Discouraged work-seeker	63702029
393	Other not economically active	63702029
0	Not applicable	63702029
51	Employed	63702030
42	Unemployed	63702030
15	Discouraged work-seeker	63702030
426	Other not economically active	63702030
0	Not applicable	63702030
12	Employed	63702031
24	Unemployed	63702031
12	Discouraged work-seeker	63702031
327	Other not economically active	63702031
0	Not applicable	63702031
6	Employed	63702032
39	Unemployed	63702032
3	Discouraged work-seeker	63702032
309	Other not economically active	63702032
0	Not applicable	63702032
54	Employed	63702033
42	Unemployed	63702033
12	Discouraged work-seeker	63702033
336	Other not economically active	63702033
0	Not applicable	63702033
9	Employed	63702034
27	Unemployed	63702034
3	Discouraged work-seeker	63702034
468	Other not economically active	63702034
0	Not applicable	63702034
9	Employed	63702035
108	Unemployed	63702035
12	Discouraged work-seeker	63702035
732	Other not economically active	63702035
0	Not applicable	63702035
9	Employed	63702036
39	Unemployed	63702036
12	Discouraged work-seeker	63702036
474	Other not economically active	63702036
0	Not applicable	63702036
27	Employed	63703001
36	Unemployed	63703001
18	Discouraged work-seeker	63703001
723	Other not economically active	63703001
0	Not applicable	63703001
9	Employed	63703002
84	Unemployed	63703002
12	Discouraged work-seeker	63703002
681	Other not economically active	63703002
0	Not applicable	63703002
9	Employed	63703003
24	Unemployed	63703003
15	Discouraged work-seeker	63703003
249	Other not economically active	63703003
0	Not applicable	63703003
18	Employed	63703004
48	Unemployed	63703004
21	Discouraged work-seeker	63703004
354	Other not economically active	63703004
0	Not applicable	63703004
12	Employed	63703005
66	Unemployed	63703005
3	Discouraged work-seeker	63703005
315	Other not economically active	63703005
0	Not applicable	63703005
12	Employed	63703006
66	Unemployed	63703006
9	Discouraged work-seeker	63703006
441	Other not economically active	63703006
0	Not applicable	63703006
33	Employed	63703007
99	Unemployed	63703007
33	Discouraged work-seeker	63703007
645	Other not economically active	63703007
0	Not applicable	63703007
42	Employed	63703008
90	Unemployed	63703008
27	Discouraged work-seeker	63703008
987	Other not economically active	63703008
0	Not applicable	63703008
15	Employed	63703009
33	Unemployed	63703009
3	Discouraged work-seeker	63703009
315	Other not economically active	63703009
0	Not applicable	63703009
42	Employed	63703010
75	Unemployed	63703010
9	Discouraged work-seeker	63703010
624	Other not economically active	63703010
0	Not applicable	63703010
33	Employed	63703011
84	Unemployed	63703011
24	Discouraged work-seeker	63703011
474	Other not economically active	63703011
0	Not applicable	63703011
36	Employed	63703012
81	Unemployed	63703012
3	Discouraged work-seeker	63703012
528	Other not economically active	63703012
0	Not applicable	63703012
48	Employed	63703013
72	Unemployed	63703013
24	Discouraged work-seeker	63703013
285	Other not economically active	63703013
0	Not applicable	63703013
39	Employed	63703014
18	Unemployed	63703014
0	Discouraged work-seeker	63703014
333	Other not economically active	63703014
0	Not applicable	63703014
57	Employed	63703015
27	Unemployed	63703015
0	Discouraged work-seeker	63703015
519	Other not economically active	63703015
0	Not applicable	63703015
39	Employed	63703016
18	Unemployed	63703016
0	Discouraged work-seeker	63703016
387	Other not economically active	63703016
0	Not applicable	63703016
66	Employed	63703017
33	Unemployed	63703017
0	Discouraged work-seeker	63703017
618	Other not economically active	63703017
0	Not applicable	63703017
63	Employed	63703018
129	Unemployed	63703018
30	Discouraged work-seeker	63703018
681	Other not economically active	63703018
0	Not applicable	63703018
21	Employed	63703019
114	Unemployed	63703019
24	Discouraged work-seeker	63703019
996	Other not economically active	63703019
0	Not applicable	63703019
12	Employed	63703020
45	Unemployed	63703020
6	Discouraged work-seeker	63703020
399	Other not economically active	63703020
0	Not applicable	63703020
21	Employed	63703021
144	Unemployed	63703021
12	Discouraged work-seeker	63703021
831	Other not economically active	63703021
0	Not applicable	63703021
78	Employed	63703022
117	Unemployed	63703022
12	Discouraged work-seeker	63703022
390	Other not economically active	63703022
0	Not applicable	63703022
12	Employed	63703023
60	Unemployed	63703023
21	Discouraged work-seeker	63703023
393	Other not economically active	63703023
0	Not applicable	63703023
24	Employed	63703024
117	Unemployed	63703024
9	Discouraged work-seeker	63703024
510	Other not economically active	63703024
0	Not applicable	63703024
9	Employed	63703025
24	Unemployed	63703025
9	Discouraged work-seeker	63703025
504	Other not economically active	63703025
0	Not applicable	63703025
12	Employed	63703026
72	Unemployed	63703026
12	Discouraged work-seeker	63703026
654	Other not economically active	63703026
0	Not applicable	63703026
27	Employed	63703027
96	Unemployed	63703027
21	Discouraged work-seeker	63703027
858	Other not economically active	63703027
0	Not applicable	63703027
12	Employed	63703028
60	Unemployed	63703028
21	Discouraged work-seeker	63703028
600	Other not economically active	63703028
0	Not applicable	63703028
24	Employed	63703029
99	Unemployed	63703029
15	Discouraged work-seeker	63703029
774	Other not economically active	63703029
0	Not applicable	63703029
9	Employed	63703030
63	Unemployed	63703030
3	Discouraged work-seeker	63703030
630	Other not economically active	63703030
0	Not applicable	63703030
12	Employed	63703031
54	Unemployed	63703031
0	Discouraged work-seeker	63703031
165	Other not economically active	63703031
0	Not applicable	63703031
54	Employed	63703032
72	Unemployed	63703032
12	Discouraged work-seeker	63703032
354	Other not economically active	63703032
0	Not applicable	63703032
3	Employed	63703033
24	Unemployed	63703033
3	Discouraged work-seeker	63703033
75	Other not economically active	63703033
0	Not applicable	63703033
15	Employed	63703034
51	Unemployed	63703034
0	Discouraged work-seeker	63703034
183	Other not economically active	63703034
0	Not applicable	63703034
27	Employed	63703035
48	Unemployed	63703035
15	Discouraged work-seeker	63703035
177	Other not economically active	63703035
0	Not applicable	63703035
69	Employed	63703036
60	Unemployed	63703036
15	Discouraged work-seeker	63703036
465	Other not economically active	63703036
0	Not applicable	63703036
57	Employed	63703037
108	Unemployed	63703037
3	Discouraged work-seeker	63703037
417	Other not economically active	63703037
0	Not applicable	63703037
3	Employed	63703038
9	Unemployed	63703038
0	Discouraged work-seeker	63703038
12	Other not economically active	63703038
0	Not applicable	63703038
9	Employed	63704001
39	Unemployed	63704001
21	Discouraged work-seeker	63704001
414	Other not economically active	63704001
0	Not applicable	63704001
48	Employed	63704002
60	Unemployed	63704002
3	Discouraged work-seeker	63704002
399	Other not economically active	63704002
0	Not applicable	63704002
24	Employed	63704003
18	Unemployed	63704003
3	Discouraged work-seeker	63704003
195	Other not economically active	63704003
0	Not applicable	63704003
3	Employed	63704004
36	Unemployed	63704004
6	Discouraged work-seeker	63704004
252	Other not economically active	63704004
0	Not applicable	63704004
18	Employed	63704005
66	Unemployed	63704005
54	Discouraged work-seeker	63704005
498	Other not economically active	63704005
0	Not applicable	63704005
27	Employed	63704006
51	Unemployed	63704006
3	Discouraged work-seeker	63704006
318	Other not economically active	63704006
0	Not applicable	63704006
3	Employed	63705001
12	Unemployed	63705001
9	Discouraged work-seeker	63705001
333	Other not economically active	63705001
0	Not applicable	63705001
6	Employed	63705002
24	Unemployed	63705002
18	Discouraged work-seeker	63705002
393	Other not economically active	63705002
0	Not applicable	63705002
9	Employed	63705003
27	Unemployed	63705003
12	Discouraged work-seeker	63705003
489	Other not economically active	63705003
0	Not applicable	63705003
9	Employed	63705004
108	Unemployed	63705004
27	Discouraged work-seeker	63705004
504	Other not economically active	63705004
0	Not applicable	63705004
12	Employed	63705005
48	Unemployed	63705005
24	Discouraged work-seeker	63705005
402	Other not economically active	63705005
0	Not applicable	63705005
6	Employed	63705006
21	Unemployed	63705006
24	Discouraged work-seeker	63705006
282	Other not economically active	63705006
0	Not applicable	63705006
6	Employed	63705007
9	Unemployed	63705007
0	Discouraged work-seeker	63705007
234	Other not economically active	63705007
0	Not applicable	63705007
6	Employed	63705008
18	Unemployed	63705008
6	Discouraged work-seeker	63705008
318	Other not economically active	63705008
0	Not applicable	63705008
0	Employed	63705009
24	Unemployed	63705009
6	Discouraged work-seeker	63705009
375	Other not economically active	63705009
0	Not applicable	63705009
21	Employed	63705010
78	Unemployed	63705010
9	Discouraged work-seeker	63705010
516	Other not economically active	63705010
0	Not applicable	63705010
3	Employed	63705011
36	Unemployed	63705011
3	Discouraged work-seeker	63705011
348	Other not economically active	63705011
0	Not applicable	63705011
3	Employed	63705012
24	Unemployed	63705012
3	Discouraged work-seeker	63705012
282	Other not economically active	63705012
0	Not applicable	63705012
3	Employed	63705013
12	Unemployed	63705013
9	Discouraged work-seeker	63705013
252	Other not economically active	63705013
0	Not applicable	63705013
9	Employed	63705014
18	Unemployed	63705014
3	Discouraged work-seeker	63705014
285	Other not economically active	63705014
0	Not applicable	63705014
9	Employed	63705015
21	Unemployed	63705015
6	Discouraged work-seeker	63705015
333	Other not economically active	63705015
0	Not applicable	63705015
6	Employed	63705016
33	Unemployed	63705016
3	Discouraged work-seeker	63705016
504	Other not economically active	63705016
0	Not applicable	63705016
6	Employed	63705017
27	Unemployed	63705017
6	Discouraged work-seeker	63705017
477	Other not economically active	63705017
0	Not applicable	63705017
6	Employed	63705018
27	Unemployed	63705018
6	Discouraged work-seeker	63705018
372	Other not economically active	63705018
0	Not applicable	63705018
9	Employed	63705019
18	Unemployed	63705019
6	Discouraged work-seeker	63705019
375	Other not economically active	63705019
0	Not applicable	63705019
6	Employed	63705020
42	Unemployed	63705020
15	Discouraged work-seeker	63705020
363	Other not economically active	63705020
0	Not applicable	63705020
3	Employed	63705021
48	Unemployed	63705021
3	Discouraged work-seeker	63705021
459	Other not economically active	63705021
0	Not applicable	63705021
6	Employed	63705022
42	Unemployed	63705022
6	Discouraged work-seeker	63705022
327	Other not economically active	63705022
0	Not applicable	63705022
12	Employed	63705023
36	Unemployed	63705023
9	Discouraged work-seeker	63705023
369	Other not economically active	63705023
0	Not applicable	63705023
6	Employed	63705024
12	Unemployed	63705024
6	Discouraged work-seeker	63705024
237	Other not economically active	63705024
0	Not applicable	63705024
0	Employed	63705025
30	Unemployed	63705025
9	Discouraged work-seeker	63705025
543	Other not economically active	63705025
0	Not applicable	63705025
6	Employed	63705026
21	Unemployed	63705026
18	Discouraged work-seeker	63705026
564	Other not economically active	63705026
0	Not applicable	63705026
3	Employed	63705027
42	Unemployed	63705027
21	Discouraged work-seeker	63705027
399	Other not economically active	63705027
0	Not applicable	63705027
18	Employed	63705028
51	Unemployed	63705028
3	Discouraged work-seeker	63705028
477	Other not economically active	63705028
0	Not applicable	63705028
15	Employed	63705029
36	Unemployed	63705029
21	Discouraged work-seeker	63705029
432	Other not economically active	63705029
0	Not applicable	63705029
12	Employed	63705030
45	Unemployed	63705030
6	Discouraged work-seeker	63705030
333	Other not economically active	63705030
0	Not applicable	63705030
9	Employed	63705031
48	Unemployed	63705031
9	Discouraged work-seeker	63705031
360	Other not economically active	63705031
0	Not applicable	63705031
3	Employed	63801001
30	Unemployed	63801001
27	Discouraged work-seeker	63801001
411	Other not economically active	63801001
0	Not applicable	63801001
6	Employed	63801002
12	Unemployed	63801002
18	Discouraged work-seeker	63801002
381	Other not economically active	63801002
0	Not applicable	63801002
9	Employed	63801003
15	Unemployed	63801003
33	Discouraged work-seeker	63801003
483	Other not economically active	63801003
0	Not applicable	63801003
6	Employed	63801004
63	Unemployed	63801004
27	Discouraged work-seeker	63801004
516	Other not economically active	63801004
0	Not applicable	63801004
6	Employed	63801005
15	Unemployed	63801005
39	Discouraged work-seeker	63801005
306	Other not economically active	63801005
0	Not applicable	63801005
9	Employed	63801006
18	Unemployed	63801006
12	Discouraged work-seeker	63801006
408	Other not economically active	63801006
0	Not applicable	63801006
9	Employed	63801007
21	Unemployed	63801007
27	Discouraged work-seeker	63801007
570	Other not economically active	63801007
0	Not applicable	63801007
15	Employed	63801008
33	Unemployed	63801008
18	Discouraged work-seeker	63801008
771	Other not economically active	63801008
0	Not applicable	63801008
3	Employed	63801009
9	Unemployed	63801009
15	Discouraged work-seeker	63801009
681	Other not economically active	63801009
0	Not applicable	63801009
3	Employed	63801010
3	Unemployed	63801010
15	Discouraged work-seeker	63801010
216	Other not economically active	63801010
0	Not applicable	63801010
27	Employed	63801011
27	Unemployed	63801011
15	Discouraged work-seeker	63801011
282	Other not economically active	63801011
0	Not applicable	63801011
3	Employed	63801012
21	Unemployed	63801012
15	Discouraged work-seeker	63801012
483	Other not economically active	63801012
0	Not applicable	63801012
15	Employed	63801013
57	Unemployed	63801013
27	Discouraged work-seeker	63801013
633	Other not economically active	63801013
0	Not applicable	63801013
15	Employed	63801014
18	Unemployed	63801014
30	Discouraged work-seeker	63801014
624	Other not economically active	63801014
0	Not applicable	63801014
27	Employed	63802001
21	Unemployed	63802001
15	Discouraged work-seeker	63802001
588	Other not economically active	63802001
0	Not applicable	63802001
12	Employed	63802002
12	Unemployed	63802002
3	Discouraged work-seeker	63802002
552	Other not economically active	63802002
0	Not applicable	63802002
6	Employed	63802003
15	Unemployed	63802003
9	Discouraged work-seeker	63802003
513	Other not economically active	63802003
0	Not applicable	63802003
9	Employed	63802004
18	Unemployed	63802004
15	Discouraged work-seeker	63802004
525	Other not economically active	63802004
0	Not applicable	63802004
3	Employed	63802005
6	Unemployed	63802005
12	Discouraged work-seeker	63802005
534	Other not economically active	63802005
0	Not applicable	63802005
3	Employed	63802006
33	Unemployed	63802006
21	Discouraged work-seeker	63802006
525	Other not economically active	63802006
0	Not applicable	63802006
9	Employed	63802007
15	Unemployed	63802007
21	Discouraged work-seeker	63802007
525	Other not economically active	63802007
0	Not applicable	63802007
3	Employed	63802008
12	Unemployed	63802008
0	Discouraged work-seeker	63802008
228	Other not economically active	63802008
0	Not applicable	63802008
33	Employed	63802009
66	Unemployed	63802009
51	Discouraged work-seeker	63802009
897	Other not economically active	63802009
0	Not applicable	63802009
12	Employed	63802010
33	Unemployed	63802010
18	Discouraged work-seeker	63802010
555	Other not economically active	63802010
0	Not applicable	63802010
3	Employed	63802011
30	Unemployed	63802011
15	Discouraged work-seeker	63802011
522	Other not economically active	63802011
0	Not applicable	63802011
12	Employed	63802012
30	Unemployed	63802012
21	Discouraged work-seeker	63802012
630	Other not economically active	63802012
0	Not applicable	63802012
6	Employed	63802013
9	Unemployed	63802013
3	Discouraged work-seeker	63802013
177	Other not economically active	63802013
0	Not applicable	63802013
6	Employed	63802014
9	Unemployed	63802014
18	Discouraged work-seeker	63802014
258	Other not economically active	63802014
0	Not applicable	63802014
39	Employed	63802015
18	Unemployed	63802015
12	Discouraged work-seeker	63802015
474	Other not economically active	63802015
0	Not applicable	63802015
3	Employed	63803001
48	Unemployed	63803001
27	Discouraged work-seeker	63803001
618	Other not economically active	63803001
0	Not applicable	63803001
18	Employed	63803002
33	Unemployed	63803002
36	Discouraged work-seeker	63803002
513	Other not economically active	63803002
0	Not applicable	63803002
9	Employed	63803003
18	Unemployed	63803003
3	Discouraged work-seeker	63803003
474	Other not economically active	63803003
0	Not applicable	63803003
36	Employed	63803004
54	Unemployed	63803004
21	Discouraged work-seeker	63803004
402	Other not economically active	63803004
0	Not applicable	63803004
3	Employed	63803005
15	Unemployed	63803005
9	Discouraged work-seeker	63803005
213	Other not economically active	63803005
0	Not applicable	63803005
18	Employed	63803006
78	Unemployed	63803006
18	Discouraged work-seeker	63803006
489	Other not economically active	63803006
0	Not applicable	63803006
15	Employed	63803007
54	Unemployed	63803007
27	Discouraged work-seeker	63803007
879	Other not economically active	63803007
0	Not applicable	63803007
0	Employed	63803008
9	Unemployed	63803008
3	Discouraged work-seeker	63803008
255	Other not economically active	63803008
0	Not applicable	63803008
18	Employed	63803009
33	Unemployed	63803009
9	Discouraged work-seeker	63803009
552	Other not economically active	63803009
0	Not applicable	63803009
6	Employed	63803010
6	Unemployed	63803010
9	Discouraged work-seeker	63803010
339	Other not economically active	63803010
0	Not applicable	63803010
9	Employed	63803011
33	Unemployed	63803011
3	Discouraged work-seeker	63803011
372	Other not economically active	63803011
0	Not applicable	63803011
6	Employed	63803012
69	Unemployed	63803012
9	Discouraged work-seeker	63803012
597	Other not economically active	63803012
0	Not applicable	63803012
12	Employed	63803013
42	Unemployed	63803013
6	Discouraged work-seeker	63803013
891	Other not economically active	63803013
0	Not applicable	63803013
9	Employed	63803014
87	Unemployed	63803014
12	Discouraged work-seeker	63803014
789	Other not economically active	63803014
0	Not applicable	63803014
6	Employed	63803015
15	Unemployed	63803015
6	Discouraged work-seeker	63803015
417	Other not economically active	63803015
0	Not applicable	63803015
12	Employed	63803016
39	Unemployed	63803016
24	Discouraged work-seeker	63803016
480	Other not economically active	63803016
0	Not applicable	63803016
21	Employed	63803017
24	Unemployed	63803017
9	Discouraged work-seeker	63803017
453	Other not economically active	63803017
0	Not applicable	63803017
12	Employed	63803018
33	Unemployed	63803018
15	Discouraged work-seeker	63803018
570	Other not economically active	63803018
0	Not applicable	63803018
0	Employed	63803019
15	Unemployed	63803019
3	Discouraged work-seeker	63803019
303	Other not economically active	63803019
0	Not applicable	63803019
3	Employed	63803020
18	Unemployed	63803020
6	Discouraged work-seeker	63803020
339	Other not economically active	63803020
0	Not applicable	63803020
3	Employed	63803021
36	Unemployed	63803021
9	Discouraged work-seeker	63803021
555	Other not economically active	63803021
0	Not applicable	63803021
15	Employed	63803022
60	Unemployed	63803022
15	Discouraged work-seeker	63803022
789	Other not economically active	63803022
0	Not applicable	63803022
12	Employed	63803023
30	Unemployed	63803023
6	Discouraged work-seeker	63803023
543	Other not economically active	63803023
0	Not applicable	63803023
9	Employed	63803024
15	Unemployed	63803024
15	Discouraged work-seeker	63803024
561	Other not economically active	63803024
0	Not applicable	63803024
3	Employed	63803025
12	Unemployed	63803025
18	Discouraged work-seeker	63803025
495	Other not economically active	63803025
0	Not applicable	63803025
3	Employed	63803026
30	Unemployed	63803026
48	Discouraged work-seeker	63803026
630	Other not economically active	63803026
0	Not applicable	63803026
9	Employed	63803027
39	Unemployed	63803027
6	Discouraged work-seeker	63803027
549	Other not economically active	63803027
0	Not applicable	63803027
21	Employed	63803028
60	Unemployed	63803028
18	Discouraged work-seeker	63803028
828	Other not economically active	63803028
0	Not applicable	63803028
15	Employed	63803029
90	Unemployed	63803029
48	Discouraged work-seeker	63803029
564	Other not economically active	63803029
0	Not applicable	63803029
21	Employed	63803030
36	Unemployed	63803030
6	Discouraged work-seeker	63803030
456	Other not economically active	63803030
0	Not applicable	63803030
18	Employed	63803031
45	Unemployed	63803031
18	Discouraged work-seeker	63803031
816	Other not economically active	63803031
0	Not applicable	63803031
0	Employed	63804001
42	Unemployed	63804001
18	Discouraged work-seeker	63804001
276	Other not economically active	63804001
0	Not applicable	63804001
6	Employed	63804002
27	Unemployed	63804002
6	Discouraged work-seeker	63804002
291	Other not economically active	63804002
0	Not applicable	63804002
15	Employed	63804003
15	Unemployed	63804003
18	Discouraged work-seeker	63804003
387	Other not economically active	63804003
0	Not applicable	63804003
12	Employed	63804004
57	Unemployed	63804004
18	Discouraged work-seeker	63804004
402	Other not economically active	63804004
0	Not applicable	63804004
15	Employed	63804005
27	Unemployed	63804005
6	Discouraged work-seeker	63804005
360	Other not economically active	63804005
0	Not applicable	63804005
9	Employed	63804006
18	Unemployed	63804006
3	Discouraged work-seeker	63804006
219	Other not economically active	63804006
0	Not applicable	63804006
6	Employed	63804007
15	Unemployed	63804007
0	Discouraged work-seeker	63804007
255	Other not economically active	63804007
0	Not applicable	63804007
9	Employed	63804008
15	Unemployed	63804008
6	Discouraged work-seeker	63804008
414	Other not economically active	63804008
0	Not applicable	63804008
3	Employed	63804009
15	Unemployed	63804009
0	Discouraged work-seeker	63804009
288	Other not economically active	63804009
0	Not applicable	63804009
3	Employed	63804010
21	Unemployed	63804010
33	Discouraged work-seeker	63804010
501	Other not economically active	63804010
0	Not applicable	63804010
3	Employed	63804011
15	Unemployed	63804011
15	Discouraged work-seeker	63804011
441	Other not economically active	63804011
0	Not applicable	63804011
9	Employed	63804012
24	Unemployed	63804012
6	Discouraged work-seeker	63804012
300	Other not economically active	63804012
0	Not applicable	63804012
42	Employed	63804013
27	Unemployed	63804013
24	Discouraged work-seeker	63804013
582	Other not economically active	63804013
0	Not applicable	63804013
30	Employed	63804014
21	Unemployed	63804014
27	Discouraged work-seeker	63804014
447	Other not economically active	63804014
0	Not applicable	63804014
3	Employed	63804015
30	Unemployed	63804015
30	Discouraged work-seeker	63804015
606	Other not economically active	63804015
0	Not applicable	63804015
24	Employed	63804016
45	Unemployed	63804016
0	Discouraged work-seeker	63804016
450	Other not economically active	63804016
0	Not applicable	63804016
6	Employed	63804017
12	Unemployed	63804017
12	Discouraged work-seeker	63804017
426	Other not economically active	63804017
0	Not applicable	63804017
3	Employed	63804018
15	Unemployed	63804018
18	Discouraged work-seeker	63804018
321	Other not economically active	63804018
0	Not applicable	63804018
6	Employed	63804019
15	Unemployed	63804019
0	Discouraged work-seeker	63804019
483	Other not economically active	63804019
0	Not applicable	63804019
39	Employed	63804020
39	Unemployed	63804020
36	Discouraged work-seeker	63804020
327	Other not economically active	63804020
0	Not applicable	63804020
36	Employed	63804021
57	Unemployed	63804021
36	Discouraged work-seeker	63804021
468	Other not economically active	63804021
0	Not applicable	63804021
9	Employed	63805001
6	Unemployed	63805001
12	Discouraged work-seeker	63805001
225	Other not economically active	63805001
0	Not applicable	63805001
6	Employed	63805002
21	Unemployed	63805002
18	Discouraged work-seeker	63805002
510	Other not economically active	63805002
0	Not applicable	63805002
0	Employed	63805003
12	Unemployed	63805003
3	Discouraged work-seeker	63805003
333	Other not economically active	63805003
0	Not applicable	63805003
3	Employed	63805004
18	Unemployed	63805004
12	Discouraged work-seeker	63805004
435	Other not economically active	63805004
0	Not applicable	63805004
6	Employed	63805005
42	Unemployed	63805005
6	Discouraged work-seeker	63805005
381	Other not economically active	63805005
0	Not applicable	63805005
3	Employed	63805006
21	Unemployed	63805006
9	Discouraged work-seeker	63805006
285	Other not economically active	63805006
0	Not applicable	63805006
9	Employed	63805007
9	Unemployed	63805007
18	Discouraged work-seeker	63805007
450	Other not economically active	63805007
0	Not applicable	63805007
6	Employed	63805008
9	Unemployed	63805008
12	Discouraged work-seeker	63805008
408	Other not economically active	63805008
0	Not applicable	63805008
9	Employed	63805009
24	Unemployed	63805009
12	Discouraged work-seeker	63805009
291	Other not economically active	63805009
0	Not applicable	63805009
3	Employed	63805010
12	Unemployed	63805010
3	Discouraged work-seeker	63805010
306	Other not economically active	63805010
0	Not applicable	63805010
12	Employed	63805011
27	Unemployed	63805011
30	Discouraged work-seeker	63805011
573	Other not economically active	63805011
0	Not applicable	63805011
0	Employed	63805012
30	Unemployed	63805012
3	Discouraged work-seeker	63805012
417	Other not economically active	63805012
0	Not applicable	63805012
18	Employed	63805013
21	Unemployed	63805013
42	Discouraged work-seeker	63805013
537	Other not economically active	63805013
0	Not applicable	63805013
9	Employed	63805014
39	Unemployed	63805014
36	Discouraged work-seeker	63805014
438	Other not economically active	63805014
0	Not applicable	63805014
18	Employed	63805015
15	Unemployed	63805015
6	Discouraged work-seeker	63805015
363	Other not economically active	63805015
0	Not applicable	63805015
18	Employed	63805016
18	Unemployed	63805016
12	Discouraged work-seeker	63805016
414	Other not economically active	63805016
0	Not applicable	63805016
18	Employed	63805017
27	Unemployed	63805017
39	Discouraged work-seeker	63805017
276	Other not economically active	63805017
0	Not applicable	63805017
6	Employed	63805018
27	Unemployed	63805018
15	Discouraged work-seeker	63805018
459	Other not economically active	63805018
0	Not applicable	63805018
27	Employed	63805019
72	Unemployed	63805019
24	Discouraged work-seeker	63805019
399	Other not economically active	63805019
0	Not applicable	63805019
3	Employed	63805020
15	Unemployed	63805020
9	Discouraged work-seeker	63805020
399	Other not economically active	63805020
0	Not applicable	63805020
27	Employed	63902001
42	Unemployed	63902001
36	Discouraged work-seeker	63902001
369	Other not economically active	63902001
0	Not applicable	63902001
9	Employed	63902002
24	Unemployed	63902002
18	Discouraged work-seeker	63902002
321	Other not economically active	63902002
0	Not applicable	63902002
39	Employed	63902003
36	Unemployed	63902003
24	Discouraged work-seeker	63902003
450	Other not economically active	63902003
0	Not applicable	63902003
9	Employed	63902004
129	Unemployed	63902004
12	Discouraged work-seeker	63902004
549	Other not economically active	63902004
0	Not applicable	63902004
18	Employed	63902005
30	Unemployed	63902005
27	Discouraged work-seeker	63902005
369	Other not economically active	63902005
0	Not applicable	63902005
3	Employed	63902006
15	Unemployed	63902006
0	Discouraged work-seeker	63902006
237	Other not economically active	63902006
0	Not applicable	63902006
39	Employed	63902007
12	Unemployed	63902007
15	Discouraged work-seeker	63902007
249	Other not economically active	63902007
0	Not applicable	63902007
6	Employed	63902008
21	Unemployed	63902008
0	Discouraged work-seeker	63902008
306	Other not economically active	63902008
0	Not applicable	63902008
15	Employed	63902009
12	Unemployed	63902009
6	Discouraged work-seeker	63902009
237	Other not economically active	63902009
0	Not applicable	63902009
42	Employed	63903001
21	Unemployed	63903001
21	Discouraged work-seeker	63903001
420	Other not economically active	63903001
0	Not applicable	63903001
3	Employed	63903002
27	Unemployed	63903002
3	Discouraged work-seeker	63903002
261	Other not economically active	63903002
0	Not applicable	63903002
21	Employed	63903003
24	Unemployed	63903003
36	Discouraged work-seeker	63903003
429	Other not economically active	63903003
0	Not applicable	63903003
3	Employed	63903004
33	Unemployed	63903004
3	Discouraged work-seeker	63903004
336	Other not economically active	63903004
0	Not applicable	63903004
6	Employed	63903005
33	Unemployed	63903005
27	Discouraged work-seeker	63903005
555	Other not economically active	63903005
0	Not applicable	63903005
12	Employed	63903006
33	Unemployed	63903006
9	Discouraged work-seeker	63903006
435	Other not economically active	63903006
0	Not applicable	63903006
72	Employed	63903007
27	Unemployed	63903007
15	Discouraged work-seeker	63903007
267	Other not economically active	63903007
0	Not applicable	63903007
15	Employed	63903008
24	Unemployed	63903008
9	Discouraged work-seeker	63903008
342	Other not economically active	63903008
0	Not applicable	63903008
12	Employed	63904001
12	Unemployed	63904001
6	Discouraged work-seeker	63904001
456	Other not economically active	63904001
0	Not applicable	63904001
12	Employed	63904002
27	Unemployed	63904002
39	Discouraged work-seeker	63904002
624	Other not economically active	63904002
0	Not applicable	63904002
15	Employed	63904003
15	Unemployed	63904003
6	Discouraged work-seeker	63904003
471	Other not economically active	63904003
0	Not applicable	63904003
24	Employed	63904004
24	Unemployed	63904004
27	Discouraged work-seeker	63904004
339	Other not economically active	63904004
0	Not applicable	63904004
15	Employed	63904005
18	Unemployed	63904005
9	Discouraged work-seeker	63904005
483	Other not economically active	63904005
0	Not applicable	63904005
6	Employed	63904006
24	Unemployed	63904006
9	Discouraged work-seeker	63904006
606	Other not economically active	63904006
0	Not applicable	63904006
3	Employed	63904007
15	Unemployed	63904007
9	Discouraged work-seeker	63904007
345	Other not economically active	63904007
0	Not applicable	63904007
3	Employed	63904008
18	Unemployed	63904008
30	Discouraged work-seeker	63904008
417	Other not economically active	63904008
0	Not applicable	63904008
6	Employed	63904009
12	Unemployed	63904009
30	Discouraged work-seeker	63904009
501	Other not economically active	63904009
0	Not applicable	63904009
6	Employed	63904010
30	Unemployed	63904010
6	Discouraged work-seeker	63904010
498	Other not economically active	63904010
0	Not applicable	63904010
9	Employed	63904011
39	Unemployed	63904011
9	Discouraged work-seeker	63904011
318	Other not economically active	63904011
0	Not applicable	63904011
0	Employed	63904012
24	Unemployed	63904012
12	Discouraged work-seeker	63904012
501	Other not economically active	63904012
0	Not applicable	63904012
6	Employed	63904013
36	Unemployed	63904013
3	Discouraged work-seeker	63904013
327	Other not economically active	63904013
0	Not applicable	63904013
3	Employed	63904014
30	Unemployed	63904014
12	Discouraged work-seeker	63904014
405	Other not economically active	63904014
0	Not applicable	63904014
9	Employed	63904015
24	Unemployed	63904015
9	Discouraged work-seeker	63904015
549	Other not economically active	63904015
0	Not applicable	63904015
6	Employed	63904016
12	Unemployed	63904016
12	Discouraged work-seeker	63904016
393	Other not economically active	63904016
0	Not applicable	63904016
0	Employed	63904017
27	Unemployed	63904017
21	Discouraged work-seeker	63904017
420	Other not economically active	63904017
0	Not applicable	63904017
0	Employed	63904018
12	Unemployed	63904018
6	Discouraged work-seeker	63904018
456	Other not economically active	63904018
0	Not applicable	63904018
0	Employed	63904019
9	Unemployed	63904019
15	Discouraged work-seeker	63904019
363	Other not economically active	63904019
0	Not applicable	63904019
18	Employed	63904020
27	Unemployed	63904020
9	Discouraged work-seeker	63904020
423	Other not economically active	63904020
0	Not applicable	63904020
6	Employed	63904021
15	Unemployed	63904021
21	Discouraged work-seeker	63904021
483	Other not economically active	63904021
0	Not applicable	63904021
6	Employed	63904022
18	Unemployed	63904022
12	Discouraged work-seeker	63904022
336	Other not economically active	63904022
0	Not applicable	63904022
3	Employed	63904023
3	Unemployed	63904023
6	Discouraged work-seeker	63904023
366	Other not economically active	63904023
0	Not applicable	63904023
0	Employed	63904024
9	Unemployed	63904024
27	Discouraged work-seeker	63904024
438	Other not economically active	63904024
0	Not applicable	63904024
12	Employed	63904025
27	Unemployed	63904025
6	Discouraged work-seeker	63904025
477	Other not economically active	63904025
0	Not applicable	63904025
6	Employed	63904026
21	Unemployed	63904026
18	Discouraged work-seeker	63904026
378	Other not economically active	63904026
0	Not applicable	63904026
9	Employed	63906001
36	Unemployed	63906001
27	Discouraged work-seeker	63906001
540	Other not economically active	63906001
0	Not applicable	63906001
6	Employed	63906002
12	Unemployed	63906002
15	Discouraged work-seeker	63906002
291	Other not economically active	63906002
0	Not applicable	63906002
21	Employed	63906003
33	Unemployed	63906003
48	Discouraged work-seeker	63906003
441	Other not economically active	63906003
0	Not applicable	63906003
12	Employed	63906004
12	Unemployed	63906004
9	Discouraged work-seeker	63906004
213	Other not economically active	63906004
0	Not applicable	63906004
9	Employed	63906005
39	Unemployed	63906005
21	Discouraged work-seeker	63906005
423	Other not economically active	63906005
0	Not applicable	63906005
30	Employed	63906006
9	Unemployed	63906006
3	Discouraged work-seeker	63906006
201	Other not economically active	63906006
0	Not applicable	63906006
9	Employed	63906007
24	Unemployed	63906007
27	Discouraged work-seeker	63906007
486	Other not economically active	63906007
0	Not applicable	63906007
33	Employed	63907001
15	Unemployed	63907001
18	Discouraged work-seeker	63907001
498	Other not economically active	63907001
0	Not applicable	63907001
57	Employed	63907002
21	Unemployed	63907002
30	Discouraged work-seeker	63907002
216	Other not economically active	63907002
0	Not applicable	63907002
45	Employed	63907003
36	Unemployed	63907003
30	Discouraged work-seeker	63907003
561	Other not economically active	63907003
0	Not applicable	63907003
3	Employed	63907004
57	Unemployed	63907004
6	Discouraged work-seeker	63907004
411	Other not economically active	63907004
0	Not applicable	63907004
3	Employed	63907005
18	Unemployed	63907005
6	Discouraged work-seeker	63907005
303	Other not economically active	63907005
0	Not applicable	63907005
27	Employed	63907006
21	Unemployed	63907006
6	Discouraged work-seeker	63907006
402	Other not economically active	63907006
0	Not applicable	63907006
12	Employed	63907007
12	Unemployed	63907007
18	Discouraged work-seeker	63907007
516	Other not economically active	63907007
0	Not applicable	63907007
12	Employed	63907008
9	Unemployed	63907008
15	Discouraged work-seeker	63907008
324	Other not economically active	63907008
0	Not applicable	63907008
9	Employed	63907009
9	Unemployed	63907009
12	Discouraged work-seeker	63907009
303	Other not economically active	63907009
0	Not applicable	63907009
9	Employed	63907010
39	Unemployed	63907010
21	Discouraged work-seeker	63907010
579	Other not economically active	63907010
0	Not applicable	63907010
0	Employed	63907011
6	Unemployed	63907011
9	Discouraged work-seeker	63907011
423	Other not economically active	63907011
0	Not applicable	63907011
12	Employed	63907012
18	Unemployed	63907012
18	Discouraged work-seeker	63907012
282	Other not economically active	63907012
0	Not applicable	63907012
0	Employed	63907013
18	Unemployed	63907013
12	Discouraged work-seeker	63907013
600	Other not economically active	63907013
0	Not applicable	63907013
3	Employed	63907014
57	Unemployed	63907014
12	Discouraged work-seeker	63907014
468	Other not economically active	63907014
0	Not applicable	63907014
6	Employed	63907015
45	Unemployed	63907015
12	Discouraged work-seeker	63907015
417	Other not economically active	63907015
0	Not applicable	63907015
3	Employed	64001001
9	Unemployed	64001001
6	Discouraged work-seeker	64001001
225	Other not economically active	64001001
0	Not applicable	64001001
3	Employed	64001002
6	Unemployed	64001002
0	Discouraged work-seeker	64001002
204	Other not economically active	64001002
0	Not applicable	64001002
9	Employed	64001003
24	Unemployed	64001003
18	Discouraged work-seeker	64001003
885	Other not economically active	64001003
0	Not applicable	64001003
39	Employed	64001004
30	Unemployed	64001004
18	Discouraged work-seeker	64001004
366	Other not economically active	64001004
0	Not applicable	64001004
39	Employed	64001005
54	Unemployed	64001005
45	Discouraged work-seeker	64001005
627	Other not economically active	64001005
0	Not applicable	64001005
18	Employed	64001006
30	Unemployed	64001006
24	Discouraged work-seeker	64001006
417	Other not economically active	64001006
0	Not applicable	64001006
12	Employed	64002001
24	Unemployed	64002001
9	Discouraged work-seeker	64002001
219	Other not economically active	64002001
0	Not applicable	64002001
45	Employed	64002002
75	Unemployed	64002002
27	Discouraged work-seeker	64002002
405	Other not economically active	64002002
0	Not applicable	64002002
39	Employed	64002003
21	Unemployed	64002003
0	Discouraged work-seeker	64002003
327	Other not economically active	64002003
0	Not applicable	64002003
9	Employed	64002004
54	Unemployed	64002004
0	Discouraged work-seeker	64002004
396	Other not economically active	64002004
0	Not applicable	64002004
6	Employed	64002005
3	Unemployed	64002005
3	Discouraged work-seeker	64002005
99	Other not economically active	64002005
0	Not applicable	64002005
3	Employed	64002006
3	Unemployed	64002006
0	Discouraged work-seeker	64002006
147	Other not economically active	64002006
0	Not applicable	64002006
6	Employed	64002007
6	Unemployed	64002007
0	Discouraged work-seeker	64002007
132	Other not economically active	64002007
0	Not applicable	64002007
9	Employed	64002008
24	Unemployed	64002008
3	Discouraged work-seeker	64002008
165	Other not economically active	64002008
0	Not applicable	64002008
15	Employed	64002009
69	Unemployed	64002009
3	Discouraged work-seeker	64002009
303	Other not economically active	64002009
0	Not applicable	64002009
9	Employed	64002010
3	Unemployed	64002010
0	Discouraged work-seeker	64002010
177	Other not economically active	64002010
0	Not applicable	64002010
3	Employed	64002011
3	Unemployed	64002011
0	Discouraged work-seeker	64002011
99	Other not economically active	64002011
0	Not applicable	64002011
6	Employed	64002012
12	Unemployed	64002012
3	Discouraged work-seeker	64002012
243	Other not economically active	64002012
0	Not applicable	64002012
9	Employed	64002013
33	Unemployed	64002013
0	Discouraged work-seeker	64002013
456	Other not economically active	64002013
0	Not applicable	64002013
0	Employed	64002014
12	Unemployed	64002014
0	Discouraged work-seeker	64002014
195	Other not economically active	64002014
0	Not applicable	64002014
12	Employed	64002015
12	Unemployed	64002015
3	Discouraged work-seeker	64002015
312	Other not economically active	64002015
0	Not applicable	64002015
3	Employed	64002016
6	Unemployed	64002016
3	Discouraged work-seeker	64002016
177	Other not economically active	64002016
0	Not applicable	64002016
9	Employed	64002017
15	Unemployed	64002017
6	Discouraged work-seeker	64002017
255	Other not economically active	64002017
0	Not applicable	64002017
12	Employed	64002018
27	Unemployed	64002018
0	Discouraged work-seeker	64002018
288	Other not economically active	64002018
0	Not applicable	64002018
12	Employed	64002019
27	Unemployed	64002019
3	Discouraged work-seeker	64002019
450	Other not economically active	64002019
0	Not applicable	64002019
9	Employed	64002020
21	Unemployed	64002020
9	Discouraged work-seeker	64002020
276	Other not economically active	64002020
0	Not applicable	64002020
9	Employed	64002021
30	Unemployed	64002021
9	Discouraged work-seeker	64002021
552	Other not economically active	64002021
0	Not applicable	64002021
0	Employed	64002022
0	Unemployed	64002022
0	Discouraged work-seeker	64002022
21	Other not economically active	64002022
0	Not applicable	64002022
12	Employed	64002023
6	Unemployed	64002023
0	Discouraged work-seeker	64002023
201	Other not economically active	64002023
0	Not applicable	64002023
6	Employed	64002024
6	Unemployed	64002024
0	Discouraged work-seeker	64002024
24	Other not economically active	64002024
0	Not applicable	64002024
6	Employed	64002025
6	Unemployed	64002025
0	Discouraged work-seeker	64002025
72	Other not economically active	64002025
0	Not applicable	64002025
9	Employed	64002026
21	Unemployed	64002026
6	Discouraged work-seeker	64002026
516	Other not economically active	64002026
0	Not applicable	64002026
60	Employed	64003001
84	Unemployed	64003001
45	Discouraged work-seeker	64003001
699	Other not economically active	64003001
0	Not applicable	64003001
15	Employed	64003002
54	Unemployed	64003002
9	Discouraged work-seeker	64003002
810	Other not economically active	64003002
0	Not applicable	64003002
21	Employed	64003003
45	Unemployed	64003003
9	Discouraged work-seeker	64003003
546	Other not economically active	64003003
0	Not applicable	64003003
27	Employed	64003004
150	Unemployed	64003004
39	Discouraged work-seeker	64003004
783	Other not economically active	64003004
0	Not applicable	64003004
15	Employed	64003005
54	Unemployed	64003005
12	Discouraged work-seeker	64003005
633	Other not economically active	64003005
0	Not applicable	64003005
9	Employed	64003006
63	Unemployed	64003006
12	Discouraged work-seeker	64003006
573	Other not economically active	64003006
0	Not applicable	64003006
15	Employed	64003007
87	Unemployed	64003007
3	Discouraged work-seeker	64003007
549	Other not economically active	64003007
0	Not applicable	64003007
3	Employed	64003008
21	Unemployed	64003008
9	Discouraged work-seeker	64003008
441	Other not economically active	64003008
0	Not applicable	64003008
15	Employed	64003009
75	Unemployed	64003009
18	Discouraged work-seeker	64003009
411	Other not economically active	64003009
0	Not applicable	64003009
6	Employed	64003010
39	Unemployed	64003010
6	Discouraged work-seeker	64003010
273	Other not economically active	64003010
0	Not applicable	64003010
12	Employed	64003011
21	Unemployed	64003011
12	Discouraged work-seeker	64003011
291	Other not economically active	64003011
0	Not applicable	64003011
12	Employed	64003012
87	Unemployed	64003012
9	Discouraged work-seeker	64003012
711	Other not economically active	64003012
0	Not applicable	64003012
12	Employed	64003013
36	Unemployed	64003013
18	Discouraged work-seeker	64003013
597	Other not economically active	64003013
0	Not applicable	64003013
12	Employed	64003014
57	Unemployed	64003014
9	Discouraged work-seeker	64003014
552	Other not economically active	64003014
0	Not applicable	64003014
24	Employed	64003015
27	Unemployed	64003015
3	Discouraged work-seeker	64003015
414	Other not economically active	64003015
0	Not applicable	64003015
48	Employed	64003016
18	Unemployed	64003016
3	Discouraged work-seeker	64003016
342	Other not economically active	64003016
0	Not applicable	64003016
48	Employed	64003017
12	Unemployed	64003017
3	Discouraged work-seeker	64003017
387	Other not economically active	64003017
0	Not applicable	64003017
51	Employed	64003018
24	Unemployed	64003018
21	Discouraged work-seeker	64003018
474	Other not economically active	64003018
0	Not applicable	64003018
24	Employed	64003019
39	Unemployed	64003019
9	Discouraged work-seeker	64003019
504	Other not economically active	64003019
0	Not applicable	64003019
3	Employed	64003020
24	Unemployed	64003020
3	Discouraged work-seeker	64003020
282	Other not economically active	64003020
0	Not applicable	64003020
9	Employed	64003021
15	Unemployed	64003021
0	Discouraged work-seeker	64003021
339	Other not economically active	64003021
0	Not applicable	64003021
15	Employed	64003022
102	Unemployed	64003022
12	Discouraged work-seeker	64003022
762	Other not economically active	64003022
0	Not applicable	64003022
15	Employed	64003023
60	Unemployed	64003023
18	Discouraged work-seeker	64003023
642	Other not economically active	64003023
0	Not applicable	64003023
9	Employed	64003024
48	Unemployed	64003024
9	Discouraged work-seeker	64003024
543	Other not economically active	64003024
0	Not applicable	64003024
9	Employed	64003025
63	Unemployed	64003025
9	Discouraged work-seeker	64003025
441	Other not economically active	64003025
0	Not applicable	64003025
6	Employed	64003026
60	Unemployed	64003026
12	Discouraged work-seeker	64003026
426	Other not economically active	64003026
0	Not applicable	64003026
21	Employed	64003027
54	Unemployed	64003027
18	Discouraged work-seeker	64003027
621	Other not economically active	64003027
0	Not applicable	64003027
24	Employed	64003028
33	Unemployed	64003028
3	Discouraged work-seeker	64003028
354	Other not economically active	64003028
0	Not applicable	64003028
18	Employed	64003029
24	Unemployed	64003029
0	Discouraged work-seeker	64003029
342	Other not economically active	64003029
0	Not applicable	64003029
24	Employed	64003030
18	Unemployed	64003030
9	Discouraged work-seeker	64003030
306	Other not economically active	64003030
0	Not applicable	64003030
15	Employed	64003031
54	Unemployed	64003031
6	Discouraged work-seeker	64003031
648	Other not economically active	64003031
0	Not applicable	64003031
6	Employed	64003032
51	Unemployed	64003032
9	Discouraged work-seeker	64003032
441	Other not economically active	64003032
0	Not applicable	64003032
15	Employed	64003033
54	Unemployed	64003033
9	Discouraged work-seeker	64003033
570	Other not economically active	64003033
0	Not applicable	64003033
9	Employed	64003034
24	Unemployed	64003034
9	Discouraged work-seeker	64003034
396	Other not economically active	64003034
0	Not applicable	64003034
18	Employed	64003035
75	Unemployed	64003035
21	Discouraged work-seeker	64003035
690	Other not economically active	64003035
0	Not applicable	64003035
9	Employed	64004001
12	Unemployed	64004001
12	Discouraged work-seeker	64004001
297	Other not economically active	64004001
0	Not applicable	64004001
3	Employed	64004002
36	Unemployed	64004002
9	Discouraged work-seeker	64004002
294	Other not economically active	64004002
0	Not applicable	64004002
6	Employed	64004003
24	Unemployed	64004003
3	Discouraged work-seeker	64004003
246	Other not economically active	64004003
0	Not applicable	64004003
3	Employed	64004004
30	Unemployed	64004004
9	Discouraged work-seeker	64004004
261	Other not economically active	64004004
0	Not applicable	64004004
21	Employed	64004005
15	Unemployed	64004005
9	Discouraged work-seeker	64004005
210	Other not economically active	64004005
0	Not applicable	64004005
12	Employed	64004006
6	Unemployed	64004006
21	Discouraged work-seeker	64004006
294	Other not economically active	64004006
0	Not applicable	64004006
6	Employed	64004007
12	Unemployed	64004007
0	Discouraged work-seeker	64004007
210	Other not economically active	64004007
0	Not applicable	64004007
48	Employed	64004008
78	Unemployed	64004008
36	Discouraged work-seeker	64004008
576	Other not economically active	64004008
0	Not applicable	64004008
9	Employed	64004009
33	Unemployed	64004009
15	Discouraged work-seeker	64004009
207	Other not economically active	64004009
0	Not applicable	64004009
9	Employed	64004010
57	Unemployed	64004010
33	Discouraged work-seeker	64004010
456	Other not economically active	64004010
0	Not applicable	64004010
3	Employed	64004011
36	Unemployed	64004011
15	Discouraged work-seeker	64004011
369	Other not economically active	64004011
0	Not applicable	64004011
6	Employed	30601001
3	Unemployed	30601001
6	Discouraged work-seeker	30601001
57	Other not economically active	30601001
0	Not applicable	30601001
3	Employed	30601002
15	Unemployed	30601002
0	Discouraged work-seeker	30601002
129	Other not economically active	30601002
0	Not applicable	30601002
9	Employed	30601003
12	Unemployed	30601003
3	Discouraged work-seeker	30601003
117	Other not economically active	30601003
0	Not applicable	30601003
9	Employed	30601004
6	Unemployed	30601004
0	Discouraged work-seeker	30601004
165	Other not economically active	30601004
0	Not applicable	30601004
6	Employed	30602001
9	Unemployed	30602001
12	Discouraged work-seeker	30602001
276	Other not economically active	30602001
0	Not applicable	30602001
12	Employed	30602002
18	Unemployed	30602002
12	Discouraged work-seeker	30602002
231	Other not economically active	30602002
0	Not applicable	30602002
0	Employed	30602003
12	Unemployed	30602003
15	Discouraged work-seeker	30602003
312	Other not economically active	30602003
0	Not applicable	30602003
15	Employed	30602004
12	Unemployed	30602004
3	Discouraged work-seeker	30602004
180	Other not economically active	30602004
0	Not applicable	30602004
3	Employed	30602005
0	Unemployed	30602005
12	Discouraged work-seeker	30602005
417	Other not economically active	30602005
0	Not applicable	30602005
3	Employed	30602006
27	Unemployed	30602006
12	Discouraged work-seeker	30602006
297	Other not economically active	30602006
0	Not applicable	30602006
6	Employed	30602007
60	Unemployed	30602007
6	Discouraged work-seeker	30602007
222	Other not economically active	30602007
0	Not applicable	30602007
6	Employed	30602008
15	Unemployed	30602008
18	Discouraged work-seeker	30602008
228	Other not economically active	30602008
0	Not applicable	30602008
15	Employed	30602009
21	Unemployed	30602009
15	Discouraged work-seeker	30602009
282	Other not economically active	30602009
0	Not applicable	30602009
0	Employed	30604001
15	Unemployed	30604001
15	Discouraged work-seeker	30604001
24	Other not economically active	30604001
0	Not applicable	30604001
3	Employed	30604002
9	Unemployed	30604002
6	Discouraged work-seeker	30604002
207	Other not economically active	30604002
0	Not applicable	30604002
6	Employed	30604003
6	Unemployed	30604003
6	Discouraged work-seeker	30604003
201	Other not economically active	30604003
0	Not applicable	30604003
3	Employed	30604004
21	Unemployed	30604004
21	Discouraged work-seeker	30604004
54	Other not economically active	30604004
0	Not applicable	30604004
9	Employed	30605001
9	Unemployed	30605001
3	Discouraged work-seeker	30605001
237	Other not economically active	30605001
0	Not applicable	30605001
9	Employed	30605002
15	Unemployed	30605002
6	Discouraged work-seeker	30605002
345	Other not economically active	30605002
0	Not applicable	30605002
9	Employed	30605003
12	Unemployed	30605003
12	Discouraged work-seeker	30605003
135	Other not economically active	30605003
0	Not applicable	30605003
30	Employed	30605004
6	Unemployed	30605004
3	Discouraged work-seeker	30605004
141	Other not economically active	30605004
0	Not applicable	30605004
21	Employed	30605005
3	Unemployed	30605005
0	Discouraged work-seeker	30605005
168	Other not economically active	30605005
0	Not applicable	30605005
6	Employed	30606001
15	Unemployed	30606001
12	Discouraged work-seeker	30606001
177	Other not economically active	30606001
0	Not applicable	30606001
6	Employed	30606002
9	Unemployed	30606002
0	Discouraged work-seeker	30606002
171	Other not economically active	30606002
0	Not applicable	30606002
33	Employed	30606003
3	Unemployed	30606003
0	Discouraged work-seeker	30606003
48	Other not economically active	30606003
0	Not applicable	30606003
6	Employed	30606004
6	Unemployed	30606004
6	Discouraged work-seeker	30606004
138	Other not economically active	30606004
0	Not applicable	30606004
24	Employed	30607001
42	Unemployed	30607001
0	Discouraged work-seeker	30607001
57	Other not economically active	30607001
0	Not applicable	30607001
3	Employed	30607002
21	Unemployed	30607002
24	Discouraged work-seeker	30607002
114	Other not economically active	30607002
0	Not applicable	30607002
3	Employed	30607003
9	Unemployed	30607003
9	Discouraged work-seeker	30607003
84	Other not economically active	30607003
0	Not applicable	30607003
3	Employed	30607004
12	Unemployed	30607004
6	Discouraged work-seeker	30607004
183	Other not economically active	30607004
0	Not applicable	30607004
9	Employed	30701001
57	Unemployed	30701001
18	Discouraged work-seeker	30701001
216	Other not economically active	30701001
0	Not applicable	30701001
12	Employed	30701002
63	Unemployed	30701002
12	Discouraged work-seeker	30701002
228	Other not economically active	30701002
0	Not applicable	30701002
36	Employed	30701003
18	Unemployed	30701003
6	Discouraged work-seeker	30701003
126	Other not economically active	30701003
0	Not applicable	30701003
6	Employed	30701004
12	Unemployed	30701004
6	Discouraged work-seeker	30701004
120	Other not economically active	30701004
0	Not applicable	30701004
15	Employed	30702001
18	Unemployed	30702001
27	Discouraged work-seeker	30702001
336	Other not economically active	30702001
0	Not applicable	30702001
12	Employed	30702002
18	Unemployed	30702002
18	Discouraged work-seeker	30702002
174	Other not economically active	30702002
0	Not applicable	30702002
15	Employed	30702003
30	Unemployed	30702003
15	Discouraged work-seeker	30702003
363	Other not economically active	30702003
0	Not applicable	30702003
9	Employed	30702004
27	Unemployed	30702004
3	Discouraged work-seeker	30702004
318	Other not economically active	30702004
0	Not applicable	30702004
9	Employed	30702005
33	Unemployed	30702005
0	Discouraged work-seeker	30702005
198	Other not economically active	30702005
0	Not applicable	30702005
6	Employed	30703001
42	Unemployed	30703001
9	Discouraged work-seeker	30703001
267	Other not economically active	30703001
0	Not applicable	30703001
6	Employed	30703002
81	Unemployed	30703002
36	Discouraged work-seeker	30703002
453	Other not economically active	30703002
0	Not applicable	30703002
6	Employed	30703003
18	Unemployed	30703003
9	Discouraged work-seeker	30703003
285	Other not economically active	30703003
0	Not applicable	30703003
6	Employed	30703004
39	Unemployed	30703004
6	Discouraged work-seeker	30703004
315	Other not economically active	30703004
0	Not applicable	30703004
6	Employed	30703005
36	Unemployed	30703005
0	Discouraged work-seeker	30703005
276	Other not economically active	30703005
0	Not applicable	30703005
15	Employed	30703006
18	Unemployed	30703006
21	Discouraged work-seeker	30703006
264	Other not economically active	30703006
0	Not applicable	30703006
12	Employed	30703007
33	Unemployed	30703007
18	Discouraged work-seeker	30703007
261	Other not economically active	30703007
0	Not applicable	30703007
3	Employed	30704001
6	Unemployed	30704001
3	Discouraged work-seeker	30704001
174	Other not economically active	30704001
0	Not applicable	30704001
6	Employed	30704002
42	Unemployed	30704002
12	Discouraged work-seeker	30704002
195	Other not economically active	30704002
0	Not applicable	30704002
12	Employed	30704003
9	Unemployed	30704003
0	Discouraged work-seeker	30704003
54	Other not economically active	30704003
0	Not applicable	30704003
15	Employed	30704004
9	Unemployed	30704004
9	Discouraged work-seeker	30704004
66	Other not economically active	30704004
0	Not applicable	30704004
6	Employed	30705001
12	Unemployed	30705001
6	Discouraged work-seeker	30705001
135	Other not economically active	30705001
0	Not applicable	30705001
3	Employed	30705002
24	Unemployed	30705002
6	Discouraged work-seeker	30705002
207	Other not economically active	30705002
0	Not applicable	30705002
6	Employed	30705003
12	Unemployed	30705003
3	Discouraged work-seeker	30705003
36	Other not economically active	30705003
0	Not applicable	30705003
3	Employed	30705004
6	Unemployed	30705004
0	Discouraged work-seeker	30705004
81	Other not economically active	30705004
0	Not applicable	30705004
9	Employed	30706001
30	Unemployed	30706001
15	Discouraged work-seeker	30706001
132	Other not economically active	30706001
0	Not applicable	30706001
21	Employed	30706002
15	Unemployed	30706002
9	Discouraged work-seeker	30706002
177	Other not economically active	30706002
0	Not applicable	30706002
0	Employed	30706003
18	Unemployed	30706003
3	Discouraged work-seeker	30706003
186	Other not economically active	30706003
0	Not applicable	30706003
9	Employed	30706004
24	Unemployed	30706004
18	Discouraged work-seeker	30706004
231	Other not economically active	30706004
0	Not applicable	30706004
9	Employed	30707001
9	Unemployed	30707001
21	Discouraged work-seeker	30707001
369	Other not economically active	30707001
0	Not applicable	30707001
6	Employed	30707002
15	Unemployed	30707002
3	Discouraged work-seeker	30707002
213	Other not economically active	30707002
0	Not applicable	30707002
21	Employed	30707003
15	Unemployed	30707003
15	Discouraged work-seeker	30707003
285	Other not economically active	30707003
0	Not applicable	30707003
39	Employed	30707004
12	Unemployed	30707004
6	Discouraged work-seeker	30707004
141	Other not economically active	30707004
0	Not applicable	30707004
15	Employed	30708001
18	Unemployed	30708001
6	Discouraged work-seeker	30708001
306	Other not economically active	30708001
0	Not applicable	30708001
15	Employed	30708002
12	Unemployed	30708002
12	Discouraged work-seeker	30708002
189	Other not economically active	30708002
0	Not applicable	30708002
3	Employed	30708003
39	Unemployed	30708003
24	Discouraged work-seeker	30708003
396	Other not economically active	30708003
0	Not applicable	30708003
9	Employed	30708004
42	Unemployed	30708004
9	Discouraged work-seeker	30708004
459	Other not economically active	30708004
0	Not applicable	30708004
9	Employed	30708005
21	Unemployed	30708005
6	Discouraged work-seeker	30708005
240	Other not economically active	30708005
0	Not applicable	30708005
15	Employed	30708006
27	Unemployed	30708006
18	Discouraged work-seeker	30708006
276	Other not economically active	30708006
0	Not applicable	30708006
0	Employed	30801001
0	Unemployed	30801001
0	Discouraged work-seeker	30801001
6	Other not economically active	30801001
0	Not applicable	30801001
9	Employed	30801002
21	Unemployed	30801002
3	Discouraged work-seeker	30801002
93	Other not economically active	30801002
0	Not applicable	30801002
12	Employed	30801003
6	Unemployed	30801003
9	Discouraged work-seeker	30801003
192	Other not economically active	30801003
0	Not applicable	30801003
6	Employed	30801004
6	Unemployed	30801004
3	Discouraged work-seeker	30801004
42	Other not economically active	30801004
0	Not applicable	30801004
159	Employed	30802001
18	Unemployed	30802001
3	Discouraged work-seeker	30802001
174	Other not economically active	30802001
0	Not applicable	30802001
81	Employed	30802002
3	Unemployed	30802002
3	Discouraged work-seeker	30802002
273	Other not economically active	30802002
0	Not applicable	30802002
45	Employed	30802003
24	Unemployed	30802003
9	Discouraged work-seeker	30802003
336	Other not economically active	30802003
0	Not applicable	30802003
21	Employed	30802004
30	Unemployed	30802004
9	Discouraged work-seeker	30802004
309	Other not economically active	30802004
0	Not applicable	30802004
15	Employed	30802005
18	Unemployed	30802005
15	Discouraged work-seeker	30802005
204	Other not economically active	30802005
0	Not applicable	30802005
9	Employed	30802006
18	Unemployed	30802006
15	Discouraged work-seeker	30802006
489	Other not economically active	30802006
0	Not applicable	30802006
24	Employed	30802007
21	Unemployed	30802007
3	Discouraged work-seeker	30802007
231	Other not economically active	30802007
0	Not applicable	30802007
27	Employed	30802008
18	Unemployed	30802008
6	Discouraged work-seeker	30802008
240	Other not economically active	30802008
0	Not applicable	30802008
15	Employed	30802009
21	Unemployed	30802009
6	Discouraged work-seeker	30802009
315	Other not economically active	30802009
0	Not applicable	30802009
9	Employed	30803001
24	Unemployed	30803001
15	Discouraged work-seeker	30803001
387	Other not economically active	30803001
0	Not applicable	30803001
9	Employed	30803002
57	Unemployed	30803002
15	Discouraged work-seeker	30803002
456	Other not economically active	30803002
0	Not applicable	30803002
6	Employed	30803003
12	Unemployed	30803003
9	Discouraged work-seeker	30803003
402	Other not economically active	30803003
0	Not applicable	30803003
0	Employed	30803004
15	Unemployed	30803004
6	Discouraged work-seeker	30803004
231	Other not economically active	30803004
0	Not applicable	30803004
9	Employed	30803005
30	Unemployed	30803005
18	Discouraged work-seeker	30803005
480	Other not economically active	30803005
0	Not applicable	30803005
9	Employed	30803006
30	Unemployed	30803006
3	Discouraged work-seeker	30803006
363	Other not economically active	30803006
0	Not applicable	30803006
6	Employed	30803007
3	Unemployed	30803007
6	Discouraged work-seeker	30803007
195	Other not economically active	30803007
0	Not applicable	30803007
15	Employed	30803008
21	Unemployed	30803008
6	Discouraged work-seeker	30803008
306	Other not economically active	30803008
0	Not applicable	30803008
48	Employed	30803009
15	Unemployed	30803009
12	Discouraged work-seeker	30803009
222	Other not economically active	30803009
0	Not applicable	30803009
6	Employed	30803010
45	Unemployed	30803010
15	Discouraged work-seeker	30803010
645	Other not economically active	30803010
0	Not applicable	30803010
24	Employed	30803011
30	Unemployed	30803011
18	Discouraged work-seeker	30803011
330	Other not economically active	30803011
0	Not applicable	30803011
30	Employed	30803012
18	Unemployed	30803012
24	Discouraged work-seeker	30803012
357	Other not economically active	30803012
0	Not applicable	30803012
6	Employed	30803013
63	Unemployed	30803013
6	Discouraged work-seeker	30803013
441	Other not economically active	30803013
0	Not applicable	30803013
3	Employed	30803014
21	Unemployed	30803014
15	Discouraged work-seeker	30803014
258	Other not economically active	30803014
0	Not applicable	30803014
12	Employed	30804001
18	Unemployed	30804001
15	Discouraged work-seeker	30804001
201	Other not economically active	30804001
0	Not applicable	30804001
27	Employed	30804002
21	Unemployed	30804002
6	Discouraged work-seeker	30804002
171	Other not economically active	30804002
0	Not applicable	30804002
9	Employed	30804003
18	Unemployed	30804003
6	Discouraged work-seeker	30804003
255	Other not economically active	30804003
0	Not applicable	30804003
12	Employed	30804004
27	Unemployed	30804004
18	Discouraged work-seeker	30804004
150	Other not economically active	30804004
0	Not applicable	30804004
9	Employed	30805001
6	Unemployed	30805001
0	Discouraged work-seeker	30805001
222	Other not economically active	30805001
0	Not applicable	30805001
9	Employed	30805002
48	Unemployed	30805002
0	Discouraged work-seeker	30805002
267	Other not economically active	30805002
0	Not applicable	30805002
9	Employed	30805003
39	Unemployed	30805003
6	Discouraged work-seeker	30805003
285	Other not economically active	30805003
0	Not applicable	30805003
0	Employed	30805004
21	Unemployed	30805004
3	Discouraged work-seeker	30805004
267	Other not economically active	30805004
0	Not applicable	30805004
21	Employed	30805005
27	Unemployed	30805005
6	Discouraged work-seeker	30805005
291	Other not economically active	30805005
0	Not applicable	30805005
36	Employed	30805006
18	Unemployed	30805006
6	Discouraged work-seeker	30805006
189	Other not economically active	30805006
0	Not applicable	30805006
3	Employed	30806001
12	Unemployed	30806001
0	Discouraged work-seeker	30806001
192	Other not economically active	30806001
0	Not applicable	30806001
18	Employed	30806002
6	Unemployed	30806002
0	Discouraged work-seeker	30806002
165	Other not economically active	30806002
0	Not applicable	30806002
9	Employed	30806003
39	Unemployed	30806003
0	Discouraged work-seeker	30806003
387	Other not economically active	30806003
0	Not applicable	30806003
12	Employed	30806004
12	Unemployed	30806004
0	Discouraged work-seeker	30806004
144	Other not economically active	30806004
0	Not applicable	30806004
18	Employed	30901001
15	Unemployed	30901001
21	Discouraged work-seeker	30901001
282	Other not economically active	30901001
0	Not applicable	30901001
12	Employed	30901002
60	Unemployed	30901002
36	Discouraged work-seeker	30901002
567	Other not economically active	30901002
0	Not applicable	30901002
6	Employed	30901003
72	Unemployed	30901003
18	Discouraged work-seeker	30901003
420	Other not economically active	30901003
0	Not applicable	30901003
9	Employed	30901004
42	Unemployed	30901004
6	Discouraged work-seeker	30901004
324	Other not economically active	30901004
0	Not applicable	30901004
3	Employed	30901005
36	Unemployed	30901005
3	Discouraged work-seeker	30901005
333	Other not economically active	30901005
0	Not applicable	30901005
3	Employed	30901006
57	Unemployed	30901006
15	Discouraged work-seeker	30901006
375	Other not economically active	30901006
0	Not applicable	30901006
12	Employed	30901007
105	Unemployed	30901007
12	Discouraged work-seeker	30901007
390	Other not economically active	30901007
0	Not applicable	30901007
9	Employed	30901008
93	Unemployed	30901008
15	Discouraged work-seeker	30901008
402	Other not economically active	30901008
0	Not applicable	30901008
0	Employed	30901009
24	Unemployed	30901009
6	Discouraged work-seeker	30901009
381	Other not economically active	30901009
0	Not applicable	30901009
12	Employed	30901010
30	Unemployed	30901010
0	Discouraged work-seeker	30901010
336	Other not economically active	30901010
0	Not applicable	30901010
12	Employed	30901011
48	Unemployed	30901011
12	Discouraged work-seeker	30901011
360	Other not economically active	30901011
0	Not applicable	30901011
15	Employed	30901012
21	Unemployed	30901012
9	Discouraged work-seeker	30901012
282	Other not economically active	30901012
0	Not applicable	30901012
9	Employed	30901013
12	Unemployed	30901013
15	Discouraged work-seeker	30901013
486	Other not economically active	30901013
0	Not applicable	30901013
6	Employed	30901014
21	Unemployed	30901014
6	Discouraged work-seeker	30901014
252	Other not economically active	30901014
0	Not applicable	30901014
6	Employed	30901015
33	Unemployed	30901015
9	Discouraged work-seeker	30901015
384	Other not economically active	30901015
0	Not applicable	30901015
9	Employed	30901016
84	Unemployed	30901016
3	Discouraged work-seeker	30901016
480	Other not economically active	30901016
0	Not applicable	30901016
21	Employed	30901017
72	Unemployed	30901017
15	Discouraged work-seeker	30901017
561	Other not economically active	30901017
0	Not applicable	30901017
6	Employed	30901018
48	Unemployed	30901018
24	Discouraged work-seeker	30901018
129	Other not economically active	30901018
0	Not applicable	30901018
6	Employed	30901019
57	Unemployed	30901019
6	Discouraged work-seeker	30901019
273	Other not economically active	30901019
0	Not applicable	30901019
12	Employed	30901020
30	Unemployed	30901020
9	Discouraged work-seeker	30901020
306	Other not economically active	30901020
0	Not applicable	30901020
3	Employed	30901021
18	Unemployed	30901021
3	Discouraged work-seeker	30901021
405	Other not economically active	30901021
0	Not applicable	30901021
12	Employed	30901022
18	Unemployed	30901022
12	Discouraged work-seeker	30901022
789	Other not economically active	30901022
0	Not applicable	30901022
9	Employed	30901023
6	Unemployed	30901023
0	Discouraged work-seeker	30901023
225	Other not economically active	30901023
0	Not applicable	30901023
15	Employed	30901024
3	Unemployed	30901024
0	Discouraged work-seeker	30901024
246	Other not economically active	30901024
0	Not applicable	30901024
21	Employed	30901025
57	Unemployed	30901025
3	Discouraged work-seeker	30901025
396	Other not economically active	30901025
0	Not applicable	30901025
18	Employed	30901026
24	Unemployed	30901026
30	Discouraged work-seeker	30901026
495	Other not economically active	30901026
0	Not applicable	30901026
24	Employed	30901027
27	Unemployed	30901027
48	Discouraged work-seeker	30901027
465	Other not economically active	30901027
0	Not applicable	30901027
9	Employed	30901028
57	Unemployed	30901028
9	Discouraged work-seeker	30901028
453	Other not economically active	30901028
0	Not applicable	30901028
3	Employed	30901029
6	Unemployed	30901029
6	Discouraged work-seeker	30901029
93	Other not economically active	30901029
0	Not applicable	30901029
12	Employed	30901030
39	Unemployed	30901030
21	Discouraged work-seeker	30901030
462	Other not economically active	30901030
0	Not applicable	30901030
21	Employed	30901031
69	Unemployed	30901031
21	Discouraged work-seeker	30901031
447	Other not economically active	30901031
0	Not applicable	30901031
6	Employed	30902001
24	Unemployed	30902001
9	Discouraged work-seeker	30902001
312	Other not economically active	30902001
0	Not applicable	30902001
9	Employed	30902002
33	Unemployed	30902002
9	Discouraged work-seeker	30902002
315	Other not economically active	30902002
0	Not applicable	30902002
15	Employed	30902003
54	Unemployed	30902003
12	Discouraged work-seeker	30902003
405	Other not economically active	30902003
0	Not applicable	30902003
3	Employed	30902004
36	Unemployed	30902004
15	Discouraged work-seeker	30902004
318	Other not economically active	30902004
0	Not applicable	30902004
0	Employed	30902005
27	Unemployed	30902005
21	Discouraged work-seeker	30902005
354	Other not economically active	30902005
0	Not applicable	30902005
12	Employed	30902006
12	Unemployed	30902006
6	Discouraged work-seeker	30902006
171	Other not economically active	30902006
0	Not applicable	30902006
3	Employed	30902007
93	Unemployed	30902007
24	Discouraged work-seeker	30902007
324	Other not economically active	30902007
0	Not applicable	30902007
0	Employed	30903001
21	Unemployed	30903001
15	Discouraged work-seeker	30903001
402	Other not economically active	30903001
0	Not applicable	30903001
3	Employed	30903002
15	Unemployed	30903002
27	Discouraged work-seeker	30903002
213	Other not economically active	30903002
0	Not applicable	30903002
0	Employed	30903003
21	Unemployed	30903003
3	Discouraged work-seeker	30903003
129	Other not economically active	30903003
0	Not applicable	30903003
6	Employed	30903004
36	Unemployed	30903004
9	Discouraged work-seeker	30903004
330	Other not economically active	30903004
0	Not applicable	30903004
6	Employed	30903005
21	Unemployed	30903005
6	Discouraged work-seeker	30903005
114	Other not economically active	30903005
0	Not applicable	30903005
6	Employed	30904001
51	Unemployed	30904001
18	Discouraged work-seeker	30904001
453	Other not economically active	30904001
0	Not applicable	30904001
3	Employed	30904002
18	Unemployed	30904002
3	Discouraged work-seeker	30904002
309	Other not economically active	30904002
0	Not applicable	30904002
6	Employed	30904003
33	Unemployed	30904003
0	Discouraged work-seeker	30904003
258	Other not economically active	30904003
0	Not applicable	30904003
9	Employed	30904004
33	Unemployed	30904004
6	Discouraged work-seeker	30904004
297	Other not economically active	30904004
0	Not applicable	30904004
18	Employed	30904005
54	Unemployed	30904005
24	Discouraged work-seeker	30904005
468	Other not economically active	30904005
0	Not applicable	30904005
15	Employed	30904006
3	Unemployed	30904006
0	Discouraged work-seeker	30904006
126	Other not economically active	30904006
0	Not applicable	30904006
6	Employed	30904007
42	Unemployed	30904007
6	Discouraged work-seeker	30904007
510	Other not economically active	30904007
0	Not applicable	30904007
6	Employed	30904008
21	Unemployed	30904008
33	Discouraged work-seeker	30904008
495	Other not economically active	30904008
0	Not applicable	30904008
9	Employed	30904009
24	Unemployed	30904009
15	Discouraged work-seeker	30904009
432	Other not economically active	30904009
0	Not applicable	30904009
12	Employed	34501001
9	Unemployed	34501001
6	Discouraged work-seeker	34501001
315	Other not economically active	34501001
0	Not applicable	34501001
6	Employed	34501002
12	Unemployed	34501002
21	Discouraged work-seeker	34501002
357	Other not economically active	34501002
0	Not applicable	34501002
6	Employed	34501003
0	Unemployed	34501003
21	Discouraged work-seeker	34501003
282	Other not economically active	34501003
0	Not applicable	34501003
30	Employed	34501004
15	Unemployed	34501004
30	Discouraged work-seeker	34501004
303	Other not economically active	34501004
0	Not applicable	34501004
6	Employed	34501005
12	Unemployed	34501005
12	Discouraged work-seeker	34501005
342	Other not economically active	34501005
0	Not applicable	34501005
6	Employed	34501006
9	Unemployed	34501006
18	Discouraged work-seeker	34501006
369	Other not economically active	34501006
0	Not applicable	34501006
12	Employed	34501007
3	Unemployed	34501007
12	Discouraged work-seeker	34501007
237	Other not economically active	34501007
0	Not applicable	34501007
6	Employed	34501008
9	Unemployed	34501008
9	Discouraged work-seeker	34501008
330	Other not economically active	34501008
0	Not applicable	34501008
6	Employed	34501009
24	Unemployed	34501009
12	Discouraged work-seeker	34501009
501	Other not economically active	34501009
0	Not applicable	34501009
6	Employed	34501010
15	Unemployed	34501010
12	Discouraged work-seeker	34501010
507	Other not economically active	34501010
0	Not applicable	34501010
3	Employed	34501011
12	Unemployed	34501011
18	Discouraged work-seeker	34501011
393	Other not economically active	34501011
0	Not applicable	34501011
6	Employed	34501012
0	Unemployed	34501012
0	Discouraged work-seeker	34501012
423	Other not economically active	34501012
0	Not applicable	34501012
6	Employed	34501013
24	Unemployed	34501013
18	Discouraged work-seeker	34501013
447	Other not economically active	34501013
0	Not applicable	34501013
3	Employed	34501014
39	Unemployed	34501014
3	Discouraged work-seeker	34501014
303	Other not economically active	34501014
0	Not applicable	34501014
6	Employed	34501015
12	Unemployed	34501015
3	Discouraged work-seeker	34501015
420	Other not economically active	34501015
0	Not applicable	34501015
30	Employed	34502001
24	Unemployed	34502001
15	Discouraged work-seeker	34502001
165	Other not economically active	34502001
0	Not applicable	34502001
15	Employed	34502002
30	Unemployed	34502002
27	Discouraged work-seeker	34502002
480	Other not economically active	34502002
0	Not applicable	34502002
12	Employed	34502003
36	Unemployed	34502003
3	Discouraged work-seeker	34502003
573	Other not economically active	34502003
0	Not applicable	34502003
9	Employed	34502004
21	Unemployed	34502004
6	Discouraged work-seeker	34502004
354	Other not economically active	34502004
0	Not applicable	34502004
6	Employed	34502005
15	Unemployed	34502005
0	Discouraged work-seeker	34502005
189	Other not economically active	34502005
0	Not applicable	34502005
12	Employed	34502006
27	Unemployed	34502006
9	Discouraged work-seeker	34502006
474	Other not economically active	34502006
0	Not applicable	34502006
0	Employed	34502007
9	Unemployed	34502007
9	Discouraged work-seeker	34502007
360	Other not economically active	34502007
0	Not applicable	34502007
6	Employed	34502008
6	Unemployed	34502008
6	Discouraged work-seeker	34502008
360	Other not economically active	34502008
0	Not applicable	34502008
0	Employed	34502009
18	Unemployed	34502009
21	Discouraged work-seeker	34502009
204	Other not economically active	34502009
0	Not applicable	34502009
9	Employed	34502010
39	Unemployed	34502010
24	Discouraged work-seeker	34502010
630	Other not economically active	34502010
0	Not applicable	34502010
6	Employed	34502011
27	Unemployed	34502011
6	Discouraged work-seeker	34502011
408	Other not economically active	34502011
0	Not applicable	34502011
9	Employed	34502012
27	Unemployed	34502012
18	Discouraged work-seeker	34502012
699	Other not economically active	34502012
0	Not applicable	34502012
9	Employed	34502013
63	Unemployed	34502013
9	Discouraged work-seeker	34502013
315	Other not economically active	34502013
0	Not applicable	34502013
30	Employed	34503001
27	Unemployed	34503001
3	Discouraged work-seeker	34503001
318	Other not economically active	34503001
0	Not applicable	34503001
21	Employed	34503002
93	Unemployed	34503002
36	Discouraged work-seeker	34503002
339	Other not economically active	34503002
0	Not applicable	34503002
15	Employed	34503003
45	Unemployed	34503003
6	Discouraged work-seeker	34503003
294	Other not economically active	34503003
0	Not applicable	34503003
24	Employed	34503004
21	Unemployed	34503004
15	Discouraged work-seeker	34503004
402	Other not economically active	34503004
0	Not applicable	34503004
9	Employed	34503005
36	Unemployed	34503005
3	Discouraged work-seeker	34503005
126	Other not economically active	34503005
0	Not applicable	34503005
27	Employed	10101001
15	Unemployed	10101001
18	Discouraged work-seeker	10101001
417	Other not economically active	10101001
0	Not applicable	10101001
60	Employed	10101002
54	Unemployed	10101002
9	Discouraged work-seeker	10101002
387	Other not economically active	10101002
0	Not applicable	10101002
21	Employed	10101003
36	Unemployed	10101003
6	Discouraged work-seeker	10101003
306	Other not economically active	10101003
0	Not applicable	10101003
33	Employed	10101004
33	Unemployed	10101004
0	Discouraged work-seeker	10101004
462	Other not economically active	10101004
0	Not applicable	10101004
48	Employed	10101005
21	Unemployed	10101005
6	Discouraged work-seeker	10101005
279	Other not economically active	10101005
0	Not applicable	10101005
21	Employed	10101006
27	Unemployed	10101006
6	Discouraged work-seeker	10101006
309	Other not economically active	10101006
0	Not applicable	10101006
63	Employed	10101007
15	Unemployed	10101007
12	Discouraged work-seeker	10101007
399	Other not economically active	10101007
0	Not applicable	10101007
63	Employed	10101008
39	Unemployed	10101008
39	Discouraged work-seeker	10101008
336	Other not economically active	10101008
0	Not applicable	10101008
48	Employed	10102001
30	Unemployed	10102001
0	Discouraged work-seeker	10102001
429	Other not economically active	10102001
0	Not applicable	10102001
12	Employed	10102002
24	Unemployed	10102002
0	Discouraged work-seeker	10102002
324	Other not economically active	10102002
0	Not applicable	10102002
24	Employed	10102003
30	Unemployed	10102003
3	Discouraged work-seeker	10102003
303	Other not economically active	10102003
0	Not applicable	10102003
93	Employed	10102004
24	Unemployed	10102004
6	Discouraged work-seeker	10102004
381	Other not economically active	10102004
0	Not applicable	10102004
39	Employed	10102005
24	Unemployed	10102005
6	Discouraged work-seeker	10102005
255	Other not economically active	10102005
0	Not applicable	10102005
42	Employed	10102006
12	Unemployed	10102006
0	Discouraged work-seeker	10102006
315	Other not economically active	10102006
0	Not applicable	10102006
96	Employed	10103001
12	Unemployed	10103001
0	Discouraged work-seeker	10103001
399	Other not economically active	10103001
0	Not applicable	10103001
12	Employed	10103002
12	Unemployed	10103002
9	Discouraged work-seeker	10103002
267	Other not economically active	10103002
0	Not applicable	10103002
54	Employed	10103003
15	Unemployed	10103003
0	Discouraged work-seeker	10103003
360	Other not economically active	10103003
0	Not applicable	10103003
21	Employed	10103004
18	Unemployed	10103004
12	Discouraged work-seeker	10103004
498	Other not economically active	10103004
0	Not applicable	10103004
90	Employed	10103005
33	Unemployed	10103005
6	Discouraged work-seeker	10103005
543	Other not economically active	10103005
0	Not applicable	10103005
18	Employed	10103006
6	Unemployed	10103006
0	Discouraged work-seeker	10103006
111	Other not economically active	10103006
0	Not applicable	10103006
27	Employed	10103007
48	Unemployed	10103007
6	Discouraged work-seeker	10103007
414	Other not economically active	10103007
0	Not applicable	10103007
12	Employed	10104001
45	Unemployed	10104001
15	Discouraged work-seeker	10104001
303	Other not economically active	10104001
0	Not applicable	10104001
27	Employed	10104002
123	Unemployed	10104002
24	Discouraged work-seeker	10104002
399	Other not economically active	10104002
0	Not applicable	10104002
9	Employed	10104003
33	Unemployed	10104003
3	Discouraged work-seeker	10104003
228	Other not economically active	10104003
0	Not applicable	10104003
30	Employed	10104004
81	Unemployed	10104004
6	Discouraged work-seeker	10104004
387	Other not economically active	10104004
0	Not applicable	10104004
9	Employed	10104005
21	Unemployed	10104005
0	Discouraged work-seeker	10104005
219	Other not economically active	10104005
0	Not applicable	10104005
48	Employed	10104006
33	Unemployed	10104006
0	Discouraged work-seeker	10104006
276	Other not economically active	10104006
0	Not applicable	10104006
15	Employed	10104007
30	Unemployed	10104007
9	Discouraged work-seeker	10104007
342	Other not economically active	10104007
0	Not applicable	10104007
18	Employed	10104008
6	Unemployed	10104008
9	Discouraged work-seeker	10104008
213	Other not economically active	10104008
0	Not applicable	10104008
6	Employed	10104009
36	Unemployed	10104009
9	Discouraged work-seeker	10104009
207	Other not economically active	10104009
0	Not applicable	10104009
21	Employed	10104010
36	Unemployed	10104010
15	Discouraged work-seeker	10104010
324	Other not economically active	10104010
0	Not applicable	10104010
15	Employed	10104011
21	Unemployed	10104011
18	Discouraged work-seeker	10104011
186	Other not economically active	10104011
0	Not applicable	10104011
12	Employed	10104012
48	Unemployed	10104012
6	Discouraged work-seeker	10104012
342	Other not economically active	10104012
0	Not applicable	10104012
15	Employed	10104013
48	Unemployed	10104013
3	Discouraged work-seeker	10104013
297	Other not economically active	10104013
0	Not applicable	10104013
24	Employed	10105001
12	Unemployed	10105001
9	Discouraged work-seeker	10105001
360	Other not economically active	10105001
0	Not applicable	10105001
12	Employed	10105002
42	Unemployed	10105002
15	Discouraged work-seeker	10105002
378	Other not economically active	10105002
0	Not applicable	10105002
72	Employed	10105003
15	Unemployed	10105003
6	Discouraged work-seeker	10105003
405	Other not economically active	10105003
0	Not applicable	10105003
54	Employed	10105004
57	Unemployed	10105004
18	Discouraged work-seeker	10105004
564	Other not economically active	10105004
0	Not applicable	10105004
54	Employed	10105005
33	Unemployed	10105005
6	Discouraged work-seeker	10105005
210	Other not economically active	10105005
0	Not applicable	10105005
42	Employed	10105006
57	Unemployed	10105006
9	Discouraged work-seeker	10105006
333	Other not economically active	10105006
0	Not applicable	10105006
60	Employed	10105007
45	Unemployed	10105007
24	Discouraged work-seeker	10105007
510	Other not economically active	10105007
0	Not applicable	10105007
15	Employed	10105008
21	Unemployed	10105008
6	Discouraged work-seeker	10105008
219	Other not economically active	10105008
0	Not applicable	10105008
18	Employed	10105009
57	Unemployed	10105009
18	Discouraged work-seeker	10105009
282	Other not economically active	10105009
0	Not applicable	10105009
12	Employed	10105010
12	Unemployed	10105010
0	Discouraged work-seeker	10105010
465	Other not economically active	10105010
0	Not applicable	10105010
21	Employed	10105011
54	Unemployed	10105011
9	Discouraged work-seeker	10105011
465	Other not economically active	10105011
0	Not applicable	10105011
96	Employed	10105012
30	Unemployed	10105012
6	Discouraged work-seeker	10105012
348	Other not economically active	10105012
0	Not applicable	10105012
12	Employed	10202001
36	Unemployed	10202001
3	Discouraged work-seeker	10202001
288	Other not economically active	10202001
0	Not applicable	10202001
48	Employed	10202002
12	Unemployed	10202002
0	Discouraged work-seeker	10202002
282	Other not economically active	10202002
0	Not applicable	10202002
54	Employed	10202003
27	Unemployed	10202003
9	Discouraged work-seeker	10202003
390	Other not economically active	10202003
0	Not applicable	10202003
27	Employed	10202004
18	Unemployed	10202004
3	Discouraged work-seeker	10202004
372	Other not economically active	10202004
0	Not applicable	10202004
72	Employed	10202005
36	Unemployed	10202005
6	Discouraged work-seeker	10202005
387	Other not economically active	10202005
0	Not applicable	10202005
42	Employed	10202006
27	Unemployed	10202006
15	Discouraged work-seeker	10202006
606	Other not economically active	10202006
0	Not applicable	10202006
39	Employed	10202007
33	Unemployed	10202007
12	Discouraged work-seeker	10202007
708	Other not economically active	10202007
0	Not applicable	10202007
72	Employed	10202008
21	Unemployed	10202008
3	Discouraged work-seeker	10202008
285	Other not economically active	10202008
0	Not applicable	10202008
57	Employed	10202009
12	Unemployed	10202009
3	Discouraged work-seeker	10202009
363	Other not economically active	10202009
0	Not applicable	10202009
96	Employed	10202010
27	Unemployed	10202010
0	Discouraged work-seeker	10202010
429	Other not economically active	10202010
0	Not applicable	10202010
75	Employed	10202011
27	Unemployed	10202011
3	Discouraged work-seeker	10202011
486	Other not economically active	10202011
0	Not applicable	10202011
66	Employed	10202012
33	Unemployed	10202012
6	Discouraged work-seeker	10202012
294	Other not economically active	10202012
0	Not applicable	10202012
69	Employed	10203001
15	Unemployed	10203001
0	Discouraged work-seeker	10203001
459	Other not economically active	10203001
0	Not applicable	10203001
6	Employed	10203002
3	Unemployed	10203002
0	Discouraged work-seeker	10203002
204	Other not economically active	10203002
0	Not applicable	10203002
129	Employed	10203003
39	Unemployed	10203003
12	Discouraged work-seeker	10203003
444	Other not economically active	10203003
0	Not applicable	10203003
15	Employed	10203004
6	Unemployed	10203004
0	Discouraged work-seeker	10203004
564	Other not economically active	10203004
0	Not applicable	10203004
18	Employed	10203005
51	Unemployed	10203005
27	Discouraged work-seeker	10203005
408	Other not economically active	10203005
0	Not applicable	10203005
12	Employed	10203006
84	Unemployed	10203006
18	Discouraged work-seeker	10203006
174	Other not economically active	10203006
0	Not applicable	10203006
24	Employed	10203007
21	Unemployed	10203007
18	Discouraged work-seeker	10203007
477	Other not economically active	10203007
0	Not applicable	10203007
0	Employed	10203008
3	Unemployed	10203008
0	Discouraged work-seeker	10203008
78	Other not economically active	10203008
0	Not applicable	10203008
9	Employed	10203009
36	Unemployed	10203009
3	Discouraged work-seeker	10203009
291	Other not economically active	10203009
0	Not applicable	10203009
27	Employed	10203010
9	Unemployed	10203010
12	Discouraged work-seeker	10203010
537	Other not economically active	10203010
0	Not applicable	10203010
18	Employed	10203011
39	Unemployed	10203011
6	Discouraged work-seeker	10203011
576	Other not economically active	10203011
0	Not applicable	10203011
6	Employed	10203012
33	Unemployed	10203012
0	Discouraged work-seeker	10203012
249	Other not economically active	10203012
0	Not applicable	10203012
18	Employed	10203013
45	Unemployed	10203013
15	Discouraged work-seeker	10203013
360	Other not economically active	10203013
0	Not applicable	10203013
36	Employed	10203014
123	Unemployed	10203014
84	Discouraged work-seeker	10203014
603	Other not economically active	10203014
0	Not applicable	10203014
24	Employed	10203015
12	Unemployed	10203015
0	Discouraged work-seeker	10203015
507	Other not economically active	10203015
0	Not applicable	10203015
6	Employed	10203016
84	Unemployed	10203016
9	Discouraged work-seeker	10203016
255	Other not economically active	10203016
0	Not applicable	10203016
108	Employed	10203017
63	Unemployed	10203017
0	Discouraged work-seeker	10203017
318	Other not economically active	10203017
0	Not applicable	10203017
30	Employed	10203018
27	Unemployed	10203018
3	Discouraged work-seeker	10203018
288	Other not economically active	10203018
0	Not applicable	10203018
12	Employed	10203019
9	Unemployed	10203019
0	Discouraged work-seeker	10203019
180	Other not economically active	10203019
0	Not applicable	10203019
3	Employed	10203020
15	Unemployed	10203020
15	Discouraged work-seeker	10203020
150	Other not economically active	10203020
0	Not applicable	10203020
42	Employed	10203021
57	Unemployed	10203021
69	Discouraged work-seeker	10203021
483	Other not economically active	10203021
0	Not applicable	10203021
18	Employed	10203022
9	Unemployed	10203022
3	Discouraged work-seeker	10203022
339	Other not economically active	10203022
0	Not applicable	10203022
42	Employed	10203023
42	Unemployed	10203023
3	Discouraged work-seeker	10203023
387	Other not economically active	10203023
0	Not applicable	10203023
15	Employed	10203024
27	Unemployed	10203024
27	Discouraged work-seeker	10203024
291	Other not economically active	10203024
0	Not applicable	10203024
39	Employed	10203025
54	Unemployed	10203025
15	Discouraged work-seeker	10203025
354	Other not economically active	10203025
0	Not applicable	10203025
27	Employed	10203026
15	Unemployed	10203026
18	Discouraged work-seeker	10203026
507	Other not economically active	10203026
0	Not applicable	10203026
15	Employed	10203027
105	Unemployed	10203027
3	Discouraged work-seeker	10203027
273	Other not economically active	10203027
0	Not applicable	10203027
42	Employed	10203028
21	Unemployed	10203028
9	Discouraged work-seeker	10203028
258	Other not economically active	10203028
0	Not applicable	10203028
27	Employed	10203029
24	Unemployed	10203029
3	Discouraged work-seeker	10203029
357	Other not economically active	10203029
0	Not applicable	10203029
81	Employed	10203030
27	Unemployed	10203030
6	Discouraged work-seeker	10203030
471	Other not economically active	10203030
0	Not applicable	10203030
48	Employed	10203031
18	Unemployed	10203031
18	Discouraged work-seeker	10203031
363	Other not economically active	10203031
0	Not applicable	10203031
63	Employed	10204001
75	Unemployed	10204001
21	Discouraged work-seeker	10204001
579	Other not economically active	10204001
0	Not applicable	10204001
24	Employed	10204002
72	Unemployed	10204002
12	Discouraged work-seeker	10204002
228	Other not economically active	10204002
0	Not applicable	10204002
42	Employed	10204003
15	Unemployed	10204003
12	Discouraged work-seeker	10204003
447	Other not economically active	10204003
0	Not applicable	10204003
24	Employed	10204004
27	Unemployed	10204004
3	Discouraged work-seeker	10204004
378	Other not economically active	10204004
0	Not applicable	10204004
30	Employed	10204005
33	Unemployed	10204005
3	Discouraged work-seeker	10204005
243	Other not economically active	10204005
0	Not applicable	10204005
12	Employed	10204006
3	Unemployed	10204006
27	Discouraged work-seeker	10204006
216	Other not economically active	10204006
0	Not applicable	10204006
6	Employed	10204007
3	Unemployed	10204007
0	Discouraged work-seeker	10204007
153	Other not economically active	10204007
0	Not applicable	10204007
3	Employed	10204008
0	Unemployed	10204008
0	Discouraged work-seeker	10204008
21	Other not economically active	10204008
0	Not applicable	10204008
0	Employed	10204009
0	Unemployed	10204009
0	Discouraged work-seeker	10204009
12	Other not economically active	10204009
0	Not applicable	10204009
3	Employed	10204010
6	Unemployed	10204010
12	Discouraged work-seeker	10204010
75	Other not economically active	10204010
0	Not applicable	10204010
33	Employed	10204011
6	Unemployed	10204011
3	Discouraged work-seeker	10204011
138	Other not economically active	10204011
0	Not applicable	10204011
9	Employed	10204012
48	Unemployed	10204012
3	Discouraged work-seeker	10204012
270	Other not economically active	10204012
0	Not applicable	10204012
6	Employed	10204013
6	Unemployed	10204013
6	Discouraged work-seeker	10204013
96	Other not economically active	10204013
0	Not applicable	10204013
9	Employed	10204014
51	Unemployed	10204014
6	Discouraged work-seeker	10204014
174	Other not economically active	10204014
0	Not applicable	10204014
24	Employed	10204015
75	Unemployed	10204015
6	Discouraged work-seeker	10204015
405	Other not economically active	10204015
0	Not applicable	10204015
15	Employed	10204016
30	Unemployed	10204016
30	Discouraged work-seeker	10204016
435	Other not economically active	10204016
0	Not applicable	10204016
15	Employed	10204017
15	Unemployed	10204017
0	Discouraged work-seeker	10204017
276	Other not economically active	10204017
0	Not applicable	10204017
42	Employed	10204018
45	Unemployed	10204018
36	Discouraged work-seeker	10204018
384	Other not economically active	10204018
0	Not applicable	10204018
60	Employed	10204019
24	Unemployed	10204019
21	Discouraged work-seeker	10204019
477	Other not economically active	10204019
0	Not applicable	10204019
72	Employed	10204020
18	Unemployed	10204020
6	Discouraged work-seeker	10204020
387	Other not economically active	10204020
0	Not applicable	10204020
27	Employed	10204021
36	Unemployed	10204021
9	Discouraged work-seeker	10204021
354	Other not economically active	10204021
0	Not applicable	10204021
21	Employed	10204022
12	Unemployed	10204022
3	Discouraged work-seeker	10204022
183	Other not economically active	10204022
0	Not applicable	10204022
21	Employed	10205001
48	Unemployed	10205001
18	Discouraged work-seeker	10205001
426	Other not economically active	10205001
0	Not applicable	10205001
27	Employed	10205002
24	Unemployed	10205002
3	Discouraged work-seeker	10205002
411	Other not economically active	10205002
0	Not applicable	10205002
81	Employed	10205003
27	Unemployed	10205003
0	Discouraged work-seeker	10205003
447	Other not economically active	10205003
0	Not applicable	10205003
75	Employed	10205004
6	Unemployed	10205004
0	Discouraged work-seeker	10205004
522	Other not economically active	10205004
0	Not applicable	10205004
66	Employed	10205005
15	Unemployed	10205005
3	Discouraged work-seeker	10205005
561	Other not economically active	10205005
0	Not applicable	10205005
9	Employed	10205006
9	Unemployed	10205006
6	Discouraged work-seeker	10205006
192	Other not economically active	10205006
0	Not applicable	10205006
9	Employed	10205007
6	Unemployed	10205007
0	Discouraged work-seeker	10205007
255	Other not economically active	10205007
0	Not applicable	10205007
12	Employed	10205008
30	Unemployed	10205008
9	Discouraged work-seeker	10205008
441	Other not economically active	10205008
0	Not applicable	10205008
12	Employed	10205009
18	Unemployed	10205009
0	Discouraged work-seeker	10205009
390	Other not economically active	10205009
0	Not applicable	10205009
15	Employed	10205010
36	Unemployed	10205010
3	Discouraged work-seeker	10205010
417	Other not economically active	10205010
0	Not applicable	10205010
6	Employed	10205011
9	Unemployed	10205011
12	Discouraged work-seeker	10205011
309	Other not economically active	10205011
0	Not applicable	10205011
15	Employed	10205012
15	Unemployed	10205012
6	Discouraged work-seeker	10205012
357	Other not economically active	10205012
0	Not applicable	10205012
18	Employed	10205013
102	Unemployed	10205013
6	Discouraged work-seeker	10205013
312	Other not economically active	10205013
0	Not applicable	10205013
15	Employed	10205014
24	Unemployed	10205014
0	Discouraged work-seeker	10205014
303	Other not economically active	10205014
0	Not applicable	10205014
24	Employed	10205015
18	Unemployed	10205015
0	Discouraged work-seeker	10205015
483	Other not economically active	10205015
0	Not applicable	10205015
18	Employed	10205016
36	Unemployed	10205016
0	Discouraged work-seeker	10205016
273	Other not economically active	10205016
0	Not applicable	10205016
0	Employed	10205017
21	Unemployed	10205017
0	Discouraged work-seeker	10205017
156	Other not economically active	10205017
0	Not applicable	10205017
84	Employed	10205018
15	Unemployed	10205018
0	Discouraged work-seeker	10205018
360	Other not economically active	10205018
0	Not applicable	10205018
60	Employed	10205019
9	Unemployed	10205019
0	Discouraged work-seeker	10205019
309	Other not economically active	10205019
0	Not applicable	10205019
54	Employed	10205020
39	Unemployed	10205020
3	Discouraged work-seeker	10205020
417	Other not economically active	10205020
0	Not applicable	10205020
42	Employed	10205021
78	Unemployed	10205021
36	Discouraged work-seeker	10205021
675	Other not economically active	10205021
0	Not applicable	10205021
18	Employed	10206001
6	Unemployed	10206001
3	Discouraged work-seeker	10206001
285	Other not economically active	10206001
0	Not applicable	10206001
6	Employed	10206002
60	Unemployed	10206002
9	Discouraged work-seeker	10206002
345	Other not economically active	10206002
0	Not applicable	10206002
15	Employed	10206003
42	Unemployed	10206003
12	Discouraged work-seeker	10206003
429	Other not economically active	10206003
0	Not applicable	10206003
60	Employed	10206004
27	Unemployed	10206004
15	Discouraged work-seeker	10206004
357	Other not economically active	10206004
0	Not applicable	10206004
42	Employed	10206005
12	Unemployed	10206005
0	Discouraged work-seeker	10206005
252	Other not economically active	10206005
0	Not applicable	10206005
117	Employed	10206006
30	Unemployed	10206006
3	Discouraged work-seeker	10206006
408	Other not economically active	10206006
0	Not applicable	10206006
78	Employed	10206007
27	Unemployed	10206007
0	Discouraged work-seeker	10206007
399	Other not economically active	10206007
0	Not applicable	10206007
69	Employed	10206008
9	Unemployed	10206008
3	Discouraged work-seeker	10206008
363	Other not economically active	10206008
0	Not applicable	10206008
15	Employed	10206009
30	Unemployed	10206009
3	Discouraged work-seeker	10206009
417	Other not economically active	10206009
0	Not applicable	10206009
3	Employed	10206010
15	Unemployed	10206010
9	Discouraged work-seeker	10206010
276	Other not economically active	10206010
0	Not applicable	10206010
57	Employed	10206011
15	Unemployed	10206011
0	Discouraged work-seeker	10206011
240	Other not economically active	10206011
0	Not applicable	10206011
150	Employed	10206012
33	Unemployed	10206012
9	Discouraged work-seeker	10206012
498	Other not economically active	10206012
0	Not applicable	10206012
39	Employed	10304001
12	Unemployed	10304001
6	Discouraged work-seeker	10304001
273	Other not economically active	10304001
0	Not applicable	10304001
51	Employed	10304002
33	Unemployed	10304002
0	Discouraged work-seeker	10304002
360	Other not economically active	10304002
0	Not applicable	10304002
45	Employed	10304003
60	Unemployed	10304003
0	Discouraged work-seeker	10304003
261	Other not economically active	10304003
0	Not applicable	10304003
6	Employed	10304004
6	Unemployed	10304004
0	Discouraged work-seeker	10304004
204	Other not economically active	10304004
0	Not applicable	10304004
33	Employed	10304005
27	Unemployed	10304005
9	Discouraged work-seeker	10304005
423	Other not economically active	10304005
0	Not applicable	10304005
36	Employed	10301001
72	Unemployed	10301001
15	Discouraged work-seeker	10301001
315	Other not economically active	10301001
0	Not applicable	10301001
33	Employed	10301002
57	Unemployed	10301002
30	Discouraged work-seeker	10301002
351	Other not economically active	10301002
0	Not applicable	10301002
27	Employed	10301003
33	Unemployed	10301003
21	Discouraged work-seeker	10301003
432	Other not economically active	10301003
0	Not applicable	10301003
21	Employed	10301004
36	Unemployed	10301004
3	Discouraged work-seeker	10301004
219	Other not economically active	10301004
0	Not applicable	10301004
75	Employed	10301005
21	Unemployed	10301005
15	Discouraged work-seeker	10301005
411	Other not economically active	10301005
0	Not applicable	10301005
39	Employed	10301006
48	Unemployed	10301006
9	Discouraged work-seeker	10301006
234	Other not economically active	10301006
0	Not applicable	10301006
36	Employed	10301007
33	Unemployed	10301007
3	Discouraged work-seeker	10301007
336	Other not economically active	10301007
0	Not applicable	10301007
9	Employed	10301008
60	Unemployed	10301008
12	Discouraged work-seeker	10301008
141	Other not economically active	10301008
0	Not applicable	10301008
39	Employed	10301009
3	Unemployed	10301009
3	Discouraged work-seeker	10301009
351	Other not economically active	10301009
0	Not applicable	10301009
48	Employed	10301010
9	Unemployed	10301010
0	Discouraged work-seeker	10301010
231	Other not economically active	10301010
0	Not applicable	10301010
12	Employed	10301011
9	Unemployed	10301011
12	Discouraged work-seeker	10301011
198	Other not economically active	10301011
0	Not applicable	10301011
21	Employed	10301012
21	Unemployed	10301012
36	Discouraged work-seeker	10301012
318	Other not economically active	10301012
0	Not applicable	10301012
30	Employed	10301013
54	Unemployed	10301013
36	Discouraged work-seeker	10301013
591	Other not economically active	10301013
0	Not applicable	10301013
6	Employed	10302001
30	Unemployed	10302001
3	Discouraged work-seeker	10302001
114	Other not economically active	10302001
0	Not applicable	10302001
12	Employed	10302002
66	Unemployed	10302002
0	Discouraged work-seeker	10302002
219	Other not economically active	10302002
0	Not applicable	10302002
6	Employed	10302003
3	Unemployed	10302003
0	Discouraged work-seeker	10302003
78	Other not economically active	10302003
0	Not applicable	10302003
24	Employed	10302004
36	Unemployed	10302004
9	Discouraged work-seeker	10302004
267	Other not economically active	10302004
0	Not applicable	10302004
18	Employed	10302005
36	Unemployed	10302005
9	Discouraged work-seeker	10302005
189	Other not economically active	10302005
0	Not applicable	10302005
36	Employed	10302006
36	Unemployed	10302006
0	Discouraged work-seeker	10302006
189	Other not economically active	10302006
0	Not applicable	10302006
6	Employed	10302007
12	Unemployed	10302007
0	Discouraged work-seeker	10302007
93	Other not economically active	10302007
0	Not applicable	10302007
9	Employed	10302008
33	Unemployed	10302008
21	Discouraged work-seeker	10302008
402	Other not economically active	10302008
0	Not applicable	10302008
6	Employed	10302009
6	Unemployed	10302009
0	Discouraged work-seeker	10302009
45	Other not economically active	10302009
0	Not applicable	10302009
6	Employed	10302010
36	Unemployed	10302010
3	Discouraged work-seeker	10302010
162	Other not economically active	10302010
0	Not applicable	10302010
60	Employed	10302011
48	Unemployed	10302011
21	Discouraged work-seeker	10302011
252	Other not economically active	10302011
0	Not applicable	10302011
12	Employed	10302012
54	Unemployed	10302012
3	Discouraged work-seeker	10302012
120	Other not economically active	10302012
0	Not applicable	10302012
6	Employed	10302013
12	Unemployed	10302013
0	Discouraged work-seeker	10302013
87	Other not economically active	10302013
0	Not applicable	10302013
30	Employed	10303001
21	Unemployed	10303001
54	Discouraged work-seeker	10303001
222	Other not economically active	10303001
0	Not applicable	10303001
24	Employed	10303002
21	Unemployed	10303002
9	Discouraged work-seeker	10303002
342	Other not economically active	10303002
0	Not applicable	10303002
24	Employed	10303003
57	Unemployed	10303003
18	Discouraged work-seeker	10303003
252	Other not economically active	10303003
0	Not applicable	10303003
12	Employed	10303004
9	Unemployed	10303004
18	Discouraged work-seeker	10303004
252	Other not economically active	10303004
0	Not applicable	10303004
27	Employed	10303005
24	Unemployed	10303005
0	Discouraged work-seeker	10303005
210	Other not economically active	10303005
0	Not applicable	10303005
6	Employed	10401001
9	Unemployed	10401001
6	Discouraged work-seeker	10401001
345	Other not economically active	10401001
0	Not applicable	10401001
21	Employed	10401002
39	Unemployed	10401002
24	Discouraged work-seeker	10401002
312	Other not economically active	10401002
0	Not applicable	10401002
15	Employed	10401003
27	Unemployed	10401003
6	Discouraged work-seeker	10401003
249	Other not economically active	10401003
0	Not applicable	10401003
39	Employed	10401004
0	Unemployed	10401004
6	Discouraged work-seeker	10401004
201	Other not economically active	10401004
0	Not applicable	10401004
33	Employed	10402001
12	Unemployed	10402001
3	Discouraged work-seeker	10402001
225	Other not economically active	10402001
0	Not applicable	10402001
27	Employed	10402002
69	Unemployed	10402002
51	Discouraged work-seeker	10402002
213	Other not economically active	10402002
0	Not applicable	10402002
15	Employed	10402003
3	Unemployed	10402003
0	Discouraged work-seeker	10402003
123	Other not economically active	10402003
0	Not applicable	10402003
18	Employed	10402004
15	Unemployed	10402004
57	Discouraged work-seeker	10402004
396	Other not economically active	10402004
0	Not applicable	10402004
6	Employed	10402005
9	Unemployed	10402005
21	Discouraged work-seeker	10402005
222	Other not economically active	10402005
0	Not applicable	10402005
24	Employed	10402006
36	Unemployed	10402006
3	Discouraged work-seeker	10402006
276	Other not economically active	10402006
0	Not applicable	10402006
18	Employed	10402007
42	Unemployed	10402007
0	Discouraged work-seeker	10402007
213	Other not economically active	10402007
0	Not applicable	10402007
27	Employed	10402008
39	Unemployed	10402008
12	Discouraged work-seeker	10402008
273	Other not economically active	10402008
0	Not applicable	10402008
21	Employed	10403001
42	Unemployed	10403001
3	Discouraged work-seeker	10403001
234	Other not economically active	10403001
0	Not applicable	10403001
15	Employed	10403002
15	Unemployed	10403002
6	Discouraged work-seeker	10403002
258	Other not economically active	10403002
0	Not applicable	10403002
42	Employed	10403003
60	Unemployed	10403003
9	Discouraged work-seeker	10403003
327	Other not economically active	10403003
0	Not applicable	10403003
24	Employed	10403004
6	Unemployed	10403004
18	Discouraged work-seeker	10403004
141	Other not economically active	10403004
0	Not applicable	10403004
24	Employed	10403005
18	Unemployed	10403005
0	Discouraged work-seeker	10403005
162	Other not economically active	10403005
0	Not applicable	10403005
15	Employed	10403006
12	Unemployed	10403006
3	Discouraged work-seeker	10403006
219	Other not economically active	10403006
0	Not applicable	10403006
21	Employed	10403007
21	Unemployed	10403007
6	Discouraged work-seeker	10403007
132	Other not economically active	10403007
0	Not applicable	10403007
18	Employed	10403008
6	Unemployed	10403008
15	Discouraged work-seeker	10403008
156	Other not economically active	10403008
0	Not applicable	10403008
12	Employed	10403009
39	Unemployed	10403009
6	Discouraged work-seeker	10403009
237	Other not economically active	10403009
0	Not applicable	10403009
15	Employed	10403010
6	Unemployed	10403010
0	Discouraged work-seeker	10403010
75	Other not economically active	10403010
0	Not applicable	10403010
27	Employed	10403011
27	Unemployed	10403011
12	Discouraged work-seeker	10403011
207	Other not economically active	10403011
0	Not applicable	10403011
54	Employed	10403012
9	Unemployed	10403012
3	Discouraged work-seeker	10403012
150	Other not economically active	10403012
0	Not applicable	10403012
30	Employed	10403013
39	Unemployed	10403013
42	Discouraged work-seeker	10403013
285	Other not economically active	10403013
0	Not applicable	10403013
33	Employed	10403014
42	Unemployed	10403014
9	Discouraged work-seeker	10403014
471	Other not economically active	10403014
0	Not applicable	10403014
9	Employed	10404001
39	Unemployed	10404001
15	Discouraged work-seeker	10404001
396	Other not economically active	10404001
0	Not applicable	10404001
12	Employed	10404002
6	Unemployed	10404002
3	Discouraged work-seeker	10404002
102	Other not economically active	10404002
0	Not applicable	10404002
6	Employed	10404003
6	Unemployed	10404003
0	Discouraged work-seeker	10404003
216	Other not economically active	10404003
0	Not applicable	10404003
24	Employed	10404004
24	Unemployed	10404004
15	Discouraged work-seeker	10404004
285	Other not economically active	10404004
0	Not applicable	10404004
12	Employed	10404005
15	Unemployed	10404005
0	Discouraged work-seeker	10404005
282	Other not economically active	10404005
0	Not applicable	10404005
30	Employed	10404006
69	Unemployed	10404006
33	Discouraged work-seeker	10404006
480	Other not economically active	10404006
0	Not applicable	10404006
12	Employed	10404007
39	Unemployed	10404007
27	Discouraged work-seeker	10404007
483	Other not economically active	10404007
0	Not applicable	10404007
9	Employed	10404008
48	Unemployed	10404008
24	Discouraged work-seeker	10404008
360	Other not economically active	10404008
0	Not applicable	10404008
9	Employed	10404009
24	Unemployed	10404009
9	Discouraged work-seeker	10404009
279	Other not economically active	10404009
0	Not applicable	10404009
6	Employed	10404010
24	Unemployed	10404010
30	Discouraged work-seeker	10404010
120	Other not economically active	10404010
0	Not applicable	10404010
21	Employed	10404011
36	Unemployed	10404011
3	Discouraged work-seeker	10404011
366	Other not economically active	10404011
0	Not applicable	10404011
12	Employed	10404012
21	Unemployed	10404012
9	Discouraged work-seeker	10404012
159	Other not economically active	10404012
0	Not applicable	10404012
9	Employed	10404013
27	Unemployed	10404013
15	Discouraged work-seeker	10404013
339	Other not economically active	10404013
0	Not applicable	10404013
24	Employed	10404014
51	Unemployed	10404014
9	Discouraged work-seeker	10404014
432	Other not economically active	10404014
0	Not applicable	10404014
9	Employed	10404015
24	Unemployed	10404015
3	Discouraged work-seeker	10404015
270	Other not economically active	10404015
0	Not applicable	10404015
33	Employed	10404016
90	Unemployed	10404016
30	Discouraged work-seeker	10404016
579	Other not economically active	10404016
0	Not applicable	10404016
18	Employed	10404017
93	Unemployed	10404017
12	Discouraged work-seeker	10404017
396	Other not economically active	10404017
0	Not applicable	10404017
12	Employed	10404018
6	Unemployed	10404018
0	Discouraged work-seeker	10404018
204	Other not economically active	10404018
0	Not applicable	10404018
57	Employed	10404019
12	Unemployed	10404019
0	Discouraged work-seeker	10404019
306	Other not economically active	10404019
0	Not applicable	10404019
18	Employed	10404020
69	Unemployed	10404020
24	Discouraged work-seeker	10404020
372	Other not economically active	10404020
0	Not applicable	10404020
12	Employed	10404021
36	Unemployed	10404021
15	Discouraged work-seeker	10404021
312	Other not economically active	10404021
0	Not applicable	10404021
75	Employed	10404022
21	Unemployed	10404022
3	Discouraged work-seeker	10404022
309	Other not economically active	10404022
0	Not applicable	10404022
45	Employed	10404023
48	Unemployed	10404023
9	Discouraged work-seeker	10404023
534	Other not economically active	10404023
0	Not applicable	10404023
60	Employed	10404024
27	Unemployed	10404024
6	Discouraged work-seeker	10404024
333	Other not economically active	10404024
0	Not applicable	10404024
57	Employed	10404025
30	Unemployed	10404025
18	Discouraged work-seeker	10404025
411	Other not economically active	10404025
0	Not applicable	10404025
36	Employed	10405001
21	Unemployed	10405001
21	Discouraged work-seeker	10405001
291	Other not economically active	10405001
0	Not applicable	10405001
18	Employed	10405002
12	Unemployed	10405002
18	Discouraged work-seeker	10405002
282	Other not economically active	10405002
0	Not applicable	10405002
15	Employed	10405003
12	Unemployed	10405003
3	Discouraged work-seeker	10405003
462	Other not economically active	10405003
0	Not applicable	10405003
15	Employed	10405004
48	Unemployed	10405004
3	Discouraged work-seeker	10405004
180	Other not economically active	10405004
0	Not applicable	10405004
6	Employed	10405005
21	Unemployed	10405005
24	Discouraged work-seeker	10405005
318	Other not economically active	10405005
0	Not applicable	10405005
48	Employed	10405006
51	Unemployed	10405006
24	Discouraged work-seeker	10405006
543	Other not economically active	10405006
0	Not applicable	10405006
15	Employed	10405007
12	Unemployed	10405007
3	Discouraged work-seeker	10405007
423	Other not economically active	10405007
0	Not applicable	10405007
15	Employed	10405008
75	Unemployed	10405008
15	Discouraged work-seeker	10405008
498	Other not economically active	10405008
0	Not applicable	10405008
9	Employed	10405009
30	Unemployed	10405009
33	Discouraged work-seeker	10405009
297	Other not economically active	10405009
0	Not applicable	10405009
9	Employed	10405010
30	Unemployed	10405010
48	Discouraged work-seeker	10405010
351	Other not economically active	10405010
0	Not applicable	10405010
27	Employed	10405011
48	Unemployed	10405011
45	Discouraged work-seeker	10405011
567	Other not economically active	10405011
0	Not applicable	10405011
27	Employed	10405012
36	Unemployed	10405012
3	Discouraged work-seeker	10405012
318	Other not economically active	10405012
0	Not applicable	10405012
15	Employed	10405013
6	Unemployed	10405013
0	Discouraged work-seeker	10405013
399	Other not economically active	10405013
0	Not applicable	10405013
21	Employed	10407001
24	Unemployed	10407001
21	Discouraged work-seeker	10407001
369	Other not economically active	10407001
0	Not applicable	10407001
15	Employed	10407002
45	Unemployed	10407002
3	Discouraged work-seeker	10407002
312	Other not economically active	10407002
0	Not applicable	10407002
9	Employed	10407003
39	Unemployed	10407003
3	Discouraged work-seeker	10407003
99	Other not economically active	10407003
0	Not applicable	10407003
6	Employed	10407004
36	Unemployed	10407004
6	Discouraged work-seeker	10407004
303	Other not economically active	10407004
0	Not applicable	10407004
3	Employed	10407005
42	Unemployed	10407005
6	Discouraged work-seeker	10407005
201	Other not economically active	10407005
0	Not applicable	10407005
3	Employed	10407006
66	Unemployed	10407006
6	Discouraged work-seeker	10407006
108	Other not economically active	10407006
0	Not applicable	10407006
39	Employed	10407007
81	Unemployed	10407007
21	Discouraged work-seeker	10407007
429	Other not economically active	10407007
0	Not applicable	10407007
18	Employed	10408001
18	Unemployed	10408001
6	Discouraged work-seeker	10408001
195	Other not economically active	10408001
0	Not applicable	10408001
21	Employed	10408002
6	Unemployed	10408002
12	Discouraged work-seeker	10408002
168	Other not economically active	10408002
0	Not applicable	10408002
12	Employed	10408003
24	Unemployed	10408003
3	Discouraged work-seeker	10408003
234	Other not economically active	10408003
0	Not applicable	10408003
24	Employed	10408004
24	Unemployed	10408004
0	Discouraged work-seeker	10408004
186	Other not economically active	10408004
0	Not applicable	10408004
9	Employed	10408005
39	Unemployed	10408005
6	Discouraged work-seeker	10408005
213	Other not economically active	10408005
0	Not applicable	10408005
24	Employed	10408006
84	Unemployed	10408006
15	Discouraged work-seeker	10408006
327	Other not economically active	10408006
0	Not applicable	10408006
15	Employed	10408007
93	Unemployed	10408007
18	Discouraged work-seeker	10408007
537	Other not economically active	10408007
0	Not applicable	10408007
12	Employed	10408008
21	Unemployed	10408008
9	Discouraged work-seeker	10408008
264	Other not economically active	10408008
0	Not applicable	10408008
9	Employed	10408009
36	Unemployed	10408009
3	Discouraged work-seeker	10408009
294	Other not economically active	10408009
0	Not applicable	10408009
12	Employed	10408010
15	Unemployed	10408010
0	Discouraged work-seeker	10408010
135	Other not economically active	10408010
0	Not applicable	10408010
18	Employed	10501001
24	Unemployed	10501001
15	Discouraged work-seeker	10501001
132	Other not economically active	10501001
0	Not applicable	10501001
0	Employed	10501002
0	Unemployed	10501002
0	Discouraged work-seeker	10501002
42	Other not economically active	10501002
0	Not applicable	10501002
0	Employed	10501003
0	Unemployed	10501003
0	Discouraged work-seeker	10501003
9	Other not economically active	10501003
0	Not applicable	10501003
27	Employed	10501004
6	Unemployed	10501004
9	Discouraged work-seeker	10501004
150	Other not economically active	10501004
0	Not applicable	10501004
21	Employed	10502001
24	Unemployed	10502001
3	Discouraged work-seeker	10502001
120	Other not economically active	10502001
0	Not applicable	10502001
3	Employed	10502002
9	Unemployed	10502002
0	Discouraged work-seeker	10502002
105	Other not economically active	10502002
0	Not applicable	10502002
9	Employed	10502003
9	Unemployed	10502003
12	Discouraged work-seeker	10502003
132	Other not economically active	10502003
0	Not applicable	10502003
18	Employed	10502004
6	Unemployed	10502004
21	Discouraged work-seeker	10502004
228	Other not economically active	10502004
0	Not applicable	10502004
36	Employed	10503001
36	Unemployed	10503001
15	Discouraged work-seeker	10503001
354	Other not economically active	10503001
0	Not applicable	10503001
33	Employed	10503002
12	Unemployed	10503002
39	Discouraged work-seeker	10503002
210	Other not economically active	10503002
0	Not applicable	10503002
18	Employed	10503003
42	Unemployed	10503003
30	Discouraged work-seeker	10503003
357	Other not economically active	10503003
0	Not applicable	10503003
12	Employed	10503004
9	Unemployed	10503004
12	Discouraged work-seeker	10503004
261	Other not economically active	10503004
0	Not applicable	10503004
12	Employed	10503005
51	Unemployed	10503005
12	Discouraged work-seeker	10503005
324	Other not economically active	10503005
0	Not applicable	10503005
6	Employed	10503006
39	Unemployed	10503006
54	Discouraged work-seeker	10503006
234	Other not economically active	10503006
0	Not applicable	10503006
33	Employed	10503007
33	Unemployed	10503007
30	Discouraged work-seeker	10503007
414	Other not economically active	10503007
0	Not applicable	10503007
48	Employed	19100001
30	Unemployed	19100001
0	Discouraged work-seeker	19100001
858	Other not economically active	19100001
0	Not applicable	19100001
60	Employed	19100002
36	Unemployed	19100002
0	Discouraged work-seeker	19100002
756	Other not economically active	19100002
0	Not applicable	19100002
78	Employed	19100003
27	Unemployed	19100003
3	Discouraged work-seeker	19100003
999	Other not economically active	19100003
0	Not applicable	19100003
81	Employed	19100004
111	Unemployed	19100004
18	Discouraged work-seeker	19100004
1161	Other not economically active	19100004
0	Not applicable	19100004
75	Employed	19100005
45	Unemployed	19100005
6	Discouraged work-seeker	19100005
834	Other not economically active	19100005
0	Not applicable	19100005
60	Employed	19100006
114	Unemployed	19100006
27	Discouraged work-seeker	19100006
1023	Other not economically active	19100006
0	Not applicable	19100006
90	Employed	19100007
90	Unemployed	19100007
48	Discouraged work-seeker	19100007
1329	Other not economically active	19100007
0	Not applicable	19100007
99	Employed	19100008
78	Unemployed	19100008
18	Discouraged work-seeker	19100008
1023	Other not economically active	19100008
0	Not applicable	19100008
24	Employed	19100009
90	Unemployed	19100009
18	Discouraged work-seeker	19100009
1095	Other not economically active	19100009
0	Not applicable	19100009
48	Employed	19100010
54	Unemployed	19100010
6	Discouraged work-seeker	19100010
999	Other not economically active	19100010
0	Not applicable	19100010
114	Employed	19100011
126	Unemployed	19100011
48	Discouraged work-seeker	19100011
1836	Other not economically active	19100011
0	Not applicable	19100011
60	Employed	19100012
177	Unemployed	19100012
57	Discouraged work-seeker	19100012
1662	Other not economically active	19100012
0	Not applicable	19100012
93	Employed	19100013
315	Unemployed	19100013
69	Discouraged work-seeker	19100013
2091	Other not economically active	19100013
0	Not applicable	19100013
90	Employed	19100014
183	Unemployed	19100014
36	Discouraged work-seeker	19100014
1623	Other not economically active	19100014
0	Not applicable	19100014
69	Employed	19100015
24	Unemployed	19100015
9	Discouraged work-seeker	19100015
768	Other not economically active	19100015
0	Not applicable	19100015
108	Employed	19100016
234	Unemployed	19100016
36	Discouraged work-seeker	19100016
2022	Other not economically active	19100016
0	Not applicable	19100016
132	Employed	19100017
201	Unemployed	19100017
51	Discouraged work-seeker	19100017
1815	Other not economically active	19100017
0	Not applicable	19100017
48	Employed	19100018
105	Unemployed	19100018
30	Discouraged work-seeker	19100018
1056	Other not economically active	19100018
0	Not applicable	19100018
138	Employed	19100019
324	Unemployed	19100019
114	Discouraged work-seeker	19100019
2346	Other not economically active	19100019
0	Not applicable	19100019
111	Employed	19100020
363	Unemployed	19100020
54	Discouraged work-seeker	19100020
1659	Other not economically active	19100020
0	Not applicable	19100020
72	Employed	19100021
27	Unemployed	19100021
0	Discouraged work-seeker	19100021
660	Other not economically active	19100021
0	Not applicable	19100021
78	Employed	19100022
99	Unemployed	19100022
54	Discouraged work-seeker	19100022
1302	Other not economically active	19100022
0	Not applicable	19100022
99	Employed	19100023
54	Unemployed	19100023
3	Discouraged work-seeker	19100023
870	Other not economically active	19100023
0	Not applicable	19100023
57	Employed	19100024
201	Unemployed	19100024
66	Discouraged work-seeker	19100024
1074	Other not economically active	19100024
0	Not applicable	19100024
135	Employed	19100025
252	Unemployed	19100025
84	Discouraged work-seeker	19100025
1698	Other not economically active	19100025
0	Not applicable	19100025
72	Employed	19100026
126	Unemployed	19100026
12	Discouraged work-seeker	19100026
1161	Other not economically active	19100026
0	Not applicable	19100026
60	Employed	19100027
51	Unemployed	19100027
6	Discouraged work-seeker	19100027
906	Other not economically active	19100027
0	Not applicable	19100027
54	Employed	19100028
147	Unemployed	19100028
42	Discouraged work-seeker	19100028
1428	Other not economically active	19100028
0	Not applicable	19100028
66	Employed	19100029
231	Unemployed	19100029
102	Discouraged work-seeker	19100029
2010	Other not economically active	19100029
0	Not applicable	19100029
90	Employed	19100030
201	Unemployed	19100030
54	Discouraged work-seeker	19100030
1485	Other not economically active	19100030
0	Not applicable	19100030
87	Employed	19100031
240	Unemployed	19100031
99	Discouraged work-seeker	19100031
1575	Other not economically active	19100031
0	Not applicable	19100031
75	Employed	19100032
201	Unemployed	19100032
57	Discouraged work-seeker	19100032
1557	Other not economically active	19100032
0	Not applicable	19100032
63	Employed	19100033
198	Unemployed	19100033
33	Discouraged work-seeker	19100033
1599	Other not economically active	19100033
0	Not applicable	19100033
72	Employed	19100034
246	Unemployed	19100034
57	Discouraged work-seeker	19100034
1236	Other not economically active	19100034
0	Not applicable	19100034
45	Employed	19100035
204	Unemployed	19100035
39	Discouraged work-seeker	19100035
1605	Other not economically active	19100035
0	Not applicable	19100035
39	Employed	19100036
165	Unemployed	19100036
45	Discouraged work-seeker	19100036
1416	Other not economically active	19100036
0	Not applicable	19100036
30	Employed	19100037
144	Unemployed	19100037
30	Discouraged work-seeker	19100037
855	Other not economically active	19100037
0	Not applicable	19100037
15	Employed	19100038
174	Unemployed	19100038
12	Discouraged work-seeker	19100038
699	Other not economically active	19100038
0	Not applicable	19100038
42	Employed	19100039
132	Unemployed	19100039
36	Discouraged work-seeker	19100039
1005	Other not economically active	19100039
0	Not applicable	19100039
42	Employed	19100040
165	Unemployed	19100040
18	Discouraged work-seeker	19100040
1029	Other not economically active	19100040
0	Not applicable	19100040
18	Employed	19100041
105	Unemployed	19100041
18	Discouraged work-seeker	19100041
753	Other not economically active	19100041
0	Not applicable	19100041
48	Employed	19100042
129	Unemployed	19100042
45	Discouraged work-seeker	19100042
1173	Other not economically active	19100042
0	Not applicable	19100042
87	Employed	19100043
150	Unemployed	19100043
33	Discouraged work-seeker	19100043
1827	Other not economically active	19100043
0	Not applicable	19100043
75	Employed	19100044
249	Unemployed	19100044
42	Discouraged work-seeker	19100044
1206	Other not economically active	19100044
0	Not applicable	19100044
63	Employed	19100045
387	Unemployed	19100045
51	Discouraged work-seeker	19100045
1440	Other not economically active	19100045
0	Not applicable	19100045
45	Employed	19100046
183	Unemployed	19100046
87	Discouraged work-seeker	19100046
1449	Other not economically active	19100046
0	Not applicable	19100046
51	Employed	19100047
366	Unemployed	19100047
117	Discouraged work-seeker	19100047
1515	Other not economically active	19100047
0	Not applicable	19100047
54	Employed	19100048
48	Unemployed	19100048
39	Discouraged work-seeker	19100048
1110	Other not economically active	19100048
0	Not applicable	19100048
51	Employed	19100049
183	Unemployed	19100049
66	Discouraged work-seeker	19100049
1473	Other not economically active	19100049
0	Not applicable	19100049
84	Employed	19100050
303	Unemployed	19100050
84	Discouraged work-seeker	19100050
1350	Other not economically active	19100050
0	Not applicable	19100050
21	Employed	19100051
138	Unemployed	19100051
6	Discouraged work-seeker	19100051
930	Other not economically active	19100051
0	Not applicable	19100051
21	Employed	19100052
168	Unemployed	19100052
30	Discouraged work-seeker	19100052
933	Other not economically active	19100052
0	Not applicable	19100052
45	Employed	19100053
45	Unemployed	19100053
6	Discouraged work-seeker	19100053
1008	Other not economically active	19100053
0	Not applicable	19100053
36	Employed	19100054
12	Unemployed	19100054
3	Discouraged work-seeker	19100054
381	Other not economically active	19100054
0	Not applicable	19100054
63	Employed	19100055
114	Unemployed	19100055
18	Discouraged work-seeker	19100055
1056	Other not economically active	19100055
0	Not applicable	19100055
45	Employed	19100056
96	Unemployed	19100056
12	Discouraged work-seeker	19100056
1305	Other not economically active	19100056
0	Not applicable	19100056
54	Employed	19100057
60	Unemployed	19100057
3	Discouraged work-seeker	19100057
774	Other not economically active	19100057
0	Not applicable	19100057
57	Employed	19100058
12	Unemployed	19100058
3	Discouraged work-seeker	19100058
993	Other not economically active	19100058
0	Not applicable	19100058
72	Employed	19100059
18	Unemployed	19100059
0	Discouraged work-seeker	19100059
486	Other not economically active	19100059
0	Not applicable	19100059
72	Employed	19100060
42	Unemployed	19100060
9	Discouraged work-seeker	19100060
1203	Other not economically active	19100060
0	Not applicable	19100060
78	Employed	19100061
141	Unemployed	19100061
102	Discouraged work-seeker	19100061
888	Other not economically active	19100061
0	Not applicable	19100061
57	Employed	19100062
21	Unemployed	19100062
6	Discouraged work-seeker	19100062
1062	Other not economically active	19100062
0	Not applicable	19100062
69	Employed	19100063
54	Unemployed	19100063
3	Discouraged work-seeker	19100063
1164	Other not economically active	19100063
0	Not applicable	19100063
45	Employed	19100064
24	Unemployed	19100064
3	Discouraged work-seeker	19100064
627	Other not economically active	19100064
0	Not applicable	19100064
60	Employed	19100065
102	Unemployed	19100065
48	Discouraged work-seeker	19100065
1167	Other not economically active	19100065
0	Not applicable	19100065
57	Employed	19100066
204	Unemployed	19100066
60	Discouraged work-seeker	19100066
1272	Other not economically active	19100066
0	Not applicable	19100066
102	Employed	19100067
411	Unemployed	19100067
51	Discouraged work-seeker	19100067
1689	Other not economically active	19100067
0	Not applicable	19100067
54	Employed	19100068
183	Unemployed	19100068
63	Discouraged work-seeker	19100068
1311	Other not economically active	19100068
0	Not applicable	19100068
120	Employed	19100069
288	Unemployed	19100069
24	Discouraged work-seeker	19100069
954	Other not economically active	19100069
0	Not applicable	19100069
48	Employed	19100070
12	Unemployed	19100070
0	Discouraged work-seeker	19100070
864	Other not economically active	19100070
0	Not applicable	19100070
63	Employed	19100071
51	Unemployed	19100071
15	Discouraged work-seeker	19100071
933	Other not economically active	19100071
0	Not applicable	19100071
51	Employed	19100072
69	Unemployed	19100072
6	Discouraged work-seeker	19100072
960	Other not economically active	19100072
0	Not applicable	19100072
45	Employed	19100073
45	Unemployed	19100073
3	Discouraged work-seeker	19100073
783	Other not economically active	19100073
0	Not applicable	19100073
93	Employed	19100074
252	Unemployed	19100074
63	Discouraged work-seeker	19100074
966	Other not economically active	19100074
0	Not applicable	19100074
57	Employed	19100075
174	Unemployed	19100075
33	Discouraged work-seeker	19100075
1614	Other not economically active	19100075
0	Not applicable	19100075
105	Employed	19100076
135	Unemployed	19100076
84	Discouraged work-seeker	19100076
1701	Other not economically active	19100076
0	Not applicable	19100076
36	Employed	19100077
36	Unemployed	19100077
0	Discouraged work-seeker	19100077
495	Other not economically active	19100077
0	Not applicable	19100077
57	Employed	19100078
132	Unemployed	19100078
54	Discouraged work-seeker	19100078
1680	Other not economically active	19100078
0	Not applicable	19100078
90	Employed	19100079
174	Unemployed	19100079
72	Discouraged work-seeker	19100079
1425	Other not economically active	19100079
0	Not applicable	19100079
99	Employed	19100080
312	Unemployed	19100080
57	Discouraged work-seeker	19100080
1632	Other not economically active	19100080
0	Not applicable	19100080
48	Employed	19100081
114	Unemployed	19100081
33	Discouraged work-seeker	19100081
1323	Other not economically active	19100081
0	Not applicable	19100081
63	Employed	19100082
339	Unemployed	19100082
48	Discouraged work-seeker	19100082
1644	Other not economically active	19100082
0	Not applicable	19100082
48	Employed	19100083
114	Unemployed	19100083
27	Discouraged work-seeker	19100083
705	Other not economically active	19100083
0	Not applicable	19100083
87	Employed	19100084
27	Unemployed	19100084
21	Discouraged work-seeker	19100084
750	Other not economically active	19100084
0	Not applicable	19100084
84	Employed	19100085
168	Unemployed	19100085
36	Discouraged work-seeker	19100085
900	Other not economically active	19100085
0	Not applicable	19100085
84	Employed	19100086
246	Unemployed	19100086
72	Discouraged work-seeker	19100086
1500	Other not economically active	19100086
0	Not applicable	19100086
48	Employed	19100087
147	Unemployed	19100087
15	Discouraged work-seeker	19100087
1305	Other not economically active	19100087
0	Not applicable	19100087
108	Employed	19100088
264	Unemployed	19100088
48	Discouraged work-seeker	19100088
1545	Other not economically active	19100088
0	Not applicable	19100088
21	Employed	19100089
204	Unemployed	19100089
18	Discouraged work-seeker	19100089
984	Other not economically active	19100089
0	Not applicable	19100089
36	Employed	19100090
171	Unemployed	19100090
27	Discouraged work-seeker	19100090
1236	Other not economically active	19100090
0	Not applicable	19100090
30	Employed	19100091
159	Unemployed	19100091
30	Discouraged work-seeker	19100091
1428	Other not economically active	19100091
0	Not applicable	19100091
54	Employed	19100092
171	Unemployed	19100092
18	Discouraged work-seeker	19100092
1518	Other not economically active	19100092
0	Not applicable	19100092
24	Employed	19100093
180	Unemployed	19100093
24	Discouraged work-seeker	19100093
1353	Other not economically active	19100093
0	Not applicable	19100093
18	Employed	19100094
114	Unemployed	19100094
18	Discouraged work-seeker	19100094
1083	Other not economically active	19100094
0	Not applicable	19100094
105	Employed	19100095
321	Unemployed	19100095
54	Discouraged work-seeker	19100095
2217	Other not economically active	19100095
0	Not applicable	19100095
63	Employed	19100096
213	Unemployed	19100096
51	Discouraged work-seeker	19100096
1248	Other not economically active	19100096
0	Not applicable	19100096
36	Employed	19100097
165	Unemployed	19100097
18	Discouraged work-seeker	19100097
1392	Other not economically active	19100097
0	Not applicable	19100097
39	Employed	19100098
204	Unemployed	19100098
33	Discouraged work-seeker	19100098
1239	Other not economically active	19100098
0	Not applicable	19100098
120	Employed	19100099
423	Unemployed	19100099
108	Discouraged work-seeker	19100099
2109	Other not economically active	19100099
0	Not applicable	19100099
114	Employed	19100100
240	Unemployed	19100100
120	Discouraged work-seeker	19100100
1620	Other not economically active	19100100
0	Not applicable	19100100
93	Employed	19100101
261	Unemployed	19100101
39	Discouraged work-seeker	19100101
1497	Other not economically active	19100101
0	Not applicable	19100101
81	Employed	19100102
72	Unemployed	19100102
6	Discouraged work-seeker	19100102
846	Other not economically active	19100102
0	Not applicable	19100102
93	Employed	19100103
42	Unemployed	19100103
12	Discouraged work-seeker	19100103
1200	Other not economically active	19100103
0	Not applicable	19100103
96	Employed	19100104
324	Unemployed	19100104
21	Discouraged work-seeker	19100104
801	Other not economically active	19100104
0	Not applicable	19100104
147	Employed	19100105
144	Unemployed	19100105
30	Discouraged work-seeker	19100105
1278	Other not economically active	19100105
0	Not applicable	19100105
117	Employed	19100106
576	Unemployed	19100106
63	Discouraged work-seeker	19100106
2586	Other not economically active	19100106
0	Not applicable	19100106
111	Employed	19100107
54	Unemployed	19100107
6	Discouraged work-seeker	19100107
1092	Other not economically active	19100107
0	Not applicable	19100107
66	Employed	19100108
315	Unemployed	19100108
33	Discouraged work-seeker	19100108
2061	Other not economically active	19100108
0	Not applicable	19100108
117	Employed	19100109
201	Unemployed	19100109
42	Discouraged work-seeker	19100109
1824	Other not economically active	19100109
0	Not applicable	19100109
219	Employed	19100110
147	Unemployed	19100110
51	Discouraged work-seeker	19100110
1038	Other not economically active	19100110
0	Not applicable	19100110
105	Employed	19100111
213	Unemployed	19100111
45	Discouraged work-seeker	19100111
1323	Other not economically active	19100111
0	Not applicable	19100111
\.


--
-- Name: officialemploymentstatus15to17_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus15to17_country
    ADD CONSTRAINT officialemploymentstatus15to17_country_pkey PRIMARY KEY ("official employment status", country_code);


--
-- Name: officialemploymentstatus15to17_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus15to17_municipality
    ADD CONSTRAINT officialemploymentstatus15to17_municipality_pkey PRIMARY KEY ("official employment status", municipality_code);


--
-- Name: officialemploymentstatus15to17_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus15to17_province
    ADD CONSTRAINT officialemploymentstatus15to17_province_pkey PRIMARY KEY ("official employment status", province_code);


--
-- Name: officialemploymentstatus15to17_subplace_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus15to17_subplace
    ADD CONSTRAINT officialemploymentstatus15to17_subplace_pkey PRIMARY KEY ("official employment status", subplace_code);


--
-- Name: officialemploymentstatus15to17_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY officialemploymentstatus15to17_ward
    ADD CONSTRAINT officialemploymentstatus15to17_ward_pkey PRIMARY KEY ("official employment status", ward_code);


--
-- Name: ix_officialemploymentstatus15to17_country_country_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_officialemploymentstatus15to17_country_country_code ON officialemploymentstatus15to17_country USING btree (country_code);


--
-- Name: ix_officialemploymentstatus15to17_municipality_municipa_dadd; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_officialemploymentstatus15to17_municipality_municipa_dadd ON officialemploymentstatus15to17_municipality USING btree (municipality_code);


--
-- Name: ix_officialemploymentstatus15to17_province_province_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_officialemploymentstatus15to17_province_province_code ON officialemploymentstatus15to17_province USING btree (province_code);


--
-- Name: ix_officialemploymentstatus15to17_subplace_subplace_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_officialemploymentstatus15to17_subplace_subplace_code ON officialemploymentstatus15to17_subplace USING btree (subplace_code);


--
-- Name: ix_officialemploymentstatus15to17_ward_ward_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_officialemploymentstatus15to17_ward_ward_code ON officialemploymentstatus15to17_ward USING btree (ward_code);


--
-- Name: officialemploymentstatus15to17_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus15to17_country
    ADD CONSTRAINT officialemploymentstatus15to17_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: officialemploymentstatus15to17_municipal_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus15to17_municipality
    ADD CONSTRAINT officialemploymentstatus15to17_municipal_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: officialemploymentstatus15to17_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus15to17_province
    ADD CONSTRAINT officialemploymentstatus15to17_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: officialemploymentstatus15to17_subplace_subplace_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus15to17_subplace
    ADD CONSTRAINT officialemploymentstatus15to17_subplace_subplace_code_fkey FOREIGN KEY (subplace_code) REFERENCES subplace(code);


--
-- Name: officialemploymentstatus15to17_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY officialemploymentstatus15to17_ward
    ADD CONSTRAINT officialemploymentstatus15to17_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

