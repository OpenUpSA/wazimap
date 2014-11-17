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
-- Name: parentsalive_country; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE parentsalive_country (
    total integer NOT NULL,
    "parents alive" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.parentsalive_country OWNER TO census;

--
-- Name: parentsalive_municipality; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE parentsalive_municipality (
    total integer NOT NULL,
    "parents alive" character varying(128) NOT NULL,
    municipality_code character varying(8) NOT NULL
);


ALTER TABLE public.parentsalive_municipality OWNER TO census;

--
-- Name: parentsalive_province; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE parentsalive_province (
    total integer NOT NULL,
    "parents alive" character varying(128) NOT NULL,
    province_code character varying(8) NOT NULL
);


ALTER TABLE public.parentsalive_province OWNER TO census;

--
-- Name: parentsalive_subplace; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE parentsalive_subplace (
    total integer NOT NULL,
    "parents alive" character varying(128) NOT NULL,
    subplace_code character varying(8) NOT NULL
);


ALTER TABLE public.parentsalive_subplace OWNER TO census;

--
-- Name: parentsalive_ward; Type: TABLE; Schema: public; Owner: census; Tablespace: 
--

CREATE TABLE parentsalive_ward (
    total integer NOT NULL,
    "parents alive" character varying(128) NOT NULL,
    ward_code character varying(8) NOT NULL
);


ALTER TABLE public.parentsalive_ward OWNER TO census;

--
-- Data for Name: parentsalive_country; Type: TABLE DATA; Schema: public; Owner: census
--

COPY parentsalive_country (total, "parents alive", country_code) FROM stdin;
694989	Neither parent (or uncertain)	ZA
12009012	Both parents	ZA
2396091	One parent	ZA
\.


--
-- Data for Name: parentsalive_municipality; Type: TABLE DATA; Schema: public; Owner: census
--

COPY parentsalive_municipality (total, "parents alive", municipality_code) FROM stdin;
696	Neither parent (or uncertain)	EC101
12993	Both parents	EC101
771	Neither parent (or uncertain)	EC102
8517	Both parents	EC102
132	Neither parent (or uncertain)	EC103
2760	Both parents	EC103
951	Neither parent (or uncertain)	EC104
16149	Both parents	EC104
585	Neither parent (or uncertain)	EC105
12885	Both parents	EC105
465	Neither parent (or uncertain)	EC106
12342	Both parents	EC106
168	Neither parent (or uncertain)	EC107
4836	Both parents	EC107
702	Neither parent (or uncertain)	EC108
23172	Both parents	EC108
291	Neither parent (or uncertain)	EC109
10593	Both parents	EC109
4827	Neither parent (or uncertain)	EC121
70458	Both parents	EC121
4146	Neither parent (or uncertain)	EC122
63759	Both parents	EC122
543	Neither parent (or uncertain)	EC123
9048	Both parents	EC123
2022	Neither parent (or uncertain)	EC124
29697	Both parents	EC124
1065	Neither parent (or uncertain)	EC126
16941	Both parents	EC126
1803	Neither parent (or uncertain)	EC127
28776	Both parents	EC127
408	Neither parent (or uncertain)	EC128
5844	Both parents	EC128
801	Neither parent (or uncertain)	EC131
15888	Both parents	EC131
780	Neither parent (or uncertain)	EC132
7872	Both parents	EC132
486	Neither parent (or uncertain)	EC133
5214	Both parents	EC133
3252	Neither parent (or uncertain)	EC134
44382	Both parents	EC134
3003	Neither parent (or uncertain)	EC135
35604	Both parents	EC135
2511	Neither parent (or uncertain)	EC136
28710	Both parents	EC136
4098	Neither parent (or uncertain)	EC137
40779	Both parents	EC137
1701	Neither parent (or uncertain)	EC138
14847	Both parents	EC138
3702	Neither parent (or uncertain)	EC141
31518	Both parents	EC141
2997	Neither parent (or uncertain)	EC142
31236	Both parents	EC142
825	Neither parent (or uncertain)	EC143
11097	Both parents	EC143
540	Neither parent (or uncertain)	EC144
8553	Both parents	EC144
8787	Neither parent (or uncertain)	EC153
79650	Both parents	EC153
4590	Neither parent (or uncertain)	EC154
45594	Both parents	EC154
7167	Neither parent (or uncertain)	EC155
80796	Both parents	EC155
4518	Neither parent (or uncertain)	EC156
49104	Both parents	EC156
9282	Neither parent (or uncertain)	EC157
110136	Both parents	EC157
6366	Neither parent (or uncertain)	EC441
50934	Both parents	EC441
5313	Neither parent (or uncertain)	EC442
50313	Both parents	EC442
10065	Neither parent (or uncertain)	EC443
84315	Both parents	EC443
3537	Neither parent (or uncertain)	EC444
35274	Both parents	EC444
8097	Neither parent (or uncertain)	BUF
163302	Both parents	BUF
10326	Neither parent (or uncertain)	NMA
248958	Both parents	NMA
582	Neither parent (or uncertain)	FS161
9345	Both parents	FS161
954	Neither parent (or uncertain)	FS162
11508	Both parents	FS162
771	Neither parent (or uncertain)	FS163
8319	Both parents	FS163
480	Neither parent (or uncertain)	FS164
5970	Both parents	FS164
1341	Neither parent (or uncertain)	FS181
14199	Both parents	FS181
546	Neither parent (or uncertain)	FS182
7407	Both parents	FS182
945	Neither parent (or uncertain)	FS183
12339	Both parents	FS183
6993	Neither parent (or uncertain)	FS184
83664	Both parents	FS184
1689	Neither parent (or uncertain)	FS185
20172	Both parents	FS185
2292	Neither parent (or uncertain)	FS191
26883	Both parents	FS191
2070	Neither parent (or uncertain)	FS192
29550	Both parents	FS192
909	Neither parent (or uncertain)	FS193
15483	Both parents	FS193
7125	Neither parent (or uncertain)	FS194
80013	Both parents	FS194
777	Neither parent (or uncertain)	FS195
11775	Both parents	FS195
1200	Neither parent (or uncertain)	FS196
12219	Both parents	FS196
2631	Neither parent (or uncertain)	FS201
34077	Both parents	FS201
2010	Neither parent (or uncertain)	FS203
28623	Both parents	FS203
1773	Neither parent (or uncertain)	FS204
31773	Both parents	FS204
975	Neither parent (or uncertain)	FS205
14373	Both parents	FS205
12228	Neither parent (or uncertain)	MAN
156306	Both parents	MAN
8166	Neither parent (or uncertain)	GT421
149895	Both parents	GT421
1140	Neither parent (or uncertain)	GT422
18615	Both parents	GT422
1056	Neither parent (or uncertain)	GT423
21285	Both parents	GT423
2922	Neither parent (or uncertain)	GT481
73080	Both parents	GT481
1104	Neither parent (or uncertain)	GT482
31467	Both parents	GT482
1191	Neither parent (or uncertain)	GT483
21441	Both parents	GT483
2433	Neither parent (or uncertain)	GT484
37542	Both parents	GT484
27498	Neither parent (or uncertain)	EKU
646125	Both parents	EKU
36966	Neither parent (or uncertain)	JHB
864510	Both parents	JHB
21600	Neither parent (or uncertain)	TSH
583290	Both parents	TSH
3981	Neither parent (or uncertain)	KZN213
43773	Both parents	KZN213
2679	Neither parent (or uncertain)	KZN214
27888	Both parents	KZN214
1149	Neither parent (or uncertain)	KZN215
14889	Both parents	KZN215
4767	Neither parent (or uncertain)	KZN216
53886	Both parents	KZN216
2118	Neither parent (or uncertain)	KZN211
20352	Both parents	KZN211
1518	Neither parent (or uncertain)	KZN212
15660	Both parents	KZN212
2658	Neither parent (or uncertain)	KZN221
24849	Both parents	KZN221
1815	Neither parent (or uncertain)	KZN222
16575	Both parents	KZN222
879	Neither parent (or uncertain)	KZN223
8493	Both parents	KZN223
966	Neither parent (or uncertain)	KZN224
8865	Both parents	KZN224
11715	Neither parent (or uncertain)	KZN225
122094	Both parents	KZN225
1521	Neither parent (or uncertain)	KZN226
14208	Both parents	KZN226
1890	Neither parent (or uncertain)	KZN227
15210	Both parents	KZN227
4713	Neither parent (or uncertain)	KZN232
58737	Both parents	KZN232
2322	Neither parent (or uncertain)	KZN233
33399	Both parents	KZN233
1653	Neither parent (or uncertain)	KZN234
21717	Both parents	KZN234
3198	Neither parent (or uncertain)	KZN235
38610	Both parents	KZN235
2613	Neither parent (or uncertain)	KZN236
31620	Both parents	KZN236
2352	Neither parent (or uncertain)	KZN271
50355	Both parents	KZN271
4977	Neither parent (or uncertain)	KZN272
57729	Both parents	KZN272
1125	Neither parent (or uncertain)	KZN273
9366	Both parents	KZN273
1755	Neither parent (or uncertain)	KZN274
22119	Both parents	KZN274
4995	Neither parent (or uncertain)	KZN275
49254	Both parents	KZN275
5787	Neither parent (or uncertain)	KZN282
75033	Both parents	KZN282
3429	Neither parent (or uncertain)	KZN286
33102	Both parents	KZN286
3270	Neither parent (or uncertain)	KZN281
31944	Both parents	KZN281
1833	Neither parent (or uncertain)	KZN283
21303	Both parents	KZN283
6522	Neither parent (or uncertain)	KZN284
56112	Both parents	KZN284
1257	Neither parent (or uncertain)	KZN285
13395	Both parents	KZN285
2691	Neither parent (or uncertain)	KZN431
29439	Both parents	KZN431
231	Neither parent (or uncertain)	KZN432
2343	Both parents	KZN432
1233	Neither parent (or uncertain)	KZN433
15159	Both parents	KZN433
2664	Neither parent (or uncertain)	KZN434
27420	Both parents	KZN434
4881	Neither parent (or uncertain)	KZN435
52701	Both parents	KZN435
1485	Neither parent (or uncertain)	KZN241
15549	Both parents	KZN241
4116	Neither parent (or uncertain)	KZN242
52350	Both parents	KZN242
4194	Neither parent (or uncertain)	KZN244
57696	Both parents	KZN244
2628	Neither parent (or uncertain)	KZN245
26844	Both parents	KZN245
7011	Neither parent (or uncertain)	KZN252
87249	Both parents	KZN252
747	Neither parent (or uncertain)	KZN253
9489	Both parents	KZN253
2544	Neither parent (or uncertain)	KZN254
28962	Both parents	KZN254
6789	Neither parent (or uncertain)	KZN263
53658	Both parents	KZN263
2250	Neither parent (or uncertain)	KZN261
23625	Both parents	KZN261
3495	Neither parent (or uncertain)	KZN262
36156	Both parents	KZN262
6342	Neither parent (or uncertain)	KZN265
58515	Both parents	KZN265
5280	Neither parent (or uncertain)	KZN266
55419	Both parents	KZN266
3342	Neither parent (or uncertain)	KZN294
27318	Both parents	KZN294
3120	Neither parent (or uncertain)	KZN291
33717	Both parents	KZN291
3333	Neither parent (or uncertain)	KZN292
52407	Both parents	KZN292
3855	Neither parent (or uncertain)	KZN293
38064	Both parents	KZN293
49665	Neither parent (or uncertain)	ETH
665142	Both parents	ETH
2082	Neither parent (or uncertain)	LIM331
75291	Both parents	LIM331
2889	Neither parent (or uncertain)	LIM332
56838	Both parents	LIM332
4005	Neither parent (or uncertain)	LIM333
101229	Both parents	LIM333
1314	Neither parent (or uncertain)	LIM334
42072	Both parents	LIM334
1386	Neither parent (or uncertain)	LIM335
24225	Both parents	LIM335
543	Neither parent (or uncertain)	LIM342
30915	Both parents	LIM342
3600	Neither parent (or uncertain)	LIM343
191628	Both parents	LIM343
585	Neither parent (or uncertain)	LIM341
16416	Both parents	LIM341
4038	Neither parent (or uncertain)	LIM344
154794	Both parents	LIM344
2643	Neither parent (or uncertain)	LIM351
46605	Both parents	LIM351
2220	Neither parent (or uncertain)	LIM352
35298	Both parents	LIM352
1875	Neither parent (or uncertain)	LIM353
28902	Both parents	LIM353
7692	Neither parent (or uncertain)	LIM354
149448	Both parents	LIM354
2856	Neither parent (or uncertain)	LIM355
59190	Both parents	LIM355
777	Neither parent (or uncertain)	LIM361
15261	Both parents	LIM361
1278	Neither parent (or uncertain)	LIM362
24642	Both parents	LIM362
249	Neither parent (or uncertain)	LIM364
7860	Both parents	LIM364
759	Neither parent (or uncertain)	LIM365
17820	Both parents	LIM365
1479	Neither parent (or uncertain)	LIM366
15129	Both parents	LIM366
3579	Neither parent (or uncertain)	LIM367
82935	Both parents	LIM367
1413	Neither parent (or uncertain)	LIM471
33162	Both parents	LIM471
3744	Neither parent (or uncertain)	LIM472
71181	Both parents	LIM472
3429	Neither parent (or uncertain)	LIM473
79689	Both parents	LIM473
1251	Neither parent (or uncertain)	LIM474
22863	Both parents	LIM474
4455	Neither parent (or uncertain)	LIM475
84735	Both parents	LIM475
3750	Neither parent (or uncertain)	MP301
51015	Both parents	MP301
2250	Neither parent (or uncertain)	MP302
35481	Both parents	MP302
4434	Neither parent (or uncertain)	MP303
46374	Both parents	MP303
1566	Neither parent (or uncertain)	MP304
22254	Both parents	MP304
1431	Neither parent (or uncertain)	MP305
26748	Both parents	MP305
540	Neither parent (or uncertain)	MP306
9570	Both parents	MP306
3363	Neither parent (or uncertain)	MP307
64254	Both parents	MP307
870	Neither parent (or uncertain)	MP311
17328	Both parents	MP311
3213	Neither parent (or uncertain)	MP312
83868	Both parents	MP312
2478	Neither parent (or uncertain)	MP313
47952	Both parents	MP313
747	Neither parent (or uncertain)	MP314
10395	Both parents	MP314
3084	Neither parent (or uncertain)	MP315
83316	Both parents	MP315
2781	Neither parent (or uncertain)	MP316
66474	Both parents	MP316
1221	Neither parent (or uncertain)	MP321
19689	Both parents	MP321
7191	Neither parent (or uncertain)	MP322
142353	Both parents	MP322
819	Neither parent (or uncertain)	MP323
14880	Both parents	MP323
7095	Neither parent (or uncertain)	MP324
107322	Both parents	MP324
6687	Neither parent (or uncertain)	MP325
162645	Both parents	MP325
2166	Neither parent (or uncertain)	NW371
46740	Both parents	NW371
4395	Neither parent (or uncertain)	NW372
102837	Both parents	NW372
5124	Neither parent (or uncertain)	NW373
110163	Both parents	NW373
840	Neither parent (or uncertain)	NW374
11490	Both parents	NW374
3600	Neither parent (or uncertain)	NW375
54264	Both parents	NW375
2721	Neither parent (or uncertain)	NW381
29835	Both parents	NW381
2370	Neither parent (or uncertain)	NW382
35337	Both parents	NW382
4416	Neither parent (or uncertain)	NW383
70455	Both parents	NW383
2622	Neither parent (or uncertain)	NW384
44142	Both parents	NW384
2274	Neither parent (or uncertain)	NW385
38523	Both parents	NW385
918	Neither parent (or uncertain)	NW392
17223	Both parents	NW392
1005	Neither parent (or uncertain)	NW393
17739	Both parents	NW393
3063	Neither parent (or uncertain)	NW394
49104	Both parents	NW394
960	Neither parent (or uncertain)	NW396
13695	Both parents	NW396
1773	Neither parent (or uncertain)	NW397
30528	Both parents	NW397
1140	Neither parent (or uncertain)	NW401
15057	Both parents	NW401
1539	Neither parent (or uncertain)	NW402
34365	Both parents	NW402
5361	Neither parent (or uncertain)	NW403
90045	Both parents	NW403
1347	Neither parent (or uncertain)	NW404
20736	Both parents	NW404
54	Neither parent (or uncertain)	NC061
2541	Both parents	NC061
279	Neither parent (or uncertain)	NC062
10479	Both parents	NC062
123	Neither parent (or uncertain)	NC064
2334	Both parents	NC064
261	Neither parent (or uncertain)	NC065
5148	Both parents	NC065
213	Neither parent (or uncertain)	NC066
2901	Both parents	NC066
75	Neither parent (or uncertain)	NC067
2880	Both parents	NC067
210	Neither parent (or uncertain)	NC071
5331	Both parents	NC071
453	Neither parent (or uncertain)	NC072
7143	Both parents	NC072
540	Neither parent (or uncertain)	NC073
11058	Both parents	NC073
66	Neither parent (or uncertain)	NC074
3015	Both parents	NC074
123	Neither parent (or uncertain)	NC075
2973	Both parents	NC075
171	Neither parent (or uncertain)	NC076
4107	Both parents	NC076
258	Neither parent (or uncertain)	NC077
5565	Both parents	NC077
456	Neither parent (or uncertain)	NC078
9930	Both parents	NC078
75	Neither parent (or uncertain)	NC081
1935	Both parents	NC081
375	Neither parent (or uncertain)	NC082
13908	Both parents	NC082
714	Neither parent (or uncertain)	NC083
23994	Both parents	NC083
105	Neither parent (or uncertain)	NC084
5094	Both parents	NC084
402	Neither parent (or uncertain)	NC085
8193	Both parents	NC085
186	Neither parent (or uncertain)	NC086
4707	Both parents	NC086
2784	Neither parent (or uncertain)	NC091
58626	Both parents	NC091
534	Neither parent (or uncertain)	NC092
12348	Both parents	NC092
366	Neither parent (or uncertain)	NC093
6099	Both parents	NC093
900	Neither parent (or uncertain)	NC094
16542	Both parents	NC094
1803	Neither parent (or uncertain)	NC451
27129	Both parents	NC451
1161	Neither parent (or uncertain)	NC452
24987	Both parents	NC452
333	Neither parent (or uncertain)	NC453
9045	Both parents	NC453
462	Neither parent (or uncertain)	WC011
16104	Both parents	WC011
300	Neither parent (or uncertain)	WC012
11496	Both parents	WC012
504	Neither parent (or uncertain)	WC013
13896	Both parents	WC013
411	Neither parent (or uncertain)	WC014
22728	Both parents	WC014
438	Neither parent (or uncertain)	WC015
26256	Both parents	WC015
579	Neither parent (or uncertain)	WC022
26403	Both parents	WC022
1542	Neither parent (or uncertain)	WC023
57927	Both parents	WC023
1011	Neither parent (or uncertain)	WC024
31323	Both parents	WC024
1329	Neither parent (or uncertain)	WC025
41178	Both parents	WC025
678	Neither parent (or uncertain)	WC026
24807	Both parents	WC026
213	Neither parent (or uncertain)	WC034
8550	Both parents	WC034
819	Neither parent (or uncertain)	WC031
24651	Both parents	WC031
375	Neither parent (or uncertain)	WC032
15513	Both parents	WC032
141	Neither parent (or uncertain)	WC033
7041	Both parents	WC033
138	Neither parent (or uncertain)	WC041
6405	Both parents	WC041
213	Neither parent (or uncertain)	WC042
11730	Both parents	WC042
969	Neither parent (or uncertain)	WC043
17580	Both parents	WC043
1152	Neither parent (or uncertain)	WC044
45624	Both parents	WC044
519	Neither parent (or uncertain)	WC045
24612	Both parents	WC045
393	Neither parent (or uncertain)	WC047
10869	Both parents	WC047
411	Neither parent (or uncertain)	WC048
15213	Both parents	WC048
72	Neither parent (or uncertain)	WC051
1962	Both parents	WC051
51	Neither parent (or uncertain)	WC052
3534	Both parents	WC052
780	Neither parent (or uncertain)	WC053
13251	Both parents	WC053
21207	Neither parent (or uncertain)	CPT
826188	Both parents	CPT
1485	One parent	EC101
1227	One parent	EC102
378	One parent	EC103
2511	One parent	EC104
1971	One parent	EC105
1767	One parent	EC106
519	One parent	EC107
2532	One parent	EC108
1197	One parent	EC109
21543	One parent	EC121
18711	One parent	EC122
1584	One parent	EC123
6711	One parent	EC124
3651	One parent	EC126
6012	One parent	EC127
1035	One parent	EC128
2418	One parent	EC131
2367	One parent	EC132
1104	One parent	EC133
10617	One parent	EC134
13872	One parent	EC135
10677	One parent	EC136
16572	One parent	EC137
5685	One parent	EC138
13635	One parent	EC141
11346	One parent	EC142
2274	One parent	EC143
1572	One parent	EC144
29592	One parent	EC153
16203	One parent	EC154
29946	One parent	EC155
18492	One parent	EC156
38613	One parent	EC157
21018	One parent	EC441
17760	One parent	EC442
30132	One parent	EC443
12678	One parent	EC444
27906	One parent	BUF
34989	One parent	NMA
1551	One parent	FS161
2145	One parent	FS162
1899	One parent	FS163
1458	One parent	FS164
3327	One parent	FS181
1092	One parent	FS182
2790	One parent	FS183
20247	One parent	FS184
4674	One parent	FS185
6969	One parent	FS191
6246	One parent	FS192
3096	One parent	FS193
22566	One parent	FS194
2592	One parent	FS195
2799	One parent	FS196
6660	One parent	FS201
5646	One parent	FS203
5694	One parent	FS204
2925	One parent	FS205
32280	One parent	MAN
26364	One parent	GT421
2352	One parent	GT422
3543	One parent	GT423
10014	One parent	GT481
4533	One parent	GT482
4767	One parent	GT483
7647	One parent	GT484
98835	One parent	EKU
127335	One parent	JHB
72225	One parent	TSH
11982	One parent	KZN213
8499	One parent	KZN214
3741	One parent	KZN215
13605	One parent	KZN216
6069	One parent	KZN211
3957	One parent	KZN212
7377	One parent	KZN221
4176	One parent	KZN222
2127	One parent	KZN223
2649	One parent	KZN224
30804	One parent	KZN225
4284	One parent	KZN226
4959	One parent	KZN227
15594	One parent	KZN232
8679	One parent	KZN233
5199	One parent	KZN234
10014	One parent	KZN235
8145	One parent	KZN236
10227	One parent	KZN271
14244	One parent	KZN272
2733	One parent	KZN273
5883	One parent	KZN274
14826	One parent	KZN275
17292	One parent	KZN282
9567	One parent	KZN286
9138	One parent	KZN281
6042	One parent	KZN283
16899	One parent	KZN284
3687	One parent	KZN285
7845	One parent	KZN431
546	One parent	KZN432
3783	One parent	KZN433
7908	One parent	KZN434
16035	One parent	KZN435
3327	One parent	KZN241
13689	One parent	KZN242
15777	One parent	KZN244
7458	One parent	KZN245
22698	One parent	KZN252
2109	One parent	KZN253
7560	One parent	KZN254
16956	One parent	KZN263
6930	One parent	KZN261
10377	One parent	KZN262
17004	One parent	KZN265
14916	One parent	KZN266
8652	One parent	KZN294
9402	One parent	KZN291
11295	One parent	KZN292
10323	One parent	KZN293
151476	One parent	ETH
12396	One parent	LIM331
13659	One parent	LIM332
18963	One parent	LIM333
6192	One parent	LIM334
6978	One parent	LIM335
3630	One parent	LIM342
22644	One parent	LIM343
2259	One parent	LIM341
20538	One parent	LIM344
14190	One parent	LIM351
11484	One parent	LIM352
7761	One parent	LIM353
32271	One parent	LIM354
20880	One parent	LIM355
1974	One parent	LIM361
4419	One parent	LIM362
1050	One parent	LIM364
2538	One parent	LIM365
2058	One parent	LIM366
19128	One parent	LIM367
9339	One parent	LIM471
15171	One parent	LIM472
21348	One parent	LIM473
9093	One parent	LIM474
26775	One parent	LIM475
13038	One parent	MP301
7677	One parent	MP302
12120	One parent	MP303
5235	One parent	MP304
4905	One parent	MP305
1848	One parent	MP306
11589	One parent	MP307
3090	One parent	MP311
12471	One parent	MP312
7137	One parent	MP313
2064	One parent	MP314
13326	One parent	MP315
12192	One parent	MP316
3849	One parent	MP321
26106	One parent	MP322
2724	One parent	MP323
24861	One parent	MP324
31017	One parent	MP325
8928	One parent	NW371
15453	One parent	NW372
17172	One parent	NW373
2238	One parent	NW374
12939	One parent	NW375
9018	One parent	NW381
7050	One parent	NW382
14835	One parent	NW383
8247	One parent	NW384
8724	One parent	NW385
2541	One parent	NW392
3300	One parent	NW393
11487	One parent	NW394
2304	One parent	NW396
7500	One parent	NW397
2874	One parent	NW401
5088	One parent	NW402
17205	One parent	NW403
3555	One parent	NW404
258	One parent	NC061
936	One parent	NC062
249	One parent	NC064
519	One parent	NC065
375	One parent	NC066
273	One parent	NC067
648	One parent	NC071
1317	One parent	NC072
1821	One parent	NC073
357	One parent	NC074
501	One parent	NC075
567	One parent	NC076
822	One parent	NC077
1416	One parent	NC078
207	One parent	NC081
1791	One parent	NC082
3180	One parent	NC083
624	One parent	NC084
1215	One parent	NC085
615	One parent	NC086
8787	One parent	NC091
1944	One parent	NC092
1134	One parent	NC093
2940	One parent	NC094
6360	One parent	NC451
4287	One parent	NC452
1215	One parent	NC453
1437	One parent	WC011
930	One parent	WC012
1035	One parent	WC013
1953	One parent	WC014
1776	One parent	WC015
2475	One parent	WC022
4830	One parent	WC023
3216	One parent	WC024
3912	One parent	WC025
2274	One parent	WC026
633	One parent	WC034
2262	One parent	WC031
1386	One parent	WC032
558	One parent	WC033
579	One parent	WC041
885	One parent	WC042
2130	One parent	WC043
4179	One parent	WC044
2352	One parent	WC045
1125	One parent	WC047
1389	One parent	WC048
159	One parent	WC051
300	One parent	WC052
1566	One parent	WC053
80940	One parent	CPT
\.


--
-- Data for Name: parentsalive_province; Type: TABLE DATA; Schema: public; Owner: census
--

COPY parentsalive_province (total, "parents alive", province_code) FROM stdin;
122334	Neither parent (or uncertain)	EC
1602840	Both parents	EC
48270	Neither parent (or uncertain)	FS
613995	Both parents	FS
104067	Neither parent (or uncertain)	GT
2447250	Both parents	GT
211326	Neither parent (or uncertain)	KZN
2439759	Both parents	KZN
60150	Neither parent (or uncertain)	LIM
1468131	Both parents	LIM
53517	Neither parent (or uncertain)	MP
1011921	Both parents	MP
47625	Neither parent (or uncertain)	NW
832275	Both parents	NW
13023	Neither parent (or uncertain)	NC
288012	Both parents	NC
34680	Neither parent (or uncertain)	WC
1304826	Both parents	WC
442317	One parent	EC
136644	One parent	FS
357618	One parent	GT
628440	One parent	KZN
306735	One parent	LIM
195246	One parent	MP
44343	One parent	NC
160464	One parent	NW
124296	One parent	WC
\.


--
-- Data for Name: parentsalive_subplace; Type: TABLE DATA; Schema: public; Owner: census
--

COPY parentsalive_subplace (total, "parents alive", subplace_code) FROM stdin;
\.


--
-- Data for Name: parentsalive_ward; Type: TABLE DATA; Schema: public; Owner: census
--

COPY parentsalive_ward (total, "parents alive", ward_code) FROM stdin;
120	Neither parent (or uncertain)	21001001
2364	Both parents	21001001
153	Neither parent (or uncertain)	21001002
1209	Both parents	21001002
48	Neither parent (or uncertain)	21001003
1773	Both parents	21001003
216	Neither parent (or uncertain)	21001004
2766	Both parents	21001004
39	Neither parent (or uncertain)	21001005
1665	Both parents	21001005
78	Neither parent (or uncertain)	21001006
1740	Both parents	21001006
33	Neither parent (or uncertain)	21001007
1476	Both parents	21001007
63	Neither parent (or uncertain)	21002001
1185	Both parents	21002001
282	Neither parent (or uncertain)	21002002
1512	Both parents	21002002
114	Neither parent (or uncertain)	21002003
1590	Both parents	21002003
105	Neither parent (or uncertain)	21002004
1587	Both parents	21002004
108	Neither parent (or uncertain)	21002005
1254	Both parents	21002005
90	Neither parent (or uncertain)	21002006
1389	Both parents	21002006
48	Neither parent (or uncertain)	21003001
558	Both parents	21003001
57	Neither parent (or uncertain)	21003002
1047	Both parents	21003002
15	Neither parent (or uncertain)	21003003
435	Both parents	21003003
12	Neither parent (or uncertain)	21003004
720	Both parents	21003004
30	Neither parent (or uncertain)	21004001
612	Both parents	21004001
102	Neither parent (or uncertain)	21004002
1458	Both parents	21004002
33	Neither parent (or uncertain)	21004003
1554	Both parents	21004003
111	Neither parent (or uncertain)	21004004
1503	Both parents	21004004
78	Neither parent (or uncertain)	21004005
1989	Both parents	21004005
78	Neither parent (or uncertain)	21004006
996	Both parents	21004006
24	Neither parent (or uncertain)	21004007
594	Both parents	21004007
102	Neither parent (or uncertain)	21004008
561	Both parents	21004008
42	Neither parent (or uncertain)	21004009
1119	Both parents	21004009
78	Neither parent (or uncertain)	21004010
1278	Both parents	21004010
69	Neither parent (or uncertain)	21004011
1593	Both parents	21004011
93	Neither parent (or uncertain)	21004012
33	Both parents	21004012
63	Neither parent (or uncertain)	21004013
1458	Both parents	21004013
45	Neither parent (or uncertain)	21004014
1401	Both parents	21004014
57	Neither parent (or uncertain)	21005001
1380	Both parents	21005001
69	Neither parent (or uncertain)	21005002
1608	Both parents	21005002
51	Neither parent (or uncertain)	21005003
1407	Both parents	21005003
36	Neither parent (or uncertain)	21005004
1059	Both parents	21005004
63	Neither parent (or uncertain)	21005005
1407	Both parents	21005005
69	Neither parent (or uncertain)	21005006
2013	Both parents	21005006
36	Neither parent (or uncertain)	21005007
1266	Both parents	21005007
30	Neither parent (or uncertain)	21005008
996	Both parents	21005008
117	Neither parent (or uncertain)	21005009
1236	Both parents	21005009
48	Neither parent (or uncertain)	21005010
516	Both parents	21005010
57	Neither parent (or uncertain)	21006001
1218	Both parents	21006001
51	Neither parent (or uncertain)	21006002
1851	Both parents	21006002
48	Neither parent (or uncertain)	21006003
2061	Both parents	21006003
48	Neither parent (or uncertain)	21006004
1119	Both parents	21006004
114	Neither parent (or uncertain)	21006005
1041	Both parents	21006005
30	Neither parent (or uncertain)	21006006
1182	Both parents	21006006
48	Neither parent (or uncertain)	21006007
1707	Both parents	21006007
66	Neither parent (or uncertain)	21006008
2160	Both parents	21006008
63	Neither parent (or uncertain)	21007001
474	Both parents	21007001
42	Neither parent (or uncertain)	21007002
1230	Both parents	21007002
54	Neither parent (or uncertain)	21007003
2268	Both parents	21007003
6	Neither parent (or uncertain)	21007004
864	Both parents	21007004
9	Neither parent (or uncertain)	21008001
543	Both parents	21008001
18	Neither parent (or uncertain)	21008002
789	Both parents	21008002
0	Neither parent (or uncertain)	21008003
75	Both parents	21008003
111	Neither parent (or uncertain)	21008004
4152	Both parents	21008004
42	Neither parent (or uncertain)	21008005
702	Both parents	21008005
54	Neither parent (or uncertain)	21008006
1470	Both parents	21008006
33	Neither parent (or uncertain)	21008007
2274	Both parents	21008007
30	Neither parent (or uncertain)	21008008
1215	Both parents	21008008
96	Neither parent (or uncertain)	21008009
2544	Both parents	21008009
69	Neither parent (or uncertain)	21008010
1983	Both parents	21008010
30	Neither parent (or uncertain)	21008011
393	Both parents	21008011
21	Neither parent (or uncertain)	21008012
1284	Both parents	21008012
42	Neither parent (or uncertain)	21008013
1626	Both parents	21008013
42	Neither parent (or uncertain)	21008014
1542	Both parents	21008014
117	Neither parent (or uncertain)	21008015
2583	Both parents	21008015
57	Neither parent (or uncertain)	21009001
2790	Both parents	21009001
36	Neither parent (or uncertain)	21009002
1470	Both parents	21009002
51	Neither parent (or uncertain)	21009003
1587	Both parents	21009003
60	Neither parent (or uncertain)	21009004
1578	Both parents	21009004
45	Neither parent (or uncertain)	21009005
1800	Both parents	21009005
45	Neither parent (or uncertain)	21009006
1368	Both parents	21009006
240	Neither parent (or uncertain)	21201001
1065	Both parents	21201001
138	Neither parent (or uncertain)	21201002
2154	Both parents	21201002
141	Neither parent (or uncertain)	21201003
1863	Both parents	21201003
144	Neither parent (or uncertain)	21201004
1899	Both parents	21201004
150	Neither parent (or uncertain)	21201005
2265	Both parents	21201005
147	Neither parent (or uncertain)	21201006
1998	Both parents	21201006
144	Neither parent (or uncertain)	21201007
1758	Both parents	21201007
153	Neither parent (or uncertain)	21201008
2298	Both parents	21201008
312	Neither parent (or uncertain)	21201009
2325	Both parents	21201009
171	Neither parent (or uncertain)	21201010
2241	Both parents	21201010
141	Neither parent (or uncertain)	21201011
2175	Both parents	21201011
171	Neither parent (or uncertain)	21201012
2250	Both parents	21201012
78	Neither parent (or uncertain)	21201013
1767	Both parents	21201013
246	Neither parent (or uncertain)	21201014
2007	Both parents	21201014
219	Neither parent (or uncertain)	21201015
3477	Both parents	21201015
162	Neither parent (or uncertain)	21201016
3387	Both parents	21201016
174	Neither parent (or uncertain)	21201017
2748	Both parents	21201017
81	Neither parent (or uncertain)	21201018
2136	Both parents	21201018
210	Neither parent (or uncertain)	21201019
4275	Both parents	21201019
96	Neither parent (or uncertain)	21201020
3171	Both parents	21201020
126	Neither parent (or uncertain)	21201021
1710	Both parents	21201021
108	Neither parent (or uncertain)	21201022
2232	Both parents	21201022
162	Neither parent (or uncertain)	21201023
2322	Both parents	21201023
138	Neither parent (or uncertain)	21201024
1749	Both parents	21201024
153	Neither parent (or uncertain)	21201025
1740	Both parents	21201025
171	Neither parent (or uncertain)	21201026
2955	Both parents	21201026
99	Neither parent (or uncertain)	21201027
1770	Both parents	21201027
147	Neither parent (or uncertain)	21201028
2814	Both parents	21201028
105	Neither parent (or uncertain)	21201029
1527	Both parents	21201029
147	Neither parent (or uncertain)	21201030
2226	Both parents	21201030
150	Neither parent (or uncertain)	21201031
2148	Both parents	21201031
90	Neither parent (or uncertain)	21202001
1200	Both parents	21202001
75	Neither parent (or uncertain)	21202002
1677	Both parents	21202002
150	Neither parent (or uncertain)	21202003
1638	Both parents	21202003
114	Neither parent (or uncertain)	21202004
1935	Both parents	21202004
147	Neither parent (or uncertain)	21202005
2235	Both parents	21202005
48	Neither parent (or uncertain)	21202006
771	Both parents	21202006
132	Neither parent (or uncertain)	21202007
1977	Both parents	21202007
141	Neither parent (or uncertain)	21202008
1875	Both parents	21202008
114	Neither parent (or uncertain)	21202009
2085	Both parents	21202009
120	Neither parent (or uncertain)	21202010
1581	Both parents	21202010
132	Neither parent (or uncertain)	21202011
1986	Both parents	21202011
129	Neither parent (or uncertain)	21202012
1887	Both parents	21202012
144	Neither parent (or uncertain)	21202013
1854	Both parents	21202013
147	Neither parent (or uncertain)	21202014
2007	Both parents	21202014
147	Neither parent (or uncertain)	21202015
1635	Both parents	21202015
99	Neither parent (or uncertain)	21202016
2106	Both parents	21202016
138	Neither parent (or uncertain)	21202017
2043	Both parents	21202017
168	Neither parent (or uncertain)	21202018
2055	Both parents	21202018
117	Neither parent (or uncertain)	21202019
2037	Both parents	21202019
129	Neither parent (or uncertain)	21202020
1953	Both parents	21202020
105	Neither parent (or uncertain)	21202021
2121	Both parents	21202021
171	Neither parent (or uncertain)	21202022
2739	Both parents	21202022
117	Neither parent (or uncertain)	21202023
2175	Both parents	21202023
177	Neither parent (or uncertain)	21202024
2934	Both parents	21202024
177	Neither parent (or uncertain)	21202025
3168	Both parents	21202025
144	Neither parent (or uncertain)	21202026
2841	Both parents	21202026
165	Neither parent (or uncertain)	21202027
2382	Both parents	21202027
132	Neither parent (or uncertain)	21202028
2442	Both parents	21202028
135	Neither parent (or uncertain)	21202029
2265	Both parents	21202029
153	Neither parent (or uncertain)	21202030
1812	Both parents	21202030
180	Neither parent (or uncertain)	21202031
2331	Both parents	21202031
78	Neither parent (or uncertain)	21203001
1353	Both parents	21203001
57	Neither parent (or uncertain)	21203002
1065	Both parents	21203002
120	Neither parent (or uncertain)	21203003
1287	Both parents	21203003
99	Neither parent (or uncertain)	21203004
1557	Both parents	21203004
24	Neither parent (or uncertain)	21203005
1455	Both parents	21203005
93	Neither parent (or uncertain)	21203006
1086	Both parents	21203006
72	Neither parent (or uncertain)	21203007
1245	Both parents	21203007
96	Neither parent (or uncertain)	21204001
1302	Both parents	21204001
114	Neither parent (or uncertain)	21204002
1722	Both parents	21204002
123	Neither parent (or uncertain)	21204003
1338	Both parents	21204003
216	Neither parent (or uncertain)	21204004
1533	Both parents	21204004
93	Neither parent (or uncertain)	21204005
1836	Both parents	21204005
63	Neither parent (or uncertain)	21204006
1905	Both parents	21204006
75	Neither parent (or uncertain)	21204007
1389	Both parents	21204007
114	Neither parent (or uncertain)	21204008
1620	Both parents	21204008
84	Neither parent (or uncertain)	21204009
1251	Both parents	21204009
60	Neither parent (or uncertain)	21204010
1056	Both parents	21204010
81	Neither parent (or uncertain)	21204011
1185	Both parents	21204011
147	Neither parent (or uncertain)	21204012
1980	Both parents	21204012
66	Neither parent (or uncertain)	21204013
1344	Both parents	21204013
90	Neither parent (or uncertain)	21204014
1788	Both parents	21204014
90	Neither parent (or uncertain)	21204015
1362	Both parents	21204015
129	Neither parent (or uncertain)	21204016
1869	Both parents	21204016
51	Neither parent (or uncertain)	21204017
1098	Both parents	21204017
132	Neither parent (or uncertain)	21204018
1257	Both parents	21204018
78	Neither parent (or uncertain)	21204019
1338	Both parents	21204019
105	Neither parent (or uncertain)	21204020
1530	Both parents	21204020
105	Neither parent (or uncertain)	21206001
1323	Both parents	21206001
111	Neither parent (or uncertain)	21206002
1305	Both parents	21206002
84	Neither parent (or uncertain)	21206003
1437	Both parents	21206003
63	Neither parent (or uncertain)	21206004
1374	Both parents	21206004
60	Neither parent (or uncertain)	21206005
1548	Both parents	21206005
42	Neither parent (or uncertain)	21206006
1311	Both parents	21206006
120	Neither parent (or uncertain)	21206007
1263	Both parents	21206007
90	Neither parent (or uncertain)	21206008
1158	Both parents	21206008
66	Neither parent (or uncertain)	21206009
1182	Both parents	21206009
72	Neither parent (or uncertain)	21206010
1122	Both parents	21206010
48	Neither parent (or uncertain)	21206011
1464	Both parents	21206011
87	Neither parent (or uncertain)	21206012
1116	Both parents	21206012
90	Neither parent (or uncertain)	21206013
1344	Both parents	21206013
75	Neither parent (or uncertain)	21207001
1146	Both parents	21207001
75	Neither parent (or uncertain)	21207002
1287	Both parents	21207002
84	Neither parent (or uncertain)	21207003
1368	Both parents	21207003
93	Neither parent (or uncertain)	21207004
1848	Both parents	21207004
90	Neither parent (or uncertain)	21207005
1185	Both parents	21207005
48	Neither parent (or uncertain)	21207006
1431	Both parents	21207006
75	Neither parent (or uncertain)	21207007
1497	Both parents	21207007
78	Neither parent (or uncertain)	21207008
1809	Both parents	21207008
126	Neither parent (or uncertain)	21207009
2004	Both parents	21207009
138	Neither parent (or uncertain)	21207010
1170	Both parents	21207010
33	Neither parent (or uncertain)	21207011
474	Both parents	21207011
84	Neither parent (or uncertain)	21207012
1320	Both parents	21207012
93	Neither parent (or uncertain)	21207013
1659	Both parents	21207013
81	Neither parent (or uncertain)	21207014
1515	Both parents	21207014
78	Neither parent (or uncertain)	21207015
1233	Both parents	21207015
123	Neither parent (or uncertain)	21207016
1338	Both parents	21207016
57	Neither parent (or uncertain)	21207017
1254	Both parents	21207017
129	Neither parent (or uncertain)	21207018
1542	Both parents	21207018
66	Neither parent (or uncertain)	21207019
1263	Both parents	21207019
84	Neither parent (or uncertain)	21207020
1011	Both parents	21207020
81	Neither parent (or uncertain)	21207021
1419	Both parents	21207021
147	Neither parent (or uncertain)	21208001
1092	Both parents	21208001
48	Neither parent (or uncertain)	21208002
1035	Both parents	21208002
81	Neither parent (or uncertain)	21208003
720	Both parents	21208003
126	Neither parent (or uncertain)	21208004
2994	Both parents	21208004
144	Neither parent (or uncertain)	21301001
1755	Both parents	21301001
99	Neither parent (or uncertain)	21301002
1305	Both parents	21301002
81	Neither parent (or uncertain)	21301003
1050	Both parents	21301003
78	Neither parent (or uncertain)	21301004
1668	Both parents	21301004
51	Neither parent (or uncertain)	21301005
1515	Both parents	21301005
129	Neither parent (or uncertain)	21301006
3186	Both parents	21301006
69	Neither parent (or uncertain)	21301007
2442	Both parents	21301007
69	Neither parent (or uncertain)	21301008
1404	Both parents	21301008
78	Neither parent (or uncertain)	21301009
1560	Both parents	21301009
186	Neither parent (or uncertain)	21302001
1638	Both parents	21302001
159	Neither parent (or uncertain)	21302002
1341	Both parents	21302002
159	Neither parent (or uncertain)	21302003
1773	Both parents	21302003
159	Neither parent (or uncertain)	21302004
1539	Both parents	21302004
117	Neither parent (or uncertain)	21302005
1581	Both parents	21302005
72	Neither parent (or uncertain)	21303001
1044	Both parents	21303001
147	Neither parent (or uncertain)	21303002
1128	Both parents	21303002
96	Neither parent (or uncertain)	21303003
1575	Both parents	21303003
177	Neither parent (or uncertain)	21303004
1467	Both parents	21303004
135	Neither parent (or uncertain)	21304001
2520	Both parents	21304001
147	Neither parent (or uncertain)	21304002
1689	Both parents	21304002
108	Neither parent (or uncertain)	21304003
1620	Both parents	21304003
72	Neither parent (or uncertain)	21304004
1209	Both parents	21304004
126	Neither parent (or uncertain)	21304005
1230	Both parents	21304005
90	Neither parent (or uncertain)	21304006
1353	Both parents	21304006
249	Neither parent (or uncertain)	21304007
2682	Both parents	21304007
114	Neither parent (or uncertain)	21304008
1506	Both parents	21304008
153	Neither parent (or uncertain)	21304009
1620	Both parents	21304009
93	Neither parent (or uncertain)	21304010
1029	Both parents	21304010
117	Neither parent (or uncertain)	21304011
2046	Both parents	21304011
126	Neither parent (or uncertain)	21304012
1257	Both parents	21304012
141	Neither parent (or uncertain)	21304013
1221	Both parents	21304013
99	Neither parent (or uncertain)	21304014
1536	Both parents	21304014
72	Neither parent (or uncertain)	21304015
1086	Both parents	21304015
102	Neither parent (or uncertain)	21304016
1545	Both parents	21304016
129	Neither parent (or uncertain)	21304017
1842	Both parents	21304017
198	Neither parent (or uncertain)	21304018
3096	Both parents	21304018
144	Neither parent (or uncertain)	21304019
2145	Both parents	21304019
99	Neither parent (or uncertain)	21304020
1572	Both parents	21304020
84	Neither parent (or uncertain)	21304021
1410	Both parents	21304021
120	Neither parent (or uncertain)	21304022
1803	Both parents	21304022
69	Neither parent (or uncertain)	21304023
981	Both parents	21304023
72	Neither parent (or uncertain)	21304024
924	Both parents	21304024
114	Neither parent (or uncertain)	21304025
2181	Both parents	21304025
138	Neither parent (or uncertain)	21304026
1698	Both parents	21304026
159	Neither parent (or uncertain)	21304027
1581	Both parents	21304027
186	Neither parent (or uncertain)	21305001
1893	Both parents	21305001
132	Neither parent (or uncertain)	21305002
1242	Both parents	21305002
150	Neither parent (or uncertain)	21305003
1509	Both parents	21305003
147	Neither parent (or uncertain)	21305004
1806	Both parents	21305004
174	Neither parent (or uncertain)	21305005
2085	Both parents	21305005
141	Neither parent (or uncertain)	21305006
1818	Both parents	21305006
126	Neither parent (or uncertain)	21305007
1677	Both parents	21305007
174	Neither parent (or uncertain)	21305008
1728	Both parents	21305008
114	Neither parent (or uncertain)	21305009
1413	Both parents	21305009
111	Neither parent (or uncertain)	21305010
1539	Both parents	21305010
81	Neither parent (or uncertain)	21305011
1383	Both parents	21305011
162	Neither parent (or uncertain)	21305012
1542	Both parents	21305012
153	Neither parent (or uncertain)	21305013
1959	Both parents	21305013
90	Neither parent (or uncertain)	21305014
1815	Both parents	21305014
132	Neither parent (or uncertain)	21305015
1716	Both parents	21305015
174	Neither parent (or uncertain)	21305016
2160	Both parents	21305016
183	Neither parent (or uncertain)	21305017
1629	Both parents	21305017
174	Neither parent (or uncertain)	21305018
1716	Both parents	21305018
135	Neither parent (or uncertain)	21305019
1353	Both parents	21305019
114	Neither parent (or uncertain)	21305020
1494	Both parents	21305020
150	Neither parent (or uncertain)	21305021
2130	Both parents	21305021
120	Neither parent (or uncertain)	21306001
1656	Both parents	21306001
165	Neither parent (or uncertain)	21306002
1323	Both parents	21306002
117	Neither parent (or uncertain)	21306003
1671	Both parents	21306003
96	Neither parent (or uncertain)	21306004
1728	Both parents	21306004
201	Neither parent (or uncertain)	21306005
2358	Both parents	21306005
177	Neither parent (or uncertain)	21306006
1824	Both parents	21306006
171	Neither parent (or uncertain)	21306007
1956	Both parents	21306007
129	Neither parent (or uncertain)	21306008
1962	Both parents	21306008
114	Neither parent (or uncertain)	21306009
1581	Both parents	21306009
117	Neither parent (or uncertain)	21306010
1389	Both parents	21306010
147	Neither parent (or uncertain)	21306011
1806	Both parents	21306011
135	Neither parent (or uncertain)	21306012
1692	Both parents	21306012
120	Neither parent (or uncertain)	21306013
1416	Both parents	21306013
312	Neither parent (or uncertain)	21306014
1659	Both parents	21306014
144	Neither parent (or uncertain)	21306015
1629	Both parents	21306015
135	Neither parent (or uncertain)	21306016
1557	Both parents	21306016
123	Neither parent (or uncertain)	21306017
1488	Both parents	21306017
213	Neither parent (or uncertain)	21307001
1458	Both parents	21307001
177	Neither parent (or uncertain)	21307002
1647	Both parents	21307002
84	Neither parent (or uncertain)	21307003
1467	Both parents	21307003
309	Neither parent (or uncertain)	21307004
1830	Both parents	21307004
171	Neither parent (or uncertain)	21307005
2163	Both parents	21307005
159	Neither parent (or uncertain)	21307006
2301	Both parents	21307006
165	Neither parent (or uncertain)	21307007
2157	Both parents	21307007
210	Neither parent (or uncertain)	21307008
2073	Both parents	21307008
135	Neither parent (or uncertain)	21307009
1821	Both parents	21307009
252	Neither parent (or uncertain)	21307010
2436	Both parents	21307010
111	Neither parent (or uncertain)	21307011
1140	Both parents	21307011
231	Neither parent (or uncertain)	21307012
1824	Both parents	21307012
198	Neither parent (or uncertain)	21307013
2334	Both parents	21307013
201	Neither parent (or uncertain)	21307014
2163	Both parents	21307014
297	Neither parent (or uncertain)	21307015
2628	Both parents	21307015
147	Neither parent (or uncertain)	21307016
2028	Both parents	21307016
306	Neither parent (or uncertain)	21307017
2355	Both parents	21307017
162	Neither parent (or uncertain)	21307018
2604	Both parents	21307018
252	Neither parent (or uncertain)	21307019
2478	Both parents	21307019
291	Neither parent (or uncertain)	21307020
1878	Both parents	21307020
333	Neither parent (or uncertain)	21308001
1683	Both parents	21308001
273	Neither parent (or uncertain)	21308002
1836	Both parents	21308002
225	Neither parent (or uncertain)	21308003
1929	Both parents	21308003
126	Neither parent (or uncertain)	21308004
1218	Both parents	21308004
150	Neither parent (or uncertain)	21308005
2301	Both parents	21308005
138	Neither parent (or uncertain)	21308006
1404	Both parents	21308006
129	Neither parent (or uncertain)	21308007
1473	Both parents	21308007
147	Neither parent (or uncertain)	21308008
1587	Both parents	21308008
165	Neither parent (or uncertain)	21308009
1419	Both parents	21308009
270	Neither parent (or uncertain)	21401001
2259	Both parents	21401001
276	Neither parent (or uncertain)	21401002
2130	Both parents	21401002
174	Neither parent (or uncertain)	21401003
1974	Both parents	21401003
174	Neither parent (or uncertain)	21401004
1464	Both parents	21401004
243	Neither parent (or uncertain)	21401005
1845	Both parents	21401005
186	Neither parent (or uncertain)	21401006
1122	Both parents	21401006
159	Neither parent (or uncertain)	21401007
1839	Both parents	21401007
159	Neither parent (or uncertain)	21401008
1485	Both parents	21401008
228	Neither parent (or uncertain)	21401009
2496	Both parents	21401009
228	Neither parent (or uncertain)	21401010
2100	Both parents	21401010
225	Neither parent (or uncertain)	21401011
1932	Both parents	21401011
237	Neither parent (or uncertain)	21401012
1905	Both parents	21401012
300	Neither parent (or uncertain)	21401013
2160	Both parents	21401013
186	Neither parent (or uncertain)	21401014
1761	Both parents	21401014
261	Neither parent (or uncertain)	21401015
2028	Both parents	21401015
234	Neither parent (or uncertain)	21401016
1494	Both parents	21401016
162	Neither parent (or uncertain)	21401017
1527	Both parents	21401017
138	Neither parent (or uncertain)	21402001
1692	Both parents	21402001
306	Neither parent (or uncertain)	21402002
2499	Both parents	21402002
126	Neither parent (or uncertain)	21402003
1173	Both parents	21402003
126	Neither parent (or uncertain)	21402004
1071	Both parents	21402004
177	Neither parent (or uncertain)	21402005
1134	Both parents	21402005
156	Neither parent (or uncertain)	21402006
1500	Both parents	21402006
177	Neither parent (or uncertain)	21402007
1671	Both parents	21402007
240	Neither parent (or uncertain)	21402008
2343	Both parents	21402008
147	Neither parent (or uncertain)	21402009
1602	Both parents	21402009
141	Neither parent (or uncertain)	21402010
2367	Both parents	21402010
138	Neither parent (or uncertain)	21402011
1911	Both parents	21402011
102	Neither parent (or uncertain)	21402012
1296	Both parents	21402012
219	Neither parent (or uncertain)	21402013
1554	Both parents	21402013
162	Neither parent (or uncertain)	21402014
1836	Both parents	21402014
117	Neither parent (or uncertain)	21402015
1341	Both parents	21402015
81	Neither parent (or uncertain)	21402016
1485	Both parents	21402016
105	Neither parent (or uncertain)	21402017
1560	Both parents	21402017
129	Neither parent (or uncertain)	21402018
1410	Both parents	21402018
222	Neither parent (or uncertain)	21402019
1797	Both parents	21402019
108	Neither parent (or uncertain)	21403001
1965	Both parents	21403001
174	Neither parent (or uncertain)	21403002
2499	Both parents	21403002
111	Neither parent (or uncertain)	21403003
1278	Both parents	21403003
117	Neither parent (or uncertain)	21403004
1830	Both parents	21403004
84	Neither parent (or uncertain)	21403005
1080	Both parents	21403005
228	Neither parent (or uncertain)	21403006
2442	Both parents	21403006
81	Neither parent (or uncertain)	21404001
1800	Both parents	21404001
90	Neither parent (or uncertain)	21404002
1248	Both parents	21404002
123	Neither parent (or uncertain)	21404003
2160	Both parents	21404003
114	Neither parent (or uncertain)	21404004
1206	Both parents	21404004
135	Neither parent (or uncertain)	21404005
2142	Both parents	21404005
171	Neither parent (or uncertain)	21503001
2172	Both parents	21503001
477	Neither parent (or uncertain)	21503002
3072	Both parents	21503002
222	Neither parent (or uncertain)	21503003
2442	Both parents	21503003
246	Neither parent (or uncertain)	21503004
2715	Both parents	21503004
378	Neither parent (or uncertain)	21503005
2559	Both parents	21503005
240	Neither parent (or uncertain)	21503006
2664	Both parents	21503006
306	Neither parent (or uncertain)	21503007
3090	Both parents	21503007
243	Neither parent (or uncertain)	21503008
2082	Both parents	21503008
345	Neither parent (or uncertain)	21503009
2367	Both parents	21503009
273	Neither parent (or uncertain)	21503010
2700	Both parents	21503010
276	Neither parent (or uncertain)	21503011
2832	Both parents	21503011
372	Neither parent (or uncertain)	21503012
2208	Both parents	21503012
252	Neither parent (or uncertain)	21503013
2538	Both parents	21503013
180	Neither parent (or uncertain)	21503014
2355	Both parents	21503014
111	Neither parent (or uncertain)	21503015
1455	Both parents	21503015
189	Neither parent (or uncertain)	21503016
2466	Both parents	21503016
237	Neither parent (or uncertain)	21503017
2079	Both parents	21503017
204	Neither parent (or uncertain)	21503018
2709	Both parents	21503018
294	Neither parent (or uncertain)	21503019
2928	Both parents	21503019
294	Neither parent (or uncertain)	21503020
2928	Both parents	21503020
303	Neither parent (or uncertain)	21503021
3210	Both parents	21503021
252	Neither parent (or uncertain)	21503022
2505	Both parents	21503022
228	Neither parent (or uncertain)	21503023
1938	Both parents	21503023
258	Neither parent (or uncertain)	21503024
2358	Both parents	21503024
387	Neither parent (or uncertain)	21503025
2538	Both parents	21503025
402	Neither parent (or uncertain)	21503026
2589	Both parents	21503026
240	Neither parent (or uncertain)	21503027
1881	Both parents	21503027
408	Neither parent (or uncertain)	21503028
3024	Both parents	21503028
345	Neither parent (or uncertain)	21503029
3060	Both parents	21503029
408	Neither parent (or uncertain)	21503030
3441	Both parents	21503030
273	Neither parent (or uncertain)	21503031
2751	Both parents	21503031
192	Neither parent (or uncertain)	21504001
2877	Both parents	21504001
255	Neither parent (or uncertain)	21504002
2556	Both parents	21504002
255	Neither parent (or uncertain)	21504003
2631	Both parents	21504003
147	Neither parent (or uncertain)	21504004
2061	Both parents	21504004
189	Neither parent (or uncertain)	21504005
1878	Both parents	21504005
132	Neither parent (or uncertain)	21504006
1140	Both parents	21504006
183	Neither parent (or uncertain)	21504007
2442	Both parents	21504007
153	Neither parent (or uncertain)	21504008
1965	Both parents	21504008
138	Neither parent (or uncertain)	21504009
1731	Both parents	21504009
282	Neither parent (or uncertain)	21504010
2625	Both parents	21504010
267	Neither parent (or uncertain)	21504011
2670	Both parents	21504011
402	Neither parent (or uncertain)	21504012
2511	Both parents	21504012
207	Neither parent (or uncertain)	21504013
2565	Both parents	21504013
264	Neither parent (or uncertain)	21504014
1968	Both parents	21504014
216	Neither parent (or uncertain)	21504015
867	Both parents	21504015
177	Neither parent (or uncertain)	21504016
1977	Both parents	21504016
396	Neither parent (or uncertain)	21504017
2163	Both parents	21504017
216	Neither parent (or uncertain)	21504018
2643	Both parents	21504018
273	Neither parent (or uncertain)	21504019
3240	Both parents	21504019
249	Neither parent (or uncertain)	21504020
3087	Both parents	21504020
201	Neither parent (or uncertain)	21505001
3165	Both parents	21505001
195	Neither parent (or uncertain)	21505002
2571	Both parents	21505002
153	Neither parent (or uncertain)	21505003
2151	Both parents	21505003
189	Neither parent (or uncertain)	21505004
2238	Both parents	21505004
207	Neither parent (or uncertain)	21505005
2253	Both parents	21505005
288	Neither parent (or uncertain)	21505006
3144	Both parents	21505006
231	Neither parent (or uncertain)	21505007
2151	Both parents	21505007
168	Neither parent (or uncertain)	21505008
2238	Both parents	21505008
360	Neither parent (or uncertain)	21505009
2514	Both parents	21505009
213	Neither parent (or uncertain)	21505010
2514	Both parents	21505010
219	Neither parent (or uncertain)	21505011
3366	Both parents	21505011
177	Neither parent (or uncertain)	21505012
2256	Both parents	21505012
225	Neither parent (or uncertain)	21505013
1962	Both parents	21505013
186	Neither parent (or uncertain)	21505014
2178	Both parents	21505014
246	Neither parent (or uncertain)	21505015
3078	Both parents	21505015
249	Neither parent (or uncertain)	21505016
2709	Both parents	21505016
288	Neither parent (or uncertain)	21505017
2820	Both parents	21505017
204	Neither parent (or uncertain)	21505018
2700	Both parents	21505018
414	Neither parent (or uncertain)	21505019
3144	Both parents	21505019
327	Neither parent (or uncertain)	21505020
3135	Both parents	21505020
243	Neither parent (or uncertain)	21505021
1647	Both parents	21505021
234	Neither parent (or uncertain)	21505022
3468	Both parents	21505022
186	Neither parent (or uncertain)	21505023
3009	Both parents	21505023
225	Neither parent (or uncertain)	21505024
2073	Both parents	21505024
201	Neither parent (or uncertain)	21505025
2493	Both parents	21505025
216	Neither parent (or uncertain)	21505026
3591	Both parents	21505026
192	Neither parent (or uncertain)	21505027
2088	Both parents	21505027
273	Neither parent (or uncertain)	21505028
2586	Both parents	21505028
195	Neither parent (or uncertain)	21505029
2643	Both parents	21505029
273	Neither parent (or uncertain)	21505030
2640	Both parents	21505030
174	Neither parent (or uncertain)	21505031
2271	Both parents	21505031
195	Neither parent (or uncertain)	21506001
2025	Both parents	21506001
96	Neither parent (or uncertain)	21506002
1704	Both parents	21506002
117	Neither parent (or uncertain)	21506003
1959	Both parents	21506003
132	Neither parent (or uncertain)	21506004
1788	Both parents	21506004
186	Neither parent (or uncertain)	21506005
1518	Both parents	21506005
228	Neither parent (or uncertain)	21506006
2571	Both parents	21506006
96	Neither parent (or uncertain)	21506007
1449	Both parents	21506007
378	Neither parent (or uncertain)	21506008
2109	Both parents	21506008
114	Neither parent (or uncertain)	21506009
1476	Both parents	21506009
165	Neither parent (or uncertain)	21506010
1725	Both parents	21506010
255	Neither parent (or uncertain)	21506011
2016	Both parents	21506011
246	Neither parent (or uncertain)	21506012
2133	Both parents	21506012
171	Neither parent (or uncertain)	21506013
2451	Both parents	21506013
177	Neither parent (or uncertain)	21506014
2094	Both parents	21506014
237	Neither parent (or uncertain)	21506015
2130	Both parents	21506015
177	Neither parent (or uncertain)	21506016
2061	Both parents	21506016
216	Neither parent (or uncertain)	21506017
2136	Both parents	21506017
129	Neither parent (or uncertain)	21506018
1947	Both parents	21506018
144	Neither parent (or uncertain)	21506019
1896	Both parents	21506019
120	Neither parent (or uncertain)	21506020
1446	Both parents	21506020
135	Neither parent (or uncertain)	21506021
1515	Both parents	21506021
162	Neither parent (or uncertain)	21506022
1464	Both parents	21506022
153	Neither parent (or uncertain)	21506023
1917	Both parents	21506023
186	Neither parent (or uncertain)	21506024
2214	Both parents	21506024
189	Neither parent (or uncertain)	21506025
1902	Both parents	21506025
84	Neither parent (or uncertain)	21506026
1467	Both parents	21506026
252	Neither parent (or uncertain)	21507001
2325	Both parents	21507001
123	Neither parent (or uncertain)	21507002
1947	Both parents	21507002
156	Neither parent (or uncertain)	21507003
2601	Both parents	21507003
258	Neither parent (or uncertain)	21507004
3846	Both parents	21507004
381	Neither parent (or uncertain)	21507005
984	Both parents	21507005
285	Neither parent (or uncertain)	21507006
2010	Both parents	21507006
48	Neither parent (or uncertain)	21507007
330	Both parents	21507007
342	Neither parent (or uncertain)	21507008
2232	Both parents	21507008
165	Neither parent (or uncertain)	21507009
2778	Both parents	21507009
243	Neither parent (or uncertain)	21507010
2604	Both parents	21507010
468	Neither parent (or uncertain)	21507011
5067	Both parents	21507011
174	Neither parent (or uncertain)	21507012
3456	Both parents	21507012
126	Neither parent (or uncertain)	21507013
2136	Both parents	21507013
225	Neither parent (or uncertain)	21507014
2736	Both parents	21507014
228	Neither parent (or uncertain)	21507015
2862	Both parents	21507015
258	Neither parent (or uncertain)	21507016
3603	Both parents	21507016
318	Neither parent (or uncertain)	21507017
3105	Both parents	21507017
279	Neither parent (or uncertain)	21507018
3063	Both parents	21507018
321	Neither parent (or uncertain)	21507019
3432	Both parents	21507019
297	Neither parent (or uncertain)	21507020
3924	Both parents	21507020
285	Neither parent (or uncertain)	21507021
3954	Both parents	21507021
321	Neither parent (or uncertain)	21507022
3957	Both parents	21507022
339	Neither parent (or uncertain)	21507023
4125	Both parents	21507023
279	Neither parent (or uncertain)	21507024
4926	Both parents	21507024
417	Neither parent (or uncertain)	21507025
5850	Both parents	21507025
285	Neither parent (or uncertain)	21507026
3081	Both parents	21507026
300	Neither parent (or uncertain)	21507027
3876	Both parents	21507027
219	Neither parent (or uncertain)	21507028
3423	Both parents	21507028
300	Neither parent (or uncertain)	21507029
3240	Both parents	21507029
210	Neither parent (or uncertain)	21507030
2811	Both parents	21507030
231	Neither parent (or uncertain)	21507031
3453	Both parents	21507031
318	Neither parent (or uncertain)	21507032
3474	Both parents	21507032
216	Neither parent (or uncertain)	21507033
3078	Both parents	21507033
354	Neither parent (or uncertain)	21507034
3102	Both parents	21507034
270	Neither parent (or uncertain)	21507035
2739	Both parents	21507035
147	Neither parent (or uncertain)	24401001
1521	Both parents	24401001
282	Neither parent (or uncertain)	24401002
3654	Both parents	24401002
249	Neither parent (or uncertain)	24401003
1971	Both parents	24401003
342	Neither parent (or uncertain)	24401004
1905	Both parents	24401004
351	Neither parent (or uncertain)	24401005
2334	Both parents	24401005
162	Neither parent (or uncertain)	24401006
1929	Both parents	24401006
303	Neither parent (or uncertain)	24401007
2001	Both parents	24401007
300	Neither parent (or uncertain)	24401008
2760	Both parents	24401008
249	Neither parent (or uncertain)	24401009
1725	Both parents	24401009
252	Neither parent (or uncertain)	24401010
2199	Both parents	24401010
372	Neither parent (or uncertain)	24401011
3039	Both parents	24401011
225	Neither parent (or uncertain)	24401012
1563	Both parents	24401012
348	Neither parent (or uncertain)	24401013
1758	Both parents	24401013
243	Neither parent (or uncertain)	24401014
1344	Both parents	24401014
276	Neither parent (or uncertain)	24401015
1587	Both parents	24401015
234	Neither parent (or uncertain)	24401016
1482	Both parents	24401016
261	Neither parent (or uncertain)	24401017
1947	Both parents	24401017
225	Neither parent (or uncertain)	24401018
1716	Both parents	24401018
36	Neither parent (or uncertain)	24401019
867	Both parents	24401019
234	Neither parent (or uncertain)	24401020
3081	Both parents	24401020
300	Neither parent (or uncertain)	24401021
1794	Both parents	24401021
186	Neither parent (or uncertain)	24401022
1527	Both parents	24401022
147	Neither parent (or uncertain)	24401023
1713	Both parents	24401023
195	Neither parent (or uncertain)	24401024
1269	Both parents	24401024
261	Neither parent (or uncertain)	24401025
1857	Both parents	24401025
201	Neither parent (or uncertain)	24401026
2385	Both parents	24401026
201	Neither parent (or uncertain)	24402001
2145	Both parents	24402001
165	Neither parent (or uncertain)	24402002
1725	Both parents	24402002
264	Neither parent (or uncertain)	24402003
2583	Both parents	24402003
270	Neither parent (or uncertain)	24402004
2091	Both parents	24402004
141	Neither parent (or uncertain)	24402005
1614	Both parents	24402005
195	Neither parent (or uncertain)	24402006
1899	Both parents	24402006
207	Neither parent (or uncertain)	24402007
1845	Both parents	24402007
213	Neither parent (or uncertain)	24402008
1608	Both parents	24402008
171	Neither parent (or uncertain)	24402009
1509	Both parents	24402009
219	Neither parent (or uncertain)	24402010
2250	Both parents	24402010
225	Neither parent (or uncertain)	24402011
2166	Both parents	24402011
156	Neither parent (or uncertain)	24402012
1785	Both parents	24402012
240	Neither parent (or uncertain)	24402013
1653	Both parents	24402013
192	Neither parent (or uncertain)	24402014
1941	Both parents	24402014
177	Neither parent (or uncertain)	24402015
1683	Both parents	24402015
201	Neither parent (or uncertain)	24402016
1926	Both parents	24402016
276	Neither parent (or uncertain)	24402017
1884	Both parents	24402017
120	Neither parent (or uncertain)	24402018
1251	Both parents	24402018
195	Neither parent (or uncertain)	24402019
2130	Both parents	24402019
168	Neither parent (or uncertain)	24402020
2130	Both parents	24402020
129	Neither parent (or uncertain)	24402021
1836	Both parents	24402021
231	Neither parent (or uncertain)	24402022
1953	Both parents	24402022
246	Neither parent (or uncertain)	24402023
1824	Both parents	24402023
204	Neither parent (or uncertain)	24402024
1722	Both parents	24402024
177	Neither parent (or uncertain)	24402025
1734	Both parents	24402025
174	Neither parent (or uncertain)	24402026
2067	Both parents	24402026
162	Neither parent (or uncertain)	24402027
1362	Both parents	24402027
129	Neither parent (or uncertain)	24403001
1854	Both parents	24403001
237	Neither parent (or uncertain)	24403002
2487	Both parents	24403002
180	Neither parent (or uncertain)	24403003
2412	Both parents	24403003
189	Neither parent (or uncertain)	24403004
2139	Both parents	24403004
243	Neither parent (or uncertain)	24403005
2631	Both parents	24403005
339	Neither parent (or uncertain)	24403006
3639	Both parents	24403006
480	Neither parent (or uncertain)	24403007
2289	Both parents	24403007
333	Neither parent (or uncertain)	24403008
2511	Both parents	24403008
396	Neither parent (or uncertain)	24403009
4191	Both parents	24403009
426	Neither parent (or uncertain)	24403010
2880	Both parents	24403010
450	Neither parent (or uncertain)	24403011
2541	Both parents	24403011
543	Neither parent (or uncertain)	24403012
2457	Both parents	24403012
237	Neither parent (or uncertain)	24403013
2205	Both parents	24403013
414	Neither parent (or uncertain)	24403014
3039	Both parents	24403014
321	Neither parent (or uncertain)	24403015
2958	Both parents	24403015
345	Neither parent (or uncertain)	24403016
2634	Both parents	24403016
390	Neither parent (or uncertain)	24403017
3546	Both parents	24403017
237	Neither parent (or uncertain)	24403018
2871	Both parents	24403018
525	Neither parent (or uncertain)	24403019
2934	Both parents	24403019
321	Neither parent (or uncertain)	24403020
3015	Both parents	24403020
150	Neither parent (or uncertain)	24403021
2181	Both parents	24403021
330	Neither parent (or uncertain)	24403022
2820	Both parents	24403022
357	Neither parent (or uncertain)	24403023
3393	Both parents	24403023
183	Neither parent (or uncertain)	24403024
1605	Both parents	24403024
405	Neither parent (or uncertain)	24403025
4035	Both parents	24403025
267	Neither parent (or uncertain)	24403026
2304	Both parents	24403026
285	Neither parent (or uncertain)	24403027
2967	Both parents	24403027
345	Neither parent (or uncertain)	24403028
2163	Both parents	24403028
315	Neither parent (or uncertain)	24403029
2451	Both parents	24403029
327	Neither parent (or uncertain)	24403030
2820	Both parents	24403030
360	Neither parent (or uncertain)	24403031
2337	Both parents	24403031
141	Neither parent (or uncertain)	24404001
1914	Both parents	24404001
153	Neither parent (or uncertain)	24404002
2034	Both parents	24404002
219	Neither parent (or uncertain)	24404003
1674	Both parents	24404003
138	Neither parent (or uncertain)	24404004
1800	Both parents	24404004
138	Neither parent (or uncertain)	24404005
1929	Both parents	24404005
213	Neither parent (or uncertain)	24404006
1980	Both parents	24404006
273	Neither parent (or uncertain)	24404007
2145	Both parents	24404007
210	Neither parent (or uncertain)	24404008
1887	Both parents	24404008
132	Neither parent (or uncertain)	24404009
1845	Both parents	24404009
150	Neither parent (or uncertain)	24404010
1455	Both parents	24404010
174	Neither parent (or uncertain)	24404011
1707	Both parents	24404011
219	Neither parent (or uncertain)	24404012
1725	Both parents	24404012
261	Neither parent (or uncertain)	24404013
2409	Both parents	24404013
240	Neither parent (or uncertain)	24404014
1542	Both parents	24404014
156	Neither parent (or uncertain)	24404015
1659	Both parents	24404015
288	Neither parent (or uncertain)	24404016
2568	Both parents	24404016
177	Neither parent (or uncertain)	24404017
2385	Both parents	24404017
234	Neither parent (or uncertain)	24404018
2610	Both parents	24404018
102	Neither parent (or uncertain)	29200001
2910	Both parents	29200001
48	Neither parent (or uncertain)	29200002
2319	Both parents	29200002
252	Neither parent (or uncertain)	29200003
2376	Both parents	29200003
102	Neither parent (or uncertain)	29200004
2280	Both parents	29200004
132	Neither parent (or uncertain)	29200005
3675	Both parents	29200005
186	Neither parent (or uncertain)	29200006
3228	Both parents	29200006
105	Neither parent (or uncertain)	29200007
2484	Both parents	29200007
84	Neither parent (or uncertain)	29200008
2304	Both parents	29200008
153	Neither parent (or uncertain)	29200009
3939	Both parents	29200009
216	Neither parent (or uncertain)	29200010
4647	Both parents	29200010
174	Neither parent (or uncertain)	29200011
3264	Both parents	29200011
180	Neither parent (or uncertain)	29200012
3207	Both parents	29200012
180	Neither parent (or uncertain)	29200013
6849	Both parents	29200013
138	Neither parent (or uncertain)	29200014
1914	Both parents	29200014
153	Neither parent (or uncertain)	29200015
2124	Both parents	29200015
171	Neither parent (or uncertain)	29200016
5832	Both parents	29200016
171	Neither parent (or uncertain)	29200017
3672	Both parents	29200017
93	Neither parent (or uncertain)	29200018
1671	Both parents	29200018
63	Neither parent (or uncertain)	29200019
2808	Both parents	29200019
141	Neither parent (or uncertain)	29200020
2229	Both parents	29200020
213	Neither parent (or uncertain)	29200021
2955	Both parents	29200021
153	Neither parent (or uncertain)	29200022
3489	Both parents	29200022
138	Neither parent (or uncertain)	29200023
3537	Both parents	29200023
174	Neither parent (or uncertain)	29200024
3495	Both parents	29200024
150	Neither parent (or uncertain)	29200025
2883	Both parents	29200025
180	Neither parent (or uncertain)	29200026
4227	Both parents	29200026
60	Neither parent (or uncertain)	29200027
1917	Both parents	29200027
63	Neither parent (or uncertain)	29200028
3381	Both parents	29200028
201	Neither parent (or uncertain)	29200029
4377	Both parents	29200029
156	Neither parent (or uncertain)	29200030
2766	Both parents	29200030
177	Neither parent (or uncertain)	29200031
4470	Both parents	29200031
207	Neither parent (or uncertain)	29200032
3789	Both parents	29200032
201	Neither parent (or uncertain)	29200033
3984	Both parents	29200033
204	Neither parent (or uncertain)	29200034
3222	Both parents	29200034
174	Neither parent (or uncertain)	29200035
3366	Both parents	29200035
297	Neither parent (or uncertain)	29200036
3906	Both parents	29200036
222	Neither parent (or uncertain)	29200037
2856	Both parents	29200037
309	Neither parent (or uncertain)	29200038
3657	Both parents	29200038
165	Neither parent (or uncertain)	29200039
3876	Both parents	29200039
159	Neither parent (or uncertain)	29200040
2847	Both parents	29200040
105	Neither parent (or uncertain)	29200041
2388	Both parents	29200041
240	Neither parent (or uncertain)	29200042
2946	Both parents	29200042
249	Neither parent (or uncertain)	29200043
3957	Both parents	29200043
252	Neither parent (or uncertain)	29200044
5115	Both parents	29200044
147	Neither parent (or uncertain)	29200045
3042	Both parents	29200045
120	Neither parent (or uncertain)	29200046
3636	Both parents	29200046
102	Neither parent (or uncertain)	29200047
1503	Both parents	29200047
111	Neither parent (or uncertain)	29200048
2646	Both parents	29200048
228	Neither parent (or uncertain)	29200049
2817	Both parents	29200049
102	Neither parent (or uncertain)	29200050
2508	Both parents	29200050
162	Neither parent (or uncertain)	29300001
2280	Both parents	29300001
105	Neither parent (or uncertain)	29300002
2424	Both parents	29300002
96	Neither parent (or uncertain)	29300003
2106	Both parents	29300003
204	Neither parent (or uncertain)	29300004
5823	Both parents	29300004
141	Neither parent (or uncertain)	29300005
2625	Both parents	29300005
66	Neither parent (or uncertain)	29300006
2373	Both parents	29300006
96	Neither parent (or uncertain)	29300007
3288	Both parents	29300007
39	Neither parent (or uncertain)	29300008
3561	Both parents	29300008
39	Neither parent (or uncertain)	29300009
2517	Both parents	29300009
102	Neither parent (or uncertain)	29300010
3891	Both parents	29300010
111	Neither parent (or uncertain)	29300011
3411	Both parents	29300011
78	Neither parent (or uncertain)	29300012
5505	Both parents	29300012
195	Neither parent (or uncertain)	29300013
5853	Both parents	29300013
138	Neither parent (or uncertain)	29300014
2367	Both parents	29300014
180	Neither parent (or uncertain)	29300015
3192	Both parents	29300015
108	Neither parent (or uncertain)	29300016
1815	Both parents	29300016
186	Neither parent (or uncertain)	29300017
3183	Both parents	29300017
174	Neither parent (or uncertain)	29300018
3603	Both parents	29300018
93	Neither parent (or uncertain)	29300019
2406	Both parents	29300019
108	Neither parent (or uncertain)	29300020
2313	Both parents	29300020
210	Neither parent (or uncertain)	29300021
2526	Both parents	29300021
222	Neither parent (or uncertain)	29300022
2919	Both parents	29300022
135	Neither parent (or uncertain)	29300023
2862	Both parents	29300023
222	Neither parent (or uncertain)	29300024
3000	Both parents	29300024
771	Neither parent (or uncertain)	29300025
2898	Both parents	29300025
195	Neither parent (or uncertain)	29300026
2241	Both parents	29300026
198	Neither parent (or uncertain)	29300027
3045	Both parents	29300027
183	Neither parent (or uncertain)	29300028
3693	Both parents	29300028
78	Neither parent (or uncertain)	29300029
5271	Both parents	29300029
126	Neither parent (or uncertain)	29300030
3144	Both parents	29300030
129	Neither parent (or uncertain)	29300031
5226	Both parents	29300031
207	Neither parent (or uncertain)	29300032
5211	Both parents	29300032
252	Neither parent (or uncertain)	29300033
4080	Both parents	29300033
84	Neither parent (or uncertain)	29300034
5484	Both parents	29300034
114	Neither parent (or uncertain)	29300035
4797	Both parents	29300035
114	Neither parent (or uncertain)	29300036
3180	Both parents	29300036
126	Neither parent (or uncertain)	29300037
5319	Both parents	29300037
108	Neither parent (or uncertain)	29300038
4659	Both parents	29300038
39	Neither parent (or uncertain)	29300039
3000	Both parents	29300039
258	Neither parent (or uncertain)	29300040
5901	Both parents	29300040
357	Neither parent (or uncertain)	29300041
13095	Both parents	29300041
237	Neither parent (or uncertain)	29300042
4542	Both parents	29300042
159	Neither parent (or uncertain)	29300043
3630	Both parents	29300043
324	Neither parent (or uncertain)	29300044
6054	Both parents	29300044
135	Neither parent (or uncertain)	29300045
5520	Both parents	29300045
183	Neither parent (or uncertain)	29300046
3951	Both parents	29300046
198	Neither parent (or uncertain)	29300047
3264	Both parents	29300047
156	Neither parent (or uncertain)	29300048
3798	Both parents	29300048
99	Neither parent (or uncertain)	29300049
4563	Both parents	29300049
255	Neither parent (or uncertain)	29300050
6297	Both parents	29300050
225	Neither parent (or uncertain)	29300051
4263	Both parents	29300051
243	Neither parent (or uncertain)	29300052
4956	Both parents	29300052
147	Neither parent (or uncertain)	29300053
7341	Both parents	29300053
243	Neither parent (or uncertain)	29300054
6060	Both parents	29300054
267	Neither parent (or uncertain)	29300055
6474	Both parents	29300055
252	Neither parent (or uncertain)	29300056
5562	Both parents	29300056
171	Neither parent (or uncertain)	29300057
3822	Both parents	29300057
192	Neither parent (or uncertain)	29300058
3627	Both parents	29300058
108	Neither parent (or uncertain)	29300059
3810	Both parents	29300059
186	Neither parent (or uncertain)	29300060
5337	Both parents	29300060
69	Neither parent (or uncertain)	41601001
1653	Both parents	41601001
132	Neither parent (or uncertain)	41601002
1719	Both parents	41601002
69	Neither parent (or uncertain)	41601003
1704	Both parents	41601003
66	Neither parent (or uncertain)	41601004
1566	Both parents	41601004
156	Neither parent (or uncertain)	41601005
1230	Both parents	41601005
96	Neither parent (or uncertain)	41601006
1470	Both parents	41601006
96	Neither parent (or uncertain)	41602001
1461	Both parents	41602001
72	Neither parent (or uncertain)	41602002
1536	Both parents	41602002
135	Neither parent (or uncertain)	41602003
1473	Both parents	41602003
201	Neither parent (or uncertain)	41602004
1311	Both parents	41602004
105	Neither parent (or uncertain)	41602005
1371	Both parents	41602005
132	Neither parent (or uncertain)	41602006
1374	Both parents	41602006
72	Neither parent (or uncertain)	41602007
1422	Both parents	41602007
141	Neither parent (or uncertain)	41602008
1563	Both parents	41602008
171	Neither parent (or uncertain)	41603001
1623	Both parents	41603001
246	Neither parent (or uncertain)	41603002
1812	Both parents	41603002
126	Neither parent (or uncertain)	41603003
1563	Both parents	41603003
42	Neither parent (or uncertain)	41603004
735	Both parents	41603004
99	Neither parent (or uncertain)	41603005
1071	Both parents	41603005
87	Neither parent (or uncertain)	41603006
1518	Both parents	41603006
156	Neither parent (or uncertain)	41604001
2250	Both parents	41604001
99	Neither parent (or uncertain)	41604002
1236	Both parents	41604002
90	Neither parent (or uncertain)	41604003
1284	Both parents	41604003
120	Neither parent (or uncertain)	41604004
1200	Both parents	41604004
138	Neither parent (or uncertain)	41801001
888	Both parents	41801001
96	Neither parent (or uncertain)	41801002
1938	Both parents	41801002
105	Neither parent (or uncertain)	41801003
1713	Both parents	41801003
147	Neither parent (or uncertain)	41801004
861	Both parents	41801004
216	Neither parent (or uncertain)	41801005
2568	Both parents	41801005
51	Neither parent (or uncertain)	41801006
390	Both parents	41801006
141	Neither parent (or uncertain)	41801007
1524	Both parents	41801007
144	Neither parent (or uncertain)	41801008
1218	Both parents	41801008
132	Neither parent (or uncertain)	41801009
2076	Both parents	41801009
159	Neither parent (or uncertain)	41801010
1023	Both parents	41801010
90	Neither parent (or uncertain)	41802001
1719	Both parents	41802001
294	Neither parent (or uncertain)	41802002
2187	Both parents	41802002
111	Neither parent (or uncertain)	41802003
2358	Both parents	41802003
48	Neither parent (or uncertain)	41802004
1143	Both parents	41802004
117	Neither parent (or uncertain)	41803001
1377	Both parents	41803001
111	Neither parent (or uncertain)	41803002
1218	Both parents	41803002
177	Neither parent (or uncertain)	41803003
1503	Both parents	41803003
126	Neither parent (or uncertain)	41803004
2061	Both parents	41803004
51	Neither parent (or uncertain)	41803005
1932	Both parents	41803005
174	Neither parent (or uncertain)	41803006
1413	Both parents	41803006
138	Neither parent (or uncertain)	41803007
1341	Both parents	41803007
66	Neither parent (or uncertain)	41803008
1491	Both parents	41803008
195	Neither parent (or uncertain)	41804001
2799	Both parents	41804001
240	Neither parent (or uncertain)	41804002
3126	Both parents	41804002
183	Neither parent (or uncertain)	41804003
2868	Both parents	41804003
249	Neither parent (or uncertain)	41804004
2646	Both parents	41804004
237	Neither parent (or uncertain)	41804005
2256	Both parents	41804005
219	Neither parent (or uncertain)	41804006
2151	Both parents	41804006
294	Neither parent (or uncertain)	41804007
2571	Both parents	41804007
186	Neither parent (or uncertain)	41804008
1965	Both parents	41804008
69	Neither parent (or uncertain)	41804009
2007	Both parents	41804009
234	Neither parent (or uncertain)	41804010
2808	Both parents	41804010
213	Neither parent (or uncertain)	41804011
2976	Both parents	41804011
270	Neither parent (or uncertain)	41804012
3732	Both parents	41804012
138	Neither parent (or uncertain)	41804013
1317	Both parents	41804013
294	Neither parent (or uncertain)	41804014
2445	Both parents	41804014
243	Neither parent (or uncertain)	41804015
2820	Both parents	41804015
324	Neither parent (or uncertain)	41804016
2880	Both parents	41804016
273	Neither parent (or uncertain)	41804017
3279	Both parents	41804017
180	Neither parent (or uncertain)	41804018
2145	Both parents	41804018
333	Neither parent (or uncertain)	41804019
3402	Both parents	41804019
192	Neither parent (or uncertain)	41804020
2226	Both parents	41804020
246	Neither parent (or uncertain)	41804021
3027	Both parents	41804021
225	Neither parent (or uncertain)	41804022
3018	Both parents	41804022
60	Neither parent (or uncertain)	41804023
1134	Both parents	41804023
93	Neither parent (or uncertain)	41804024
1269	Both parents	41804024
183	Neither parent (or uncertain)	41804025
3216	Both parents	41804025
171	Neither parent (or uncertain)	41804026
1566	Both parents	41804026
108	Neither parent (or uncertain)	41804027
1842	Both parents	41804027
288	Neither parent (or uncertain)	41804028
1323	Both parents	41804028
162	Neither parent (or uncertain)	41804029
1383	Both parents	41804029
156	Neither parent (or uncertain)	41804030
1599	Both parents	41804030
192	Neither parent (or uncertain)	41804031
1662	Both parents	41804031
126	Neither parent (or uncertain)	41804032
2106	Both parents	41804032
75	Neither parent (or uncertain)	41804033
1875	Both parents	41804033
126	Neither parent (or uncertain)	41804034
2334	Both parents	41804034
60	Neither parent (or uncertain)	41804035
1608	Both parents	41804035
159	Neither parent (or uncertain)	41804036
2283	Both parents	41804036
195	Neither parent (or uncertain)	41805001
1764	Both parents	41805001
111	Neither parent (or uncertain)	41805002
1263	Both parents	41805002
153	Neither parent (or uncertain)	41805003
1656	Both parents	41805003
201	Neither parent (or uncertain)	41805004
2457	Both parents	41805004
123	Neither parent (or uncertain)	41805005
1443	Both parents	41805005
117	Neither parent (or uncertain)	41805006
1254	Both parents	41805006
138	Neither parent (or uncertain)	41805007
1212	Both parents	41805007
120	Neither parent (or uncertain)	41805008
1422	Both parents	41805008
186	Neither parent (or uncertain)	41805009
3006	Both parents	41805009
99	Neither parent (or uncertain)	41805010
1467	Both parents	41805010
195	Neither parent (or uncertain)	41805011
1947	Both parents	41805011
45	Neither parent (or uncertain)	41805012
1275	Both parents	41805012
105	Neither parent (or uncertain)	41901001
1206	Both parents	41901001
186	Neither parent (or uncertain)	41901002
2817	Both parents	41901002
39	Neither parent (or uncertain)	41901003
1236	Both parents	41901003
114	Neither parent (or uncertain)	41901004
1050	Both parents	41901004
81	Neither parent (or uncertain)	41901005
648	Both parents	41901005
228	Neither parent (or uncertain)	41901006
2652	Both parents	41901006
153	Neither parent (or uncertain)	41901007
1686	Both parents	41901007
183	Neither parent (or uncertain)	41901008
2226	Both parents	41901008
117	Neither parent (or uncertain)	41901009
1344	Both parents	41901009
66	Neither parent (or uncertain)	41901010
864	Both parents	41901010
144	Neither parent (or uncertain)	41901011
1416	Both parents	41901011
144	Neither parent (or uncertain)	41901012
1233	Both parents	41901012
201	Neither parent (or uncertain)	41901013
1842	Both parents	41901013
114	Neither parent (or uncertain)	41901014
1251	Both parents	41901014
120	Neither parent (or uncertain)	41901015
1875	Both parents	41901015
174	Neither parent (or uncertain)	41901016
1701	Both parents	41901016
30	Neither parent (or uncertain)	41901017
411	Both parents	41901017
96	Neither parent (or uncertain)	41901018
1422	Both parents	41901018
78	Neither parent (or uncertain)	41902001
1419	Both parents	41902001
57	Neither parent (or uncertain)	41902002
1167	Both parents	41902002
69	Neither parent (or uncertain)	41902003
1482	Both parents	41902003
102	Neither parent (or uncertain)	41902004
1455	Both parents	41902004
87	Neither parent (or uncertain)	41902005
1248	Both parents	41902005
99	Neither parent (or uncertain)	41902006
1629	Both parents	41902006
60	Neither parent (or uncertain)	41902007
1224	Both parents	41902007
69	Neither parent (or uncertain)	41902008
1233	Both parents	41902008
69	Neither parent (or uncertain)	41902009
513	Both parents	41902009
39	Neither parent (or uncertain)	41902010
741	Both parents	41902010
201	Neither parent (or uncertain)	41902011
2181	Both parents	41902011
183	Neither parent (or uncertain)	41902012
2559	Both parents	41902012
69	Neither parent (or uncertain)	41902013
774	Both parents	41902013
123	Neither parent (or uncertain)	41902014
1407	Both parents	41902014
126	Neither parent (or uncertain)	41902015
1590	Both parents	41902015
90	Neither parent (or uncertain)	41902016
1104	Both parents	41902016
135	Neither parent (or uncertain)	41902017
1743	Both parents	41902017
135	Neither parent (or uncertain)	41902018
1482	Both parents	41902018
174	Neither parent (or uncertain)	41902019
2889	Both parents	41902019
105	Neither parent (or uncertain)	41902020
1716	Both parents	41902020
108	Neither parent (or uncertain)	41903001
1623	Both parents	41903001
129	Neither parent (or uncertain)	41903002
2163	Both parents	41903002
135	Neither parent (or uncertain)	41903003
2256	Both parents	41903003
66	Neither parent (or uncertain)	41903004
1416	Both parents	41903004
102	Neither parent (or uncertain)	41903005
1530	Both parents	41903005
78	Neither parent (or uncertain)	41903006
1470	Both parents	41903006
99	Neither parent (or uncertain)	41903007
1518	Both parents	41903007
69	Neither parent (or uncertain)	41903008
1305	Both parents	41903008
129	Neither parent (or uncertain)	41903009
2196	Both parents	41903009
267	Neither parent (or uncertain)	41904001
3621	Both parents	41904001
147	Neither parent (or uncertain)	41904002
2268	Both parents	41904002
147	Neither parent (or uncertain)	41904003
1995	Both parents	41904003
171	Neither parent (or uncertain)	41904004
1998	Both parents	41904004
216	Neither parent (or uncertain)	41904005
2511	Both parents	41904005
75	Neither parent (or uncertain)	41904006
1545	Both parents	41904006
150	Neither parent (or uncertain)	41904007
1842	Both parents	41904007
111	Neither parent (or uncertain)	41904008
1149	Both parents	41904008
231	Neither parent (or uncertain)	41904009
2406	Both parents	41904009
228	Neither parent (or uncertain)	41904010
1812	Both parents	41904010
192	Neither parent (or uncertain)	41904011
2145	Both parents	41904011
267	Neither parent (or uncertain)	41904012
3171	Both parents	41904012
156	Neither parent (or uncertain)	41904013
2043	Both parents	41904013
165	Neither parent (or uncertain)	41904014
2358	Both parents	41904014
207	Neither parent (or uncertain)	41904015
2160	Both parents	41904015
189	Neither parent (or uncertain)	41904016
2373	Both parents	41904016
222	Neither parent (or uncertain)	41904017
1734	Both parents	41904017
177	Neither parent (or uncertain)	41904018
1779	Both parents	41904018
234	Neither parent (or uncertain)	41904019
2508	Both parents	41904019
141	Neither parent (or uncertain)	41904020
1695	Both parents	41904020
354	Neither parent (or uncertain)	41904021
2121	Both parents	41904021
198	Neither parent (or uncertain)	41904022
2406	Both parents	41904022
168	Neither parent (or uncertain)	41904023
2541	Both parents	41904023
312	Neither parent (or uncertain)	41904024
4335	Both parents	41904024
120	Neither parent (or uncertain)	41904025
1917	Both parents	41904025
183	Neither parent (or uncertain)	41904026
1482	Both parents	41904026
195	Neither parent (or uncertain)	41904027
1779	Both parents	41904027
255	Neither parent (or uncertain)	41904028
2775	Both parents	41904028
168	Neither parent (or uncertain)	41904029
1761	Both parents	41904029
162	Neither parent (or uncertain)	41904030
1878	Both parents	41904030
219	Neither parent (or uncertain)	41904031
2067	Both parents	41904031
240	Neither parent (or uncertain)	41904032
3561	Both parents	41904032
429	Neither parent (or uncertain)	41904033
2994	Both parents	41904033
177	Neither parent (or uncertain)	41904034
3738	Both parents	41904034
210	Neither parent (or uncertain)	41904035
1542	Both parents	41904035
87	Neither parent (or uncertain)	41905001
570	Both parents	41905001
120	Neither parent (or uncertain)	41905002
1665	Both parents	41905002
39	Neither parent (or uncertain)	41905003
807	Both parents	41905003
105	Neither parent (or uncertain)	41905004
1341	Both parents	41905004
87	Neither parent (or uncertain)	41905005
1734	Both parents	41905005
111	Neither parent (or uncertain)	41905006
1467	Both parents	41905006
84	Neither parent (or uncertain)	41905007
1371	Both parents	41905007
144	Neither parent (or uncertain)	41905008
2820	Both parents	41905008
114	Neither parent (or uncertain)	41906001
1542	Both parents	41906001
111	Neither parent (or uncertain)	41906002
1398	Both parents	41906002
144	Neither parent (or uncertain)	41906003
1176	Both parents	41906003
180	Neither parent (or uncertain)	41906004
1842	Both parents	41906004
123	Neither parent (or uncertain)	41906005
1230	Both parents	41906005
99	Neither parent (or uncertain)	41906006
1221	Both parents	41906006
54	Neither parent (or uncertain)	41906007
1269	Both parents	41906007
300	Neither parent (or uncertain)	41906008
1314	Both parents	41906008
87	Neither parent (or uncertain)	41906009
1230	Both parents	41906009
123	Neither parent (or uncertain)	42001001
2322	Both parents	42001001
138	Neither parent (or uncertain)	42001002
1662	Both parents	42001002
54	Neither parent (or uncertain)	42001003
939	Both parents	42001003
123	Neither parent (or uncertain)	42001004
1635	Both parents	42001004
150	Neither parent (or uncertain)	42001005
1695	Both parents	42001005
60	Neither parent (or uncertain)	42001006
645	Both parents	42001006
150	Neither parent (or uncertain)	42001007
1665	Both parents	42001007
75	Neither parent (or uncertain)	42001008
1101	Both parents	42001008
165	Neither parent (or uncertain)	42001009
1680	Both parents	42001009
75	Neither parent (or uncertain)	42001010
1038	Both parents	42001010
75	Neither parent (or uncertain)	42001011
945	Both parents	42001011
87	Neither parent (or uncertain)	42001012
888	Both parents	42001012
150	Neither parent (or uncertain)	42001013
1845	Both parents	42001013
69	Neither parent (or uncertain)	42001014
987	Both parents	42001014
99	Neither parent (or uncertain)	42001015
1197	Both parents	42001015
60	Neither parent (or uncertain)	42001016
1209	Both parents	42001016
21	Neither parent (or uncertain)	42001017
930	Both parents	42001017
126	Neither parent (or uncertain)	42001018
1773	Both parents	42001018
165	Neither parent (or uncertain)	42001019
1662	Both parents	42001019
156	Neither parent (or uncertain)	42001020
1929	Both parents	42001020
117	Neither parent (or uncertain)	42001021
1728	Both parents	42001021
90	Neither parent (or uncertain)	42001022
1881	Both parents	42001022
39	Neither parent (or uncertain)	42001023
891	Both parents	42001023
186	Neither parent (or uncertain)	42001024
267	Both parents	42001024
102	Neither parent (or uncertain)	42001025
1566	Both parents	42001025
108	Neither parent (or uncertain)	42003001
1956	Both parents	42003001
120	Neither parent (or uncertain)	42003002
1341	Both parents	42003002
81	Neither parent (or uncertain)	42003003
1170	Both parents	42003003
72	Neither parent (or uncertain)	42003004
1002	Both parents	42003004
120	Neither parent (or uncertain)	42003005
1146	Both parents	42003005
21	Neither parent (or uncertain)	42003006
456	Both parents	42003006
138	Neither parent (or uncertain)	42003007
2862	Both parents	42003007
198	Neither parent (or uncertain)	42003008
3225	Both parents	42003008
108	Neither parent (or uncertain)	42003009
1257	Both parents	42003009
90	Neither parent (or uncertain)	42003010
1341	Both parents	42003010
87	Neither parent (or uncertain)	42003011
900	Both parents	42003011
84	Neither parent (or uncertain)	42003012
942	Both parents	42003012
21	Neither parent (or uncertain)	42003013
660	Both parents	42003013
81	Neither parent (or uncertain)	42003014
1485	Both parents	42003014
123	Neither parent (or uncertain)	42003015
1059	Both parents	42003015
156	Neither parent (or uncertain)	42003016
2499	Both parents	42003016
156	Neither parent (or uncertain)	42003017
1899	Both parents	42003017
132	Neither parent (or uncertain)	42003018
750	Both parents	42003018
96	Neither parent (or uncertain)	42003019
1806	Both parents	42003019
24	Neither parent (or uncertain)	42003020
870	Both parents	42003020
213	Neither parent (or uncertain)	42004001
4215	Both parents	42004001
72	Neither parent (or uncertain)	42004002
987	Both parents	42004002
87	Neither parent (or uncertain)	42004003
1371	Both parents	42004003
81	Neither parent (or uncertain)	42004004
1164	Both parents	42004004
69	Neither parent (or uncertain)	42004005
1605	Both parents	42004005
75	Neither parent (or uncertain)	42004006
1179	Both parents	42004006
51	Neither parent (or uncertain)	42004007
930	Both parents	42004007
138	Neither parent (or uncertain)	42004008
1473	Both parents	42004008
54	Neither parent (or uncertain)	42004009
894	Both parents	42004009
75	Neither parent (or uncertain)	42004010
1563	Both parents	42004010
84	Neither parent (or uncertain)	42004011
870	Both parents	42004011
24	Neither parent (or uncertain)	42004012
729	Both parents	42004012
138	Neither parent (or uncertain)	42004013
3132	Both parents	42004013
36	Neither parent (or uncertain)	42004014
1881	Both parents	42004014
18	Neither parent (or uncertain)	42004015
678	Both parents	42004015
36	Neither parent (or uncertain)	42004016
1023	Both parents	42004016
57	Neither parent (or uncertain)	42004017
1269	Both parents	42004017
6	Neither parent (or uncertain)	42004018
564	Both parents	42004018
312	Neither parent (or uncertain)	42004019
2952	Both parents	42004019
99	Neither parent (or uncertain)	42004020
2205	Both parents	42004020
48	Neither parent (or uncertain)	42004021
1089	Both parents	42004021
66	Neither parent (or uncertain)	42005001
981	Both parents	42005001
162	Neither parent (or uncertain)	42005002
2553	Both parents	42005002
102	Neither parent (or uncertain)	42005003
1515	Both parents	42005003
102	Neither parent (or uncertain)	42005004
1389	Both parents	42005004
63	Neither parent (or uncertain)	42005005
1074	Both parents	42005005
111	Neither parent (or uncertain)	42005006
1101	Both parents	42005006
93	Neither parent (or uncertain)	42005007
1752	Both parents	42005007
189	Neither parent (or uncertain)	42005008
2010	Both parents	42005008
90	Neither parent (or uncertain)	42005009
1998	Both parents	42005009
201	Neither parent (or uncertain)	49400001
2217	Both parents	49400001
201	Neither parent (or uncertain)	49400002
2298	Both parents	49400002
291	Neither parent (or uncertain)	49400003
2244	Both parents	49400003
258	Neither parent (or uncertain)	49400004
2502	Both parents	49400004
207	Neither parent (or uncertain)	49400005
2841	Both parents	49400005
324	Neither parent (or uncertain)	49400006
3678	Both parents	49400006
123	Neither parent (or uncertain)	49400007
1665	Both parents	49400007
366	Neither parent (or uncertain)	49400008
3726	Both parents	49400008
126	Neither parent (or uncertain)	49400009
2940	Both parents	49400009
288	Neither parent (or uncertain)	49400010
3759	Both parents	49400010
273	Neither parent (or uncertain)	49400011
3363	Both parents	49400011
270	Neither parent (or uncertain)	49400012
5124	Both parents	49400012
144	Neither parent (or uncertain)	49400013
1692	Both parents	49400013
171	Neither parent (or uncertain)	49400014
2865	Both parents	49400014
189	Neither parent (or uncertain)	49400015
2748	Both parents	49400015
291	Neither parent (or uncertain)	49400016
3135	Both parents	49400016
339	Neither parent (or uncertain)	49400017
3819	Both parents	49400017
183	Neither parent (or uncertain)	49400018
5496	Both parents	49400018
126	Neither parent (or uncertain)	49400019
1686	Both parents	49400019
90	Neither parent (or uncertain)	49400020
1554	Both parents	49400020
177	Neither parent (or uncertain)	49400021
1800	Both parents	49400021
57	Neither parent (or uncertain)	49400022
1686	Both parents	49400022
636	Neither parent (or uncertain)	49400023
750	Both parents	49400023
48	Neither parent (or uncertain)	49400024
1746	Both parents	49400024
75	Neither parent (or uncertain)	49400025
2205	Both parents	49400025
81	Neither parent (or uncertain)	49400026
1638	Both parents	49400026
312	Neither parent (or uncertain)	49400027
5655	Both parents	49400027
372	Neither parent (or uncertain)	49400028
3342	Both parents	49400028
339	Neither parent (or uncertain)	49400029
3000	Both parents	49400029
234	Neither parent (or uncertain)	49400030
3213	Both parents	49400030
315	Neither parent (or uncertain)	49400031
2415	Both parents	49400031
258	Neither parent (or uncertain)	49400032
2874	Both parents	49400032
336	Neither parent (or uncertain)	49400033
3018	Both parents	49400033
396	Neither parent (or uncertain)	49400034
4548	Both parents	49400034
354	Neither parent (or uncertain)	49400035
4110	Both parents	49400035
321	Neither parent (or uncertain)	49400036
3258	Both parents	49400036
357	Neither parent (or uncertain)	49400037
4995	Both parents	49400037
270	Neither parent (or uncertain)	49400038
2727	Both parents	49400038
204	Neither parent (or uncertain)	49400039
2892	Both parents	49400039
141	Neither parent (or uncertain)	49400040
2697	Both parents	49400040
195	Neither parent (or uncertain)	49400041
2655	Both parents	49400041
189	Neither parent (or uncertain)	49400042
2580	Both parents	49400042
327	Neither parent (or uncertain)	49400043
3156	Both parents	49400043
252	Neither parent (or uncertain)	49400044
3237	Both parents	49400044
498	Neither parent (or uncertain)	49400045
9084	Both parents	49400045
564	Neither parent (or uncertain)	49400046
8826	Both parents	49400046
126	Neither parent (or uncertain)	49400047
3645	Both parents	49400047
69	Neither parent (or uncertain)	49400048
1899	Both parents	49400048
222	Neither parent (or uncertain)	49400049
3321	Both parents	49400049
51	Neither parent (or uncertain)	74201001
2508	Both parents	74201001
156	Neither parent (or uncertain)	74201002
3468	Both parents	74201002
138	Neither parent (or uncertain)	74201003
3828	Both parents	74201003
69	Neither parent (or uncertain)	74201004
2247	Both parents	74201004
54	Neither parent (or uncertain)	74201005
2739	Both parents	74201005
351	Neither parent (or uncertain)	74201006
6087	Both parents	74201006
246	Neither parent (or uncertain)	74201007
4122	Both parents	74201007
330	Neither parent (or uncertain)	74201008
2577	Both parents	74201008
54	Neither parent (or uncertain)	74201009
2745	Both parents	74201009
96	Neither parent (or uncertain)	74201010
3570	Both parents	74201010
189	Neither parent (or uncertain)	74201011
4395	Both parents	74201011
129	Neither parent (or uncertain)	74201012
2034	Both parents	74201012
174	Neither parent (or uncertain)	74201013
2667	Both parents	74201013
117	Neither parent (or uncertain)	74201014
2157	Both parents	74201014
261	Neither parent (or uncertain)	74201015
3426	Both parents	74201015
87	Neither parent (or uncertain)	74201016
2910	Both parents	74201016
165	Neither parent (or uncertain)	74201017
2085	Both parents	74201017
219	Neither parent (or uncertain)	74201018
3456	Both parents	74201018
216	Neither parent (or uncertain)	74201019
4284	Both parents	74201019
144	Neither parent (or uncertain)	74201020
3726	Both parents	74201020
132	Neither parent (or uncertain)	74201021
4743	Both parents	74201021
216	Neither parent (or uncertain)	74201022
3891	Both parents	74201022
171	Neither parent (or uncertain)	74201023
3207	Both parents	74201023
192	Neither parent (or uncertain)	74201024
2892	Both parents	74201024
255	Neither parent (or uncertain)	74201025
4551	Both parents	74201025
390	Neither parent (or uncertain)	74201026
6735	Both parents	74201026
141	Neither parent (or uncertain)	74201027
2658	Both parents	74201027
330	Neither parent (or uncertain)	74201028
5868	Both parents	74201028
276	Neither parent (or uncertain)	74201029
3447	Both parents	74201029
180	Neither parent (or uncertain)	74201030
2472	Both parents	74201030
141	Neither parent (or uncertain)	74201031
2355	Both parents	74201031
141	Neither parent (or uncertain)	74201032
2310	Both parents	74201032
273	Neither parent (or uncertain)	74201033
3135	Both parents	74201033
147	Neither parent (or uncertain)	74201034
2472	Both parents	74201034
162	Neither parent (or uncertain)	74201035
2154	Both parents	74201035
282	Neither parent (or uncertain)	74201036
4935	Both parents	74201036
192	Neither parent (or uncertain)	74201037
2352	Both parents	74201037
204	Neither parent (or uncertain)	74201038
3162	Both parents	74201038
171	Neither parent (or uncertain)	74201039
3048	Both parents	74201039
150	Neither parent (or uncertain)	74201040
2577	Both parents	74201040
150	Neither parent (or uncertain)	74201041
3006	Both parents	74201041
105	Neither parent (or uncertain)	74201042
1881	Both parents	74201042
171	Neither parent (or uncertain)	74201043
4170	Both parents	74201043
240	Neither parent (or uncertain)	74201044
4440	Both parents	74201044
105	Neither parent (or uncertain)	74201045
2397	Both parents	74201045
54	Neither parent (or uncertain)	74202001
1329	Both parents	74202001
24	Neither parent (or uncertain)	74202002
864	Both parents	74202002
48	Neither parent (or uncertain)	74202003
1095	Both parents	74202003
234	Neither parent (or uncertain)	74202004
1287	Both parents	74202004
66	Neither parent (or uncertain)	74202005
1875	Both parents	74202005
153	Neither parent (or uncertain)	74202006
2499	Both parents	74202006
111	Neither parent (or uncertain)	74202007
1212	Both parents	74202007
81	Neither parent (or uncertain)	74202008
2082	Both parents	74202008
0	Neither parent (or uncertain)	74202009
111	Both parents	74202009
111	Neither parent (or uncertain)	74202010
2052	Both parents	74202010
111	Neither parent (or uncertain)	74202011
1236	Both parents	74202011
42	Neither parent (or uncertain)	74202012
630	Both parents	74202012
102	Neither parent (or uncertain)	74202013
1251	Both parents	74202013
6	Neither parent (or uncertain)	74202014
1098	Both parents	74202014
84	Neither parent (or uncertain)	74203001
1107	Both parents	74203001
111	Neither parent (or uncertain)	74203002
2058	Both parents	74203002
93	Neither parent (or uncertain)	74203003
1437	Both parents	74203003
96	Neither parent (or uncertain)	74203004
1449	Both parents	74203004
111	Neither parent (or uncertain)	74203005
1587	Both parents	74203005
81	Neither parent (or uncertain)	74203006
1398	Both parents	74203006
99	Neither parent (or uncertain)	74203007
2166	Both parents	74203007
93	Neither parent (or uncertain)	74203008
1812	Both parents	74203008
21	Neither parent (or uncertain)	74203009
1101	Both parents	74203009
33	Neither parent (or uncertain)	74203010
1461	Both parents	74203010
66	Neither parent (or uncertain)	74203011
1587	Both parents	74203011
72	Neither parent (or uncertain)	74203012
1896	Both parents	74203012
90	Neither parent (or uncertain)	74203013
2229	Both parents	74203013
180	Neither parent (or uncertain)	74801001
3261	Both parents	74801001
117	Neither parent (or uncertain)	74801002
4233	Both parents	74801002
255	Neither parent (or uncertain)	74801003
2955	Both parents	74801003
99	Neither parent (or uncertain)	74801004
2955	Both parents	74801004
78	Neither parent (or uncertain)	74801005
1659	Both parents	74801005
93	Neither parent (or uncertain)	74801006
1677	Both parents	74801006
126	Neither parent (or uncertain)	74801007
1992	Both parents	74801007
141	Neither parent (or uncertain)	74801008
2226	Both parents	74801008
39	Neither parent (or uncertain)	74801009
1224	Both parents	74801009
69	Neither parent (or uncertain)	74801010
1719	Both parents	74801010
102	Neither parent (or uncertain)	74801011
3006	Both parents	74801011
57	Neither parent (or uncertain)	74801012
1293	Both parents	74801012
69	Neither parent (or uncertain)	74801013
2184	Both parents	74801013
93	Neither parent (or uncertain)	74801014
2709	Both parents	74801014
42	Neither parent (or uncertain)	74801015
1188	Both parents	74801015
42	Neither parent (or uncertain)	74801016
2163	Both parents	74801016
105	Neither parent (or uncertain)	74801017
1425	Both parents	74801017
72	Neither parent (or uncertain)	74801018
1668	Both parents	74801018
51	Neither parent (or uncertain)	74801019
1359	Both parents	74801019
45	Neither parent (or uncertain)	74801020
2151	Both parents	74801020
18	Neither parent (or uncertain)	74801021
1434	Both parents	74801021
78	Neither parent (or uncertain)	74801022
1701	Both parents	74801022
66	Neither parent (or uncertain)	74801023
1989	Both parents	74801023
108	Neither parent (or uncertain)	74801024
2772	Both parents	74801024
36	Neither parent (or uncertain)	74801025
1398	Both parents	74801025
51	Neither parent (or uncertain)	74801026
2520	Both parents	74801026
99	Neither parent (or uncertain)	74801027
2706	Both parents	74801027
24	Neither parent (or uncertain)	74801028
2097	Both parents	74801028
33	Neither parent (or uncertain)	74801029
1362	Both parents	74801029
138	Neither parent (or uncertain)	74801030
3261	Both parents	74801030
117	Neither parent (or uncertain)	74801031
2199	Both parents	74801031
63	Neither parent (or uncertain)	74801032
1560	Both parents	74801032
87	Neither parent (or uncertain)	74801033
1377	Both parents	74801033
132	Neither parent (or uncertain)	74801034
3663	Both parents	74801034
66	Neither parent (or uncertain)	74802001
2496	Both parents	74802001
93	Neither parent (or uncertain)	74802002
2487	Both parents	74802002
54	Neither parent (or uncertain)	74802003
1194	Both parents	74802003
21	Neither parent (or uncertain)	74802004
753	Both parents	74802004
12	Neither parent (or uncertain)	74802005
909	Both parents	74802005
12	Neither parent (or uncertain)	74802006
1245	Both parents	74802006
30	Neither parent (or uncertain)	74802007
1365	Both parents	74802007
87	Neither parent (or uncertain)	74802008
1911	Both parents	74802008
51	Neither parent (or uncertain)	74802009
1851	Both parents	74802009
21	Neither parent (or uncertain)	74802010
1053	Both parents	74802010
39	Neither parent (or uncertain)	74802011
897	Both parents	74802011
69	Neither parent (or uncertain)	74802012
1638	Both parents	74802012
33	Neither parent (or uncertain)	74802013
1428	Both parents	74802013
63	Neither parent (or uncertain)	74802014
1554	Both parents	74802014
78	Neither parent (or uncertain)	74802015
1587	Both parents	74802015
72	Neither parent (or uncertain)	74802016
1629	Both parents	74802016
54	Neither parent (or uncertain)	74802017
840	Both parents	74802017
57	Neither parent (or uncertain)	74802018
1461	Both parents	74802018
42	Neither parent (or uncertain)	74802019
1062	Both parents	74802019
45	Neither parent (or uncertain)	74802020
2325	Both parents	74802020
48	Neither parent (or uncertain)	74802021
834	Both parents	74802021
42	Neither parent (or uncertain)	74802022
945	Both parents	74802022
30	Neither parent (or uncertain)	74803001
912	Both parents	74803001
24	Neither parent (or uncertain)	74803002
1359	Both parents	74803002
0	Neither parent (or uncertain)	74803003
51	Both parents	74803003
21	Neither parent (or uncertain)	74803004
1041	Both parents	74803004
30	Neither parent (or uncertain)	74803005
765	Both parents	74803005
33	Neither parent (or uncertain)	74803006
1662	Both parents	74803006
153	Neither parent (or uncertain)	74803007
2115	Both parents	74803007
231	Neither parent (or uncertain)	74803008
2337	Both parents	74803008
57	Neither parent (or uncertain)	74803009
1317	Both parents	74803009
171	Neither parent (or uncertain)	74803010
1584	Both parents	74803010
48	Neither parent (or uncertain)	74803011
957	Both parents	74803011
75	Neither parent (or uncertain)	74803012
1584	Both parents	74803012
87	Neither parent (or uncertain)	74803013
1263	Both parents	74803013
78	Neither parent (or uncertain)	74803014
1308	Both parents	74803014
96	Neither parent (or uncertain)	74803015
1329	Both parents	74803015
48	Neither parent (or uncertain)	74803016
1857	Both parents	74803016
213	Neither parent (or uncertain)	74804001
2439	Both parents	74804001
138	Neither parent (or uncertain)	74804002
1764	Both parents	74804002
108	Neither parent (or uncertain)	74804003
1404	Both parents	74804003
186	Neither parent (or uncertain)	74804004
2148	Both parents	74804004
18	Neither parent (or uncertain)	74804005
426	Both parents	74804005
114	Neither parent (or uncertain)	74804006
1176	Both parents	74804006
138	Neither parent (or uncertain)	74804007
1611	Both parents	74804007
123	Neither parent (or uncertain)	74804008
1239	Both parents	74804008
96	Neither parent (or uncertain)	74804009
1365	Both parents	74804009
141	Neither parent (or uncertain)	74804010
1275	Both parents	74804010
42	Neither parent (or uncertain)	74804011
861	Both parents	74804011
39	Neither parent (or uncertain)	74804012
951	Both parents	74804012
36	Neither parent (or uncertain)	74804013
1041	Both parents	74804013
24	Neither parent (or uncertain)	74804014
453	Both parents	74804014
18	Neither parent (or uncertain)	74804015
906	Both parents	74804015
57	Neither parent (or uncertain)	74804016
1350	Both parents	74804016
81	Neither parent (or uncertain)	74804017
939	Both parents	74804017
39	Neither parent (or uncertain)	74804018
1083	Both parents	74804018
6	Neither parent (or uncertain)	74804019
0	Both parents	74804019
66	Neither parent (or uncertain)	74804020
2247	Both parents	74804020
93	Neither parent (or uncertain)	74804021
2550	Both parents	74804021
168	Neither parent (or uncertain)	74804022
1545	Both parents	74804022
72	Neither parent (or uncertain)	74804023
1395	Both parents	74804023
66	Neither parent (or uncertain)	74804024
897	Both parents	74804024
144	Neither parent (or uncertain)	74804025
1722	Both parents	74804025
141	Neither parent (or uncertain)	74804026
2640	Both parents	74804026
45	Neither parent (or uncertain)	74804027
885	Both parents	74804027
21	Neither parent (or uncertain)	74804028
1233	Both parents	74804028
273	Neither parent (or uncertain)	79700001
12645	Both parents	79700001
222	Neither parent (or uncertain)	79700002
6003	Both parents	79700002
120	Neither parent (or uncertain)	79700003
5091	Both parents	79700003
48	Neither parent (or uncertain)	79700004
1284	Both parents	79700004
273	Neither parent (or uncertain)	79700005
4728	Both parents	79700005
201	Neither parent (or uncertain)	79700006
5733	Both parents	79700006
150	Neither parent (or uncertain)	79700007
4788	Both parents	79700007
246	Neither parent (or uncertain)	79700008
6663	Both parents	79700008
270	Neither parent (or uncertain)	79700009
4506	Both parents	79700009
270	Neither parent (or uncertain)	79700010
4782	Both parents	79700010
264	Neither parent (or uncertain)	79700011
6231	Both parents	79700011
240	Neither parent (or uncertain)	79700012
7419	Both parents	79700012
147	Neither parent (or uncertain)	79700013
6417	Both parents	79700013
327	Neither parent (or uncertain)	79700014
6396	Both parents	79700014
141	Neither parent (or uncertain)	79700015
5259	Both parents	79700015
144	Neither parent (or uncertain)	79700016
4578	Both parents	79700016
321	Neither parent (or uncertain)	79700017
6921	Both parents	79700017
168	Neither parent (or uncertain)	79700018
4635	Both parents	79700018
108	Neither parent (or uncertain)	79700019
4494	Both parents	79700019
186	Neither parent (or uncertain)	79700020
4350	Both parents	79700020
360	Neither parent (or uncertain)	79700021
6786	Both parents	79700021
141	Neither parent (or uncertain)	79700022
5037	Both parents	79700022
144	Neither parent (or uncertain)	79700023
4884	Both parents	79700023
375	Neither parent (or uncertain)	79700024
9384	Both parents	79700024
366	Neither parent (or uncertain)	79700025
10044	Both parents	79700025
315	Neither parent (or uncertain)	79700026
7968	Both parents	79700026
144	Neither parent (or uncertain)	79700027
3888	Both parents	79700027
150	Neither parent (or uncertain)	79700028
4356	Both parents	79700028
105	Neither parent (or uncertain)	79700029
3747	Both parents	79700029
219	Neither parent (or uncertain)	79700030
4095	Both parents	79700030
240	Neither parent (or uncertain)	79700031
6813	Both parents	79700031
165	Neither parent (or uncertain)	79700032
4209	Both parents	79700032
207	Neither parent (or uncertain)	79700033
6024	Both parents	79700033
330	Neither parent (or uncertain)	79700034
5610	Both parents	79700034
237	Neither parent (or uncertain)	79700035
5046	Both parents	79700035
81	Neither parent (or uncertain)	79700036
4983	Both parents	79700036
99	Neither parent (or uncertain)	79700037
5235	Both parents	79700037
126	Neither parent (or uncertain)	79700038
6366	Both parents	79700038
159	Neither parent (or uncertain)	79700039
7248	Both parents	79700039
270	Neither parent (or uncertain)	79700040
6765	Both parents	79700040
297	Neither parent (or uncertain)	79700041
9711	Both parents	79700041
231	Neither parent (or uncertain)	79700042
7257	Both parents	79700042
129	Neither parent (or uncertain)	79700043
6108	Both parents	79700043
276	Neither parent (or uncertain)	79700044
7437	Both parents	79700044
327	Neither parent (or uncertain)	79700045
6765	Both parents	79700045
315	Neither parent (or uncertain)	79700046
5577	Both parents	79700046
264	Neither parent (or uncertain)	79700047
6165	Both parents	79700047
300	Neither parent (or uncertain)	79700048
4629	Both parents	79700048
285	Neither parent (or uncertain)	79700049
4809	Both parents	79700049
285	Neither parent (or uncertain)	79700050
5094	Both parents	79700050
288	Neither parent (or uncertain)	79700051
5955	Both parents	79700051
384	Neither parent (or uncertain)	79700052
5658	Both parents	79700052
312	Neither parent (or uncertain)	79700053
8745	Both parents	79700053
303	Neither parent (or uncertain)	79700054
5142	Both parents	79700054
351	Neither parent (or uncertain)	79700055
5997	Both parents	79700055
303	Neither parent (or uncertain)	79700056
4704	Both parents	79700056
282	Neither parent (or uncertain)	79700057
7254	Both parents	79700057
411	Neither parent (or uncertain)	79700058
10539	Both parents	79700058
327	Neither parent (or uncertain)	79700059
6642	Both parents	79700059
378	Neither parent (or uncertain)	79700060
6894	Both parents	79700060
474	Neither parent (or uncertain)	79700061
9864	Both parents	79700061
300	Neither parent (or uncertain)	79700062
6003	Both parents	79700062
462	Neither parent (or uncertain)	79700063
8469	Both parents	79700063
354	Neither parent (or uncertain)	79700064
7890	Both parents	79700064
438	Neither parent (or uncertain)	79700065
10128	Both parents	79700065
582	Neither parent (or uncertain)	79700066
10032	Both parents	79700066
405	Neither parent (or uncertain)	79700067
7605	Both parents	79700067
390	Neither parent (or uncertain)	79700068
6924	Both parents	79700068
261	Neither parent (or uncertain)	79700069
4203	Both parents	79700069
342	Neither parent (or uncertain)	79700070
4212	Both parents	79700070
333	Neither parent (or uncertain)	79700071
7680	Both parents	79700071
255	Neither parent (or uncertain)	79700072
6480	Both parents	79700072
276	Neither parent (or uncertain)	79700073
6375	Both parents	79700073
189	Neither parent (or uncertain)	79700074
4911	Both parents	79700074
186	Neither parent (or uncertain)	79700075
6030	Both parents	79700075
294	Neither parent (or uncertain)	79700076
5031	Both parents	79700076
297	Neither parent (or uncertain)	79700077
7338	Both parents	79700077
207	Neither parent (or uncertain)	79700078
4398	Both parents	79700078
351	Neither parent (or uncertain)	79700079
6750	Both parents	79700079
324	Neither parent (or uncertain)	79700080
4131	Both parents	79700080
429	Neither parent (or uncertain)	79700081
11400	Both parents	79700081
372	Neither parent (or uncertain)	79700082
5703	Both parents	79700082
351	Neither parent (or uncertain)	79700083
5166	Both parents	79700083
438	Neither parent (or uncertain)	79700084
9750	Both parents	79700084
318	Neither parent (or uncertain)	79700085
7098	Both parents	79700085
486	Neither parent (or uncertain)	79700086
9435	Both parents	79700086
555	Neither parent (or uncertain)	79700087
7170	Both parents	79700087
282	Neither parent (or uncertain)	79700088
6639	Both parents	79700088
156	Neither parent (or uncertain)	79700089
9228	Both parents	79700089
222	Neither parent (or uncertain)	79700090
5991	Both parents	79700090
183	Neither parent (or uncertain)	79700091
7806	Both parents	79700091
225	Neither parent (or uncertain)	79700092
4875	Both parents	79700092
123	Neither parent (or uncertain)	79700093
3831	Both parents	79700093
96	Neither parent (or uncertain)	79700094
5181	Both parents	79700094
243	Neither parent (or uncertain)	79700095
5928	Both parents	79700095
273	Neither parent (or uncertain)	79700096
6171	Both parents	79700096
267	Neither parent (or uncertain)	79700097
6858	Both parents	79700097
270	Neither parent (or uncertain)	79700098
4362	Both parents	79700098
465	Neither parent (or uncertain)	79700099
10452	Both parents	79700099
135	Neither parent (or uncertain)	79700100
5493	Both parents	79700100
444	Neither parent (or uncertain)	79700101
10644	Both parents	79700101
588	Neither parent (or uncertain)	79800001
11313	Both parents	79800001
582	Neither parent (or uncertain)	79800002
10212	Both parents	79800002
459	Neither parent (or uncertain)	79800003
7551	Both parents	79800003
450	Neither parent (or uncertain)	79800004
9891	Both parents	79800004
627	Neither parent (or uncertain)	79800005
12819	Both parents	79800005
558	Neither parent (or uncertain)	79800006
9141	Both parents	79800006
462	Neither parent (or uncertain)	79800007
9342	Both parents	79800007
261	Neither parent (or uncertain)	79800008
8664	Both parents	79800008
189	Neither parent (or uncertain)	79800009
6018	Both parents	79800009
234	Neither parent (or uncertain)	79800010
7005	Both parents	79800010
249	Neither parent (or uncertain)	79800011
7125	Both parents	79800011
216	Neither parent (or uncertain)	79800012
5412	Both parents	79800012
201	Neither parent (or uncertain)	79800013
9102	Both parents	79800013
186	Neither parent (or uncertain)	79800014
6045	Both parents	79800014
339	Neither parent (or uncertain)	79800015
5154	Both parents	79800015
270	Neither parent (or uncertain)	79800016
4614	Both parents	79800016
255	Neither parent (or uncertain)	79800017
9018	Both parents	79800017
225	Neither parent (or uncertain)	79800018
9135	Both parents	79800018
357	Neither parent (or uncertain)	79800019
5544	Both parents	79800019
339	Neither parent (or uncertain)	79800020
6153	Both parents	79800020
288	Neither parent (or uncertain)	79800021
5427	Both parents	79800021
429	Neither parent (or uncertain)	79800022
5883	Both parents	79800022
99	Neither parent (or uncertain)	79800023
5544	Both parents	79800023
288	Neither parent (or uncertain)	79800024
7209	Both parents	79800024
327	Neither parent (or uncertain)	79800025
6654	Both parents	79800025
327	Neither parent (or uncertain)	79800026
4755	Both parents	79800026
195	Neither parent (or uncertain)	79800027
4701	Both parents	79800027
297	Neither parent (or uncertain)	79800028
5343	Both parents	79800028
297	Neither parent (or uncertain)	79800029
5868	Both parents	79800029
351	Neither parent (or uncertain)	79800030
6447	Both parents	79800030
288	Neither parent (or uncertain)	79800031
5130	Both parents	79800031
249	Neither parent (or uncertain)	79800032
8901	Both parents	79800032
366	Neither parent (or uncertain)	79800033
5076	Both parents	79800033
309	Neither parent (or uncertain)	79800034
5139	Both parents	79800034
288	Neither parent (or uncertain)	79800035
5007	Both parents	79800035
231	Neither parent (or uncertain)	79800036
4683	Both parents	79800036
393	Neither parent (or uncertain)	79800037
5559	Both parents	79800037
159	Neither parent (or uncertain)	79800038
3588	Both parents	79800038
369	Neither parent (or uncertain)	79800039
5847	Both parents	79800039
303	Neither parent (or uncertain)	79800040
4818	Both parents	79800040
414	Neither parent (or uncertain)	79800041
4428	Both parents	79800041
273	Neither parent (or uncertain)	79800042
4443	Both parents	79800042
258	Neither parent (or uncertain)	79800043
4893	Both parents	79800043
438	Neither parent (or uncertain)	79800044
12024	Both parents	79800044
270	Neither parent (or uncertain)	79800045
5343	Both parents	79800045
270	Neither parent (or uncertain)	79800046
5778	Both parents	79800046
315	Neither parent (or uncertain)	79800047
5997	Both parents	79800047
297	Neither parent (or uncertain)	79800048
6318	Both parents	79800048
642	Neither parent (or uncertain)	79800049
11301	Both parents	79800049
276	Neither parent (or uncertain)	79800050
5148	Both parents	79800050
342	Neither parent (or uncertain)	79800051
5655	Both parents	79800051
369	Neither parent (or uncertain)	79800052
5859	Both parents	79800052
459	Neither parent (or uncertain)	79800053
14772	Both parents	79800053
189	Neither parent (or uncertain)	79800054
8943	Both parents	79800054
162	Neither parent (or uncertain)	79800055
6249	Both parents	79800055
252	Neither parent (or uncertain)	79800056
5829	Both parents	79800056
309	Neither parent (or uncertain)	79800057
7020	Both parents	79800057
348	Neither parent (or uncertain)	79800058
6171	Both parents	79800058
21	Neither parent (or uncertain)	79800059
792	Both parents	79800059
402	Neither parent (or uncertain)	79800060
4620	Both parents	79800060
159	Neither parent (or uncertain)	79800061
2292	Both parents	79800061
72	Neither parent (or uncertain)	79800062
3780	Both parents	79800062
165	Neither parent (or uncertain)	79800063
4776	Both parents	79800063
297	Neither parent (or uncertain)	79800064
6162	Both parents	79800064
291	Neither parent (or uncertain)	79800065
2799	Both parents	79800065
660	Neither parent (or uncertain)	79800066
7578	Both parents	79800066
258	Neither parent (or uncertain)	79800067
3393	Both parents	79800067
213	Neither parent (or uncertain)	79800068
7179	Both parents	79800068
252	Neither parent (or uncertain)	79800069
5094	Both parents	79800069
303	Neither parent (or uncertain)	79800070
5547	Both parents	79800070
204	Neither parent (or uncertain)	79800071
6402	Both parents	79800071
141	Neither parent (or uncertain)	79800072
3105	Both parents	79800072
99	Neither parent (or uncertain)	79800073
4356	Both parents	79800073
129	Neither parent (or uncertain)	79800074
4236	Both parents	79800074
312	Neither parent (or uncertain)	79800075
3648	Both parents	79800075
324	Neither parent (or uncertain)	79800076
3318	Both parents	79800076
354	Neither parent (or uncertain)	79800077
10875	Both parents	79800077
402	Neither parent (or uncertain)	79800078
9906	Both parents	79800078
411	Neither parent (or uncertain)	79800079
9438	Both parents	79800079
189	Neither parent (or uncertain)	79800080
5547	Both parents	79800080
249	Neither parent (or uncertain)	79800081
6684	Both parents	79800081
312	Neither parent (or uncertain)	79800082
7545	Both parents	79800082
126	Neither parent (or uncertain)	79800083
3342	Both parents	79800083
204	Neither parent (or uncertain)	79800084
6252	Both parents	79800084
117	Neither parent (or uncertain)	79800085
4056	Both parents	79800085
255	Neither parent (or uncertain)	79800086
5703	Both parents	79800086
282	Neither parent (or uncertain)	79800087
2619	Both parents	79800087
81	Neither parent (or uncertain)	79800088
3816	Both parents	79800088
111	Neither parent (or uncertain)	79800089
3591	Both parents	79800089
102	Neither parent (or uncertain)	79800090
3105	Both parents	79800090
132	Neither parent (or uncertain)	79800091
4008	Both parents	79800091
351	Neither parent (or uncertain)	79800092
10143	Both parents	79800092
183	Neither parent (or uncertain)	79800093
3690	Both parents	79800093
90	Neither parent (or uncertain)	79800094
3537	Both parents	79800094
255	Neither parent (or uncertain)	79800095
7515	Both parents	79800095
192	Neither parent (or uncertain)	79800096
11448	Both parents	79800096
252	Neither parent (or uncertain)	79800097
10104	Both parents	79800097
108	Neither parent (or uncertain)	79800098
5226	Both parents	79800098
123	Neither parent (or uncertain)	79800099
3315	Both parents	79800099
342	Neither parent (or uncertain)	79800100
13020	Both parents	79800100
105	Neither parent (or uncertain)	79800101
5301	Both parents	79800101
201	Neither parent (or uncertain)	79800102
4668	Both parents	79800102
105	Neither parent (or uncertain)	79800103
5367	Both parents	79800103
132	Neither parent (or uncertain)	79800104
4569	Both parents	79800104
540	Neither parent (or uncertain)	79800105
9903	Both parents	79800105
102	Neither parent (or uncertain)	79800106
5115	Both parents	79800106
168	Neither parent (or uncertain)	79800107
3534	Both parents	79800107
480	Neither parent (or uncertain)	79800108
5784	Both parents	79800108
219	Neither parent (or uncertain)	79800109
4392	Both parents	79800109
417	Neither parent (or uncertain)	79800110
11592	Both parents	79800110
399	Neither parent (or uncertain)	79800111
13068	Both parents	79800111
135	Neither parent (or uncertain)	79800112
11967	Both parents	79800112
537	Neither parent (or uncertain)	79800113
18672	Both parents	79800113
240	Neither parent (or uncertain)	79800114
8142	Both parents	79800114
144	Neither parent (or uncertain)	79800115
6702	Both parents	79800115
237	Neither parent (or uncertain)	79800116
4113	Both parents	79800116
57	Neither parent (or uncertain)	79800117
3090	Both parents	79800117
495	Neither parent (or uncertain)	79800118
4557	Both parents	79800118
429	Neither parent (or uncertain)	79800119
10812	Both parents	79800119
249	Neither parent (or uncertain)	79800120
8718	Both parents	79800120
531	Neither parent (or uncertain)	79800121
13392	Both parents	79800121
534	Neither parent (or uncertain)	79800122
12516	Both parents	79800122
252	Neither parent (or uncertain)	79800123
6366	Both parents	79800123
249	Neither parent (or uncertain)	79800124
7308	Both parents	79800124
204	Neither parent (or uncertain)	79800125
8061	Both parents	79800125
123	Neither parent (or uncertain)	79800126
4971	Both parents	79800126
201	Neither parent (or uncertain)	79800127
5643	Both parents	79800127
510	Neither parent (or uncertain)	79800128
12579	Both parents	79800128
390	Neither parent (or uncertain)	79800129
8331	Both parents	79800129
279	Neither parent (or uncertain)	79800130
4704	Both parents	79800130
120	Neither parent (or uncertain)	79900001
4305	Both parents	79900001
252	Neither parent (or uncertain)	79900002
3135	Both parents	79900002
300	Neither parent (or uncertain)	79900003
7245	Both parents	79900003
141	Neither parent (or uncertain)	79900004
8436	Both parents	79900004
87	Neither parent (or uncertain)	79900005
4575	Both parents	79900005
99	Neither parent (or uncertain)	79900006
3144	Both parents	79900006
171	Neither parent (or uncertain)	79900007
9774	Both parents	79900007
336	Neither parent (or uncertain)	79900008
7221	Both parents	79900008
444	Neither parent (or uncertain)	79900009
9210	Both parents	79900009
195	Neither parent (or uncertain)	79900010
8517	Both parents	79900010
216	Neither parent (or uncertain)	79900011
5679	Both parents	79900011
249	Neither parent (or uncertain)	79900012
4356	Both parents	79900012
330	Neither parent (or uncertain)	79900013
6915	Both parents	79900013
267	Neither parent (or uncertain)	79900014
6999	Both parents	79900014
111	Neither parent (or uncertain)	79900015
3780	Both parents	79900015
129	Neither parent (or uncertain)	79900016
4416	Both parents	79900016
270	Neither parent (or uncertain)	79900017
9468	Both parents	79900017
354	Neither parent (or uncertain)	79900018
4548	Both parents	79900018
423	Neither parent (or uncertain)	79900019
6618	Both parents	79900019
285	Neither parent (or uncertain)	79900020
5253	Both parents	79900020
255	Neither parent (or uncertain)	79900021
5877	Both parents	79900021
312	Neither parent (or uncertain)	79900022
7866	Both parents	79900022
282	Neither parent (or uncertain)	79900023
3837	Both parents	79900023
519	Neither parent (or uncertain)	79900024
12828	Both parents	79900024
288	Neither parent (or uncertain)	79900025
6402	Both parents	79900025
357	Neither parent (or uncertain)	79900026
6312	Both parents	79900026
318	Neither parent (or uncertain)	79900027
6615	Both parents	79900027
105	Neither parent (or uncertain)	79900028
3207	Both parents	79900028
207	Neither parent (or uncertain)	79900029
6606	Both parents	79900029
258	Neither parent (or uncertain)	79900030
9288	Both parents	79900030
261	Neither parent (or uncertain)	79900031
3978	Both parents	79900031
369	Neither parent (or uncertain)	79900032
6093	Both parents	79900032
177	Neither parent (or uncertain)	79900033
3411	Both parents	79900033
273	Neither parent (or uncertain)	79900034
3780	Both parents	79900034
144	Neither parent (or uncertain)	79900035
3600	Both parents	79900035
192	Neither parent (or uncertain)	79900036
3891	Both parents	79900036
279	Neither parent (or uncertain)	79900037
11361	Both parents	79900037
42	Neither parent (or uncertain)	79900038
834	Both parents	79900038
267	Neither parent (or uncertain)	79900039
7785	Both parents	79900039
360	Neither parent (or uncertain)	79900040
13029	Both parents	79900040
87	Neither parent (or uncertain)	79900041
3216	Both parents	79900041
87	Neither parent (or uncertain)	79900042
3093	Both parents	79900042
123	Neither parent (or uncertain)	79900043
5748	Both parents	79900043
57	Neither parent (or uncertain)	79900044
2514	Both parents	79900044
33	Neither parent (or uncertain)	79900045
1821	Both parents	79900045
120	Neither parent (or uncertain)	79900046
2706	Both parents	79900046
51	Neither parent (or uncertain)	79900047
2697	Both parents	79900047
159	Neither parent (or uncertain)	79900048
7107	Both parents	79900048
414	Neither parent (or uncertain)	79900049
8949	Both parents	79900049
69	Neither parent (or uncertain)	79900050
3381	Both parents	79900050
201	Neither parent (or uncertain)	79900051
4020	Both parents	79900051
51	Neither parent (or uncertain)	79900052
3426	Both parents	79900052
114	Neither parent (or uncertain)	79900053
3528	Both parents	79900053
63	Neither parent (or uncertain)	79900054
3075	Both parents	79900054
102	Neither parent (or uncertain)	79900055
4941	Both parents	79900055
177	Neither parent (or uncertain)	79900056
831	Both parents	79900056
150	Neither parent (or uncertain)	79900057
4191	Both parents	79900057
510	Neither parent (or uncertain)	79900058
4608	Both parents	79900058
90	Neither parent (or uncertain)	79900059
2661	Both parents	79900059
210	Neither parent (or uncertain)	79900060
3885	Both parents	79900060
174	Neither parent (or uncertain)	79900061
7701	Both parents	79900061
156	Neither parent (or uncertain)	79900062
3585	Both parents	79900062
117	Neither parent (or uncertain)	79900063
2880	Both parents	79900063
120	Neither parent (or uncertain)	79900064
7305	Both parents	79900064
48	Neither parent (or uncertain)	79900065
3933	Both parents	79900065
66	Neither parent (or uncertain)	79900066
3534	Both parents	79900066
165	Neither parent (or uncertain)	79900067
3267	Both parents	79900067
303	Neither parent (or uncertain)	79900068
5631	Both parents	79900068
54	Neither parent (or uncertain)	79900069
4503	Both parents	79900069
93	Neither parent (or uncertain)	79900070
6495	Both parents	79900070
126	Neither parent (or uncertain)	79900071
6630	Both parents	79900071
132	Neither parent (or uncertain)	79900072
4236	Both parents	79900072
528	Neither parent (or uncertain)	79900073
10206	Both parents	79900073
264	Neither parent (or uncertain)	79900074
5184	Both parents	79900074
234	Neither parent (or uncertain)	79900075
7206	Both parents	79900075
240	Neither parent (or uncertain)	79900076
5661	Both parents	79900076
537	Neither parent (or uncertain)	79900077
17331	Both parents	79900077
57	Neither parent (or uncertain)	79900078
4398	Both parents	79900078
294	Neither parent (or uncertain)	79900079
5397	Both parents	79900079
114	Neither parent (or uncertain)	79900080
2940	Both parents	79900080
66	Neither parent (or uncertain)	79900081
1119	Both parents	79900081
123	Neither parent (or uncertain)	79900082
2280	Both parents	79900082
75	Neither parent (or uncertain)	79900083
1656	Both parents	79900083
207	Neither parent (or uncertain)	79900084
3951	Both parents	79900084
78	Neither parent (or uncertain)	79900085
5850	Both parents	79900085
360	Neither parent (or uncertain)	79900086
9162	Both parents	79900086
213	Neither parent (or uncertain)	79900087
4416	Both parents	79900087
276	Neither parent (or uncertain)	79900088
6390	Both parents	79900088
210	Neither parent (or uncertain)	79900089
7044	Both parents	79900089
255	Neither parent (or uncertain)	79900090
11064	Both parents	79900090
126	Neither parent (or uncertain)	79900091
7875	Both parents	79900091
189	Neither parent (or uncertain)	79900092
2883	Both parents	79900092
84	Neither parent (or uncertain)	79900093
3036	Both parents	79900093
237	Neither parent (or uncertain)	79900094
4308	Both parents	79900094
309	Neither parent (or uncertain)	79900095
5922	Both parents	79900095
117	Neither parent (or uncertain)	79900096
6240	Both parents	79900096
105	Neither parent (or uncertain)	79900097
4413	Both parents	79900097
81	Neither parent (or uncertain)	79900098
4806	Both parents	79900098
234	Neither parent (or uncertain)	79900099
7341	Both parents	79900099
234	Neither parent (or uncertain)	79900100
6297	Both parents	79900100
96	Neither parent (or uncertain)	79900101
6189	Both parents	79900101
333	Neither parent (or uncertain)	79900102
7344	Both parents	79900102
201	Neither parent (or uncertain)	79900103
6852	Both parents	79900103
225	Neither parent (or uncertain)	79900104
6762	Both parents	79900104
402	Neither parent (or uncertain)	79900105
5475	Both parents	79900105
165	Neither parent (or uncertain)	52103001
2157	Both parents	52103001
195	Neither parent (or uncertain)	52103002
2652	Both parents	52103002
216	Neither parent (or uncertain)	52103003
2595	Both parents	52103003
258	Neither parent (or uncertain)	52103004
2529	Both parents	52103004
198	Neither parent (or uncertain)	52103005
2463	Both parents	52103005
117	Neither parent (or uncertain)	52103006
1794	Both parents	52103006
132	Neither parent (or uncertain)	52103007
1770	Both parents	52103007
219	Neither parent (or uncertain)	52103008
2517	Both parents	52103008
195	Neither parent (or uncertain)	52103009
1887	Both parents	52103009
240	Neither parent (or uncertain)	52103010
2952	Both parents	52103010
273	Neither parent (or uncertain)	52103011
2208	Both parents	52103011
162	Neither parent (or uncertain)	52103012
1776	Both parents	52103012
126	Neither parent (or uncertain)	52103013
1827	Both parents	52103013
327	Neither parent (or uncertain)	52103014
1980	Both parents	52103014
258	Neither parent (or uncertain)	52103015
2334	Both parents	52103015
198	Neither parent (or uncertain)	52103016
2298	Both parents	52103016
198	Neither parent (or uncertain)	52103017
1920	Both parents	52103017
276	Neither parent (or uncertain)	52103018
3462	Both parents	52103018
219	Neither parent (or uncertain)	52103019
2652	Both parents	52103019
264	Neither parent (or uncertain)	52104001
2883	Both parents	52104001
291	Neither parent (or uncertain)	52104002
3165	Both parents	52104002
120	Neither parent (or uncertain)	52104003
2154	Both parents	52104003
309	Neither parent (or uncertain)	52104004
2334	Both parents	52104004
201	Neither parent (or uncertain)	52104005
3009	Both parents	52104005
225	Neither parent (or uncertain)	52104006
2352	Both parents	52104006
279	Neither parent (or uncertain)	52104007
2739	Both parents	52104007
276	Neither parent (or uncertain)	52104008
2796	Both parents	52104008
348	Neither parent (or uncertain)	52104009
3345	Both parents	52104009
363	Neither parent (or uncertain)	52104010
3108	Both parents	52104010
126	Neither parent (or uncertain)	52105001
2178	Both parents	52105001
126	Neither parent (or uncertain)	52105002
1764	Both parents	52105002
279	Neither parent (or uncertain)	52105003
3048	Both parents	52105003
258	Neither parent (or uncertain)	52105004
2811	Both parents	52105004
234	Neither parent (or uncertain)	52105005
3057	Both parents	52105005
117	Neither parent (or uncertain)	52105006
2034	Both parents	52105006
105	Neither parent (or uncertain)	52106001
1035	Both parents	52106001
90	Neither parent (or uncertain)	52106002
984	Both parents	52106002
72	Neither parent (or uncertain)	52106003
1293	Both parents	52106003
204	Neither parent (or uncertain)	52106004
2103	Both parents	52106004
246	Neither parent (or uncertain)	52106005
2610	Both parents	52106005
135	Neither parent (or uncertain)	52106006
1692	Both parents	52106006
222	Neither parent (or uncertain)	52106007
2076	Both parents	52106007
234	Neither parent (or uncertain)	52106008
2184	Both parents	52106008
282	Neither parent (or uncertain)	52106009
2925	Both parents	52106009
264	Neither parent (or uncertain)	52106010
2703	Both parents	52106010
189	Neither parent (or uncertain)	52106011
2127	Both parents	52106011
138	Neither parent (or uncertain)	52106012
1770	Both parents	52106012
96	Neither parent (or uncertain)	52106013
927	Both parents	52106013
117	Neither parent (or uncertain)	52106014
2121	Both parents	52106014
84	Neither parent (or uncertain)	52106015
1272	Both parents	52106015
66	Neither parent (or uncertain)	52106016
1008	Both parents	52106016
48	Neither parent (or uncertain)	52106017
1578	Both parents	52106017
189	Neither parent (or uncertain)	52106018
1158	Both parents	52106018
111	Neither parent (or uncertain)	52106019
657	Both parents	52106019
183	Neither parent (or uncertain)	52106020
3039	Both parents	52106020
132	Neither parent (or uncertain)	52106021
1569	Both parents	52106021
252	Neither parent (or uncertain)	52106022
1839	Both parents	52106022
87	Neither parent (or uncertain)	52106023
1428	Both parents	52106023
189	Neither parent (or uncertain)	52106024
2274	Both parents	52106024
246	Neither parent (or uncertain)	52106025
2205	Both parents	52106025
186	Neither parent (or uncertain)	52106026
2919	Both parents	52106026
231	Neither parent (or uncertain)	52106027
2490	Both parents	52106027
123	Neither parent (or uncertain)	52106028
1440	Both parents	52106028
234	Neither parent (or uncertain)	52106029
2466	Both parents	52106029
306	Neither parent (or uncertain)	52101001
1680	Both parents	52101001
237	Neither parent (or uncertain)	52101002
1509	Both parents	52101002
114	Neither parent (or uncertain)	52101003
1509	Both parents	52101003
153	Neither parent (or uncertain)	52101004
2313	Both parents	52101004
231	Neither parent (or uncertain)	52101005
3237	Both parents	52101005
210	Neither parent (or uncertain)	52101006
2526	Both parents	52101006
231	Neither parent (or uncertain)	52101007
1539	Both parents	52101007
159	Neither parent (or uncertain)	52101008
2046	Both parents	52101008
246	Neither parent (or uncertain)	52101009
2196	Both parents	52101009
219	Neither parent (or uncertain)	52101010
1797	Both parents	52101010
192	Neither parent (or uncertain)	52102001
1596	Both parents	52102001
195	Neither parent (or uncertain)	52102002
2475	Both parents	52102002
108	Neither parent (or uncertain)	52102003
1710	Both parents	52102003
129	Neither parent (or uncertain)	52102004
1380	Both parents	52102004
90	Neither parent (or uncertain)	52102005
1017	Both parents	52102005
87	Neither parent (or uncertain)	52102006
903	Both parents	52102006
216	Neither parent (or uncertain)	52102007
1680	Both parents	52102007
303	Neither parent (or uncertain)	52102008
2109	Both parents	52102008
111	Neither parent (or uncertain)	52102009
1707	Both parents	52102009
81	Neither parent (or uncertain)	52102010
1086	Both parents	52102010
276	Neither parent (or uncertain)	52201001
2331	Both parents	52201001
99	Neither parent (or uncertain)	52201002
1056	Both parents	52201002
303	Neither parent (or uncertain)	52201003
2841	Both parents	52201003
261	Neither parent (or uncertain)	52201004
2214	Both parents	52201004
291	Neither parent (or uncertain)	52201005
3075	Both parents	52201005
198	Neither parent (or uncertain)	52201006
1896	Both parents	52201006
126	Neither parent (or uncertain)	52201007
936	Both parents	52201007
171	Neither parent (or uncertain)	52201008
1863	Both parents	52201008
192	Neither parent (or uncertain)	52201009
2010	Both parents	52201009
165	Neither parent (or uncertain)	52201010
1425	Both parents	52201010
234	Neither parent (or uncertain)	52201011
1890	Both parents	52201011
225	Neither parent (or uncertain)	52201012
1908	Both parents	52201012
138	Neither parent (or uncertain)	52201013
1398	Both parents	52201013
72	Neither parent (or uncertain)	52202001
1347	Both parents	52202001
18	Neither parent (or uncertain)	52202002
177	Both parents	52202002
135	Neither parent (or uncertain)	52202003
879	Both parents	52202003
183	Neither parent (or uncertain)	52202004
1611	Both parents	52202004
48	Neither parent (or uncertain)	52202005
735	Both parents	52202005
207	Neither parent (or uncertain)	52202006
906	Both parents	52202006
210	Neither parent (or uncertain)	52202007
1230	Both parents	52202007
279	Neither parent (or uncertain)	52202008
3132	Both parents	52202008
243	Neither parent (or uncertain)	52202009
1884	Both parents	52202009
99	Neither parent (or uncertain)	52202010
1026	Both parents	52202010
174	Neither parent (or uncertain)	52202011
1506	Both parents	52202011
153	Neither parent (or uncertain)	52202012
2148	Both parents	52202012
360	Neither parent (or uncertain)	52203001
2331	Both parents	52203001
132	Neither parent (or uncertain)	52203002
1491	Both parents	52203002
147	Neither parent (or uncertain)	52203003
1449	Both parents	52203003
222	Neither parent (or uncertain)	52203004
3222	Both parents	52203004
255	Neither parent (or uncertain)	52204001
2427	Both parents	52204001
282	Neither parent (or uncertain)	52204002
2598	Both parents	52204002
252	Neither parent (or uncertain)	52204003
2136	Both parents	52204003
183	Neither parent (or uncertain)	52204004
1707	Both parents	52204004
444	Neither parent (or uncertain)	52205001
4080	Both parents	52205001
432	Neither parent (or uncertain)	52205002
3699	Both parents	52205002
321	Neither parent (or uncertain)	52205003
3450	Both parents	52205003
537	Neither parent (or uncertain)	52205004
2799	Both parents	52205004
303	Neither parent (or uncertain)	52205005
3753	Both parents	52205005
300	Neither parent (or uncertain)	52205006
4233	Both parents	52205006
462	Neither parent (or uncertain)	52205007
4194	Both parents	52205007
573	Neither parent (or uncertain)	52205008
3225	Both parents	52205008
366	Neither parent (or uncertain)	52205009
3084	Both parents	52205009
285	Neither parent (or uncertain)	52205010
3204	Both parents	52205010
420	Neither parent (or uncertain)	52205011
4170	Both parents	52205011
180	Neither parent (or uncertain)	52205012
2460	Both parents	52205012
477	Neither parent (or uncertain)	52205013
4761	Both parents	52205013
315	Neither parent (or uncertain)	52205014
3324	Both parents	52205014
411	Neither parent (or uncertain)	52205015
3777	Both parents	52205015
486	Neither parent (or uncertain)	52205016
4254	Both parents	52205016
351	Neither parent (or uncertain)	52205017
4689	Both parents	52205017
324	Neither parent (or uncertain)	52205018
4794	Both parents	52205018
534	Neither parent (or uncertain)	52205019
2622	Both parents	52205019
339	Neither parent (or uncertain)	52205020
2766	Both parents	52205020
204	Neither parent (or uncertain)	52205021
2076	Both parents	52205021
411	Neither parent (or uncertain)	52205022
2736	Both parents	52205022
249	Neither parent (or uncertain)	52205023
2772	Both parents	52205023
315	Neither parent (or uncertain)	52205024
3063	Both parents	52205024
258	Neither parent (or uncertain)	52205025
2355	Both parents	52205025
282	Neither parent (or uncertain)	52205026
2700	Both parents	52205026
183	Neither parent (or uncertain)	52205027
1749	Both parents	52205027
102	Neither parent (or uncertain)	52205028
3672	Both parents	52205028
258	Neither parent (or uncertain)	52205029
3666	Both parents	52205029
195	Neither parent (or uncertain)	52205030
3732	Both parents	52205030
117	Neither parent (or uncertain)	52205031
2109	Both parents	52205031
246	Neither parent (or uncertain)	52205032
3063	Both parents	52205032
234	Neither parent (or uncertain)	52205033
1719	Both parents	52205033
309	Neither parent (or uncertain)	52205034
4416	Both parents	52205034
156	Neither parent (or uncertain)	52205035
3267	Both parents	52205035
99	Neither parent (or uncertain)	52205036
3141	Both parents	52205036
219	Neither parent (or uncertain)	52205037
2514	Both parents	52205037
330	Neither parent (or uncertain)	52206001
2877	Both parents	52206001
213	Neither parent (or uncertain)	52206002
2484	Both parents	52206002
93	Neither parent (or uncertain)	52206003
1593	Both parents	52206003
210	Neither parent (or uncertain)	52206004
1311	Both parents	52206004
246	Neither parent (or uncertain)	52206005
2001	Both parents	52206005
213	Neither parent (or uncertain)	52206006
1788	Both parents	52206006
216	Neither parent (or uncertain)	52206007
2151	Both parents	52206007
180	Neither parent (or uncertain)	52207001
1305	Both parents	52207001
231	Neither parent (or uncertain)	52207002
2433	Both parents	52207002
339	Neither parent (or uncertain)	52207003
3060	Both parents	52207003
60	Neither parent (or uncertain)	52207004
675	Both parents	52207004
351	Neither parent (or uncertain)	52207005
2400	Both parents	52207005
267	Neither parent (or uncertain)	52207006
2835	Both parents	52207006
450	Neither parent (or uncertain)	52207007
2499	Both parents	52207007
171	Neither parent (or uncertain)	52302001
2049	Both parents	52302001
102	Neither parent (or uncertain)	52302002
1749	Both parents	52302002
249	Neither parent (or uncertain)	52302003
2460	Both parents	52302003
159	Neither parent (or uncertain)	52302004
1383	Both parents	52302004
207	Neither parent (or uncertain)	52302005
2289	Both parents	52302005
159	Neither parent (or uncertain)	52302006
2304	Both parents	52302006
150	Neither parent (or uncertain)	52302007
2556	Both parents	52302007
129	Neither parent (or uncertain)	52302008
1650	Both parents	52302008
228	Neither parent (or uncertain)	52302009
2571	Both parents	52302009
87	Neither parent (or uncertain)	52302010
1374	Both parents	52302010
63	Neither parent (or uncertain)	52302011
1311	Both parents	52302011
24	Neither parent (or uncertain)	52302012
1068	Both parents	52302012
288	Neither parent (or uncertain)	52302013
3642	Both parents	52302013
306	Neither parent (or uncertain)	52302014
3279	Both parents	52302014
237	Neither parent (or uncertain)	52302015
1863	Both parents	52302015
210	Neither parent (or uncertain)	52302016
1857	Both parents	52302016
162	Neither parent (or uncertain)	52302017
2106	Both parents	52302017
186	Neither parent (or uncertain)	52302018
2031	Both parents	52302018
159	Neither parent (or uncertain)	52302019
1989	Both parents	52302019
141	Neither parent (or uncertain)	52302020
2772	Both parents	52302020
174	Neither parent (or uncertain)	52302021
1839	Both parents	52302021
78	Neither parent (or uncertain)	52302022
2400	Both parents	52302022
204	Neither parent (or uncertain)	52302023
2205	Both parents	52302023
189	Neither parent (or uncertain)	52302024
2328	Both parents	52302024
210	Neither parent (or uncertain)	52302025
2211	Both parents	52302025
153	Neither parent (or uncertain)	52302026
1482	Both parents	52302026
270	Neither parent (or uncertain)	52302027
3957	Both parents	52302027
399	Neither parent (or uncertain)	52303001
2985	Both parents	52303001
276	Neither parent (or uncertain)	52303002
3444	Both parents	52303002
252	Neither parent (or uncertain)	52303003
2955	Both parents	52303003
237	Neither parent (or uncertain)	52303004
3549	Both parents	52303004
255	Neither parent (or uncertain)	52303005
2454	Both parents	52303005
276	Neither parent (or uncertain)	52303006
2958	Both parents	52303006
162	Neither parent (or uncertain)	52303007
3861	Both parents	52303007
156	Neither parent (or uncertain)	52303008
3972	Both parents	52303008
144	Neither parent (or uncertain)	52303009
4092	Both parents	52303009
174	Neither parent (or uncertain)	52303010
3126	Both parents	52303010
195	Neither parent (or uncertain)	52304001
2205	Both parents	52304001
183	Neither parent (or uncertain)	52304002
2064	Both parents	52304002
126	Neither parent (or uncertain)	52304003
2280	Both parents	52304003
75	Neither parent (or uncertain)	52304004
1614	Both parents	52304004
360	Neither parent (or uncertain)	52304005
2808	Both parents	52304005
120	Neither parent (or uncertain)	52304006
2040	Both parents	52304006
222	Neither parent (or uncertain)	52304007
3132	Both parents	52304007
192	Neither parent (or uncertain)	52304008
3387	Both parents	52304008
183	Neither parent (or uncertain)	52304009
2184	Both parents	52304009
138	Neither parent (or uncertain)	52305001
2523	Both parents	52305001
297	Neither parent (or uncertain)	52305002
3510	Both parents	52305002
189	Neither parent (or uncertain)	52305003
2931	Both parents	52305003
216	Neither parent (or uncertain)	52305004
2817	Both parents	52305004
210	Neither parent (or uncertain)	52305005
2667	Both parents	52305005
204	Neither parent (or uncertain)	52305006
2718	Both parents	52305006
195	Neither parent (or uncertain)	52305007
2586	Both parents	52305007
219	Neither parent (or uncertain)	52305008
2634	Both parents	52305008
207	Neither parent (or uncertain)	52305009
2754	Both parents	52305009
219	Neither parent (or uncertain)	52305010
2472	Both parents	52305010
282	Neither parent (or uncertain)	52305011
3051	Both parents	52305011
273	Neither parent (or uncertain)	52305012
2601	Both parents	52305012
243	Neither parent (or uncertain)	52305013
2652	Both parents	52305013
306	Neither parent (or uncertain)	52305014
2694	Both parents	52305014
186	Neither parent (or uncertain)	52306001
2217	Both parents	52306001
183	Neither parent (or uncertain)	52306002
2109	Both parents	52306002
219	Neither parent (or uncertain)	52306003
1995	Both parents	52306003
180	Neither parent (or uncertain)	52306004
2649	Both parents	52306004
138	Neither parent (or uncertain)	52306005
2073	Both parents	52306005
150	Neither parent (or uncertain)	52306006
2436	Both parents	52306006
123	Neither parent (or uncertain)	52306007
1881	Both parents	52306007
249	Neither parent (or uncertain)	52306008
2832	Both parents	52306008
315	Neither parent (or uncertain)	52306009
2856	Both parents	52306009
315	Neither parent (or uncertain)	52306010
3558	Both parents	52306010
201	Neither parent (or uncertain)	52306011
2331	Both parents	52306011
117	Neither parent (or uncertain)	52306012
2061	Both parents	52306012
246	Neither parent (or uncertain)	52306013
2622	Both parents	52306013
63	Neither parent (or uncertain)	52701001
1386	Both parents	52701001
105	Neither parent (or uncertain)	52701002
2343	Both parents	52701002
156	Neither parent (or uncertain)	52701003
3576	Both parents	52701003
183	Neither parent (or uncertain)	52701004
3372	Both parents	52701004
255	Neither parent (or uncertain)	52701005
2508	Both parents	52701005
204	Neither parent (or uncertain)	52701006
4455	Both parents	52701006
159	Neither parent (or uncertain)	52701007
3312	Both parents	52701007
114	Neither parent (or uncertain)	52701008
2670	Both parents	52701008
177	Neither parent (or uncertain)	52701009
4131	Both parents	52701009
90	Neither parent (or uncertain)	52701010
2115	Both parents	52701010
105	Neither parent (or uncertain)	52701011
2940	Both parents	52701011
90	Neither parent (or uncertain)	52701012
2361	Both parents	52701012
126	Neither parent (or uncertain)	52701013
3309	Both parents	52701013
141	Neither parent (or uncertain)	52701014
2871	Both parents	52701014
141	Neither parent (or uncertain)	52701015
3387	Both parents	52701015
105	Neither parent (or uncertain)	52701016
2694	Both parents	52701016
144	Neither parent (or uncertain)	52701017
2925	Both parents	52701017
486	Neither parent (or uncertain)	52702001
1833	Both parents	52702001
225	Neither parent (or uncertain)	52702002
2229	Both parents	52702002
306	Neither parent (or uncertain)	52702003
2907	Both parents	52702003
192	Neither parent (or uncertain)	52702004
2670	Both parents	52702004
348	Neither parent (or uncertain)	52702005
4077	Both parents	52702005
171	Neither parent (or uncertain)	52702006
2214	Both parents	52702006
153	Neither parent (or uncertain)	52702007
2526	Both parents	52702007
312	Neither parent (or uncertain)	52702008
2313	Both parents	52702008
207	Neither parent (or uncertain)	52702009
3093	Both parents	52702009
294	Neither parent (or uncertain)	52702010
3816	Both parents	52702010
276	Neither parent (or uncertain)	52702011
2304	Both parents	52702011
177	Neither parent (or uncertain)	52702012
3729	Both parents	52702012
150	Neither parent (or uncertain)	52702013
3768	Both parents	52702013
378	Neither parent (or uncertain)	52702014
3285	Both parents	52702014
180	Neither parent (or uncertain)	52702015
2886	Both parents	52702015
195	Neither parent (or uncertain)	52702016
3054	Both parents	52702016
219	Neither parent (or uncertain)	52702017
3771	Both parents	52702017
366	Neither parent (or uncertain)	52702018
2520	Both parents	52702018
237	Neither parent (or uncertain)	52702019
2946	Both parents	52702019
114	Neither parent (or uncertain)	52702020
1785	Both parents	52702020
372	Neither parent (or uncertain)	52703001
2913	Both parents	52703001
282	Neither parent (or uncertain)	52703002
2178	Both parents	52703002
135	Neither parent (or uncertain)	52703003
942	Both parents	52703003
333	Neither parent (or uncertain)	52703004
3333	Both parents	52703004
153	Neither parent (or uncertain)	52704001
2091	Both parents	52704001
192	Neither parent (or uncertain)	52704002
1218	Both parents	52704002
315	Neither parent (or uncertain)	52704003
3693	Both parents	52704003
216	Neither parent (or uncertain)	52704004
3675	Both parents	52704004
174	Neither parent (or uncertain)	52704005
2484	Both parents	52704005
162	Neither parent (or uncertain)	52704006
2739	Both parents	52704006
198	Neither parent (or uncertain)	52704007
2595	Both parents	52704007
339	Neither parent (or uncertain)	52704008
3627	Both parents	52704008
78	Neither parent (or uncertain)	52705001
1404	Both parents	52705001
414	Neither parent (or uncertain)	52705002
3885	Both parents	52705002
267	Neither parent (or uncertain)	52705003
4410	Both parents	52705003
117	Neither parent (or uncertain)	52705004
1410	Both parents	52705004
96	Neither parent (or uncertain)	52705005
732	Both parents	52705005
399	Neither parent (or uncertain)	52705006
3765	Both parents	52705006
408	Neither parent (or uncertain)	52705007
2187	Both parents	52705007
204	Neither parent (or uncertain)	52705008
2985	Both parents	52705008
192	Neither parent (or uncertain)	52705009
2223	Both parents	52705009
297	Neither parent (or uncertain)	52705010
2877	Both parents	52705010
234	Neither parent (or uncertain)	52705011
2409	Both parents	52705011
240	Neither parent (or uncertain)	52705012
2883	Both parents	52705012
201	Neither parent (or uncertain)	52705013
1341	Both parents	52705013
150	Neither parent (or uncertain)	52705014
2235	Both parents	52705014
315	Neither parent (or uncertain)	52705015
2097	Both parents	52705015
315	Neither parent (or uncertain)	52705016
3669	Both parents	52705016
450	Neither parent (or uncertain)	52705017
2190	Both parents	52705017
321	Neither parent (or uncertain)	52705018
3783	Both parents	52705018
300	Neither parent (or uncertain)	52705019
2778	Both parents	52705019
141	Neither parent (or uncertain)	52802001
2571	Both parents	52802001
51	Neither parent (or uncertain)	52802002
2247	Both parents	52802002
21	Neither parent (or uncertain)	52802003
1692	Both parents	52802003
147	Neither parent (or uncertain)	52802004
3174	Both parents	52802004
282	Neither parent (or uncertain)	52802005
3639	Both parents	52802005
219	Neither parent (or uncertain)	52802006
3060	Both parents	52802006
66	Neither parent (or uncertain)	52802007
1368	Both parents	52802007
90	Neither parent (or uncertain)	52802008
1140	Both parents	52802008
126	Neither parent (or uncertain)	52802009
2943	Both parents	52802009
246	Neither parent (or uncertain)	52802010
2652	Both parents	52802010
261	Neither parent (or uncertain)	52802011
2343	Both parents	52802011
153	Neither parent (or uncertain)	52802012
2187	Both parents	52802012
327	Neither parent (or uncertain)	52802013
4140	Both parents	52802013
207	Neither parent (or uncertain)	52802014
3081	Both parents	52802014
228	Neither parent (or uncertain)	52802015
3219	Both parents	52802015
93	Neither parent (or uncertain)	52802016
1941	Both parents	52802016
120	Neither parent (or uncertain)	52802017
2259	Both parents	52802017
393	Neither parent (or uncertain)	52802018
3855	Both parents	52802018
177	Neither parent (or uncertain)	52802019
2889	Both parents	52802019
114	Neither parent (or uncertain)	52802020
1944	Both parents	52802020
117	Neither parent (or uncertain)	52802021
1476	Both parents	52802021
141	Neither parent (or uncertain)	52802022
2391	Both parents	52802022
87	Neither parent (or uncertain)	52802023
1929	Both parents	52802023
576	Neither parent (or uncertain)	52802024
3198	Both parents	52802024
309	Neither parent (or uncertain)	52802025
3186	Both parents	52802025
78	Neither parent (or uncertain)	52802026
2247	Both parents	52802026
126	Neither parent (or uncertain)	52802027
2079	Both parents	52802027
204	Neither parent (or uncertain)	52802028
1446	Both parents	52802028
342	Neither parent (or uncertain)	52802029
3804	Both parents	52802029
342	Neither parent (or uncertain)	52802030
930	Both parents	52802030
330	Neither parent (or uncertain)	52806001
3339	Both parents	52806001
213	Neither parent (or uncertain)	52806002
2370	Both parents	52806002
162	Neither parent (or uncertain)	52806003
2307	Both parents	52806003
156	Neither parent (or uncertain)	52806004
1788	Both parents	52806004
186	Neither parent (or uncertain)	52806005
2103	Both parents	52806005
483	Neither parent (or uncertain)	52806006
2343	Both parents	52806006
303	Neither parent (or uncertain)	52806007
2352	Both parents	52806007
204	Neither parent (or uncertain)	52806008
2016	Both parents	52806008
225	Neither parent (or uncertain)	52806009
2295	Both parents	52806009
270	Neither parent (or uncertain)	52806010
2361	Both parents	52806010
144	Neither parent (or uncertain)	52806011
1920	Both parents	52806011
264	Neither parent (or uncertain)	52806012
2547	Both parents	52806012
294	Neither parent (or uncertain)	52806013
2985	Both parents	52806013
201	Neither parent (or uncertain)	52806014
2376	Both parents	52806014
123	Neither parent (or uncertain)	52801001
1557	Both parents	52801001
72	Neither parent (or uncertain)	52801002
903	Both parents	52801002
159	Neither parent (or uncertain)	52801003
1956	Both parents	52801003
330	Neither parent (or uncertain)	52801004
2382	Both parents	52801004
147	Neither parent (or uncertain)	52801005
2079	Both parents	52801005
141	Neither parent (or uncertain)	52801006
1848	Both parents	52801006
117	Neither parent (or uncertain)	52801007
1575	Both parents	52801007
252	Neither parent (or uncertain)	52801008
2862	Both parents	52801008
300	Neither parent (or uncertain)	52801009
2766	Both parents	52801009
252	Neither parent (or uncertain)	52801010
1935	Both parents	52801010
384	Neither parent (or uncertain)	52801011
2043	Both parents	52801011
240	Neither parent (or uncertain)	52801012
2469	Both parents	52801012
174	Neither parent (or uncertain)	52801013
2310	Both parents	52801013
267	Neither parent (or uncertain)	52801014
2730	Both parents	52801014
324	Neither parent (or uncertain)	52801015
2526	Both parents	52801015
171	Neither parent (or uncertain)	52803001
2262	Both parents	52803001
216	Neither parent (or uncertain)	52803002
2907	Both parents	52803002
264	Neither parent (or uncertain)	52803003
3132	Both parents	52803003
168	Neither parent (or uncertain)	52803004
2595	Both parents	52803004
270	Neither parent (or uncertain)	52803005
3102	Both parents	52803005
255	Neither parent (or uncertain)	52803006
2652	Both parents	52803006
213	Neither parent (or uncertain)	52803007
2295	Both parents	52803007
273	Neither parent (or uncertain)	52803008
2364	Both parents	52803008
375	Neither parent (or uncertain)	52804001
2010	Both parents	52804001
261	Neither parent (or uncertain)	52804002
2421	Both parents	52804002
219	Neither parent (or uncertain)	52804003
1920	Both parents	52804003
402	Neither parent (or uncertain)	52804004
2349	Both parents	52804004
327	Neither parent (or uncertain)	52804005
2883	Both parents	52804005
198	Neither parent (or uncertain)	52804006
2079	Both parents	52804006
345	Neither parent (or uncertain)	52804007
1545	Both parents	52804007
252	Neither parent (or uncertain)	52804008
2520	Both parents	52804008
237	Neither parent (or uncertain)	52804009
2244	Both parents	52804009
234	Neither parent (or uncertain)	52804010
2526	Both parents	52804010
108	Neither parent (or uncertain)	52804011
1782	Both parents	52804011
120	Neither parent (or uncertain)	52804012
1191	Both parents	52804012
492	Neither parent (or uncertain)	52804013
1866	Both parents	52804013
255	Neither parent (or uncertain)	52804014
2862	Both parents	52804014
231	Neither parent (or uncertain)	52804015
2565	Both parents	52804015
375	Neither parent (or uncertain)	52804016
3489	Both parents	52804016
189	Neither parent (or uncertain)	52804017
1845	Both parents	52804017
63	Neither parent (or uncertain)	52804018
846	Both parents	52804018
99	Neither parent (or uncertain)	52804019
1128	Both parents	52804019
348	Neither parent (or uncertain)	52804020
2736	Both parents	52804020
201	Neither parent (or uncertain)	52804021
2055	Both parents	52804021
210	Neither parent (or uncertain)	52804022
2091	Both parents	52804022
261	Neither parent (or uncertain)	52804023
2337	Both parents	52804023
267	Neither parent (or uncertain)	52804024
2529	Both parents	52804024
273	Neither parent (or uncertain)	52804025
1902	Both parents	52804025
177	Neither parent (or uncertain)	52804026
2397	Both parents	52804026
105	Neither parent (or uncertain)	52805001
1815	Both parents	52805001
147	Neither parent (or uncertain)	52805002
1740	Both parents	52805002
429	Neither parent (or uncertain)	52805003
2505	Both parents	52805003
168	Neither parent (or uncertain)	52805004
2397	Both parents	52805004
255	Neither parent (or uncertain)	52805005
3117	Both parents	52805005
147	Neither parent (or uncertain)	52805006
1821	Both parents	52805006
255	Neither parent (or uncertain)	54301001
3435	Both parents	54301001
156	Neither parent (or uncertain)	54301002
3354	Both parents	54301002
264	Neither parent (or uncertain)	54301003
3135	Both parents	54301003
213	Neither parent (or uncertain)	54301004
2814	Both parents	54301004
309	Neither parent (or uncertain)	54301005
2220	Both parents	54301005
291	Neither parent (or uncertain)	54301006
2403	Both parents	54301006
204	Neither parent (or uncertain)	54301007
2256	Both parents	54301007
282	Neither parent (or uncertain)	54301008
2613	Both parents	54301008
249	Neither parent (or uncertain)	54301009
2727	Both parents	54301009
246	Neither parent (or uncertain)	54301010
2412	Both parents	54301010
231	Neither parent (or uncertain)	54301011
2067	Both parents	54301011
105	Neither parent (or uncertain)	54302001
939	Both parents	54302001
63	Neither parent (or uncertain)	54302002
639	Both parents	54302002
51	Neither parent (or uncertain)	54302003
438	Both parents	54302003
12	Neither parent (or uncertain)	54302004
330	Both parents	54302004
201	Neither parent (or uncertain)	54303001
2718	Both parents	54303001
354	Neither parent (or uncertain)	54303002
1641	Both parents	54303002
54	Neither parent (or uncertain)	54303003
1416	Both parents	54303003
165	Neither parent (or uncertain)	54303004
2889	Both parents	54303004
27	Neither parent (or uncertain)	54303005
660	Both parents	54303005
144	Neither parent (or uncertain)	54303006
2337	Both parents	54303006
162	Neither parent (or uncertain)	54303007
1665	Both parents	54303007
123	Neither parent (or uncertain)	54303008
1833	Both parents	54303008
186	Neither parent (or uncertain)	54304001
2157	Both parents	54304001
294	Neither parent (or uncertain)	54304002
936	Both parents	54304002
237	Neither parent (or uncertain)	54304003
2493	Both parents	54304003
249	Neither parent (or uncertain)	54304004
2436	Both parents	54304004
264	Neither parent (or uncertain)	54304005
2571	Both parents	54304005
210	Neither parent (or uncertain)	54304006
2223	Both parents	54304006
249	Neither parent (or uncertain)	54304007
2028	Both parents	54304007
240	Neither parent (or uncertain)	54304008
3306	Both parents	54304008
108	Neither parent (or uncertain)	54304009
1749	Both parents	54304009
189	Neither parent (or uncertain)	54304010
2382	Both parents	54304010
204	Neither parent (or uncertain)	54304011
2139	Both parents	54304011
225	Neither parent (or uncertain)	54304012
3003	Both parents	54304012
303	Neither parent (or uncertain)	54305001
2931	Both parents	54305001
201	Neither parent (or uncertain)	54305002
2856	Both parents	54305002
204	Neither parent (or uncertain)	54305003
2127	Both parents	54305003
228	Neither parent (or uncertain)	54305004
2826	Both parents	54305004
276	Neither parent (or uncertain)	54305005
3219	Both parents	54305005
231	Neither parent (or uncertain)	54305006
3408	Both parents	54305006
231	Neither parent (or uncertain)	54305007
2592	Both parents	54305007
291	Neither parent (or uncertain)	54305008
2556	Both parents	54305008
249	Neither parent (or uncertain)	54305009
2163	Both parents	54305009
279	Neither parent (or uncertain)	54305010
2919	Both parents	54305010
222	Neither parent (or uncertain)	54305011
1896	Both parents	54305011
273	Neither parent (or uncertain)	54305012
2604	Both parents	54305012
252	Neither parent (or uncertain)	54305013
3288	Both parents	54305013
273	Neither parent (or uncertain)	54305014
2952	Both parents	54305014
168	Neither parent (or uncertain)	54305015
2445	Both parents	54305015
183	Neither parent (or uncertain)	54305016
1785	Both parents	54305016
270	Neither parent (or uncertain)	54305017
2382	Both parents	54305017
264	Neither parent (or uncertain)	54305018
2763	Both parents	54305018
207	Neither parent (or uncertain)	54305019
2292	Both parents	54305019
267	Neither parent (or uncertain)	54305020
2706	Both parents	54305020
114	Neither parent (or uncertain)	52401001
1614	Both parents	52401001
534	Neither parent (or uncertain)	52401002
2718	Both parents	52401002
342	Neither parent (or uncertain)	52401003
4179	Both parents	52401003
171	Neither parent (or uncertain)	52401004
1863	Both parents	52401004
150	Neither parent (or uncertain)	52401005
2418	Both parents	52401005
156	Neither parent (or uncertain)	52401006
2754	Both parents	52401006
303	Neither parent (or uncertain)	52402001
4638	Both parents	52402001
195	Neither parent (or uncertain)	52402002
3258	Both parents	52402002
330	Neither parent (or uncertain)	52402003
3561	Both parents	52402003
255	Neither parent (or uncertain)	52402004
2799	Both parents	52402004
261	Neither parent (or uncertain)	52402005
2925	Both parents	52402005
231	Neither parent (or uncertain)	52402006
2247	Both parents	52402006
255	Neither parent (or uncertain)	52402007
2655	Both parents	52402007
186	Neither parent (or uncertain)	52402008
2922	Both parents	52402008
228	Neither parent (or uncertain)	52402009
3180	Both parents	52402009
225	Neither parent (or uncertain)	52402010
3417	Both parents	52402010
240	Neither parent (or uncertain)	52402011
3897	Both parents	52402011
219	Neither parent (or uncertain)	52402012
2490	Both parents	52402012
228	Neither parent (or uncertain)	52402013
3051	Both parents	52402013
318	Neither parent (or uncertain)	52402014
2472	Both parents	52402014
231	Neither parent (or uncertain)	52402015
3726	Both parents	52402015
210	Neither parent (or uncertain)	52402016
2517	Both parents	52402016
213	Neither parent (or uncertain)	52402017
2589	Both parents	52402017
249	Neither parent (or uncertain)	52404001
3375	Both parents	52404001
231	Neither parent (or uncertain)	52404002
3270	Both parents	52404002
240	Neither parent (or uncertain)	52404003
3453	Both parents	52404003
237	Neither parent (or uncertain)	52404004
2970	Both parents	52404004
258	Neither parent (or uncertain)	52404005
3798	Both parents	52404005
264	Neither parent (or uncertain)	52404006
3411	Both parents	52404006
162	Neither parent (or uncertain)	52404007
2511	Both parents	52404007
180	Neither parent (or uncertain)	52404008
2535	Both parents	52404008
396	Neither parent (or uncertain)	52404009
2736	Both parents	52404009
162	Neither parent (or uncertain)	52404010
2757	Both parents	52404010
186	Neither parent (or uncertain)	52404011
2862	Both parents	52404011
207	Neither parent (or uncertain)	52404012
2400	Both parents	52404012
153	Neither parent (or uncertain)	52404013
2616	Both parents	52404013
294	Neither parent (or uncertain)	52404014
3333	Both parents	52404014
168	Neither parent (or uncertain)	52404015
2688	Both parents	52404015
147	Neither parent (or uncertain)	52404016
3483	Both parents	52404016
192	Neither parent (or uncertain)	52404017
3507	Both parents	52404017
195	Neither parent (or uncertain)	52404018
2883	Both parents	52404018
276	Neither parent (or uncertain)	52404019
3111	Both parents	52404019
243	Neither parent (or uncertain)	52405001
3405	Both parents	52405001
309	Neither parent (or uncertain)	52405002
2760	Both parents	52405002
303	Neither parent (or uncertain)	52405003
2661	Both parents	52405003
207	Neither parent (or uncertain)	52405004
2367	Both parents	52405004
168	Neither parent (or uncertain)	52405005
2379	Both parents	52405005
282	Neither parent (or uncertain)	52405006
2568	Both parents	52405006
201	Neither parent (or uncertain)	52405007
2421	Both parents	52405007
261	Neither parent (or uncertain)	52405008
3540	Both parents	52405008
54	Neither parent (or uncertain)	52405009
969	Both parents	52405009
405	Neither parent (or uncertain)	52405010
1416	Both parents	52405010
201	Neither parent (or uncertain)	52405011
2364	Both parents	52405011
309	Neither parent (or uncertain)	52502001
3810	Both parents	52502001
87	Neither parent (or uncertain)	52502002
2022	Both parents	52502002
39	Neither parent (or uncertain)	52502003
1488	Both parents	52502003
24	Neither parent (or uncertain)	52502004
1677	Both parents	52502004
90	Neither parent (or uncertain)	52502005
2055	Both parents	52502005
414	Neither parent (or uncertain)	52502006
6546	Both parents	52502006
324	Neither parent (or uncertain)	52502007
4950	Both parents	52502007
276	Neither parent (or uncertain)	52502008
1977	Both parents	52502008
216	Neither parent (or uncertain)	52502009
3900	Both parents	52502009
192	Neither parent (or uncertain)	52502010
2664	Both parents	52502010
228	Neither parent (or uncertain)	52502011
2352	Both parents	52502011
228	Neither parent (or uncertain)	52502012
2481	Both parents	52502012
180	Neither parent (or uncertain)	52502013
2070	Both parents	52502013
231	Neither parent (or uncertain)	52502014
3798	Both parents	52502014
273	Neither parent (or uncertain)	52502015
3051	Both parents	52502015
384	Neither parent (or uncertain)	52502016
4131	Both parents	52502016
237	Neither parent (or uncertain)	52502017
2568	Both parents	52502017
243	Neither parent (or uncertain)	52502018
3396	Both parents	52502018
174	Neither parent (or uncertain)	52502019
2460	Both parents	52502019
297	Neither parent (or uncertain)	52502020
3432	Both parents	52502020
252	Neither parent (or uncertain)	52502021
2982	Both parents	52502021
213	Neither parent (or uncertain)	52502022
1833	Both parents	52502022
240	Neither parent (or uncertain)	52502023
2217	Both parents	52502023
321	Neither parent (or uncertain)	52502024
2745	Both parents	52502024
156	Neither parent (or uncertain)	52502025
2544	Both parents	52502025
126	Neither parent (or uncertain)	52502026
1671	Both parents	52502026
195	Neither parent (or uncertain)	52502027
2604	Both parents	52502027
159	Neither parent (or uncertain)	52502028
1395	Both parents	52502028
285	Neither parent (or uncertain)	52502029
2463	Both parents	52502029
399	Neither parent (or uncertain)	52502030
2829	Both parents	52502030
231	Neither parent (or uncertain)	52502031
3135	Both parents	52502031
213	Neither parent (or uncertain)	52503001
3480	Both parents	52503001
162	Neither parent (or uncertain)	52503002
1080	Both parents	52503002
195	Neither parent (or uncertain)	52503003
2352	Both parents	52503003
183	Neither parent (or uncertain)	52503004
2580	Both parents	52503004
246	Neither parent (or uncertain)	52504001
2520	Both parents	52504001
195	Neither parent (or uncertain)	52504002
1965	Both parents	52504002
267	Neither parent (or uncertain)	52504003
2448	Both parents	52504003
189	Neither parent (or uncertain)	52504004
2778	Both parents	52504004
150	Neither parent (or uncertain)	52504005
2265	Both parents	52504005
222	Neither parent (or uncertain)	52504006
2802	Both parents	52504006
216	Neither parent (or uncertain)	52504007
2229	Both parents	52504007
270	Neither parent (or uncertain)	52504008
2652	Both parents	52504008
246	Neither parent (or uncertain)	52504009
2874	Both parents	52504009
255	Neither parent (or uncertain)	52504010
3411	Both parents	52504010
276	Neither parent (or uncertain)	52504011
3009	Both parents	52504011
366	Neither parent (or uncertain)	52603001
2916	Both parents	52603001
351	Neither parent (or uncertain)	52603002
2346	Both parents	52603002
369	Neither parent (or uncertain)	52603003
3477	Both parents	52603003
282	Neither parent (or uncertain)	52603004
1770	Both parents	52603004
459	Neither parent (or uncertain)	52603005
2841	Both parents	52603005
309	Neither parent (or uncertain)	52603006
2982	Both parents	52603006
303	Neither parent (or uncertain)	52603007
3138	Both parents	52603007
108	Neither parent (or uncertain)	52603008
687	Both parents	52603008
51	Neither parent (or uncertain)	52603009
1203	Both parents	52603009
57	Neither parent (or uncertain)	52603010
552	Both parents	52603010
438	Neither parent (or uncertain)	52603011
2211	Both parents	52603011
534	Neither parent (or uncertain)	52603012
2595	Both parents	52603012
453	Neither parent (or uncertain)	52603013
2898	Both parents	52603013
264	Neither parent (or uncertain)	52603014
2553	Both parents	52603014
174	Neither parent (or uncertain)	52603015
2595	Both parents	52603015
348	Neither parent (or uncertain)	52603016
2493	Both parents	52603016
300	Neither parent (or uncertain)	52603017
3558	Both parents	52603017
327	Neither parent (or uncertain)	52603018
1788	Both parents	52603018
324	Neither parent (or uncertain)	52603019
1761	Both parents	52603019
324	Neither parent (or uncertain)	52603020
2748	Both parents	52603020
357	Neither parent (or uncertain)	52603021
3711	Both parents	52603021
291	Neither parent (or uncertain)	52603022
2829	Both parents	52603022
261	Neither parent (or uncertain)	52601001
3720	Both parents	52601001
411	Neither parent (or uncertain)	52601002
4419	Both parents	52601002
216	Neither parent (or uncertain)	52601003
2655	Both parents	52601003
297	Neither parent (or uncertain)	52601004
2820	Both parents	52601004
336	Neither parent (or uncertain)	52601005
2595	Both parents	52601005
312	Neither parent (or uncertain)	52601006
2517	Both parents	52601006
225	Neither parent (or uncertain)	52601007
2268	Both parents	52601007
192	Neither parent (or uncertain)	52601008
2634	Both parents	52601008
321	Neither parent (or uncertain)	52602001
3540	Both parents	52602001
216	Neither parent (or uncertain)	52602002
2103	Both parents	52602002
189	Neither parent (or uncertain)	52602003
2694	Both parents	52602003
285	Neither parent (or uncertain)	52602004
3378	Both parents	52602004
207	Neither parent (or uncertain)	52602005
2568	Both parents	52602005
186	Neither parent (or uncertain)	52602006
2445	Both parents	52602006
213	Neither parent (or uncertain)	52602007
2130	Both parents	52602007
456	Neither parent (or uncertain)	52602008
2154	Both parents	52602008
360	Neither parent (or uncertain)	52602009
3567	Both parents	52602009
300	Neither parent (or uncertain)	52602010
2787	Both parents	52602010
198	Neither parent (or uncertain)	52602011
2256	Both parents	52602011
258	Neither parent (or uncertain)	52602012
3006	Both parents	52602012
147	Neither parent (or uncertain)	52602013
1515	Both parents	52602013
159	Neither parent (or uncertain)	52602014
2016	Both parents	52602014
291	Neither parent (or uncertain)	52605001
3663	Both parents	52605001
267	Neither parent (or uncertain)	52605002
3498	Both parents	52605002
426	Neither parent (or uncertain)	52605003
3516	Both parents	52605003
426	Neither parent (or uncertain)	52605004
3477	Both parents	52605004
252	Neither parent (or uncertain)	52605005
2964	Both parents	52605005
207	Neither parent (or uncertain)	52605006
2307	Both parents	52605006
402	Neither parent (or uncertain)	52605007
3018	Both parents	52605007
231	Neither parent (or uncertain)	52605008
2415	Both parents	52605008
282	Neither parent (or uncertain)	52605009
3561	Both parents	52605009
453	Neither parent (or uncertain)	52605010
2550	Both parents	52605010
276	Neither parent (or uncertain)	52605011
3228	Both parents	52605011
234	Neither parent (or uncertain)	52605012
3429	Both parents	52605012
192	Neither parent (or uncertain)	52605013
2130	Both parents	52605013
261	Neither parent (or uncertain)	52605014
3885	Both parents	52605014
288	Neither parent (or uncertain)	52605015
2001	Both parents	52605015
696	Neither parent (or uncertain)	52605016
3579	Both parents	52605016
309	Neither parent (or uncertain)	52605017
2334	Both parents	52605017
450	Neither parent (or uncertain)	52605018
2976	Both parents	52605018
3	Neither parent (or uncertain)	52605019
78	Both parents	52605019
147	Neither parent (or uncertain)	52605020
1635	Both parents	52605020
252	Neither parent (or uncertain)	52605021
2268	Both parents	52605021
144	Neither parent (or uncertain)	52606001
2070	Both parents	52606001
582	Neither parent (or uncertain)	52606002
2241	Both parents	52606002
198	Neither parent (or uncertain)	52606003
1971	Both parents	52606003
231	Neither parent (or uncertain)	52606004
2187	Both parents	52606004
234	Neither parent (or uncertain)	52606005
2847	Both parents	52606005
150	Neither parent (or uncertain)	52606006
2052	Both parents	52606006
171	Neither parent (or uncertain)	52606007
2442	Both parents	52606007
234	Neither parent (or uncertain)	52606008
2787	Both parents	52606008
204	Neither parent (or uncertain)	52606009
2349	Both parents	52606009
207	Neither parent (or uncertain)	52606010
1872	Both parents	52606010
213	Neither parent (or uncertain)	52606011
2292	Both parents	52606011
72	Neither parent (or uncertain)	52606012
1368	Both parents	52606012
285	Neither parent (or uncertain)	52606013
2700	Both parents	52606013
213	Neither parent (or uncertain)	52606014
3333	Both parents	52606014
207	Neither parent (or uncertain)	52606015
3270	Both parents	52606015
297	Neither parent (or uncertain)	52606016
2616	Both parents	52606016
234	Neither parent (or uncertain)	52606017
2727	Both parents	52606017
288	Neither parent (or uncertain)	52606018
2175	Both parents	52606018
75	Neither parent (or uncertain)	52606019
1119	Both parents	52606019
228	Neither parent (or uncertain)	52606020
2418	Both parents	52606020
312	Neither parent (or uncertain)	52606021
2148	Both parents	52606021
135	Neither parent (or uncertain)	52606022
1968	Both parents	52606022
204	Neither parent (or uncertain)	52606023
2163	Both parents	52606023
150	Neither parent (or uncertain)	52606024
2292	Both parents	52606024
255	Neither parent (or uncertain)	52904001
2166	Both parents	52904001
507	Neither parent (or uncertain)	52904002
2808	Both parents	52904002
327	Neither parent (or uncertain)	52904003
2637	Both parents	52904003
324	Neither parent (or uncertain)	52904004
2808	Both parents	52904004
375	Neither parent (or uncertain)	52904005
3018	Both parents	52904005
237	Neither parent (or uncertain)	52904006
2073	Both parents	52904006
246	Neither parent (or uncertain)	52904007
2337	Both parents	52904007
342	Neither parent (or uncertain)	52904008
2550	Both parents	52904008
270	Neither parent (or uncertain)	52904009
2070	Both parents	52904009
309	Neither parent (or uncertain)	52904010
2745	Both parents	52904010
159	Neither parent (or uncertain)	52904011
2103	Both parents	52904011
315	Neither parent (or uncertain)	52901001
2292	Both parents	52901001
249	Neither parent (or uncertain)	52901002
2385	Both parents	52901002
117	Neither parent (or uncertain)	52901003
1875	Both parents	52901003
114	Neither parent (or uncertain)	52901004
2571	Both parents	52901004
183	Neither parent (or uncertain)	52901005
2100	Both parents	52901005
183	Neither parent (or uncertain)	52901006
1890	Both parents	52901006
156	Neither parent (or uncertain)	52901007
1953	Both parents	52901007
246	Neither parent (or uncertain)	52901008
2376	Both parents	52901008
282	Neither parent (or uncertain)	52901009
2424	Both parents	52901009
135	Neither parent (or uncertain)	52901010
2091	Both parents	52901010
192	Neither parent (or uncertain)	52901011
1875	Both parents	52901011
312	Neither parent (or uncertain)	52901012
3162	Both parents	52901012
90	Neither parent (or uncertain)	52901013
717	Both parents	52901013
216	Neither parent (or uncertain)	52901014
2091	Both parents	52901014
69	Neither parent (or uncertain)	52901015
726	Both parents	52901015
198	Neither parent (or uncertain)	52901016
2037	Both parents	52901016
66	Neither parent (or uncertain)	52901017
1149	Both parents	52901017
186	Neither parent (or uncertain)	52902001
1992	Both parents	52902001
93	Neither parent (or uncertain)	52902002
2247	Both parents	52902002
66	Neither parent (or uncertain)	52902003
1245	Both parents	52902003
84	Neither parent (or uncertain)	52902004
1653	Both parents	52902004
162	Neither parent (or uncertain)	52902005
1905	Both parents	52902005
60	Neither parent (or uncertain)	52902006
1227	Both parents	52902006
138	Neither parent (or uncertain)	52902007
2913	Both parents	52902007
123	Neither parent (or uncertain)	52902008
2013	Both parents	52902008
144	Neither parent (or uncertain)	52902009
1923	Both parents	52902009
168	Neither parent (or uncertain)	52902010
2331	Both parents	52902010
105	Neither parent (or uncertain)	52902011
2202	Both parents	52902011
189	Neither parent (or uncertain)	52902012
2790	Both parents	52902012
63	Neither parent (or uncertain)	52902013
1764	Both parents	52902013
141	Neither parent (or uncertain)	52902014
2073	Both parents	52902014
213	Neither parent (or uncertain)	52902015
2460	Both parents	52902015
27	Neither parent (or uncertain)	52902016
1821	Both parents	52902016
24	Neither parent (or uncertain)	52902017
1230	Both parents	52902017
96	Neither parent (or uncertain)	52902018
1806	Both parents	52902018
129	Neither parent (or uncertain)	52902019
1473	Both parents	52902019
39	Neither parent (or uncertain)	52902020
795	Both parents	52902020
246	Neither parent (or uncertain)	52902021
1371	Both parents	52902021
60	Neither parent (or uncertain)	52902022
2175	Both parents	52902022
159	Neither parent (or uncertain)	52902023
2931	Both parents	52902023
132	Neither parent (or uncertain)	52902024
3045	Both parents	52902024
204	Neither parent (or uncertain)	52902025
2229	Both parents	52902025
78	Neither parent (or uncertain)	52902026
1263	Both parents	52902026
186	Neither parent (or uncertain)	52902027
1533	Both parents	52902027
168	Neither parent (or uncertain)	52903001
1554	Both parents	52903001
174	Neither parent (or uncertain)	52903002
1686	Both parents	52903002
111	Neither parent (or uncertain)	52903003
2199	Both parents	52903003
339	Neither parent (or uncertain)	52903004
1848	Both parents	52903004
258	Neither parent (or uncertain)	52903005
1692	Both parents	52903005
315	Neither parent (or uncertain)	52903006
2451	Both parents	52903006
135	Neither parent (or uncertain)	52903007
1614	Both parents	52903007
252	Neither parent (or uncertain)	52903008
2157	Both parents	52903008
144	Neither parent (or uncertain)	52903009
1299	Both parents	52903009
162	Neither parent (or uncertain)	52903010
2466	Both parents	52903010
336	Neither parent (or uncertain)	52903011
1869	Both parents	52903011
270	Neither parent (or uncertain)	52903012
2835	Both parents	52903012
186	Neither parent (or uncertain)	52903013
2190	Both parents	52903013
144	Neither parent (or uncertain)	52903014
1767	Both parents	52903014
123	Neither parent (or uncertain)	52903015
1653	Both parents	52903015
213	Neither parent (or uncertain)	52903016
2265	Both parents	52903016
153	Neither parent (or uncertain)	52903017
1896	Both parents	52903017
174	Neither parent (or uncertain)	52903018
2007	Both parents	52903018
189	Neither parent (or uncertain)	52903019
2625	Both parents	52903019
576	Neither parent (or uncertain)	59500001
7311	Both parents	59500001
690	Neither parent (or uncertain)	59500002
7569	Both parents	59500002
966	Neither parent (or uncertain)	59500003
10560	Both parents	59500003
807	Neither parent (or uncertain)	59500004
8670	Both parents	59500004
678	Neither parent (or uncertain)	59500005
6273	Both parents	59500005
777	Neither parent (or uncertain)	59500006
5472	Both parents	59500006
576	Neither parent (or uncertain)	59500007
7176	Both parents	59500007
624	Neither parent (or uncertain)	59500008
7413	Both parents	59500008
480	Neither parent (or uncertain)	59500009
6702	Both parents	59500009
147	Neither parent (or uncertain)	59500010
3840	Both parents	59500010
597	Neither parent (or uncertain)	59500011
10032	Both parents	59500011
495	Neither parent (or uncertain)	59500012
6051	Both parents	59500012
528	Neither parent (or uncertain)	59500013
8169	Both parents	59500013
654	Neither parent (or uncertain)	59500014
5874	Both parents	59500014
777	Neither parent (or uncertain)	59500015
7692	Both parents	59500015
462	Neither parent (or uncertain)	59500016
7269	Both parents	59500016
498	Neither parent (or uncertain)	59500017
7428	Both parents	59500017
96	Neither parent (or uncertain)	59500018
4602	Both parents	59500018
624	Neither parent (or uncertain)	59500019
8826	Both parents	59500019
558	Neither parent (or uncertain)	59500020
4050	Both parents	59500020
219	Neither parent (or uncertain)	59500021
5091	Both parents	59500021
402	Neither parent (or uncertain)	59500022
4761	Both parents	59500022
237	Neither parent (or uncertain)	59500023
4224	Both parents	59500023
390	Neither parent (or uncertain)	59500024
5652	Both parents	59500024
360	Neither parent (or uncertain)	59500025
6345	Both parents	59500025
288	Neither parent (or uncertain)	59500026
4917	Both parents	59500026
207	Neither parent (or uncertain)	59500027
2892	Both parents	59500027
93	Neither parent (or uncertain)	59500028
2748	Both parents	59500028
534	Neither parent (or uncertain)	59500029
6894	Both parents	59500029
321	Neither parent (or uncertain)	59500030
7074	Both parents	59500030
390	Neither parent (or uncertain)	59500031
5205	Both parents	59500031
174	Neither parent (or uncertain)	59500032
2493	Both parents	59500032
390	Neither parent (or uncertain)	59500033
4533	Both parents	59500033
231	Neither parent (or uncertain)	59500034
6174	Both parents	59500034
180	Neither parent (or uncertain)	59500035
4932	Both parents	59500035
144	Neither parent (or uncertain)	59500036
5310	Both parents	59500036
435	Neither parent (or uncertain)	59500037
8292	Both parents	59500037
717	Neither parent (or uncertain)	59500038
8724	Both parents	59500038
126	Neither parent (or uncertain)	59500039
2691	Both parents	59500039
417	Neither parent (or uncertain)	59500040
4701	Both parents	59500040
744	Neither parent (or uncertain)	59500041
6750	Both parents	59500041
801	Neither parent (or uncertain)	59500042
8514	Both parents	59500042
588	Neither parent (or uncertain)	59500043
7056	Both parents	59500043
873	Neither parent (or uncertain)	59500044
9165	Both parents	59500044
864	Neither parent (or uncertain)	59500045
7548	Both parents	59500045
459	Neither parent (or uncertain)	59500046
4860	Both parents	59500046
708	Neither parent (or uncertain)	59500047
5541	Both parents	59500047
276	Neither parent (or uncertain)	59500048
5154	Both parents	59500048
114	Neither parent (or uncertain)	59500049
7146	Both parents	59500049
66	Neither parent (or uncertain)	59500050
4788	Both parents	59500050
270	Neither parent (or uncertain)	59500051
7539	Both parents	59500051
237	Neither parent (or uncertain)	59500052
6564	Both parents	59500052
681	Neither parent (or uncertain)	59500053
7767	Both parents	59500053
441	Neither parent (or uncertain)	59500054
6267	Both parents	59500054
978	Neither parent (or uncertain)	59500055
9420	Both parents	59500055
807	Neither parent (or uncertain)	59500056
9750	Both parents	59500056
633	Neither parent (or uncertain)	59500057
8133	Both parents	59500057
513	Neither parent (or uncertain)	59500058
7059	Both parents	59500058
957	Neither parent (or uncertain)	59500059
9126	Both parents	59500059
645	Neither parent (or uncertain)	59500060
6954	Both parents	59500060
225	Neither parent (or uncertain)	59500061
5262	Both parents	59500061
480	Neither parent (or uncertain)	59500062
5823	Both parents	59500062
162	Neither parent (or uncertain)	59500063
5961	Both parents	59500063
255	Neither parent (or uncertain)	59500064
6438	Both parents	59500064
276	Neither parent (or uncertain)	59500065
7308	Both parents	59500065
381	Neither parent (or uncertain)	59500066
5028	Both parents	59500066
942	Neither parent (or uncertain)	59500067
10641	Both parents	59500067
267	Neither parent (or uncertain)	59500068
7194	Both parents	59500068
270	Neither parent (or uncertain)	59500069
5400	Both parents	59500069
159	Neither parent (or uncertain)	59500070
4434	Both parents	59500070
219	Neither parent (or uncertain)	59500071
6162	Both parents	59500071
429	Neither parent (or uncertain)	59500072
8190	Both parents	59500072
228	Neither parent (or uncertain)	59500073
4632	Both parents	59500073
324	Neither parent (or uncertain)	59500074
4218	Both parents	59500074
408	Neither parent (or uncertain)	59500075
2871	Both parents	59500075
264	Neither parent (or uncertain)	59500076
2625	Both parents	59500076
771	Neither parent (or uncertain)	59500077
9510	Both parents	59500077
492	Neither parent (or uncertain)	59500078
5793	Both parents	59500078
558	Neither parent (or uncertain)	59500079
7938	Both parents	59500079
492	Neither parent (or uncertain)	59500080
6132	Both parents	59500080
402	Neither parent (or uncertain)	59500081
4995	Both parents	59500081
510	Neither parent (or uncertain)	59500082
5676	Both parents	59500082
630	Neither parent (or uncertain)	59500083
7314	Both parents	59500083
654	Neither parent (or uncertain)	59500084
8346	Both parents	59500084
465	Neither parent (or uncertain)	59500085
6270	Both parents	59500085
591	Neither parent (or uncertain)	59500086
7347	Both parents	59500086
393	Neither parent (or uncertain)	59500087
5061	Both parents	59500087
702	Neither parent (or uncertain)	59500088
5994	Both parents	59500088
315	Neither parent (or uncertain)	59500089
5250	Both parents	59500089
195	Neither parent (or uncertain)	59500090
4620	Both parents	59500090
726	Neither parent (or uncertain)	59500091
7581	Both parents	59500091
375	Neither parent (or uncertain)	59500092
4941	Both parents	59500092
531	Neither parent (or uncertain)	59500093
7368	Both parents	59500093
555	Neither parent (or uncertain)	59500094
6780	Both parents	59500094
723	Neither parent (or uncertain)	59500095
9174	Both parents	59500095
801	Neither parent (or uncertain)	59500096
8304	Both parents	59500096
192	Neither parent (or uncertain)	59500097
3771	Both parents	59500097
996	Neither parent (or uncertain)	59500098
10416	Both parents	59500098
546	Neither parent (or uncertain)	59500099
7587	Both parents	59500099
783	Neither parent (or uncertain)	59500100
8484	Both parents	59500100
264	Neither parent (or uncertain)	59500101
4515	Both parents	59500101
453	Neither parent (or uncertain)	59500102
8166	Both parents	59500102
720	Neither parent (or uncertain)	59500103
5880	Both parents	59500103
84	Neither parent (or uncertain)	93301001
2265	Both parents	93301001
54	Neither parent (or uncertain)	93301002
1557	Both parents	93301002
69	Neither parent (or uncertain)	93301003
2700	Both parents	93301003
108	Neither parent (or uncertain)	93301004
2568	Both parents	93301004
60	Neither parent (or uncertain)	93301005
2589	Both parents	93301005
60	Neither parent (or uncertain)	93301006
2400	Both parents	93301006
93	Neither parent (or uncertain)	93301007
3429	Both parents	93301007
72	Neither parent (or uncertain)	93301008
2187	Both parents	93301008
42	Neither parent (or uncertain)	93301009
1878	Both parents	93301009
51	Neither parent (or uncertain)	93301010
2376	Both parents	93301010
33	Neither parent (or uncertain)	93301011
1899	Both parents	93301011
171	Neither parent (or uncertain)	93301012
3534	Both parents	93301012
60	Neither parent (or uncertain)	93301013
3096	Both parents	93301013
96	Neither parent (or uncertain)	93301014
3459	Both parents	93301014
24	Neither parent (or uncertain)	93301015
2067	Both parents	93301015
36	Neither parent (or uncertain)	93301016
1998	Both parents	93301016
60	Neither parent (or uncertain)	93301017
2031	Both parents	93301017
45	Neither parent (or uncertain)	93301018
2478	Both parents	93301018
75	Neither parent (or uncertain)	93301019
3204	Both parents	93301019
30	Neither parent (or uncertain)	93301020
2403	Both parents	93301020
78	Neither parent (or uncertain)	93301021
2394	Both parents	93301021
54	Neither parent (or uncertain)	93301022
2184	Both parents	93301022
75	Neither parent (or uncertain)	93301023
2178	Both parents	93301023
69	Neither parent (or uncertain)	93301024
2718	Both parents	93301024
126	Neither parent (or uncertain)	93301025
3813	Both parents	93301025
81	Neither parent (or uncertain)	93301026
2448	Both parents	93301026
63	Neither parent (or uncertain)	93301027
2127	Both parents	93301027
99	Neither parent (or uncertain)	93301028
2724	Both parents	93301028
63	Neither parent (or uncertain)	93301029
2709	Both parents	93301029
33	Neither parent (or uncertain)	93301030
1872	Both parents	93301030
108	Neither parent (or uncertain)	93302001
1827	Both parents	93302001
33	Neither parent (or uncertain)	93302002
1182	Both parents	93302002
63	Neither parent (or uncertain)	93302003
1437	Both parents	93302003
99	Neither parent (or uncertain)	93302004
1992	Both parents	93302004
63	Neither parent (or uncertain)	93302005
1818	Both parents	93302005
102	Neither parent (or uncertain)	93302006
2013	Both parents	93302006
66	Neither parent (or uncertain)	93302007
1767	Both parents	93302007
150	Neither parent (or uncertain)	93302008
1665	Both parents	93302008
150	Neither parent (or uncertain)	93302009
2286	Both parents	93302009
144	Neither parent (or uncertain)	93302010
2448	Both parents	93302010
132	Neither parent (or uncertain)	93302011
2148	Both parents	93302011
123	Neither parent (or uncertain)	93302012
1875	Both parents	93302012
96	Neither parent (or uncertain)	93302013
2430	Both parents	93302013
87	Neither parent (or uncertain)	93302014
1668	Both parents	93302014
96	Neither parent (or uncertain)	93302015
2235	Both parents	93302015
123	Neither parent (or uncertain)	93302016
2136	Both parents	93302016
84	Neither parent (or uncertain)	93302017
2199	Both parents	93302017
108	Neither parent (or uncertain)	93302018
2364	Both parents	93302018
96	Neither parent (or uncertain)	93302019
2286	Both parents	93302019
90	Neither parent (or uncertain)	93302020
2322	Both parents	93302020
111	Neither parent (or uncertain)	93302021
2196	Both parents	93302021
105	Neither parent (or uncertain)	93302022
2751	Both parents	93302022
132	Neither parent (or uncertain)	93302023
2118	Both parents	93302023
66	Neither parent (or uncertain)	93302024
1143	Both parents	93302024
84	Neither parent (or uncertain)	93302025
2103	Both parents	93302025
102	Neither parent (or uncertain)	93302026
1932	Both parents	93302026
51	Neither parent (or uncertain)	93302027
1494	Both parents	93302027
39	Neither parent (or uncertain)	93302028
1443	Both parents	93302028
168	Neither parent (or uncertain)	93302029
1566	Both parents	93302029
225	Neither parent (or uncertain)	93303001
2988	Both parents	93303001
144	Neither parent (or uncertain)	93303002
2742	Both parents	93303002
150	Neither parent (or uncertain)	93303003
3273	Both parents	93303003
135	Neither parent (or uncertain)	93303004
3438	Both parents	93303004
150	Neither parent (or uncertain)	93303005
4173	Both parents	93303005
117	Neither parent (or uncertain)	93303006
2964	Both parents	93303006
165	Neither parent (or uncertain)	93303007
2802	Both parents	93303007
105	Neither parent (or uncertain)	93303008
2478	Both parents	93303008
243	Neither parent (or uncertain)	93303009
4617	Both parents	93303009
81	Neither parent (or uncertain)	93303010
1611	Both parents	93303010
93	Neither parent (or uncertain)	93303011
2289	Both parents	93303011
126	Neither parent (or uncertain)	93303012
2910	Both parents	93303012
96	Neither parent (or uncertain)	93303013
3018	Both parents	93303013
75	Neither parent (or uncertain)	93303014
2244	Both parents	93303014
27	Neither parent (or uncertain)	93303015
1008	Both parents	93303015
114	Neither parent (or uncertain)	93303016
3543	Both parents	93303016
108	Neither parent (or uncertain)	93303017
3309	Both parents	93303017
138	Neither parent (or uncertain)	93303018
3555	Both parents	93303018
45	Neither parent (or uncertain)	93303019
1953	Both parents	93303019
138	Neither parent (or uncertain)	93303020
3120	Both parents	93303020
75	Neither parent (or uncertain)	93303021
3957	Both parents	93303021
87	Neither parent (or uncertain)	93303022
2523	Both parents	93303022
69	Neither parent (or uncertain)	93303023
2217	Both parents	93303023
81	Neither parent (or uncertain)	93303024
2649	Both parents	93303024
87	Neither parent (or uncertain)	93303025
3207	Both parents	93303025
84	Neither parent (or uncertain)	93303026
2673	Both parents	93303026
135	Neither parent (or uncertain)	93303027
3075	Both parents	93303027
123	Neither parent (or uncertain)	93303028
3174	Both parents	93303028
174	Neither parent (or uncertain)	93303029
4188	Both parents	93303029
96	Neither parent (or uncertain)	93303030
1734	Both parents	93303030
93	Neither parent (or uncertain)	93303031
2931	Both parents	93303031
129	Neither parent (or uncertain)	93303032
3219	Both parents	93303032
174	Neither parent (or uncertain)	93303033
4353	Both parents	93303033
129	Neither parent (or uncertain)	93303034
3297	Both parents	93303034
66	Neither parent (or uncertain)	93304001
3717	Both parents	93304001
57	Neither parent (or uncertain)	93304002
1761	Both parents	93304002
60	Neither parent (or uncertain)	93304003
1914	Both parents	93304003
48	Neither parent (or uncertain)	93304004
1773	Both parents	93304004
54	Neither parent (or uncertain)	93304005
1590	Both parents	93304005
60	Neither parent (or uncertain)	93304006
1638	Both parents	93304006
42	Neither parent (or uncertain)	93304007
1524	Both parents	93304007
75	Neither parent (or uncertain)	93304008
2124	Both parents	93304008
51	Neither parent (or uncertain)	93304009
2055	Both parents	93304009
78	Neither parent (or uncertain)	93304010
1875	Both parents	93304010
36	Neither parent (or uncertain)	93304011
1032	Both parents	93304011
84	Neither parent (or uncertain)	93304012
1362	Both parents	93304012
75	Neither parent (or uncertain)	93304013
2874	Both parents	93304013
30	Neither parent (or uncertain)	93304014
864	Both parents	93304014
48	Neither parent (or uncertain)	93304015
2802	Both parents	93304015
150	Neither parent (or uncertain)	93304016
4650	Both parents	93304016
207	Neither parent (or uncertain)	93304017
5292	Both parents	93304017
96	Neither parent (or uncertain)	93304018
3222	Both parents	93304018
12	Neither parent (or uncertain)	93305001
783	Both parents	93305001
144	Neither parent (or uncertain)	93305002
1317	Both parents	93305002
78	Neither parent (or uncertain)	93305003
1572	Both parents	93305003
195	Neither parent (or uncertain)	93305004
1485	Both parents	93305004
69	Neither parent (or uncertain)	93305005
1749	Both parents	93305005
114	Neither parent (or uncertain)	93305006
1920	Both parents	93305006
69	Neither parent (or uncertain)	93305007
1821	Both parents	93305007
114	Neither parent (or uncertain)	93305008
2262	Both parents	93305008
78	Neither parent (or uncertain)	93305009
1638	Both parents	93305009
105	Neither parent (or uncertain)	93305010
1752	Both parents	93305010
117	Neither parent (or uncertain)	93305011
2733	Both parents	93305011
111	Neither parent (or uncertain)	93305012
2409	Both parents	93305012
135	Neither parent (or uncertain)	93305013
1575	Both parents	93305013
51	Neither parent (or uncertain)	93305014
1212	Both parents	93305014
27	Neither parent (or uncertain)	93402001
2133	Both parents	93402001
24	Neither parent (or uncertain)	93402002
2352	Both parents	93402002
42	Neither parent (or uncertain)	93402003
2298	Both parents	93402003
33	Neither parent (or uncertain)	93402004
1974	Both parents	93402004
27	Neither parent (or uncertain)	93402005
3063	Both parents	93402005
39	Neither parent (or uncertain)	93402006
2169	Both parents	93402006
51	Neither parent (or uncertain)	93402007
2217	Both parents	93402007
33	Neither parent (or uncertain)	93402008
1878	Both parents	93402008
57	Neither parent (or uncertain)	93402009
2913	Both parents	93402009
33	Neither parent (or uncertain)	93402010
2034	Both parents	93402010
99	Neither parent (or uncertain)	93402011
3030	Both parents	93402011
54	Neither parent (or uncertain)	93402012
2847	Both parents	93402012
24	Neither parent (or uncertain)	93402013
2013	Both parents	93402013
135	Neither parent (or uncertain)	93403001
6240	Both parents	93403001
51	Neither parent (or uncertain)	93403002
4122	Both parents	93403002
63	Neither parent (or uncertain)	93403003
4773	Both parents	93403003
78	Neither parent (or uncertain)	93403004
4932	Both parents	93403004
81	Neither parent (or uncertain)	93403005
4581	Both parents	93403005
81	Neither parent (or uncertain)	93403006
5199	Both parents	93403006
150	Neither parent (or uncertain)	93403007
6387	Both parents	93403007
93	Neither parent (or uncertain)	93403008
4824	Both parents	93403008
123	Neither parent (or uncertain)	93403009
4641	Both parents	93403009
126	Neither parent (or uncertain)	93403010
4791	Both parents	93403010
114	Neither parent (or uncertain)	93403011
6117	Both parents	93403011
84	Neither parent (or uncertain)	93403012
5142	Both parents	93403012
147	Neither parent (or uncertain)	93403013
4830	Both parents	93403013
102	Neither parent (or uncertain)	93403014
4989	Both parents	93403014
114	Neither parent (or uncertain)	93403015
5634	Both parents	93403015
57	Neither parent (or uncertain)	93403016
3996	Both parents	93403016
72	Neither parent (or uncertain)	93403017
4206	Both parents	93403017
84	Neither parent (or uncertain)	93403018
5295	Both parents	93403018
96	Neither parent (or uncertain)	93403019
5091	Both parents	93403019
66	Neither parent (or uncertain)	93403020
5151	Both parents	93403020
174	Neither parent (or uncertain)	93403021
5232	Both parents	93403021
54	Neither parent (or uncertain)	93403022
4176	Both parents	93403022
60	Neither parent (or uncertain)	93403023
4056	Both parents	93403023
75	Neither parent (or uncertain)	93403024
5523	Both parents	93403024
108	Neither parent (or uncertain)	93403025
4452	Both parents	93403025
60	Neither parent (or uncertain)	93403026
4464	Both parents	93403026
81	Neither parent (or uncertain)	93403027
5430	Both parents	93403027
63	Neither parent (or uncertain)	93403028
4209	Both parents	93403028
87	Neither parent (or uncertain)	93403029
5646	Both parents	93403029
69	Neither parent (or uncertain)	93403030
4095	Both parents	93403030
39	Neither parent (or uncertain)	93403031
3906	Both parents	93403031
78	Neither parent (or uncertain)	93403032
4104	Both parents	93403032
93	Neither parent (or uncertain)	93403033
5412	Both parents	93403033
72	Neither parent (or uncertain)	93403034
4407	Both parents	93403034
81	Neither parent (or uncertain)	93403035
4998	Both parents	93403035
45	Neither parent (or uncertain)	93403036
3993	Both parents	93403036
195	Neither parent (or uncertain)	93403037
3993	Both parents	93403037
93	Neither parent (or uncertain)	93403038
4311	Both parents	93403038
72	Neither parent (or uncertain)	93403039
4320	Both parents	93403039
66	Neither parent (or uncertain)	93403040
3963	Both parents	93403040
102	Neither parent (or uncertain)	93401001
3876	Both parents	93401001
129	Neither parent (or uncertain)	93401002
3084	Both parents	93401002
102	Neither parent (or uncertain)	93401003
3180	Both parents	93401003
75	Neither parent (or uncertain)	93401004
1008	Both parents	93401004
99	Neither parent (or uncertain)	93401005
2805	Both parents	93401005
69	Neither parent (or uncertain)	93401006
2463	Both parents	93401006
66	Neither parent (or uncertain)	93404001
4056	Both parents	93404001
72	Neither parent (or uncertain)	93404002
3795	Both parents	93404002
162	Neither parent (or uncertain)	93404003
4488	Both parents	93404003
120	Neither parent (or uncertain)	93404004
5688	Both parents	93404004
87	Neither parent (or uncertain)	93404005
3852	Both parents	93404005
60	Neither parent (or uncertain)	93404006
3864	Both parents	93404006
72	Neither parent (or uncertain)	93404007
3837	Both parents	93404007
96	Neither parent (or uncertain)	93404008
4218	Both parents	93404008
78	Neither parent (or uncertain)	93404009
4041	Both parents	93404009
60	Neither parent (or uncertain)	93404010
2883	Both parents	93404010
75	Neither parent (or uncertain)	93404011
3345	Both parents	93404011
69	Neither parent (or uncertain)	93404012
3435	Both parents	93404012
99	Neither parent (or uncertain)	93404013
4158	Both parents	93404013
90	Neither parent (or uncertain)	93404014
4305	Both parents	93404014
216	Neither parent (or uncertain)	93404015
5013	Both parents	93404015
78	Neither parent (or uncertain)	93404016
4047	Both parents	93404016
114	Neither parent (or uncertain)	93404017
3597	Both parents	93404017
186	Neither parent (or uncertain)	93404018
3468	Both parents	93404018
123	Neither parent (or uncertain)	93404019
3828	Both parents	93404019
87	Neither parent (or uncertain)	93404020
4125	Both parents	93404020
120	Neither parent (or uncertain)	93404021
4068	Both parents	93404021
171	Neither parent (or uncertain)	93404022
4491	Both parents	93404022
75	Neither parent (or uncertain)	93404023
3606	Both parents	93404023
114	Neither parent (or uncertain)	93404024
5286	Both parents	93404024
159	Neither parent (or uncertain)	93404025
4953	Both parents	93404025
108	Neither parent (or uncertain)	93404026
4173	Both parents	93404026
75	Neither parent (or uncertain)	93404027
3105	Both parents	93404027
75	Neither parent (or uncertain)	93404028
4269	Both parents	93404028
60	Neither parent (or uncertain)	93404029
3516	Both parents	93404029
72	Neither parent (or uncertain)	93404030
3171	Both parents	93404030
123	Neither parent (or uncertain)	93404031
3846	Both parents	93404031
213	Neither parent (or uncertain)	93404032
4467	Both parents	93404032
150	Neither parent (or uncertain)	93404033
4215	Both parents	93404033
129	Neither parent (or uncertain)	93404034
4467	Both parents	93404034
78	Neither parent (or uncertain)	93404035
4194	Both parents	93404035
150	Neither parent (or uncertain)	93404036
5319	Both parents	93404036
69	Neither parent (or uncertain)	93404037
3933	Both parents	93404037
78	Neither parent (or uncertain)	93404038
3675	Both parents	93404038
87	Neither parent (or uncertain)	93501001
1518	Both parents	93501001
141	Neither parent (or uncertain)	93501002
1935	Both parents	93501002
117	Neither parent (or uncertain)	93501003
2094	Both parents	93501003
99	Neither parent (or uncertain)	93501004
1803	Both parents	93501004
105	Neither parent (or uncertain)	93501005
2052	Both parents	93501005
135	Neither parent (or uncertain)	93501006
1875	Both parents	93501006
123	Neither parent (or uncertain)	93501007
2532	Both parents	93501007
66	Neither parent (or uncertain)	93501008
1446	Both parents	93501008
120	Neither parent (or uncertain)	93501009
2988	Both parents	93501009
138	Neither parent (or uncertain)	93501010
2721	Both parents	93501010
96	Neither parent (or uncertain)	93501011
2430	Both parents	93501011
114	Neither parent (or uncertain)	93501012
2109	Both parents	93501012
111	Neither parent (or uncertain)	93501013
1653	Both parents	93501013
111	Neither parent (or uncertain)	93501014
2235	Both parents	93501014
114	Neither parent (or uncertain)	93501015
2103	Both parents	93501015
99	Neither parent (or uncertain)	93501016
1941	Both parents	93501016
174	Neither parent (or uncertain)	93501017
2181	Both parents	93501017
150	Neither parent (or uncertain)	93501018
2730	Both parents	93501018
321	Neither parent (or uncertain)	93501019
4410	Both parents	93501019
156	Neither parent (or uncertain)	93501020
1923	Both parents	93501020
87	Neither parent (or uncertain)	93501021
1926	Both parents	93501021
99	Neither parent (or uncertain)	93502001
1620	Both parents	93502001
111	Neither parent (or uncertain)	93502002
1746	Both parents	93502002
126	Neither parent (or uncertain)	93502003
2052	Both parents	93502003
75	Neither parent (or uncertain)	93502004
1977	Both parents	93502004
75	Neither parent (or uncertain)	93502005
1818	Both parents	93502005
81	Neither parent (or uncertain)	93502006
1707	Both parents	93502006
180	Neither parent (or uncertain)	93502007
1965	Both parents	93502007
78	Neither parent (or uncertain)	93502008
2085	Both parents	93502008
102	Neither parent (or uncertain)	93502009
1965	Both parents	93502009
123	Neither parent (or uncertain)	93502010
1692	Both parents	93502010
90	Neither parent (or uncertain)	93502011
1494	Both parents	93502011
87	Neither parent (or uncertain)	93502012
1473	Both parents	93502012
99	Neither parent (or uncertain)	93502013
1773	Both parents	93502013
132	Neither parent (or uncertain)	93502014
1767	Both parents	93502014
111	Neither parent (or uncertain)	93502015
2064	Both parents	93502015
78	Neither parent (or uncertain)	93502016
2133	Both parents	93502016
144	Neither parent (or uncertain)	93502017
2037	Both parents	93502017
333	Neither parent (or uncertain)	93502018
1776	Both parents	93502018
93	Neither parent (or uncertain)	93502019
2160	Both parents	93502019
60	Neither parent (or uncertain)	93503001
2181	Both parents	93503001
141	Neither parent (or uncertain)	93503002
2406	Both parents	93503002
189	Neither parent (or uncertain)	93503003
1287	Both parents	93503003
84	Neither parent (or uncertain)	93503004
2073	Both parents	93503004
84	Neither parent (or uncertain)	93503005
1185	Both parents	93503005
102	Neither parent (or uncertain)	93503006
2154	Both parents	93503006
144	Neither parent (or uncertain)	93503007
3000	Both parents	93503007
138	Neither parent (or uncertain)	93503008
2721	Both parents	93503008
132	Neither parent (or uncertain)	93503009
2175	Both parents	93503009
300	Neither parent (or uncertain)	93503010
1800	Both parents	93503010
84	Neither parent (or uncertain)	93503011
1431	Both parents	93503011
222	Neither parent (or uncertain)	93503012
2436	Both parents	93503012
111	Neither parent (or uncertain)	93503013
2358	Both parents	93503013
81	Neither parent (or uncertain)	93503014
1692	Both parents	93503014
504	Neither parent (or uncertain)	93504001
4776	Both parents	93504001
183	Neither parent (or uncertain)	93504002
4209	Both parents	93504002
177	Neither parent (or uncertain)	93504003
3102	Both parents	93504003
480	Neither parent (or uncertain)	93504004
4233	Both parents	93504004
210	Neither parent (or uncertain)	93504005
4500	Both parents	93504005
213	Neither parent (or uncertain)	93504006
3807	Both parents	93504006
135	Neither parent (or uncertain)	93504007
3897	Both parents	93504007
183	Neither parent (or uncertain)	93504008
8292	Both parents	93504008
264	Neither parent (or uncertain)	93504009
3360	Both parents	93504009
153	Neither parent (or uncertain)	93504010
4080	Both parents	93504010
156	Neither parent (or uncertain)	93504011
4275	Both parents	93504011
54	Neither parent (or uncertain)	93504012
1578	Both parents	93504012
138	Neither parent (or uncertain)	93504013
2550	Both parents	93504013
90	Neither parent (or uncertain)	93504014
4632	Both parents	93504014
144	Neither parent (or uncertain)	93504015
3240	Both parents	93504015
264	Neither parent (or uncertain)	93504016
5592	Both parents	93504016
132	Neither parent (or uncertain)	93504017
2790	Both parents	93504017
171	Neither parent (or uncertain)	93504018
4146	Both parents	93504018
141	Neither parent (or uncertain)	93504019
4095	Both parents	93504019
153	Neither parent (or uncertain)	93504020
6111	Both parents	93504020
78	Neither parent (or uncertain)	93504021
1251	Both parents	93504021
1008	Neither parent (or uncertain)	93504022
2925	Both parents	93504022
78	Neither parent (or uncertain)	93504023
3318	Both parents	93504023
165	Neither parent (or uncertain)	93504024
4242	Both parents	93504024
228	Neither parent (or uncertain)	93504025
6183	Both parents	93504025
15	Neither parent (or uncertain)	93504026
504	Both parents	93504026
168	Neither parent (or uncertain)	93504027
6798	Both parents	93504027
162	Neither parent (or uncertain)	93504028
3468	Both parents	93504028
93	Neither parent (or uncertain)	93504029
2676	Both parents	93504029
135	Neither parent (or uncertain)	93504030
2853	Both parents	93504030
195	Neither parent (or uncertain)	93504031
4596	Both parents	93504031
144	Neither parent (or uncertain)	93504032
4329	Both parents	93504032
453	Neither parent (or uncertain)	93504033
4413	Both parents	93504033
210	Neither parent (or uncertain)	93504034
4320	Both parents	93504034
153	Neither parent (or uncertain)	93504035
3339	Both parents	93504035
138	Neither parent (or uncertain)	93504036
4086	Both parents	93504036
120	Neither parent (or uncertain)	93504037
3135	Both parents	93504037
201	Neither parent (or uncertain)	93504038
3750	Both parents	93504038
153	Neither parent (or uncertain)	93505001
1968	Both parents	93505001
159	Neither parent (or uncertain)	93505002
2169	Both parents	93505002
99	Neither parent (or uncertain)	93505003
1959	Both parents	93505003
144	Neither parent (or uncertain)	93505004
1572	Both parents	93505004
69	Neither parent (or uncertain)	93505005
2043	Both parents	93505005
138	Neither parent (or uncertain)	93505006
1929	Both parents	93505006
90	Neither parent (or uncertain)	93505007
2061	Both parents	93505007
69	Neither parent (or uncertain)	93505008
2841	Both parents	93505008
114	Neither parent (or uncertain)	93505009
2166	Both parents	93505009
84	Neither parent (or uncertain)	93505010
1563	Both parents	93505010
96	Neither parent (or uncertain)	93505011
2097	Both parents	93505011
105	Neither parent (or uncertain)	93505012
1524	Both parents	93505012
84	Neither parent (or uncertain)	93505013
1737	Both parents	93505013
84	Neither parent (or uncertain)	93505014
2118	Both parents	93505014
51	Neither parent (or uncertain)	93505015
2511	Both parents	93505015
51	Neither parent (or uncertain)	93505016
2211	Both parents	93505016
192	Neither parent (or uncertain)	93505017
2316	Both parents	93505017
93	Neither parent (or uncertain)	93505018
1182	Both parents	93505018
84	Neither parent (or uncertain)	93505019
2850	Both parents	93505019
93	Neither parent (or uncertain)	93505020
2382	Both parents	93505020
66	Neither parent (or uncertain)	93505021
1623	Both parents	93505021
102	Neither parent (or uncertain)	93505022
2520	Both parents	93505022
105	Neither parent (or uncertain)	93505023
1947	Both parents	93505023
57	Neither parent (or uncertain)	93505024
1140	Both parents	93505024
96	Neither parent (or uncertain)	93505025
1911	Both parents	93505025
105	Neither parent (or uncertain)	93505026
3480	Both parents	93505026
90	Neither parent (or uncertain)	93505027
2031	Both parents	93505027
93	Neither parent (or uncertain)	93505028
1752	Both parents	93505028
57	Neither parent (or uncertain)	93505029
1584	Both parents	93505029
84	Neither parent (or uncertain)	93601001
1683	Both parents	93601001
69	Neither parent (or uncertain)	93601002
2031	Both parents	93601002
72	Neither parent (or uncertain)	93601003
1404	Both parents	93601003
99	Neither parent (or uncertain)	93601004
843	Both parents	93601004
12	Neither parent (or uncertain)	93601005
726	Both parents	93601005
24	Neither parent (or uncertain)	93601006
783	Both parents	93601006
120	Neither parent (or uncertain)	93601007
2085	Both parents	93601007
27	Neither parent (or uncertain)	93601008
750	Both parents	93601008
135	Neither parent (or uncertain)	93601009
3312	Both parents	93601009
48	Neither parent (or uncertain)	93601010
957	Both parents	93601010
51	Neither parent (or uncertain)	93601011
3	Both parents	93601011
33	Neither parent (or uncertain)	93601012
681	Both parents	93601012
99	Neither parent (or uncertain)	93602001
3144	Both parents	93602001
42	Neither parent (or uncertain)	93602002
1029	Both parents	93602002
261	Neither parent (or uncertain)	93602003
1848	Both parents	93602003
57	Neither parent (or uncertain)	93602004
1317	Both parents	93602004
9	Neither parent (or uncertain)	93602005
1056	Both parents	93602005
81	Neither parent (or uncertain)	93602006
1617	Both parents	93602006
132	Neither parent (or uncertain)	93602007
2058	Both parents	93602007
114	Neither parent (or uncertain)	93602008
2697	Both parents	93602008
105	Neither parent (or uncertain)	93602009
2640	Both parents	93602009
141	Neither parent (or uncertain)	93602010
2802	Both parents	93602010
132	Neither parent (or uncertain)	93602011
2184	Both parents	93602011
120	Neither parent (or uncertain)	93602012
2253	Both parents	93602012
90	Neither parent (or uncertain)	93604001
3438	Both parents	93604001
45	Neither parent (or uncertain)	93604002
1446	Both parents	93604002
24	Neither parent (or uncertain)	93604003
798	Both parents	93604003
48	Neither parent (or uncertain)	93604004
480	Both parents	93604004
42	Neither parent (or uncertain)	93604005
1695	Both parents	93604005
108	Neither parent (or uncertain)	93605001
3039	Both parents	93605001
33	Neither parent (or uncertain)	93605002
1506	Both parents	93605002
114	Neither parent (or uncertain)	93605003
2157	Both parents	93605003
36	Neither parent (or uncertain)	93605004
894	Both parents	93605004
174	Neither parent (or uncertain)	93605005
3504	Both parents	93605005
114	Neither parent (or uncertain)	93605006
2628	Both parents	93605006
75	Neither parent (or uncertain)	93605007
1932	Both parents	93605007
54	Neither parent (or uncertain)	93605008
927	Both parents	93605008
51	Neither parent (or uncertain)	93605009
1233	Both parents	93605009
204	Neither parent (or uncertain)	93606001
1932	Both parents	93606001
78	Neither parent (or uncertain)	93606002
1842	Both parents	93606002
81	Neither parent (or uncertain)	93606003
1407	Both parents	93606003
903	Neither parent (or uncertain)	93606004
3171	Both parents	93606004
48	Neither parent (or uncertain)	93606005
1065	Both parents	93606005
51	Neither parent (or uncertain)	93606006
1416	Both parents	93606006
45	Neither parent (or uncertain)	93606007
2205	Both parents	93606007
57	Neither parent (or uncertain)	93606008
1485	Both parents	93606008
15	Neither parent (or uncertain)	93606009
603	Both parents	93606009
189	Neither parent (or uncertain)	93607001
2826	Both parents	93607001
138	Neither parent (or uncertain)	93607002
2376	Both parents	93607002
156	Neither parent (or uncertain)	93607003
3339	Both parents	93607003
138	Neither parent (or uncertain)	93607004
2676	Both parents	93607004
117	Neither parent (or uncertain)	93607005
1779	Both parents	93607005
144	Neither parent (or uncertain)	93607006
3129	Both parents	93607006
126	Neither parent (or uncertain)	93607007
3108	Both parents	93607007
96	Neither parent (or uncertain)	93607008
2169	Both parents	93607008
153	Neither parent (or uncertain)	93607009
2571	Both parents	93607009
114	Neither parent (or uncertain)	93607010
2058	Both parents	93607010
261	Neither parent (or uncertain)	93607011
2262	Both parents	93607011
69	Neither parent (or uncertain)	93607012
2499	Both parents	93607012
129	Neither parent (or uncertain)	93607013
3165	Both parents	93607013
90	Neither parent (or uncertain)	93607014
2184	Both parents	93607014
111	Neither parent (or uncertain)	93607015
2205	Both parents	93607015
96	Neither parent (or uncertain)	93607016
2361	Both parents	93607016
90	Neither parent (or uncertain)	93607017
2613	Both parents	93607017
135	Neither parent (or uncertain)	93607018
3177	Both parents	93607018
111	Neither parent (or uncertain)	93607019
2361	Both parents	93607019
96	Neither parent (or uncertain)	93607020
2772	Both parents	93607020
72	Neither parent (or uncertain)	93607021
1665	Both parents	93607021
78	Neither parent (or uncertain)	93607022
2736	Both parents	93607022
72	Neither parent (or uncertain)	93607023
2424	Both parents	93607023
108	Neither parent (or uncertain)	93607024
3105	Both parents	93607024
81	Neither parent (or uncertain)	93607025
2646	Both parents	93607025
42	Neither parent (or uncertain)	93607026
1299	Both parents	93607026
90	Neither parent (or uncertain)	93607027
1896	Both parents	93607027
99	Neither parent (or uncertain)	93607028
3057	Both parents	93607028
78	Neither parent (or uncertain)	93607029
2874	Both parents	93607029
81	Neither parent (or uncertain)	93607030
2148	Both parents	93607030
144	Neither parent (or uncertain)	93607031
5742	Both parents	93607031
84	Neither parent (or uncertain)	93607032
1701	Both parents	93607032
90	Neither parent (or uncertain)	94701001
2001	Both parents	94701001
87	Neither parent (or uncertain)	94701002
1698	Both parents	94701002
120	Neither parent (or uncertain)	94701003
2877	Both parents	94701003
69	Neither parent (or uncertain)	94701004
2079	Both parents	94701004
60	Neither parent (or uncertain)	94701005
1599	Both parents	94701005
93	Neither parent (or uncertain)	94701006
2097	Both parents	94701006
24	Neither parent (or uncertain)	94701007
795	Both parents	94701007
96	Neither parent (or uncertain)	94701008
2217	Both parents	94701008
93	Neither parent (or uncertain)	94701009
2508	Both parents	94701009
87	Neither parent (or uncertain)	94701010
2154	Both parents	94701010
51	Neither parent (or uncertain)	94701011
1737	Both parents	94701011
150	Neither parent (or uncertain)	94701012
2388	Both parents	94701012
66	Neither parent (or uncertain)	94701013
1842	Both parents	94701013
108	Neither parent (or uncertain)	94701014
1596	Both parents	94701014
159	Neither parent (or uncertain)	94701015
3030	Both parents	94701015
57	Neither parent (or uncertain)	94701016
2544	Both parents	94701016
114	Neither parent (or uncertain)	94702001
3738	Both parents	94702001
84	Neither parent (or uncertain)	94702002
1500	Both parents	94702002
96	Neither parent (or uncertain)	94702003
1941	Both parents	94702003
63	Neither parent (or uncertain)	94702004
1629	Both parents	94702004
126	Neither parent (or uncertain)	94702005
2400	Both parents	94702005
66	Neither parent (or uncertain)	94702006
1851	Both parents	94702006
150	Neither parent (or uncertain)	94702007
3405	Both parents	94702007
78	Neither parent (or uncertain)	94702008
1875	Both parents	94702008
165	Neither parent (or uncertain)	94702009
3276	Both parents	94702009
141	Neither parent (or uncertain)	94702010
2565	Both parents	94702010
186	Neither parent (or uncertain)	94702011
984	Both parents	94702011
105	Neither parent (or uncertain)	94702012
2262	Both parents	94702012
60	Neither parent (or uncertain)	94702013
849	Both parents	94702013
102	Neither parent (or uncertain)	94702014
2784	Both parents	94702014
111	Neither parent (or uncertain)	94702015
2799	Both parents	94702015
150	Neither parent (or uncertain)	94702016
2889	Both parents	94702016
120	Neither parent (or uncertain)	94702017
1935	Both parents	94702017
111	Neither parent (or uncertain)	94702018
2157	Both parents	94702018
90	Neither parent (or uncertain)	94702019
2598	Both parents	94702019
120	Neither parent (or uncertain)	94702020
3270	Both parents	94702020
213	Neither parent (or uncertain)	94702021
3339	Both parents	94702021
93	Neither parent (or uncertain)	94702022
1794	Both parents	94702022
84	Neither parent (or uncertain)	94702023
2256	Both parents	94702023
156	Neither parent (or uncertain)	94702024
3312	Both parents	94702024
237	Neither parent (or uncertain)	94702025
2109	Both parents	94702025
102	Neither parent (or uncertain)	94702026
1551	Both parents	94702026
150	Neither parent (or uncertain)	94702027
3180	Both parents	94702027
132	Neither parent (or uncertain)	94702028
2970	Both parents	94702028
147	Neither parent (or uncertain)	94702029
2022	Both parents	94702029
162	Neither parent (or uncertain)	94702030
1938	Both parents	94702030
117	Neither parent (or uncertain)	94703001
3633	Both parents	94703001
69	Neither parent (or uncertain)	94703002
2421	Both parents	94703002
96	Neither parent (or uncertain)	94703003
3096	Both parents	94703003
102	Neither parent (or uncertain)	94703004
2778	Both parents	94703004
90	Neither parent (or uncertain)	94703005
2643	Both parents	94703005
78	Neither parent (or uncertain)	94703006
2724	Both parents	94703006
105	Neither parent (or uncertain)	94703007
1944	Both parents	94703007
297	Neither parent (or uncertain)	94703008
4407	Both parents	94703008
141	Neither parent (or uncertain)	94703009
3432	Both parents	94703009
66	Neither parent (or uncertain)	94703010
2256	Both parents	94703010
75	Neither parent (or uncertain)	94703011
1599	Both parents	94703011
135	Neither parent (or uncertain)	94703012
2607	Both parents	94703012
120	Neither parent (or uncertain)	94703013
3405	Both parents	94703013
87	Neither parent (or uncertain)	94703014
1785	Both parents	94703014
78	Neither parent (or uncertain)	94703015
1959	Both parents	94703015
90	Neither parent (or uncertain)	94703016
1950	Both parents	94703016
96	Neither parent (or uncertain)	94703017
2664	Both parents	94703017
102	Neither parent (or uncertain)	94703018
2829	Both parents	94703018
153	Neither parent (or uncertain)	94703019
2643	Both parents	94703019
84	Neither parent (or uncertain)	94703020
2310	Both parents	94703020
153	Neither parent (or uncertain)	94703021
3075	Both parents	94703021
69	Neither parent (or uncertain)	94703022
2217	Both parents	94703022
180	Neither parent (or uncertain)	94703023
3006	Both parents	94703023
81	Neither parent (or uncertain)	94703024
2130	Both parents	94703024
141	Neither parent (or uncertain)	94703025
3153	Both parents	94703025
120	Neither parent (or uncertain)	94703026
2412	Both parents	94703026
105	Neither parent (or uncertain)	94703027
1932	Both parents	94703027
150	Neither parent (or uncertain)	94703028
3084	Both parents	94703028
78	Neither parent (or uncertain)	94703029
1401	Both parents	94703029
105	Neither parent (or uncertain)	94703030
2247	Both parents	94703030
63	Neither parent (or uncertain)	94703031
1947	Both parents	94703031
117	Neither parent (or uncertain)	94704001
1374	Both parents	94704001
93	Neither parent (or uncertain)	94704002
2394	Both parents	94704002
93	Neither parent (or uncertain)	94704003
2049	Both parents	94704003
69	Neither parent (or uncertain)	94704004
1674	Both parents	94704004
75	Neither parent (or uncertain)	94704005
1632	Both parents	94704005
69	Neither parent (or uncertain)	94704006
2262	Both parents	94704006
84	Neither parent (or uncertain)	94704007
1977	Both parents	94704007
87	Neither parent (or uncertain)	94704008
1716	Both parents	94704008
117	Neither parent (or uncertain)	94704009
1161	Both parents	94704009
75	Neither parent (or uncertain)	94704010
1146	Both parents	94704010
180	Neither parent (or uncertain)	94704011
2169	Both parents	94704011
102	Neither parent (or uncertain)	94704012
1584	Both parents	94704012
81	Neither parent (or uncertain)	94704013
1716	Both parents	94704013
141	Neither parent (or uncertain)	94705001
1764	Both parents	94705001
135	Neither parent (or uncertain)	94705002
3831	Both parents	94705002
99	Neither parent (or uncertain)	94705003
2214	Both parents	94705003
99	Neither parent (or uncertain)	94705004
1110	Both parents	94705004
195	Neither parent (or uncertain)	94705005
3690	Both parents	94705005
108	Neither parent (or uncertain)	94705006
2169	Both parents	94705006
156	Neither parent (or uncertain)	94705007
2430	Both parents	94705007
171	Neither parent (or uncertain)	94705008
2850	Both parents	94705008
177	Neither parent (or uncertain)	94705009
2955	Both parents	94705009
153	Neither parent (or uncertain)	94705010
3150	Both parents	94705010
78	Neither parent (or uncertain)	94705011
1674	Both parents	94705011
96	Neither parent (or uncertain)	94705012
2154	Both parents	94705012
195	Neither parent (or uncertain)	94705013
4422	Both parents	94705013
120	Neither parent (or uncertain)	94705014
3636	Both parents	94705014
108	Neither parent (or uncertain)	94705015
2316	Both parents	94705015
177	Neither parent (or uncertain)	94705016
2310	Both parents	94705016
153	Neither parent (or uncertain)	94705017
2772	Both parents	94705017
144	Neither parent (or uncertain)	94705018
2634	Both parents	94705018
129	Neither parent (or uncertain)	94705019
2703	Both parents	94705019
147	Neither parent (or uncertain)	94705020
3288	Both parents	94705020
111	Neither parent (or uncertain)	94705021
1590	Both parents	94705021
177	Neither parent (or uncertain)	94705022
2244	Both parents	94705022
162	Neither parent (or uncertain)	94705023
2424	Both parents	94705023
180	Neither parent (or uncertain)	94705024
2451	Both parents	94705024
192	Neither parent (or uncertain)	94705025
3861	Both parents	94705025
153	Neither parent (or uncertain)	94705026
1650	Both parents	94705026
132	Neither parent (or uncertain)	94705027
3438	Both parents	94705027
177	Neither parent (or uncertain)	94705028
2919	Both parents	94705028
108	Neither parent (or uncertain)	94705029
3321	Both parents	94705029
183	Neither parent (or uncertain)	94705030
3645	Both parents	94705030
108	Neither parent (or uncertain)	94705031
3126	Both parents	94705031
231	Neither parent (or uncertain)	83001001
2544	Both parents	83001001
183	Neither parent (or uncertain)	83001002
2166	Both parents	83001002
243	Neither parent (or uncertain)	83001003
2214	Both parents	83001003
138	Neither parent (or uncertain)	83001004
2352	Both parents	83001004
159	Neither parent (or uncertain)	83001005
1722	Both parents	83001005
165	Neither parent (or uncertain)	83001006
2289	Both parents	83001006
60	Neither parent (or uncertain)	83001007
714	Both parents	83001007
90	Neither parent (or uncertain)	83001008
1089	Both parents	83001008
255	Neither parent (or uncertain)	83001009
3750	Both parents	83001009
135	Neither parent (or uncertain)	83001010
1935	Both parents	83001010
153	Neither parent (or uncertain)	83001011
2094	Both parents	83001011
141	Neither parent (or uncertain)	83001012
2007	Both parents	83001012
75	Neither parent (or uncertain)	83001013
1482	Both parents	83001013
132	Neither parent (or uncertain)	83001014
2571	Both parents	83001014
135	Neither parent (or uncertain)	83001015
2652	Both parents	83001015
192	Neither parent (or uncertain)	83001016
2763	Both parents	83001016
51	Neither parent (or uncertain)	83001017
960	Both parents	83001017
216	Neither parent (or uncertain)	83001018
2736	Both parents	83001018
156	Neither parent (or uncertain)	83001019
1875	Both parents	83001019
114	Neither parent (or uncertain)	83001020
1467	Both parents	83001020
153	Neither parent (or uncertain)	83001021
2217	Both parents	83001021
27	Neither parent (or uncertain)	83001022
435	Both parents	83001022
150	Neither parent (or uncertain)	83001023
2283	Both parents	83001023
222	Neither parent (or uncertain)	83001024
2961	Both parents	83001024
177	Neither parent (or uncertain)	83001025
1728	Both parents	83001025
84	Neither parent (or uncertain)	83002001
1305	Both parents	83002001
201	Neither parent (or uncertain)	83002002
2238	Both parents	83002002
108	Neither parent (or uncertain)	83002003
1842	Both parents	83002003
48	Neither parent (or uncertain)	83002004
1038	Both parents	83002004
72	Neither parent (or uncertain)	83002005
678	Both parents	83002005
39	Neither parent (or uncertain)	83002006
1080	Both parents	83002006
27	Neither parent (or uncertain)	83002007
870	Both parents	83002007
120	Neither parent (or uncertain)	83002008
3051	Both parents	83002008
144	Neither parent (or uncertain)	83002009
2346	Both parents	83002009
168	Neither parent (or uncertain)	83002010
2187	Both parents	83002010
150	Neither parent (or uncertain)	83002011
2049	Both parents	83002011
63	Neither parent (or uncertain)	83002012
852	Both parents	83002012
117	Neither parent (or uncertain)	83002013
2232	Both parents	83002013
108	Neither parent (or uncertain)	83002014
1632	Both parents	83002014
210	Neither parent (or uncertain)	83002015
2718	Both parents	83002015
189	Neither parent (or uncertain)	83002016
3771	Both parents	83002016
108	Neither parent (or uncertain)	83002017
1494	Both parents	83002017
114	Neither parent (or uncertain)	83002018
1923	Both parents	83002018
180	Neither parent (or uncertain)	83002019
2178	Both parents	83002019
279	Neither parent (or uncertain)	83003001
2820	Both parents	83003001
492	Neither parent (or uncertain)	83003002
4701	Both parents	83003002
339	Neither parent (or uncertain)	83003003
3987	Both parents	83003003
150	Neither parent (or uncertain)	83003004
1392	Both parents	83003004
372	Neither parent (or uncertain)	83003005
3291	Both parents	83003005
276	Neither parent (or uncertain)	83003006
2298	Both parents	83003006
156	Neither parent (or uncertain)	83003007
1017	Both parents	83003007
258	Neither parent (or uncertain)	83003008
2442	Both parents	83003008
402	Neither parent (or uncertain)	83003009
4242	Both parents	83003009
84	Neither parent (or uncertain)	83003010
1545	Both parents	83003010
225	Neither parent (or uncertain)	83003011
3303	Both parents	83003011
135	Neither parent (or uncertain)	83003012
1533	Both parents	83003012
162	Neither parent (or uncertain)	83003013
1920	Both parents	83003013
207	Neither parent (or uncertain)	83003014
2349	Both parents	83003014
234	Neither parent (or uncertain)	83003015
2517	Both parents	83003015
153	Neither parent (or uncertain)	83003016
1500	Both parents	83003016
198	Neither parent (or uncertain)	83003017
1884	Both parents	83003017
87	Neither parent (or uncertain)	83003018
870	Both parents	83003018
231	Neither parent (or uncertain)	83003019
2754	Both parents	83003019
123	Neither parent (or uncertain)	83004001
1929	Both parents	83004001
63	Neither parent (or uncertain)	83004002
762	Both parents	83004002
87	Neither parent (or uncertain)	83004003
1785	Both parents	83004003
48	Neither parent (or uncertain)	83004004
1524	Both parents	83004004
93	Neither parent (or uncertain)	83004005
1674	Both parents	83004005
204	Neither parent (or uncertain)	83004006
2340	Both parents	83004006
135	Neither parent (or uncertain)	83004007
1794	Both parents	83004007
147	Neither parent (or uncertain)	83004008
2154	Both parents	83004008
144	Neither parent (or uncertain)	83004009
1629	Both parents	83004009
282	Neither parent (or uncertain)	83004010
4092	Both parents	83004010
231	Neither parent (or uncertain)	83004011
2571	Both parents	83004011
87	Neither parent (or uncertain)	83005001
1362	Both parents	83005001
36	Neither parent (or uncertain)	83005002
927	Both parents	83005002
87	Neither parent (or uncertain)	83005003
1869	Both parents	83005003
30	Neither parent (or uncertain)	83005004
1182	Both parents	83005004
99	Neither parent (or uncertain)	83005005
1614	Both parents	83005005
69	Neither parent (or uncertain)	83005006
993	Both parents	83005006
72	Neither parent (or uncertain)	83005007
1524	Both parents	83005007
18	Neither parent (or uncertain)	83005008
1878	Both parents	83005008
99	Neither parent (or uncertain)	83005009
1821	Both parents	83005009
42	Neither parent (or uncertain)	83005010
903	Both parents	83005010
168	Neither parent (or uncertain)	83005011
3429	Both parents	83005011
150	Neither parent (or uncertain)	83005012
2430	Both parents	83005012
111	Neither parent (or uncertain)	83005013
1827	Both parents	83005013
210	Neither parent (or uncertain)	83005014
1830	Both parents	83005014
144	Neither parent (or uncertain)	83005015
3156	Both parents	83005015
108	Neither parent (or uncertain)	83006001
1740	Both parents	83006001
120	Neither parent (or uncertain)	83006002
1611	Both parents	83006002
39	Neither parent (or uncertain)	83006003
1047	Both parents	83006003
87	Neither parent (or uncertain)	83006004
2031	Both parents	83006004
81	Neither parent (or uncertain)	83006005
1434	Both parents	83006005
108	Neither parent (or uncertain)	83006006
1704	Both parents	83006006
153	Neither parent (or uncertain)	83007001
3417	Both parents	83007001
144	Neither parent (or uncertain)	83007002
2643	Both parents	83007002
150	Neither parent (or uncertain)	83007003
2070	Both parents	83007003
120	Neither parent (or uncertain)	83007004
1302	Both parents	83007004
33	Neither parent (or uncertain)	83007005
1506	Both parents	83007005
90	Neither parent (or uncertain)	83007006
1026	Both parents	83007006
90	Neither parent (or uncertain)	83007007
1533	Both parents	83007007
96	Neither parent (or uncertain)	83007008
1614	Both parents	83007008
75	Neither parent (or uncertain)	83007009
1275	Both parents	83007009
138	Neither parent (or uncertain)	83007010
2376	Both parents	83007010
102	Neither parent (or uncertain)	83007011
1623	Both parents	83007011
138	Neither parent (or uncertain)	83007012
2457	Both parents	83007012
117	Neither parent (or uncertain)	83007013
1734	Both parents	83007013
51	Neither parent (or uncertain)	83007014
1182	Both parents	83007014
234	Neither parent (or uncertain)	83007015
2523	Both parents	83007015
126	Neither parent (or uncertain)	83007016
3318	Both parents	83007016
36	Neither parent (or uncertain)	83007017
1062	Both parents	83007017
54	Neither parent (or uncertain)	83007018
2013	Both parents	83007018
180	Neither parent (or uncertain)	83007019
4284	Both parents	83007019
177	Neither parent (or uncertain)	83007020
2298	Both parents	83007020
24	Neither parent (or uncertain)	83007021
1539	Both parents	83007021
135	Neither parent (or uncertain)	83007022
2637	Both parents	83007022
93	Neither parent (or uncertain)	83007023
1185	Both parents	83007023
111	Neither parent (or uncertain)	83007024
1572	Both parents	83007024
39	Neither parent (or uncertain)	83007025
2184	Both parents	83007025
150	Neither parent (or uncertain)	83007026
2721	Both parents	83007026
75	Neither parent (or uncertain)	83007027
999	Both parents	83007027
60	Neither parent (or uncertain)	83007028
2703	Both parents	83007028
36	Neither parent (or uncertain)	83007029
1164	Both parents	83007029
54	Neither parent (or uncertain)	83007030
1851	Both parents	83007030
204	Neither parent (or uncertain)	83007031
2520	Both parents	83007031
78	Neither parent (or uncertain)	83007032
1926	Both parents	83007032
108	Neither parent (or uncertain)	83101001
1353	Both parents	83101001
51	Neither parent (or uncertain)	83101002
1068	Both parents	83101002
102	Neither parent (or uncertain)	83101003
3975	Both parents	83101003
63	Neither parent (or uncertain)	83101004
1476	Both parents	83101004
87	Neither parent (or uncertain)	83101005
1785	Both parents	83101005
81	Neither parent (or uncertain)	83101006
1524	Both parents	83101006
183	Neither parent (or uncertain)	83101007
2325	Both parents	83101007
33	Neither parent (or uncertain)	83101008
1233	Both parents	83101008
156	Neither parent (or uncertain)	83101009
2592	Both parents	83101009
174	Neither parent (or uncertain)	83102001
3885	Both parents	83102001
114	Neither parent (or uncertain)	83102002
2367	Both parents	83102002
27	Neither parent (or uncertain)	83102003
957	Both parents	83102003
117	Neither parent (or uncertain)	83102004
2271	Both parents	83102004
57	Neither parent (or uncertain)	83102005
2505	Both parents	83102005
156	Neither parent (or uncertain)	83102006
3420	Both parents	83102006
69	Neither parent (or uncertain)	83102007
2001	Both parents	83102007
156	Neither parent (or uncertain)	83102008
2994	Both parents	83102008
84	Neither parent (or uncertain)	83102009
2349	Both parents	83102009
48	Neither parent (or uncertain)	83102010
1527	Both parents	83102010
66	Neither parent (or uncertain)	83102011
1620	Both parents	83102011
60	Neither parent (or uncertain)	83102012
2511	Both parents	83102012
69	Neither parent (or uncertain)	83102013
1281	Both parents	83102013
78	Neither parent (or uncertain)	83102014
2388	Both parents	83102014
144	Neither parent (or uncertain)	83102015
3795	Both parents	83102015
84	Neither parent (or uncertain)	83102016
1704	Both parents	83102016
84	Neither parent (or uncertain)	83102017
1830	Both parents	83102017
36	Neither parent (or uncertain)	83102018
2673	Both parents	83102018
72	Neither parent (or uncertain)	83102019
2268	Both parents	83102019
48	Neither parent (or uncertain)	83102020
2046	Both parents	83102020
78	Neither parent (or uncertain)	83102021
4263	Both parents	83102021
81	Neither parent (or uncertain)	83102022
789	Both parents	83102022
126	Neither parent (or uncertain)	83102023
3243	Both parents	83102023
30	Neither parent (or uncertain)	83102024
1899	Both parents	83102024
183	Neither parent (or uncertain)	83102025
3354	Both parents	83102025
123	Neither parent (or uncertain)	83102026
1644	Both parents	83102026
66	Neither parent (or uncertain)	83102027
1569	Both parents	83102027
219	Neither parent (or uncertain)	83102028
3258	Both parents	83102028
201	Neither parent (or uncertain)	83102029
4980	Both parents	83102029
93	Neither parent (or uncertain)	83102030
2280	Both parents	83102030
99	Neither parent (or uncertain)	83102031
2382	Both parents	83102031
81	Neither parent (or uncertain)	83102032
2100	Both parents	83102032
63	Neither parent (or uncertain)	83102033
2652	Both parents	83102033
48	Neither parent (or uncertain)	83102034
3072	Both parents	83102034
42	Neither parent (or uncertain)	83103001
993	Both parents	83103001
174	Neither parent (or uncertain)	83103002
3129	Both parents	83103002
87	Neither parent (or uncertain)	83103003
1584	Both parents	83103003
54	Neither parent (or uncertain)	83103004
687	Both parents	83103004
27	Neither parent (or uncertain)	83103005
576	Both parents	83103005
51	Neither parent (or uncertain)	83103006
1218	Both parents	83103006
54	Neither parent (or uncertain)	83103007
1149	Both parents	83103007
120	Neither parent (or uncertain)	83103008
2331	Both parents	83103008
75	Neither parent (or uncertain)	83103009
1548	Both parents	83103009
249	Neither parent (or uncertain)	83103010
3135	Both parents	83103010
27	Neither parent (or uncertain)	83103011
2661	Both parents	83103011
228	Neither parent (or uncertain)	83103012
2976	Both parents	83103012
42	Neither parent (or uncertain)	83103013
963	Both parents	83103013
75	Neither parent (or uncertain)	83103014
1179	Both parents	83103014
33	Neither parent (or uncertain)	83103015
1416	Both parents	83103015
54	Neither parent (or uncertain)	83103016
1434	Both parents	83103016
60	Neither parent (or uncertain)	83103017
1614	Both parents	83103017
48	Neither parent (or uncertain)	83103018
861	Both parents	83103018
57	Neither parent (or uncertain)	83103019
999	Both parents	83103019
48	Neither parent (or uncertain)	83103020
936	Both parents	83103020
72	Neither parent (or uncertain)	83103021
1290	Both parents	83103021
99	Neither parent (or uncertain)	83103022
672	Both parents	83103022
135	Neither parent (or uncertain)	83103023
2895	Both parents	83103023
12	Neither parent (or uncertain)	83103024
477	Both parents	83103024
129	Neither parent (or uncertain)	83103025
3078	Both parents	83103025
93	Neither parent (or uncertain)	83103026
384	Both parents	83103026
33	Neither parent (or uncertain)	83103027
1491	Both parents	83103027
180	Neither parent (or uncertain)	83103028
4554	Both parents	83103028
111	Neither parent (or uncertain)	83103029
1725	Both parents	83103029
66	Neither parent (or uncertain)	83104001
1629	Both parents	83104001
48	Neither parent (or uncertain)	83104002
1194	Both parents	83104002
108	Neither parent (or uncertain)	83104003
1380	Both parents	83104003
105	Neither parent (or uncertain)	83104004
1419	Both parents	83104004
69	Neither parent (or uncertain)	83104005
699	Both parents	83104005
162	Neither parent (or uncertain)	83104006
1632	Both parents	83104006
105	Neither parent (or uncertain)	83104007
1302	Both parents	83104007
78	Neither parent (or uncertain)	83104008
1140	Both parents	83104008
135	Neither parent (or uncertain)	83105001
2583	Both parents	83105001
96	Neither parent (or uncertain)	83105002
3306	Both parents	83105002
69	Neither parent (or uncertain)	83105003
2160	Both parents	83105003
183	Neither parent (or uncertain)	83105004
4272	Both parents	83105004
99	Neither parent (or uncertain)	83105005
1845	Both parents	83105005
96	Neither parent (or uncertain)	83105006
3015	Both parents	83105006
102	Neither parent (or uncertain)	83105007
2400	Both parents	83105007
147	Neither parent (or uncertain)	83105008
3507	Both parents	83105008
102	Neither parent (or uncertain)	83105009
2697	Both parents	83105009
69	Neither parent (or uncertain)	83105010
2031	Both parents	83105010
156	Neither parent (or uncertain)	83105011
3294	Both parents	83105011
69	Neither parent (or uncertain)	83105012
1761	Both parents	83105012
87	Neither parent (or uncertain)	83105013
2019	Both parents	83105013
60	Neither parent (or uncertain)	83105014
4449	Both parents	83105014
78	Neither parent (or uncertain)	83105015
2706	Both parents	83105015
117	Neither parent (or uncertain)	83105016
2547	Both parents	83105016
72	Neither parent (or uncertain)	83105017
2373	Both parents	83105017
108	Neither parent (or uncertain)	83105018
2634	Both parents	83105018
111	Neither parent (or uncertain)	83105019
2997	Both parents	83105019
90	Neither parent (or uncertain)	83105020
3972	Both parents	83105020
108	Neither parent (or uncertain)	83105021
2409	Both parents	83105021
129	Neither parent (or uncertain)	83105022
3351	Both parents	83105022
87	Neither parent (or uncertain)	83105023
2220	Both parents	83105023
96	Neither parent (or uncertain)	83105024
2676	Both parents	83105024
84	Neither parent (or uncertain)	83105025
2010	Both parents	83105025
96	Neither parent (or uncertain)	83105026
2043	Both parents	83105026
102	Neither parent (or uncertain)	83105027
2031	Both parents	83105027
36	Neither parent (or uncertain)	83105028
1707	Both parents	83105028
57	Neither parent (or uncertain)	83105029
1386	Both parents	83105029
123	Neither parent (or uncertain)	83105030
2832	Both parents	83105030
75	Neither parent (or uncertain)	83105031
2547	Both parents	83105031
30	Neither parent (or uncertain)	83105032
1542	Both parents	83105032
81	Neither parent (or uncertain)	83106001
2196	Both parents	83106001
114	Neither parent (or uncertain)	83106002
2550	Both parents	83106002
81	Neither parent (or uncertain)	83106003
1791	Both parents	83106003
81	Neither parent (or uncertain)	83106004
1941	Both parents	83106004
75	Neither parent (or uncertain)	83106005
2076	Both parents	83106005
99	Neither parent (or uncertain)	83106006
2613	Both parents	83106006
72	Neither parent (or uncertain)	83106007
2052	Both parents	83106007
84	Neither parent (or uncertain)	83106008
1767	Both parents	83106008
42	Neither parent (or uncertain)	83106009
1233	Both parents	83106009
51	Neither parent (or uncertain)	83106010
1893	Both parents	83106010
75	Neither parent (or uncertain)	83106011
2055	Both parents	83106011
57	Neither parent (or uncertain)	83106012
2391	Both parents	83106012
57	Neither parent (or uncertain)	83106013
2049	Both parents	83106013
57	Neither parent (or uncertain)	83106014
1953	Both parents	83106014
102	Neither parent (or uncertain)	83106015
2673	Both parents	83106015
54	Neither parent (or uncertain)	83106016
1350	Both parents	83106016
123	Neither parent (or uncertain)	83106017
2832	Both parents	83106017
66	Neither parent (or uncertain)	83106018
2097	Both parents	83106018
75	Neither parent (or uncertain)	83106019
2865	Both parents	83106019
69	Neither parent (or uncertain)	83106020
1737	Both parents	83106020
150	Neither parent (or uncertain)	83106021
2535	Both parents	83106021
96	Neither parent (or uncertain)	83106022
2802	Both parents	83106022
57	Neither parent (or uncertain)	83106023
1497	Both parents	83106023
153	Neither parent (or uncertain)	83106024
2547	Both parents	83106024
111	Neither parent (or uncertain)	83106025
2055	Both parents	83106025
150	Neither parent (or uncertain)	83106026
2283	Both parents	83106026
144	Neither parent (or uncertain)	83106027
2256	Both parents	83106027
99	Neither parent (or uncertain)	83106028
1779	Both parents	83106028
96	Neither parent (or uncertain)	83106029
1962	Both parents	83106029
108	Neither parent (or uncertain)	83106030
2712	Both parents	83106030
123	Neither parent (or uncertain)	83106031
1929	Both parents	83106031
33	Neither parent (or uncertain)	83201001
687	Both parents	83201001
69	Neither parent (or uncertain)	83201002
1932	Both parents	83201002
138	Neither parent (or uncertain)	83201003
2247	Both parents	83201003
81	Neither parent (or uncertain)	83201004
1641	Both parents	83201004
183	Neither parent (or uncertain)	83201005
2574	Both parents	83201005
51	Neither parent (or uncertain)	83201006
912	Both parents	83201006
138	Neither parent (or uncertain)	83201007
1650	Both parents	83201007
123	Neither parent (or uncertain)	83201008
1656	Both parents	83201008
105	Neither parent (or uncertain)	83201009
2001	Both parents	83201009
30	Neither parent (or uncertain)	83201010
708	Both parents	83201010
15	Neither parent (or uncertain)	83201011
333	Both parents	83201011
39	Neither parent (or uncertain)	83201012
912	Both parents	83201012
27	Neither parent (or uncertain)	83201013
420	Both parents	83201013
201	Neither parent (or uncertain)	83201014
2022	Both parents	83201014
207	Neither parent (or uncertain)	83202001
6156	Both parents	83202001
381	Neither parent (or uncertain)	83202002
5976	Both parents	83202002
165	Neither parent (or uncertain)	83202003
3915	Both parents	83202003
123	Neither parent (or uncertain)	83202004
2610	Both parents	83202004
234	Neither parent (or uncertain)	83202005
4407	Both parents	83202005
186	Neither parent (or uncertain)	83202006
4413	Both parents	83202006
204	Neither parent (or uncertain)	83202007
3342	Both parents	83202007
210	Neither parent (or uncertain)	83202008
3495	Both parents	83202008
186	Neither parent (or uncertain)	83202009
3540	Both parents	83202009
198	Neither parent (or uncertain)	83202010
3858	Both parents	83202010
249	Neither parent (or uncertain)	83202011
3807	Both parents	83202011
81	Neither parent (or uncertain)	83202012
2004	Both parents	83202012
159	Neither parent (or uncertain)	83202013
2712	Both parents	83202013
183	Neither parent (or uncertain)	83202014
3942	Both parents	83202014
126	Neither parent (or uncertain)	83202015
3060	Both parents	83202015
96	Neither parent (or uncertain)	83202016
1971	Both parents	83202016
45	Neither parent (or uncertain)	83202017
2826	Both parents	83202017
105	Neither parent (or uncertain)	83202018
3381	Both parents	83202018
216	Neither parent (or uncertain)	83202019
3141	Both parents	83202019
129	Neither parent (or uncertain)	83202020
3228	Both parents	83202020
261	Neither parent (or uncertain)	83202021
3900	Both parents	83202021
189	Neither parent (or uncertain)	83202022
3309	Both parents	83202022
129	Neither parent (or uncertain)	83202023
2523	Both parents	83202023
171	Neither parent (or uncertain)	83202024
3177	Both parents	83202024
147	Neither parent (or uncertain)	83202025
4125	Both parents	83202025
219	Neither parent (or uncertain)	83202026
4440	Both parents	83202026
282	Neither parent (or uncertain)	83202027
4854	Both parents	83202027
228	Neither parent (or uncertain)	83202028
4032	Both parents	83202028
192	Neither parent (or uncertain)	83202029
4185	Both parents	83202029
162	Neither parent (or uncertain)	83202030
2181	Both parents	83202030
210	Neither parent (or uncertain)	83202031
2550	Both parents	83202031
201	Neither parent (or uncertain)	83202032
4542	Both parents	83202032
144	Neither parent (or uncertain)	83202033
2913	Both parents	83202033
144	Neither parent (or uncertain)	83202034
3267	Both parents	83202034
165	Neither parent (or uncertain)	83202035
3948	Both parents	83202035
228	Neither parent (or uncertain)	83202036
3273	Both parents	83202036
165	Neither parent (or uncertain)	83202037
3828	Both parents	83202037
312	Neither parent (or uncertain)	83202038
5772	Both parents	83202038
147	Neither parent (or uncertain)	83202039
3750	Both parents	83202039
60	Neither parent (or uncertain)	83203001
1041	Both parents	83203001
99	Neither parent (or uncertain)	83203002
1698	Both parents	83203002
177	Neither parent (or uncertain)	83203003
3066	Both parents	83203003
165	Neither parent (or uncertain)	83203004
2292	Both parents	83203004
69	Neither parent (or uncertain)	83203005
1305	Both parents	83203005
93	Neither parent (or uncertain)	83203006
1479	Both parents	83203006
33	Neither parent (or uncertain)	83203007
678	Both parents	83203007
66	Neither parent (or uncertain)	83203008
1959	Both parents	83203008
48	Neither parent (or uncertain)	83203009
1368	Both parents	83203009
348	Neither parent (or uncertain)	83204001
3456	Both parents	83204001
423	Neither parent (or uncertain)	83204002
6591	Both parents	83204002
255	Neither parent (or uncertain)	83204003
5085	Both parents	83204003
156	Neither parent (or uncertain)	83204004
2379	Both parents	83204004
210	Neither parent (or uncertain)	83204005
3561	Both parents	83204005
273	Neither parent (or uncertain)	83204006
3516	Both parents	83204006
198	Neither parent (or uncertain)	83204007
3486	Both parents	83204007
216	Neither parent (or uncertain)	83204008
4086	Both parents	83204008
285	Neither parent (or uncertain)	83204009
3903	Both parents	83204009
228	Neither parent (or uncertain)	83204010
3819	Both parents	83204010
174	Neither parent (or uncertain)	83204011
3495	Both parents	83204011
186	Neither parent (or uncertain)	83204012
3144	Both parents	83204012
276	Neither parent (or uncertain)	83204013
2709	Both parents	83204013
219	Neither parent (or uncertain)	83204014
3210	Both parents	83204014
237	Neither parent (or uncertain)	83204015
3828	Both parents	83204015
192	Neither parent (or uncertain)	83204016
2706	Both parents	83204016
174	Neither parent (or uncertain)	83204017
2157	Both parents	83204017
186	Neither parent (or uncertain)	83204018
2925	Both parents	83204018
111	Neither parent (or uncertain)	83204019
2433	Both parents	83204019
243	Neither parent (or uncertain)	83204020
4572	Both parents	83204020
264	Neither parent (or uncertain)	83204021
4644	Both parents	83204021
165	Neither parent (or uncertain)	83204022
3087	Both parents	83204022
171	Neither parent (or uncertain)	83204023
2151	Both parents	83204023
216	Neither parent (or uncertain)	83204024
3408	Both parents	83204024
174	Neither parent (or uncertain)	83204025
2418	Both parents	83204025
114	Neither parent (or uncertain)	83204026
1533	Both parents	83204026
261	Neither parent (or uncertain)	83204027
3141	Both parents	83204027
195	Neither parent (or uncertain)	83204028
1452	Both parents	83204028
186	Neither parent (or uncertain)	83204029
2655	Both parents	83204029
120	Neither parent (or uncertain)	83204030
2967	Both parents	83204030
132	Neither parent (or uncertain)	83204031
2295	Both parents	83204031
276	Neither parent (or uncertain)	83204032
2685	Both parents	83204032
222	Neither parent (or uncertain)	83204033
3825	Both parents	83204033
240	Neither parent (or uncertain)	83205001
6228	Both parents	83205001
186	Neither parent (or uncertain)	83205002
3336	Both parents	83205002
207	Neither parent (or uncertain)	83205003
4695	Both parents	83205003
192	Neither parent (or uncertain)	83205004
2781	Both parents	83205004
180	Neither parent (or uncertain)	83205005
3090	Both parents	83205005
258	Neither parent (or uncertain)	83205006
4869	Both parents	83205006
162	Neither parent (or uncertain)	83205007
4233	Both parents	83205007
135	Neither parent (or uncertain)	83205008
3825	Both parents	83205008
171	Neither parent (or uncertain)	83205009
4827	Both parents	83205009
165	Neither parent (or uncertain)	83205010
4764	Both parents	83205010
243	Neither parent (or uncertain)	83205011
3969	Both parents	83205011
198	Neither parent (or uncertain)	83205012
3936	Both parents	83205012
201	Neither parent (or uncertain)	83205013
3390	Both parents	83205013
213	Neither parent (or uncertain)	83205014
3147	Both parents	83205014
204	Neither parent (or uncertain)	83205015
4254	Both parents	83205015
141	Neither parent (or uncertain)	83205016
3180	Both parents	83205016
144	Neither parent (or uncertain)	83205017
4587	Both parents	83205017
255	Neither parent (or uncertain)	83205018
5556	Both parents	83205018
192	Neither parent (or uncertain)	83205019
4935	Both parents	83205019
147	Neither parent (or uncertain)	83205020
3600	Both parents	83205020
153	Neither parent (or uncertain)	83205021
4506	Both parents	83205021
147	Neither parent (or uncertain)	83205022
4116	Both parents	83205022
183	Neither parent (or uncertain)	83205023
4686	Both parents	83205023
246	Neither parent (or uncertain)	83205024
4899	Both parents	83205024
192	Neither parent (or uncertain)	83205025
5463	Both parents	83205025
153	Neither parent (or uncertain)	83205026
4089	Both parents	83205026
174	Neither parent (or uncertain)	83205027
4884	Both parents	83205027
129	Neither parent (or uncertain)	83205028
3219	Both parents	83205028
156	Neither parent (or uncertain)	83205029
3804	Both parents	83205029
132	Neither parent (or uncertain)	83205030
5196	Both parents	83205030
225	Neither parent (or uncertain)	83205031
6201	Both parents	83205031
141	Neither parent (or uncertain)	83205032
3513	Both parents	83205032
180	Neither parent (or uncertain)	83205033
6057	Both parents	83205033
204	Neither parent (or uncertain)	83205034
5706	Both parents	83205034
165	Neither parent (or uncertain)	83205035
5262	Both parents	83205035
141	Neither parent (or uncertain)	83205036
4482	Both parents	83205036
168	Neither parent (or uncertain)	83205037
3360	Both parents	83205037
138	Neither parent (or uncertain)	63701001
1941	Both parents	63701001
138	Neither parent (or uncertain)	63701002
2361	Both parents	63701002
123	Neither parent (or uncertain)	63701003
2631	Both parents	63701003
93	Neither parent (or uncertain)	63701004
1758	Both parents	63701004
69	Neither parent (or uncertain)	63701005
1419	Both parents	63701005
78	Neither parent (or uncertain)	63701006
1245	Both parents	63701006
72	Neither parent (or uncertain)	63701007
1698	Both parents	63701007
66	Neither parent (or uncertain)	63701008
1590	Both parents	63701008
60	Neither parent (or uncertain)	63701009
1161	Both parents	63701009
48	Neither parent (or uncertain)	63701010
1386	Both parents	63701010
48	Neither parent (or uncertain)	63701011
1860	Both parents	63701011
81	Neither parent (or uncertain)	63701012
2421	Both parents	63701012
75	Neither parent (or uncertain)	63701013
3237	Both parents	63701013
54	Neither parent (or uncertain)	63701014
1905	Both parents	63701014
54	Neither parent (or uncertain)	63701015
1137	Both parents	63701015
63	Neither parent (or uncertain)	63701016
1875	Both parents	63701016
48	Neither parent (or uncertain)	63701017
984	Both parents	63701017
69	Neither parent (or uncertain)	63701018
1275	Both parents	63701018
96	Neither parent (or uncertain)	63701019
1437	Both parents	63701019
72	Neither parent (or uncertain)	63701020
1185	Both parents	63701020
69	Neither parent (or uncertain)	63701021
1083	Both parents	63701021
96	Neither parent (or uncertain)	63701022
1746	Both parents	63701022
57	Neither parent (or uncertain)	63701023
1875	Both parents	63701023
60	Neither parent (or uncertain)	63701024
870	Both parents	63701024
66	Neither parent (or uncertain)	63701025
1425	Both parents	63701025
111	Neither parent (or uncertain)	63701026
1626	Both parents	63701026
57	Neither parent (or uncertain)	63701027
1212	Both parents	63701027
108	Neither parent (or uncertain)	63701028
2400	Both parents	63701028
132	Neither parent (or uncertain)	63702001
1941	Both parents	63702001
75	Neither parent (or uncertain)	63702002
1827	Both parents	63702002
105	Neither parent (or uncertain)	63702003
2466	Both parents	63702003
156	Neither parent (or uncertain)	63702004
2193	Both parents	63702004
186	Neither parent (or uncertain)	63702005
3234	Both parents	63702005
138	Neither parent (or uncertain)	63702006
2214	Both parents	63702006
120	Neither parent (or uncertain)	63702007
2328	Both parents	63702007
129	Neither parent (or uncertain)	63702008
2736	Both parents	63702008
129	Neither parent (or uncertain)	63702009
3705	Both parents	63702009
141	Neither parent (or uncertain)	63702010
4974	Both parents	63702010
120	Neither parent (or uncertain)	63702011
3015	Both parents	63702011
105	Neither parent (or uncertain)	63702012
2316	Both parents	63702012
81	Neither parent (or uncertain)	63702013
1731	Both parents	63702013
237	Neither parent (or uncertain)	63702014
4263	Both parents	63702014
69	Neither parent (or uncertain)	63702015
1935	Both parents	63702015
108	Neither parent (or uncertain)	63702016
3087	Both parents	63702016
117	Neither parent (or uncertain)	63702017
2838	Both parents	63702017
114	Neither parent (or uncertain)	63702018
2613	Both parents	63702018
102	Neither parent (or uncertain)	63702019
2706	Both parents	63702019
99	Neither parent (or uncertain)	63702020
2466	Both parents	63702020
90	Neither parent (or uncertain)	63702021
3003	Both parents	63702021
126	Neither parent (or uncertain)	63702022
3114	Both parents	63702022
24	Neither parent (or uncertain)	63702023
1113	Both parents	63702023
123	Neither parent (or uncertain)	63702024
3750	Both parents	63702024
339	Neither parent (or uncertain)	63702025
8253	Both parents	63702025
111	Neither parent (or uncertain)	63702026
2733	Both parents	63702026
72	Neither parent (or uncertain)	63702027
2502	Both parents	63702027
108	Neither parent (or uncertain)	63702028
2529	Both parents	63702028
78	Neither parent (or uncertain)	63702029
3714	Both parents	63702029
84	Neither parent (or uncertain)	63702030
3057	Both parents	63702030
84	Neither parent (or uncertain)	63702031
1845	Both parents	63702031
72	Neither parent (or uncertain)	63702032
1686	Both parents	63702032
153	Neither parent (or uncertain)	63702033
2190	Both parents	63702033
108	Neither parent (or uncertain)	63702034
2307	Both parents	63702034
192	Neither parent (or uncertain)	63702035
4014	Both parents	63702035
147	Neither parent (or uncertain)	63702036
2451	Both parents	63702036
288	Neither parent (or uncertain)	63703001
3447	Both parents	63703001
138	Neither parent (or uncertain)	63703002
3687	Both parents	63703002
60	Neither parent (or uncertain)	63703003
1308	Both parents	63703003
132	Neither parent (or uncertain)	63703004
1950	Both parents	63703004
144	Neither parent (or uncertain)	63703005
1518	Both parents	63703005
171	Neither parent (or uncertain)	63703006
2166	Both parents	63703006
186	Neither parent (or uncertain)	63703007
3669	Both parents	63703007
168	Neither parent (or uncertain)	63703008
6027	Both parents	63703008
153	Neither parent (or uncertain)	63703009
1443	Both parents	63703009
144	Neither parent (or uncertain)	63703010
3684	Both parents	63703010
123	Neither parent (or uncertain)	63703011
3363	Both parents	63703011
96	Neither parent (or uncertain)	63703012
3330	Both parents	63703012
120	Neither parent (or uncertain)	63703013
1476	Both parents	63703013
36	Neither parent (or uncertain)	63703014
1719	Both parents	63703014
81	Neither parent (or uncertain)	63703015
2262	Both parents	63703015
30	Neither parent (or uncertain)	63703016
1896	Both parents	63703016
144	Neither parent (or uncertain)	63703017
4458	Both parents	63703017
180	Neither parent (or uncertain)	63703018
4914	Both parents	63703018
144	Neither parent (or uncertain)	63703019
6210	Both parents	63703019
111	Neither parent (or uncertain)	63703020
1938	Both parents	63703020
192	Neither parent (or uncertain)	63703021
4230	Both parents	63703021
108	Neither parent (or uncertain)	63703022
3627	Both parents	63703022
177	Neither parent (or uncertain)	63703023
2409	Both parents	63703023
141	Neither parent (or uncertain)	63703024
3615	Both parents	63703024
111	Neither parent (or uncertain)	63703025
2223	Both parents	63703025
186	Neither parent (or uncertain)	63703026
3012	Both parents	63703026
285	Neither parent (or uncertain)	63703027
4044	Both parents	63703027
231	Neither parent (or uncertain)	63703028
2784	Both parents	63703028
249	Neither parent (or uncertain)	63703029
4332	Both parents	63703029
132	Neither parent (or uncertain)	63703030
3099	Both parents	63703030
48	Neither parent (or uncertain)	63703031
1605	Both parents	63703031
66	Neither parent (or uncertain)	63703032
2931	Both parents	63703032
48	Neither parent (or uncertain)	63703033
807	Both parents	63703033
78	Neither parent (or uncertain)	63703034
1590	Both parents	63703034
63	Neither parent (or uncertain)	63703035
1902	Both parents	63703035
171	Neither parent (or uncertain)	63703036
3282	Both parents	63703036
147	Neither parent (or uncertain)	63703037
3846	Both parents	63703037
9	Neither parent (or uncertain)	63703038
351	Both parents	63703038
150	Neither parent (or uncertain)	63704001
2322	Both parents	63704001
99	Neither parent (or uncertain)	63704002
1536	Both parents	63704002
57	Neither parent (or uncertain)	63704003
915	Both parents	63704003
171	Neither parent (or uncertain)	63704004
1239	Both parents	63704004
261	Neither parent (or uncertain)	63704005
3282	Both parents	63704005
105	Neither parent (or uncertain)	63704006
2196	Both parents	63704006
129	Neither parent (or uncertain)	63705001
1539	Both parents	63705001
186	Neither parent (or uncertain)	63705002
1695	Both parents	63705002
144	Neither parent (or uncertain)	63705003
1287	Both parents	63705003
195	Neither parent (or uncertain)	63705004
2733	Both parents	63705004
162	Neither parent (or uncertain)	63705005
2115	Both parents	63705005
123	Neither parent (or uncertain)	63705006
1380	Both parents	63705006
60	Neither parent (or uncertain)	63705007
1425	Both parents	63705007
57	Neither parent (or uncertain)	63705008
1434	Both parents	63705008
87	Neither parent (or uncertain)	63705009
1617	Both parents	63705009
126	Neither parent (or uncertain)	63705010
2697	Both parents	63705010
120	Neither parent (or uncertain)	63705011
1686	Both parents	63705011
81	Neither parent (or uncertain)	63705012
1302	Both parents	63705012
57	Neither parent (or uncertain)	63705013
1185	Both parents	63705013
96	Neither parent (or uncertain)	63705014
1374	Both parents	63705014
42	Neither parent (or uncertain)	63705015
1692	Both parents	63705015
129	Neither parent (or uncertain)	63705016
2481	Both parents	63705016
96	Neither parent (or uncertain)	63705017
2118	Both parents	63705017
135	Neither parent (or uncertain)	63705018
1719	Both parents	63705018
126	Neither parent (or uncertain)	63705019
1881	Both parents	63705019
102	Neither parent (or uncertain)	63705020
1668	Both parents	63705020
168	Neither parent (or uncertain)	63705021
2172	Both parents	63705021
105	Neither parent (or uncertain)	63705022
1719	Both parents	63705022
105	Neither parent (or uncertain)	63705023
1680	Both parents	63705023
75	Neither parent (or uncertain)	63705024
891	Both parents	63705024
132	Neither parent (or uncertain)	63705025
1548	Both parents	63705025
138	Neither parent (or uncertain)	63705026
1587	Both parents	63705026
147	Neither parent (or uncertain)	63705027
2028	Both parents	63705027
111	Neither parent (or uncertain)	63705028
2280	Both parents	63705028
129	Neither parent (or uncertain)	63705029
2142	Both parents	63705029
147	Neither parent (or uncertain)	63705030
1491	Both parents	63705030
87	Neither parent (or uncertain)	63705031
1683	Both parents	63705031
207	Neither parent (or uncertain)	63801001
2118	Both parents	63801001
96	Neither parent (or uncertain)	63801002
1608	Both parents	63801002
147	Neither parent (or uncertain)	63801003
1860	Both parents	63801003
237	Neither parent (or uncertain)	63801004
2565	Both parents	63801004
156	Neither parent (or uncertain)	63801005
1542	Both parents	63801005
171	Neither parent (or uncertain)	63801006
1695	Both parents	63801006
207	Neither parent (or uncertain)	63801007
2385	Both parents	63801007
282	Neither parent (or uncertain)	63801008
3189	Both parents	63801008
276	Neither parent (or uncertain)	63801009
2259	Both parents	63801009
57	Neither parent (or uncertain)	63801010
816	Both parents	63801010
240	Neither parent (or uncertain)	63801011
1824	Both parents	63801011
204	Neither parent (or uncertain)	63801012
1800	Both parents	63801012
252	Neither parent (or uncertain)	63801013
3003	Both parents	63801013
201	Neither parent (or uncertain)	63801014
3168	Both parents	63801014
150	Neither parent (or uncertain)	63802001
2865	Both parents	63802001
171	Neither parent (or uncertain)	63802002
2070	Both parents	63802002
147	Neither parent (or uncertain)	63802003
1794	Both parents	63802003
204	Neither parent (or uncertain)	63802004
2097	Both parents	63802004
177	Neither parent (or uncertain)	63802005
1938	Both parents	63802005
201	Neither parent (or uncertain)	63802006
2406	Both parents	63802006
189	Neither parent (or uncertain)	63802007
2169	Both parents	63802007
90	Neither parent (or uncertain)	63802008
1065	Both parents	63802008
255	Neither parent (or uncertain)	63802009
5031	Both parents	63802009
183	Neither parent (or uncertain)	63802010
3093	Both parents	63802010
168	Neither parent (or uncertain)	63802011
2256	Both parents	63802011
195	Neither parent (or uncertain)	63802012
3219	Both parents	63802012
75	Neither parent (or uncertain)	63802013
834	Both parents	63802013
87	Neither parent (or uncertain)	63802014
1821	Both parents	63802014
78	Neither parent (or uncertain)	63802015
2679	Both parents	63802015
144	Neither parent (or uncertain)	63803001
2961	Both parents	63803001
96	Neither parent (or uncertain)	63803002
2085	Both parents	63803002
147	Neither parent (or uncertain)	63803003
1989	Both parents	63803003
147	Neither parent (or uncertain)	63803004
2274	Both parents	63803004
54	Neither parent (or uncertain)	63803005
744	Both parents	63803005
111	Neither parent (or uncertain)	63803006
2616	Both parents	63803006
189	Neither parent (or uncertain)	63803007
3657	Both parents	63803007
108	Neither parent (or uncertain)	63803008
936	Both parents	63803008
144	Neither parent (or uncertain)	63803009
2355	Both parents	63803009
42	Neither parent (or uncertain)	63803010
1254	Both parents	63803010
87	Neither parent (or uncertain)	63803011
1329	Both parents	63803011
60	Neither parent (or uncertain)	63803012
2571	Both parents	63803012
72	Neither parent (or uncertain)	63803013
4122	Both parents	63803013
198	Neither parent (or uncertain)	63803014
3393	Both parents	63803014
99	Neither parent (or uncertain)	63803015
1557	Both parents	63803015
138	Neither parent (or uncertain)	63803016
2166	Both parents	63803016
102	Neither parent (or uncertain)	63803017
1884	Both parents	63803017
168	Neither parent (or uncertain)	63803018
2121	Both parents	63803018
96	Neither parent (or uncertain)	63803019
1233	Both parents	63803019
72	Neither parent (or uncertain)	63803020
1155	Both parents	63803020
150	Neither parent (or uncertain)	63803021
2049	Both parents	63803021
177	Neither parent (or uncertain)	63803022
3171	Both parents	63803022
135	Neither parent (or uncertain)	63803023
1863	Both parents	63803023
141	Neither parent (or uncertain)	63803024
2400	Both parents	63803024
147	Neither parent (or uncertain)	63803025
2148	Both parents	63803025
180	Neither parent (or uncertain)	63803026
2883	Both parents	63803026
372	Neither parent (or uncertain)	63803027
2781	Both parents	63803027
378	Neither parent (or uncertain)	63803028
3009	Both parents	63803028
174	Neither parent (or uncertain)	63803029
2706	Both parents	63803029
126	Neither parent (or uncertain)	63803030
1581	Both parents	63803030
165	Neither parent (or uncertain)	63803031
3468	Both parents	63803031
78	Neither parent (or uncertain)	63804001
1863	Both parents	63804001
99	Neither parent (or uncertain)	63804002
1458	Both parents	63804002
141	Neither parent (or uncertain)	63804003
2169	Both parents	63804003
177	Neither parent (or uncertain)	63804004
2712	Both parents	63804004
69	Neither parent (or uncertain)	63804005
1926	Both parents	63804005
45	Neither parent (or uncertain)	63804006
972	Both parents	63804006
87	Neither parent (or uncertain)	63804007
1032	Both parents	63804007
99	Neither parent (or uncertain)	63804008
1605	Both parents	63804008
69	Neither parent (or uncertain)	63804009
1215	Both parents	63804009
159	Neither parent (or uncertain)	63804010
2523	Both parents	63804010
114	Neither parent (or uncertain)	63804011
1620	Both parents	63804011
111	Neither parent (or uncertain)	63804012
1470	Both parents	63804012
243	Neither parent (or uncertain)	63804013
2823	Both parents	63804013
162	Neither parent (or uncertain)	63804014
3096	Both parents	63804014
204	Neither parent (or uncertain)	63804015
3582	Both parents	63804015
144	Neither parent (or uncertain)	63804016
2991	Both parents	63804016
132	Neither parent (or uncertain)	63804017
1827	Both parents	63804017
114	Neither parent (or uncertain)	63804018
1320	Both parents	63804018
111	Neither parent (or uncertain)	63804019
1878	Both parents	63804019
96	Neither parent (or uncertain)	63804020
2619	Both parents	63804020
147	Neither parent (or uncertain)	63804021
3444	Both parents	63804021
72	Neither parent (or uncertain)	63805001
1041	Both parents	63805001
141	Neither parent (or uncertain)	63805002
2490	Both parents	63805002
78	Neither parent (or uncertain)	63805003
1542	Both parents	63805003
129	Neither parent (or uncertain)	63805004
1716	Both parents	63805004
111	Neither parent (or uncertain)	63805005
1593	Both parents	63805005
87	Neither parent (or uncertain)	63805006
1161	Both parents	63805006
126	Neither parent (or uncertain)	63805007
2181	Both parents	63805007
120	Neither parent (or uncertain)	63805008
1938	Both parents	63805008
78	Neither parent (or uncertain)	63805009
1407	Both parents	63805009
75	Neither parent (or uncertain)	63805010
1170	Both parents	63805010
195	Neither parent (or uncertain)	63805011
2757	Both parents	63805011
108	Neither parent (or uncertain)	63805012
1902	Both parents	63805012
141	Neither parent (or uncertain)	63805013
3156	Both parents	63805013
138	Neither parent (or uncertain)	63805014
2253	Both parents	63805014
48	Neither parent (or uncertain)	63805015
1605	Both parents	63805015
75	Neither parent (or uncertain)	63805016
2139	Both parents	63805016
87	Neither parent (or uncertain)	63805017
1842	Both parents	63805017
132	Neither parent (or uncertain)	63805018
2172	Both parents	63805018
234	Neither parent (or uncertain)	63805019
2802	Both parents	63805019
78	Neither parent (or uncertain)	63805020
1659	Both parents	63805020
144	Neither parent (or uncertain)	63902001
2634	Both parents	63902001
51	Neither parent (or uncertain)	63902002
1785	Both parents	63902002
111	Neither parent (or uncertain)	63902003
2451	Both parents	63902003
168	Neither parent (or uncertain)	63902004
3219	Both parents	63902004
111	Neither parent (or uncertain)	63902005
2478	Both parents	63902005
72	Neither parent (or uncertain)	63902006
1068	Both parents	63902006
51	Neither parent (or uncertain)	63902007
1344	Both parents	63902007
96	Neither parent (or uncertain)	63902008
1089	Both parents	63902008
108	Neither parent (or uncertain)	63902009
1155	Both parents	63902009
156	Neither parent (or uncertain)	63903001
2625	Both parents	63903001
111	Neither parent (or uncertain)	63903002
1116	Both parents	63903002
111	Neither parent (or uncertain)	63903003
2457	Both parents	63903003
123	Neither parent (or uncertain)	63903004
1680	Both parents	63903004
159	Neither parent (or uncertain)	63903005
3219	Both parents	63903005
144	Neither parent (or uncertain)	63903006
2481	Both parents	63903006
60	Neither parent (or uncertain)	63903007
2226	Both parents	63903007
138	Neither parent (or uncertain)	63903008
1938	Both parents	63903008
147	Neither parent (or uncertain)	63904001
2295	Both parents	63904001
192	Neither parent (or uncertain)	63904002
2970	Both parents	63904002
132	Neither parent (or uncertain)	63904003
2184	Both parents	63904003
117	Neither parent (or uncertain)	63904004
1716	Both parents	63904004
81	Neither parent (or uncertain)	63904005
1860	Both parents	63904005
120	Neither parent (or uncertain)	63904006
2445	Both parents	63904006
69	Neither parent (or uncertain)	63904007
1731	Both parents	63904007
147	Neither parent (or uncertain)	63904008
1869	Both parents	63904008
111	Neither parent (or uncertain)	63904009
2214	Both parents	63904009
105	Neither parent (or uncertain)	63904010
2136	Both parents	63904010
63	Neither parent (or uncertain)	63904011
1317	Both parents	63904011
93	Neither parent (or uncertain)	63904012
2106	Both parents	63904012
105	Neither parent (or uncertain)	63904013
1440	Both parents	63904013
123	Neither parent (or uncertain)	63904014
1470	Both parents	63904014
183	Neither parent (or uncertain)	63904015
2040	Both parents	63904015
96	Neither parent (or uncertain)	63904016
1551	Both parents	63904016
153	Neither parent (or uncertain)	63904017
1878	Both parents	63904017
153	Neither parent (or uncertain)	63904018
1971	Both parents	63904018
111	Neither parent (or uncertain)	63904019
1533	Both parents	63904019
129	Neither parent (or uncertain)	63904020
1923	Both parents	63904020
129	Neither parent (or uncertain)	63904021
2040	Both parents	63904021
111	Neither parent (or uncertain)	63904022
1650	Both parents	63904022
99	Neither parent (or uncertain)	63904023
1518	Both parents	63904023
90	Neither parent (or uncertain)	63904024
1983	Both parents	63904024
93	Neither parent (or uncertain)	63904025
1623	Both parents	63904025
117	Neither parent (or uncertain)	63904026
1644	Both parents	63904026
186	Neither parent (or uncertain)	63906001
2697	Both parents	63906001
129	Neither parent (or uncertain)	63906002
1278	Both parents	63906002
204	Neither parent (or uncertain)	63906003
2715	Both parents	63906003
48	Neither parent (or uncertain)	63906004
1143	Both parents	63906004
207	Neither parent (or uncertain)	63906005
2541	Both parents	63906005
33	Neither parent (or uncertain)	63906006
1035	Both parents	63906006
159	Neither parent (or uncertain)	63906007
2286	Both parents	63906007
129	Neither parent (or uncertain)	63907001
2538	Both parents	63907001
30	Neither parent (or uncertain)	63907002
1863	Both parents	63907002
219	Neither parent (or uncertain)	63907003
3114	Both parents	63907003
132	Neither parent (or uncertain)	63907004
1848	Both parents	63907004
87	Neither parent (or uncertain)	63907005
1257	Both parents	63907005
111	Neither parent (or uncertain)	63907006
1812	Both parents	63907006
99	Neither parent (or uncertain)	63907007
2361	Both parents	63907007
57	Neither parent (or uncertain)	63907008
1956	Both parents	63907008
60	Neither parent (or uncertain)	63907009
1365	Both parents	63907009
183	Neither parent (or uncertain)	63907010
2421	Both parents	63907010
132	Neither parent (or uncertain)	63907011
1560	Both parents	63907011
87	Neither parent (or uncertain)	63907012
1644	Both parents	63907012
159	Neither parent (or uncertain)	63907013
2610	Both parents	63907013
153	Neither parent (or uncertain)	63907014
2358	Both parents	63907014
129	Neither parent (or uncertain)	63907015
1815	Both parents	63907015
84	Neither parent (or uncertain)	64001001
1242	Both parents	64001001
105	Neither parent (or uncertain)	64001002
1074	Both parents	64001002
321	Neither parent (or uncertain)	64001003
4131	Both parents	64001003
150	Neither parent (or uncertain)	64001004
2448	Both parents	64001004
297	Neither parent (or uncertain)	64001005
3411	Both parents	64001005
186	Neither parent (or uncertain)	64001006
2757	Both parents	64001006
87	Neither parent (or uncertain)	64002001
1704	Both parents	64002001
69	Neither parent (or uncertain)	64002002
2832	Both parents	64002002
42	Neither parent (or uncertain)	64002003
1890	Both parents	64002003
96	Neither parent (or uncertain)	64002004
1923	Both parents	64002004
15	Neither parent (or uncertain)	64002005
501	Both parents	64002005
33	Neither parent (or uncertain)	64002006
777	Both parents	64002006
33	Neither parent (or uncertain)	64002007
486	Both parents	64002007
42	Neither parent (or uncertain)	64002008
861	Both parents	64002008
81	Neither parent (or uncertain)	64002009
1788	Both parents	64002009
33	Neither parent (or uncertain)	64002010
855	Both parents	64002010
33	Neither parent (or uncertain)	64002011
459	Both parents	64002011
54	Neither parent (or uncertain)	64002012
1212	Both parents	64002012
72	Neither parent (or uncertain)	64002013
2319	Both parents	64002013
51	Neither parent (or uncertain)	64002014
885	Both parents	64002014
87	Neither parent (or uncertain)	64002015
633	Both parents	64002015
63	Neither parent (or uncertain)	64002016
813	Both parents	64002016
51	Neither parent (or uncertain)	64002017
1470	Both parents	64002017
69	Neither parent (or uncertain)	64002018
1650	Both parents	64002018
177	Neither parent (or uncertain)	64002019
2259	Both parents	64002019
72	Neither parent (or uncertain)	64002020
1815	Both parents	64002020
129	Neither parent (or uncertain)	64002021
3306	Both parents	64002021
0	Neither parent (or uncertain)	64002022
54	Both parents	64002022
21	Neither parent (or uncertain)	64002023
669	Both parents	64002023
12	Neither parent (or uncertain)	64002024
153	Both parents	64002024
6	Neither parent (or uncertain)	64002025
321	Both parents	64002025
111	Neither parent (or uncertain)	64002026
2733	Both parents	64002026
249	Neither parent (or uncertain)	64003001
3945	Both parents	64003001
279	Neither parent (or uncertain)	64003002
4212	Both parents	64003002
57	Neither parent (or uncertain)	64003003
2448	Both parents	64003003
213	Neither parent (or uncertain)	64003004
5694	Both parents	64003004
228	Neither parent (or uncertain)	64003005
2883	Both parents	64003005
147	Neither parent (or uncertain)	64003006
2850	Both parents	64003006
174	Neither parent (or uncertain)	64003007
2673	Both parents	64003007
150	Neither parent (or uncertain)	64003008
2064	Both parents	64003008
189	Neither parent (or uncertain)	64003009
2235	Both parents	64003009
129	Neither parent (or uncertain)	64003010
1350	Both parents	64003010
120	Neither parent (or uncertain)	64003011
1467	Both parents	64003011
189	Neither parent (or uncertain)	64003012
4275	Both parents	64003012
159	Neither parent (or uncertain)	64003013
2775	Both parents	64003013
153	Neither parent (or uncertain)	64003014
2727	Both parents	64003014
63	Neither parent (or uncertain)	64003015
2010	Both parents	64003015
36	Neither parent (or uncertain)	64003016
1704	Both parents	64003016
48	Neither parent (or uncertain)	64003017
1869	Both parents	64003017
129	Neither parent (or uncertain)	64003018
2412	Both parents	64003018
258	Neither parent (or uncertain)	64003019
1890	Both parents	64003019
129	Neither parent (or uncertain)	64003020
1257	Both parents	64003020
66	Neither parent (or uncertain)	64003021
1317	Both parents	64003021
249	Neither parent (or uncertain)	64003022
5433	Both parents	64003022
159	Neither parent (or uncertain)	64003023
3450	Both parents	64003023
240	Neither parent (or uncertain)	64003024
2265	Both parents	64003024
123	Neither parent (or uncertain)	64003025
2244	Both parents	64003025
156	Neither parent (or uncertain)	64003026
2040	Both parents	64003026
195	Neither parent (or uncertain)	64003027
2862	Both parents	64003027
42	Neither parent (or uncertain)	64003028
1824	Both parents	64003028
30	Neither parent (or uncertain)	64003029
1851	Both parents	64003029
36	Neither parent (or uncertain)	64003030
1581	Both parents	64003030
204	Neither parent (or uncertain)	64003031
2916	Both parents	64003031
132	Neither parent (or uncertain)	64003032
1995	Both parents	64003032
243	Neither parent (or uncertain)	64003033
2667	Both parents	64003033
138	Neither parent (or uncertain)	64003034
1710	Both parents	64003034
213	Neither parent (or uncertain)	64003035
3150	Both parents	64003035
99	Neither parent (or uncertain)	64004001
1788	Both parents	64004001
144	Neither parent (or uncertain)	64004002
1506	Both parents	64004002
153	Neither parent (or uncertain)	64004003
1218	Both parents	64004003
108	Neither parent (or uncertain)	64004004
1644	Both parents	64004004
105	Neither parent (or uncertain)	64004005
1131	Both parents	64004005
120	Neither parent (or uncertain)	64004006
1599	Both parents	64004006
72	Neither parent (or uncertain)	64004007
801	Both parents	64004007
138	Neither parent (or uncertain)	64004008
4161	Both parents	64004008
75	Neither parent (or uncertain)	64004009
1407	Both parents	64004009
153	Neither parent (or uncertain)	64004010
3012	Both parents	64004010
174	Neither parent (or uncertain)	64004011
2463	Both parents	64004011
3	Neither parent (or uncertain)	30601001
447	Both parents	30601001
12	Neither parent (or uncertain)	30601002
813	Both parents	30601002
24	Neither parent (or uncertain)	30601003
633	Both parents	30601003
15	Neither parent (or uncertain)	30601004
651	Both parents	30601004
12	Neither parent (or uncertain)	30602001
1239	Both parents	30602001
18	Neither parent (or uncertain)	30602002
1200	Both parents	30602002
27	Neither parent (or uncertain)	30602003
1080	Both parents	30602003
27	Neither parent (or uncertain)	30602004
675	Both parents	30602004
129	Neither parent (or uncertain)	30602005
1104	Both parents	30602005
9	Neither parent (or uncertain)	30602006
1380	Both parents	30602006
45	Neither parent (or uncertain)	30602007
1317	Both parents	30602007
12	Neither parent (or uncertain)	30602008
1212	Both parents	30602008
9	Neither parent (or uncertain)	30602009
1278	Both parents	30602009
6	Neither parent (or uncertain)	30604001
495	Both parents	30604001
48	Neither parent (or uncertain)	30604002
597	Both parents	30604002
54	Neither parent (or uncertain)	30604003
627	Both parents	30604003
9	Neither parent (or uncertain)	30604004
618	Both parents	30604004
87	Neither parent (or uncertain)	30605001
966	Both parents	30605001
57	Neither parent (or uncertain)	30605002
1416	Both parents	30605002
18	Neither parent (or uncertain)	30605003
1014	Both parents	30605003
27	Neither parent (or uncertain)	30605004
1080	Both parents	30605004
81	Neither parent (or uncertain)	30605005
672	Both parents	30605005
93	Neither parent (or uncertain)	30606001
843	Both parents	30606001
48	Neither parent (or uncertain)	30606002
768	Both parents	30606002
3	Neither parent (or uncertain)	30606003
609	Both parents	30606003
66	Neither parent (or uncertain)	30606004
678	Both parents	30606004
18	Neither parent (or uncertain)	30607001
732	Both parents	30607001
27	Neither parent (or uncertain)	30607002
699	Both parents	30607002
12	Neither parent (or uncertain)	30607003
693	Both parents	30607003
18	Neither parent (or uncertain)	30607004
756	Both parents	30607004
87	Neither parent (or uncertain)	30701001
1401	Both parents	30701001
57	Neither parent (or uncertain)	30701002
1659	Both parents	30701002
21	Neither parent (or uncertain)	30701003
1443	Both parents	30701003
45	Neither parent (or uncertain)	30701004
831	Both parents	30701004
105	Neither parent (or uncertain)	30702001
1560	Both parents	30702001
66	Neither parent (or uncertain)	30702002
1233	Both parents	30702002
141	Neither parent (or uncertain)	30702003
1752	Both parents	30702003
66	Neither parent (or uncertain)	30702004
1668	Both parents	30702004
78	Neither parent (or uncertain)	30702005
924	Both parents	30702005
60	Neither parent (or uncertain)	30703001
1485	Both parents	30703001
105	Neither parent (or uncertain)	30703002
2331	Both parents	30703002
90	Neither parent (or uncertain)	30703003
1251	Both parents	30703003
90	Neither parent (or uncertain)	30703004
1497	Both parents	30703004
42	Neither parent (or uncertain)	30703005
1299	Both parents	30703005
114	Neither parent (or uncertain)	30703006
1488	Both parents	30703006
48	Neither parent (or uncertain)	30703007
1707	Both parents	30703007
15	Neither parent (or uncertain)	30704001
579	Both parents	30704001
15	Neither parent (or uncertain)	30704002
1125	Both parents	30704002
24	Neither parent (or uncertain)	30704003
495	Both parents	30704003
12	Neither parent (or uncertain)	30704004
819	Both parents	30704004
33	Neither parent (or uncertain)	30705001
846	Both parents	30705001
63	Neither parent (or uncertain)	30705002
1200	Both parents	30705002
6	Neither parent (or uncertain)	30705003
369	Both parents	30705003
15	Neither parent (or uncertain)	30705004
558	Both parents	30705004
54	Neither parent (or uncertain)	30706001
927	Both parents	30706001
21	Neither parent (or uncertain)	30706002
1137	Both parents	30706002
45	Neither parent (or uncertain)	30706003
801	Both parents	30706003
54	Neither parent (or uncertain)	30706004
1239	Both parents	30706004
69	Neither parent (or uncertain)	30707001
1749	Both parents	30707001
24	Neither parent (or uncertain)	30707002
960	Both parents	30707002
129	Neither parent (or uncertain)	30707003
1653	Both parents	30707003
27	Neither parent (or uncertain)	30707004
1203	Both parents	30707004
105	Neither parent (or uncertain)	30708001
1488	Both parents	30708001
51	Neither parent (or uncertain)	30708002
1362	Both parents	30708002
54	Neither parent (or uncertain)	30708003
1878	Both parents	30708003
132	Neither parent (or uncertain)	30708004
2469	Both parents	30708004
45	Neither parent (or uncertain)	30708005
1200	Both parents	30708005
69	Neither parent (or uncertain)	30708006
1530	Both parents	30708006
0	Neither parent (or uncertain)	30801001
105	Both parents	30801001
12	Neither parent (or uncertain)	30801002
789	Both parents	30801002
60	Neither parent (or uncertain)	30801003
612	Both parents	30801003
3	Neither parent (or uncertain)	30801004
426	Both parents	30801004
57	Neither parent (or uncertain)	30802001
1518	Both parents	30802001
24	Neither parent (or uncertain)	30802002
1431	Both parents	30802002
69	Neither parent (or uncertain)	30802003
1698	Both parents	30802003
57	Neither parent (or uncertain)	30802004
1632	Both parents	30802004
24	Neither parent (or uncertain)	30802005
1398	Both parents	30802005
36	Neither parent (or uncertain)	30802006
2244	Both parents	30802006
27	Neither parent (or uncertain)	30802007
1266	Both parents	30802007
27	Neither parent (or uncertain)	30802008
1281	Both parents	30802008
66	Neither parent (or uncertain)	30802009
1443	Both parents	30802009
36	Neither parent (or uncertain)	30803001
1719	Both parents	30803001
36	Neither parent (or uncertain)	30803002
2172	Both parents	30803002
36	Neither parent (or uncertain)	30803003
1296	Both parents	30803003
54	Neither parent (or uncertain)	30803004
1176	Both parents	30803004
63	Neither parent (or uncertain)	30803005
1968	Both parents	30803005
96	Neither parent (or uncertain)	30803006
1548	Both parents	30803006
27	Neither parent (or uncertain)	30803007
780	Both parents	30803007
21	Neither parent (or uncertain)	30803008
1437	Both parents	30803008
33	Neither parent (or uncertain)	30803009
1245	Both parents	30803009
51	Neither parent (or uncertain)	30803010
3198	Both parents	30803010
33	Neither parent (or uncertain)	30803011
1938	Both parents	30803011
36	Neither parent (or uncertain)	30803012
1917	Both parents	30803012
159	Neither parent (or uncertain)	30803013
1833	Both parents	30803013
36	Neither parent (or uncertain)	30803014
1767	Both parents	30803014
18	Neither parent (or uncertain)	30804001
1272	Both parents	30804001
27	Neither parent (or uncertain)	30804002
1590	Both parents	30804002
27	Neither parent (or uncertain)	30804003
996	Both parents	30804003
30	Neither parent (or uncertain)	30804004
1230	Both parents	30804004
42	Neither parent (or uncertain)	30805001
924	Both parents	30805001
87	Neither parent (or uncertain)	30805002
1593	Both parents	30805002
57	Neither parent (or uncertain)	30805003
1593	Both parents	30805003
57	Neither parent (or uncertain)	30805004
1152	Both parents	30805004
69	Neither parent (or uncertain)	30805005
1710	Both parents	30805005
75	Neither parent (or uncertain)	30805006
1221	Both parents	30805006
66	Neither parent (or uncertain)	30806001
1107	Both parents	30806001
24	Neither parent (or uncertain)	30806002
663	Both parents	30806002
78	Neither parent (or uncertain)	30806003
1923	Both parents	30806003
21	Neither parent (or uncertain)	30806004
1008	Both parents	30806004
48	Neither parent (or uncertain)	30901001
1530	Both parents	30901001
69	Neither parent (or uncertain)	30901002
3018	Both parents	30901002
54	Neither parent (or uncertain)	30901003
2127	Both parents	30901003
180	Neither parent (or uncertain)	30901004
1482	Both parents	30901004
87	Neither parent (or uncertain)	30901005
1686	Both parents	30901005
90	Neither parent (or uncertain)	30901006
1602	Both parents	30901006
129	Neither parent (or uncertain)	30901007
1827	Both parents	30901007
114	Neither parent (or uncertain)	30901008
2160	Both parents	30901008
60	Neither parent (or uncertain)	30901009
1584	Both parents	30901009
84	Neither parent (or uncertain)	30901010
1392	Both parents	30901010
78	Neither parent (or uncertain)	30901011
1647	Both parents	30901011
111	Neither parent (or uncertain)	30901012
1107	Both parents	30901012
156	Neither parent (or uncertain)	30901013
1845	Both parents	30901013
36	Neither parent (or uncertain)	30901014
1335	Both parents	30901014
81	Neither parent (or uncertain)	30901015
1827	Both parents	30901015
108	Neither parent (or uncertain)	30901016
3699	Both parents	30901016
126	Neither parent (or uncertain)	30901017
2688	Both parents	30901017
36	Neither parent (or uncertain)	30901018
933	Both parents	30901018
120	Neither parent (or uncertain)	30901019
1359	Both parents	30901019
60	Neither parent (or uncertain)	30901020
1596	Both parents	30901020
120	Neither parent (or uncertain)	30901021
1587	Both parents	30901021
156	Neither parent (or uncertain)	30901022
2373	Both parents	30901022
30	Neither parent (or uncertain)	30901023
957	Both parents	30901023
48	Neither parent (or uncertain)	30901024
1113	Both parents	30901024
66	Neither parent (or uncertain)	30901025
2013	Both parents	30901025
111	Neither parent (or uncertain)	30901026
2574	Both parents	30901026
150	Neither parent (or uncertain)	30901027
3069	Both parents	30901027
78	Neither parent (or uncertain)	30901028
2334	Both parents	30901028
9	Neither parent (or uncertain)	30901029
534	Both parents	30901029
96	Neither parent (or uncertain)	30901030
2949	Both parents	30901030
84	Neither parent (or uncertain)	30901031
2682	Both parents	30901031
96	Neither parent (or uncertain)	30902001
1383	Both parents	30902001
60	Neither parent (or uncertain)	30902002
1695	Both parents	30902002
78	Neither parent (or uncertain)	30902003
2451	Both parents	30902003
102	Neither parent (or uncertain)	30902004
1737	Both parents	30902004
75	Neither parent (or uncertain)	30902005
2082	Both parents	30902005
33	Neither parent (or uncertain)	30902006
1254	Both parents	30902006
96	Neither parent (or uncertain)	30902007
1746	Both parents	30902007
153	Neither parent (or uncertain)	30903001
2007	Both parents	30903001
69	Neither parent (or uncertain)	30903002
1161	Both parents	30903002
33	Neither parent (or uncertain)	30903003
720	Both parents	30903003
81	Neither parent (or uncertain)	30903004
1527	Both parents	30903004
39	Neither parent (or uncertain)	30903005
687	Both parents	30903005
168	Neither parent (or uncertain)	30904001
2286	Both parents	30904001
72	Neither parent (or uncertain)	30904002
1260	Both parents	30904002
72	Neither parent (or uncertain)	30904003
1152	Both parents	30904003
78	Neither parent (or uncertain)	30904004
1479	Both parents	30904004
123	Neither parent (or uncertain)	30904005
2562	Both parents	30904005
15	Neither parent (or uncertain)	30904006
600	Both parents	30904006
141	Neither parent (or uncertain)	30904007
2592	Both parents	30904007
123	Neither parent (or uncertain)	30904008
2520	Both parents	30904008
102	Neither parent (or uncertain)	30904009
2094	Both parents	30904009
54	Neither parent (or uncertain)	34501001
1752	Both parents	34501001
99	Neither parent (or uncertain)	34501002
1677	Both parents	34501002
87	Neither parent (or uncertain)	34501003
1860	Both parents	34501003
435	Neither parent (or uncertain)	34501004
1530	Both parents	34501004
69	Neither parent (or uncertain)	34501005
1710	Both parents	34501005
78	Neither parent (or uncertain)	34501006
1953	Both parents	34501006
69	Neither parent (or uncertain)	34501007
1254	Both parents	34501007
81	Neither parent (or uncertain)	34501008
1572	Both parents	34501008
123	Neither parent (or uncertain)	34501009
2310	Both parents	34501009
150	Neither parent (or uncertain)	34501010
2250	Both parents	34501010
87	Neither parent (or uncertain)	34501011
1794	Both parents	34501011
141	Neither parent (or uncertain)	34501012
1611	Both parents	34501012
150	Neither parent (or uncertain)	34501013
2598	Both parents	34501013
93	Neither parent (or uncertain)	34501014
1503	Both parents	34501014
93	Neither parent (or uncertain)	34501015
1755	Both parents	34501015
27	Neither parent (or uncertain)	34502001
1173	Both parents	34502001
120	Neither parent (or uncertain)	34502002
2553	Both parents	34502002
108	Neither parent (or uncertain)	34502003
2523	Both parents	34502003
63	Neither parent (or uncertain)	34502004
1584	Both parents	34502004
54	Neither parent (or uncertain)	34502005
831	Both parents	34502005
111	Neither parent (or uncertain)	34502006
2217	Both parents	34502006
90	Neither parent (or uncertain)	34502007
1767	Both parents	34502007
102	Neither parent (or uncertain)	34502008
1527	Both parents	34502008
51	Neither parent (or uncertain)	34502009
1047	Both parents	34502009
153	Neither parent (or uncertain)	34502010
3105	Both parents	34502010
93	Neither parent (or uncertain)	34502011
1923	Both parents	34502011
141	Neither parent (or uncertain)	34502012
2943	Both parents	34502012
63	Neither parent (or uncertain)	34502013
1794	Both parents	34502013
33	Neither parent (or uncertain)	34503001
2337	Both parents	34503001
90	Neither parent (or uncertain)	34503002
2178	Both parents	34503002
60	Neither parent (or uncertain)	34503003
1548	Both parents	34503003
120	Neither parent (or uncertain)	34503004
2097	Both parents	34503004
42	Neither parent (or uncertain)	34503005
885	Both parents	34503005
93	Neither parent (or uncertain)	10101001
2283	Both parents	10101001
72	Neither parent (or uncertain)	10101002
1827	Both parents	10101002
36	Neither parent (or uncertain)	10101003
1830	Both parents	10101003
105	Neither parent (or uncertain)	10101004
2412	Both parents	10101004
54	Neither parent (or uncertain)	10101005
1605	Both parents	10101005
30	Neither parent (or uncertain)	10101006
1839	Both parents	10101006
30	Neither parent (or uncertain)	10101007
2013	Both parents	10101007
39	Neither parent (or uncertain)	10101008
2292	Both parents	10101008
39	Neither parent (or uncertain)	10102001
2625	Both parents	10102001
63	Neither parent (or uncertain)	10102002
1347	Both parents	10102002
42	Neither parent (or uncertain)	10102003
1704	Both parents	10102003
99	Neither parent (or uncertain)	10102004
2358	Both parents	10102004
15	Neither parent (or uncertain)	10102005
1734	Both parents	10102005
42	Neither parent (or uncertain)	10102006
1725	Both parents	10102006
72	Neither parent (or uncertain)	10103001
2475	Both parents	10103001
15	Neither parent (or uncertain)	10103002
1335	Both parents	10103002
21	Neither parent (or uncertain)	10103003
1998	Both parents	10103003
69	Neither parent (or uncertain)	10103004
2424	Both parents	10103004
168	Neither parent (or uncertain)	10103005
2754	Both parents	10103005
105	Neither parent (or uncertain)	10103006
582	Both parents	10103006
54	Neither parent (or uncertain)	10103007
2325	Both parents	10103007
24	Neither parent (or uncertain)	10104001
2025	Both parents	10104001
51	Neither parent (or uncertain)	10104002
3033	Both parents	10104002
21	Neither parent (or uncertain)	10104003
1023	Both parents	10104003
18	Neither parent (or uncertain)	10104004
2496	Both parents	10104004
54	Neither parent (or uncertain)	10104005
1116	Both parents	10104005
60	Neither parent (or uncertain)	10104006
1527	Both parents	10104006
36	Neither parent (or uncertain)	10104007
1689	Both parents	10104007
18	Neither parent (or uncertain)	10104008
1185	Both parents	10104008
27	Neither parent (or uncertain)	10104009
1719	Both parents	10104009
36	Neither parent (or uncertain)	10104010
1809	Both parents	10104010
33	Neither parent (or uncertain)	10104011
1116	Both parents	10104011
12	Neither parent (or uncertain)	10104012
2220	Both parents	10104012
24	Neither parent (or uncertain)	10104013
1761	Both parents	10104013
27	Neither parent (or uncertain)	10105001
1722	Both parents	10105001
39	Neither parent (or uncertain)	10105002
2232	Both parents	10105002
57	Neither parent (or uncertain)	10105003
2115	Both parents	10105003
21	Neither parent (or uncertain)	10105004
2793	Both parents	10105004
18	Neither parent (or uncertain)	10105005
1647	Both parents	10105005
18	Neither parent (or uncertain)	10105006
2421	Both parents	10105006
36	Neither parent (or uncertain)	10105007
3045	Both parents	10105007
48	Neither parent (or uncertain)	10105008
1353	Both parents	10105008
30	Neither parent (or uncertain)	10105009
2166	Both parents	10105009
69	Neither parent (or uncertain)	10105010
1590	Both parents	10105010
12	Neither parent (or uncertain)	10105011
2622	Both parents	10105011
45	Neither parent (or uncertain)	10105012
2556	Both parents	10105012
60	Neither parent (or uncertain)	10202001
1650	Both parents	10202001
24	Neither parent (or uncertain)	10202002
1611	Both parents	10202002
99	Neither parent (or uncertain)	10202003
2058	Both parents	10202003
27	Neither parent (or uncertain)	10202004
1746	Both parents	10202004
66	Neither parent (or uncertain)	10202005
2157	Both parents	10202005
51	Neither parent (or uncertain)	10202006
2877	Both parents	10202006
60	Neither parent (or uncertain)	10202007
3690	Both parents	10202007
15	Neither parent (or uncertain)	10202008
1746	Both parents	10202008
69	Neither parent (or uncertain)	10202009
1737	Both parents	10202009
36	Neither parent (or uncertain)	10202010
2424	Both parents	10202010
39	Neither parent (or uncertain)	10202011
2922	Both parents	10202011
39	Neither parent (or uncertain)	10202012
1785	Both parents	10202012
66	Neither parent (or uncertain)	10203001
2463	Both parents	10203001
6	Neither parent (or uncertain)	10203002
858	Both parents	10203002
180	Neither parent (or uncertain)	10203003
2679	Both parents	10203003
192	Neither parent (or uncertain)	10203004
849	Both parents	10203004
54	Neither parent (or uncertain)	10203005
2574	Both parents	10203005
24	Neither parent (or uncertain)	10203006
1455	Both parents	10203006
18	Neither parent (or uncertain)	10203007
2427	Both parents	10203007
3	Neither parent (or uncertain)	10203008
507	Both parents	10203008
78	Neither parent (or uncertain)	10203009
1548	Both parents	10203009
48	Neither parent (or uncertain)	10203010
2016	Both parents	10203010
18	Neither parent (or uncertain)	10203011
3015	Both parents	10203011
51	Neither parent (or uncertain)	10203012
1470	Both parents	10203012
33	Neither parent (or uncertain)	10203013
2007	Both parents	10203013
72	Neither parent (or uncertain)	10203014
3951	Both parents	10203014
27	Neither parent (or uncertain)	10203015
1284	Both parents	10203015
42	Neither parent (or uncertain)	10203016
1926	Both parents	10203016
135	Neither parent (or uncertain)	10203017
1968	Both parents	10203017
27	Neither parent (or uncertain)	10203018
1518	Both parents	10203018
39	Neither parent (or uncertain)	10203019
960	Both parents	10203019
15	Neither parent (or uncertain)	10203020
747	Both parents	10203020
42	Neither parent (or uncertain)	10203021
2850	Both parents	10203021
24	Neither parent (or uncertain)	10203022
1755	Both parents	10203022
45	Neither parent (or uncertain)	10203023
1623	Both parents	10203023
15	Neither parent (or uncertain)	10203024
1746	Both parents	10203024
30	Neither parent (or uncertain)	10203025
2040	Both parents	10203025
15	Neither parent (or uncertain)	10203026
2412	Both parents	10203026
36	Neither parent (or uncertain)	10203027
1494	Both parents	10203027
12	Neither parent (or uncertain)	10203028
1257	Both parents	10203028
126	Neither parent (or uncertain)	10203029
1698	Both parents	10203029
12	Neither parent (or uncertain)	10203030
2814	Both parents	10203030
42	Neither parent (or uncertain)	10203031
2022	Both parents	10203031
105	Neither parent (or uncertain)	10204001
2901	Both parents	10204001
27	Neither parent (or uncertain)	10204002
1791	Both parents	10204002
15	Neither parent (or uncertain)	10204003
2055	Both parents	10204003
15	Neither parent (or uncertain)	10204004
1740	Both parents	10204004
15	Neither parent (or uncertain)	10204005
1215	Both parents	10204005
30	Neither parent (or uncertain)	10204006
1188	Both parents	10204006
39	Neither parent (or uncertain)	10204007
393	Both parents	10204007
12	Neither parent (or uncertain)	10204008
54	Both parents	10204008
3	Neither parent (or uncertain)	10204009
24	Both parents	10204009
12	Neither parent (or uncertain)	10204010
468	Both parents	10204010
36	Neither parent (or uncertain)	10204011
945	Both parents	10204011
39	Neither parent (or uncertain)	10204012
1851	Both parents	10204012
15	Neither parent (or uncertain)	10204013
492	Both parents	10204013
39	Neither parent (or uncertain)	10204014
1107	Both parents	10204014
108	Neither parent (or uncertain)	10204015
2355	Both parents	10204015
87	Neither parent (or uncertain)	10204016
1848	Both parents	10204016
15	Neither parent (or uncertain)	10204017
1464	Both parents	10204017
33	Neither parent (or uncertain)	10204018
2280	Both parents	10204018
243	Neither parent (or uncertain)	10204019
2187	Both parents	10204019
39	Neither parent (or uncertain)	10204020
2253	Both parents	10204020
21	Neither parent (or uncertain)	10204021
1968	Both parents	10204021
84	Neither parent (or uncertain)	10204022
747	Both parents	10204022
60	Neither parent (or uncertain)	10205001
2325	Both parents	10205001
75	Neither parent (or uncertain)	10205002
2190	Both parents	10205002
93	Neither parent (or uncertain)	10205003
2715	Both parents	10205003
60	Neither parent (or uncertain)	10205004
2772	Both parents	10205004
45	Neither parent (or uncertain)	10205005
3102	Both parents	10205005
99	Neither parent (or uncertain)	10205006
834	Both parents	10205006
108	Neither parent (or uncertain)	10205007
900	Both parents	10205007
54	Neither parent (or uncertain)	10205008
2202	Both parents	10205008
39	Neither parent (or uncertain)	10205009
1698	Both parents	10205009
30	Neither parent (or uncertain)	10205010
2163	Both parents	10205010
24	Neither parent (or uncertain)	10205011
1554	Both parents	10205011
210	Neither parent (or uncertain)	10205012
1512	Both parents	10205012
90	Neither parent (or uncertain)	10205013
1608	Both parents	10205013
9	Neither parent (or uncertain)	10205014
1464	Both parents	10205014
87	Neither parent (or uncertain)	10205015
1341	Both parents	10205015
48	Neither parent (or uncertain)	10205016
2103	Both parents	10205016
27	Neither parent (or uncertain)	10205017
756	Both parents	10205017
51	Neither parent (or uncertain)	10205018
2160	Both parents	10205018
30	Neither parent (or uncertain)	10205019
1899	Both parents	10205019
54	Neither parent (or uncertain)	10205020
1989	Both parents	10205020
30	Neither parent (or uncertain)	10205021
3891	Both parents	10205021
27	Neither parent (or uncertain)	10206001
1290	Both parents	10206001
168	Neither parent (or uncertain)	10206002
1962	Both parents	10206002
90	Neither parent (or uncertain)	10206003
2139	Both parents	10206003
48	Neither parent (or uncertain)	10206004
2181	Both parents	10206004
15	Neither parent (or uncertain)	10206005
1551	Both parents	10206005
36	Neither parent (or uncertain)	10206006
2679	Both parents	10206006
108	Neither parent (or uncertain)	10206007
1920	Both parents	10206007
39	Neither parent (or uncertain)	10206008
2499	Both parents	10206008
60	Neither parent (or uncertain)	10206009
2001	Both parents	10206009
42	Neither parent (or uncertain)	10206010
1524	Both parents	10206010
27	Neither parent (or uncertain)	10206011
1554	Both parents	10206011
30	Neither parent (or uncertain)	10206012
3507	Both parents	10206012
33	Neither parent (or uncertain)	10304001
1683	Both parents	10304001
48	Neither parent (or uncertain)	10304002
1914	Both parents	10304002
24	Neither parent (or uncertain)	10304003
1965	Both parents	10304003
54	Neither parent (or uncertain)	10304004
690	Both parents	10304004
42	Neither parent (or uncertain)	10304005
2295	Both parents	10304005
66	Neither parent (or uncertain)	10301001
2193	Both parents	10301001
78	Neither parent (or uncertain)	10301002
1869	Both parents	10301002
24	Neither parent (or uncertain)	10301003
2526	Both parents	10301003
15	Neither parent (or uncertain)	10301004
1428	Both parents	10301004
87	Neither parent (or uncertain)	10301005
2340	Both parents	10301005
36	Neither parent (or uncertain)	10301006
1608	Both parents	10301006
96	Neither parent (or uncertain)	10301007
1842	Both parents	10301007
42	Neither parent (or uncertain)	10301008
1128	Both parents	10301008
81	Neither parent (or uncertain)	10301009
1752	Both parents	10301009
90	Neither parent (or uncertain)	10301010
1293	Both parents	10301010
42	Neither parent (or uncertain)	10301011
1122	Both parents	10301011
93	Neither parent (or uncertain)	10301012
2100	Both parents	10301012
66	Neither parent (or uncertain)	10301013
3447	Both parents	10301013
27	Neither parent (or uncertain)	10302001
1281	Both parents	10302001
33	Neither parent (or uncertain)	10302002
1239	Both parents	10302002
24	Neither parent (or uncertain)	10302003
300	Both parents	10302003
39	Neither parent (or uncertain)	10302004
1719	Both parents	10302004
24	Neither parent (or uncertain)	10302005
1440	Both parents	10302005
57	Neither parent (or uncertain)	10302006
1617	Both parents	10302006
12	Neither parent (or uncertain)	10302007
504	Both parents	10302007
15	Neither parent (or uncertain)	10302008
2319	Both parents	10302008
9	Neither parent (or uncertain)	10302009
213	Both parents	10302009
42	Neither parent (or uncertain)	10302010
1137	Both parents	10302010
54	Neither parent (or uncertain)	10302011
1902	Both parents	10302011
9	Neither parent (or uncertain)	10302012
1347	Both parents	10302012
27	Neither parent (or uncertain)	10302013
489	Both parents	10302013
78	Neither parent (or uncertain)	10303001
1281	Both parents	10303001
15	Neither parent (or uncertain)	10303002
1863	Both parents	10303002
15	Neither parent (or uncertain)	10303003
1491	Both parents	10303003
9	Neither parent (or uncertain)	10303004
1125	Both parents	10303004
18	Neither parent (or uncertain)	10303005
1281	Both parents	10303005
18	Neither parent (or uncertain)	10401001
1680	Both parents	10401001
39	Neither parent (or uncertain)	10401002
2040	Both parents	10401002
15	Neither parent (or uncertain)	10401003
1374	Both parents	10401003
60	Neither parent (or uncertain)	10401004
1308	Both parents	10401004
6	Neither parent (or uncertain)	10402001
1254	Both parents	10402001
45	Neither parent (or uncertain)	10402002
1593	Both parents	10402002
3	Neither parent (or uncertain)	10402003
840	Both parents	10402003
15	Neither parent (or uncertain)	10402004
2202	Both parents	10402004
9	Neither parent (or uncertain)	10402005
1245	Both parents	10402005
42	Neither parent (or uncertain)	10402006
1617	Both parents	10402006
42	Neither parent (or uncertain)	10402007
1413	Both parents	10402007
48	Neither parent (or uncertain)	10402008
1566	Both parents	10402008
114	Neither parent (or uncertain)	10403001
1455	Both parents	10403001
63	Neither parent (or uncertain)	10403002
1380	Both parents	10403002
84	Neither parent (or uncertain)	10403003
2523	Both parents	10403003
18	Neither parent (or uncertain)	10403004
858	Both parents	10403004
15	Neither parent (or uncertain)	10403005
900	Both parents	10403005
45	Neither parent (or uncertain)	10403006
942	Both parents	10403006
123	Neither parent (or uncertain)	10403007
777	Both parents	10403007
27	Neither parent (or uncertain)	10403008
636	Both parents	10403008
132	Neither parent (or uncertain)	10403009
1419	Both parents	10403009
144	Neither parent (or uncertain)	10403010
459	Both parents	10403010
30	Neither parent (or uncertain)	10403011
1500	Both parents	10403011
42	Neither parent (or uncertain)	10403012
1068	Both parents	10403012
78	Neither parent (or uncertain)	10403013
1311	Both parents	10403013
54	Neither parent (or uncertain)	10403014
2352	Both parents	10403014
27	Neither parent (or uncertain)	10404001
2187	Both parents	10404001
15	Neither parent (or uncertain)	10404002
561	Both parents	10404002
3	Neither parent (or uncertain)	10404003
936	Both parents	10404003
39	Neither parent (or uncertain)	10404004
1458	Both parents	10404004
69	Neither parent (or uncertain)	10404005
1167	Both parents	10404005
63	Neither parent (or uncertain)	10404006
2661	Both parents	10404006
54	Neither parent (or uncertain)	10404007
2670	Both parents	10404007
27	Neither parent (or uncertain)	10404008
1980	Both parents	10404008
24	Neither parent (or uncertain)	10404009
1563	Both parents	10404009
36	Neither parent (or uncertain)	10404010
798	Both parents	10404010
111	Neither parent (or uncertain)	10404011
1908	Both parents	10404011
33	Neither parent (or uncertain)	10404012
1119	Both parents	10404012
54	Neither parent (or uncertain)	10404013
1848	Both parents	10404013
27	Neither parent (or uncertain)	10404014
2409	Both parents	10404014
36	Neither parent (or uncertain)	10404015
1740	Both parents	10404015
54	Neither parent (or uncertain)	10404016
3234	Both parents	10404016
138	Neither parent (or uncertain)	10404017
2328	Both parents	10404017
12	Neither parent (or uncertain)	10404018
735	Both parents	10404018
39	Neither parent (or uncertain)	10404019
1347	Both parents	10404019
48	Neither parent (or uncertain)	10404020
2142	Both parents	10404020
51	Neither parent (or uncertain)	10404021
2577	Both parents	10404021
30	Neither parent (or uncertain)	10404022
1857	Both parents	10404022
72	Neither parent (or uncertain)	10404023
1998	Both parents	10404023
27	Neither parent (or uncertain)	10404024
2037	Both parents	10404024
51	Neither parent (or uncertain)	10404025
2358	Both parents	10404025
18	Neither parent (or uncertain)	10405001
1650	Both parents	10405001
12	Neither parent (or uncertain)	10405002
1491	Both parents	10405002
66	Neither parent (or uncertain)	10405003
1638	Both parents	10405003
27	Neither parent (or uncertain)	10405004
1212	Both parents	10405004
15	Neither parent (or uncertain)	10405005
1815	Both parents	10405005
18	Neither parent (or uncertain)	10405006
3105	Both parents	10405006
60	Neither parent (or uncertain)	10405007
1287	Both parents	10405007
114	Neither parent (or uncertain)	10405008
2730	Both parents	10405008
36	Neither parent (or uncertain)	10405009
1671	Both parents	10405009
12	Neither parent (or uncertain)	10405010
1959	Both parents	10405010
63	Neither parent (or uncertain)	10405011
3075	Both parents	10405011
30	Neither parent (or uncertain)	10405012
1947	Both parents	10405012
57	Neither parent (or uncertain)	10405013
1035	Both parents	10405013
33	Neither parent (or uncertain)	10407001
1734	Both parents	10407001
63	Neither parent (or uncertain)	10407002
1023	Both parents	10407002
18	Neither parent (or uncertain)	10407003
1041	Both parents	10407003
42	Neither parent (or uncertain)	10407004
1749	Both parents	10407004
30	Neither parent (or uncertain)	10407005
1380	Both parents	10407005
42	Neither parent (or uncertain)	10407006
1074	Both parents	10407006
165	Neither parent (or uncertain)	10407007
2865	Both parents	10407007
24	Neither parent (or uncertain)	10408001
1227	Both parents	10408001
18	Neither parent (or uncertain)	10408002
1068	Both parents	10408002
24	Neither parent (or uncertain)	10408003
1086	Both parents	10408003
24	Neither parent (or uncertain)	10408004
1200	Both parents	10408004
12	Neither parent (or uncertain)	10408005
1416	Both parents	10408005
30	Neither parent (or uncertain)	10408006
2106	Both parents	10408006
126	Neither parent (or uncertain)	10408007
3417	Both parents	10408007
51	Neither parent (or uncertain)	10408008
1524	Both parents	10408008
21	Neither parent (or uncertain)	10408009
1497	Both parents	10408009
69	Neither parent (or uncertain)	10408010
678	Both parents	10408010
18	Neither parent (or uncertain)	10501001
768	Both parents	10501001
45	Neither parent (or uncertain)	10501002
117	Both parents	10501002
3	Neither parent (or uncertain)	10501003
60	Both parents	10501003
15	Neither parent (or uncertain)	10501004
1020	Both parents	10501004
21	Neither parent (or uncertain)	10502001
948	Both parents	10502001
21	Neither parent (or uncertain)	10502002
519	Both parents	10502002
6	Neither parent (or uncertain)	10502003
780	Both parents	10502003
6	Neither parent (or uncertain)	10502004
1284	Both parents	10502004
162	Neither parent (or uncertain)	10503001
2313	Both parents	10503001
42	Neither parent (or uncertain)	10503002
1368	Both parents	10503002
84	Neither parent (or uncertain)	10503003
1932	Both parents	10503003
153	Neither parent (or uncertain)	10503004
1137	Both parents	10503004
108	Neither parent (or uncertain)	10503005
1755	Both parents	10503005
48	Neither parent (or uncertain)	10503006
1470	Both parents	10503006
192	Neither parent (or uncertain)	10503007
3273	Both parents	10503007
72	Neither parent (or uncertain)	19100001
3765	Both parents	19100001
102	Neither parent (or uncertain)	19100002
3597	Both parents	19100002
72	Neither parent (or uncertain)	19100003
4539	Both parents	19100003
162	Neither parent (or uncertain)	19100004
8154	Both parents	19100004
240	Neither parent (or uncertain)	19100005
3315	Both parents	19100005
147	Neither parent (or uncertain)	19100006
5682	Both parents	19100006
192	Neither parent (or uncertain)	19100007
6747	Both parents	19100007
186	Neither parent (or uncertain)	19100008
7074	Both parents	19100008
87	Neither parent (or uncertain)	19100009
5667	Both parents	19100009
366	Neither parent (or uncertain)	19100010
5280	Both parents	19100010
276	Neither parent (or uncertain)	19100011
8958	Both parents	19100011
114	Neither parent (or uncertain)	19100012
8940	Both parents	19100012
153	Neither parent (or uncertain)	19100013
12498	Both parents	19100013
147	Neither parent (or uncertain)	19100014
10083	Both parents	19100014
150	Neither parent (or uncertain)	19100015
3597	Both parents	19100015
336	Neither parent (or uncertain)	19100016
10971	Both parents	19100016
168	Neither parent (or uncertain)	19100017
10110	Both parents	19100017
156	Neither parent (or uncertain)	19100018
5442	Both parents	19100018
192	Neither parent (or uncertain)	19100019
15546	Both parents	19100019
219	Neither parent (or uncertain)	19100020
11121	Both parents	19100020
114	Neither parent (or uncertain)	19100021
3210	Both parents	19100021
138	Neither parent (or uncertain)	19100022
6858	Both parents	19100022
93	Neither parent (or uncertain)	19100023
5778	Both parents	19100023
90	Neither parent (or uncertain)	19100024
6684	Both parents	19100024
222	Neither parent (or uncertain)	19100025
9627	Both parents	19100025
234	Neither parent (or uncertain)	19100026
6228	Both parents	19100026
90	Neither parent (or uncertain)	19100027
4761	Both parents	19100027
168	Neither parent (or uncertain)	19100028
7494	Both parents	19100028
120	Neither parent (or uncertain)	19100029
11340	Both parents	19100029
117	Neither parent (or uncertain)	19100030
8358	Both parents	19100030
243	Neither parent (or uncertain)	19100031
9240	Both parents	19100031
159	Neither parent (or uncertain)	19100032
9369	Both parents	19100032
264	Neither parent (or uncertain)	19100033
10578	Both parents	19100033
270	Neither parent (or uncertain)	19100034
7956	Both parents	19100034
318	Neither parent (or uncertain)	19100035
10011	Both parents	19100035
273	Neither parent (or uncertain)	19100036
8358	Both parents	19100036
216	Neither parent (or uncertain)	19100037
4767	Both parents	19100037
177	Neither parent (or uncertain)	19100038
4347	Both parents	19100038
168	Neither parent (or uncertain)	19100039
5559	Both parents	19100039
198	Neither parent (or uncertain)	19100040
6552	Both parents	19100040
252	Neither parent (or uncertain)	19100041
4173	Both parents	19100041
162	Neither parent (or uncertain)	19100042
6246	Both parents	19100042
111	Neither parent (or uncertain)	19100043
9600	Both parents	19100043
159	Neither parent (or uncertain)	19100044
7869	Both parents	19100044
171	Neither parent (or uncertain)	19100045
8850	Both parents	19100045
126	Neither parent (or uncertain)	19100046
8262	Both parents	19100046
210	Neither parent (or uncertain)	19100047
9357	Both parents	19100047
381	Neither parent (or uncertain)	19100048
5109	Both parents	19100048
255	Neither parent (or uncertain)	19100049
7881	Both parents	19100049
90	Neither parent (or uncertain)	19100050
8199	Both parents	19100050
246	Neither parent (or uncertain)	19100051
4869	Both parents	19100051
183	Neither parent (or uncertain)	19100052
5292	Both parents	19100052
207	Neither parent (or uncertain)	19100053
5034	Both parents	19100053
147	Neither parent (or uncertain)	19100054
2427	Both parents	19100054
210	Neither parent (or uncertain)	19100055
6294	Both parents	19100055
93	Neither parent (or uncertain)	19100056
7377	Both parents	19100056
351	Neither parent (or uncertain)	19100057
3858	Both parents	19100057
426	Neither parent (or uncertain)	19100058
4059	Both parents	19100058
84	Neither parent (or uncertain)	19100059
2433	Both parents	19100059
96	Neither parent (or uncertain)	19100060
6456	Both parents	19100060
624	Neither parent (or uncertain)	19100061
5046	Both parents	19100061
150	Neither parent (or uncertain)	19100062
3861	Both parents	19100062
99	Neither parent (or uncertain)	19100063
5298	Both parents	19100063
78	Neither parent (or uncertain)	19100064
3579	Both parents	19100064
51	Neither parent (or uncertain)	19100065
6705	Both parents	19100065
69	Neither parent (or uncertain)	19100066
7143	Both parents	19100066
249	Neither parent (or uncertain)	19100067
12468	Both parents	19100067
129	Neither parent (or uncertain)	19100068
7470	Both parents	19100068
387	Neither parent (or uncertain)	19100069
7317	Both parents	19100069
39	Neither parent (or uncertain)	19100070
4062	Both parents	19100070
102	Neither parent (or uncertain)	19100071
4737	Both parents	19100071
45	Neither parent (or uncertain)	19100072
4971	Both parents	19100072
84	Neither parent (or uncertain)	19100073
3666	Both parents	19100073
165	Neither parent (or uncertain)	19100074
7581	Both parents	19100074
189	Neither parent (or uncertain)	19100075
9786	Both parents	19100075
141	Neither parent (or uncertain)	19100076
9969	Both parents	19100076
264	Neither parent (or uncertain)	19100077
2505	Both parents	19100077
162	Neither parent (or uncertain)	19100078
9921	Both parents	19100078
159	Neither parent (or uncertain)	19100079
9309	Both parents	19100079
327	Neither parent (or uncertain)	19100080
11496	Both parents	19100080
75	Neither parent (or uncertain)	19100081
7503	Both parents	19100081
75	Neither parent (or uncertain)	19100082
11523	Both parents	19100082
102	Neither parent (or uncertain)	19100083
4662	Both parents	19100083
180	Neither parent (or uncertain)	19100084
3960	Both parents	19100084
135	Neither parent (or uncertain)	19100085
7572	Both parents	19100085
225	Neither parent (or uncertain)	19100086
9642	Both parents	19100086
204	Neither parent (or uncertain)	19100087
6993	Both parents	19100087
249	Neither parent (or uncertain)	19100088
10503	Both parents	19100088
213	Neither parent (or uncertain)	19100089
6489	Both parents	19100089
171	Neither parent (or uncertain)	19100090
6564	Both parents	19100090
222	Neither parent (or uncertain)	19100091
7161	Both parents	19100091
396	Neither parent (or uncertain)	19100092
7956	Both parents	19100092
192	Neither parent (or uncertain)	19100093
7590	Both parents	19100093
237	Neither parent (or uncertain)	19100094
5385	Both parents	19100094
357	Neither parent (or uncertain)	19100095
14619	Both parents	19100095
162	Neither parent (or uncertain)	19100096
6609	Both parents	19100096
288	Neither parent (or uncertain)	19100097
6567	Both parents	19100097
246	Neither parent (or uncertain)	19100098
6951	Both parents	19100098
270	Neither parent (or uncertain)	19100099
13908	Both parents	19100099
213	Neither parent (or uncertain)	19100100
10014	Both parents	19100100
264	Neither parent (or uncertain)	19100101
9060	Both parents	19100101
117	Neither parent (or uncertain)	19100102
4491	Both parents	19100102
135	Neither parent (or uncertain)	19100103
8085	Both parents	19100103
297	Neither parent (or uncertain)	19100104
8541	Both parents	19100104
174	Neither parent (or uncertain)	19100105
9108	Both parents	19100105
231	Neither parent (or uncertain)	19100106
18081	Both parents	19100106
117	Neither parent (or uncertain)	19100107
8451	Both parents	19100107
234	Neither parent (or uncertain)	19100108
14523	Both parents	19100108
198	Neither parent (or uncertain)	19100109
10623	Both parents	19100109
258	Neither parent (or uncertain)	19100110
5967	Both parents	19100110
285	Neither parent (or uncertain)	19100111
8400	Both parents	19100111
228	One parent	21001001
147	One parent	21001002
216	One parent	21001003
234	One parent	21001004
264	One parent	21001005
288	One parent	21001006
108	One parent	21001007
174	One parent	21002001
195	One parent	21002002
267	One parent	21002003
210	One parent	21002004
186	One parent	21002005
207	One parent	21002006
48	One parent	21003001
195	One parent	21003002
63	One parent	21003003
69	One parent	21003004
75	One parent	21004001
312	One parent	21004002
162	One parent	21004003
99	One parent	21004004
387	One parent	21004005
216	One parent	21004006
105	One parent	21004007
54	One parent	21004008
195	One parent	21004009
225	One parent	21004010
279	One parent	21004011
0	One parent	21004012
177	One parent	21004013
219	One parent	21004014
231	One parent	21005001
174	One parent	21005002
201	One parent	21005003
186	One parent	21005004
252	One parent	21005005
282	One parent	21005006
186	One parent	21005007
135	One parent	21005008
276	One parent	21005009
33	One parent	21005010
231	One parent	21006001
174	One parent	21006002
258	One parent	21006003
195	One parent	21006004
237	One parent	21006005
225	One parent	21006006
162	One parent	21006007
294	One parent	21006008
90	One parent	21007001
150	One parent	21007002
219	One parent	21007003
63	One parent	21007004
45	One parent	21008001
120	One parent	21008002
6	One parent	21008003
408	One parent	21008004
126	One parent	21008005
213	One parent	21008006
186	One parent	21008007
90	One parent	21008008
321	One parent	21008009
246	One parent	21008010
24	One parent	21008011
111	One parent	21008012
153	One parent	21008013
165	One parent	21008014
333	One parent	21008015
261	One parent	21009001
180	One parent	21009002
213	One parent	21009003
192	One parent	21009004
195	One parent	21009005
159	One parent	21009006
219	One parent	21201001
666	One parent	21201002
612	One parent	21201003
597	One parent	21201004
819	One parent	21201005
807	One parent	21201006
774	One parent	21201007
762	One parent	21201008
729	One parent	21201009
639	One parent	21201010
711	One parent	21201011
789	One parent	21201012
513	One parent	21201013
828	One parent	21201014
1101	One parent	21201015
897	One parent	21201016
873	One parent	21201017
600	One parent	21201018
1005	One parent	21201019
660	One parent	21201020
528	One parent	21201021
618	One parent	21201022
774	One parent	21201023
702	One parent	21201024
507	One parent	21201025
771	One parent	21201026
414	One parent	21201027
672	One parent	21201028
501	One parent	21201029
777	One parent	21201030
693	One parent	21201031
210	One parent	21202001
450	One parent	21202002
579	One parent	21202003
477	One parent	21202004
507	One parent	21202005
225	One parent	21202006
684	One parent	21202007
498	One parent	21202008
489	One parent	21202009
543	One parent	21202010
684	One parent	21202011
558	One parent	21202012
483	One parent	21202013
558	One parent	21202014
531	One parent	21202015
561	One parent	21202016
657	One parent	21202017
600	One parent	21202018
552	One parent	21202019
618	One parent	21202020
588	One parent	21202021
882	One parent	21202022
528	One parent	21202023
867	One parent	21202024
933	One parent	21202025
852	One parent	21202026
894	One parent	21202027
657	One parent	21202028
657	One parent	21202029
540	One parent	21202030
855	One parent	21202031
243	One parent	21203001
237	One parent	21203002
213	One parent	21203003
288	One parent	21203004
165	One parent	21203005
192	One parent	21203006
234	One parent	21203007
342	One parent	21204001
336	One parent	21204002
342	One parent	21204003
267	One parent	21204004
369	One parent	21204005
330	One parent	21204006
309	One parent	21204007
336	One parent	21204008
252	One parent	21204009
243	One parent	21204010
300	One parent	21204011
714	One parent	21204012
318	One parent	21204013
354	One parent	21204014
279	One parent	21204015
420	One parent	21204016
147	One parent	21204017
354	One parent	21204018
327	One parent	21204019
375	One parent	21204020
345	One parent	21206001
420	One parent	21206002
309	One parent	21206003
324	One parent	21206004
276	One parent	21206005
240	One parent	21206006
342	One parent	21206007
246	One parent	21206008
237	One parent	21206009
186	One parent	21206010
210	One parent	21206011
216	One parent	21206012
303	One parent	21206013
318	One parent	21207001
324	One parent	21207002
240	One parent	21207003
318	One parent	21207004
339	One parent	21207005
222	One parent	21207006
321	One parent	21207007
318	One parent	21207008
432	One parent	21207009
273	One parent	21207010
120	One parent	21207011
288	One parent	21207012
282	One parent	21207013
342	One parent	21207014
219	One parent	21207015
336	One parent	21207016
222	One parent	21207017
291	One parent	21207018
330	One parent	21207019
216	One parent	21207020
294	One parent	21207021
213	One parent	21208001
153	One parent	21208002
165	One parent	21208003
504	One parent	21208004
336	One parent	21301001
258	One parent	21301002
246	One parent	21301003
267	One parent	21301004
150	One parent	21301005
336	One parent	21301006
321	One parent	21301007
258	One parent	21301008
246	One parent	21301009
747	One parent	21302001
372	One parent	21302002
597	One parent	21302003
339	One parent	21302004
321	One parent	21302005
318	One parent	21303001
171	One parent	21303002
306	One parent	21303003
306	One parent	21303004
543	One parent	21304001
426	One parent	21304002
507	One parent	21304003
252	One parent	21304004
423	One parent	21304005
267	One parent	21304006
594	One parent	21304007
348	One parent	21304008
501	One parent	21304009
261	One parent	21304010
543	One parent	21304011
447	One parent	21304012
384	One parent	21304013
357	One parent	21304014
267	One parent	21304015
348	One parent	21304016
450	One parent	21304017
654	One parent	21304018
435	One parent	21304019
306	One parent	21304020
324	One parent	21304021
345	One parent	21304022
219	One parent	21304023
270	One parent	21304024
450	One parent	21304025
276	One parent	21304026
432	One parent	21304027
603	One parent	21305001
516	One parent	21305002
678	One parent	21305003
717	One parent	21305004
789	One parent	21305005
615	One parent	21305006
639	One parent	21305007
546	One parent	21305008
600	One parent	21305009
549	One parent	21305010
576	One parent	21305011
774	One parent	21305012
684	One parent	21305013
408	One parent	21305014
639	One parent	21305015
906	One parent	21305016
780	One parent	21305017
882	One parent	21305018
612	One parent	21305019
636	One parent	21305020
732	One parent	21305021
585	One parent	21306001
594	One parent	21306002
678	One parent	21306003
492	One parent	21306004
780	One parent	21306005
762	One parent	21306006
882	One parent	21306007
699	One parent	21306008
705	One parent	21306009
558	One parent	21306010
537	One parent	21306011
594	One parent	21306012
660	One parent	21306013
648	One parent	21306014
435	One parent	21306015
525	One parent	21306016
525	One parent	21306017
756	One parent	21307001
816	One parent	21307002
597	One parent	21307003
747	One parent	21307004
660	One parent	21307005
870	One parent	21307006
945	One parent	21307007
1080	One parent	21307008
672	One parent	21307009
849	One parent	21307010
486	One parent	21307011
1056	One parent	21307012
771	One parent	21307013
951	One parent	21307014
1062	One parent	21307015
804	One parent	21307016
774	One parent	21307017
888	One parent	21307018
993	One parent	21307019
786	One parent	21307020
579	One parent	21308001
561	One parent	21308002
813	One parent	21308003
399	One parent	21308004
597	One parent	21308005
582	One parent	21308006
735	One parent	21308007
660	One parent	21308008
771	One parent	21308009
1035	One parent	21401001
777	One parent	21401002
540	One parent	21401003
693	One parent	21401004
912	One parent	21401005
603	One parent	21401006
726	One parent	21401007
744	One parent	21401008
879	One parent	21401009
918	One parent	21401010
750	One parent	21401011
816	One parent	21401012
1089	One parent	21401013
690	One parent	21401014
981	One parent	21401015
927	One parent	21401016
552	One parent	21401017
564	One parent	21402001
1386	One parent	21402002
477	One parent	21402003
462	One parent	21402004
759	One parent	21402005
780	One parent	21402006
648	One parent	21402007
681	One parent	21402008
642	One parent	21402009
546	One parent	21402010
603	One parent	21402011
408	One parent	21402012
597	One parent	21402013
432	One parent	21402014
456	One parent	21402015
246	One parent	21402016
567	One parent	21402017
462	One parent	21402018
642	One parent	21402019
351	One parent	21403001
480	One parent	21403002
375	One parent	21403003
243	One parent	21403004
210	One parent	21403005
603	One parent	21403006
291	One parent	21404001
303	One parent	21404002
219	One parent	21404003
309	One parent	21404004
435	One parent	21404005
753	One parent	21503001
1395	One parent	21503002
888	One parent	21503003
942	One parent	21503004
1404	One parent	21503005
801	One parent	21503006
1053	One parent	21503007
774	One parent	21503008
1023	One parent	21503009
909	One parent	21503010
1089	One parent	21503011
849	One parent	21503012
978	One parent	21503013
801	One parent	21503014
387	One parent	21503015
858	One parent	21503016
663	One parent	21503017
738	One parent	21503018
1101	One parent	21503019
1203	One parent	21503020
927	One parent	21503021
843	One parent	21503022
894	One parent	21503023
996	One parent	21503024
954	One parent	21503025
1110	One parent	21503026
603	One parent	21503027
1404	One parent	21503028
966	One parent	21503029
1203	One parent	21503030
1062	One parent	21503031
873	One parent	21504001
795	One parent	21504002
885	One parent	21504003
636	One parent	21504004
636	One parent	21504005
351	One parent	21504006
696	One parent	21504007
693	One parent	21504008
600	One parent	21504009
1050	One parent	21504010
1092	One parent	21504011
1275	One parent	21504012
927	One parent	21504013
780	One parent	21504014
612	One parent	21504015
555	One parent	21504016
882	One parent	21504017
804	One parent	21504018
1029	One parent	21504019
1035	One parent	21504020
915	One parent	21505001
981	One parent	21505002
882	One parent	21505003
714	One parent	21505004
1134	One parent	21505005
1011	One parent	21505006
549	One parent	21505007
768	One parent	21505008
786	One parent	21505009
999	One parent	21505010
975	One parent	21505011
621	One parent	21505012
795	One parent	21505013
963	One parent	21505014
1245	One parent	21505015
855	One parent	21505016
1173	One parent	21505017
915	One parent	21505018
1278	One parent	21505019
1329	One parent	21505020
765	One parent	21505021
1134	One parent	21505022
1248	One parent	21505023
825	One parent	21505024
1140	One parent	21505025
1080	One parent	21505026
726	One parent	21505027
951	One parent	21505028
1026	One parent	21505029
1170	One parent	21505030
987	One parent	21505031
918	One parent	21506001
624	One parent	21506002
750	One parent	21506003
507	One parent	21506004
699	One parent	21506005
900	One parent	21506006
495	One parent	21506007
882	One parent	21506008
450	One parent	21506009
582	One parent	21506010
774	One parent	21506011
1161	One parent	21506012
828	One parent	21506013
831	One parent	21506014
684	One parent	21506015
765	One parent	21506016
822	One parent	21506017
582	One parent	21506018
552	One parent	21506019
552	One parent	21506020
513	One parent	21506021
699	One parent	21506022
687	One parent	21506023
897	One parent	21506024
822	One parent	21506025
519	One parent	21506026
582	One parent	21507001
549	One parent	21507002
663	One parent	21507003
963	One parent	21507004
165	One parent	21507005
270	One parent	21507006
84	One parent	21507007
477	One parent	21507008
702	One parent	21507009
1116	One parent	21507010
1476	One parent	21507011
924	One parent	21507012
669	One parent	21507013
1113	One parent	21507014
1341	One parent	21507015
1263	One parent	21507016
1488	One parent	21507017
1443	One parent	21507018
1611	One parent	21507019
1590	One parent	21507020
1422	One parent	21507021
1395	One parent	21507022
1530	One parent	21507023
1554	One parent	21507024
2199	One parent	21507025
1392	One parent	21507026
1128	One parent	21507027
1116	One parent	21507028
1344	One parent	21507029
939	One parent	21507030
1260	One parent	21507031
1308	One parent	21507032
1032	One parent	21507033
1404	One parent	21507034
1113	One parent	21507035
423	One parent	24401001
1128	One parent	24401002
876	One parent	24401003
1050	One parent	24401004
933	One parent	24401005
678	One parent	24401006
879	One parent	24401007
999	One parent	24401008
762	One parent	24401009
945	One parent	24401010
1401	One parent	24401011
927	One parent	24401012
1086	One parent	24401013
735	One parent	24401014
780	One parent	24401015
798	One parent	24401016
933	One parent	24401017
819	One parent	24401018
132	One parent	24401019
957	One parent	24401020
540	One parent	24401021
678	One parent	24401022
576	One parent	24401023
576	One parent	24401024
801	One parent	24401025
609	One parent	24401026
714	One parent	24402001
678	One parent	24402002
948	One parent	24402003
726	One parent	24402004
582	One parent	24402005
705	One parent	24402006
609	One parent	24402007
732	One parent	24402008
609	One parent	24402009
696	One parent	24402010
825	One parent	24402011
651	One parent	24402012
660	One parent	24402013
759	One parent	24402014
558	One parent	24402015
726	One parent	24402016
567	One parent	24402017
318	One parent	24402018
756	One parent	24402019
678	One parent	24402020
519	One parent	24402021
558	One parent	24402022
654	One parent	24402023
693	One parent	24402024
609	One parent	24402025
759	One parent	24402026
489	One parent	24402027
438	One parent	24403001
777	One parent	24403002
810	One parent	24403003
666	One parent	24403004
849	One parent	24403005
1113	One parent	24403006
783	One parent	24403007
1128	One parent	24403008
1377	One parent	24403009
1374	One parent	24403010
1083	One parent	24403011
1158	One parent	24403012
783	One parent	24403013
1251	One parent	24403014
1104	One parent	24403015
1020	One parent	24403016
1164	One parent	24403017
960	One parent	24403018
1296	One parent	24403019
1056	One parent	24403020
576	One parent	24403021
903	One parent	24403022
1044	One parent	24403023
570	One parent	24403024
1272	One parent	24403025
729	One parent	24403026
921	One parent	24403027
828	One parent	24403028
987	One parent	24403029
1056	One parent	24403030
1062	One parent	24403031
606	One parent	24404001
636	One parent	24404002
648	One parent	24404003
528	One parent	24404004
567	One parent	24404005
684	One parent	24404006
930	One parent	24404007
882	One parent	24404008
537	One parent	24404009
510	One parent	24404010
627	One parent	24404011
648	One parent	24404012
849	One parent	24404013
810	One parent	24404014
636	One parent	24404015
948	One parent	24404016
864	One parent	24404017
768	One parent	24404018
459	One parent	29200001
399	One parent	29200002
237	One parent	29200003
135	One parent	29200004
591	One parent	29200005
480	One parent	29200006
450	One parent	29200007
381	One parent	29200008
519	One parent	29200009
702	One parent	29200010
681	One parent	29200011
624	One parent	29200012
900	One parent	29200013
480	One parent	29200014
240	One parent	29200015
681	One parent	29200016
735	One parent	29200017
126	One parent	29200018
306	One parent	29200019
522	One parent	29200020
690	One parent	29200021
585	One parent	29200022
612	One parent	29200023
684	One parent	29200024
582	One parent	29200025
699	One parent	29200026
153	One parent	29200027
372	One parent	29200028
564	One parent	29200029
552	One parent	29200030
738	One parent	29200031
888	One parent	29200032
774	One parent	29200033
702	One parent	29200034
432	One parent	29200035
777	One parent	29200036
435	One parent	29200037
828	One parent	29200038
717	One parent	29200039
645	One parent	29200040
459	One parent	29200041
726	One parent	29200042
876	One parent	29200043
747	One parent	29200044
594	One parent	29200045
531	One parent	29200046
183	One parent	29200047
450	One parent	29200048
810	One parent	29200049
498	One parent	29200050
117	One parent	29300001
183	One parent	29300002
141	One parent	29300003
933	One parent	29300004
192	One parent	29300005
159	One parent	29300006
273	One parent	29300007
162	One parent	29300008
117	One parent	29300009
426	One parent	29300010
309	One parent	29300011
366	One parent	29300012
807	One parent	29300013
561	One parent	29300014
657	One parent	29300015
414	One parent	29300016
651	One parent	29300017
657	One parent	29300018
471	One parent	29300019
468	One parent	29300020
747	One parent	29300021
762	One parent	29300022
519	One parent	29300023
594	One parent	29300024
759	One parent	29300025
537	One parent	29300026
573	One parent	29300027
657	One parent	29300028
543	One parent	29300029
579	One parent	29300030
567	One parent	29300031
639	One parent	29300032
792	One parent	29300033
555	One parent	29300034
402	One parent	29300035
489	One parent	29300036
651	One parent	29300037
591	One parent	29300038
171	One parent	29300039
693	One parent	29300040
1689	One parent	29300041
858	One parent	29300042
729	One parent	29300043
972	One parent	29300044
708	One parent	29300045
657	One parent	29300046
609	One parent	29300047
405	One parent	29300048
396	One parent	29300049
852	One parent	29300050
234	One parent	29300051
444	One parent	29300052
795	One parent	29300053
1029	One parent	29300054
1044	One parent	29300055
993	One parent	29300056
636	One parent	29300057
642	One parent	29300058
552	One parent	29300059
849	One parent	29300060
231	One parent	41601001
378	One parent	41601002
186	One parent	41601003
294	One parent	41601004
162	One parent	41601005
312	One parent	41601006
264	One parent	41602001
243	One parent	41602002
360	One parent	41602003
243	One parent	41602004
219	One parent	41602005
288	One parent	41602006
186	One parent	41602007
339	One parent	41602008
534	One parent	41603001
324	One parent	41603002
354	One parent	41603003
117	One parent	41603004
255	One parent	41603005
303	One parent	41603006
468	One parent	41604001
333	One parent	41604002
264	One parent	41604003
384	One parent	41604004
216	One parent	41801001
321	One parent	41801002
327	One parent	41801003
192	One parent	41801004
618	One parent	41801005
36	One parent	41801006
441	One parent	41801007
348	One parent	41801008
474	One parent	41801009
360	One parent	41801010
267	One parent	41802001
303	One parent	41802002
372	One parent	41802003
153	One parent	41802004
357	One parent	41803001
393	One parent	41803002
468	One parent	41803003
375	One parent	41803004
207	One parent	41803005
435	One parent	41803006
303	One parent	41803007
258	One parent	41803008
660	One parent	41804001
789	One parent	41804002
564	One parent	41804003
663	One parent	41804004
693	One parent	41804005
717	One parent	41804006
984	One parent	41804007
396	One parent	41804008
231	One parent	41804009
624	One parent	41804010
630	One parent	41804011
1158	One parent	41804012
369	One parent	41804013
663	One parent	41804014
726	One parent	41804015
840	One parent	41804016
954	One parent	41804017
609	One parent	41804018
972	One parent	41804019
540	One parent	41804020
777	One parent	41804021
729	One parent	41804022
282	One parent	41804023
174	One parent	41804024
516	One parent	41804025
468	One parent	41804026
219	One parent	41804027
477	One parent	41804028
441	One parent	41804029
543	One parent	41804030
498	One parent	41804031
306	One parent	41804032
180	One parent	41804033
327	One parent	41804034
180	One parent	41804035
357	One parent	41804036
483	One parent	41805001
258	One parent	41805002
360	One parent	41805003
546	One parent	41805004
351	One parent	41805005
414	One parent	41805006
378	One parent	41805007
372	One parent	41805008
765	One parent	41805009
123	One parent	41805010
474	One parent	41805011
147	One parent	41805012
312	One parent	41901001
639	One parent	41901002
201	One parent	41901003
276	One parent	41901004
207	One parent	41901005
681	One parent	41901006
378	One parent	41901007
591	One parent	41901008
297	One parent	41901009
174	One parent	41901010
333	One parent	41901011
402	One parent	41901012
681	One parent	41901013
360	One parent	41901014
351	One parent	41901015
516	One parent	41901016
120	One parent	41901017
438	One parent	41901018
291	One parent	41902001
213	One parent	41902002
189	One parent	41902003
369	One parent	41902004
282	One parent	41902005
306	One parent	41902006
270	One parent	41902007
279	One parent	41902008
78	One parent	41902009
33	One parent	41902010
447	One parent	41902011
768	One parent	41902012
225	One parent	41902013
339	One parent	41902014
387	One parent	41902015
228	One parent	41902016
354	One parent	41902017
162	One parent	41902018
654	One parent	41902019
351	One parent	41902020
357	One parent	41903001
507	One parent	41903002
465	One parent	41903003
267	One parent	41903004
333	One parent	41903005
198	One parent	41903006
231	One parent	41903007
294	One parent	41903008
429	One parent	41903009
909	One parent	41904001
606	One parent	41904002
453	One parent	41904003
525	One parent	41904004
612	One parent	41904005
288	One parent	41904006
516	One parent	41904007
342	One parent	41904008
738	One parent	41904009
636	One parent	41904010
669	One parent	41904011
939	One parent	41904012
615	One parent	41904013
657	One parent	41904014
696	One parent	41904015
675	One parent	41904016
552	One parent	41904017
702	One parent	41904018
759	One parent	41904019
561	One parent	41904020
714	One parent	41904021
441	One parent	41904022
651	One parent	41904023
1236	One parent	41904024
432	One parent	41904025
504	One parent	41904026
525	One parent	41904027
681	One parent	41904028
525	One parent	41904029
465	One parent	41904030
678	One parent	41904031
984	One parent	41904032
780	One parent	41904033
996	One parent	41904034
492	One parent	41904035
135	One parent	41905001
426	One parent	41905002
180	One parent	41905003
336	One parent	41905004
282	One parent	41905005
393	One parent	41905006
327	One parent	41905007
513	One parent	41905008
336	One parent	41906001
312	One parent	41906002
330	One parent	41906003
483	One parent	41906004
360	One parent	41906005
285	One parent	41906006
138	One parent	41906007
312	One parent	41906008
234	One parent	41906009
390	One parent	42001001
162	One parent	42001002
87	One parent	42001003
321	One parent	42001004
429	One parent	42001005
153	One parent	42001006
459	One parent	42001007
195	One parent	42001008
306	One parent	42001009
240	One parent	42001010
228	One parent	42001011
213	One parent	42001012
351	One parent	42001013
195	One parent	42001014
261	One parent	42001015
123	One parent	42001016
54	One parent	42001017
417	One parent	42001018
411	One parent	42001019
528	One parent	42001020
402	One parent	42001021
324	One parent	42001022
123	One parent	42001023
24	One parent	42001024
285	One parent	42001025
330	One parent	42003001
318	One parent	42003002
189	One parent	42003003
216	One parent	42003004
267	One parent	42003005
123	One parent	42003006
534	One parent	42003007
579	One parent	42003008
276	One parent	42003009
234	One parent	42003010
189	One parent	42003011
357	One parent	42003012
66	One parent	42003013
303	One parent	42003014
249	One parent	42003015
438	One parent	42003016
450	One parent	42003017
69	One parent	42003018
405	One parent	42003019
60	One parent	42003020
762	One parent	42004001
225	One parent	42004002
294	One parent	42004003
354	One parent	42004004
267	One parent	42004005
246	One parent	42004006
174	One parent	42004007
381	One parent	42004008
201	One parent	42004009
255	One parent	42004010
201	One parent	42004011
129	One parent	42004012
630	One parent	42004013
96	One parent	42004014
57	One parent	42004015
108	One parent	42004016
108	One parent	42004017
48	One parent	42004018
513	One parent	42004019
387	One parent	42004020
240	One parent	42004021
186	One parent	42005001
519	One parent	42005002
354	One parent	42005003
261	One parent	42005004
144	One parent	42005005
285	One parent	42005006
342	One parent	42005007
420	One parent	42005008
420	One parent	42005009
516	One parent	49400001
522	One parent	49400002
447	One parent	49400003
639	One parent	49400004
648	One parent	49400005
972	One parent	49400006
351	One parent	49400007
972	One parent	49400008
447	One parent	49400009
825	One parent	49400010
729	One parent	49400011
1074	One parent	49400012
408	One parent	49400013
606	One parent	49400014
645	One parent	49400015
552	One parent	49400016
681	One parent	49400017
681	One parent	49400018
156	One parent	49400019
66	One parent	49400020
129	One parent	49400021
93	One parent	49400022
60	One parent	49400023
102	One parent	49400024
93	One parent	49400025
132	One parent	49400026
1260	One parent	49400027
1074	One parent	49400028
855	One parent	49400029
762	One parent	49400030
822	One parent	49400031
834	One parent	49400032
894	One parent	49400033
1140	One parent	49400034
1179	One parent	49400035
852	One parent	49400036
1188	One parent	49400037
798	One parent	49400038
651	One parent	49400039
522	One parent	49400040
774	One parent	49400041
702	One parent	49400042
729	One parent	49400043
273	One parent	49400044
1566	One parent	49400045
1512	One parent	49400046
462	One parent	49400047
129	One parent	49400048
726	One parent	49400049
174	One parent	74201001
774	One parent	74201002
558	One parent	74201003
162	One parent	74201004
195	One parent	74201005
1215	One parent	74201006
825	One parent	74201007
465	One parent	74201008
177	One parent	74201009
273	One parent	74201010
756	One parent	74201011
453	One parent	74201012
597	One parent	74201013
441	One parent	74201014
279	One parent	74201015
273	One parent	74201016
420	One parent	74201017
789	One parent	74201018
744	One parent	74201019
648	One parent	74201020
531	One parent	74201021
693	One parent	74201022
588	One parent	74201023
600	One parent	74201024
753	One parent	74201025
1326	One parent	74201026
504	One parent	74201027
1167	One parent	74201028
771	One parent	74201029
501	One parent	74201030
435	One parent	74201031
489	One parent	74201032
747	One parent	74201033
480	One parent	74201034
492	One parent	74201035
909	One parent	74201036
540	One parent	74201037
660	One parent	74201038
675	One parent	74201039
564	One parent	74201040
558	One parent	74201041
378	One parent	74201042
723	One parent	74201043
846	One parent	74201044
228	One parent	74201045
177	One parent	74202001
63	One parent	74202002
42	One parent	74202003
105	One parent	74202004
183	One parent	74202005
516	One parent	74202006
138	One parent	74202007
309	One parent	74202008
0	One parent	74202009
354	One parent	74202010
183	One parent	74202011
93	One parent	74202012
138	One parent	74202013
66	One parent	74202014
231	One parent	74203001
456	One parent	74203002
285	One parent	74203003
264	One parent	74203004
348	One parent	74203005
225	One parent	74203006
438	One parent	74203007
150	One parent	74203008
66	One parent	74203009
168	One parent	74203010
240	One parent	74203011
303	One parent	74203012
366	One parent	74203013
546	One parent	74801001
624	One parent	74801002
240	One parent	74801003
414	One parent	74801004
348	One parent	74801005
300	One parent	74801006
312	One parent	74801007
438	One parent	74801008
129	One parent	74801009
330	One parent	74801010
450	One parent	74801011
279	One parent	74801012
348	One parent	74801013
360	One parent	74801014
240	One parent	74801015
219	One parent	74801016
75	One parent	74801017
123	One parent	74801018
270	One parent	74801019
168	One parent	74801020
69	One parent	74801021
105	One parent	74801022
270	One parent	74801023
432	One parent	74801024
225	One parent	74801025
240	One parent	74801026
351	One parent	74801027
102	One parent	74801028
105	One parent	74801029
552	One parent	74801030
342	One parent	74801031
234	One parent	74801032
186	One parent	74801033
606	One parent	74801034
351	One parent	74802001
402	One parent	74802002
129	One parent	74802003
57	One parent	74802004
54	One parent	74802005
84	One parent	74802006
111	One parent	74802007
168	One parent	74802008
186	One parent	74802009
120	One parent	74802010
102	One parent	74802011
276	One parent	74802012
219	One parent	74802013
297	One parent	74802014
429	One parent	74802015
267	One parent	74802016
171	One parent	74802017
288	One parent	74802018
216	One parent	74802019
240	One parent	74802020
171	One parent	74802021
171	One parent	74802022
165	One parent	74803001
129	One parent	74803002
3	One parent	74803003
129	One parent	74803004
114	One parent	74803005
168	One parent	74803006
552	One parent	74803007
684	One parent	74803008
405	One parent	74803009
426	One parent	74803010
342	One parent	74803011
369	One parent	74803012
255	One parent	74803013
339	One parent	74803014
381	One parent	74803015
300	One parent	74803016
570	One parent	74804001
486	One parent	74804002
426	One parent	74804003
603	One parent	74804004
45	One parent	74804005
258	One parent	74804006
420	One parent	74804007
372	One parent	74804008
390	One parent	74804009
387	One parent	74804010
129	One parent	74804011
72	One parent	74804012
114	One parent	74804013
42	One parent	74804014
108	One parent	74804015
156	One parent	74804016
111	One parent	74804017
111	One parent	74804018
0	One parent	74804019
390	One parent	74804020
300	One parent	74804021
498	One parent	74804022
261	One parent	74804023
171	One parent	74804024
435	One parent	74804025
552	One parent	74804026
114	One parent	74804027
135	One parent	74804028
1338	One parent	79700001
972	One parent	79700002
672	One parent	79700003
186	One parent	79700004
1071	One parent	79700005
777	One parent	79700006
819	One parent	79700007
1101	One parent	79700008
852	One parent	79700009
975	One parent	79700010
1131	One parent	79700011
1008	One parent	79700012
576	One parent	79700013
1257	One parent	79700014
378	One parent	79700015
399	One parent	79700016
540	One parent	79700017
306	One parent	79700018
282	One parent	79700019
333	One parent	79700020
627	One parent	79700021
339	One parent	79700022
366	One parent	79700023
1146	One parent	79700024
1656	One parent	79700025
1473	One parent	79700026
294	One parent	79700027
336	One parent	79700028
513	One parent	79700029
840	One parent	79700030
765	One parent	79700031
318	One parent	79700032
714	One parent	79700033
771	One parent	79700034
744	One parent	79700035
333	One parent	79700036
273	One parent	79700037
330	One parent	79700038
636	One parent	79700039
1119	One parent	79700040
1518	One parent	79700041
999	One parent	79700042
495	One parent	79700043
972	One parent	79700044
1089	One parent	79700045
1080	One parent	79700046
1113	One parent	79700047
1035	One parent	79700048
1050	One parent	79700049
1167	One parent	79700050
1071	One parent	79700051
1011	One parent	79700052
1395	One parent	79700053
1227	One parent	79700054
1230	One parent	79700055
954	One parent	79700056
1215	One parent	79700057
1635	One parent	79700058
1281	One parent	79700059
1275	One parent	79700060
1986	One parent	79700061
1086	One parent	79700062
1611	One parent	79700063
1599	One parent	79700064
1818	One parent	79700065
2028	One parent	79700066
1491	One parent	79700067
1416	One parent	79700068
939	One parent	79700069
1107	One parent	79700070
1278	One parent	79700071
825	One parent	79700072
900	One parent	79700073
600	One parent	79700074
642	One parent	79700075
540	One parent	79700076
1191	One parent	79700077
825	One parent	79700078
1407	One parent	79700079
936	One parent	79700080
2067	One parent	79700081
1071	One parent	79700082
1227	One parent	79700083
1740	One parent	79700084
1293	One parent	79700085
1785	One parent	79700086
1422	One parent	79700087
864	One parent	79700088
1119	One parent	79700089
957	One parent	79700090
681	One parent	79700091
414	One parent	79700092
471	One parent	79700093
324	One parent	79700094
1098	One parent	79700095
1017	One parent	79700096
612	One parent	79700097
816	One parent	79700098
1770	One parent	79700099
522	One parent	79700100
1890	One parent	79700101
2292	One parent	79800001
2049	One parent	79800002
1566	One parent	79800003
2097	One parent	79800004
2562	One parent	79800005
1863	One parent	79800006
1335	One parent	79800007
1128	One parent	79800008
504	One parent	79800009
939	One parent	79800010
975	One parent	79800011
813	One parent	79800012
1242	One parent	79800013
990	One parent	79800014
1305	One parent	79800015
1044	One parent	79800016
1257	One parent	79800017
1062	One parent	79800018
1416	One parent	79800019
1278	One parent	79800020
1041	One parent	79800021
1386	One parent	79800022
366	One parent	79800023
1107	One parent	79800024
1344	One parent	79800025
1128	One parent	79800026
957	One parent	79800027
1206	One parent	79800028
1002	One parent	79800029
1299	One parent	79800030
1029	One parent	79800031
915	One parent	79800032
1098	One parent	79800033
1089	One parent	79800034
921	One parent	79800035
1035	One parent	79800036
1197	One parent	79800037
720	One parent	79800038
1155	One parent	79800039
990	One parent	79800040
1041	One parent	79800041
960	One parent	79800042
1020	One parent	79800043
2037	One parent	79800044
1098	One parent	79800045
1152	One parent	79800046
1116	One parent	79800047
1164	One parent	79800048
2331	One parent	79800049
1017	One parent	79800050
1371	One parent	79800051
1419	One parent	79800052
2025	One parent	79800053
702	One parent	79800054
609	One parent	79800055
657	One parent	79800056
921	One parent	79800057
552	One parent	79800058
108	One parent	79800059
606	One parent	79800060
393	One parent	79800061
420	One parent	79800062
648	One parent	79800063
1032	One parent	79800064
402	One parent	79800065
1047	One parent	79800066
489	One parent	79800067
888	One parent	79800068
516	One parent	79800069
399	One parent	79800070
669	One parent	79800071
243	One parent	79800072
363	One parent	79800073
354	One parent	79800074
834	One parent	79800075
756	One parent	79800076
1521	One parent	79800077
1611	One parent	79800078
1551	One parent	79800079
786	One parent	79800080
768	One parent	79800081
858	One parent	79800082
315	One parent	79800083
531	One parent	79800084
402	One parent	79800085
507	One parent	79800086
159	One parent	79800087
171	One parent	79800088
246	One parent	79800089
216	One parent	79800090
507	One parent	79800091
1629	One parent	79800092
267	One parent	79800093
222	One parent	79800094
1164	One parent	79800095
897	One parent	79800096
729	One parent	79800097
348	One parent	79800098
168	One parent	79800099
1350	One parent	79800100
318	One parent	79800101
279	One parent	79800102
369	One parent	79800103
345	One parent	79800104
2037	One parent	79800105
303	One parent	79800106
756	One parent	79800107
1245	One parent	79800108
525	One parent	79800109
1587	One parent	79800110
1893	One parent	79800111
582	One parent	79800112
2220	One parent	79800113
972	One parent	79800114
399	One parent	79800115
846	One parent	79800116
213	One parent	79800117
576	One parent	79800118
1461	One parent	79800119
1062	One parent	79800120
1932	One parent	79800121
1965	One parent	79800122
831	One parent	79800123
819	One parent	79800124
717	One parent	79800125
402	One parent	79800126
822	One parent	79800127
2100	One parent	79800128
1536	One parent	79800129
1203	One parent	79800130
360	One parent	79900001
297	One parent	79900002
525	One parent	79900003
483	One parent	79900004
291	One parent	79900005
414	One parent	79900006
1044	One parent	79900007
1389	One parent	79900008
1551	One parent	79900009
1014	One parent	79900010
897	One parent	79900011
711	One parent	79900012
1377	One parent	79900013
1197	One parent	79900014
507	One parent	79900015
813	One parent	79900016
1182	One parent	79900017
678	One parent	79900018
1131	One parent	79900019
906	One parent	79900020
1056	One parent	79900021
1056	One parent	79900022
792	One parent	79900023
1818	One parent	79900024
1008	One parent	79900025
876	One parent	79900026
1215	One parent	79900027
522	One parent	79900028
1056	One parent	79900029
1182	One parent	79900030
708	One parent	79900031
708	One parent	79900032
549	One parent	79900033
693	One parent	79900034
585	One parent	79900035
612	One parent	79900036
1341	One parent	79900037
129	One parent	79900038
1149	One parent	79900039
1722	One parent	79900040
168	One parent	79900041
159	One parent	79900042
534	One parent	79900043
171	One parent	79900044
99	One parent	79900045
171	One parent	79900046
168	One parent	79900047
933	One parent	79900048
1191	One parent	79900049
219	One parent	79900050
561	One parent	79900051
210	One parent	79900052
264	One parent	79900053
225	One parent	79900054
354	One parent	79900055
57	One parent	79900056
282	One parent	79900057
327	One parent	79900058
165	One parent	79900059
390	One parent	79900060
513	One parent	79900061
594	One parent	79900062
381	One parent	79900063
438	One parent	79900064
168	One parent	79900065
261	One parent	79900066
717	One parent	79900067
915	One parent	79900068
222	One parent	79900069
387	One parent	79900070
822	One parent	79900071
639	One parent	79900072
1617	One parent	79900073
1146	One parent	79900074
1008	One parent	79900075
1014	One parent	79900076
2016	One parent	79900077
201	One parent	79900078
219	One parent	79900079
315	One parent	79900080
105	One parent	79900081
105	One parent	79900082
111	One parent	79900083
252	One parent	79900084
249	One parent	79900085
1398	One parent	79900086
366	One parent	79900087
906	One parent	79900088
948	One parent	79900089
1293	One parent	79900090
381	One parent	79900091
270	One parent	79900092
435	One parent	79900093
645	One parent	79900094
1200	One parent	79900095
588	One parent	79900096
639	One parent	79900097
405	One parent	79900098
1011	One parent	79900099
795	One parent	79900100
411	One parent	79900101
1197	One parent	79900102
1044	One parent	79900103
1053	One parent	79900104
615	One parent	79900105
516	One parent	52103001
654	One parent	52103002
705	One parent	52103003
789	One parent	52103004
612	One parent	52103005
402	One parent	52103006
513	One parent	52103007
651	One parent	52103008
543	One parent	52103009
834	One parent	52103010
615	One parent	52103011
537	One parent	52103012
519	One parent	52103013
648	One parent	52103014
771	One parent	52103015
549	One parent	52103016
606	One parent	52103017
915	One parent	52103018
591	One parent	52103019
954	One parent	52104001
1020	One parent	52104002
543	One parent	52104003
750	One parent	52104004
813	One parent	52104005
681	One parent	52104006
864	One parent	52104007
987	One parent	52104008
960	One parent	52104009
933	One parent	52104010
531	One parent	52105001
510	One parent	52105002
687	One parent	52105003
693	One parent	52105004
750	One parent	52105005
567	One parent	52105006
174	One parent	52106001
114	One parent	52106002
162	One parent	52106003
624	One parent	52106004
759	One parent	52106005
309	One parent	52106006
663	One parent	52106007
546	One parent	52106008
921	One parent	52106009
846	One parent	52106010
678	One parent	52106011
249	One parent	52106012
201	One parent	52106013
462	One parent	52106014
324	One parent	52106015
117	One parent	52106016
189	One parent	52106017
135	One parent	52106018
36	One parent	52106019
753	One parent	52106020
432	One parent	52106021
549	One parent	52106022
381	One parent	52106023
609	One parent	52106024
558	One parent	52106025
822	One parent	52106026
744	One parent	52106027
453	One parent	52106028
807	One parent	52106029
615	One parent	52101001
600	One parent	52101002
444	One parent	52101003
582	One parent	52101004
810	One parent	52101005
681	One parent	52101006
516	One parent	52101007
546	One parent	52101008
621	One parent	52101009
669	One parent	52101010
561	One parent	52102001
702	One parent	52102002
297	One parent	52102003
312	One parent	52102004
267	One parent	52102005
144	One parent	52102006
369	One parent	52102007
690	One parent	52102008
483	One parent	52102009
144	One parent	52102010
720	One parent	52201001
294	One parent	52201002
852	One parent	52201003
675	One parent	52201004
894	One parent	52201005
540	One parent	52201006
174	One parent	52201007
453	One parent	52201008
597	One parent	52201009
495	One parent	52201010
669	One parent	52201011
627	One parent	52201012
396	One parent	52201013
339	One parent	52202001
27	One parent	52202002
183	One parent	52202003
426	One parent	52202004
159	One parent	52202005
165	One parent	52202006
105	One parent	52202007
948	One parent	52202008
618	One parent	52202009
306	One parent	52202010
483	One parent	52202011
426	One parent	52202012
555	One parent	52203001
348	One parent	52203002
351	One parent	52203003
864	One parent	52203004
705	One parent	52204001
762	One parent	52204002
702	One parent	52204003
486	One parent	52204004
1158	One parent	52205001
1272	One parent	52205002
981	One parent	52205003
1107	One parent	52205004
972	One parent	52205005
1125	One parent	52205006
1356	One parent	52205007
1134	One parent	52205008
1095	One parent	52205009
885	One parent	52205010
1290	One parent	52205011
657	One parent	52205012
1320	One parent	52205013
939	One parent	52205014
1005	One parent	52205015
1338	One parent	52205016
1254	One parent	52205017
1425	One parent	52205018
732	One parent	52205019
900	One parent	52205020
558	One parent	52205021
837	One parent	52205022
825	One parent	52205023
504	One parent	52205024
120	One parent	52205025
327	One parent	52205026
213	One parent	52205027
396	One parent	52205028
987	One parent	52205029
624	One parent	52205030
246	One parent	52205031
501	One parent	52205032
183	One parent	52205033
1215	One parent	52205034
528	One parent	52205035
261	One parent	52205036
531	One parent	52205037
891	One parent	52206001
678	One parent	52206002
372	One parent	52206003
330	One parent	52206004
843	One parent	52206005
564	One parent	52206006
603	One parent	52206007
411	One parent	52207001
906	One parent	52207002
930	One parent	52207003
177	One parent	52207004
801	One parent	52207005
810	One parent	52207006
918	One parent	52207007
591	One parent	52302001
435	One parent	52302002
807	One parent	52302003
390	One parent	52302004
615	One parent	52302005
630	One parent	52302006
648	One parent	52302007
447	One parent	52302008
723	One parent	52302009
309	One parent	52302010
150	One parent	52302011
84	One parent	52302012
1017	One parent	52302013
921	One parent	52302014
651	One parent	52302015
552	One parent	52302016
600	One parent	52302017
609	One parent	52302018
540	One parent	52302019
630	One parent	52302020
552	One parent	52302021
345	One parent	52302022
639	One parent	52302023
663	One parent	52302024
570	One parent	52302025
363	One parent	52302026
1134	One parent	52302027
870	One parent	52303001
1032	One parent	52303002
822	One parent	52303003
915	One parent	52303004
702	One parent	52303005
873	One parent	52303006
936	One parent	52303007
930	One parent	52303008
819	One parent	52303009
798	One parent	52303010
612	One parent	52304001
744	One parent	52304002
480	One parent	52304003
219	One parent	52304004
864	One parent	52304005
510	One parent	52304006
543	One parent	52304007
699	One parent	52304008
531	One parent	52304009
582	One parent	52305001
975	One parent	52305002
762	One parent	52305003
792	One parent	52305004
669	One parent	52305005
669	One parent	52305006
672	One parent	52305007
753	One parent	52305008
645	One parent	52305009
648	One parent	52305010
885	One parent	52305011
687	One parent	52305012
708	One parent	52305013
564	One parent	52305014
534	One parent	52306001
498	One parent	52306002
591	One parent	52306003
627	One parent	52306004
459	One parent	52306005
672	One parent	52306006
438	One parent	52306007
873	One parent	52306008
780	One parent	52306009
897	One parent	52306010
669	One parent	52306011
426	One parent	52306012
699	One parent	52306013
270	One parent	52701001
507	One parent	52701002
771	One parent	52701003
882	One parent	52701004
576	One parent	52701005
909	One parent	52701006
582	One parent	52701007
528	One parent	52701008
825	One parent	52701009
462	One parent	52701010
612	One parent	52701011
495	One parent	52701012
594	One parent	52701013
609	One parent	52701014
657	One parent	52701015
459	One parent	52701016
510	One parent	52701017
702	One parent	52702001
558	One parent	52702002
855	One parent	52702003
717	One parent	52702004
1200	One parent	52702005
543	One parent	52702006
498	One parent	52702007
717	One parent	52702008
690	One parent	52702009
870	One parent	52702010
699	One parent	52702011
669	One parent	52702012
720	One parent	52702013
882	One parent	52702014
702	One parent	52702015
738	One parent	52702016
798	One parent	52702017
621	One parent	52702018
636	One parent	52702019
417	One parent	52702020
834	One parent	52703001
594	One parent	52703002
204	One parent	52703003
1098	One parent	52703004
516	One parent	52704001
360	One parent	52704002
1014	One parent	52704003
948	One parent	52704004
648	One parent	52704005
669	One parent	52704006
648	One parent	52704007
1077	One parent	52704008
321	One parent	52705001
1212	One parent	52705002
1068	One parent	52705003
429	One parent	52705004
90	One parent	52705005
1305	One parent	52705006
834	One parent	52705007
816	One parent	52705008
528	One parent	52705009
912	One parent	52705010
765	One parent	52705011
738	One parent	52705012
519	One parent	52705013
546	One parent	52705014
714	One parent	52705015
969	One parent	52705016
942	One parent	52705017
1170	One parent	52705018
924	One parent	52705019
498	One parent	52802001
147	One parent	52802002
96	One parent	52802003
501	One parent	52802004
1050	One parent	52802005
870	One parent	52802006
309	One parent	52802007
264	One parent	52802008
486	One parent	52802009
669	One parent	52802010
720	One parent	52802011
576	One parent	52802012
1095	One parent	52802013
759	One parent	52802014
852	One parent	52802015
459	One parent	52802016
576	One parent	52802017
1044	One parent	52802018
645	One parent	52802019
465	One parent	52802020
336	One parent	52802021
564	One parent	52802022
186	One parent	52802023
681	One parent	52802024
1014	One parent	52802025
267	One parent	52802026
417	One parent	52802027
336	One parent	52802028
1089	One parent	52802029
315	One parent	52802030
819	One parent	52806001
627	One parent	52806002
645	One parent	52806003
528	One parent	52806004
549	One parent	52806005
858	One parent	52806006
864	One parent	52806007
588	One parent	52806008
636	One parent	52806009
678	One parent	52806010
528	One parent	52806011
756	One parent	52806012
759	One parent	52806013
732	One parent	52806014
408	One parent	52801001
243	One parent	52801002
537	One parent	52801003
837	One parent	52801004
564	One parent	52801005
501	One parent	52801006
378	One parent	52801007
735	One parent	52801008
714	One parent	52801009
684	One parent	52801010
795	One parent	52801011
582	One parent	52801012
684	One parent	52801013
750	One parent	52801014
732	One parent	52801015
627	One parent	52803001
738	One parent	52803002
876	One parent	52803003
606	One parent	52803004
867	One parent	52803005
801	One parent	52803006
756	One parent	52803007
771	One parent	52803008
654	One parent	52804001
681	One parent	52804002
714	One parent	52804003
741	One parent	52804004
939	One parent	52804005
519	One parent	52804006
549	One parent	52804007
807	One parent	52804008
762	One parent	52804009
726	One parent	52804010
312	One parent	52804011
351	One parent	52804012
642	One parent	52804013
798	One parent	52804014
801	One parent	52804015
1062	One parent	52804016
540	One parent	52804017
231	One parent	52804018
225	One parent	52804019
831	One parent	52804020
534	One parent	52804021
501	One parent	52804022
822	One parent	52804023
783	One parent	52804024
627	One parent	52804025
732	One parent	52804026
456	One parent	52805001
450	One parent	52805002
876	One parent	52805003
633	One parent	52805004
783	One parent	52805005
507	One parent	52805006
933	One parent	54301001
735	One parent	54301002
747	One parent	54301003
810	One parent	54301004
885	One parent	54301005
612	One parent	54301006
495	One parent	54301007
678	One parent	54301008
795	One parent	54301009
642	One parent	54301010
507	One parent	54301011
219	One parent	54302001
177	One parent	54302002
84	One parent	54302003
72	One parent	54302004
804	One parent	54303001
480	One parent	54303002
156	One parent	54303003
651	One parent	54303004
165	One parent	54303005
507	One parent	54303006
468	One parent	54303007
546	One parent	54303008
600	One parent	54304001
333	One parent	54304002
849	One parent	54304003
750	One parent	54304004
687	One parent	54304005
636	One parent	54304006
621	One parent	54304007
960	One parent	54304008
399	One parent	54304009
657	One parent	54304010
627	One parent	54304011
777	One parent	54304012
924	One parent	54305001
807	One parent	54305002
690	One parent	54305003
759	One parent	54305004
855	One parent	54305005
960	One parent	54305006
822	One parent	54305007
732	One parent	54305008
792	One parent	54305009
930	One parent	54305010
675	One parent	54305011
789	One parent	54305012
939	One parent	54305013
1128	One parent	54305014
633	One parent	54305015
624	One parent	54305016
663	One parent	54305017
801	One parent	54305018
657	One parent	54305019
858	One parent	54305020
330	One parent	52401001
480	One parent	52401002
996	One parent	52401003
363	One parent	52401004
633	One parent	52401005
522	One parent	52401006
1344	One parent	52402001
834	One parent	52402002
1029	One parent	52402003
783	One parent	52402004
843	One parent	52402005
693	One parent	52402006
717	One parent	52402007
693	One parent	52402008
777	One parent	52402009
831	One parent	52402010
954	One parent	52402011
690	One parent	52402012
720	One parent	52402013
717	One parent	52402014
804	One parent	52402015
624	One parent	52402016
645	One parent	52402017
942	One parent	52404001
876	One parent	52404002
900	One parent	52404003
996	One parent	52404004
1269	One parent	52404005
900	One parent	52404006
867	One parent	52404007
522	One parent	52404008
981	One parent	52404009
708	One parent	52404010
741	One parent	52404011
807	One parent	52404012
612	One parent	52404013
921	One parent	52404014
804	One parent	52404015
678	One parent	52404016
942	One parent	52404017
603	One parent	52404018
690	One parent	52404019
1044	One parent	52405001
912	One parent	52405002
891	One parent	52405003
627	One parent	52405004
519	One parent	52405005
744	One parent	52405006
789	One parent	52405007
924	One parent	52405008
150	One parent	52405009
306	One parent	52405010
549	One parent	52405011
978	One parent	52502001
177	One parent	52502002
108	One parent	52502003
114	One parent	52502004
351	One parent	52502005
1764	One parent	52502006
1170	One parent	52502007
777	One parent	52502008
1032	One parent	52502009
687	One parent	52502010
732	One parent	52502011
705	One parent	52502012
570	One parent	52502013
912	One parent	52502014
867	One parent	52502015
1098	One parent	52502016
810	One parent	52502017
972	One parent	52502018
594	One parent	52502019
1092	One parent	52502020
774	One parent	52502021
504	One parent	52502022
612	One parent	52502023
813	One parent	52502024
333	One parent	52502025
417	One parent	52502026
627	One parent	52502027
489	One parent	52502028
732	One parent	52502029
1059	One parent	52502030
819	One parent	52502031
717	One parent	52503001
249	One parent	52503002
600	One parent	52503003
549	One parent	52503004
759	One parent	52504001
372	One parent	52504002
693	One parent	52504003
651	One parent	52504004
549	One parent	52504005
771	One parent	52504006
654	One parent	52504007
723	One parent	52504008
690	One parent	52504009
915	One parent	52504010
783	One parent	52504011
849	One parent	52603001
666	One parent	52603002
1053	One parent	52603003
675	One parent	52603004
1053	One parent	52603005
936	One parent	52603006
873	One parent	52603007
48	One parent	52603008
132	One parent	52603009
162	One parent	52603010
687	One parent	52603011
891	One parent	52603012
1239	One parent	52603013
813	One parent	52603014
684	One parent	52603015
930	One parent	52603016
1116	One parent	52603017
681	One parent	52603018
669	One parent	52603019
879	One parent	52603020
1071	One parent	52603021
840	One parent	52603022
954	One parent	52601001
1374	One parent	52601002
708	One parent	52601003
885	One parent	52601004
786	One parent	52601005
711	One parent	52601006
717	One parent	52601007
789	One parent	52601008
930	One parent	52602001
579	One parent	52602002
654	One parent	52602003
1026	One parent	52602004
720	One parent	52602005
612	One parent	52602006
702	One parent	52602007
954	One parent	52602008
1041	One parent	52602009
858	One parent	52602010
519	One parent	52602011
768	One parent	52602012
507	One parent	52602013
522	One parent	52602014
1020	One parent	52605001
936	One parent	52605002
924	One parent	52605003
1095	One parent	52605004
930	One parent	52605005
681	One parent	52605006
1011	One parent	52605007
771	One parent	52605008
1017	One parent	52605009
816	One parent	52605010
936	One parent	52605011
732	One parent	52605012
465	One parent	52605013
912	One parent	52605014
765	One parent	52605015
1035	One parent	52605016
828	One parent	52605017
975	One parent	52605018
9	One parent	52605019
528	One parent	52605020
618	One parent	52605021
558	One parent	52606001
1224	One parent	52606002
501	One parent	52606003
552	One parent	52606004
783	One parent	52606005
537	One parent	52606006
537	One parent	52606007
822	One parent	52606008
624	One parent	52606009
528	One parent	52606010
666	One parent	52606011
258	One parent	52606012
732	One parent	52606013
711	One parent	52606014
777	One parent	52606015
651	One parent	52606016
711	One parent	52606017
621	One parent	52606018
315	One parent	52606019
600	One parent	52606020
666	One parent	52606021
534	One parent	52606022
507	One parent	52606023
513	One parent	52606024
729	One parent	52904001
1119	One parent	52904002
795	One parent	52904003
816	One parent	52904004
1077	One parent	52904005
726	One parent	52904006
696	One parent	52904007
795	One parent	52904008
687	One parent	52904009
756	One parent	52904010
450	One parent	52904011
639	One parent	52901001
717	One parent	52901002
333	One parent	52901003
540	One parent	52901004
552	One parent	52901005
570	One parent	52901006
573	One parent	52901007
708	One parent	52901008
765	One parent	52901009
489	One parent	52901010
660	One parent	52901011
930	One parent	52901012
195	One parent	52901013
567	One parent	52901014
210	One parent	52901015
669	One parent	52901016
285	One parent	52901017
570	One parent	52902001
435	One parent	52902002
240	One parent	52902003
282	One parent	52902004
483	One parent	52902005
96	One parent	52902006
573	One parent	52902007
468	One parent	52902008
405	One parent	52902009
663	One parent	52902010
471	One parent	52902011
714	One parent	52902012
234	One parent	52902013
537	One parent	52902014
747	One parent	52902015
204	One parent	52902016
114	One parent	52902017
444	One parent	52902018
174	One parent	52902019
144	One parent	52902020
336	One parent	52902021
219	One parent	52902022
588	One parent	52902023
612	One parent	52902024
738	One parent	52902025
312	One parent	52902026
507	One parent	52902027
402	One parent	52903001
495	One parent	52903002
495	One parent	52903003
513	One parent	52903004
669	One parent	52903005
717	One parent	52903006
393	One parent	52903007
585	One parent	52903008
399	One parent	52903009
537	One parent	52903010
498	One parent	52903011
786	One parent	52903012
672	One parent	52903013
456	One parent	52903014
540	One parent	52903015
534	One parent	52903016
582	One parent	52903017
450	One parent	52903018
582	One parent	52903019
2208	One parent	59500001
2121	One parent	59500002
2928	One parent	59500003
2535	One parent	59500004
2310	One parent	59500005
1923	One parent	59500006
2103	One parent	59500007
1563	One parent	59500008
1377	One parent	59500009
210	One parent	59500010
2106	One parent	59500011
1623	One parent	59500012
1668	One parent	59500013
1674	One parent	59500014
2211	One parent	59500015
1194	One parent	59500016
1488	One parent	59500017
336	One parent	59500018
2232	One parent	59500019
1233	One parent	59500020
843	One parent	59500021
1149	One parent	59500022
624	One parent	59500023
1029	One parent	59500024
876	One parent	59500025
504	One parent	59500026
252	One parent	59500027
345	One parent	59500028
1806	One parent	59500029
1236	One parent	59500030
411	One parent	59500031
423	One parent	59500032
468	One parent	59500033
804	One parent	59500034
411	One parent	59500035
405	One parent	59500036
1614	One parent	59500037
2664	One parent	59500038
600	One parent	59500039
1329	One parent	59500040
2166	One parent	59500041
2475	One parent	59500042
2184	One parent	59500043
2697	One parent	59500044
2382	One parent	59500045
1557	One parent	59500046
1836	One parent	59500047
615	One parent	59500048
501	One parent	59500049
381	One parent	59500050
909	One parent	59500051
684	One parent	59500052
2205	One parent	59500053
1575	One parent	59500054
2961	One parent	59500055
2904	One parent	59500056
2304	One parent	59500057
1584	One parent	59500058
2715	One parent	59500059
1422	One parent	59500060
723	One parent	59500061
1473	One parent	59500062
393	One parent	59500063
849	One parent	59500064
834	One parent	59500065
528	One parent	59500066
2814	One parent	59500067
1020	One parent	59500068
885	One parent	59500069
480	One parent	59500070
714	One parent	59500071
1665	One parent	59500072
381	One parent	59500073
1083	One parent	59500074
636	One parent	59500075
702	One parent	59500076
2862	One parent	59500077
1590	One parent	59500078
2256	One parent	59500079
1707	One parent	59500080
1362	One parent	59500081
1470	One parent	59500082
1983	One parent	59500083
2247	One parent	59500084
1734	One parent	59500085
1998	One parent	59500086
1479	One parent	59500087
1431	One parent	59500088
1374	One parent	59500089
531	One parent	59500090
2250	One parent	59500091
1101	One parent	59500092
1674	One parent	59500093
1884	One parent	59500094
2580	One parent	59500095
2310	One parent	59500096
390	One parent	59500097
2814	One parent	59500098
1950	One parent	59500099
2304	One parent	59500100
894	One parent	59500101
1662	One parent	59500102
1584	One parent	59500103
369	One parent	93301001
441	One parent	93301002
375	One parent	93301003
471	One parent	93301004
441	One parent	93301005
384	One parent	93301006
561	One parent	93301007
411	One parent	93301008
402	One parent	93301009
297	One parent	93301010
219	One parent	93301011
594	One parent	93301012
414	One parent	93301013
444	One parent	93301014
324	One parent	93301015
306	One parent	93301016
333	One parent	93301017
393	One parent	93301018
420	One parent	93301019
345	One parent	93301020
297	One parent	93301021
342	One parent	93301022
411	One parent	93301023
513	One parent	93301024
816	One parent	93301025
501	One parent	93301026
414	One parent	93301027
540	One parent	93301028
390	One parent	93301029
228	One parent	93301030
522	One parent	93302001
339	One parent	93302002
240	One parent	93302003
495	One parent	93302004
408	One parent	93302005
531	One parent	93302006
378	One parent	93302007
426	One parent	93302008
801	One parent	93302009
642	One parent	93302010
558	One parent	93302011
549	One parent	93302012
411	One parent	93302013
435	One parent	93302014
519	One parent	93302015
423	One parent	93302016
528	One parent	93302017
546	One parent	93302018
429	One parent	93302019
537	One parent	93302020
468	One parent	93302021
510	One parent	93302022
561	One parent	93302023
462	One parent	93302024
498	One parent	93302025
555	One parent	93302026
363	One parent	93302027
180	One parent	93302028
327	One parent	93302029
744	One parent	93303001
846	One parent	93303002
675	One parent	93303003
651	One parent	93303004
702	One parent	93303005
519	One parent	93303006
663	One parent	93303007
477	One parent	93303008
1053	One parent	93303009
333	One parent	93303010
420	One parent	93303011
612	One parent	93303012
486	One parent	93303013
177	One parent	93303014
96	One parent	93303015
579	One parent	93303016
489	One parent	93303017
720	One parent	93303018
288	One parent	93303019
570	One parent	93303020
426	One parent	93303021
525	One parent	93303022
372	One parent	93303023
405	One parent	93303024
534	One parent	93303025
507	One parent	93303026
561	One parent	93303027
486	One parent	93303028
756	One parent	93303029
408	One parent	93303030
387	One parent	93303031
666	One parent	93303032
996	One parent	93303033
822	One parent	93303034
498	One parent	93304001
273	One parent	93304002
297	One parent	93304003
225	One parent	93304004
204	One parent	93304005
333	One parent	93304006
195	One parent	93304007
390	One parent	93304008
225	One parent	93304009
306	One parent	93304010
75	One parent	93304011
57	One parent	93304012
402	One parent	93304013
138	One parent	93304014
345	One parent	93304015
909	One parent	93304016
990	One parent	93304017
348	One parent	93304018
54	One parent	93305001
510	One parent	93305002
786	One parent	93305003
549	One parent	93305004
540	One parent	93305005
456	One parent	93305006
462	One parent	93305007
588	One parent	93305008
489	One parent	93305009
477	One parent	93305010
486	One parent	93305011
621	One parent	93305012
531	One parent	93305013
417	One parent	93305014
255	One parent	93402001
279	One parent	93402002
327	One parent	93402003
252	One parent	93402004
273	One parent	93402005
231	One parent	93402006
237	One parent	93402007
186	One parent	93402008
321	One parent	93402009
204	One parent	93402010
483	One parent	93402011
348	One parent	93402012
231	One parent	93402013
897	One parent	93403001
438	One parent	93403002
459	One parent	93403003
513	One parent	93403004
552	One parent	93403005
504	One parent	93403006
801	One parent	93403007
720	One parent	93403008
633	One parent	93403009
738	One parent	93403010
693	One parent	93403011
546	One parent	93403012
702	One parent	93403013
627	One parent	93403014
840	One parent	93403015
531	One parent	93403016
579	One parent	93403017
648	One parent	93403018
576	One parent	93403019
567	One parent	93403020
519	One parent	93403021
465	One parent	93403022
564	One parent	93403023
645	One parent	93403024
453	One parent	93403025
474	One parent	93403026
678	One parent	93403027
462	One parent	93403028
525	One parent	93403029
414	One parent	93403030
408	One parent	93403031
540	One parent	93403032
582	One parent	93403033
597	One parent	93403034
537	One parent	93403035
402	One parent	93403036
429	One parent	93403037
429	One parent	93403038
468	One parent	93403039
480	One parent	93403040
516	One parent	93401001
393	One parent	93401002
393	One parent	93401003
138	One parent	93401004
468	One parent	93401005
336	One parent	93401006
402	One parent	93404001
477	One parent	93404002
621	One parent	93404003
660	One parent	93404004
573	One parent	93404005
495	One parent	93404006
549	One parent	93404007
531	One parent	93404008
594	One parent	93404009
453	One parent	93404010
465	One parent	93404011
462	One parent	93404012
489	One parent	93404013
489	One parent	93404014
645	One parent	93404015
612	One parent	93404016
543	One parent	93404017
693	One parent	93404018
570	One parent	93404019
402	One parent	93404020
381	One parent	93404021
669	One parent	93404022
351	One parent	93404023
876	One parent	93404024
690	One parent	93404025
666	One parent	93404026
456	One parent	93404027
585	One parent	93404028
402	One parent	93404029
348	One parent	93404030
519	One parent	93404031
555	One parent	93404032
642	One parent	93404033
612	One parent	93404034
468	One parent	93404035
717	One parent	93404036
456	One parent	93404037
429	One parent	93404038
639	One parent	93501001
891	One parent	93501002
810	One parent	93501003
807	One parent	93501004
552	One parent	93501005
723	One parent	93501006
798	One parent	93501007
498	One parent	93501008
738	One parent	93501009
609	One parent	93501010
648	One parent	93501011
525	One parent	93501012
720	One parent	93501013
498	One parent	93501014
489	One parent	93501015
567	One parent	93501016
723	One parent	93501017
594	One parent	93501018
885	One parent	93501019
876	One parent	93501020
624	One parent	93501021
525	One parent	93502001
672	One parent	93502002
720	One parent	93502003
507	One parent	93502004
474	One parent	93502005
426	One parent	93502006
1116	One parent	93502007
453	One parent	93502008
648	One parent	93502009
1002	One parent	93502010
696	One parent	93502011
585	One parent	93502012
387	One parent	93502013
690	One parent	93502014
504	One parent	93502015
612	One parent	93502016
306	One parent	93502017
708	One parent	93502018
438	One parent	93502019
381	One parent	93503001
690	One parent	93503002
591	One parent	93503003
549	One parent	93503004
582	One parent	93503005
699	One parent	93503006
585	One parent	93503007
807	One parent	93503008
573	One parent	93503009
291	One parent	93503010
441	One parent	93503011
561	One parent	93503012
471	One parent	93503013
537	One parent	93503014
774	One parent	93504001
1155	One parent	93504002
996	One parent	93504003
1236	One parent	93504004
1575	One parent	93504005
621	One parent	93504006
1023	One parent	93504007
1044	One parent	93504008
927	One parent	93504009
825	One parent	93504010
828	One parent	93504011
300	One parent	93504012
693	One parent	93504013
660	One parent	93504014
1083	One parent	93504015
1296	One parent	93504016
579	One parent	93504017
1056	One parent	93504018
471	One parent	93504019
360	One parent	93504020
78	One parent	93504021
240	One parent	93504022
219	One parent	93504023
948	One parent	93504024
1083	One parent	93504025
96	One parent	93504026
1122	One parent	93504027
1209	One parent	93504028
771	One parent	93504029
1050	One parent	93504030
1491	One parent	93504031
942	One parent	93504032
1131	One parent	93504033
1092	One parent	93504034
921	One parent	93504035
702	One parent	93504036
615	One parent	93504037
1068	One parent	93504038
1263	One parent	93505001
1122	One parent	93505002
942	One parent	93505003
879	One parent	93505004
543	One parent	93505005
1149	One parent	93505006
795	One parent	93505007
483	One parent	93505008
471	One parent	93505009
474	One parent	93505010
555	One parent	93505011
555	One parent	93505012
645	One parent	93505013
588	One parent	93505014
396	One parent	93505015
453	One parent	93505016
468	One parent	93505017
273	One parent	93505018
819	One parent	93505019
510	One parent	93505020
915	One parent	93505021
1089	One parent	93505022
669	One parent	93505023
918	One parent	93505024
1026	One parent	93505025
780	One parent	93505026
900	One parent	93505027
582	One parent	93505028
585	One parent	93505029
135	One parent	93601001
237	One parent	93601002
201	One parent	93601003
144	One parent	93601004
45	One parent	93601005
48	One parent	93601006
318	One parent	93601007
72	One parent	93601008
525	One parent	93601009
162	One parent	93601010
0	One parent	93601011
90	One parent	93601012
456	One parent	93602001
189	One parent	93602002
186	One parent	93602003
108	One parent	93602004
54	One parent	93602005
378	One parent	93602006
426	One parent	93602007
381	One parent	93602008
669	One parent	93602009
570	One parent	93602010
456	One parent	93602011
534	One parent	93602012
432	One parent	93604001
186	One parent	93604002
114	One parent	93604003
48	One parent	93604004
267	One parent	93604005
402	One parent	93605001
162	One parent	93605002
306	One parent	93605003
66	One parent	93605004
531	One parent	93605005
438	One parent	93605006
318	One parent	93605007
96	One parent	93605008
225	One parent	93605009
174	One parent	93606001
282	One parent	93606002
294	One parent	93606003
366	One parent	93606004
120	One parent	93606005
249	One parent	93606006
297	One parent	93606007
195	One parent	93606008
84	One parent	93606009
939	One parent	93607001
996	One parent	93607002
624	One parent	93607003
843	One parent	93607004
831	One parent	93607005
723	One parent	93607006
735	One parent	93607007
792	One parent	93607008
681	One parent	93607009
714	One parent	93607010
924	One parent	93607011
378	One parent	93607012
678	One parent	93607013
720	One parent	93607014
780	One parent	93607015
570	One parent	93607016
525	One parent	93607017
768	One parent	93607018
597	One parent	93607019
516	One parent	93607020
270	One parent	93607021
591	One parent	93607022
297	One parent	93607023
468	One parent	93607024
426	One parent	93607025
219	One parent	93607026
408	One parent	93607027
498	One parent	93607028
495	One parent	93607029
387	One parent	93607030
636	One parent	93607031
84	One parent	93607032
480	One parent	94701001
636	One parent	94701002
708	One parent	94701003
633	One parent	94701004
225	One parent	94701005
630	One parent	94701006
105	One parent	94701007
465	One parent	94701008
606	One parent	94701009
771	One parent	94701010
561	One parent	94701011
771	One parent	94701012
813	One parent	94701013
699	One parent	94701014
723	One parent	94701015
537	One parent	94701016
597	One parent	94702001
408	One parent	94702002
444	One parent	94702003
354	One parent	94702004
864	One parent	94702005
309	One parent	94702006
624	One parent	94702007
360	One parent	94702008
591	One parent	94702009
777	One parent	94702010
204	One parent	94702011
660	One parent	94702012
75	One parent	94702013
618	One parent	94702014
474	One parent	94702015
555	One parent	94702016
393	One parent	94702017
543	One parent	94702018
390	One parent	94702019
549	One parent	94702020
678	One parent	94702021
396	One parent	94702022
327	One parent	94702023
735	One parent	94702024
585	One parent	94702025
318	One parent	94702026
885	One parent	94702027
594	One parent	94702028
393	One parent	94702029
471	One parent	94702030
522	One parent	94703001
309	One parent	94703002
483	One parent	94703003
480	One parent	94703004
561	One parent	94703005
327	One parent	94703006
444	One parent	94703007
828	One parent	94703008
582	One parent	94703009
480	One parent	94703010
450	One parent	94703011
621	One parent	94703012
804	One parent	94703013
396	One parent	94703014
783	One parent	94703015
621	One parent	94703016
777	One parent	94703017
648	One parent	94703018
825	One parent	94703019
894	One parent	94703020
654	One parent	94703021
720	One parent	94703022
1101	One parent	94703023
711	One parent	94703024
729	One parent	94703025
834	One parent	94703026
894	One parent	94703027
1302	One parent	94703028
1026	One parent	94703029
924	One parent	94703030
609	One parent	94703031
702	One parent	94704001
639	One parent	94704002
531	One parent	94704003
555	One parent	94704004
408	One parent	94704005
564	One parent	94704006
825	One parent	94704007
531	One parent	94704008
1128	One parent	94704009
582	One parent	94704010
1134	One parent	94704011
786	One parent	94704012
708	One parent	94704013
900	One parent	94705001
741	One parent	94705002
1014	One parent	94705003
381	One parent	94705004
1164	One parent	94705005
705	One parent	94705006
1074	One parent	94705007
969	One parent	94705008
1179	One parent	94705009
930	One parent	94705010
645	One parent	94705011
762	One parent	94705012
993	One parent	94705013
996	One parent	94705014
780	One parent	94705015
621	One parent	94705016
1239	One parent	94705017
486	One parent	94705018
873	One parent	94705019
849	One parent	94705020
690	One parent	94705021
720	One parent	94705022
780	One parent	94705023
759	One parent	94705024
939	One parent	94705025
1017	One parent	94705026
1107	One parent	94705027
1053	One parent	94705028
828	One parent	94705029
1017	One parent	94705030
585	One parent	94705031
690	One parent	83001001
672	One parent	83001002
708	One parent	83001003
549	One parent	83001004
555	One parent	83001005
654	One parent	83001006
189	One parent	83001007
294	One parent	83001008
915	One parent	83001009
450	One parent	83001010
495	One parent	83001011
570	One parent	83001012
303	One parent	83001013
483	One parent	83001014
531	One parent	83001015
747	One parent	83001016
216	One parent	83001017
696	One parent	83001018
504	One parent	83001019
369	One parent	83001020
498	One parent	83001021
96	One parent	83001022
591	One parent	83001023
750	One parent	83001024
507	One parent	83001025
300	One parent	83002001
558	One parent	83002002
429	One parent	83002003
237	One parent	83002004
186	One parent	83002005
195	One parent	83002006
87	One parent	83002007
384	One parent	83002008
528	One parent	83002009
498	One parent	83002010
555	One parent	83002011
225	One parent	83002012
429	One parent	83002013
330	One parent	83002014
654	One parent	83002015
771	One parent	83002016
381	One parent	83002017
423	One parent	83002018
507	One parent	83002019
690	One parent	83003001
1410	One parent	83003002
1089	One parent	83003003
396	One parent	83003004
993	One parent	83003005
612	One parent	83003006
99	One parent	83003007
594	One parent	83003008
1059	One parent	83003009
276	One parent	83003010
783	One parent	83003011
348	One parent	83003012
591	One parent	83003013
537	One parent	83003014
651	One parent	83003015
429	One parent	83003016
528	One parent	83003017
288	One parent	83003018
720	One parent	83003019
462	One parent	83004001
192	One parent	83004002
348	One parent	83004003
189	One parent	83004004
447	One parent	83004005
603	One parent	83004006
393	One parent	83004007
507	One parent	83004008
438	One parent	83004009
858	One parent	83004010
798	One parent	83004011
306	One parent	83005001
216	One parent	83005002
354	One parent	83005003
144	One parent	83005004
384	One parent	83005005
255	One parent	83005006
321	One parent	83005007
132	One parent	83005008
333	One parent	83005009
69	One parent	83005010
669	One parent	83005011
420	One parent	83005012
333	One parent	83005013
390	One parent	83005014
585	One parent	83005015
414	One parent	83006001
348	One parent	83006002
150	One parent	83006003
375	One parent	83006004
198	One parent	83006005
372	One parent	83006006
531	One parent	83007001
609	One parent	83007002
435	One parent	83007003
312	One parent	83007004
135	One parent	83007005
225	One parent	83007006
240	One parent	83007007
330	One parent	83007008
309	One parent	83007009
513	One parent	83007010
393	One parent	83007011
594	One parent	83007012
315	One parent	83007013
240	One parent	83007014
405	One parent	83007015
513	One parent	83007016
144	One parent	83007017
150	One parent	83007018
765	One parent	83007019
567	One parent	83007020
72	One parent	83007021
540	One parent	83007022
282	One parent	83007023
444	One parent	83007024
150	One parent	83007025
573	One parent	83007026
198	One parent	83007027
318	One parent	83007028
213	One parent	83007029
150	One parent	83007030
555	One parent	83007031
387	One parent	83007032
354	One parent	83101001
210	One parent	83101002
630	One parent	83101003
330	One parent	83101004
387	One parent	83101005
267	One parent	83101006
429	One parent	83101007
117	One parent	83101008
366	One parent	83101009
657	One parent	83102001
375	One parent	83102002
162	One parent	83102003
546	One parent	83102004
336	One parent	83102005
606	One parent	83102006
318	One parent	83102007
636	One parent	83102008
408	One parent	83102009
213	One parent	83102010
285	One parent	83102011
312	One parent	83102012
216	One parent	83102013
342	One parent	83102014
573	One parent	83102015
372	One parent	83102016
303	One parent	83102017
132	One parent	83102018
288	One parent	83102019
111	One parent	83102020
336	One parent	83102021
63	One parent	83102022
540	One parent	83102023
105	One parent	83102024
735	One parent	83102025
192	One parent	83102026
147	One parent	83102027
711	One parent	83102028
747	One parent	83102029
351	One parent	83102030
501	One parent	83102031
411	One parent	83102032
246	One parent	83102033
210	One parent	83102034
195	One parent	83103001
621	One parent	83103002
297	One parent	83103003
114	One parent	83103004
96	One parent	83103005
195	One parent	83103006
162	One parent	83103007
372	One parent	83103008
270	One parent	83103009
435	One parent	83103010
144	One parent	83103011
225	One parent	83103012
87	One parent	83103013
54	One parent	83103014
129	One parent	83103015
144	One parent	83103016
219	One parent	83103017
189	One parent	83103018
174	One parent	83103019
168	One parent	83103020
249	One parent	83103021
120	One parent	83103022
480	One parent	83103023
69	One parent	83103024
534	One parent	83103025
108	One parent	83103026
207	One parent	83103027
792	One parent	83103028
270	One parent	83103029
294	One parent	83104001
234	One parent	83104002
312	One parent	83104003
303	One parent	83104004
132	One parent	83104005
318	One parent	83104006
288	One parent	83104007
174	One parent	83104008
492	One parent	83105001
504	One parent	83105002
399	One parent	83105003
645	One parent	83105004
315	One parent	83105005
492	One parent	83105006
351	One parent	83105007
492	One parent	83105008
453	One parent	83105009
321	One parent	83105010
582	One parent	83105011
291	One parent	83105012
303	One parent	83105013
483	One parent	83105014
408	One parent	83105015
429	One parent	83105016
339	One parent	83105017
411	One parent	83105018
564	One parent	83105019
531	One parent	83105020
393	One parent	83105021
525	One parent	83105022
396	One parent	83105023
432	One parent	83105024
363	One parent	83105025
357	One parent	83105026
366	One parent	83105027
279	One parent	83105028
267	One parent	83105029
558	One parent	83105030
390	One parent	83105031
180	One parent	83105032
339	One parent	83106001
522	One parent	83106002
297	One parent	83106003
369	One parent	83106004
327	One parent	83106005
432	One parent	83106006
342	One parent	83106007
294	One parent	83106008
189	One parent	83106009
279	One parent	83106010
306	One parent	83106011
303	One parent	83106012
273	One parent	83106013
273	One parent	83106014
399	One parent	83106015
201	One parent	83106016
474	One parent	83106017
294	One parent	83106018
537	One parent	83106019
411	One parent	83106020
609	One parent	83106021
657	One parent	83106022
198	One parent	83106023
693	One parent	83106024
591	One parent	83106025
534	One parent	83106026
468	One parent	83106027
255	One parent	83106028
390	One parent	83106029
390	One parent	83106030
549	One parent	83106031
123	One parent	83201001
261	One parent	83201002
507	One parent	83201003
243	One parent	83201004
486	One parent	83201005
159	One parent	83201006
249	One parent	83201007
582	One parent	83201008
684	One parent	83201009
141	One parent	83201010
30	One parent	83201011
72	One parent	83201012
93	One parent	83201013
216	One parent	83201014
906	One parent	83202001
1239	One parent	83202002
687	One parent	83202003
480	One parent	83202004
939	One parent	83202005
684	One parent	83202006
669	One parent	83202007
741	One parent	83202008
756	One parent	83202009
801	One parent	83202010
684	One parent	83202011
276	One parent	83202012
618	One parent	83202013
543	One parent	83202014
177	One parent	83202015
126	One parent	83202016
237	One parent	83202017
462	One parent	83202018
624	One parent	83202019
627	One parent	83202020
822	One parent	83202021
744	One parent	83202022
531	One parent	83202023
636	One parent	83202024
699	One parent	83202025
900	One parent	83202026
1020	One parent	83202027
927	One parent	83202028
855	One parent	83202029
159	One parent	83202030
594	One parent	83202031
855	One parent	83202032
555	One parent	83202033
633	One parent	83202034
720	One parent	83202035
777	One parent	83202036
741	One parent	83202037
1014	One parent	83202038
645	One parent	83202039
162	One parent	83203001
351	One parent	83203002
570	One parent	83203003
465	One parent	83203004
264	One parent	83203005
324	One parent	83203006
114	One parent	83203007
318	One parent	83203008
135	One parent	83203009
1044	One parent	83204001
1647	One parent	83204002
990	One parent	83204003
513	One parent	83204004
879	One parent	83204005
675	One parent	83204006
618	One parent	83204007
846	One parent	83204008
750	One parent	83204009
969	One parent	83204010
897	One parent	83204011
702	One parent	83204012
822	One parent	83204013
696	One parent	83204014
996	One parent	83204015
741	One parent	83204016
432	One parent	83204017
660	One parent	83204018
525	One parent	83204019
954	One parent	83204020
1053	One parent	83204021
660	One parent	83204022
567	One parent	83204023
795	One parent	83204024
567	One parent	83204025
366	One parent	83204026
822	One parent	83204027
369	One parent	83204028
600	One parent	83204029
603	One parent	83204030
474	One parent	83204031
705	One parent	83204032
912	One parent	83204033
1038	One parent	83205001
576	One parent	83205002
855	One parent	83205003
732	One parent	83205004
657	One parent	83205005
1221	One parent	83205006
876	One parent	83205007
651	One parent	83205008
840	One parent	83205009
924	One parent	83205010
957	One parent	83205011
810	One parent	83205012
726	One parent	83205013
1098	One parent	83205014
840	One parent	83205015
765	One parent	83205016
771	One parent	83205017
1140	One parent	83205018
849	One parent	83205019
798	One parent	83205020
720	One parent	83205021
798	One parent	83205022
999	One parent	83205023
885	One parent	83205024
888	One parent	83205025
735	One parent	83205026
894	One parent	83205027
576	One parent	83205028
684	One parent	83205029
789	One parent	83205030
999	One parent	83205031
867	One parent	83205032
963	One parent	83205033
747	One parent	83205034
894	One parent	83205035
789	One parent	83205036
666	One parent	83205037
516	One parent	63701001
447	One parent	63701002
504	One parent	63701003
378	One parent	63701004
267	One parent	63701005
417	One parent	63701006
297	One parent	63701007
261	One parent	63701008
222	One parent	63701009
252	One parent	63701010
318	One parent	63701011
378	One parent	63701012
432	One parent	63701013
297	One parent	63701014
234	One parent	63701015
180	One parent	63701016
249	One parent	63701017
222	One parent	63701018
417	One parent	63701019
243	One parent	63701020
240	One parent	63701021
387	One parent	63701022
306	One parent	63701023
291	One parent	63701024
261	One parent	63701025
261	One parent	63701026
216	One parent	63701027
459	One parent	63701028
483	One parent	63702001
456	One parent	63702002
393	One parent	63702003
411	One parent	63702004
597	One parent	63702005
408	One parent	63702006
417	One parent	63702007
435	One parent	63702008
612	One parent	63702009
558	One parent	63702010
480	One parent	63702011
312	One parent	63702012
306	One parent	63702013
609	One parent	63702014
240	One parent	63702015
435	One parent	63702016
471	One parent	63702017
327	One parent	63702018
432	One parent	63702019
390	One parent	63702020
459	One parent	63702021
336	One parent	63702022
33	One parent	63702023
537	One parent	63702024
1290	One parent	63702025
357	One parent	63702026
219	One parent	63702027
498	One parent	63702028
330	One parent	63702029
228	One parent	63702030
369	One parent	63702031
294	One parent	63702032
150	One parent	63702033
420	One parent	63702034
750	One parent	63702035
432	One parent	63702036
648	One parent	63703001
588	One parent	63703002
231	One parent	63703003
405	One parent	63703004
522	One parent	63703005
540	One parent	63703006
696	One parent	63703007
405	One parent	63703008
348	One parent	63703009
525	One parent	63703010
498	One parent	63703011
477	One parent	63703012
204	One parent	63703013
120	One parent	63703014
141	One parent	63703015
99	One parent	63703016
240	One parent	63703017
570	One parent	63703018
753	One parent	63703019
369	One parent	63703020
825	One parent	63703021
477	One parent	63703022
522	One parent	63703023
594	One parent	63703024
447	One parent	63703025
783	One parent	63703026
849	One parent	63703027
639	One parent	63703028
777	One parent	63703029
525	One parent	63703030
255	One parent	63703031
324	One parent	63703032
126	One parent	63703033
324	One parent	63703034
261	One parent	63703035
420	One parent	63703036
573	One parent	63703037
72	One parent	63703038
543	One parent	63704001
192	One parent	63704002
69	One parent	63704003
384	One parent	63704004
666	One parent	63704005
390	One parent	63704006
384	One parent	63705001
612	One parent	63705002
531	One parent	63705003
705	One parent	63705004
543	One parent	63705005
438	One parent	63705006
252	One parent	63705007
273	One parent	63705008
471	One parent	63705009
459	One parent	63705010
303	One parent	63705011
327	One parent	63705012
219	One parent	63705013
231	One parent	63705014
255	One parent	63705015
474	One parent	63705016
399	One parent	63705017
438	One parent	63705018
480	One parent	63705019
447	One parent	63705020
549	One parent	63705021
312	One parent	63705022
528	One parent	63705023
234	One parent	63705024
450	One parent	63705025
438	One parent	63705026
474	One parent	63705027
384	One parent	63705028
522	One parent	63705029
402	One parent	63705030
435	One parent	63705031
753	One parent	63801001
375	One parent	63801002
630	One parent	63801003
702	One parent	63801004
549	One parent	63801005
468	One parent	63801006
687	One parent	63801007
891	One parent	63801008
921	One parent	63801009
426	One parent	63801010
363	One parent	63801011
666	One parent	63801012
894	One parent	63801013
699	One parent	63801014
564	One parent	63802001
564	One parent	63802002
438	One parent	63802003
621	One parent	63802004
495	One parent	63802005
639	One parent	63802006
576	One parent	63802007
216	One parent	63802008
783	One parent	63802009
504	One parent	63802010
495	One parent	63802011
540	One parent	63802012
219	One parent	63802013
159	One parent	63802014
234	One parent	63802015
729	One parent	63803001
498	One parent	63803002
480	One parent	63803003
408	One parent	63803004
267	One parent	63803005
390	One parent	63803006
537	One parent	63803007
183	One parent	63803008
273	One parent	63803009
195	One parent	63803010
303	One parent	63803011
357	One parent	63803012
537	One parent	63803013
726	One parent	63803014
381	One parent	63803015
558	One parent	63803016
381	One parent	63803017
603	One parent	63803018
291	One parent	63803019
237	One parent	63803020
507	One parent	63803021
732	One parent	63803022
534	One parent	63803023
645	One parent	63803024
528	One parent	63803025
747	One parent	63803026
471	One parent	63803027
558	One parent	63803028
573	One parent	63803029
450	One parent	63803030
753	One parent	63803031
363	One parent	63804001
333	One parent	63804002
348	One parent	63804003
438	One parent	63804004
189	One parent	63804005
63	One parent	63804006
315	One parent	63804007
384	One parent	63804008
219	One parent	63804009
630	One parent	63804010
435	One parent	63804011
327	One parent	63804012
420	One parent	63804013
444	One parent	63804014
708	One parent	63804015
459	One parent	63804016
414	One parent	63804017
351	One parent	63804018
492	One parent	63804019
363	One parent	63804020
528	One parent	63804021
381	One parent	63805001
516	One parent	63805002
366	One parent	63805003
615	One parent	63805004
441	One parent	63805005
267	One parent	63805006
705	One parent	63805007
381	One parent	63805008
429	One parent	63805009
324	One parent	63805010
690	One parent	63805011
315	One parent	63805012
624	One parent	63805013
558	One parent	63805014
144	One parent	63805015
384	One parent	63805016
327	One parent	63805017
486	One parent	63805018
333	One parent	63805019
435	One parent	63805020
324	One parent	63902001
216	One parent	63902002
342	One parent	63902003
600	One parent	63902004
246	One parent	63902005
231	One parent	63902006
60	One parent	63902007
282	One parent	63902008
237	One parent	63902009
360	One parent	63903001
339	One parent	63903002
465	One parent	63903003
399	One parent	63903004
597	One parent	63903005
495	One parent	63903006
252	One parent	63903007
402	One parent	63903008
249	One parent	63904001
678	One parent	63904002
444	One parent	63904003
408	One parent	63904004
321	One parent	63904005
588	One parent	63904006
354	One parent	63904007
330	One parent	63904008
483	One parent	63904009
492	One parent	63904010
270	One parent	63904011
393	One parent	63904012
315	One parent	63904013
654	One parent	63904014
573	One parent	63904015
456	One parent	63904016
501	One parent	63904017
537	One parent	63904018
345	One parent	63904019
435	One parent	63904020
546	One parent	63904021
381	One parent	63904022
384	One parent	63904023
465	One parent	63904024
429	One parent	63904025
453	One parent	63904026
516	One parent	63906001
249	One parent	63906002
501	One parent	63906003
126	One parent	63906004
450	One parent	63906005
69	One parent	63906006
387	One parent	63906007
474	One parent	63907001
225	One parent	63907002
765	One parent	63907003
450	One parent	63907004
363	One parent	63907005
399	One parent	63907006
594	One parent	63907007
375	One parent	63907008
354	One parent	63907009
669	One parent	63907010
684	One parent	63907011
543	One parent	63907012
552	One parent	63907013
588	One parent	63907014
456	One parent	63907015
294	One parent	64001001
219	One parent	64001002
894	One parent	64001003
447	One parent	64001004
585	One parent	64001005
438	One parent	64001006
273	One parent	64002001
297	One parent	64002002
156	One parent	64002003
327	One parent	64002004
39	One parent	64002005
111	One parent	64002006
24	One parent	64002007
150	One parent	64002008
306	One parent	64002009
135	One parent	64002010
96	One parent	64002011
189	One parent	64002012
285	One parent	64002013
174	One parent	64002014
36	One parent	64002015
231	One parent	64002016
213	One parent	64002017
255	One parent	64002018
414	One parent	64002019
300	One parent	64002020
507	One parent	64002021
9	One parent	64002022
39	One parent	64002023
9	One parent	64002024
15	One parent	64002025
501	One parent	64002026
627	One parent	64003001
789	One parent	64003002
333	One parent	64003003
861	One parent	64003004
762	One parent	64003005
537	One parent	64003006
558	One parent	64003007
423	One parent	64003008
492	One parent	64003009
327	One parent	64003010
348	One parent	64003011
846	One parent	64003012
519	One parent	64003013
582	One parent	64003014
231	One parent	64003015
138	One parent	64003016
111	One parent	64003017
276	One parent	64003018
183	One parent	64003019
360	One parent	64003020
177	One parent	64003021
1014	One parent	64003022
777	One parent	64003023
633	One parent	64003024
450	One parent	64003025
558	One parent	64003026
795	One parent	64003027
159	One parent	64003028
165	One parent	64003029
132	One parent	64003030
507	One parent	64003031
483	One parent	64003032
804	One parent	64003033
459	One parent	64003034
762	One parent	64003035
330	One parent	64004001
351	One parent	64004002
276	One parent	64004003
321	One parent	64004004
168	One parent	64004005
288	One parent	64004006
174	One parent	64004007
558	One parent	64004008
252	One parent	64004009
414	One parent	64004010
417	One parent	64004011
39	One parent	30601001
72	One parent	30601002
90	One parent	30601003
57	One parent	30601004
99	One parent	30602001
87	One parent	30602002
72	One parent	30602003
57	One parent	30602004
117	One parent	30602005
111	One parent	30602006
213	One parent	30602007
96	One parent	30602008
96	One parent	30602009
42	One parent	30604001
96	One parent	30604002
63	One parent	30604003
48	One parent	30604004
147	One parent	30605001
138	One parent	30605002
75	One parent	30605003
93	One parent	30605004
69	One parent	30605005
114	One parent	30606001
102	One parent	30606002
51	One parent	30606003
105	One parent	30606004
66	One parent	30607001
90	One parent	30607002
81	One parent	30607003
27	One parent	30607004
213	One parent	30701001
228	One parent	30701002
90	One parent	30701003
120	One parent	30701004
333	One parent	30702001
189	One parent	30702002
330	One parent	30702003
261	One parent	30702004
201	One parent	30702005
216	One parent	30703001
393	One parent	30703002
264	One parent	30703003
279	One parent	30703004
96	One parent	30703005
324	One parent	30703006
255	One parent	30703007
51	One parent	30704001
156	One parent	30704002
60	One parent	30704003
84	One parent	30704004
141	One parent	30705001
243	One parent	30705002
30	One parent	30705003
87	One parent	30705004
180	One parent	30706001
87	One parent	30706002
123	One parent	30706003
177	One parent	30706004
294	One parent	30707001
174	One parent	30707002
225	One parent	30707003
129	One parent	30707004
279	One parent	30708001
165	One parent	30708002
294	One parent	30708003
294	One parent	30708004
159	One parent	30708005
225	One parent	30708006
6	One parent	30801001
87	One parent	30801002
75	One parent	30801003
27	One parent	30801004
225	One parent	30802001
213	One parent	30802002
198	One parent	30802003
219	One parent	30802004
150	One parent	30802005
291	One parent	30802006
192	One parent	30802007
159	One parent	30802008
147	One parent	30802009
249	One parent	30803001
321	One parent	30803002
150	One parent	30803003
165	One parent	30803004
297	One parent	30803005
396	One parent	30803006
174	One parent	30803007
72	One parent	30803008
84	One parent	30803009
303	One parent	30803010
171	One parent	30803011
294	One parent	30803012
330	One parent	30803013
174	One parent	30803014
168	One parent	30804001
162	One parent	30804002
120	One parent	30804003
168	One parent	30804004
171	One parent	30805001
297	One parent	30805002
198	One parent	30805003
255	One parent	30805004
165	One parent	30805005
129	One parent	30805006
198	One parent	30806001
96	One parent	30806002
252	One parent	30806003
66	One parent	30806004
171	One parent	30901001
363	One parent	30901002
267	One parent	30901003
366	One parent	30901004
327	One parent	30901005
306	One parent	30901006
408	One parent	30901007
372	One parent	30901008
231	One parent	30901009
294	One parent	30901010
240	One parent	30901011
285	One parent	30901012
381	One parent	30901013
90	One parent	30901014
300	One parent	30901015
429	One parent	30901016
462	One parent	30901017
213	One parent	30901018
321	One parent	30901019
150	One parent	30901020
102	One parent	30901021
366	One parent	30901022
57	One parent	30901023
90	One parent	30901024
186	One parent	30901025
375	One parent	30901026
405	One parent	30901027
243	One parent	30901028
84	One parent	30901029
414	One parent	30901030
465	One parent	30901031
255	One parent	30902001
216	One parent	30902002
363	One parent	30902003
324	One parent	30902004
333	One parent	30902005
171	One parent	30902006
294	One parent	30902007
417	One parent	30903001
264	One parent	30903002
123	One parent	30903003
255	One parent	30903004
84	One parent	30903005
456	One parent	30904001
282	One parent	30904002
276	One parent	30904003
300	One parent	30904004
435	One parent	30904005
18	One parent	30904006
384	One parent	30904007
417	One parent	30904008
369	One parent	30904009
363	One parent	34501001
585	One parent	34501002
309	One parent	34501003
114	One parent	34501004
318	One parent	34501005
489	One parent	34501006
354	One parent	34501007
282	One parent	34501008
681	One parent	34501009
513	One parent	34501010
375	One parent	34501011
702	One parent	34501012
528	One parent	34501013
378	One parent	34501014
378	One parent	34501015
54	One parent	34502001
450	One parent	34502002
459	One parent	34502003
267	One parent	34502004
201	One parent	34502005
357	One parent	34502006
321	One parent	34502007
363	One parent	34502008
198	One parent	34502009
474	One parent	34502010
384	One parent	34502011
507	One parent	34502012
246	One parent	34502013
132	One parent	34503001
321	One parent	34503002
252	One parent	34503003
378	One parent	34503004
141	One parent	34503005
210	One parent	10101001
195	One parent	10101002
207	One parent	10101003
210	One parent	10101004
120	One parent	10101005
156	One parent	10101006
156	One parent	10101007
174	One parent	10101008
168	One parent	10102001
96	One parent	10102002
153	One parent	10102003
264	One parent	10102004
132	One parent	10102005
123	One parent	10102006
102	One parent	10103001
105	One parent	10103002
111	One parent	10103003
225	One parent	10103004
222	One parent	10103005
54	One parent	10103006
219	One parent	10103007
162	One parent	10104001
369	One parent	10104002
93	One parent	10104003
219	One parent	10104004
60	One parent	10104005
141	One parent	10104006
171	One parent	10104007
63	One parent	10104008
162	One parent	10104009
120	One parent	10104010
78	One parent	10104011
177	One parent	10104012
129	One parent	10104013
96	One parent	10105001
159	One parent	10105002
117	One parent	10105003
195	One parent	10105004
87	One parent	10105005
144	One parent	10105006
192	One parent	10105007
84	One parent	10105008
243	One parent	10105009
54	One parent	10105010
216	One parent	10105011
189	One parent	10105012
279	One parent	10202001
123	One parent	10202002
189	One parent	10202003
144	One parent	10202004
177	One parent	10202005
330	One parent	10202006
348	One parent	10202007
156	One parent	10202008
117	One parent	10202009
213	One parent	10202010
231	One parent	10202011
162	One parent	10202012
135	One parent	10203001
30	One parent	10203002
345	One parent	10203003
69	One parent	10203004
261	One parent	10203005
225	One parent	10203006
114	One parent	10203007
48	One parent	10203008
258	One parent	10203009
105	One parent	10203010
225	One parent	10203011
234	One parent	10203012
141	One parent	10203013
282	One parent	10203014
48	One parent	10203015
249	One parent	10203016
222	One parent	10203017
123	One parent	10203018
42	One parent	10203019
57	One parent	10203020
255	One parent	10203021
90	One parent	10203022
105	One parent	10203023
123	One parent	10203024
156	One parent	10203025
135	One parent	10203026
150	One parent	10203027
78	One parent	10203028
81	One parent	10203029
171	One parent	10203030
252	One parent	10203031
270	One parent	10204001
234	One parent	10204002
183	One parent	10204003
111	One parent	10204004
105	One parent	10204005
123	One parent	10204006
21	One parent	10204007
3	One parent	10204008
3	One parent	10204009
27	One parent	10204010
57	One parent	10204011
318	One parent	10204012
54	One parent	10204013
255	One parent	10204014
405	One parent	10204015
171	One parent	10204016
114	One parent	10204017
228	One parent	10204018
276	One parent	10204019
144	One parent	10204020
117	One parent	10204021
18	One parent	10204022
261	One parent	10205001
369	One parent	10205002
261	One parent	10205003
309	One parent	10205004
348	One parent	10205005
54	One parent	10205006
36	One parent	10205007
237	One parent	10205008
126	One parent	10205009
177	One parent	10205010
117	One parent	10205011
90	One parent	10205012
153	One parent	10205013
105	One parent	10205014
51	One parent	10205015
255	One parent	10205016
165	One parent	10205017
216	One parent	10205018
144	One parent	10205019
150	One parent	10205020
285	One parent	10205021
87	One parent	10206001
240	One parent	10206002
309	One parent	10206003
243	One parent	10206004
90	One parent	10206005
249	One parent	10206006
213	One parent	10206007
153	One parent	10206008
135	One parent	10206009
201	One parent	10206010
93	One parent	10206011
258	One parent	10206012
111	One parent	10304001
168	One parent	10304002
114	One parent	10304003
54	One parent	10304004
189	One parent	10304005
219	One parent	10301001
162	One parent	10301002
177	One parent	10301003
60	One parent	10301004
210	One parent	10301005
129	One parent	10301006
150	One parent	10301007
147	One parent	10301008
204	One parent	10301009
114	One parent	10301010
147	One parent	10301011
216	One parent	10301012
327	One parent	10301013
135	One parent	10302001
162	One parent	10302002
15	One parent	10302003
111	One parent	10302004
201	One parent	10302005
186	One parent	10302006
27	One parent	10302007
141	One parent	10302008
12	One parent	10302009
93	One parent	10302010
135	One parent	10302011
138	One parent	10302012
42	One parent	10302013
93	One parent	10303001
123	One parent	10303002
162	One parent	10303003
54	One parent	10303004
132	One parent	10303005
165	One parent	10401001
198	One parent	10401002
123	One parent	10401003
96	One parent	10401004
87	One parent	10402001
141	One parent	10402002
42	One parent	10402003
132	One parent	10402004
90	One parent	10402005
126	One parent	10402006
111	One parent	10402007
147	One parent	10402008
300	One parent	10403001
201	One parent	10403002
342	One parent	10403003
72	One parent	10403004
63	One parent	10403005
96	One parent	10403006
105	One parent	10403007
93	One parent	10403008
153	One parent	10403009
33	One parent	10403010
123	One parent	10403011
147	One parent	10403012
165	One parent	10403013
243	One parent	10403014
147	One parent	10404001
30	One parent	10404002
42	One parent	10404003
108	One parent	10404004
72	One parent	10404005
213	One parent	10404006
264	One parent	10404007
201	One parent	10404008
138	One parent	10404009
132	One parent	10404010
216	One parent	10404011
84	One parent	10404012
252	One parent	10404013
228	One parent	10404014
171	One parent	10404015
303	One parent	10404016
192	One parent	10404017
48	One parent	10404018
87	One parent	10404019
279	One parent	10404020
297	One parent	10404021
129	One parent	10404022
135	One parent	10404023
201	One parent	10404024
207	One parent	10404025
117	One parent	10405001
84	One parent	10405002
75	One parent	10405003
195	One parent	10405004
186	One parent	10405005
258	One parent	10405006
144	One parent	10405007
360	One parent	10405008
147	One parent	10405009
210	One parent	10405010
291	One parent	10405011
171	One parent	10405012
126	One parent	10405013
165	One parent	10407001
78	One parent	10407002
108	One parent	10407003
168	One parent	10407004
168	One parent	10407005
174	One parent	10407006
267	One parent	10407007
141	One parent	10408001
72	One parent	10408002
120	One parent	10408003
93	One parent	10408004
84	One parent	10408005
222	One parent	10408006
378	One parent	10408007
120	One parent	10408008
114	One parent	10408009
51	One parent	10408010
57	One parent	10501001
6	One parent	10501002
0	One parent	10501003
96	One parent	10501004
135	One parent	10502001
42	One parent	10502002
72	One parent	10502003
54	One parent	10502004
246	One parent	10503001
96	One parent	10503002
261	One parent	10503003
168	One parent	10503004
312	One parent	10503005
204	One parent	10503006
285	One parent	10503007
126	One parent	19100001
219	One parent	19100002
252	One parent	19100003
600	One parent	19100004
207	One parent	19100005
627	One parent	19100006
630	One parent	19100007
402	One parent	19100008
375	One parent	19100009
384	One parent	19100010
624	One parent	19100011
687	One parent	19100012
1173	One parent	19100013
783	One parent	19100014
228	One parent	19100015
975	One parent	19100016
828	One parent	19100017
816	One parent	19100018
1368	One parent	19100019
1269	One parent	19100020
138	One parent	19100021
549	One parent	19100022
351	One parent	19100023
699	One parent	19100024
951	One parent	19100025
561	One parent	19100026
261	One parent	19100027
702	One parent	19100028
795	One parent	19100029
696	One parent	19100030
804	One parent	19100031
888	One parent	19100032
1380	One parent	19100033
1236	One parent	19100034
1515	One parent	19100035
1341	One parent	19100036
1074	One parent	19100037
1017	One parent	19100038
888	One parent	19100039
915	One parent	19100040
867	One parent	19100041
861	One parent	19100042
432	One parent	19100043
789	One parent	19100044
1044	One parent	19100045
579	One parent	19100046
861	One parent	19100047
285	One parent	19100048
522	One parent	19100049
564	One parent	19100050
759	One parent	19100051
876	One parent	19100052
318	One parent	19100053
162	One parent	19100054
312	One parent	19100055
450	One parent	19100056
270	One parent	19100057
213	One parent	19100058
129	One parent	19100059
300	One parent	19100060
435	One parent	19100061
195	One parent	19100062
258	One parent	19100063
198	One parent	19100064
354	One parent	19100065
483	One parent	19100066
1020	One parent	19100067
585	One parent	19100068
1026	One parent	19100069
120	One parent	19100070
279	One parent	19100071
276	One parent	19100072
207	One parent	19100073
636	One parent	19100074
843	One parent	19100075
615	One parent	19100076
141	One parent	19100077
573	One parent	19100078
657	One parent	19100079
1434	One parent	19100080
462	One parent	19100081
768	One parent	19100082
396	One parent	19100083
180	One parent	19100084
855	One parent	19100085
1140	One parent	19100086
1122	One parent	19100087
1251	One parent	19100088
951	One parent	19100089
993	One parent	19100090
1122	One parent	19100091
1272	One parent	19100092
1242	One parent	19100093
1059	One parent	19100094
1989	One parent	19100095
870	One parent	19100096
1119	One parent	19100097
1095	One parent	19100098
1482	One parent	19100099
720	One parent	19100100
1425	One parent	19100101
348	One parent	19100102
303	One parent	19100103
1128	One parent	19100104
714	One parent	19100105
2091	One parent	19100106
423	One parent	19100107
1608	One parent	19100108
951	One parent	19100109
486	One parent	19100110
1107	One parent	19100111
\.


--
-- Name: parentsalive_country_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY parentsalive_country
    ADD CONSTRAINT parentsalive_country_pkey PRIMARY KEY ("parents alive", country_code);


--
-- Name: parentsalive_municipality_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY parentsalive_municipality
    ADD CONSTRAINT parentsalive_municipality_pkey PRIMARY KEY ("parents alive", municipality_code);


--
-- Name: parentsalive_province_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY parentsalive_province
    ADD CONSTRAINT parentsalive_province_pkey PRIMARY KEY ("parents alive", province_code);


--
-- Name: parentsalive_subplace_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY parentsalive_subplace
    ADD CONSTRAINT parentsalive_subplace_pkey PRIMARY KEY ("parents alive", subplace_code);


--
-- Name: parentsalive_ward_pkey; Type: CONSTRAINT; Schema: public; Owner: census; Tablespace: 
--

ALTER TABLE ONLY parentsalive_ward
    ADD CONSTRAINT parentsalive_ward_pkey PRIMARY KEY ("parents alive", ward_code);


--
-- Name: ix_parentsalive_country_country_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_parentsalive_country_country_code ON parentsalive_country USING btree (country_code);


--
-- Name: ix_parentsalive_municipality_municipality_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_parentsalive_municipality_municipality_code ON parentsalive_municipality USING btree (municipality_code);


--
-- Name: ix_parentsalive_province_province_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_parentsalive_province_province_code ON parentsalive_province USING btree (province_code);


--
-- Name: ix_parentsalive_subplace_subplace_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_parentsalive_subplace_subplace_code ON parentsalive_subplace USING btree (subplace_code);


--
-- Name: ix_parentsalive_ward_ward_code; Type: INDEX; Schema: public; Owner: census; Tablespace: 
--

CREATE INDEX ix_parentsalive_ward_ward_code ON parentsalive_ward USING btree (ward_code);


--
-- Name: parentsalive_country_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY parentsalive_country
    ADD CONSTRAINT parentsalive_country_country_code_fkey FOREIGN KEY (country_code) REFERENCES country(code);


--
-- Name: parentsalive_municipality_municipality_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY parentsalive_municipality
    ADD CONSTRAINT parentsalive_municipality_municipality_code_fkey FOREIGN KEY (municipality_code) REFERENCES municipality(code);


--
-- Name: parentsalive_province_province_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY parentsalive_province
    ADD CONSTRAINT parentsalive_province_province_code_fkey FOREIGN KEY (province_code) REFERENCES province(code);


--
-- Name: parentsalive_subplace_subplace_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY parentsalive_subplace
    ADD CONSTRAINT parentsalive_subplace_subplace_code_fkey FOREIGN KEY (subplace_code) REFERENCES subplace(code);


--
-- Name: parentsalive_ward_ward_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: census
--

ALTER TABLE ONLY parentsalive_ward
    ADD CONSTRAINT parentsalive_ward_ward_code_fkey FOREIGN KEY (ward_code) REFERENCES ward(code);


--
-- PostgreSQL database dump complete
--

