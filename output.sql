--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: act_types; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE act_types (
    id integer NOT NULL,
    name character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE act_types OWNER TO ccqpaauqthraad;

--
-- Name: act_types_acts; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE act_types_acts (
    act_id integer,
    act_type_id integer
);


ALTER TABLE act_types_acts OWNER TO ccqpaauqthraad;

--
-- Name: act_types_id_seq; Type: SEQUENCE; Schema: public; Owner: ccqpaauqthraad
--

CREATE SEQUENCE act_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE act_types_id_seq OWNER TO ccqpaauqthraad;

--
-- Name: act_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccqpaauqthraad
--

ALTER SEQUENCE act_types_id_seq OWNED BY act_types.id;


--
-- Name: acts; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE acts (
    id integer NOT NULL,
    name character varying(255),
    description text,
    start_date date,
    end_date date,
    country character varying(255),
    type_of_area character varying(255),
    city character varying(255),
    province character varying(255),
    place_name character varying(255),
    place_description text,
    latitude double precision,
    longitude double precision,
    organization character varying(255),
    country_organization character varying(255),
    supranational_organization boolean,
    "group" character varying(255),
    subgroup character varying(255),
    number_participants integer,
    deaths integer,
    injured integer,
    arrested integer,
    missing integer,
    personal_attacks integer,
    property_attacks integer,
    economic_cost double precision,
    source character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id character varying(255)
);


ALTER TABLE acts OWNER TO ccqpaauqthraad;

--
-- Name: acts_id_seq; Type: SEQUENCE; Schema: public; Owner: ccqpaauqthraad
--

CREATE SEQUENCE acts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE acts_id_seq OWNER TO ccqpaauqthraad;

--
-- Name: acts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccqpaauqthraad
--

ALTER SEQUENCE acts_id_seq OWNED BY acts.id;


--
-- Name: acts_target_categories; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE acts_target_categories (
    act_id integer,
    target_category_id integer
);


ALTER TABLE acts_target_categories OWNER TO ccqpaauqthraad;

--
-- Name: acts_target_subcategories; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE acts_target_subcategories (
    act_id integer,
    target_subcategory_id integer
);


ALTER TABLE acts_target_subcategories OWNER TO ccqpaauqthraad;

--
-- Name: acts_targets; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE acts_targets (
    act_id integer,
    target_id integer
);


ALTER TABLE acts_targets OWNER TO ccqpaauqthraad;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE schema_migrations OWNER TO ccqpaauqthraad;

--
-- Name: target_categories; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE target_categories (
    id integer NOT NULL,
    target_id integer,
    name character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE target_categories OWNER TO ccqpaauqthraad;

--
-- Name: target_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ccqpaauqthraad
--

CREATE SEQUENCE target_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE target_categories_id_seq OWNER TO ccqpaauqthraad;

--
-- Name: target_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccqpaauqthraad
--

ALTER SEQUENCE target_categories_id_seq OWNED BY target_categories.id;


--
-- Name: target_subcategories; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE target_subcategories (
    id integer NOT NULL,
    target_category_id integer,
    name character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE target_subcategories OWNER TO ccqpaauqthraad;

--
-- Name: target_subcategories_id_seq; Type: SEQUENCE; Schema: public; Owner: ccqpaauqthraad
--

CREATE SEQUENCE target_subcategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE target_subcategories_id_seq OWNER TO ccqpaauqthraad;

--
-- Name: target_subcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccqpaauqthraad
--

ALTER SEQUENCE target_subcategories_id_seq OWNED BY target_subcategories.id;


--
-- Name: targets; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE targets (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE targets OWNER TO ccqpaauqthraad;

--
-- Name: targets_id_seq; Type: SEQUENCE; Schema: public; Owner: ccqpaauqthraad
--

CREATE SEQUENCE targets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE targets_id_seq OWNER TO ccqpaauqthraad;

--
-- Name: targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccqpaauqthraad
--

ALTER SEQUENCE targets_id_seq OWNED BY targets.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    role character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO ccqpaauqthraad;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ccqpaauqthraad
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO ccqpaauqthraad;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ccqpaauqthraad
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ccqpaauqthraad
--

ALTER TABLE ONLY act_types ALTER COLUMN id SET DEFAULT nextval('act_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ccqpaauqthraad
--

ALTER TABLE ONLY acts ALTER COLUMN id SET DEFAULT nextval('acts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ccqpaauqthraad
--

ALTER TABLE ONLY target_categories ALTER COLUMN id SET DEFAULT nextval('target_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ccqpaauqthraad
--

ALTER TABLE ONLY target_subcategories ALTER COLUMN id SET DEFAULT nextval('target_subcategories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ccqpaauqthraad
--

ALTER TABLE ONLY targets ALTER COLUMN id SET DEFAULT nextval('targets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ccqpaauqthraad
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: act_types; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY act_types (id, name, description, created_at, updated_at) FROM stdin;
1	Amenaza	Amenazas a altos cargos	2015-10-16 18:26:33.024355	2015-10-16 18:26:33.024355
2	Asaltos/Robos	Asaltos o robos indistintamente	2015-10-16 18:26:33.028298	2015-10-16 18:26:33.028298
3	Asesinatos	Muertes violentas resultado de la acción	2015-10-16 18:26:33.031029	2015-10-16 18:26:33.031029
4	Atentados Armas de Fuego		2015-10-16 18:26:33.033794	2015-10-16 18:26:33.033794
5	Atentados Artefactos Explosivos		2015-10-16 18:26:33.036749	2015-10-16 18:26:33.036749
6	Emboscadas		2015-10-16 18:26:33.040017	2015-10-16 18:26:33.040017
7	Enfrentamientos armados		2015-10-16 18:26:33.042801	2015-10-16 18:26:33.042801
8	Sabotajes		2015-10-16 18:26:33.045759	2015-10-16 18:26:33.045759
9	Secuestros personas		2015-10-16 18:26:33.048664	2015-10-16 18:26:33.048664
10	Secuestros medios transporte		2015-10-16 18:26:33.051396	2015-10-16 18:26:33.051396
11	Propaganda		2015-10-16 18:26:33.054307	2015-10-16 18:26:33.054307
12	Fugas		2015-10-16 18:26:33.057121	2015-10-16 18:26:33.057121
\.


--
-- Data for Name: act_types_acts; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY act_types_acts (act_id, act_type_id) FROM stdin;
94	11
95	1
96	2
97	2
99	5
100	5
57	9
101	5
34	11
58	7
186	2
187	5
188	5
39	2
30	2
28	2
45	5
51	11
46	5
47	5
33	5
48	5
32	2
35	11
37	5
38	2
49	5
50	5
54	9
22	2
4	5
13	7
5	5
18	5
55	2
40	5
6	5
7	5
8	2
9	2
14	5
15	2
10	2
16	2
52	11
56	11
20	5
62	9
64	9
65	11
67	5
81	2
82	2
83	2
84	5
84	2
85	2
86	9
87	2
88	7
89	2
90	2
69	1
93	2
92	11
102	11
103	2
104	11
105	2
106	5
107	2
108	5
66	2
110	2
109	2
71	5
111	2
112	7
70	5
72	9
17	7
19	7
73	2
113	11
74	2
75	2
75	3
115	11
76	5
117	11
116	11
118	12
119	7
120	2
121	2
122	2
123	1
124	2
126	2
127	7
128	2
78	5
79	2
114	9
131	3
130	7
132	4
133	2
134	2
135	3
136	2
137	2
138	2
139	2
140	4
141	12
142	7
143	2
80	4
145	5
146	2
80	5
147	11
190	5
191	4
27	2
26	11
31	2
21	7
192	5
150	2
151	2
195	12
149	7
91	7
153	2
194	2
199	2
197	2
197	4
156	2
155	7
152	12
198	5
200	9
200	4
159	1
189	5
158	2
157	2
160	3
160	2
161	7
193	4
163	2
162	5
164	7
165	4
165	2
201	7
166	11
167	4
202	2
203	7
154	2
170	12
171	2
168	2
169	2
172	2
172	2
172	3
59	5
61	5
174	11
173	2
173	2
175	2
175	7
204	7
176	11
177	2
178	2
179	9
180	9
181	9
183	9
184	7
182	2
185	3
205	2
25	2
207	9
207	4
209	2
210	11
206	7
211	5
208	9
213	5
214	4
215	11
212	5
216	5
217	5
77	7
77	3
218	7
60	2
29	2
29	7
41	5
42	5
43	5
68	5
44	5
63	9
\.


--
-- Name: act_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ccqpaauqthraad
--

SELECT pg_catalog.setval('act_types_id_seq', 12, true);


--
-- Data for Name: acts; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY acts (id, name, description, start_date, end_date, country, type_of_area, city, province, place_name, place_description, latitude, longitude, organization, country_organization, supranational_organization, "group", subgroup, number_participants, deaths, injured, arrested, missing, personal_attacks, property_attacks, economic_cost, source, created_at, updated_at, user_id) FROM stdin;
9	Asalto Banco la Caja Obrera 	"Un grupo sedicioso asalta a mano armada la sucursal Uruguayana del Banco La Caja Obrera y roba unos 4.600 dólares. Entre los asaltantes figura un falso policía". En Actas Tupamaras dice que fue en el mes de agosto, robo en una sucursal de la Caja Obrera, 350.000 pesos (MLN, 1989: 67-74). Al día siguiente la policía encontró la furgoneta utilizada para el atraco, una volkswagen con matrícula de otro vehículo.	1966-05-13	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Uruguayana 3101		\N	\N	MLN - Tupamaros	Uruguay	\N			14	0	\N	0	0	0	1	4.63600000000000012	JCJ, 1977: 618 y MLN, 1989: 67-74, FH: Acción, 14 de Mayo de 1966, p. 6, Diario El País, Montevideo, 14 de marzo de 1966, Diario El País, Montevideo, 15 de marzo de 1966	2015-10-26 11:41:44.688189	2015-11-13 11:18:58.393103	\N
4	Ataque a la Embajada de Brasil OBJETIVO EMBAJADAS?	Sobre la Embajada de Brasil, rompiendo los vidrios. Se dejan volantes con una proclama firmada "Movimiento de Liberación Nacional", en donde se expresa que es represalia contra las maniobras que tropas brasileñas realizan en la frontera con el Uruguay.	1965-07-10	\N	Uruguay	urbana	Montevideo	Montevideo	Embajada de Brasil		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	\N	0	0	0	1	\N	JCJ, 1977: 615	2015-10-26 10:56:46.691917	2015-11-13 10:09:19.093031	\N
15	Asalto en sucursal del Banco Popular en Paso de la Arena	Cuatro militantes del MLN - Tupamaros asaltan una sucursal del Banco Popular en Paso de la Arena, llevándose 7270 dólares.	1966-11-22	\N	Uruguay	\N	Montevideo	Montevideo	c/ Simón Martinez, 6709		\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	\N	\N	0	0	1	7270	(FERNANDEZ HUIDOBRO, 1987: 36-37), PH: El Diario, Montevideo,22 de noviembre de 1966, p. 21, El Día, Montevideo, 23 de noviembre de 1966, p. 9	2015-10-30 18:23:41.637902	2015-11-13 11:30:17.919039	\N
14	Atentado contra Radio Carve	Un día antes de que comenzara una huelga general, el MLN - Tupamaros coloca un artefacto explosivo dentro de una casilla transformadora de la emisora Radio Carve. Según el Diario Época, se dejaron volantes con el siguiente texto: "Radio Carve, vocera de la mentira al servicio de la oligarquía y el imperialismo, defensora del pacto reaccionario golpista, cercenadora de los derechos de los trabajadores, debe ser silenciada. !Viva el paro general! !Tupamaros!" (Diario Época, Montevideo, 16 de septiembre 1966)	1966-09-15	\N	Uruguay	urbana	Montevideo	Montevideo	Emisora ubicada en la zona de Pajas Blancas		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	\N	0	0	0	1	\N	FERNANDEZ ELEUTERIO, 1987: 29-30  FH: Diario Época, Montevideo, 16 de septiembre 1966, Diario El Día, Montevideo, 16 de septiembre, 1966	2015-10-30 18:05:30.293407	2015-11-05 09:02:59.968799	\N
6	Artefacto explosivo contra la Cámara Mercantil de Productos del País	"Dos bombas de gran potencia estallan en la Cámara Mercantil de Montevideo y en el domicilio del presidente de la gremial de Exportadores Barraqueros, donde quedan volantes suscritos por los "Tupamaros", en los que se responsabiliza a los banqueros y latifundistas por la situación económica del país".	1965-12-09	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Rondeau 1908, Montevideo	Cámara Mercantil del Montevideo	\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	\N	0	0	0	1	\N	JCJ, 1977, 616, BLIXEN, 2005: 125 FH: Diario El País, Montevideo, 9 de diciembre de 1965	2015-10-26 11:14:06.538723	2015-11-13 10:56:50.627119	\N
16	Robo de camioneta	El MLN - Tupamaros roba la camioneta Chevrolet que reconocería la policía unos días después y conllevaría a un enfrentamiento con muerte.	1966-12-14	\N	Uruguay	\N	Montevideo	Montevideo	c/ Yaguaneses y la Rambla, en Punta Gorda		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	(JCJ, 1877, 619)	2015-10-30 18:31:33.11707	2015-11-13 11:45:41.323076	\N
7	Ataque con explosivos al domicilio del presidente de la gremial de Exportadores Barraqueros	"Dos bombas de gran potencia estallan en la Cámara Mercantil de Montevideo y en el domicilio del presidente de la gremial de Exportadores Barraqueros, donde quedan volantes suscritos por los "Tupamaros", en los que se responsabiliza a los banqueros y latifundistas por la situación económica del país". El nombre del dirigente gremial era Helmut Wisggang.	1965-12-09	\N	Uruguay	urbana	Montevideo	Montevideo	 Domicilio del presidente de la gremial de Exportadores Barraqueros		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	\N	0	0	0	1	\N	JCJ, 1977: 616, BLIXEN, 2005: 125 FUENTE PRENSA: Diario El País, Montevideo, 9 de diciembre de 1965	2015-10-26 11:17:13.40921	2015-11-13 10:57:42.323105	\N
20	Atentado fallido contra Radio Carve	Acción fallida contra las instalaciones de Radio Carve. Se colocó una bomba que no llego a explotar. La revista chilena Punto Final, atribuye el atentado como motivo de los ataques constantes de la radio hacia la Revolución Cubana.	1967-09-14	\N	Uruguay	\N					\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 625, MAYANS, 1971: 3/11	2015-11-03 12:21:19.873133	2015-11-05 09:05:17.377005	\N
13	Enfrentamiento con la policía FECHA SIN DÍAS, se queda el campo vacío 	Dos militantes de el Coordinador, topan fortuitamente con un policía que les pide la documentación.  Uno de los militantes se da a la fuga, se produce una persecución con tiroteo entre el otro militante y la policía. Tras el incidente, el militante huido, que abogaba por la construcción de "el partido", renunció. Se dirimía el debate en torno a cómo debía ser la nueva organización. 	\N	\N	Uruguay	urbana	Montevideo	Montevideo		"A lo largo de un populoso barrio montevideano"	\N	\N	Coordinador	Uruguay	\N			2	\N	\N	\N	\N	\N	\N	\N	FERNANDEZ HUIDOBRO, 1987, pp: 153-155	2015-10-30 17:26:10.075993	2015-11-02 10:47:04.873563	\N
101	Atentado fallido contra la sede de la Asociación de Diarios	Descubren y desactivan una bomba en la sede de la Asociación de Diarios. Se encuentran volantes del MLN.	1969-04-30	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 640	2016-02-05 18:56:20.191815	2016-02-05 19:33:02.704554	\N
75	Incursión en la sede del MSI en Padua y primeros asesinatos de la organización	Tras un atentado negro perpetuado el 28 de mayo en Piazza Logia en Brescia en el que murieron 8 personas durante una concentración, las BR allanaron la sede provincial del MSI en Padua con la intención de buscar documentos relacionados con el atentado. Durante la incursión se produjo un enfrentamiento y las BR mataron a dos militantes del MSI (Giuseppe Mazzola y Graziano Giralucci). Las BR, pese a que no fueron asesinatos premeditados, reivindicaron la acción como un "incidente sul lavoro".	1974-06-17	\N	Italia	urbana	Padua	Padua, Veneto	via Zabarella, 1		\N	\N	Brigadas Rojas	Italia	\N			\N	2	\N	\N	\N	2	1	\N	SOCCORSO ROSSO, 1976: 253-255	2015-12-11 11:37:51.574083	2016-03-04 12:59:24.550922	\N
22	Robo de explosivos	El comando "Mario Robaina" del MLN - Tupamaros roba explosivos en el polvorín de la Cantera Blanca de Pan de Azúcar (Maldonado), en torno a los 500 kg de gelignita, en la nochevieja del año 1967. Dejan volantes del MLN - Tupamaros. 	1968-01-01	\N	Uruguay	\N	Pan de Azúcar	Maldonado	Cantera Blanca		\N	\N	MLN - Tupamaros	Uruguay	\N	Comando Carlos Flores		\N	0	0	\N	0	0	1	\N	JCJ, 177: 629, FERNÁNDEZ HUIDOBRO, 1987: 213, PH: Diario El País, Montevideo, 3 de enero de 1968, Diario El País, Montevideo, 4 de enero de 1968	2015-11-03 13:31:01.664596	2015-11-05 09:06:20.718105	\N
18	Incendio de dos autobuses	Se incendian dos autobuses de la empresa CUTCSA firmados por "Tupamaros"	1965-11-15	\N	Uruguay	urbana					\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	\N	0	0	0	2	\N	COSTA OMAR, 1978: 256	2015-11-03 08:59:06.485051	2015-11-13 10:26:02.032532	\N
95	Abandono de gelignita frente al domicilio de un capitan del Ejército	100 kg. de gelignita fueron abandonados frente al domicilio del capitán Raúl Manzino, técnico del Servicio de Material y Armamento del Ejército. Junto al material, fueron dejados letreros, uno de ellos hacía la advertencia de "peligro", inscripta en caracteres rojos. Otro tenía una inscripción dirigida al capitán Manzino, firmada por los Tupamaros, que explica que el material se ha descompuesto y resulta peligroso, por lo que se lo entregan allí, para evitarle molestias.	1969-01-07	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	1	0	\N	El País, Montevideo, 8 de febrero de 1969	2016-02-05 12:49:24.406317	2016-02-05 12:49:24.406317	\N
37	Bomba contra las oficinas del Servicio de Propaganda del Consulado brasileño	Debido a las quejas de la dictadura de Brasil, a través del embajador Pio Correa, por el trato que Uruguay tenía con los exiliados brasileños, así como por la posibilidad según la prensa de una intervención, un grupo del MAC coloca una bomba en las oficinas del Servicio de Propaganda del Consulado de Brasil durante la madrugada, sin apenas causar daños. Se pinta en la pared la palabra "Tupamaros" con pintura roja.	1965-01-11	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Convención 1439 al 41		\N	\N	Coordinador	Uruguay	\N	MAC		\N	0	0	0	0	0	1	\N	 FERNÁNDEZ HUIDOBRO, 2012: 112 FH: El Diario, Montevideo, 11 de enero de 1965, p. 14	2015-11-12 17:22:48.619833	2015-11-12 17:36:52.401229	\N
32	Intento fallido de asalto a sucursal del Banco de Cobranza	Miembros del Coordinador intentan asaltar sin éxito una sucursal del Banco de Cobranza en Montevideo, siendo detenidos Julio Marenales y Oscar Andrade Giménez. A las pocas horas fue tenido también Jorge Manera. En (JCJ, 1977: 612) se dice que se llevaron 5800 dólares y que también fue detenido, después de la acción, el cañero Washington Rodríguez Belletti. Esta acción volvió a generar importantes debates a la interna de la organización.	1964-10-14	\N	Uruguay	urbana	Montevideo	Montevideo	C/ Larrañaga 3870		\N	\N	Coordinador	Uruguay	\N			\N	0	1	4	0	0	1	\N	MÁRQUEZ ZACCHINO, 2013: 37-38, JCJ, 1977: 612-613, FH: El País, Montevideo, 15 de octubre de 1964	2015-11-12 13:23:44.047305	2015-11-12 13:23:44.047305	\N
33	Bombas incendiarias contra empresas estadounidenses tras la ruptura de relaciones con Cuba	Como represalias por la ruptura de relaciones con Cuba el día 8 de septiembre, se producen protestas y incidentes en Montevideo. La Universidad fue ocupada por unos 400 estudiantes durante cuatro días hasta que la policía consiguió desalojarlos con varias decenas de detenidos. Al día siguiente de la ruptura de relaciones, se arrojan bombas incendiarias contra dos edificios del City Bank, Moore Mc Cormack Line, Western Telegraph, bombas de alquitrán contra Coca-Cola y se queman dos coches de la Embajada de Estados Unidos. El día 9 continúan las protestas y se lanzan bombas incendiarias, esta vez contra un local de la OEA así como piedras contra los edificios de los diarios El País, El Día, y El Plata causando la ruptura de vidrios. Según Rolando Sasso, estas acciones fueron realizadas por el MAC y demostraron muchas dificultades técnicas para llevarlas a cabo.	1964-09-09	1964-09-11	Uruguay	urbana	Montevideo	Montevideo			\N	\N	Coordinador	Uruguay	\N	MAC		\N	0	\N	\N	0	0	10	\N	SASSO, 2010: 223-224, JCJ, 1977: 612	2015-11-12 15:28:47.632506	2015-11-12 16:01:51.105607	\N
19	Enfrentamiento con la Policía, un militante y un agente muerto	Las bases descubiertas durante los días anteriores, conducen a la policía hasta un criadero de aves en el balneario del Sauce en Canelones. En el interior de la vivienda están dos militantes tupamaros, Mario Robaina Méndez y Wilson José González Rodríguez. Se produce un "confuso" tiroteo en que muere el guerrillero Mario Robaina Méndez y el comisario Antonio Silveira Regalado. Se detiene Wilson José González Rodríguez (JCJ, 1977: 620). Según explicaron posteriormente los periodistas Mercader y de Vera en el libro "Tupamaros. Estrategia y acción" el agente de policía murió por un tiro de otro agente y el tupamaro, herido, se suicidó (Mercader y de Vera, 1971: 137-138).	1966-12-27	\N	Uruguay	urbana	Balneario del Sauce	Canelones	cerca del km. 40 de la Ruta 7	En un criadero de aves	\N	\N	MLN - Tupamaros	Uruguay	\N			2	2	\N	1	0	0	0	\N	JCJ, 1977: 620,  MERCADER Y DE VERA, 1971: 137-138, FH: Acción, 27 de diciembre, portada Diario El País, Montevideo, 28 de diciembre de 1966, El Día, 28 de diciembre, p. 5 y 8	2015-11-03 10:57:28.370833	2016-02-15 09:36:45.556601	\N
27	Robo de armas en las Aduanas de Bella Unión	Robo de armas en la Receptora de Aduanas de Bella Unión por parte de un grupo de la UTAA que formaba parte del Coordinador. Se roban 11 fusiles Máuser de repetición de cinco tiros, modelo 1908 y 8 bayonetas. 	1964-01-01	\N	Uruguay	\N	Bella Unión	Artigas	Receptora de Aduanas		\N	\N	Coordinador	Uruguay	\N	UTAA		\N	0	0	0	0	0	1	\N	JCJ, 1977: 111, SASSO, 2010: 2015, FH: El Día, Montevideo, 12 de enero de 1964, 15, El Diario, 12 de enero de 1964, p. 7	2015-11-11 17:26:07.698033	2016-02-16 15:01:22.341368	\N
77	Cae la base de Robbiano. Enfrentamiento con la policía, un sargento muerto	Tras descubrir la policía una base de las Brigadas Rojas en Robbiano de Mediglia, se realiza un operativo de seguimiento para arrestar a los militantes brigadistas que acudieran a ella. Fueron capturados por separado Piero Bassi y Piero Bertolazzi. Un tercer brigadista, Roberto Ognibene, abrió fuego asesinando al sargento de los carabineros, Felice Maritano. En el tiroteo Ognibene fue herido. En la base se encontraron importantes documentos de la organización.	1974-10-15	\N	Italia	urbana	Robbiano di Mediglia, Milán	Milán, Lombardia			\N	\N	Brigadas Rojas	Italia	\N			\N	1	1	3	0	1	0	\N	SACCOMAN, 2013: 270-271	2015-12-11 12:37:15.988931	2016-03-04 12:59:57.646625	\N
34	Reparto de volantes con el lema: "TNT, Tupamaros No Transamos"	Durante una Convección de la Federación de Estudiante Universitarios de Uruguay (FEUU) en el Paraninfo de la Universidad, militantes del MAC distribuyeron volantes con el título "TNT, Tupamaros No Transamos". Por primera vez aparecía el nombre de Tupamaros y el símbolo de la estrella con la T.	\N	\N	Uruguay	urbana	Montevideo	Montevideo	Paraninfo de la Universidad		\N	\N	Coordinador	Uruguay	\N	MAC		\N	0	0	0	0	0	0	\N	FERNÁNDEZ HUIDOBRO, 2012: 113	2015-11-12 16:21:54.74423	2015-11-12 16:21:54.74423	\N
30	Robo de armas en Minas	Fueron detenidas seis personas por el robo de cinco rifles alemanes, seis revólveres de igual procedencia y mil proyectiles calibre 22, radios y transmisores sustraídos el pasado domingo en el local de ”Casa Ribel S.A.”, en la ciudad de Minas.	1964-04-20	\N	Uruguay	urbana	Minas	Lavalleja	c/ 18 de Julio y Rodó		\N	\N	Coordinador	Uruguay	\N			\N	0	0	6	0	0	1	\N	JCJ, 1977: 611 FH: El Diario, Montevideo, 21 de abril de 1964, portada y p. 22, Acción, Montevideo, 21 de abril de 1964, p.8 	2015-11-12 11:01:57.827572	2015-11-13 09:51:24.442064	\N
35	Acciones de protesta por la subida del precio del transporte firmadas "Tupamaros"	Tras la subida del precio del boleto de transporte, se produjeron "acciones de protesta" por la calle, firmadas con el nombre de Tupamaros. Poco después, en el primer número de 1965 del semanario "El Sol" aparecía un largo artículo firmado por Vivián Trías, titulado "Tupamaros" en donde se explicaba el origen histórico de la palabra.	1964-12-24	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	Coordinador	Uruguay	\N			\N	0	0	0	0	0	\N	\N	FERNÁNDEZ HUIDOBRO, 2012: 114	2015-11-12 16:56:07.557233	2015-11-13 10:04:25.098813	\N
38	Robo de armas en la calle Galicia	Los cuatro grupos que conforman el Coordinador, de cara a resolver las diferencias existentes, deciden llevar a cabo una acción conjunta con el robo de una armería en la calle Galicia, 1238. Se consiguieron tres pistolas Browning, cuatro revólveres Colt, un revólver Saumer, dos revólveres Gecado, cinco pistolas marca Astra, Same Star, Colt y Banincher, quince rifles calibre .22 marca Erre, diez escopetas calibre 16, un grabador y diez mil cartuchos calibre 22. Un grupo del MAC fue el encargado de esconder las armas. Las armas son enterradas en una zona de Pajas Blancas, en la periferia de Montevideo, pero cuando días después van a desenterrarlas, las armas habían desaparecido. Un grupo escindido del MAC fue quien llevo a cabo el robo, como acto de protesta por la situación de enfrentamiento interno que se encontraba el Coordinador. 	1965-02-05	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Galicia, 1238		\N	\N	Coordinador	Uruguay	\N	Los cuatro grupos 		\N	0	0	0	0	0	1	\N	SASSO, 2010: 226, FERNÁNDEZ HUIDOBRO, 2012: 116, FH: El País, Montevideo, 6 de febrero de 1965	2015-11-12 18:08:29.461071	2015-11-12 18:08:44.838046	\N
39	Robo de explosivos en Cerro Blanco	Desconocidos roban 100 fulminantes y 10 metros de mecha a un vecino de Cerro Blanco, a 12 km. de Minas, departamento de Lavalleja. Material empleado en los barrenos para explotar la gelignita.	1964-04-19	\N	Uruguay	\N	Cerro Blanco, Minas	Lavalleja			\N	\N	Coordinador	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 611 FH: El País, Montevideo, 2 de mayo de 1964	2015-11-12 18:37:13.804777	2015-11-13 09:50:38.545853	\N
28	Robo de explosivos en Pan de Azúcar	Robo de 540 kg. de gelignita a la Compañía Nacional de Cemento S.A. de la cantera de Nueva Carrara en Pan de Azúcar, departamento de Maldonado. El robo fue realizado por un grupo de militantes del Partido Socialista de cara a demostrar su compromiso a ingresar en el Coordinador. En JCJ, 1977: 612, se dice que fue el día 25 de marzo. 	1964-04-25	\N	Uruguay	\N	Pan de Azúcar	Maldonado	cantera Nueva Carrara		\N	\N	Coordinador	Uruguay	\N	Militantes del PSU		\N	0	0	0	0	0	1	\N	SASSO, 2010: 219 FH: El Diario, Montevideo, 26 de abril de 1964, Portada y p. 13, Montevideo, El Diario, 27 de abril de 1964, p. 18	2015-11-12 10:00:45.319802	2015-11-13 09:52:41.690852	\N
26	Reparto de comidas del "Comando del Hambre", Operación Manzanares	Un comando del MAC, uno de los grupos que forma el Coordinador, roba un camión de los almacenes Manzanares (artículos de primera necesidad, también comestibles y postres de las fiestas) que se distribuye por el cantegril de Timbués y Aparicio Saravia. Se lanzaron volantes firmados por el “Comando Juvenil José Artigas”. 	1963-12-24	\N	Uruguay	urbana	Montevideo	Montevideo	cantegril de Timbúes y Aparicio Saravia		\N	\N	Coordinador	Uruguay	\N	MAC	Comando Juvenil José Artigas	10	0	0	0	0	0	1	\N	FERNÁNDEZ HUIDOBRO, 2012: 76; SASSO, 2010: 214	2015-11-11 17:14:34.656919	2016-02-16 15:00:24.404181	\N
31	Intento fallido de robo en Sudamtex	Dos militantes del Coordinador intentaron robar con una moto unos 20 mil pesos que debía traer el contador de una fábrica de Sudamtex. Los movimientos sospechosos alertaron a los trabajadores que avisaron a la policía. Fue detenido José Mujica y pudo escapar Rubén Archetta. La acción pasó como delito común, pero generó la misma polémica que en el caso de los tres cañeros detenidos. \r\n	1964-07-02	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Acevedo Díaz	Esperaban afuera a que llegara el contador con el dinero	\N	\N	Coordinador	Uruguay	\N			2	0	0	1	0	1	0	\N	FERNÁNDEZ HUIDOBRO, 1986: 146, PERNAS, 2013: 927-940 (edición digital) FH: El País, Montevideo, 2 de julio de 1964	2015-11-12 12:52:44.128174	2016-02-17 10:15:19.520252	\N
51	Banderas de las BR para conmemorar la liberación antifascista, en los barrios de Lorentaggio y Giambelino	El 25 de abril de 1971, día de la conmemoración de la liberación antifascista y el final de la guerra, las Brigadas Rojas colocan al menos doscientas banderas con el símbolo de la organización en los barrios milaneses de Lorentaggio y Giambelino. Una acción que repitieron el mismo día pero un año más tarde.	1971-04-25	\N	Italia	urbana	Milán	Milán, Lombardia	barrios de Lorentaggio y Giambelino		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	0	\N	CURCIO y SCIALOJA, 1994: 73	2015-11-17 10:45:59.97215	2016-03-04 12:46:21.801493	\N
50	Incendio de los coches de Remo Casagrande y Mario Liparoti, exponentes de la extremaderecha	Las Brigadas Rojas incendian los coche de Remo Casagrande y Mario Liparoti e intento fallido contra el de Natale Gattuso en el barrio Quarto Oggiaro. Las BR reivindicaron estos ataques con un manifiesto difundido por el barrio, firmado el 21 de febrero.	1972-02-19	\N	Italia	urbana	Milán	Milán, Lombardia	barrio Quarto Oggiaro		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	3	\N	SACCOMANN, 2013: 64	2015-11-17 10:39:35.597406	2016-03-04 12:49:12.771175	\N
52	Banderas de las BR para conmemorar la liberación antifascista, en los barrios de Lorentaggio y Giambelino	Por segundo año consecutivo, el 25 de abril de 1972, día de la conmemoración de la liberación antifascista y el final de la guerra, las Brigadas Rojas colocan al menos doscientas banderas con el símbolo de la organización en los barrios milaneses de Lorentaggio y Giambelino. 	1972-04-25	\N	Italia	urbana	Milán	Milán, Lombardia	barrios de Lorentaggio y Giambelino.		\N	\N	Brigadas Rojas	Milán	\N			\N	0	0	0	0	0	0	\N	CURCIO y SCIALOJA, 1994: 73	2015-11-17 10:50:22.993012	2016-03-04 12:50:03.740161	\N
5	Atentado contra la empresa Bayer	A las 23:50 una bomba destruye la puerta de los depósitos de la "Bayer Químicas Unidas Limitadas". Los autores del atentado, según la prensa dos personaron que llegaron en una moto, dejaron una proclama firmada "Tupamaros", con la leyenda: "Mueran los yanquis asesinos de Vietnam. Frente a la intervención asesina en Vietnam los pueblos oprimidos se unen para aplastar el enemigo común. La Bayer, empresa nazi, ayuda con gases a la intervención de los gringos. Fuera los gringos liberticidas. Viva el Vietcong. Viva la Revolución. Tupamaros. Por primera vez, estos volantes también fueron distribuidos en las redacciones de los diarios. 	1965-08-09	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Yaguarón 1569		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	\N	0	0	0	1	\N	(JCJ, 1977: 615) (COSTA, 1972: 256) Fuente documental: Volante: Acción contra la Bayer, FH: El Día, 10 de agosto, portada, El Diario, 11 Agosto, p. 20	2015-10-26 11:07:12.444011	2015-11-13 10:20:09.890643	\N
40	Petardos contra los domicilios del consejero Alberto Heber y el presidente de la Cámara de Diputados, Mario Hebert	A las 02:50 explota un petardo en la entrada del domicilio del consejero Alberto Heber, situado en la calle Paraguay 1211. 15 minutos después, estalla otro petardo en el domicilio de su hermano, Mario Heber, Presidente de la Cámara de los Diputados, situado en la avenida 19 de abril 3521. Sólo daños materiales. En COSTA OMAR, 1978: 256, aparece el día 15 de noviembre.	1965-10-15	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Paraguay 1211 y av. 19 de abril 3521		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	2	\N	COSTA OMAR, 1978: 256, FH: El Diario, Montevideo, 15 de octubre de 1965, p. 15	2015-11-13 10:50:50.803004	2015-11-13 10:53:10.557665	\N
8	Robo de armas en Carpa de la FUTI	"Sediciosos armados invaden la carpa de la Opera Cómica de Federación Uruguaya de Teatros Independientes (FUTI) y roban 10 fusiles Mauser con sus bayonetas y 18 uniformes militares prestados por el Ejército con motivo de la representación de la obra del autor inglés Arnold Wesker "Papas Fritas con Todo", y dejan volantes de propaganda". Unos días después, el 30 de marzo de ese año, el MLN - Tupamaros devuelve los uniformes robados, dejando una bolsa en el hall del Teatro Victoria (JCJ, 1977, p 618). 	1966-02-18	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Sierra y Hocquart		\N	\N	MLN - Tupamaros	Uruguay	\N			2	0	\N	0	0	0	1	\N	JCJ, 1977: 618 FH:  El Día, Montevideo, 19 de Febrero de 1966, p. 7,  El País, Montevideo, 19 de febrero de 1966, Diario Época, Montevideo, 19 de febrero de 1966	2015-10-26 11:30:15.481047	2015-11-13 11:07:07.743335	\N
100	Atentado fallido contra las oficinas de la Misión Naval de la Embajada de EEUU ¿FALTA TIPOLOGÍA?	Descubren y desactivan una bomba colocada en la Misión Naval de la Embajada de Estados Unidos. Se encuentran volantes del MLN 	1969-04-30	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 640	2016-02-05 18:53:34.219365	2016-02-05 18:53:34.219365	\N
10	Robo en armería "El Cazador" CAMBIAR TIPOLOGÍA	En la noche de la víspera de la celebración de elección, el MLN - Tupamaros roba 20 armas largas, 50 revólveres, 8.000 municiones y entre 15 y 20 uniformes en la armería “El Cazador” (Actas, 1987: 80). Según la Junta de Comandantes en Jefe, fue el día 27: "Un grupos armado penetra en una armería y roba 63 armas de diversos calibres, 10.000 cartuchos y 72 balizas a pila. Mediante un boquete pasan al local contiguo de la Intendencia de Policía y roban 4 uniformes policiales, uno de oficial, otro de agente y dos de cadete" (JCJ, 1977: 619). Según la prensa, se accedió a un local de la Inspección General de Policía donde trabajaba el sastre que confecciona los uniformes de la Policía y, desde ahí, accedieron por un segundo agujero hasta la armería "El Cazador.	1966-11-26	\N	Uruguay	urbana	Montevideo	Montevideo	a/ Uruguay, 868 y 872		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	2	\N	Actas, 1987: 75-80, JCJ, 1977: 619 FH: El Día, Montevideo, 28 de noviembre de 1966, p. 12	2015-10-26 12:25:41.154054	2015-11-13 11:43:27.577157	\N
57	Secuestro de Ernesto Regalado Dueñas	Secuestro del industrial Ernesto Regalado Dueñas por "El Grupo". El secuestrado resultó herido durante el operativo falleciendo posteriormente.	1971-02-01	1971-02-01	El Salvador	rural	San Salvador	San Salvador			\N	\N	El Grupo	El Salvador	\N			0	1	\N	\N	\N	\N	\N	\N	Publicaciones Especiales de Prensa Comunista, sn (Octubre 1977). Revista del Ejército Revolucionario del Pueblo (ERP)	2015-11-19 12:34:49.195347	2015-11-19 12:34:49.195347	\N
41	Incendio del garage de Giuseppe Leoni, dirigente de la Sit-Siemens	Primera acción de las Brigadas Rojas. Se incendia la puerta del garage del ingeniero Giuseppe Leoni, dirigente de la Sit-Siemens, prendiendo fuego a dos bidones con líquido inflamable.	1970-09-17	\N	Italia	urbana	Brescia	Brescia, Lombardía	via Moreto, nº 30		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 50	2015-11-16 12:53:35.051225	2016-03-04 12:31:57.342983	\N
61	Incendio de 6 coches de sindicalistas de la Fiat Mirafiori inscritos a la CISNAL	Un comando de la Columna de Turín de las Brigadas Rojas, comete una acción similar a la anterior, quemando seis coches de sindicalistas de derechas de la Fiat Mirafiori inscritos a la CISNAL.	1972-12-17	\N	Italia	urbana	Turín	Turín, Piamonte 			\N	\N	Brigadas Rojas		\N	Columna de Turín		\N	0	0	0	0	0	6	\N	SOCCORSO ROSSO, 1976: 131-132	2015-11-19 16:44:33.686872	2016-03-08 11:25:06.771006	\N
62	Secuestro express de Bruno Labate, secretario provincial de la CISNAL	Un núcleo de las Brigadas Rojas secuestra a Bruno Labate, secretario provincial de la CISNAL. A la salida de su casa, lo introducen en una furgoneta y lo interrogan durante cuatro horas. Después, lo dejan atado en frente de la FIAT Mirafiori, coincidiendo con la salida de los obreros de la fábrica. Un volante que comenzaba "Questo è Bruno Labate" explicaba quién era él y la CISNAL, cómo se había desarrollado la acción. Unos días después, las BR harán público otro volante en donde se transcribía parte del interrogatorio ("Le assunzioni tramite la CISNAL")	1973-02-12	\N	Italia	urbana	Turín	Turín, Piamonte 			\N	\N	Brigadas Rojas		\N	Columna de Turín		\N	0	1	0	0	1	0	\N	SOCCORSO ROSSO, 1976: 134-137	2015-11-19 17:24:38.538259	2016-03-04 12:53:42.139366	\N
73	Incursión en el Centro Don Sturzo de Turín	Durante el secuestro de Sossi, las BR efectúan dos incursiones simultáneas en Turín y Milán. En esta acción se allanó el Centro Don Sturzo, presidido por el parlamentario democristiano Giuseppe Costamagna, se amordazó al empleado Giancarlo Fava y se robaron documentos del archivo. Antes de irse, con un spray se dibujó la estrella de cinco puntas y "Creare organizzare il potere proletario armato". Una llamada a La Stampa y un comunicado, reivindicaron la acción.	1974-05-02	\N	Italia	urbana	Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	1	0	0	1	1	\N	TESSANDORI, 1977: 163	2015-12-11 10:49:47.277626	2016-03-04 12:58:42.243472	\N
58	Enfrentamiento en los Planes de Renderos	Enfrentamiento entre un comando de las FPL y una patrulla de la Guardia Nacional. Muere Mauricio González Domínguez "Antonio", militante de las FPL.	1971-04-04	1971-04-04	El Salvador	urbana	Planes de Renderos	San Salvador	Panchimalco		\N	\N	Fuerzas Populares de Liberación "Farabundo Martí" (FPL)	El Salvador	\N			\N	1	\N	\N	\N	\N	\N	\N	El Rebelde Nº 64 (Febrero 1978). Órgano de las FPL	2015-11-19 12:43:24.806003	2015-11-19 12:46:09.106178	\N
45	Incendio de los coches de Franco Moiana, militante de "Giovane Italia" y de Paolo Romeo, militante del MSI	Las Brigadas Rojas queman el coche de Franco Moiana, militante de "Giovane Italia", un Fiat Cinquecento azul. Esa misma noche, incendian también el coche de Paolo Romeo, militante del MSI, un Simca 1000. Las BR reivindicaron el atentado en un comunicado el día 25 de abril, titulado "Processo popolare a tutti i Fascisti" en donde daban información personal de ambos y señalaban que era el primer paso del Proceso popular contra todos los fascistas. 	1971-04-23	\N	Italia	urbana	Milán	Milán, Lombardia			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	2	\N	SACCOMAN, 2013: 61	2015-11-16 18:43:36.204022	2016-03-04 12:46:08.804962	\N
43	Incendio del coche de Enrico Loriga, jefe de personal de la Pirelli	Las Brigadas Rojas vuelven a atentar, al igual que la anterior vez, por motivo del despido de Della Torre. Esta vez, contra el coche de Enrico Loriga, jefe de personal de la Pirelli. El coche, un Alda Romeo 1750 con matrícula MI 30797, era propiedad de la empresa. En comunicado de autoría fue compartido con el de la anterior acción. Sobre Loriga, hacian referencia a que éste había sido el encargado de firmar el despido de Della Torre por lo que no pudo escapar del "Tribunale del Popolo".	1970-12-08	\N	Italia	urbana	Milán	Milán, Lombardia			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 50-51, SOCCORSO ROSSO, 1976: 80	2015-11-16 17:28:40.155514	2016-03-04 12:42:45.561022	\N
44	Bombas contra la pista de pruebas de la Pirelli en Lainate	Tres camiones en la pista de pruebas de la Pirelli en Lainate, mientras estaban siendo las negociaciones para renovar el contrato del sector de la goma. De las 8 bombas que se colocaron en la noche del domingo 25 de enero, sólo explotaron 3. En el lugar de acción se dejó un volante con el texto "Della Torre - Contratto - Tagli della paga - Mac Mahon". En Soccorso Rosso (1976: 292) se fecha el día 21 de enero.	1971-01-25	\N	Italia	urbana	Lainate	Milán, Lombardía	Pista de prueba de la Pirelli		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SOCORSO ROSSO, 1976: 292; SACCOMAN, 2013 :56	2015-11-16 18:03:38.379108	2016-03-04 12:44:20.317245	\N
48	Incendio del coche de Corrado Ferrara, sindicalista de la CISNAL	Las Brigadas Rojas incendian el coche de Corrado Ferrara, sindicalista de la Confederazione Italiana Sindacati Nazionali dei Lavoratori (CISNAL), sindicato relacionado con el MSI, fundado en los años 50.	1972-01-15	\N	Italia	urbana	Milán	Milán, Lombardia	via Lorenteggio, 230		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 63	2015-11-17 09:55:17.316747	2016-03-04 12:48:24.543977	\N
49	Incendio de los coches de Attilio Carelli, consejero de zona del MSI, e Ignazio La Russa, militante del Fronte Gioventù MSI	Las Brigadas Rojas incendian los coches de Attilio Carelli, consejero de zona del MSI, e Ignazio La Russa, militante del Fronte Gioventù MSI. Las BR se atribuyeron la acción en un comunicado firmado "Brigate Rosse - Comando Zona Lorentaggio", difundido 5 días después.	1972-01-20	\N	Italia	urbana	Milán	Milán, Lombardía	Caso de Ignazio La Russa: via Capranica		\N	\N	Brigadas Rojas	Italia	\N	Comando Zona Lorentaggio		\N	0	0	0	0	0	2	\N	SACCOMAN, 2013: 63	2015-11-17 10:10:47.313869	2016-03-04 12:48:37.684234	\N
64	Secuestro de Ettore Amerio, jefe de personal de la Fiat	Primer secuestro prolongado de las Brigadas Rojas, con una duración de 8 días. A las 7:30 del 10 de diciembre de 1973, un grupo de brigadistas disfrazados del SIP (Società Idroelettrica Piemontese) introducen a Ettore Amerio en una furgoneta a la salida de su casa. Tras 8 días retenido, en la mañana del día 18 es puesto en libertad. 	1973-12-10	1973-12-18	Italia	urbana	Turín	Turín, Piamonte 			\N	\N	Brigadas Rojas		\N	Columna de Turín		\N	0	0	0	0	1	0	\N	SOCCORSO ROSSO, 1976: 163-184	2015-11-20 12:02:26.650227	2016-03-04 12:54:19.606559	\N
65	Acción propagandística en diferentes fábricas	Durante el secuestro de Ettore Amerio, las Brigadas Rojas realizaron varias acciones propagandísticas, distribuyendo volantes en diferentes fábricas. Las más espectaculares, se realizaron durante el horario de salida de la Sit-Siemens y la Breda de Porto Marghera en Venecia, cuando dos coches con altavoces emitieron un programa de 45 minutos elaborado por las BR. Las consignas y la lectura de prensa se intercalan con "Bandiera Rossa" y la Internacional. Una multitud, se reunió alrededor. Ese mismo día, se llevó a cabo una acción similar en la Fiat Mirafiori de Milán, teniendo que intervenir de urgencia la policía (Lotta Continua, 13 de diciembre de 1973, p. 4)	1973-12-12	\N	Italia	urbana	Venecia y Milán	Venecia, Veneto y Milan, Lombardia			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	0	\N	SOCCORSO ROSSO, 1976: 172, Lotta Continua, 13 de diciembre de 1973, p. 4	2015-11-20 12:25:02.069423	2016-03-04 12:55:21.934068	\N
66	Asalto a la sede de la CISNAL de Mestre	Tres militantes armados de las Brigadas Rojas irrumpen en la sede del sindicato la CISNAL de Mestre, en donde había cuatro empleados. Los retienen, los atan y los introducen dentro de un armario, robando el archivo de los miembros de la organización. Después enviaron un ciclostilado a la agencia de noticias ANSA y a las plantas de Proto Marghera titulado "Via i fascista dalle fabbriche!"	1974-03-04	\N	Italia	urbana	Mestre, Venecia	Venecia, Véneto	via Verdi 133		\N	\N	Brigadas Rojas	Italia	\N			3	0	\N	0	0	4	1	\N	l´Unità, Italia, 5 de marzo de 1974, p. 2	2015-11-20 12:55:21.760804	2016-03-04 12:56:28.461333	\N
190	Incendio coche del armador Guido Canale	Se incendia el coche del armador Guido Canale	1975-01-21	\N	Italia	urbana	Génova	Liguria, Génova			\N	\N	Brigadas Rojas		\N			\N	0	0	0	0	0	1	\N	CONTROINFORMAZIONE, Milán, nº 7-8, 134	2016-03-01 10:16:42.750323	2016-03-04 13:03:40.097306	\N
59	Incendio de 9 coches de sindicalistas de la Fiat Mirafiori inscritos a la CISNAL	En un contexto de protestas de los obreros del sector metalúrgico, se incendian 9 coches, casi de manera simultánea, en diversos lugares de Turín de sindicalistas de la CISNAL, sindicato de derechas relacionado con el MSI.  Con un volante, titulado "Schiacciamo i fascisti a Mirafiori e Rivalta! Cacciamoli dalle nostre fabbriche e dai nostri quartieri!", las Brigadas Rojas asumieron la autoría, siendo la primera acción de la Columna de Turín.	1972-11-26	\N	Italia	urbana	Turín	Turín, Piamonte			\N	\N	Brigadas Rojas		\N	Columna de Turín		\N	0	0	0	0	0	9	\N	SOCCORSO ROSSO, 1976: 127-130	2015-11-19 15:26:43.956234	2016-03-08 11:24:42.12171	\N
63	Secuestro express de Michele Mincuzzi, dirigente de la Alfa Romeo	Con una dinámica similar a la acción contra Macchiarini y a partir de la información que se consiguió en la acción de la UCID, las Brigadas Rojas secuestran al ingeniero dirigete técnico de la Alfa Romeo de Arese, Michele Mincuzzi. A las 20:15, dos personas con pasamontañas y armadas, introdujeron al ingeniero a la salida de su casa, en un furgoneta Fiat 950 conducida por una tercera persona. Casi tres horas después, a las 22:55, Mincuzzi fue dejado en frente de la entrada de la Alfa Romeo, atado de manos y pies con la cabeza cubierta y con un cartel firmado por las "Brigate Rosse" y, por alrededor, volantes. 	1973-06-28	\N	Italia	\N	Milán	Milán, Lombardia 	Se recoge en Via Faruffini, 8 y se deja en Alfa Romeo de Arese		\N	\N	Brigadas Rojas	Italia	\N	Columna de Milán		3	0	1	0	0	1	0	\N	SACCOMAN, 2013: 91-92	2015-11-20 10:19:03.09878	2016-03-25 17:57:00.574125	\N
54	Secuestro "express" de Idalgo Macchiarini, dirigente de la Sit-Siemens	Las Brigadas Rojas comenten su primer secuestro, en frente de la instalaciones de la Sit-Siemens en Via Tempesta. Durante un breve tiempo introducen a Idalgo Macchiarini en una furgoneta Fiat 750 y lo someten a un "proceso político", interrogándolo durante 20 minutos. Después, se le abandonará con un cartel con el texto: "BRIGATE ROSSE - MORDI E FUGGI! - NIENTE RESTERÀ IMPUNITO! - COLPISCINE UNO PER EDUCARNE CENTO! - TUTTO IL POTERE AL POPOLO ARMATO!" La finalidad, según Renato Curcio, era llevar a cabo una acción “al estilo de los Tupamaros ” contra una personaje particularmente odiado, y hacerle una fotografía que consiguiera reproducir su mensaje mediante la difusión en prensa (Curcio y Scialoja, 1994: 78-79). En la acción participaron cuatro militantes de las BR, Alberto Franceschini, Mario Moretti, Pietro Morlacchi y Giacomo Catteneo (ex partisano que no continuó la organización después de esta acción). En la fotografía, que efectivamente será difundida en la prensa, aparece el individuo con el cártel y dos pistolas apuntándole en la cabeza. Ese mismo día, las BR, reivindicaban la autoría con un comunicado. 	1972-03-03	\N	Italia	urbana	Milán	Milán, Lombardia	via Tempesta		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	1	0	\N	CURCIO y SCIALOJA, 1994: 78-79, SACCOMAN, 2013: 70-71, SOCORSO ROSSO, 1976: 109-116	2015-11-17 11:44:55.155132	2016-03-04 12:49:30.194698	\N
55	Incursión en una sede del MSI de Cesano Boscone y agresión a Di Mino Bartolomeo	A las 22 horas, cinco militantes de las Brigadas Rojas asaltaron la sede del MSI en Cesano Boscone y agredieron al vicesecretario Di Mino Bartolomeo en la cabeza, le ataron y le fotografiaron. Se robaron algunos documentos y se escribió en la pared "Brigate Rosse"	1972-03-13	\N	Italia	urbana	Cesano Boscone, Milán	Milán, Lombardía	via Acacie, 1		\N	\N	Brigadas Rojas	Italia	\N			5	0	1	0	0	1	1	\N	SACCOMAN, 2013: 76	2015-11-19 11:58:28.114123	2016-03-04 12:49:50.103607	\N
56	Colocación de banderas en solidaridad con las primeras detenciones	Tras los primeras detenciones de brigadistas, fueron colocadas ocho telas rojas con el texto escrito "W le Brigate Rosse" cerca de la entrada de la fábrica de Sit-Siemens de Piazzale Zavattari y en una valla de una construcción de la empresa Carlo Pessina e C. en la Piazza Abbiategrasso. Dos días antes, el 2 de mayo, había sido descubierta una base en via Boiardo siendo arrestado Marco Pisetta que comenzó a colaborar con la Policía.	1972-05-04	\N	Italia	urbana	Milán	Milán, Lombardía 	Pizzale Zavattarri y Piazza Abbiategrasso		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	0	\N	SACCOMAN, 2013: 81-82	2015-11-19 12:31:59.765831	2016-03-04 12:52:17.09763	\N
67	Incendio del coche de Valentino Spataro, dirigente de la Sit-Siemens	Director de la planta Telefonía Automática de la Sit-Siemens. Se reivindica en un volante, junto con la acción del 7 de diciembre del año anterior.	1974-01-16	\N	Italia	urbana	Milán	Milán, Lombardía			\N	\N	Brigadas Rojas		\N	Columna de Milán		\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 94	2015-11-20 17:28:16.740048	2016-03-04 12:55:35.925974	\N
69	Agresión a Antonio Busti, jefe de personal de la Pirelli Bicocca	Se agrede físicamente a Antonio Busti a la salida de su casa y tuvo que ser hospitalizado. La acción fue reivindicada minutos después con una llamada a medios de comunicación: "Esta es una advertencia inicial de las Brigadas Rojas".	1974-01-23	\N	Italia	urbana	Milán	Milán, Lombardía			\N	\N	Brigadas Rojas	Italia	\N			\N	0	1	0	0	1	0	\N	Lotta Continua, 24 gennaio 1974, p. 2	2015-12-10 11:53:44.757062	2016-03-04 12:55:47.6416	\N
71	Incendio del coche de Belsito Agostino, director de personal de la Singer	Incendio del coche de Belsito Agostino, director de personal de la Singer de Leinì, Turín. Reivindicado en el mismo comunicado que la acción contra el coche de Lunghi. El comunicado dice que se realizó a las 5 de la mañana.	1974-03-09	\N	Italia	urbana	Leinì, Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N	Columna de Turín		\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 141	2015-12-10 12:42:43.074881	2016-03-04 12:56:42.669884	\N
70	Incendio del coche de Giuseppe Lunghi, director de la Breda Fucine	Durante de la noche entre día 8 y 9 se quema el coche de Giuseppe Lunghi, director de la Breda Fucine y se reivindica con un volante	1974-03-09	\N	Italia	urbana	Sesto San Giovanni, Milán	Milán, Lombardía 			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 141	2015-12-10 12:24:23.095626	2016-03-04 12:57:15.911491	\N
76	Incendio de dos coches de dirigentes de la Signer de Leiní, Turín	En la noche un núcleo de las BR incendia los coches de dos dirigentes de la Signer de Leinì en Turín, el del vice director de personal Pietro Antonio La Sala y el jefe de organización del trabajo Giuseppe Zuccato .	1974-10-08	\N	Italia	urbana	Leinì, Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	2	\N	TESSANDORI, 177: 216	2015-12-11 12:03:45.398567	2016-03-04 12:59:44.69778	\N
60	Incursión en la sede de la UCID y retención de dos personas	A las 19:00, un comando de las Brigadas Rojas formado por 3 militantes, hace una incursión en la sede de la Unione Cristiana Imprenditori e Dirigenti (UCID) y retiene al director de la sede, Barana Giulio y a un joven llamado Massazza Claudio. Tras registrar el local y llevarse algunos documentos, abandonaron el lugar dejando volantes firmados por las Brigate Rosse. Se reivindicó la acción mediante un comunicado (SOCCORSO ROSSO, 1976: 151-152).	1973-01-15	\N	Italia	urbana	Milán	Milán, Lombardia	via Bigli 15/a		\N	\N	Brigadas Rojas	Italia	\N	Columna milanesa		3	0	0	0	0	2	1	\N	SACCOMAN, 2013: 89-90,  FH: l´Unità, Italia, 16 de enero de 1973, p. 3	2015-11-19 16:08:09.146045	2016-03-14 10:16:48.362898	\N
81	Asalto a sucursal del Banco Español y Territorial	A cara descubierta cuatro individuos asaltaron una sucursal del Banco Español y Territorial en una calle de Montevideo, llevándose cerca de $2.440.000 ¿? y huyendo en el coche de uno de los empleados del banco. Al cabo de unos días, se difundió en prensa que los cuatro asaltantes eran integrantes del MLN - Tupamaros (Gabino Falero, Rubén Rodríguez, Jorge Manera y Nelly G. Jorge de Pancera)	1968-03-18	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Carlos María Ramírez, nº 452	El coche que usaron para la huída fue abandonado en la intersección de Uruguayana y Pablo Zufriategui, Montevideo	\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	0	0	0	0	1	\N	El País, Montevideo, 19 de marzo de 1968; El País, Montevideo, 20 de marzo de 1968; El País, Montevideo, 25 de marzo de 1968	2016-02-04 10:05:43.929772	2016-02-04 10:06:07.814062	\N
82	Asalto armería Botta	Tres personas asaltan la armería propiedad de Carlos Botta, llevándose alrededor de 25 armas cortas (revólveres y pistolas) y unas 200 balas de diferentes calibres. A su vez, se llevaron unos 6.000 pesos de la caja.	1968-05-08	\N	Uruguay	urbana	Montevideo	Montevideo	c/ San Martín nº 2528		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	Acción, Montevideo, 7 de mayo de 1968, p. 6	2016-02-04 10:31:25.894058	2016-02-04 10:31:25.894058	\N
83	Asalto sucursal del Banco La Caja Obrera	Cuatro personas asaltan una sucursal del Banco La Caja Obrera llevándose 1.600.000 pesos, tres de ellos entran armados y uno espera fuera. Antes de retirarse, al percatarse que una cliente se había desmayado, acudieron al baño y pidieron a los funcionarios del Banco que le dieran agua y, al verla reanimarse, se alejaron. Huyeron en un Volkswagen robado. Al cabo de unos días se identificaron a Amodio Perez y Gabino Falero como dos de los asaltantes. 	1968-06-27	\N	Uruguay	urbana	Montevideo 	Montevideo 	c/ Justicia nº 2051		\N	\N	MLN - Tupamaros		\N			4	0	0	0	0	0	1	\N	El País, Montevideo, 28 de junio de 1968, p.2; Acción, Montevideo, 28 de junio de 1968, p. 6	2016-02-04 11:15:49.167211	2016-02-04 11:27:40.449619	\N
85	Asalto Banco de la Paz, Canelones	Cinco personas asaltan el Banco de la Paz, llevándose 4.973,160 pesos, cifra récord hasta la fecha en cuanto a asaltos bancarios. Durante los siguientes días se dudó de la autoría de la acción aunque se piensa que fue una acción de los Tupamaros.	1968-06-28	\N	Uruguay	urbana	La Paz	Canelones	c/ Artigas con Batlle y Ordoñez		\N	\N	MLN - Tupamaros	Uruguay	\N			5	0	0	0	0	0	1	\N	Día, Montevideo, 29 de junio de 1968; El País, Montevideo, 28 de junio de 1968, p. 6, Acción, Montevideo, 29 de junio de 1968, p. 6	2016-02-04 12:37:23.325245	2016-02-04 13:19:46.204243	\N
94	Un mecanismo de propaganda hiere a cuatro personas	Un mecanismo de propaganda como el utilizado en fechas anteriores hiere a cuatro personas al explotar debajo de un carrito de venta de comida. Se liberaron varios volantes mimeografiados iguales que los dejados en el Juzgado. 	1969-01-03	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Gobernador Viana y 8 de octubre		\N	\N	MLN - Tupamaros	Uruguay	\N	Comando 22 de Diciembre		\N	0	4	0	0	0	1	\N	JCJ, 1977: 636; El País, Montevideo, 4 de enero de 1969	2016-02-05 12:40:26.932323	2016-02-05 12:40:26.932323	\N
72	Secuestro del juez instructor de Génova, Mario Sossi	"Operación Girasol". El 18 de abril de 1974 las Brigadas Rojas secuestran a Mario Sossi en las inmediaciones de su casa situada en la vía Forte San Giuliano de Génova. Para su liberación, las BR piden la puesta en libertad de 8 presos del Gruppo XXII Ottobre y que fueran transportados de una manera segura a otro país. La Corte de Segunda Instancia de Génova aceptó conceder la libertad provisional a los 8 presos pero el procurador general de la República, Francesco Coco se negó a refrendar la orden de liberación. Finalmente, Sossi fue puesto libertad el 23 de mayo a las afueras de Milán.	1974-04-18	1974-05-23	Italia	urbana	Génova	Génova, Liguria	vía Forte San Giuliano (lugar en el que se le secuestra)		\N	\N	Brigadas Rojas	Italia	\N			\N	0	1	0	1	1	0	\N	CURCIO, 1994: 95-99	2015-12-10 14:03:20.773345	2016-03-04 12:58:23.847526	\N
74	Incursión en la sede del Comitato di Resistenza Democratica de Edgardo Sogno	En pleno secuestro de Sossi, las BR efectúan dos incursiones casi simultáneas en Milán y Turín. En esta ocasión, a las 19.30 se allanó el Comitato di Resistenza Democratica de Edgardo Sogno, situado en Milán. Con un spray se escribió en la pared "Contro il neogollismo portare l`attacco al cuore dello Stato - Viva le Brigate Rosse".	1974-05-02	\N	Italia	urbana	Milán	Milán, Lombardia	via Guicciardini 4		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 164-165, SACCOMAN, 2013: 270	2015-12-11 11:05:01.090615	2016-03-04 12:58:55.181414	\N
78	Incendio de cinco coches de trabajadores de la Fiat acusados de fascistas	En la noche del 24 al 25 fueron quemados cinco coches de trabajadores de la Fiat acusados de pertenecer a la CISNAL. Uno de ellos, Battista Nicola, mandó una carta a la prensa negando que trabajara en la Fiat y militara en la CISNAL.	1974-11-25	\N	Italia	urbana	Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	5	\N	TESSANDORI, 1977: 228-229	2015-12-11 16:54:38.613222	2016-03-04 13:00:11.68572	\N
79	Asalto de dos sedes del sindicato SIDA	Casi de manera simultánea se asaltan dos sedes del sindicato SIDA, acusados de "sindicato amarillo", en Turín. En la sede de Rivalta, se retuvo a Arnaldo Bardella, empleado del sindicato, se le puso un cartel al cuello con el texto "Brigate Rosse, nessun compromesso con il progetto neocorporativo imperialista della Fiat. Construire il potere proletario armato" y se le fotografía. 15 minutos después, en la sede de Mirafiori,  tres personas retienen a Pasquale Carpentieri, representante sindical,  se le cuelga un cartel al cuello con el texto "Costruire ovunque il potere armato proletario. Costruire nuclei armati clandestini" y se le fotografía.	1974-12-11	\N	Italia	urbana	Turín	Turín, Piamonte	via Fossano 11 (Rivalta) y via Nichelino (Mirafiori)		\N	\N	Brigadas Rojas	italia	\N			\N	0	2	0	0	2	2	\N	TESSANDORI, 1977: 230-232; SOCCORSO ROSSO, 1976: 264	2015-12-11 17:43:15.709287	2016-03-04 13:02:10.856208	\N
84	Atentado contra planta emisora de Radio Ariel	Minutos antes de que Pacheco Areco se dirigiera al país, una fuerte explosión destroza la estación emisora de Radio Ariel. Los cuatro autores que iban vestidos con uniformes de la Guardia Republicana, roban varios aparatos para transmisiones con el exterior y otros de onda corta aptos para interferir emisiones radiales y llamadas telefónicas”. La radio era propiedad de Jorge Batlle Ibáñez y de las tres bombas que se colocaron sólo explotó una que causó destrozos en la antena.	1968-07-01	\N	Uruguay	urbana	Paso de la Arenas	Montevideo	c/ Simón Martinez y Camino de las Tropas		\N	\N	MLN - Tupamaros		\N			4	0	0	0	0	0	1	\N	JCJ, 1977: 630; El País, Montevideo, 3 de julio de 1968, El Diario, Montevideo, 3 de julio de 1968, portada	2016-02-04 12:06:11.770327	2016-02-04 13:19:23.565793	\N
86	Secuestro de Ulysses Pereira Reverbel	El MLN - Tupamaros realiza su primer secuestro al empresario y presidente de la compañía estatal de energía eléctrica (UTE) Ulysses Pereira Reverbel. En un comunicado emitido el día 8, el MLN acusaba a los poderes fácticos de las situación económica y represiva que sufría el “pueblo”, y advertía que el secuestrado sería puesto en libertad cuando “las autoridades de nuestro Movimiento lo estimen oportuno” (Información Documental de América Latina, 1972: 153). La acción es relatada en Actas Tupamaras como "Operación Pajarito".	1968-08-07	1968-08-11	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros		\N	Comando Mario Robiana		7	0	0	0	0	1	0	\N	Información Documental de América Latina, 1972: 153; Actas Tupamaras, 1987:81-102; prensa varia	2016-02-04 13:18:52.842529	2016-02-04 13:37:17.093456	\N
87	Asalto en sucursal del Banco de Londres y América del Sur	Cuatro integrantes del MLN asaltan una sucursal del Banco de Londres y América del Sur y se lleva unos 20.000 dólares.	1968-09-10	\N	Uruguay	urbana	Montevideo	Montevideo	Av/ Brasil y Obligado		\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	0	0	0	0	1	\N	JCJ, 1977: 632; El País, Montevideo, 11 de septiembre de 1968	2016-02-04 13:52:17.472169	2016-02-04 13:52:17.472169	\N
88	Enfrentamiento con la Policía	Tras un tiroteo la policía detiene a tres tupamaros en el interior de una Kombi (Julio Marenales, Leonel Martínez Platero y Carlos Rodríguez Ducós. Mauricio Rosencof, que tenía que ser recogido por la furgoneta pudo ver todo en directo. Los tres detenidos denunciaron torturas con picana eléctrica.	1968-10-08	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			3	0	0	3	0	1	0	\N	JCJ, 1977: 633, MÁRQUEZ ZACCHINO, 2010: 67-68, El Popular, Montevideo, 14 de octubre de 1968	2016-02-05 10:33:14.830684	2016-02-05 10:38:13.846236	\N
89	Robo de explosivos	El MLN roba unos 225 kg de gelignita del polvorín que construía la Ruta 6, en el departamento de Tacuarembó. Se dejaron volantes de la organización	1968-11-25	\N	Uruguay	\N	Tacuarembó	Tacuarembó	Ruta 6		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 634	2016-02-05 10:58:22.014336	2016-02-05 10:58:22.014336	\N
90	Asalto Hotel Casino Carrasco	Seis integrantes del MLN asaltan de madrugada la tesorería del Casino del Hotel Carrasco y se llevan unos 25.000 dólares.	1968-11-29	\N	Uruguay	urbana	Montevideo	Montevideo	Rambla República de México 6451		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 634	2016-02-05 11:19:54.976506	2016-02-05 11:19:54.976506	\N
93	Robo de armas en el Juzgado de Instrucción de 1er Turno	Durante la Nochevieja, el Comando 22 de diciembre del MLN - Tupamaros penetra en la sede del Juzgado Letrado de Instrucción de 1er Turno, donde se instruyen las causas contra la organización, y se llevan 41 armas cortas que habían sido incautadas por la Policía. Se dejan volantes de propaganda denunciando la represión y la actuación incorrecta de la Justicia.	1969-01-01	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N	Comando 22 de Diciembre		\N	0	0	0	0	0	1	\N	JCJ, 1977: 635; MAYANS, 1971, 3/18; El País, Montevideo, 2 de enero de 1969; El Diario, Montevideo, 2 de enero 1969, portada	2016-02-05 12:14:30.678009	2016-02-05 12:22:25.621549	\N
92	Colocación de mecanismo de propaganda en la Feria de Libro	Durante la Feria de Libros y Grabados celebrada en la plaza de la Intendencia de Montevideo, el MLN reparte propaganda mediante un mecanismo de relojería instalado en una caja que hace saltar por los aires volantes de la organización.	1968-12-30	\N	Uruguay	urbana	Montevideo	Montevideo	Av. 18 de Julio 1360		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	\N	\N	JCJ, 1977: 635	2016-02-05 11:39:43.885272	2016-02-05 12:30:30.221289	\N
96	Acción contra la Financiera Monty	El Comando Liber Arce del MLN roba en las oficinas de la financiera Monty seis libros de contabilidad y otros documentos probatorios de actividades delictivas además de unos 24.000 dólares. Los documentos probarían actividades financieras ilegales en las que estaban involucrados varios políticos y miembros del Gobierno. El robo no fue denunciado por las autoridades. Uno de los responsables de financiera era el ministro de Ganadería y Agricultura, Carlos Frick Davies que dimitió en los siguientes días. El MLN, en los siguientes días enviará la información probatoria de actividades ilegales a la prensa y la distribuyó mediante volantes.	1969-02-14	\N	Uruguay	\N	Montevideo	Montevideo	Av. 18 de julio y Médanos		\N	\N	MLN - Tupamaros	Uruguay	\N	Comando Liber Arce		5	0	0	0	0	0	1	\N	JCJ, 1977: 637; WALTER PERNAS, 2013: 381-383; El País, Montevideo, 17 de febrero de 1969; El País, Montevideo, 19 de febrero de 1969; Revista Al Rojo Vivo, 25 de febrero de 1969	2016-02-05 13:07:46.182952	2016-02-05 13:18:17.508248	\N
97	Asalto Casino San Rafael en Punta del Este	El Comando Mario Robaina Méndez del MLN, compuesto por siete personas vistiendo uniformes policiales, asalta el Casino San Rafael en Punta del Este, llevándose 220.000 dólares 	1969-02-18	\N	Uruguay	urbana	Punta del Este	Maldonado	Rambla Lorenzo Batlle Pacheco Pda. 11		\N	\N	MLN - Tupamaros	Uruguay	\N	Comando Mario Robaina Méndez 		7	0	0	0	0	0	1	\N	JCJ, 1977: 637	2016-02-05 13:48:40.243712	2016-02-05 13:48:40.243712	\N
99	Bombas incendiarias contra sede COPRIN	Explotan tres bombas incendiarias contra la sede de la Comisión de Productividad, Precios e Ingresos (COPRIN) y se dejan volantes de propaganda del MLN - Tupamaros	1969-04-30	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Paysandú, 919		\N	\N	MLN - Tupamaros	Uruguay	\N			5	0	0	0	0	0	1	\N	JCJ, 1977: 640; El País, Montevideo, 2 de mayo de 1969	2016-02-05 18:49:45.449258	2016-02-05 18:49:45.449258	\N
102	Copamiento de Radio Sarandí	Un comando del MLN ocupa la una emisora de radio. Se emitió 9 veces durante 46 minutos una proclama durante la retransmisión de la final de la Copa Libertadores disputada entre el Nacional y el Estudiantes de La Plata. 	1969-05-15	\N	Uruguay	urbana	Montevideo	Montevideo	Camino Simón Martínez nº 6061 en Paso de la Arena		\N	\N	MLN - Tupamaros	Uruguay	\N			20	0	0	0	0	0	1	\N	Rey Tristán, 2005: 187	2016-02-12 11:30:31.373094	2016-02-12 11:30:31.373094	\N
103	Asalto armería El Cazador	En cinco minutos se asaltó la armería El Cazador llevándose 18 pistolas, 10 escopetas calibre 22, 16 fusiles de repetición, varios revólveres de fabricación alemana, 200 proyectiles, 2 cuchillos y 6 relojes despertadores (en prensa se dan otras cifras de armas). La armería era del hijo del dueño de la vieja armería El Cazador que previamente había asaltado el MLN. Antes de irse, con un diamante y un lápiz de rouge dibujaron sobre el cristal dos estrellas tupamaras. Se encontró sobre el cristal una huella dactilar que pertenece a Alicia Rey.	1969-05-22	\N	Uruguay	urbana	Montevideo	Montevideo	en una galería entre 18 de julio y Río Branco		\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	0	0	0	0	1	\N	JCJ, 1977: 640, Al Rojo Vivo, Montevideo, 27 de mayo de 1969, El País, Montevideo, 23 de mayo de 1969	2016-02-12 11:59:05.990941	2016-02-12 11:59:05.990941	\N
104	Proclama en Radio Río de la Plata	Durante la 5 minutos se escucha una proclama del MLN en la onda de la radio de Río de la Plata, que difunde música en comercios y oficinas de Montevideo. El comunicado firmado por el Comando Liber Arce se limitó a expresar que se tenían medios suficientes para interferir las ondas de las emisoras de Montevideo. Al ser avisada la Policía se solicitó a la UTE el corte de energía eléctrica en la zona de funcionamiento de la emisora, pudiéndose comprobar que el MLN poseía un transmisor de alta potencia equipado con su propia antena. 	1969-05-24	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N	Comando Liber Arce		\N	0	0	0	0	0	1	\N	JCJ, 1977: 640; El País, Montevideo, 25 de mayo de 1969	2016-02-12 12:14:16.140226	2016-02-12 12:14:16.140226	\N
105	Asalto sucursal centro UBUR	Asalto a la sucursal centro de UBUR instalada en el centro de Montevideo. En siete minutos, tres personas, una vestida de policía, entraron hasta el subsuelo del banco con el pretexto de la búsqueda del cambio, controlaron a cinco empleados y un policía y se llevaron 13.900.000 pesos. En el recinto se encontró un cuchillo que había sido robado la semana pasada en la armería El Cazador. 	1969-05-27	\N	Uruguay	urbana	Montevideo	Montevideo	Plaza Independencia n°808		\N	\N	MLN - Tupamaros	Uruguay	\N			3	0	0	0	0	0	1	\N	 COSTA OMAR, 1978 p. El País, Montevideo, 28 de mayo de 1969	2016-02-12 12:27:10.425453	2016-02-12 12:27:10.425453	\N
106	Acción incendiaria contra la General Motors 	En relación con la visita de Nelson Rockefeller a Uruguay, en la noche del 19 al 20 de junio el MLN incendia el local administrativo y 8 vehículos en filial de la General Motors que aprovisionaba de vehículos a la Policía. Según la versión en Actas Tupamaras, se intentó realizar otra acción similar contra otra empresa estadounidense pero fue frustrada cuando comenzaba (1987: 123). Según la versión de la Junta de Comandantes en Jefe, esa misma noche, se produjeron atentados contra otras doce empresas estadounidenses (1977: 641).	1969-06-20	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			8	0	0	0	0	2	0	\N	Actas Tupamaras, 1987: 119-123, JCJ, 1977: 641	2016-02-12 13:43:38.820331	2016-02-12 13:43:38.820331	\N
107	Toma de radio	Durante la entrevista entre Pacheco Areco y Nelson Rockefeller en Punta del Este, un comando del MLN toma una radio en Montevideo y retransmite una grabación durante diez minutos acusando a ambos.	1969-06-21	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 641	2016-02-12 15:08:02.61006	2016-02-12 15:08:02.61006	\N
108	Intento fallido de atentado en la residencia presidencial	Se intentó colocar un artefacto explosivo en la residencia presidencial situada en la avenida Joaquín Suárez, siendo detenidos Fernando González Guyer, Rolando Ache y logrando huir Juan Pablo María Schroeder Orozco que pasa a la clandestinidad	1969-06-21	\N	Uruguay	urbana	Montevideo	Montevideo	Av Joaquín Suárez 3773		\N	\N	MLN - Tupamaros	Uruguay	\N			3	0	0	2	0	0	1	\N	JCJ, 1977: 641	2016-02-12 15:15:33.507645	2016-02-12 15:15:33.507645	\N
110	Varios desarmes a policías, en uno de ellos es asesinado el agente Germán Garay Dama	A primera hora de la mañana se produjeron cinco intentos de desarme a un total de ocho policías. En todos los casos estuvieron realizados por grupos de tres o cuatro personas. En uno de ellos fue asesinado el agente Germán Garay Dama. En el parte oficial de la Jefatura, se explica que dos agentes iban caminando por la calle Joaquín de Salterain separamos por unos metros, siendo asaltados simultáneamente. Uno de los agentes fue desarmado rápidamente y el otro, Germán Garay Dama, se resistió, sacó su arma e hizo un disparo. Fue entonces cuando uno de los atacantes disparó dos veces sobre su espalda, hiriéndolo mortalmente. Tras la huida de los atacantes, el otro agente tomó el revolver de Germán Garay y disparó sin alcanzar a nadie. \r\nLos otros asaltos: Un agente esperando al autobús c/Rondeau y Payandú) fue sorprendido por cuatro personas que tras quitarle la gorra, el arma y el correaje huyeron en un coche. \r\nTres agentes (c/ Camacuá y Juan Carlos Gómez) fueron rodeados por cuatro personas que les robaron tres revólveres, una metralleta, un sacón y un correaje. Los asaltantes huyeron en un coche. \r\nUn agente (c/ 8 de Octubre y Pirineos) fue rodeado por cuatro personas y le obligaron a entregar el revolver, huyendo en un coche. \r\nPor último, cinco personas subieron en un trolebus (18 de julio y Sierra), rodearon a un agente que viajaba en el vehículo y le robaron el arma y se bajaron del transporte. 	1969-07-07	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	0	0	0	8	0	\N	El Día, Montevideo, de 18 de junio a 9 de julio de 1969, portada, Acción, Montevideo, 7 de julio de 1969, portada	2016-02-12 18:13:45.584074	2016-02-12 18:13:45.584074	\N
109	Desarme a seis policías	Son desarmados seis funcionarios policiales y robadas sus armas.	1969-06-26	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	8	0	\N	JCJ, 1977: 641	2016-02-12 16:22:42.198317	2016-02-12 18:16:50.661878	\N
111	Intento fallido de desarme a policia	Según el diario El Día, un día después del asesinato del agente Germán Garay Dama se produjo un sexto intento de desarme pero sin que los asaltantes tuvieran éxito debido a la oposición del agente. Fueron cuatro personas que, tras la resistencia del agente se les disparó pero sólo rozaron su uniforme.	1969-07-08	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	1	0	\N	1	0	\N	El Día, Montevideo, de 18 de junio a 9 de julio de 1969, portada	2016-02-12 18:33:06.969704	2016-02-12 18:34:24.792826	\N
112	Enfrentamiento con la Policía	Es allanada una base el MLN en Av. de las Instrucciones, siendo detenidos Ataliva Castillo, César Long, Roberto Emilio Manes, exilado brasileño, Natalio Dergan Jorge y Nicolás Antonio Estevez Fernández, quien resulta herido en el enfrentamiento que se produce. En el lugar es ubicado un laboratorio para la fabricación de explosivos. Como secuela de las indagaciones la Policía detiene posteriormente a Jorge Zabalza.	1969-07-26	\N	Uruguay	urbana	Montevideo	Montevideo	Av. de las Instrucciones		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	1	6	0	1	0	\N	JCJ, 1977: 641	2016-02-15 09:34:09.6308	2016-02-15 09:34:09.6308	\N
17	Enfrentamiento con la Policía, primer militante muerto	Al localizar una camioneta robada, comienza una persecución por Montevideo con intercambio de disparos entre la policía y dos militantes tupamaros. En el enfrentamiento muere Carlos Flores por un disparo de la policía, el primer tupamaro muerto. Durante los próximos meses, el MLN - Tupamaros estuvo aislado por la persecución policial. Se descubrieron locales y unos treinta militantes pasaron a la clandestinidad.	1966-12-22	\N	Uruguay	urbana	Montevideo	Montevideo	Barrio Brazo Oriental		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	\N	0	0	0	0	\N	JCJ, 1977: 619 FH: Acción, Montevideo, 22 de diciembre de 1966, portada, El Día, Montevideo, 23 de diciembre, portada, El Popular, Montevideo, 23 de diciembre de 1966, p. 10	2015-10-30 18:44:32.21584	2016-02-15 09:36:07.295982	\N
113	Anuncio emisión radio clandestina 	Volantes del MLN informan que la emisiones radiales clandestinas hechas de forma esporádica hasta ahora, podrán oírse regularmente los días "miércoles y domingos a las 21 horas en uno de los extremos del dial".	1969-07-30	\N	Uruguay	\N	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	JCJ, 1977: 642	2016-02-15 09:50:07.00298	2016-02-15 09:50:07.00298	\N
21	Enfrentamiento con la Policía en El Pinar	Dos policías persiguiendo unos ladrones, topan por casualidad con una base del MLN - Tupamaros “El Pinar”. Se produce un tiroteo, son heridos un tupamaro (Eleuterio Fernández Huidobro) y un policía. A diferencia de antes, tras el operativo militar no son detenidos ningún miembro de la organización. El MLN -  Tupamaros  publicará “Carta abierta a la policía” con explicaciones sobre este enfrentamiento. En la cabaña son incautadas 3 bayonetas, balas del calibre 45 y "literatura subversiva". Días después, la policía informa de la identificación de Héctor Amodio Pérez, Ismael Fernández Bassini Campiglia, Nelly Jorge Panzera, Luis Efraín Martínez Platero y Eleuterio Fernández Huidobro, como participantes en el tiroteo (JCJ, 1977: 625).	1967-11-29	\N	Uruguay	urbana	nº 9 del Balneario El Pinar, km. 27 de la Ruta Interbalear	Canelones	Una cabaña		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	2	0	0	0	0	\N	JCJ, 1977: 625 COSTA OMAR, 1977: 258 FH: El Día, 30 de noviembre de 1967, portada y p. 8, El Diario, 30 de noviembre, portada, Acción, 1 de diciembre de 1967, p. 6	2015-11-03 12:37:22.411093	2016-02-17 10:47:06.216793	\N
115	Detenciones durante difusión de propaganda	Son detenidos por la Policía Jessie Macchi Torres y Luis Alberto Estradet Cabrera mientras distribuían el Boletín nº3 del MLN - Tupamaros	1969-09-18	\N	Uruguay	\N	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			2	0	0	2	0	0	0	\N	JCJ, 1977: 644	2016-02-15 10:29:39.56667	2016-02-15 10:29:39.56667	\N
117	Emisión de radio clandestina ¿CATEGORÍA?	Nueva emisión radial clandestina del MLN sin que pudiera ser individualizada. Según Mayans, fue la cuarta emisión en un mes y se denunciaron torturas policiales, negocios en los que estaban involucrados personalidades del gobierno y el frustrado intento de liberación presos. Aviones sin luces y helicópteros del Ejército rastrearon infructuosamente la emisora fantasma. 	1969-09-03	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	JCJ, 1977: 642; MAYANS, 1971: 3/28	2016-02-15 10:52:35.786385	2016-02-15 10:52:35.786385	\N
116	Emisión de radio clandestina	Durante unos minutos se pudo oír la transmisión clandestina, identificando la voz como la misma que se oyó durante la acción en Radio Sarandí. Según el diario El Día, el episodio no fue informado por las autoridades. 	1969-08-20	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	El Día, Montevideo, 21 de agosto de 1969	2016-02-15 10:39:44.317492	2016-02-15 10:53:21.881581	\N
118	Intento fallido de fuga de la Cárcel Central de la Jefatura de Policía de Montevideo	La Policía informa sobre un plan para rescatar a seis militante de la Cárcel Central de la Jefatura de Policía de Montevideo. Según la prensa el hallazgo se produjo de forma casual, al percatarse un electricista que estaba realizando reparaciones en la cárcel de que la maya que separaba el edificio con unos apartamentos había sido cortada. Se encontraron también escaleras metálicas, ropa y herramientas en el edificio de al lado.	1969-08-11	\N	Uruguay	\N	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	JCJ, 1977: 643; El Día, Montevideo, 13 de agosto de 1969; El Día, Montevideo, 14 de agosto de 1969	2016-02-15 11:04:25.263446	2016-02-15 11:04:25.263446	\N
119	Enfrentamiento con la Policía	En un enfrentamiento con integrantes del MLN es herido el subcomisario de la Jefatura de Policia de Montevideo, Ángel Clemente.	1969-09-19	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	1	0	0	1	0	\N	JCJ, 1977: 644	2016-02-15 11:08:24.022108	2016-02-15 11:09:11.582892	\N
120	Asalto del domicilio del juez Pedro Purpura	Un comando del MLN, compuesto por cuatro personas, toma por asalto la residencia del juez Pedro Purpura, quien intervino en varios procedimientos contra la Universidad de la República a raíz del secuestro de Pereira Reverbel, estando también acusado de colaborar con la CIA. Identificándose como Tupamaros, los asaltantes se llevaron varios documentos, 800 dólares, una Smith & Wesson del 38, una pistola alemana de 9mm, un fusil calibre 22, proyectiles, cuatro puñales, dos grabadores y un par de prismáticos. 	1969-09-23	\N	Uruguay	\N	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	0	0	0	1	1	\N	MAYANS, 1971: 3/29	2016-02-15 11:21:21.136189	2016-02-15 11:21:21.136189	\N
161	Enfrentamiento con la Policía	Tras una inspección en una casa de citas se produce un tiroteo y es detenido Juan Almirati Nieto con documentación falsa y un revolver que pertenecía a la Policía robado tiempo atrás. Junto a él, se detuvo también a su mujer. \r\n\r\n	1970-04-18	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			1	0	0	2	0	1	0	\N	JCJ, 1977: 659; El País, Montevideo, 18 de abril de 1970	2016-02-18 11:23:12.089183	2016-02-18 11:23:12.089183	\N
121	Asalto y asesinato de Césár Guidet Dotti	Un comando de la Columna 15 asaltó la floristería de César Guidet Dotti, ex campeón sudamericano de tiro donde albergaba varias armas de alta precisión. Guidet Dotti mostró resistencia haciendo fuego con un revolver contra los asaltantes, contestando éstos con al menos nueve disparo, alcanzándole cinco de ellos que lo hirieron de muerte. Al menos un asaltante fue herido. 	1969-09-26	\N	Uruguay	urbana	Montevideo	Montevideo	c/ General Flores, 2687		\N	\N	MLN - Tupamaros	Uruguay	\N	Columna 15		\N	1	1	0	0	1	1	\N	JCJ, 1977: 644, PERNAS, 2013: 403	2016-02-15 11:40:51.592899	2016-02-15 11:40:51.592899	\N
122	Asalto del domicilio de Luis Alberto Bruzzone 	Horas después del asesinato de César Guidet, otro grupo asalta el domicilio del coleccionista de armas y también campeón de tiro Luis Alberto Bruzzone que se encontraba ausente, llevándose 11 escopetas, 2 revólveres y gran cantidad de munición. 	1969-09-26	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Luis de la Torre, nº 468		\N	\N	MLN - Tupamaros	Uruguay	\N	Columna 15		\N	0	0	0	0	0	1	\N	JCJ, 1977: 644; PERNAS, 2013: 403	2016-02-15 11:56:42.861189	2016-02-15 11:56:42.861189	\N
123	Amenaza a la Policía	Ante una denuncia telefónica anónima la Policía concurre a la finca de la calle Guayaquí nº 3296, que se halla vacía y en la que se produce una explosión. Un volante dejado en el lugar advierte que la próxima vez será en serio. 	1969-10-19	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Guayaquí nº 3296		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 644-655	2016-02-15 12:18:28.799134	2016-02-15 12:18:28.799134	\N
124	Asalto al intendente municipal de San José	Asalto a Ramón Vinci, intendente municipal de San José mientras transportaba treinta y seis mil dólares destinados al pago de sueldos y resultando heridos el intendente y su chófer. Según Mayans, la acción fue realizada por otra organización pero días después, el intendente identificó a Raúl Sendic como uno de los asaltantes.	1969-10-02	\N	Uruguay	urbana	San José	San José			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	2	0	0	1	\N	\N	JCJ, 1977: 644; MAYANS, 1971: 3/30; Diario De Frente, Montevideo, 6 de octubre de 1969	2016-02-15 12:26:52.28302	2016-02-15 12:26:52.28302	\N
125	Toma de la ciudad de Pando ¿Tipología?	En el segundo aniversario de la muerte del Che Guevara, el Comando "Che Guevara" del MLN lleva acabo la “Toma de Pando”. Un grupo de 49 tupamaros tomaron por asalto, durante unos minutos la Comisaría de Policía, el Cuartelillo de Bomberos, la Central Telefónica locales y cuatro bancos de la ciudad de Pando robando entre 240 y 400 mil dólares. Se produjo un enfrentamiento con la Policía, resultando varios agentes heridos. En la huida fueron asesinados tres tupamaros (Alfredo Cultelli, Jorge Salermo y Ricardo Zabalza). Un sargento de policía (Enrique Fernández Díaz) murió días después por las heridas recibidas y un civil (Carlos Burgueño). Fueron detenidos diecisiete guerrilleros y, al día siguiente otros tres más. A consecuencia, en los siguientes días se produjeron numerosos allanamientos y detenciones.	1969-10-08	\N	Uruguay	urbana	Pando	Canelones			\N	\N	MLN - Tupamaros	Uruguay	\N		Comando Che Guevara	49	5	\N	20	\N	\N	7	\N	JCJ, 1977: 646; SASSO, 2005	2016-02-15 12:54:16.653899	2016-02-15 12:58:39.801483	\N
126	Asalto a la financiera clandestina Echeverrigaray - Petcho	El MLN asalta una casa de cambio clandestina en Montevideo de la que roban documentos y unos 24.000 dólares. Se trataba de la financiera Echeverrigaray - Petcho. El hecho fue denunciado por la propia organización que envió un comunicando a la prensa.	1969-10-15	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Misiones nº 1361		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 647	2016-02-15 13:05:42.737696	2016-02-15 13:05:42.737696	\N
127	Enfrentamiento con la Policía, un muerto	Se produce un tiroteo entre la Policía y dos persona en una moto. Resulta muerto Arturo Cardama Martínez (empleado de la UTE) y heridoFermín  Chapitel Bottini (empleado del Consejo Nacional de Enseñanza Secundaria).	1969-11-02	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	0	0	0	1	0	\N	JCJ, 1977: 649	2016-02-15 13:27:29.57787	2016-02-15 13:27:29.57787	\N
128	Robo de armas	Se roban veinte armas cortas de una oficina de la empresa importadora Drinsor S.A. Los asaltantes se hicieron pasar por policías y retuvieron a las personas que había dentro.	1969-11-03	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Rincón nº 432		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	MAYANS, 1971: 3/32; El País, Montevideo, 4 de octubre de 1969	2016-02-15 15:26:36.229348	2016-02-15 15:26:36.229348	\N
130	Enfrentamiento con la Policía, un agente y un tupamaro muertos	Dos tupamaros son interceptados por el agente de policía Juan Antonio Viera Piazza cuando intentaban comprar un mimeógrafo y dos máquinas de escribir con un cheque falso en un comercio en el centro de Montevideo. Se produce un tiroteo en el que muere el agente Viera y es herido de gravedad Indalecio Oliveira Da Rosa, uno de los tupamaros que además es sacerdote. Los dos tupamaros huyen del lugar del crimen, siendo posteriormente ingresado Oliveira en el Hospital de Clínicas falleciendo al día siguiente. Posteriormente se identificó al acompañante como Raúl Bidegain.\r\n\r\n	1969-11-12	\N	Uruguay	urbana	Montevideo	Montevideo	av. Uruguay y Río Negro		\N	\N	MLN - Tupamaros	Uruguay	\N			2	2	0	0	0	1	0	\N	JCJ, 1977: 449-450	2016-02-15 16:28:02.880039	2016-02-15 17:42:58.242824	\N
141	Rescate de tres tupamaros detenidos	Tres tupamaros tras un accidente de coche al chocar una camioneta en el que uno de ellos queda gravemente herido, huyen un taxi robado hacia un bosque a las afueras de Montevideo siendo detenidos por dos funcionarios policiales. Otro grupo de ocho tupamaros se presenta en el lugar, reduce y roba las armas de reglamento de los policías y rescata a los tres detenidos y huyen en una camioneta. Testigos presenciales de ambos episodios reconocieron como participantes a Néstor Peralta y Raúl Bidegain Greissig, estando este último herido.\r\n	1970-01-09	\N	Uruguay	\N	Montevideo	Montevideo	Parque Hausen 		\N	\N	MLN - Tupamaros	Uruguay	\N			11	0	1	0	0	1	0	\N	JCJ, 1977: 653; Diario El País, Montevideo, 10 de enero de 1970;  Diario De Frente, Montevideo, 10 de enero de 1970	2016-02-16 11:31:01.550369	2016-02-16 11:34:27.575289	\N
164	Enfrentamiento con la Policía, un tupamaro muerto	En un tiroteo nocturno producido en Pajas Blancas a 23 km. de Montevideo entre Tupamaros y Policía muere el guerrillero Hernán Pucurull Sáenz de la Peña y son heridos José López Mercao con seis heridas de balas y Félix Betín con cinco siendo internados en el Hospital Militar. Según la prensa, testigos del tiroteo testificaron que la Policía y el Ejército habría disparado sus armas sobre los tupamaros que, desarmados, se rendían.	1970-05-31	\N	Uruguay	urbana	Montevideo	Montevideo	Pajas Blancas a 23 km. de Montevideo		\N	\N	MLN - Tupamaros	Uruguay	\N			3	1	2	2	0	0	0	\N	JCJ, 1977: 661; Diario El País, Montevideo, 3 de junio de 1970	2016-02-18 13:12:10.970574	2016-02-18 13:12:10.970574	\N
165	Atentados contra policías en represalias por el asesinato de Pucurull	En represalia por el asesinato de Pucurull, se producen varios atentados contra policías. A primera hora de la mañana se robaron tres automóviles (garaje c/ Guaná nº 2527) reteniendo al serano y a un cliente durante una hora y media. Dos de los coches fueron utilizados en los atentados frente al Canal 4 y en el edificio de la Sanidad Policial resultando tres policías heridos de bala.\r\n	1970-06-01	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	3	0	0	0	2	\N	MAYANS, 1971: 3/43; JCJ, 1977: 661; El País, Montevideo, 2 de junio de 1970	2016-02-18 13:28:04.613878	2016-02-18 13:28:04.613878	\N
114	Secuestro de Pellegrini Giampietro NO ENTRA BIEN LA SUBCATEGORÍA EN EL OBJETIVO	El MLN secuestra a Pellegrini Giampietro, banquero y miembro del directorio de la sociedad editora de los periódicos "La Mañana" y"El Diario”. Es secuestrado durante una huelga del sector bancario, dos días antes de que terminara. EL 12 de noviembre, cuando llevaba sesenta y cinco días secuestrado, los directores de los diarios La Mañana y El Diario, Carlos Manini Ríos y Eugenio Baroffio, remiten dos cheques por unos 28.000 dólares cada uno a la escuela de Villa García y a la compra de medicamentos y equipos para la policlínica del Sindicato de Obreros y Obreras del Frigorífico Nacional como parte de las negociaciones para liberar al secuestrado (JCJ, 1977: 650). Tras setenta y tres días secuestrado lo dejaron en libertad tras el pago de un rescate cobrado por instituciones públicas de atención popular.	1969-09-09	1969-11-20	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	1	0	\N	REY TRISTÁN, 2005: 338	2016-02-15 10:20:05.325677	2016-02-15 16:45:43.910186	\N
131	Asesinato de policía de la GM, Carlos Rubén Zembrano	Es asesinado a tiros el funcionario de la Guardia Metropolitana Carlos Rubén Zembrano Rivero mientras viajaba en un autobús. Un comando formado por 5 personas que viajaba en un taxi robado bloqueó un autobús de Amdet, obligó al conductor a abrir la puerta trasera y nada más subir al autobús dispararon sobre Carlos Rubén Zembrano que había intervenido en los sucesos de Pando y al que el MLN responsabilizar por la muerte de Jorge Salerno. En la acción también fue herido un solado del Regimiento de Artillería nº1 que viajaba junto a él. Cuatro días después de la acción el guarda del autobús, Julio Techera Castillo morirá por un ataque al corazón (no contabilizada).	1969-11-15	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Juan Carrara con Juan Victorica		\N	\N	MLN - Tupamaros	Uruguay	\N			5	1	1	0	0	1	0	\N	JCJ, 1977: 650; El Día, Montevideo, 16 de noviembre de 1969, portada y p. 10; El Día, Montevideo, 19 de noviembre de 1969, p. 7	2016-02-15 17:29:30.852888	2016-02-15 17:29:30.852888	\N
132	Ataques contra domicilios de policías de la G.M. 	Se producen dos ataques contra los domicilios de funcionarios policiales de la Guardia Metropolitana. Según El País, en uno de ellos se disparó contra el domicilio de un instructor de la GM y contra la residencia del exsubsecretario del Interior, no quedando claro si el atentado iba dirigido contra la casa o contra el agente que la custodiaba. 	1969-11-17	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	2	\N	JCJ, 1977: 650; El País, Montevideo, 19 de noviembre de 1969	2016-02-15 17:55:45.810572	2016-02-15 17:55:45.810572	\N
133	Desarme a un policía	Un comando roba el arma de reglamento de un policía.	1969-11-19	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	1	0	\N	JCJ, 1977: 650	2016-02-15 18:13:05.633338	2016-02-15 18:13:05.633338	\N
134	Asalto a la firma Ferretjans	Un grupo doce personas asalta la firma Ferretjans y tras retener a los dueños y clientes robaron máquinas fotográficas, una filmadora, grabadores, cintas magnetofónicas, prismáticos, varias miras telescópicas, cuatro rifles, cinco escopetas, ocho revólveres y cuatro pistolas.	1969-11-24	\N	Uruguay	urbana	Montevideo	Montevideo	c/ General Flores nº 2959		\N	\N	MLN - Tupamaros	Uruguay	\N			12	0	0	0	0	0	1	\N	JCJ, 1977: 651; Diario El País, Montevideo, 25 de noviembre de 1969	2016-02-15 18:25:27.329705	2016-02-15 18:25:27.329705	\N
135	Asesinato del agente Antonio M. Fernández	A consecuencia de un tiroteo con dos tupamaros en el balneario El Pinar, departamento de Canelones, resulta muerto el agente policial Antonio María Fernández Rodríguez, siendo identificados como autores del hecho Marcos Suárez Píriz y Daymán Osvaldo Cabrera Sureda y deteniéndose en las proximidades a Manuel Ángel Domínguez Rivero, otro tupamaro que habría presenciado la acción desde la distancia. Según la prensa, al pedir el agente la identificación a los personas, uno de ellos respondió disparando varías veces al agente.	1969-11-26	\N	Uruguay	urbana	El Pinar	Canelones	a la altura del km. 28,5 de av. Italia		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	0	1	0	1	0	\N	JCJ, 1977: 651; El Día, Montevideo, 27 de noviembre de 1969, portada	2016-02-15 18:47:39.816151	2016-02-15 18:47:39.816151	\N
136	Asalto fallido a las oficinas de COETC	Tras robar dos taxis, seis personas intentaron asaltar las oficinas de la recaudadora de la empresa de autobuses COETC, produciéndose un tiroteo con un policía y un vigilante del local. Posteriormente se encontró uno de los taxis con el parabrisas acribillado y en su interior cuatro sobres con bombas y proyectiles, además de manchas de sangre que indican que un asaltante resultó herido. Se identificó a Daymán Cabrera, como uno de los fracasados asaltantes.	1969-12-09	\N	Uruguay	urbana	Montevideo	Montevideo	Av. 8 de Octubre n°3462		\N	\N	MLN - Tupamaros	Uruguay	\N			6	0	1	0	0	0	1	\N	JCJ, 1977: 652; Diario De Frente, Montevideo, 29 de diciembre de 1969	2016-02-15 19:32:36.220155	2016-02-15 19:32:36.220155	\N
137	Asalto a la firma Orbis Mimeográfica	Un grupo de cinco personas asaltó un local de Orbis Mimeográfica. Tras retener a cuatro personas que se hallaban en el edificio, robaron tres mimeógrafos y huyeron en una camioneta Volkswagen conducida por una sexta persona. Fue identificado Emigidio Da Rosa como uno de los asaltantes. 	1969-12-09	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Santiago de Chile n°1294		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	El País, Montevideo, 10 de diciembre de 1969, p. 6	2016-02-15 19:41:17.768376	2016-02-15 19:43:05.045657	\N
138	Asalto de un laboratorio para robo de medicina	Es asaltado un laboratorio del que roban 26.000 ampollas de penicilina. 	1969-12-13	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 652	2016-02-15 19:49:25.614935	2016-02-15 19:49:25.614935	\N
139	Asalto al Banco Francés e Italiano	Haciéndose pasar por policías, un grupo de once miembros del MLN tras retener a las personas que se hallaban en el interior, intentaron robar en vano la caja del Tesoro al no ser capaz de abrirla. Sin embargo, se llevaron numerosa documentación confidencial. El asalto, debido a los problemas para abrir la caja, duró hasta dos horas. 	1969-12-26	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Rincón con Treinta y Tres		\N	\N	MLN - Tupamaros	Uruguay	\N			11	0	0	0	0	0	1	\N	JCJ, 1977: 652; Actas Tupamaras, 1987: 185-192; Diario De Frente, Montevideo, 27 de diciembre de 1969	2016-02-15 20:15:12.125383	2016-02-15 20:19:26.552089	\N
140	Atentado contra el comisario Juan María Lucas	Es gravemente herido el comisario de Policía Juan María Lucas cuando entraba en su domicilio al recibir un disparo en el cuello, huyendo posteriormente los agresores en un coche. El comisario había sido acusado de ejercer la tortura durante los interrogatorios a presos.\r\n	1970-01-02	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Veraguas nº 1721		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	1	0	0	1	0	\N	JCJ, 1977: 653;  Diario El País, Montevideo, 23 de enero de 1970	2016-02-16 11:03:10.294004	2016-02-16 11:03:10.294004	\N
142	Enfrentamiento con la Policía	Tras un tiroteo son detenidos Violeta María Setelich y sus dos hijos, María Luisa Adamo de Costa y César López, incautándose varias pistolas calibre 45, bombas y documentos (JCJ, 1977: 653). Según la prensa, policías de la Guardia Metropolitana y de Inteligencia y Enlace a cargo del Comisario Otero, intentado detener a Raúl Sendic procedieron a detener a quienes estaban en la casa. José Luis Biascioli Martín, que se hallaba a las afueras del domicilio, alertó a sus compañeros siendo inmediatamente detenidos Violeta Setelich y Bernardo Costa Acosta que no presentaron resistencia. Sin embargo, María Luisa Adamo de Costa, esposa del anterior, y el presunto ciudadano argentino Hugo Omar Verón, lograron huir produciéndose un tiroteo con la Policía que rodeaba la casa. Finalmente se entregaron, teniendo que ser Hugo Omar trasladado al hospital debido a las heridas recibidas. Se encontró en la casa un completo taller de fotografía y falsificación de documentos.	1970-01-12	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Santa Rosa nº 6029		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	2	5	0	0	0	\N	 JCJ, 1977: 653; Diario De Frente, Montevideo, 13 de enero de 1970	2016-02-16 12:08:20.406169	2016-02-16 12:08:20.406169	\N
143	Robo de productos químicos	En la madrugada un grupo de personas roba diversos productos químicos de un establecimiento de Enseñanza Secundaria situado a unos tres kilómetros de Montevideo. Presumiblemente fue una acción del MLN. \r\n	1970-01-15	\N	Uruguay	\N		Montevideo	a tres km. de Montevideo		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 653	2016-02-16 12:32:57.786354	2016-02-16 12:32:57.786354	\N
145	Atentados contra domicilios de funcionarios del Banco de Seguros del Estado	Son objeto de atentados con bombas explosivas los domicilios de seis altos funcionarios del Banco de Seguros del Estado por parte del MLN, presumiéndose que respondan a problemas gremiales internos de dicha institución. 	1970-01-30	\N	Uruguay	\N	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	6	\N	JCJ, 1977: 653	2016-02-16 13:00:56.224897	2016-02-16 13:00:56.224897	\N
146	Intento fallido de robo en la distribuidora de productos alimenticios Libertad S.A. 	Intento fallido de robo en la distribuidora de productos alimenticios Libertad S.A. Para la preparación del operativo se robaron previamente tres coches, reteniendo a sus conductores. Fue identificado Héctor E. Juambeltz como uno de los asaltes. 	1970-01-30	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Carlos Crocker n° 2883		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	4	\N	JCJ, 1977: 653; Diario El País, Montevideo, 31 de enero de 1970; Diario El País, Montevideo, 1 de febrero de 1970	2016-02-16 13:09:53.461467	2016-02-16 13:09:53.461467	\N
147	Emisión de radio clandestina	Es escuchada en Montevideo y Canelones durante casi una hora, una emisión radial del MLN-T realizada mediante la interferencia de una estación local. 	1970-01-31	\N	Uruguay	urbana		Montevideo y Canelones			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	JCJ, 1977: 653	2016-02-16 13:16:00.29644	2016-02-16 14:09:21.363971	\N
150	Asalto a las oficinas de Molinos Gramón S.A.	Cuatro personas armadas asaltan las oficinas de Molinos Gramón S.A., reteniendo a unos veinte trabajadores y llevándose $ 350.000. Fueron identificados Andrés Cultelli, Jorge Candán y Néstor Peralta.\r\n	1970-02-27	\N	Uruguay	urbana	Montevideo	Montevideo	Paraguay n°2253		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	Diario El País, Montevideo, 28 de febrero de 1970	2016-02-17 12:02:47.04675	2016-02-17 12:02:47.04675	\N
151	Asalto a sucursal de Buceo del Banco de Cobranzas	Cuanto personas (tres entraron y uno espero fuera en el coche) asaltan la sucursal de Buceo del Banco de Cobranzas y, tras desarmar al guardia, robaron 620.000 pesos. Fue identificado Raúl Bidegain como uno de los asaltantes. 	1970-02-27	\N	Uruguay	urbana	Montevideo	Montevideo	Barrio Buceo		\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	0	0	0	0	1	\N	Diario El País, Montevideo, 28 de febrero de 1970	2016-02-17 12:07:29.977187	2016-02-17 12:07:29.977187	\N
149	Enfrentamiento con la Policía, un agente muerto	Tras un tiroteo con la Policía son detenidos los Tupamaros Tabaré Rivero Cedrés, Ana María Castagnetto, Marcos Suárez Píriz y Yandy Miguel Cabrera Sureda en el balneario Cuchilla Alta. En el enfrentamiento es herido el policía Alfredo Pallas Cardozo, quien fallecerá el 13 de febrero. Según la prensa, el tiroteo lo comenzó Marcos Suárez Píriz cuando Rivero y Cabrera ya había sido detenidos.\r\n	1970-02-09	\N	Uruguay	urbana	Cuchilla Alta	Canelones	c/ Paysandú entre Treinta y Tres y Lavalleja		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	0	4	0	1	0	\N	JCJ, 1977: 654; Diario El País, Montevideo, 13 de febrero de 1970	2016-02-17 11:22:58.918355	2016-02-17 12:30:03.124652	\N
159	Acción contra Enrique Crossa , acusado de delator de la Policía	Enrique Crossa , acusado de delator de la Policía, es retenido y colocado en la vía pública maniatado a un árbol y con falsas granadas sujetas al cuerpo y un cártel con alusiones a su condición de delator. \r\n\r\n\r\n	1970-04-06	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Schinca nº 2349		\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	1	0	0	1	0	\N	JCJ, 1977: 657; Diario El País, Montevideo, 7 de marzo de 1970	2016-02-18 10:46:33.121529	2016-02-18 10:47:30.140773	\N
158	Asalto en mansión de Mailhos, “La burra de oro”	Es asaltada por un grupo 18 militantes del MLN la Sucesión Mailhos de la que roban documentos, dólares y una caja fuerte conteniendo lingotes de oro por un valor de 300.000 dólares. Roberto Filippone, que trabajaba en la firma, fue el gancho para llevar a cabo la acción. Tras la acción se le entregó a la prensa documentos de la firma Mailhos y la justicia dispuso a la detención de Luis Eduardo Mailhos por ocultación de los lingotes de oro y la omisión en el pago de impuesto al patrimonio, permaneciendo catorce días en la cárcel.  	1970-04-05	\N	Uruguay	urbana	Montevideo	Montevideo	 c/ 8 de Octubre nº 2285		\N	\N	MLN - Tupamaros	Uruguay	\N			18	0	0	0	0	0	1	\N	JCJ,1977: 657; ACTAS TUPAMARAS, 1987: 209-220; PERNAS, 2013: 456 - 460	2016-02-18 10:35:30.393896	2016-02-18 10:48:32.723546	\N
160	Asesinato de Héctor Morán Charquero	Es asesinado en la Rambla de Montevideo el inspector de la Policía de Montevideo  Héctor Morán Charquero, director de Información e Inteligencia y jefe de la Brigada Especial acusado de torturador. Para realizar la acción se robaron unas horas antes dos taxis y una camioneta Chevrolet, quedando sus dueños custodiados mientras se llevaba a cabo el operativo. Mientras Morán Charquero iba en su coche por la Rambla fue abordado y desde la camioneta se disparó contra su coche con una metralleta. 	1970-04-13	\N	Uruguay	urbana	Montevideo	Montevideo	Rambla		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	0	0	0	1	3	\N	 JCJ, 1977: 659; MAYANS, 1971: 3/41; Diario El País, Montevideo, 14 de abril de 1970	2016-02-18 11:13:03.17088	2016-02-18 11:13:03.17088	\N
91	Enfrentamiento con la Policía en Pando	Detenciones en dos casas de campo de la ciudad de Pando. Tras un tiroteo son detenidos los tupamaros Gabino Falero Montes de Oca, Pedro Ignacio Dubra Díaz, Corina Devita Decuadra, Jesús Manuel Rodríguez, hermanos Liber Fernando de Lucía Grajales y Aníbal de Lucía Grajales, Ismael Fernando Bassini Campiglia y Alvear Victorino Leal. Son incautadas dos ametralladoras de la Guardia Republicana, una ametralladora PAM, una pistola lanza señales, un revólver calibre 32, un revólver Smith Wesson calibre 38, un fusil Mauser, una escopeta de dos caños, unos 1.000 proyectiles de distintas clases, cédulas de identidad y libretas de conductor de automóviles falsificadas, granadas de mano, bombas de tiempo, suero fisiológico, antibióticos, tanques de oxígeno, material quirúrgico, un taller para reparar y camuflar automóviles, matrículas falsas, un auto VW, literatura "sediciosa", instrucciones sobre guerrilla urbana y manejo de armas y una relación de los vehículos particulares de la Jefatura de Policía de Montevideo. 	1968-12-10	\N	Uruguay	rural	Pando	Pando	una zona rural ubicada a 5 km del norte de la ciudad		\N	\N	MLN - Tupamaros	Uruguay	\N			8	0	1	8	0	\N	\N	\N	JCJ, 1977: 634, Diario el Día, Montevideo, 11 de diciembre de 1968; Prensa varia	2016-02-05 11:30:39.906997	2016-02-17 12:47:57.454095	\N
153	Robo de armas que previamente habían sido incautadas por la Policía	Es asaltado el Depósito Judicial de Bienes Muebles del que roban armas cortas y largas incautadas por la Policía a la organización en distintos procedimientos. Según la prensa, se utilizaron tres coches, se redujo al sereno y tras media hora en el local se retiraron llevándose siete u ocho revólveres y un paquete de balas.\r\n	1970-03-11	\N	Uruguay	urbana	Montevideo	Montevideo	Depósito Judicial de Bienes Muebles		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 656; Diario El País, Montevideo, 12 de marzo de 1970	2016-02-17 12:52:20.446179	2016-02-17 12:52:20.446179	\N
156	Asalto de la sucursal Tres Cruces del Banco Francés e Italiano	1970/03/30 Es asaltada la sucursal Tres Cruces del Banco Francés e Italiano de la que roban los depósitos efectuados durante la Semana Santa, ignorándose el monto del robo por tener los fondos nueve días sin contabilizar (JCJ, 1977: 657). Según la prensa se llevaron dieciséis millones Posteriormente, la Policía informó Raúl Bidegain había sido identificado de los asaltantes.\r\n\r\n	1970-03-30	\N	Uruguay	urbana	Montevideo	Montevideo	c/ 18 de julio y Duvimioso Terra		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 657; Diario De Frente, Montevideo, 1 de abril de 1970; El País, Montevideo, 2 de abril de 1970	2016-02-17 18:33:08.330386	2016-02-17 18:33:29.131546	\N
155	Enfrentamiento con la Policía	Se produce un tiroteo en el bar La Vía entre la Policía y un grupo de Tupamaros resultando heridos un policía y un tupamaro. José Mujica que queda gravemente herido con perforaciones en el hígado, estómago y páncreas y tiene que ser trasladado al Hospital Militar y el agente José Artigas Silva, es herido en una pierna. Junto a Mujica son detenidos otros tres tupamaros (Walter Sanzó Bianchi, Antonio Hermida Sánchez y Tabaré Curbelo Mederos).	1970-03-23	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Montecaseros con Larrañaga		\N	\N	MLN - Tupamaros	Uruguay	\N			4	0	2	4	0	1	0	\N	  JCJ, 1977: 657; Diario El País, Montevideo, 23 de marzo de 1970	2016-02-17 18:07:13.624711	2016-02-18 09:45:08.41592	\N
152	Trece tupamaras se fugan de la Cárcel de Mujeres, "Operación Paloma"	Trece militantes tupamaras presas en la Cárcel de Mujeres, en una operación concertada desde el exterior, denominada “Paloma”, huyen de la capilla del establecimiento en que asistían a misa: Julia Nelly Armando Ugón Coudin, Marta Elena Teresita Abella Lucchini, Élida Baldomir Coelho, Gloria Iris Barrios Camacho, Gladys Teresita Bruno Alvarenga, Cristina Cabrera Laport de Bidegain, Emilia Martha Carlevaro de Rocco, María Julia Castro, Myriam Raquel Fernández Márzico de Zabalza, Nybia Mariel González Bonilla, Myriam Kayden Montero, Jessie Arlette Macchi Torres y María Elia Topolansky Saavedra de Martínez Platero. \r\nPoco días después, el 14 de marzo, fueron capturadas dos de las fugadas (Julia Nelly Armand Ugón Coudin y Emilia Martha Carlevaro de Rocco) y el 2 de abril es capturada otra de ellas (María Lilia Castro Añasco) (JCJ, 1977: 657).	1970-03-08	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 656, ACTAS TUPAMARAS, 1987: 193-200	2016-02-17 12:22:40.666681	2016-02-18 09:49:22.8047	\N
157	Asalto a domicilio para robar armas	Integrantes del MLN se hacen presentes en la armería de la  calle Dunant, luego de amenazar a las personas que allí se encuentran, hurtan las armas existentes; al retirarse, un hijo menor del armero efectúa disparos de arma de fuego contra el vehículo utilizado por los atracadores, hiriendo al conductor quien pierde el control y choca contra un muro, por lo que huyen a pie, abandonando la camioneta y las armas hurtadas. La Policía detiene a José Pedro Lopardo, Gonzalo Romero e identifica a Sonia Mosquera de Wasem, Adolfo Wasem y Raúl Hernández, cuyas capturas se disponen (JCJ, 1977: 657). Según la prensa el asalto se produjo en la casa de un funcionario del Servicio de Radio Patrulla (Ney Suárez Giordano) que guardaba un arsenal de armas en su casa y quien disparó e hirió a José Pedro Lopardo fue el hijo del funcionario.\r\n	1970-04-03	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Dunant nº 3954		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	1	2	0	0	1	\N	JCJ, 1977: 657; Diario De Frente, Montevideo, 3 de marzo de 1970	2016-02-18 10:08:38.179592	2016-02-18 10:48:47.973547	\N
163	Asalto del Centro de Instrucción de la Armada (CIM)	Un grupo de cuarenta tupamaros asalta el Centro de Instrucción de la Armada (CIM) en la Ciudad Vieja de Montevideo, reducen a la guarnición formada por cincuenta y seis marinos y roban unas setecientas armas, muchas de ellas modernas, setenta mil municiones y seis equipos de radio transmisión a las que transportan en un camión militar. El asalto fue entregado por el empleado del referido Centro, marinero Fernando Gerardo Garín Laneri, infiltrado por la organización. En Actas Tupamaras aparece un desglose completo de las armas incautadas (1987: 233).\r\n	1970-05-29	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Washington nº 98		\N	\N	MLN - Tupamaros	Uruguay	\N			40	0	0	0	0	0	1	\N	JCJ, 1977: 661; ACTAS TUPAMARAS, 1987: 233; El País, Montevideo, 30 de mayo de 1970	2016-02-18 13:00:49.020503	2016-02-18 13:00:49.020503	\N
162	Intento de incendio del domicilio del mayor de la Fuerza Aérea	El MLN se responsabiliza del intento de incendio perpetrado contra el domicilio del mayor de la Fuerza Aérea Humberto Gómez, como represalia por haber aportado datos que permitieron la captura de Alfredo Rivero Cedrés.	1970-05-04	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 659	2016-02-18 11:51:58.44419	2016-02-18 13:01:23.97328	\N
166	Emisión de radio clandestina	Mediante una emisión radial clandestina lograda por interferencia de la onda de las estaciones locales, en la frecuencia que correspondería a CX15, el MLN suministra una versión sobre los atentados anteriores, sobre la muerte de Pucurull y sobre el asalto al Centro de Instrucción de la Armada.	1970-06-02	\N	Uruguay	urbana		Canelones			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	 JCJ, 1977: 661	2016-02-18 13:35:05.04135	2016-02-18 13:37:12.891308	\N
167	Atentado contra el agente Nelson S. Sosa	En la versión de la Junta de Comandantes en Jefe, ese día se alude a que al ser asaltada una sucursal del Banco del Uruguay en el que se roban unos diez mil dólares, se produjo un tiroteo en el que resultó herido un funcionario policial (JCJ, 1977: 622). Sin embargo, en la prensa trascendió que un agente de Policía, Nelson Simbad Sosa, recibió un disparo en la cabeza mientras vigilaba un kiosco ubicado en Comercio y la Rambla, en el barrio de Buceo. Este mismo agente había participado en enero en una acción contra el MLN en la cual, tras un accidente de coche de tres militantes, fueron detenidos por policías siendo posteriormente rescatados por un grupo de ocho militantes que redujeron a los agentes. Durante los siguientes, según la prensa, habría recibido amenazas telefónicas. Tras siete meses en el hospital, el 31 de enero moría a consecuencia del disparo. 	1970-06-11	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Comercio y la Rambla		\N	\N	MLN - Tupamaros	Uruguay	\N			3	1	0	0	0	1	0	\N	JCJ, 1977: 622; El Día, Montevideo, 12 de junio de 1970: portada; El Día, 1 de febrero de 1971, portada e interior	2016-02-19 12:06:09.051737	2016-02-19 12:06:09.051737	\N
172	Varios desarmes a policías, un agente muerto y varios heridos	Se producen varios intentos de desarmes a policías, algunos de ellos con enfrentamiento armado en los que resulta muerto un policía y seis heridos, entre ellos un tupamaro que fue detenido. La primera acción de desarme se produjo en el Hospital Pasteur (plaza Cipriano Miró) cuando cuatro tupamaros redujeron al agente que custodiaba la entrada y le sustrajeron el arma de reglamento, la gorra y la placa de identificación. En cuanto a intento de desarme que terminó con el agente muerto se produjo cuando dos tupamaros se acercaron al agente que vigilaba el domicilio del subjefe de la Jefatura de Policía Heleazar Agosto (Juan Ramón Gómez n° 3165) y dispararon contra el agente Armando Leses hasta tres veces e causándole de muerte. Según el MLN (Doc Norte: 8/70) la acción se debió a un intento de desarme en el que el agente se resistió. Unos poco minutos después, otro operativo en el que dos camionetas y un coche llegaron frente a las fábricas TEM (c/ Asilo nº 3336), bajando cinco o seis personas que hicieron fuego con metralletas contra el agente Luis Alberto Garín Rivero y los coraceros de la Guardia Republicana, Rodger Gómez y Eduardo Julio Colman siendo heridos, al menos dos de gravedad. Este mismo día se produjo otro tiroteo frente al domicilio (c/ San José nº 1464) de Armando Acosta y Lara (acusado de ser uno de los ideólogos de la organización parapolicial Escuadrón de la Muerte, el MLN lo asesinará junto a otros tres miembros el 14 de abril de 1972) entre el agente que custodiaba la casa (Guillermo Canacafúa) y dos personas, quedando el agente y un tupamaro (Peralta Larrosa) heridos de bala sin gravedad. Otro desarme se produjo en una sucursal del Banco Comercial (c/ Uruguayana y Alberto Flangini) cuando tres tupamaros le robaron el arma y la gorra al agente que la vigilaba. Ese mismo día, se produjo un desarme más cuando cuatro personas robaron el arma y la corra a un policía que esperaba al autobús (c/ Millán y Larrañaga). Según la prensa, para la relación de las diferentes acciones se robaron previamente cinco coches.	1970-07-04	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	5	1	0	7	5	\N	JCJ, 1977: 663; Doc Norte: 8/70; El País, Montevideo, 5 de julio de 1970; El País, Montevideo, 6 de julio de 1970, El Día, 5 de julio de 1970, 1 y 5. 	2016-02-19 20:57:11.091228	2016-02-19 20:57:11.091228	\N
154	Recuperación de material incautado por la Policía	El día 13 de marzo, a consecuencia de una explosión en una finca de la calle Yaro, la Policía descubre un refugio y un laboratorio del MLN, incautándose 16 bombas, armas, material fotográfico, medicamentos y un plano de Montevideo. Unos días después, el día 20, un grupo de tupamaros vuelve al garaje de la calle Yaro, reduce al guarda y recupera un cofre con unos 20.000 dólares y documentación que estaban enterrados en un túnel. 	1970-03-20	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Yaro nº 973		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 657; Diario De Frente, Montevideo, 6 de marzo de 1970	2016-02-17 17:45:09.025782	2016-02-19 12:34:31.906667	\N
170	Fuga de la cárcel de Salto de dos tupamaros	Se fugan de la cárcel de Salto J. J. Domínguez y Carlos Varela haciendo un agujero en la pared y huyeron en unas bicicletas que se les había dispuesto en el exterior.\r\n\r\n	1970-06-30	\N	Uruguay	urbana	Salto	Salto			\N	\N	MLN - Tupamaros	Uruguay	\N			2	0	0	0	0	0	1	\N	SASSO, 2015: 232; BLIXEN, Fugas. Historias de hombres libres en cautiverio, 2004: 19-28	2016-02-19 13:16:58.059394	2016-02-19 13:16:58.059394	\N
171	Asalto de la sucursal de Sayago del Banco de Londres y América del Sur	Es asaltada la sucursal de Sayago del Banco de Londres y América del Sur llevándose unos 56.000 dólares. Para llevar a cabo el operativo previamente un dos personas acudieron al domicilio del gerente del banco (c/ General Luna) y lo llevaron a la fuerza hasta el banco, quedándose otras dos personas en la casa vigilando a la familia. Al necesitar de otra de las llaves para acceder a la caja, acudieron al domicilio del cajero de la agencia (c/ Venezuela). Al no estar la persona en su casa, obligaron a su mujer a lo localizara telefónicamente para que regresa al domicilio. Al llegar a la casa, fue obligado a acudir al banco pudiendo finalmente acceder a la caja llevándose la cifra señalada.	1970-06-30	\N	Uruguay	urbana	Montevideo	Montevideo	Camino Ariel n°4801		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	2	1	\N	El Diario, Montevideo, 30 de junio de 1970; MLN Documentos, Norte: 8/70	2016-02-19 13:34:32.271224	2016-02-19 13:34:32.271224	\N
168	Asalto sucursal de UBUR	Es asaltada una sucursal de UBUR llevándose unos 28.000 dólares. Previamente fueron sacados de sus casas dos altos funcionarios del banco que tenían las llaves de la caja donde se guardaba el dinero. Algunos de los asaltantes se quedaron custodiando a los familiares de los funcionarios. Tras otro asalto unos días después (30 de junio) al Banco de Londres y América del Sur, se hacia referencia en la prensa a que la técnica utilizada fue la misma que la empleada en este operativo así como el asalto al Banco Palestino (23 de junio).	1970-06-16	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Martín C. Martínez y 18 de Julio		\N	\N	MLN - Tupamaros	Uruguay	\N			15	0	0	0	0	2	1	\N	MAYANS, 1971: 3/44; El País, Montevideo, 17 de junio de 1970; El Diario, Montevideo, 30 de junio de 1970	2016-02-19 12:21:27.034977	2016-02-19 14:01:28.588081	\N
169	Asalto Banco Palestino	Asalto al Banco Palestino mediante previo secuestro del gerente de la institución. Son robados 72.000 dólares. Para llevar a cabo el operativo se emplearon intercomunicadores radiales portátiles. Tras otro asalto unos días después (30 de junio) al Banco de Londres y América del Sur, se hacia referencia en la prensa a que la técnica utilizada fue la misma que la empleada en este operativo así como el asalto a una sucursal de UBUR (16 de junio).	1970-06-23	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	1	1	\N	MAYANS, 1971: 3/45; El Diario, Montevideo, 30 de junio de 1970	2016-02-19 12:32:27.437683	2016-02-19 14:06:04.770683	\N
174	Envío de cartas mimeografiadas a agentes de Policía 	El MLN envía sobres lacrados con hojas mimeografiadas a varios funcionarios de la Policía explicando las acciones en que policías fueron heridos o muertos\r\n\r\n	1970-07-14	\N	Uuruguay	\N	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	\N	\N	\N	JCJ, 1977: 663	2016-02-23 11:53:45.774996	2016-02-23 11:53:45.774996	\N
173	Varios allanamientos a domicilios de funcionarios de la Policía.	Mediante un operativo coordinado, se producen varios asaltos a domicilios de funcionarios de la Policía. Tres hombres y una mujer asaltan la casa del oficial Julio César Peirano (c/ Acevedo Díaz nº 1178), le maniatan a él, a su mujer y al padre de ella y le roban dos armas y documentos personales. Ese mismo día, dos personas asaltan la casa del sargento primero Luis E. Batalla (c/ Adolfo Berro nº 1222) reducen la esposa y se llevan documentos personales y municiones. Otra acción similar se cometió contra el domicilio del cabo del Departamento de Hurtos y Rapiñas, Luis A. Boeer (c/ Gauchos nº 4059) cuando cuatro personas asaltaron el domicilio, amenazaron a su mujer para que abandonara la Policía y le robaron el arma. Otra acción se produjo contra el domicilio del oficial César Díaz (c/ Solís Grande nº 942) que, ante los gritos de la mujer, finalmente no se llevó a cabo. Para la realización de las acciones se robaron dos taxis, un coche y una camioneta.\r\n	1970-07-11	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N		Uruguay	\N			\N	0	0	0	0	6	8	\N	JCJ, 1977: 662; MAYANS, 1971: 3/46; Diario El País, Montevideo, 12 de julio de 1970	2016-02-23 11:51:00.082837	2016-02-23 12:02:52.585265	\N
175	Intento fallido de allanamiento de domicilio, un asaltante herido de bala	Cuatro desconocidos, de los cuales uno viste uniforme policial, intentan penetrar al domicilio del subcomisario de la Policía de Montevideo, Óscar Delega Luzardo, y ante la actitud firme de éste se dan a la fuga, luego de intercambiarse algunos disparos, resultan al parecer uno de los asaltantes herido. 	1970-07-20	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N		Uruguay	\N			4	0	1	0	0	1	1	\N	JCJ, 1977: 664	2016-02-23 12:07:33.906644	2016-02-23 12:07:33.906644	\N
176	Envío de cartas a oficiales del Ejército y de la Armada	Oficiales del Ejército y de la Armada denuncian haber recibido cartas del MLN instándolos a desertar y plegarse a la sedición. 	1970-07-21	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	0	\N	JCJ, 1977: 664	2016-02-23 12:15:48.874231	2016-02-23 12:17:08.446532	\N
177	Robo de una camioneta	Según el Diario Ya, cinco tupamaros armados tomaron mate con dos camioneros y el dueño de una empresa de transportes, por espacio de una hora, mientras otros militantes tupamaros se iban con una camioneta de la Casa Soler. \r\n\r\n\r\n	1970-07-21	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Lima nº 1737		\N	\N	MLN - Tupamaros	Uruguay	\N			5	0	0	0	0	3	1	\N	 Diario Ya, Montevideo, 22 de julio de 1970	2016-02-23 12:31:20.657839	2016-02-23 12:31:20.657839	\N
178	Asalto a una sucursal de la Sociedad de Bancos	Es asaltada la sucursal de la Sociedad de Bancos robando unos 8.000 dólares y despojando del revolver, la gorra, el correaje y la placa policial al agente que custodiaba el banco. Para llevar a cabo la acción se robó previamente un taxi que se abandonó después. Según la prensa, la Policía identificó al tupamaro Juan Pablo Mirza que había pasado recientemente a la clandestinidad.	1970-07-22	\N	Uruguay	urbana	Montevideo	Montevideo	c/ San Martín n° 2952		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	1	1	\N	JCJ, 1977: 664; El País, Montevideo, 23 de julio de 1970	2016-02-23 12:39:44.863006	2016-02-23 12:39:44.863006	\N
179	Secuestro del juez Daniel Pereira Manelli	Cuatro tupamaros secuestran en su domicilio (c/ Joaquín Requena) al juez letrado de Instrucción de 1er Turno, Daniel Perira Manelli aunque se estima que al menos participaron quince miembros de la organización en el operativo. Mediante un comunicado al día siguiente, el MLN anuncia que han comenzado a actuar los tribunales revolucionarios y que el juez Pereira Manelli será interrogado durante 48 horas debido a las irregularidades en los procesos contra varios tupamaros detenidos. Ese mismo día también se enviaron también dos cartas al actuario Ramón Queiruga y el juez Gervasio Guillot mantuvo una entrevista en la cárcel de Punta de Carretas con los tupamaros Manerales y Manera, mostrando éstos la desvinculación con la acción. Según se pudo saber de los interrogatorios mantenidos con el juez, éste habría reconocido haber cometido errores judiciales y actuado con apresuramiento en varios fallos contra miembros del MLN. Tras 8 días secuestrado, es puesto en libertado el 4 de agosto portando un comunicado de la organización.	1970-07-28	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Joaquín Requena		\N	\N	MLN - Tupamaros	Uruguay	\N			15	0	0	0	0	1	0	\N	JCJ, 1977: 664 y 667; REY TRISTÁN, 2005: 338; El País, Montevideo, 29 de julio de 1970, El País, Montevideo, 30 de julio de 1970 	2016-02-23 13:08:13.562649	2016-02-23 13:08:13.562649	\N
180	Secuestros de Mitrione y Dias Gomide	Son secuestrados Dan Anthony Mitrione, experto de la Agencia Internacional para el Desarrollo (USAID) de Estados Unidos, agregado en la Prefectura de Policía y Aloysio Mares Dias Gomide, primer secretario y cónsul de la Embajada de Brasil en Montevideo. Tras salir de su casa (c/ Pilcomayo 5393), una camioneta intercepta el coche y cuatro personas inmovilizan a Mitrione y al conductor de la Jefatura de Policía, Manuel Emilio González al que le quitan el arma. Durante la captura, Mitrione es herido de bala en el tórax. Una vez introducido, la camioneta continuó hasta recoger  al otro secuestrado, el cónsul de la Embajada de Brasil en Montevideo, Aloysio Mares Dias Gomide que había sido retenido frente a su domicilio (c/ Potosí y Avda. Italia). Ambos secuestrados son conducidos al local de la calle Centenario nº 4115 donde permanecerán en cautividad. El mismo día, otro comando del MLN intentó sin éxito secuestrar a Michael Gordon Jones, segundo secretario de la Embajada de Estados Unidos que saltó del vehículo mientras estaba siendo transportado, consiguiendo huir. En el comunicado nº 4, el MLN exige a cambio de los secuestrados la liberación de todos los presos, unos 150 (incluidas 30 mujeres) con la posibilidad de salir a México, Perú o Argelia, una posibilidad que será rechazada posteriormente por el Ministerio del Interior. El 4 de agosto el MLN dejó en libertad al juez Pereira Manelli (secuestrado desde el 28 de julio). El día 7 es secuestrado otro ciudadano norteamericano, Claude Fly y ese mismo día es detenida la dirección de la organización, entre ellos Raúl Sendic (Caída de Almería). Mitrione fue asesinado el 10 de agosto de 1970 y Dias Gomides fue puesto en libertad el 21 de febrero de 1971.	1970-07-31	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N	Columna 40, 15 y 1		\N	0	1	0	0	2	\N	\N	PERNAS, 2013: 466; JCJ, 1977: 664-672; LABROUSSE, 2009: 45-51; REY TRISTÁN, 2005: 338; ALDRIGHI, 2007	2016-02-25 10:40:38.985672	2016-02-25 10:40:38.985672	\N
188	Incendio coche de Pietro Maulorico, Avanguardia Nazionale, "Brigate Rosse di Roma"	Unos días después de que se lanzara un coctel molotov contra su negocio, es incendiado el coche Mini Morris de Pietro Maulorico de Avanguardia Nazionale aparcado en frente de su casa. Esta acción, con otras realizadas en Roma durante este periodo, es firmada por las "Brigate Rosse di Roma".	1971-03-11	\N	Italia	urbana	Roma	Roma, Lacia	Via Tito Labieno nº 83		\N	\N	Brigadas Rojas	Italia	\N	Brigate Rosse di Roma		\N	0	0	0	0	0	1	\N	Nuova Resistenza, Abril de 71: 6	2016-02-29 12:29:45.755759	2016-03-04 12:45:39.870197	\N
46	Incendio del coche de Carmelo La Malfa, militante del MSI	A las 00:30 las Brigadas Rojas incendian el coche de Carmelo La Malfa, secretario de Franco Servello, político del MSI, un Taunus con matrícula MI K82085. Esta acción no aparecerá en ninguna sentencia penal ni será reivindicada. En Soccorso Rosso (1976: 292) aparece en la cronología de las Brigadas Rojas. 	1971-07-01	\N	Italia	urbana	Milán	Milán, Lombardia			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 62; SOCCORSO ROSSO, 1976: 292	2015-11-16 18:58:31.894615	2016-03-04 12:47:57.088522	\N
189	Incendio del coche de Gianfranco Moretti, sindicalista de ATAC ABRIL 1971	De día y delante de los trabajadores del depósito de Trastevere es incendiado el coche del Gianfranco Moretti, jefe técnico y sindicalista de derechas de ATAC. En un comunicado aparecido en la revista Nuova Resistenza de mayo de 1971, las Brigadas Rojas reivindican la acción sin fecha exacta.	\N	\N	Italia	urbana	Roma	Roma, Lacia			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	Nuova Resistenza, mayo de 1971: 4-5	2016-02-29 12:53:48.064046	2016-03-04 13:08:28.833582	\N
181	Secuestro fallido de Michael Gordon Jones	El mismo día que se secuestraba a Dan Mitrione y Alosyio Dias Gomides, un comando del MLN intenta secuestrar a Michael Gordon Jones, segundo secretario de la Embajada de Estados Unidos. Mientras esperaban en el garaje de su domicilio, apareció otro norteamericano, Nathan Rosenfeld, agregado cultural de la Embajada de Estados Unidos que también vivía en el mismo edificio y al que se le retuvo a la espera de que llegara Jones junto a otros vecinos. Cuando apareció, se le introdujo en uno de los vehículos. Fuera esperaba un grupo de apoyo en la camioneta robada que fue descubierta teniendo que huir del lugar antes de que salieran sus compañeros con el secuestrado. Durante el trayecto, Michael Gordon Jones logró escapar del coche y refugiarse en un comercio herido en la cabeza. Para llevar a cabo la acción se robaron dos vehículos, un coche y una camioneta.	1970-07-31	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Benito Blanco n°1259		\N	\N	MLN - Tupamaros	Uruguay	\N	Columna 40		7	0	2	0	0	2	2	\N	ALDRIGHI, 2007: 40-44	2016-02-25 10:52:24.501153	2016-02-25 10:52:24.501153	\N
183	Secuestro de Claude Fly	Durante los secuestros de Dan Mitrione y Alosyio Dias Gomides, es también secuestrado Claude L. Fly, ingeniero agrónomo norteamericano que estaba trabajando en Montevideo para el Ministerio de Ganadería y Agricultura en representación de la AID. Tres tupamaros entraron en el despacho de la Dirección de Suelos y Fertilizantes (Avda. Garzón y Dr. Pena) y tras reducir al ingeniero Luis de León, coordinador general de Suelos, que se hallaba en el interior del despacho junto a Fly, introdujeron al ingeniero norteamericano en una furgoneta robada que esperaba en el exterior. Fly fue liberado el 2 de marzo de 1971 tras haber sufrido un infarto. Ese mismo día es detenida la dirección de la organización, entre ellos Raúl Sendic (Caída de Almería).	1970-08-07	\N	Uruguay	\N	Montevideo	Montevideo	Avda. Garzón y Dr. Pena		\N	\N	MLN - Tupamaros	Uruguay	\N	Columna Uno		4	0	0	0	0	1	0	\N	ALDRIGHI, 2007: 188-191; JCJ, 1977:667; El Diario, Montevideo, 7 de agosto de 1970	2016-02-25 11:03:09.465499	2016-02-25 11:03:09.465499	\N
184	Caída de Almería	El mismo día que el MLN secuestra a Claude Fly es detenida en un local de la calle Almería (c/ Almería nº 4630) la dirección (Raúl Sendic, Luis Efraín Martínez Platero y Jorge Candán Grajales a excepción de Lucas Mansilla) y otros miembros de la organización (Alicia Rey Morales y Graciela Jorge Pancera, suplentes del Ejecutivo Dirección “fantasma” y otros miembros de la organización como Asdrúbal Pereira, Raúl Bidegain, Diego Piccardo Estévez y Edith Moraes). El operativo de la Dirección Nacional de Información e Inteligencia dispuso la vigilancia de la base del MLN y a medida que iban llegando los miembros fueron siendo detenidos (“Operación Ratonera”, según la prensa). Cuando llegaba Jorge Candán fue reconocido por la Policía produciéndose en tiroteo en los alrededores siendo herido de bala en el tobillo. Las detenciones se produjeron de manera progresiva: por la mañana a Edith Moraes y Asdrúbal Pereira en el interior del domicilio. Después a Graciela Jorge, a Jorge Candán (reconocido por la Policía produciéndose en tiroteo en los alrededores siendo herido de bala en el tobillo), Efraín Martínez Platero y posteriormente Raúl Sendic que había presenciado la detención de Candán pero no sospechó que la Policía estuviera en la casa y acudió siendo detenido. Tras Sendic calló Alicia Rey y finalmente Diego Picardo y Raúl Bidegain. El 9 de agosto fue allanada una finca (c/ Javier de Viana nº 955) siendo detenido el Comité Ejecutivo de Emergencia del MLN que se había creado tras la caída de Almería.	1970-08-07	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Almería nº 4630		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	1	9	0	1	0	\N	ALDRIGHI, 2007: 185-199; LABROUSSE, 2009: 45-50, JCJ, 1977: 667 y 670; El Diario, Montevideo, 7 de agosto de 1970	2016-02-25 11:13:10.254826	2016-02-25 11:14:21.360751	\N
182	Robo de medicamentos para Mitrione	Son robados de la Farmacia del Círculo varios medicamentos (sedantes, coagulantes, vitaminas, etc.) presumiéndose que puedan ser para la atención de Mitrione, gravemente herido. Según la prensa, la suma del robo supuso más de medio millón de pesos en medicamentos y trescientos mil en efectivo.\r\n	1970-08-02	\N	Uruguay	urbana	Montevideo	Montevideo	 c/ Constituyente		\N	\N	MLN - Tupamaros	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 666; El País, Montevideo, 3 de agosto de 1970	2016-02-25 10:56:52.505386	2016-02-25 11:14:45.96147	\N
185	Asesinato de Dan Mitrione 	Tras 11 días secuestrado, a las 4 de la madrugada del 10 de agosto de 1970, es descubierto el cuerpo exánime, con los cabellos teñidos de negro, de Dan A. Mitrione, maniatado y asesinado por cuatro disparos de diferentes calibres, disparados, según arrojó la autopsia, uno en la sien, otro junto al oído, uno en el pecho y el cuarto en la espalda La Asamblea General, reunida en sesión especial, decreta la suspensión de garantías pedida por el Poder Ejecutivo y, por unanimidad de los presentes (81 en 130) declara día de duelo nacional.	1970-08-10	\N	Uruguay	urbana	Montevideo	Montevideo			\N	\N	MLN - Tupamaros	Uruguay	\N			\N	1	0	0	0	1	0	\N	JCJ, 1977: 664 – 672	2016-02-25 11:18:16.175325	2016-02-25 11:18:16.175325	\N
25	Robo de armas de Tiro Suizo ¿CAMBIAR OBJETIVO?	Robo de armas en el Club de Tiro Suizo en Nueva Helvecia, departamento de Colonia. Participan 3 de los 4 grupos de El Coordinador (no participa la FAU). Se roban 20 fusiles checos modelo 1934, 5 fusiles con cerrojo y caño descalibrado, 2 carabinas calibre 22, un fusil Martini y 3700 balas Fue descubierta parte de la trama por lo que Raúl Sendic tiene que pasar a la clandestinidad.	1963-07-31	\N	Uruguay	urbana	Nueva Helvecia	Colonia	Club de Tiro Suizo		\N	\N	Coordinador	Uruguay	\N			\N	0	0	0	0	0	1	\N	JCJ, 1977: 609; COSTA OMAR, 1971: 253; FH: El Día, Montevideo, 6 septiembre de 1963, p. 10, El Día, 7 sep, p. 10, El Diario, 7 sep., portada, El Día, 8 septiembre, 14. El Diario, 8 sep, 16	2015-11-11 16:37:13.52531	2016-02-25 11:27:54.904789	\N
187	Ataque al negocio de Pietro Maulorico, Avanguardia Nazionale, "Brigate Rosse di Roma"	Es atacado el negocio en Roma de Pietro Maulorico de Avanguardia Nazionale. Esta acción, junto a otros realizadas en Roma durante este periodo, son firmadas por las "Brigate Rosse di Roma".	1971-03-03	\N	Italia	\N	Roma	Roma, Lacia			\N	\N	Brigadas Rojas	Italia	\N	Brigate Rosse di Roma		\N	0	0	0	0	0	1	\N	Nuova Resistenza, Abril de 71: 6	2016-02-29 12:23:48.994011	2016-03-04 12:45:24.118897	\N
193	Disparos contra el garaje de Felice Tacchini de la Magneti Marelli	Dos hombres disparan cuatro tiros contra la puerta del garaje del ingeniero Felice Tacchini de la Magneti Marelli en Sesto San Giovani. En un volante distribuido en la fábrica las BR reivindican el atentado.	1975-02-15	\N	Italia	urbana	Sesto San Giovani, Milán	Milán, Lombardia			\N	\N	Brigadas Rojas	Italia	\N			2	0	0	0	0	0	1	\N	TESSANDORI, 1977: 236; VVAA, Venti anni di violenza politica in Italia, 2008, vol.2: 443	2016-03-01 12:21:44.009101	2016-03-04 13:05:33.568943	\N
194	Incursión en la sede de IDI (Istituto dirigenti italiani)	Un comando formado por cinco persona realiza una incursión en la sede de IDI (Istituto dirigenti italiani) en Milán, encadenando a diez personas que se hallaban en el local. Antes de abandonar se pintó sobre la pared el símbolo de la organización. En un comunicado firmado el 28 de febrero (SOCCORSO ROSSO, 1976: 267-268) las BR reivindican la acción y acusan al instituto de contribuir a la represión de la clase trabajadora a través de la formación de los dirigentes para llevar a cabo restructuraciones en la fábricas y despidos de los trabajadores. \r\n	1975-02-26	\N	Italia	urbana	Milán	Milán, Lombardia	 via Chiaravalle nº 2		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	10	1	\N	SOCCORSO ROSSO, 1976: 267-268; TESSADORI, 1977: 243-244; La Vanguardia, España, 28 de febrero de 1975: 16	2016-03-01 12:48:05.716189	2016-03-04 13:06:39.422096	\N
209	Asalto en el "Centro studi" de la Confindustria	Cuatro brigadistas (tres hombres y una mujer) irrumpen en el “Centro studi” de la Confindustria ( Confederación General Italiana de Industria), retuvieron a las cinco personas que se encontraban en su interior y robaron documentos. Antes de irse se pinto en la pared el signo de la organización, alusiones contrarias al compromiso histórico y un cártel de la “Comandante Mara”. 	1975-10-29	\N	Italia	urbana	Milán	Milán, Lombardia 	Via Morigi nº 2		\N	\N	Brigadas Rojas	Italia	\N			4	0	0	0	0	5	1	\N	 TESSANDORI, 1977: 287-288	2016-03-09 12:58:28.008162	2016-03-09 12:58:28.008162	\N
80	Ataques contra magistrados y miembros del consejo administrativo del Gazzetino	Aciones rápidas y demostrativas contra coches de magistrados y miembros del consejo administrativo de "Il Gazzetino": disparos contra el coche y el garaje de Ennio Fortuna, procurador sustituto de la República (via Tasso 23/10, Mestre, Venecia), quema del coche de Gianfranco Carnesecchi, procurador jefe de la República de Venecia (via Morosini, 8, Lido Venecia), contra la puerta del apartamento de Lanfranco Zanca, miembro del consejo administrativo del Gazzettino (via Cesare Battisti, Padova) y, ataque con bomba molotov el apartamento de Angelo Tomelleri, presidente de la junta regional de Venecia, Democracia Cristiana.	1974-12-16	\N	Italia	urbana	Mestre, Lido, Padova	Padua, Veneto			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	4	\N	TESSANDORI, 1977: 232-233	2015-12-11 18:08:46.068478	2016-03-04 13:03:04.104205	\N
191	Disparos contra el coche de Pietro La Sala de la Signer de Leinì	En la noche del sábado 1 de febrero es disparado el Seat 132 de Pietro La Sala, ejecutivo de la Singer de Leinì, hasta siete veces en la puerta izquierda del coche con balas del calibre 7.65. El 8 de octubre de 1974 ya había sido quemado su coche junto con el de Giuseppe Zuccato, también de la Signer.\r\n	1975-02-01	\N	Italia	\N	Leinì, Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 234	2016-03-01 11:03:40.708945	2016-03-04 13:04:10.825654	\N
210	Acción propagandística en la Fiat Mirafiori, Turín	Unos días después de la acciones contra Boffa y Casabona, las BR llevan a cabo una acción propagandística a las puertas de la Fiat Mirafiori. Mientras los trabajadores entraban en la fábrica, dos coches (robados el día anterior) aparcados en diferentes lugares de los alrededores de la fábrica difundieron un mensaje sobre las acciones citadas: “Siamo delle Brigate rosse. Il rapimento di Vicenzo Casabona a Sampiedarena e l´aggressione al dottor Enrico Boffa della Singer di Leinì non sono altro che aspetti della lotta contro la borghesia che continua la sua opera nefasta ai danni degli operai e che vuole la repubblica presidenziale e il compromesso storico”. Entre medias, se apercibía que se abrieran las puertas ya que los coches estaban minados aunque posteriormente se pudo comprobar que era una falsa amenaza. 	1975-10-30	\N	Italia	urbana	Turín	Turín, Piamonte	corso Tazzoli y via Setembrini		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	2	\N	TESSANDORI, 1977: 288	2016-03-09 13:32:37.308742	2016-03-09 13:34:56.063341	\N
206	Enfrentamiento con la Policía	Se produce otro enfrentamiento armado durante una detención en un control policial. En esta ocasión, el brigadista Giovanni Battista Miagostovich presenta una documentación falsa, siendo obligado a introducirse en el coche policial. Durante el trayecto, el brigadista se resiste a ser detenido, intentar huir a pie y dispara contra los agentes que le había requerido la documentación. Los agentes respondieron a los tiros hiriendo levemente al brigadista y siendo detenido. En el interior del coche se encontró varia documentación como unos volantes del asalto al hospital de Génova, del ataque a De Carolis o un ejemplar de “Lotta armata per il comunismo”.	1975-10-20	\N	Italia	urbana	Milán	Milán, Lombardia	Via Palestro		\N	\N	Brigadas Rojas	Italia	\N			1	0	1	1	0	1	0	\N	TESSANDORI, 1977: 283-284	2016-03-08 14:57:15.976926	2016-03-09 18:53:26.956248	\N
192	Incendio del coche de Enrico Boffa de la Singer de Leinì	Tres días después de disparar contra el coche de La Sala, las BR destruyen con un cóctel molotov el Seat 125 de Enrico Boffa, director de personal de la Singer de Leinì. En un comunicado en el que se reivindicaban los dos atentados, las BR los acusaba de ser defensores del ataque represivo que se había lanzado contra los trabajadores de la Singer y el empleo del “terrorismo económico” con despidos continuos. La respuesta del consejo de fábrica a las acciones fue: “Sono azioni che nulla hanno e che vedere con la clase operaia”.	1975-02-04	\N	Italia	urbana	Leinì, Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 234	2016-03-01 11:29:31.295145	2016-03-04 13:04:50.89532	\N
197	Asalto al estudio de abogados de Massimo De Carolis, líder de DC en el municipio de Milán	Asalto al estudio de abogados de Massimo De Carolis, líder de DC en el municipio de Milán y representante del ala más conservadora del partido. Cuatro personas (Paola Besuschio, Pierluigi Zuffada, Fabrizio Pelli y Antonio Savino) se introducen en el estudio cubiertos con pasamontañas. En el interior son amordazadas 5 personas (Maria Rosa Bortolotto, Marino Mariani, Dario Fruscio, Giovanni Percivaldi, Annalisa Mazzetti, Angelo Veronelli). En la habitación de al lado está De Carolis con un cliente que es llevado junto con las otras personas. A De Carolis se le realiza un “proceso proletario” y se le sentencia con un disparo en su pierna izquierda, realizado por Savino, siendo la primera "gambizzazione" que realizan. Uno de los motivos por lo que se ataca a De Carolis es la negativa de poner el nombre de Roberto Franceschi (un joven que había muerto en un enfrentamiento con la Policía en enero de 1973 frente a la Universidad de Bocconi) a una escuela media en via Cagliero. También fue acusado de ser parte de la “maggioranza silenziosa”. Se roban documentos y se escribe en la pared “Brigate Rosse. Colpire i covi DC, centro di delinquenza politica e della controrivoluzione”. En un comunicado dejado por la noche en una cabina telefónica, las BR reivindica el atentado y acusa a la DC de ser el principal motivador de la “restructuración imperialista del estado”. El examen balístico reveló que el disparo fue producido por la misma pistola que la utilizada en el asesinato de los dos militantes del MSI en Padua en junio de 1974. Las BR reivindican la acción con un comunicado fechado el mismo día 15 de mayo (SOCCORSO ROSSO, 1976: 279-280) en el que señalan a DC como “el principal enemigo del momento”. También, en ese mismo texto precisan que no existe ningún vínculo operativo entre los Nuclei Armati Proletari (NAP) y las BR, terminando el comunicado “Viva la lotta dei Nuclei Armati Proletari”. Este mismo día se realizan otras acciones en Milán y Turín.	1975-05-15	\N	Italia	urbana	Milán	Milán, Lombardia	 Via Monte di Pietà nº 15		\N	\N	Brigadas Rojas	Italia	\N			4	0	1	0	0	1	7	\N	SOCCORSO ROSSO, 1976: 279-280; TESSANDORI, 1977: 253-255, SACCOMAN, 2013: 101-102	2016-03-01 18:27:07.4791	2016-03-04 13:07:47.569823	\N
198	Incendio de nueve coches de dirigentes de diferentes fábricas de Turín	En la noche del 15 al 16, diversos núcleos armados de las BR atacan 9 coches de diferentes dirigentes de fábricas de Turín: Fiat Mirafiori (Mario Scoffone, Guerrino Bottegoni, Giovani Erriu y Gaetano Gravina, Sergio Antonio Giacomazzi), Fiat Rivalta (Angelo De Vardo), Singer de Leinì (Sergio Antonio Giacomazzi y Andrea Parmaggiani) y de la Michelin de Stura (Ferruccio Zoccola). Ese mismo día se realizan otras en Milán.\r\n	1975-05-15	\N	Italia	urbana	Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	9	\N	SOCCORSO ROSSO, 1976: 279-280; TESSANDORI, 1977: 255-256	2016-03-01 18:30:16.518459	2016-03-04 13:08:05.275206	\N
29	Intento de asalto a la sucursal de Buceo del Banco de Cobranzas y enfrentamiento con la Policía	Tres dirigentes de UTAA, miembros del Coordinador, entraron armados y pretendieron llevarse medio millón de pesos de una sucursal del Banco de Cobranzas en el barrio de Buceo de Montevideo. El asalto fracasó y los tres cañeros (Nelson Santana, Julio Vique y Ataliva Castillo) ingresaron en prisión. El militante del Coordinador Vique y el agente de policía Pereira fueron heridos de bala durante el enfrentamiento, por lo que tuvieron que ser ingresados en el hospital. La acción provocó muchas protestas internas ya que se había realizado sin informar a nadie y muy cerca del apartamento de Violeta Setelich, compañera de Sendic, donde se realizaban muchas reuniones. De hecho, en el tiroteo Sendic pudo disparar desde el balcón. El Coordinador continuó pero el grupo de la FAU, tras esta acción, lo abandonó.	1964-06-11	\N	Uruguay	urbana	Montevideo	Montevideo	c/ Arrascaeta y Rivera		\N	\N	Coordinador	Uruguay	\N	UTAA		3	0	2	3	0	\N	1	\N	SASSO, 2010: 221, MÁRQUEZ ZACCHINO, 2010: 34-35	2015-11-12 10:25:17.817964	2016-03-04 10:21:32.123191	\N
200	Secuestro de Gancia y muerte de Mara	A las 15:30 es secuestrado el doctor Vittorio Vallarino Gancia, administrador delegado y director general de la “Gancia” de Caneli, una empresa de bebidas alcohólicas. El secuestro se efectúa cerca de la villa del industrial. Al día siguiente se piden mil millones de liras y quinientos más si el pago se retrasa. Primer secuestro con objetivo de financiación. Se lo llevaron a un caserio Spiotta, en las colinas de Acqui Terme, cerca del pueblo de Arzello.\r\nUnas horas antes del secuestro, un joven había tenido un accidente con un Fiat 124 que había chocado con otro vehículo. El joven se ofreció pagar la compensación del accidente pero se llamó a la policía que localizó el coche en la periferia de Canelli y en su interior estaba Massimo Maraschi que intentó huir pero fue detenido y llevado a comisaria, clasificándose como “preso político”. Hasta entonces las investigaciones no habían considerado que se tratara de una acción de las BR. Al ser detenido un brigadistas cerca del lugar donde había sucedido el secuestro, las investigaciones se centraron en la posibilidad de que hubiera sido obra de las BR. \r\nAl día siguiente (5 de junio), la Policía se dispuso a investigar fincas en la zona donde  se había trasladado al industrial, llegando hasta el caserío donde estaba Gancia. Un brigadista, ante la llamada de los policías a la puerta, la abrió y acto seguido tiró una granada de mano contra ellos, hiriendo a dos carabineros (Rosario Cattafi y Umberto Rocca que perderá un ojo y un brazo). A continuación se produjo un enfrentamiento armado, siendo heridos Margherita Cagol en un brazo mientras y el carabinero Giovanni D`Alfonso, herido de muerte. Mientras huían los dos brigadistas (Mara Cagol y un brigadista no identificado) cada uno en un coche, se encuentran con otro carabinero produciéndose otro tiroteo en el que muere Mara Cagol. Según Renato Curcio (1994: 125), la brigadista fue disparada cuando estaba sentada con los brazos en alto, un único disparo en el costado izquierdo. A continuación, la Policía allanó la casa y encontró en una habitación al secuestrado. 	1975-06-04	1975-06-05	Italia	\N	colinas de Acqui Terme, cerca del pueblo de Arzello	Alessandria, Piaomonte			\N	\N	Brigadas Rojas	Italia	\N	Columna de Turín		\N	2	2	1	\N	4	\N	\N	TESSANDORI, 1977: 258-267; SCIALOJA y CURCIO, 1994: 121; MORETTI, ROSSANDA y MOSCA, 2002: 111-113	2016-03-04 12:29:55.18599	2016-03-04 12:29:55.18599	\N
42	Incendio del coche de Ermanno Pellegrini, empleado del servicio de seguridad de la Pirelli-Bicocca	Las Brigadas Rojas cometen su segunda acción, incendiando el coche de Ermanno Pellegrini, empleado del servicio de seguridad de la Pirelli-Bicocca. En el comunicado de la acción, las BR señalan que es debido al despido de un trabajador (Della Torre) de la fábrica y que ""ad ogni azione repressiva che il padrone tenterà di mettere in atto nei confronti dei lavoratori a seguito della lotta che stiamo conducendo, sarà risposto secondo il principio: per un occhio due occhi, per un dente tutta la faccia".	1970-11-27	\N	Italia	urbana	Milán	Milán, Lombardía	Barrio de Biccoca		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 50-51, SOCCORSO ROSSO, 1976: 80	2015-11-16 17:20:06.560409	2016-03-04 12:42:03.296224	\N
68	Intento de incendio del estudio de Junio Valerio Borghese, "Brigate Rosse di Roma"	Un grupo que firma las acciones como Brigate Rosse y que es aceptado por las propias BR, siendo calificadas en Nuova Resitenza como "le BR di Roma", intenta incendiar el estudio de Junio Valerio Borghese, militar y político fascista acusado de intentar ejecutar un golpe de estado a finales de 1970. Este grupo operará desde diciembre de 1970 hasta julio de 1971 y realizará diferentes acciones contra objetivos de extremaderecha. 	1970-12-13	\N	Italia	urbana	Roma	Roma, Lacio			\N	\N	Brigadas Rojas	Italia	\N	BR di Roma		\N	0	0	0	0	0	1	\N	SOCCORSO ROSSO, 1976: 87; Nuova Resistenza, Abril de 71: 6	2015-11-23 15:45:07.635778	2016-03-04 12:43:25.402897	\N
186	Ataque sede del MSI en barrio Quadrado, Roma, "Brigate Rosse di Roma"	Las "Brigate Rosse di Roma" atacan la sede del MSI en barrio Quadrado, Roma. Este grupo, surgido espontáneamente en Roma firmará las acciones como Brigate Rosse.	1971-02-23	\N	Italia	urbana	Roma	Roma, Lacio	barrio Quadraro		\N	\N	Brigadas Rojas	Italia	\N	Brigate Rosse di Roma		\N	0	0	0	0	0	1	\N	Nuova Resistenza, Abril de 71: 6	2016-02-29 12:13:20.477928	2016-03-04 12:45:10.892676	\N
47	Robo y explosión el coche de Raffaele Artoni, militante del MSI	Las Brigadas Rojas roban el coche de Raffaele Artoni, militante del MSI. A diferencia de las anteriores acciones, esta vez lo llevan a un lugar aislado y lo destruyen con explosivos. Unos días después se difundiría un volante por el barrio Quarto Oggiaro, fechado el día 19 de julio de 1971 y firmado por las Brigadas Rojas. En él, entre otros cosas, se asumía la autoría del robo del Mini Morris de Raffaele Antoni al que calificaban de fascistas  y se aportaban datos personales, así como acciones fascistas en las que había participado.	1971-07-15	\N	Italia	urbana	Milán	Milán, Lombardía	Quarto Oggiaro		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	SACCOMAN, 2013: 62-63	2015-11-17 09:43:23.16196	2016-03-04 12:48:12.285564	\N
199	Asalto a la sede de Democrazia Cristiana (DC) en Affori, Milán	A última hora de la tarde del día 14 en Affori, periferia de Milán, un comando formado por tres personas armadas asalta la sede de DC, retienen a cinco personas que se encontraban en el interior (Nino Intiso, Alberto Pozzi, Giovanni Zaccaria, Paolo Bigatti y Pietro Fontana) y roban documentos de militantes del partido. En otros trabajos (SOCCORSO ROSSO, 1976: 279) se sitúa en Mestre, Venecia.\r\n\r\n	1975-05-14	\N	Italia	\N	Affori, Milán	Milán, Lombardía			\N	\N	Brigadas Rojas	Italia	\N			3	0	0	0	0	5	1	\N	TESSANDORI, 1977: 253-254	2016-03-02 17:36:37.019954	2016-03-04 13:07:33.915321	\N
195	Fuga de la cárcel de Casale de Renato Curcio	El 18 de febrero, un núcleo armado de las Brigadas Rojas ataca y ocupa la prisión de Casale Monferrato liberando a Renato Curcio que llevaba preso tres meses (8 de septiembre de 1974 es detenido junto con Alberto Franceschini a partir de una trampa de la policía a través de Silvano Girotto, Frate Mitra). Un comando formado por seis personas asaltó desde fuera el edificio. Según la prensa, primero dos personas (una de ellas Mara Cagol) llamaron a la puerta y cuando los guardianes abrieron se vieron amenazados con pistolas siendo inmovilizados. A continuación se cortaron el cable telefónico para dejar el penas aislado del exterior. Mientras tanto, otros miembros del comando se introdujeron en el interior hasta el lugar donde se encontraba Curcio. Tras encerrar al responsable de la cárcel en una habitación, se dieron a la fuga en dos coches. En un comunicado fechado el 21 de febrero (TESSANDORI, 1977: 242-243) las BR reivindican la acción. 	1975-02-18	\N	Italia	urbana	Casale Monferrato	Alessandria, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			5	0	0	0	0	0	1	\N	SOCCORSO ROSSO, 1976: 264-265; TESSANDORI, 1977: 236-243 La Vanguardia, 19 de febrero de 1975: 19	2016-03-01 14:06:14.835995	2016-03-04 13:06:17.555337	\N
201	Enfrentamiento con la Policía, Baranzate, Milán	La Policía acude a una casa en la via Monte Bisbino nº 20. Al llamar a la puerta e identificarse como policías, desde el interior de la vivienda se disparan dos tiros contra la puerta, hiriendo uno de ellos a un policía en el brazo (Antonio Piacente), respondiendo los policías a los disparos. En el interior de la casa fueron detenidos dos brigadistas (Pierluigi Zuffada y Attilio Casaletti) y se encontraron numerosos documentos de la organización, entre ellos la "Rizoluzione della direzione strategica".	1975-06-18	\N	Italia	urbana	Baranzate, Milán	Milán, Lombardia	via Monte Bisbino nº 20		\N	\N	Brigadas Rojas	Italia	\N			2	0	1	2	\N	\N	\N	\N	TESSANDORI, 1977: 267-269	2016-03-07 12:52:00.560073	2016-03-07 12:52:00.560073	\N
202	Asalto robo Banca Popolare en Lonigo, provincia de Vicenza	Un núcleo de las BR asalta la Banca Popolare en Lonigo, provincia de Vicenza. Robaron 42 millones de liras y documentos. Al día siguiente, en Génova, se difunde un comunicado de la organización (SOCCORSO ROSSO, 1976: 287-288) la acción, siendo la primera vez que las BR reivindica una acción de estas características. 	1975-07-14	\N	Italia	urbana	Lonigo, Vicenza	Vicenza, Veneto			\N	\N	Brigadas Rojas		\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 270; SOCCORSO ROSSO, 1976: 287-288: La Stampa, Italia, 16 de julio de 1975, 13	2016-03-07 16:57:57.224086	2016-03-07 16:57:57.224086	\N
203	Enfrentamiento con la Policía, un agente muerto	En la periferia de Ponte di Brenta, se produce un tiroteo entre dos brigadistas (Prietro Despalo y Carlo Picchiura) y una patrulla de policías (Armando Dalla Pozza y Antonio Niedda) que realizaban un control. Al no disponer de documento uno de los brigadistas, la policía les pidió que descendieran del vehículo y entonces uno de ellos disparó contra el agente Antonio Niedda hiriéndole de muerte. El otro agente de policía, respondió disparando mientras huían del lugar del crimen, siendo posteriormente detenidos en las inmediaciones.\r\n	1975-09-04	\N	Italia	urbana	Ponti di Brenta, Padua	Padua, Veneto			\N	\N	Brigadas Rojas	Italia	\N			2	1	0	2	0	2	0	\N	TESSANDORI, 1977: 273-274	2016-03-07 17:52:16.71656	2016-03-07 17:52:16.71656	\N
204	Enfrentamiento con la Policía	En Altopascio, en la provincia de Lucca, es detenida la militante de las BR Paola Besuchio. En el momento de su detención, Besuchio se dio a la fuga produciéndose un tiroteo en el que es herida en la pierna derecha y detenida por el agente Mariano Cucci. Otros tres brigadistas armados presenciaron el tiroteo e intentaron ayudarla pero fueron amenazados por el policía: “Andate via, o sparo prima a lei e poi a voi”, teniendo que huir.\r\n	1975-09-30	\N	Italia	\N	Altopascio, de Lucca,	 de Lucca, Toscana			\N	\N	Brigadas Rojas	Italia	\N			1	0	1	1	0	1	0	\N	TESSANDORI, 1977: 275-276	2016-03-07 19:27:26.968788	2016-03-08 11:34:02.163758	\N
205	Asalto y robo de la Cassa di Risparmo, en el interior del hospital San Martino	Un comando formado por cuatro personas asalta de la Cassa di Risparmio, situado en el interior de un complejo hospitalario (ospedale San Martino) robando 118 millones de liras. En el volante que reivindicaba la acción (TESANDORI, 1977: 281-282) se cargaba contra el sistema sanitario capitalista como eslabón de la explotación del proletariado. Tras el robo en en Lonigo, es la segunda acción de estas características que reivindica la organización.	1975-10-18	\N	Italia	urbana	Génova	Génova, Liguria	Largo Rosanna Benzi nº 10		\N	\N	Brigadas Rojas	Italia	\N	Columna de Génova		4	0	0	0	0	0	1	\N	SOCCORSO ROSSO, 1976: 288; TESANDORI, 1977: 281-282; La Stampa, Italia, 10 de octubre de 1085, p. 8	2016-03-08 12:27:13.809948	2016-03-08 12:27:13.809948	\N
207	Secuestro express de Enrico Boffa y disparo en la pierna	En Rivoli, Turín es secuestrado Enrico Boffa, dirigente de la Singer y líder de la DC en Rivoli. Es abordado en el garaje de su casa cuando regresaba del trabajo por tres brigadistas, le ponen un cártel con el texto escrito “BR. Trasformare la lotta contrattuale in scontro di potere e battere il disegno presidenziale e corporativistico di Agnelli e Leone e il compromesso storico di Berlinguer. Costruire i organizzare il potere proletario armato” y le realizan una fotografía (Foto en l´Unità, 23 de octubre de 1975, p. 9) y posteriormente le disparan en una pierna derecha.  El 4 de febrero de 1975 las BR habían quemado el coche de Boffa. Durante este periodo en al Singer se estaban produciendo numerosos despidos de trabajadores, 1788 trabajadores desde septiembre.	1975-10-21	\N	Italia	urbana	Rivoli, Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			3	0	1	0	0	1	0	\N	TESSANDORI, 1977: 284 – 286; l´Unità, 23 de octubre de 1975, p. 9	2016-03-09 11:58:49.048894	2016-03-09 12:06:35.454468	\N
211	Incendio del coche de Alberto Garocchio, exponente de DC y Comunione e Liberazione	Se incendia el coche (Lancia Beta 1800) de Alberto Garocchio, exponente democristiano de Comunione e Liberazione, frente a su domicilio. En el volante en el que se reivindica la acción, las BR se refieren a que el coche usado por Garocchio pertenece al Centro de Estudios de Esperienze di Unità (UDU) y cargan contra Comunione e Liberazione: “Esperienze di unità (EDU)  è la sigla con cui Comunione e Liberazione si è presentata alle elezioni. Alberto Garocchio è il direttore di esperienze di unità. Egli è inoltre: consigliere comunale DC, responsabile culturale di CL, responsabile dell´ufficio formazione queadri delle DC, membro della direzione cittadina sempre della DC. Comunione e Liberazione è l`altra faccia della moneta della DC di De Carolis. Mentre la “destra” punta direttamente alla svolta reazionaria e si organiza per farla, CL offire la copertura. E`un mistero solo per i revisionisti che appena possono fanno comunella con questi provocatori di proffesione al soldo dell´imperialismo che CL lavora insieme alle maggioranze silenziose, alle centrali di spionaggio (come “Russia Cristiana”) e ai fascisti più neri”.	1975-12-05	\N	Italia	urbana	Milán	Milán, Lombardia	Via Crivelli nº 10		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	Corriere della Sera, Italia, 14 de diciembre de 1975, p. 21 	2016-03-09 18:59:50.489901	2016-03-09 18:59:50.489901	\N
208	Secuestro express de Vicenzo Casabona, jefe de personal de Ansaldo Nucleare	Veinticuatro horas después de la agresión a Boffa, las BR llevan a cabo una acción de las mismas características. Esta vez, se secuestra a Vicenzo Casabona, jefe de personal de Ansaldo  Nucleare del barrio de Sampierdarena de Génova. Cuando aparca su coche en el garaje en la ciudad cercana a Génova de Arenzano, acompañado de su hijo, es amenazado por tres brigadistas, más uno que esperaba en una furgoneta, se le encapucha, se le introduce en la furgoneta y se le interroga durante una hora, se le corta el pelo y posteriormente se le encadena a un árbol en el basurero de Recco. Cuando se produjo el secuestro de Amerio (primer secuestro prolongado, 10 de diciembre de 1973), las BR ya habían señalado a Casabona en un volante: “Oggi Amerio, domani Casabona”. 	1975-11-22	\N	Italia	urbana	Arenzano, Génova	Génova, Liguria	Via Capitano Romano		\N	\N	Brigadas Rojas	Italia	\N			4	0	1	0	0	1	0	\N	TESSANDORI, 1977: 286-287	2016-03-09 12:36:17.152294	2016-03-09 19:05:33.941873	\N
212	Quema de un vehículo en un ataque a un cuartel de los carabineros	Es atacada con un coctel molotov y una ráfaga de disparos una "caserma" (cuartel) de los carabineros, quemando una furgoneta Fiat 850 del Arma de los Carabineros a aparcada en la via Montecatini nº 14. Una llamada telefónica comunicaba que las BR habían dejado un volante en una cabina telefónica reivindicando el atentado en que se reivindicaban tanto la acción contra Garocchio (5 de diciembre de 1975) como ésta. En cuanto a ésta se dice: “Mercoledì 10-12-75 un nucleo armato delle Brigate Rosse ha attaccato la caserma dei carabinieri di via Montecatini e ha distrutto un automezzo militare (camioncino Fiat 850) parcheggiato nel suo cortile. Prendiamo atto del fatto che questa notizia è stata censurata. I carabinieri sono il braccio militare più omicida della controrivoluzione che i padroni delle multinazionali hanno scatenato contro tutti i proletari. Essi hanno carta bianca per l´uso indiscriminato delle armi, e infatti uccidono “a caldo” o “a freddo” per difendere l`”ordine” del regime. I morti non si contano più. Ma dietro il singolo carabiniere che preme il grilletto si snoda una trama di coperture e di complicità che investe anche i partiti considdetti “di sinistra. La famigerate leggi “contro la criminalità” che hanno istituzionalizzato la pena di morte sono passate anche perchè il PCI non ha voluto opperre nessuna mobilitzione. Compagni, per rispondere veramente a chi si attrezza sempre piú perfettamente per l´assassinio di proletari “delinquenti” e di avanguardie politiche; a chi ha reintrodotto “di fatto” la pena di morte: è necessario organizzare dovunque nuclei di potere proletario armato per bbattere un progetto imperialista armato con una organizazzione combattente armata. È necessario portare l´attaco al cuore dello stato. È necessario colpire con continuità e intensità crescenti i covi, i mezzi militari, le infrastrutture e i capi di questa “banda armata” criminale al servicio esclusivo dei padroni” (TESSANDORI, 1977: 292).	1975-12-10	\N	Italia	urbana	Milán	Milán, Lombardia	via Montecatini nº 14		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 292 ; Corriere della Sera, Italia, 14 de diciembre de 1975, p. 21 	2016-03-09 19:02:49.471408	2016-03-10 16:19:22.471994	\N
213	Quema de coches de empleados de la Fiat ligados a la CISNAL o al SIDA, Turín	Son quemados seis coches de empleados de la Fiat, ligados a la CISNAL o al SIDA en diferentes partes de la ciudad (vía Guala, via Finalmarina, vía Nomis, vía Foligno) y alrededores (en Venaria Reale, vía Tessarin y en  Grusgliasco en vía Anastasio). Las BR reivindicaron la acción mediante un comunicado cargando contra estos sindicatos.	1975-12-10	\N	Italia	\N	Turín	Turín, Piamonte			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	6	\N	 TESSANDORI, 1977: 292-293	2016-03-10 11:42:51.968573	2016-03-10 11:42:51.968573	\N
214	Disparos en las piernas de Luigi Solera, médico de la Fiat, Turín	Cuando llega a la puerta de su casa tras salir del trabajo, una persona se acerca, le pregunta si es Luigi Solera (médico desde hace 15 años de la Fiat de Turín) y le dispara a las piernas con una pistola con silenciador. Tres disparos impactan en la pierna izquierda y un último en la rodilla derecha. Una llamada telefónica a la agencia Ansa reivindicó el atentado. Al día siguiente, un comunicado explicaba la acción (TESSANDORI, 1977: 293-294). Según dice, el acuerdo firmado entre sindicatos y la Fiat el 8 de noviembre es el causante de la acción de las BR. En cuanto a Luigi Solera, señala el comunicado, que no se preocupaba por la integridad física y de la salud de los trabajadores y, en vez de eso, los envía de nuevo al trabajo. Por tanto, continua el comunicado, es un colaborador activo e importante en la política de despidos que con la excusa del absentismo pretende eliminar la vanguardia de lucha y a los trabajadores que no aceptan la línea productivista que los patrones pretenden imponer para salir de la profunda crisis. Los médicos en la fábrica, termina el comunicado, representan un aparato de represión y control de los patrones, por tanto la práctica de depuración debe ser practicada también contra ellos por parte de la vanguardia revolucionaria en las fábricas. 	1975-12-17	\N	Italia	urbana	Turín	Turín, Piamonte	 Corso Massimo D´Azeglio nº 102		\N	\N	Brigadas Rojas	Italia	\N			\N	0	1	0	0	1	0	\N	TESSANDORI, 1977: 293-294	2016-03-10 12:34:59.538725	2016-03-10 12:34:59.538725	\N
215	Pintadas en el palacio de justicia de Alessandria	Tras el descubrimiento de una base de las BR en Pavia y la detención de Fabrizio Pelli el 24 de diciembre de 1975, las BR llevan a cabo una acción demostrativa en Alessandria, al pintar la estrella y las siglas de la organización en los muros del tribunal (palazzo di giustizia) donde se iba a celebrar el juicio contra el brigadista Massimo Maraschi (detenido el 4 de junio de 1975, el mismo día que el secuestro de Gancia). Foto en: La Stampa, 28 de diciembre de 1975, p.11\r\n	1975-12-27	\N	Italia	urbana	Alessandria	Alessandria, Piamonte	Corso Crimea		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 296; La Stampa, 28 de diciembre de 1975, p.11	2016-03-10 14:12:29.056485	2016-03-10 14:12:29.056485	\N
216	Ataque a un cuartel de los carabineros en Milán	En la noche, es atacado con bombas incendiarias el cuartel de los carabineros “Musocco” del barrio de Quarto Oggiaro, destruyendo una furgoneta Fiat 850, un coche Fiat 500 y un Alfetta. La acción fue reivindicada mediante una llamada telefónica. 	1976-01-13	\N	Italia	urbana	Milán	Milán, Lombardia	barrio de Quarto Oggiaro		\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	1	\N	TESSANDORI, 1977: 298-299	2016-03-10 16:30:20.140941	2016-03-10 16:30:20.140941	\N
217	Quema de coches en dos cuarteles de los carabineros, Génova	A las 5:30 de la mañana estallan dos bombas en el cuartel de Molassana en Génova que habían sido lanzadas desde la carretera, destruyendo una furgoneta, un Fiat 500 y dañado una Fiat Campagnola. 45 minutos más tarde, prendieron fuego a una furgoneta de los carabineros de San Teodoro abriendo la tapa del tanque de gasolina y prendiéndole fuego. Se reivindicaron las acciones con un comunicado conjunto (TESANDORI, 1977: 299-300) en el que se carga contra los carabineros como instrumentos militares de la burguesía, contra diferentes empresas, contra el “ultra revisonisti” Berlinguer y el compromiso histórico. El comunicado termina aludiendo al brigadista Massimo Maraschi que había sido recientemente condenado a 30 años de cárcel y se hace una amenaza contra las autoridades en relación con el caserío Spiotta donde había muerto la brigadista Mara Cagol, se dice que pertenece a la organización y al pueblo y nadie podrá ni venderlo, ni comprarlo. 	1976-01-14	\N	Italia	urbana	Génova	Génova, Lijuria			\N	\N	Brigadas Rojas	Italia	\N			\N	0	0	0	0	0	4	\N	TESSANDORI, 1977: 299-300	2016-03-10 17:22:33.474479	2016-03-10 17:22:33.474479	\N
218	Enfrentamiento con la Policía y segunda detención Curcio	Primero se detuvo en via Umbria a Vicenzo Guagliardo, Silvia Rossi Marchesa y Angelo Basone en posesión de armas, identidades falsas y un millón y medio en efectivo. También son encontrados puntos de apoyo en San Donato Milanese (una caja con mucho material), en via Pantaleone nº 7 (dos almacenes), en San Giuliano Milanese (un apartamento en el que se encuentran armas). Serán después detenidos Giuliano Isa, Adriano Colombo, Antonio Morlacchi, padre de Pietro. Cuando se intenta entrar en la casa de via Maderno de Milán donde se encontraban Renato Curcio y Nadia Mantovani, antes de entregarse se produce un fuerte tiroteo siendo herido Curcio en un hombro. Al percatarse de que estaban acorralados, se entregaron. 	1976-01-18	\N	Italia	urbana	Milán	Milán, Lombardia	Via Maderno nº 5		\N	\N	Brigadas Rojas	Italia	\N			\N	0	1	8	0	1	0	\N	TESSANDORI, 1977: 301-303; CURCIO, 1994: 131-137	2016-03-11 11:55:33.936828	2016-03-11 11:56:35.967992	\N
\.


--
-- Name: acts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ccqpaauqthraad
--

SELECT pg_catalog.setval('acts_id_seq', 218, true);


--
-- Data for Name: acts_target_categories; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY acts_target_categories (act_id, target_category_id) FROM stdin;
34	30
30	22
38	22
18	22
10	22
57	10
92	28
94	28
100	18
104	30
113	30
115	30
116	30
121	10
122	23
114	10
136	22
26	31
31	10
150	22
154	13
174	30
25	22
54	10
62	10
64	10
69	10
66	18
79	18
194	22
200	10
207	10
209	22
210	28
208	10
214	10
215	29
212	13
60	18
63	10
\.


--
-- Data for Name: acts_target_subcategories; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY acts_target_subcategories (act_id, target_subcategory_id) FROM stdin;
9	45
14	56
15	45
10	21
16	54
74	28
75	12
20	55
75	28
58	2
22	50
76	54
13	1
78	54
80	41
80	54
190	54
191	54
192	54
195	42
39	53
28	51
199	28
33	48
32	45
37	29
4	29
5	48
40	53
6	29
7	53
8	47
197	12
197	28
198	54
200	1
189	54
193	53
201	1
202	45
203	1
59	54
81	45
82	52
83	45
84	56
85	45
86	11
87	45
88	2
89	51
90	47
93	41
95	5
96	45
97	47
99	29
101	55
102	55
103	52
105	45
106	48
107	55
108	29
61	54
110	1
109	1
111	1
112	1
204	1
17	2
19	2
118	42
119	1
120	53
123	1
124	10
126	45
127	2
128	52
205	49
131	1
130	1
132	53
133	1
134	52
135	1
137	52
138	49
139	45
140	3
206	1
141	1
142	1
143	43
211	54
145	53
146	52
146	54
27	29
21	2
213	54
151	45
216	21
149	1
91	1
153	41
217	21
77	3
156	45
155	1
152	42
218	4
159	18
158	53
157	53
160	3
160	54
161	1
163	23
162	53
164	1
165	21
165	54
167	1
170	42
171	45
168	45
169	45
172	1
172	54
172	1
174	1
173	53
173	54
175	53
175	3
176	5
177	52
178	45
179	15
180	16
181	16
183	17
184	2
182	49
185	17
29	45
41	53
42	54
43	54
68	28
44	48
186	28
187	52
188	54
45	54
46	54
47	54
48	54
49	53
50	54
55	28
67	54
71	54
70	54
72	15
73	28
\.


--
-- Data for Name: acts_targets; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY acts_targets (act_id, target_id) FROM stdin;
35	3
117	3
147	3
166	3
51	3
52	3
56	3
65	3
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY schema_migrations (version) FROM stdin;
20150403222333
20150412184832
20150416100232
20150416222255
20150416224601
20150416224919
20150502160801
20150715223510
20150711152955
\.


--
-- Data for Name: target_categories; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY target_categories (id, target_id, name, description, created_at, updated_at) FROM stdin;
1	1	Fuerzas y Cuerpos Seguridad	\N	2015-10-16 18:26:33.164418	2015-10-16 18:26:33.164418
2	1	Fuerzas Armadas	\N	2015-10-16 18:26:33.201127	2015-10-16 18:26:33.204103
3	1	Grupos Paramilitares	\N	2015-10-16 18:26:33.225701	2015-10-16 18:26:33.228784
4	1	Servicios Inteligencia	\N	2015-10-16 18:26:33.231708	2015-10-16 18:26:33.234301
5	1	Seguridad Privada	\N	2015-10-16 18:26:33.236984	2015-10-16 18:26:33.239461
6	1	Instituciones políticas/administrativas	\N	2015-10-16 18:26:33.2421	2015-10-16 18:26:33.244647
7	1	Instituciones Judiciales/Penitenciarias	\N	2015-10-16 18:26:33.275355	2015-10-16 18:26:33.280263
8	1	Instituciones Educativas	\N	2015-10-16 18:26:33.300025	2015-10-16 18:26:33.302778
9	1	Representaciones Diplomáticas	\N	2015-10-16 18:26:33.305425	2015-10-16 18:26:33.307912
10	1	Empresas/Industria	\N	2015-10-16 18:26:33.321195	2015-10-16 18:26:33.323729
11	1	Medios de comunicación	\N	2015-10-16 18:26:33.3264	2015-10-16 18:26:33.328912
12	1	Otros	\N	2015-10-16 18:26:33.331634	2015-10-16 18:26:33.334391
13	2	Fuerzas y Cuerpos Seguridad	\N	2015-10-16 18:26:33.389306	2015-10-16 18:26:33.389306
14	2	Fuerzas Armadas	\N	2015-10-16 18:26:33.400608	2015-10-16 18:26:33.40357
15	2	Grupos Paramilitares	\N	2015-10-16 18:26:33.412378	2015-10-16 18:26:33.414934
16	2	Servicios Inteligencia	\N	2015-10-16 18:26:33.420577	2015-10-16 18:26:33.42309
17	2	Seguridad Privada	\N	2015-10-16 18:26:33.428885	2015-10-16 18:26:33.431435
18	2	Instituciones políticas/administrativas	\N	2015-10-16 18:26:33.436779	2015-10-16 18:26:33.439158
19	2	Infraestructuras Públicas	\N	2015-10-16 18:26:33.44741	2015-10-16 18:26:33.449998
20	2	Instituciones Judiciales/Penitenciarias	\N	2015-10-16 18:26:33.510463	2015-10-16 18:26:33.513023
21	2	Instituciones Educativas	\N	2015-10-16 18:26:33.526925	2015-10-16 18:26:33.529511
22	2	Empresas/Industria	\N	2015-10-16 18:26:33.54407	2015-10-16 18:26:33.547708
23	2	Propiedades Privadas	\N	2015-10-16 18:26:33.601994	2015-10-16 18:26:33.606877
24	2	Medios de comunicación	\N	2015-10-16 18:26:33.620734	2015-10-16 18:26:33.623294
25	2	Otros	\N	2015-10-16 18:26:33.637045	2015-10-16 18:26:33.639573
26	3	Tomas	\N	2015-10-16 18:26:33.657407	2015-10-16 18:26:33.660014
27	3	Agitación	\N	2015-10-16 18:26:33.710692	2015-10-16 18:26:33.713117
28	3	Artefactos de propaganda	\N	2015-10-16 18:26:33.715739	2015-10-16 18:26:33.718462
29	3	Pintadas	\N	2015-10-16 18:26:33.721218	2015-10-16 18:26:33.723704
30	3	Reparto de Propaganda	\N	2015-10-16 18:26:33.726394	2015-10-16 18:26:33.728784
31	3	Reparto de Alimentos	\N	2015-10-16 18:26:33.731551	2015-10-16 18:26:33.734034
\.


--
-- Name: target_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ccqpaauqthraad
--

SELECT pg_catalog.setval('target_categories_id_seq', 31, true);


--
-- Data for Name: target_subcategories; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY target_subcategories (id, target_category_id, name, description, created_at, updated_at) FROM stdin;
1	1	Policía/Agente	\N	2015-10-16 18:26:33.179601	2015-10-16 18:26:33.179601
2	1	Patrulla FFSS	\N	2015-10-16 18:26:33.183242	2015-10-16 18:26:33.18621
3	1	Oficial FFSS	\N	2015-10-16 18:26:33.189707	2015-10-16 18:26:33.192389
4	1	Cuerpo	\N	2015-10-16 18:26:33.195666	2015-10-16 18:26:33.198259
5	2	Oficiales	\N	2015-10-16 18:26:33.207043	2015-10-16 18:26:33.209588
6	2	Suboficiales y Personal de tropa	\N	2015-10-16 18:26:33.21236	2015-10-16 18:26:33.215582
7	2	Patrulla FFAA	\N	2015-10-16 18:26:33.21902	2015-10-16 18:26:33.222286
8	6	Jefes de Estado	\N	2015-10-16 18:26:33.247427	2015-10-16 18:26:33.2501
9	6	Primeros ministros/Presidentes	\N	2015-10-16 18:26:33.252955	2015-10-16 18:26:33.255797
10	6	Miembros Gobierno	\N	2015-10-16 18:26:33.258946	2015-10-16 18:26:33.261745
11	6	Altos Funcionarios Administración	\N	2015-10-16 18:26:33.264744	2015-10-16 18:26:33.267351
12	6	Políticos	\N	2015-10-16 18:26:33.270043	2015-10-16 18:26:33.272449
13	7	Personal general Administración Justicia	\N	2015-10-16 18:26:33.283691	2015-10-16 18:26:33.286475
14	7	Personal Instituciones Penitenciarias	\N	2015-10-16 18:26:33.289148	2015-10-16 18:26:33.291574
15	7	Jueces	\N	2015-10-16 18:26:33.294213	2015-10-16 18:26:33.297024
16	9	Diplomáticos extranjeros	\N	2015-10-16 18:26:33.31078	2015-10-16 18:26:33.313259
17	9	Personal embajadas/consulados	\N	2015-10-16 18:26:33.315885	2015-10-16 18:26:33.318503
18	12	Ciudadanos independientes	\N	2015-10-16 18:26:33.33709	2015-10-16 18:26:33.339617
19	12	Espacios públicos	\N	2015-10-16 18:26:33.342361	2015-10-16 18:26:33.344774
20	12	Personal otros sectores específicos	\N	2015-10-16 18:26:33.34748	2015-10-16 18:26:33.349876
21	13	Edificios e infraestructura	\N	2015-10-16 18:26:33.39509	2015-10-16 18:26:33.39509
22	13	Puestos de control	\N	2015-10-16 18:26:33.398003	2015-10-16 18:26:33.398003
23	14	Edificios e infraestructura	\N	2015-10-16 18:26:33.406651	2015-10-16 18:26:33.406651
24	14	Puestos de control	\N	2015-10-16 18:26:33.409643	2015-10-16 18:26:33.409643
25	15	Edificios e infraestructura	\N	2015-10-16 18:26:33.418012	2015-10-16 18:26:33.418012
26	16	Edificios e infraestructura	\N	2015-10-16 18:26:33.425976	2015-10-16 18:26:33.425976
27	17	Edificios e infraestructura	\N	2015-10-16 18:26:33.434235	2015-10-16 18:26:33.434235
28	18	Partidos Políticos	\N	2015-10-16 18:26:33.442043	2015-10-16 18:26:33.442043
29	18	Gobierno/Administración	\N	2015-10-16 18:26:33.444884	2015-10-16 18:26:33.444884
30	19	Aeropuestos	\N	2015-10-16 18:26:33.452993	2015-10-16 18:26:33.455481
31	19	Puertos	\N	2015-10-16 18:26:33.458134	2015-10-16 18:26:33.460494
32	19	Estaciones autobuses y Buses	\N	2015-10-16 18:26:33.463056	2015-10-16 18:26:33.465506
33	19	Lineas FFCC y Trenes	\N	2015-10-16 18:26:33.468358	2015-10-16 18:26:33.471028
34	19	Metro	\N	2015-10-16 18:26:33.473745	2015-10-16 18:26:33.476352
35	19	Puentes y carreteras	\N	2015-10-16 18:26:33.479017	2015-10-16 18:26:33.481376
36	19	Espacios públicos	\N	2015-10-16 18:26:33.484391	2015-10-16 18:26:33.486727
37	19	Espacios públicos simbólicos	\N	2015-10-16 18:26:33.489363	2015-10-16 18:26:33.491774
38	19	Monumentos	\N	2015-10-16 18:26:33.494469	2015-10-16 18:26:33.497154
39	19	Infraestructuras Energéticas	\N	2015-10-16 18:26:33.499904	2015-10-16 18:26:33.502384
40	19	Infraestructuras de Agua	\N	2015-10-16 18:26:33.505011	2015-10-16 18:26:33.507658
41	20	Instituciones Judiciales	\N	2015-10-16 18:26:33.516234	2015-10-16 18:26:33.518793
42	20	Sistema Penitenciario	\N	2015-10-16 18:26:33.521494	2015-10-16 18:26:33.52402
43	21	Edificios e infraestructura	\N	2015-10-16 18:26:33.532719	2015-10-16 18:26:33.535371
44	21	Embajadas/Consulados	\N	2015-10-16 18:26:33.538198	2015-10-16 18:26:33.540807
45	22	Banca/Finanzas	\N	2015-10-16 18:26:33.551402	2015-10-16 18:26:33.554771
46	22	Industria	\N	2015-10-16 18:26:33.558337	2015-10-16 18:26:33.5616
47	22	Restauración/Ocio	\N	2015-10-16 18:26:33.564987	2015-10-16 18:26:33.56815
48	22	Corporaciones Multinacionales	\N	2015-10-16 18:26:33.571472	2015-10-16 18:26:33.574921
49	22	Médicas/Farmacéuticas	\N	2015-10-16 18:26:33.578008	2015-10-16 18:26:33.581241
50	22	Minería	\N	2015-10-16 18:26:33.585109	2015-10-16 18:26:33.587767
51	22	Construcción	\N	2015-10-16 18:26:33.590501	2015-10-16 18:26:33.593058
52	22	Pequeño/Mediano comercio	\N	2015-10-16 18:26:33.595855	2015-10-16 18:26:33.598817
53	23	Domicilios	\N	2015-10-16 18:26:33.610005	2015-10-16 18:26:33.61262
54	23	Vehículos privados	\N	2015-10-16 18:26:33.615381	2015-10-16 18:26:33.617949
55	24	Edificios e infraestructura	\N	2015-10-16 18:26:33.626038	2015-10-16 18:26:33.628585
56	24	Infraestructuras de comunicación	\N	2015-10-16 18:26:33.631498	2015-10-16 18:26:33.63419
57	25	Aviones en vuelo	\N	2015-10-16 18:26:33.642348	2015-10-16 18:26:33.645776
58	25	Actos políticos	\N	2015-10-16 18:26:33.64855	2015-10-16 18:26:33.651168
59	26	Cines	\N	2015-10-16 18:26:33.662821	2015-10-16 18:26:33.665559
60	26	Espacios Laborales	\N	2015-10-16 18:26:33.668317	2015-10-16 18:26:33.67111
61	26	Poblaciones	\N	2015-10-16 18:26:33.674026	2015-10-16 18:26:33.676429
62	26	Medios Comunicación	\N	2015-10-16 18:26:33.679128	2015-10-16 18:26:33.681871
63	26	Transporte	\N	2015-10-16 18:26:33.684446	2015-10-16 18:26:33.691895
64	26	Centros/espacios educativos	\N	2015-10-16 18:26:33.694495	2015-10-16 18:26:33.696894
65	26	Instituciones políticas/gobierno	\N	2015-10-16 18:26:33.6996	2015-10-16 18:26:33.701928
66	26	Embajadas/consulados	\N	2015-10-16 18:26:33.70553	2015-10-16 18:26:33.707974
\.


--
-- Name: target_subcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ccqpaauqthraad
--

SELECT pg_catalog.setval('target_subcategories_id_seq', 66, true);


--
-- Data for Name: targets; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY targets (id, name, description) FROM stdin;
1	Personas	\N
2	Infraestructuras/Propiedades	\N
3	Propaganda	\N
\.


--
-- Name: targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ccqpaauqthraad
--

SELECT pg_catalog.setval('targets_id_seq', 3, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ccqpaauqthraad
--

COPY users (id, name, email, role, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
2	Joaquín	vavoom01@gmail.com	creator	$2a$10$0HeeE.Tj7QsYYoFg4bEOK.MBs0iqJXBxuwYwbofPhwOlkogv5qA/m	\N	\N	\N	0	\N	\N	\N	\N	2015-10-16 18:26:32.885521	2015-10-16 18:26:32.885521
4	Eudald	eudald.cortina@gmail.com	admin	$2a$10$rXZp47YLqbWHH7liYzhCkeIM46TEjbYYTh/7E2RS9FJLBbCgiTFW2	\N	\N	\N	9	2015-12-29 17:46:07.841102	2015-11-19 17:23:41.96824	37.135.96.149	37.135.96.249	2015-10-16 18:31:33.96064	2015-12-29 17:46:07.843858
7	José Manuel	agredaportero@yahoo.es	creator	$2a$10$HirGISyxcVijci5Zk0tE4uRyIfb/MWbg/gtudsfSwlU2Uw2Jf6KTm	\N	\N	\N	1	2015-12-16 09:29:18.382198	2015-12-16 09:29:18.382198	188.76.13.138	188.76.13.138	2015-12-15 10:09:28.935829	2015-12-16 09:29:18.385237
8	Patri	patri.calvo@gmail.com	creator	$2a$10$WgdwaADHsMU3t.lDFiX76eE3e/elYLIDzU9Kn.5IncBloAYlMfGn6	\N	\N	\N	3	2016-04-13 11:46:13.857559	2016-04-13 11:22:28.739073	193.144.79.228	193.144.79.228	2015-12-16 14:53:49.381306	2016-04-13 11:46:13.859274
5	Eduardo	eduardo.rey@usc.es	creator	$2a$10$VOms2SmhJV9cBpr1U1mwleznj0Bzgz8JZNpnN0cEZ6Nr6F6Pkg9ny	\N	\N	\N	4	2016-05-13 10:21:48.94736	2016-03-11 11:07:13.187115	193.144.79.228	193.144.79.228	2015-11-18 01:02:08.061708	2016-05-13 10:21:48.95024
1	Quino	vavoom02@gmail.com	admin	$2a$10$4K6nKztV1uNFjDUNjc5UTOr7T.y2iHjOAD/cj20A/UL4RsNZGYqgi	\N	\N	\N	35	2016-05-22 13:50:30.842788	2016-05-07 16:26:56.530252	79.145.97.58	188.76.248.154	2015-10-16 18:26:32.807456	2016-05-22 13:50:30.846002
3	Guillermo	guillegracia@gmail.com	admin	$2a$10$XNpOjQpBIZtZ0Vio.5CCIOYJT5Dy//b8PviOhGuGDf4Q9.bPdBNoy	\N	\N	\N	100	2016-05-23 18:01:40.250372	2016-05-11 10:34:19.286495	81.39.213.195	81.39.213.195	2015-10-16 18:26:32.969639	2016-05-23 18:01:40.252652
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ccqpaauqthraad
--

SELECT pg_catalog.setval('users_id_seq', 8, true);


--
-- Name: act_types_pkey; Type: CONSTRAINT; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

ALTER TABLE ONLY act_types
    ADD CONSTRAINT act_types_pkey PRIMARY KEY (id);


--
-- Name: acts_pkey; Type: CONSTRAINT; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

ALTER TABLE ONLY acts
    ADD CONSTRAINT acts_pkey PRIMARY KEY (id);


--
-- Name: target_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

ALTER TABLE ONLY target_categories
    ADD CONSTRAINT target_categories_pkey PRIMARY KEY (id);


--
-- Name: target_subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

ALTER TABLE ONLY target_subcategories
    ADD CONSTRAINT target_subcategories_pkey PRIMARY KEY (id);


--
-- Name: targets_pkey; Type: CONSTRAINT; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

ALTER TABLE ONLY targets
    ADD CONSTRAINT targets_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_act_types_acts_on_act_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_act_types_acts_on_act_id ON act_types_acts USING btree (act_id);


--
-- Name: index_act_types_acts_on_act_type_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_act_types_acts_on_act_type_id ON act_types_acts USING btree (act_type_id);


--
-- Name: index_acts_target_categories_on_act_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_acts_target_categories_on_act_id ON acts_target_categories USING btree (act_id);


--
-- Name: index_acts_target_categories_on_target_category_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_acts_target_categories_on_target_category_id ON acts_target_categories USING btree (target_category_id);


--
-- Name: index_acts_target_subcategories_on_act_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_acts_target_subcategories_on_act_id ON acts_target_subcategories USING btree (act_id);


--
-- Name: index_acts_target_subcategories_on_target_subcategory_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_acts_target_subcategories_on_target_subcategory_id ON acts_target_subcategories USING btree (target_subcategory_id);


--
-- Name: index_acts_targets_on_act_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_acts_targets_on_act_id ON acts_targets USING btree (act_id);


--
-- Name: index_acts_targets_on_target_id; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE INDEX index_acts_targets_on_target_id ON acts_targets USING btree (target_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: ccqpaauqthraad; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: ccqpaauqthraad
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM ccqpaauqthraad;
GRANT ALL ON SCHEMA public TO ccqpaauqthraad;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

