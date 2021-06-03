--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Ubuntu 13.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.1 (Ubuntu 13.1-1.pgdg20.04+1)

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
-- Name: areas; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.areas (
    codigo_area smallint NOT NULL,
    nombre character varying(100) NOT NULL,
    unidad smallint NOT NULL
);


ALTER TABLE public.areas OWNER TO devsicovi;

--
-- Name: areas_codigo_area_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.areas_codigo_area_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.areas_codigo_area_seq OWNER TO devsicovi;

--
-- Name: areas_codigo_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.areas_codigo_area_seq OWNED BY public.areas.codigo_area;


--
-- Name: categorias; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.categorias (
    codigo_categoria smallint NOT NULL,
    tipo character varying(100) NOT NULL
);


ALTER TABLE public.categorias OWNER TO devsicovi;

--
-- Name: categorias_codigo_categoria_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.categorias_codigo_categoria_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_codigo_categoria_seq OWNER TO devsicovi;

--
-- Name: categorias_codigo_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.categorias_codigo_categoria_seq OWNED BY public.categorias.codigo_categoria;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.departamentos (
    codigo_departamento smallint NOT NULL,
    nombre character varying(100) NOT NULL,
    provincia smallint NOT NULL
);


ALTER TABLE public.departamentos OWNER TO devsicovi;

--
-- Name: departamentos_codigo_departamento_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.departamentos_codigo_departamento_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamentos_codigo_departamento_seq OWNER TO devsicovi;

--
-- Name: departamentos_codigo_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.departamentos_codigo_departamento_seq OWNED BY public.departamentos.codigo_departamento;


--
-- Name: estados_visita; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.estados_visita (
    codigo_estadovisita smallint NOT NULL,
    tipo character varying(100) NOT NULL
);


ALTER TABLE public.estados_visita OWNER TO devsicovi;

--
-- Name: estados_visita_codigo_estadovisita_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.estados_visita_codigo_estadovisita_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_visita_codigo_estadovisita_seq OWNER TO devsicovi;

--
-- Name: estados_visita_codigo_estadovisita_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.estados_visita_codigo_estadovisita_seq OWNED BY public.estados_visita.codigo_estadovisita;


--
-- Name: implementador; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.implementador (
    codigo_admin smallint NOT NULL,
    usuario character varying(100) DEFAULT 'sicovi-admin'::character varying,
    contrasena character varying(100) DEFAULT 'sicovi-admin-190'::character varying
);


ALTER TABLE public.implementador OWNER TO devsicovi;

--
-- Name: implementador_codigo_admin_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.implementador_codigo_admin_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.implementador_codigo_admin_seq OWNER TO devsicovi;

--
-- Name: implementador_codigo_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.implementador_codigo_admin_seq OWNED BY public.implementador.codigo_admin;


--
-- Name: ingresos; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.ingresos (
    codigo_ingreso smallint NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    imcumplimiento_regla character varying(200),
    responsable_registro smallint NOT NULL,
    visita integer NOT NULL,
    interno integer NOT NULL
);


ALTER TABLE public.ingresos OWNER TO devsicovi;

--
-- Name: ingresos_codigo_ingreso_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.ingresos_codigo_ingreso_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingresos_codigo_ingreso_seq OWNER TO devsicovi;

--
-- Name: ingresos_codigo_ingreso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.ingresos_codigo_ingreso_seq OWNED BY public.ingresos.codigo_ingreso;


--
-- Name: internos; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.internos (
    codigo_interno integer NOT NULL,
    nom_nombres character varying(100) NOT NULL,
    nom_apellidos character varying(100) NOT NULL,
    dni character varying(100) NOT NULL,
    barrio character varying(100) NOT NULL,
    calle character varying(100) NOT NULL,
    causa character varying(200) NOT NULL,
    telefono character varying(100) NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    responsable_registro smallint NOT NULL,
    departamento smallint NOT NULL,
    horarios character varying(100),
    dias character varying(100),
    pabellon character varying(100)
);


ALTER TABLE public.internos OWNER TO devsicovi;

--
-- Name: internos_codigo_interno_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.internos_codigo_interno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.internos_codigo_interno_seq OWNER TO devsicovi;

--
-- Name: internos_codigo_interno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.internos_codigo_interno_seq OWNED BY public.internos.codigo_interno;


--
-- Name: internos_visitas; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.internos_visitas (
    interno integer NOT NULL,
    visita integer NOT NULL,
    estado_visita smallint NOT NULL,
    privada boolean DEFAULT false
);


ALTER TABLE public.internos_visitas OWNER TO devsicovi;

--
-- Name: jerarquias; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.jerarquias (
    codigo_jerarquia smallint NOT NULL,
    tipo character varying(100) NOT NULL
);


ALTER TABLE public.jerarquias OWNER TO devsicovi;

--
-- Name: jerarquias_codigo_jerarquia_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.jerarquias_codigo_jerarquia_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jerarquias_codigo_jerarquia_seq OWNER TO devsicovi;

--
-- Name: jerarquias_codigo_jerarquia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.jerarquias_codigo_jerarquia_seq OWNED BY public.jerarquias.codigo_jerarquia;


--
-- Name: paises; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.paises (
    codigo_pais smallint NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.paises OWNER TO devsicovi;

--
-- Name: paises_codigo_pais_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.paises_codigo_pais_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paises_codigo_pais_seq OWNER TO devsicovi;

--
-- Name: paises_codigo_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.paises_codigo_pais_seq OWNED BY public.paises.codigo_pais;


--
-- Name: provincias; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.provincias (
    codigo_provincia smallint NOT NULL,
    nombre character varying(100) NOT NULL,
    pais smallint NOT NULL
);


ALTER TABLE public.provincias OWNER TO devsicovi;

--
-- Name: provincias_codigo_provincia_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.provincias_codigo_provincia_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provincias_codigo_provincia_seq OWNER TO devsicovi;

--
-- Name: provincias_codigo_provincia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.provincias_codigo_provincia_seq OWNED BY public.provincias.codigo_provincia;


--
-- Name: responsables; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.responsables (
    visita_mayor integer NOT NULL,
    visita_menor integer NOT NULL
);


ALTER TABLE public.responsables OWNER TO devsicovi;

--
-- Name: suspensiones; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.suspensiones (
    codigo_suspension smallint NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    causa character varying(200) NOT NULL,
    visita integer NOT NULL
);


ALTER TABLE public.suspensiones OWNER TO devsicovi;

--
-- Name: suspensiones_codigo_suspension_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.suspensiones_codigo_suspension_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suspensiones_codigo_suspension_seq OWNER TO devsicovi;

--
-- Name: suspensiones_codigo_suspension_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.suspensiones_codigo_suspension_seq OWNED BY public.suspensiones.codigo_suspension;


--
-- Name: unidades; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.unidades (
    codigo_unidad smallint NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.unidades OWNER TO devsicovi;

--
-- Name: unidades_codigo_unidad_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.unidades_codigo_unidad_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidades_codigo_unidad_seq OWNER TO devsicovi;

--
-- Name: unidades_codigo_unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.unidades_codigo_unidad_seq OWNED BY public.unidades.codigo_unidad;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.usuarios (
    codigo_usuario smallint NOT NULL,
    nom_nombres character varying(100) NOT NULL,
    nom_apellidos character varying(100) NOT NULL,
    dni character varying(100) NOT NULL,
    telefono character varying(100) NOT NULL,
    contrasena character varying(200) NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    autorizacion boolean DEFAULT false NOT NULL,
    area smallint NOT NULL,
    jerarquia smallint NOT NULL
);


ALTER TABLE public.usuarios OWNER TO devsicovi;

--
-- Name: usuarios_codigo_usuario_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.usuarios_codigo_usuario_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_codigo_usuario_seq OWNER TO devsicovi;

--
-- Name: usuarios_codigo_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.usuarios_codigo_usuario_seq OWNED BY public.usuarios.codigo_usuario;


--
-- Name: vinculos; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.vinculos (
    codigo_vinculo smallint NOT NULL,
    tipo character varying(100) NOT NULL
);


ALTER TABLE public.vinculos OWNER TO devsicovi;

--
-- Name: vinculos_codigo_vinculo_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.vinculos_codigo_vinculo_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vinculos_codigo_vinculo_seq OWNER TO devsicovi;

--
-- Name: vinculos_codigo_vinculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.vinculos_codigo_vinculo_seq OWNED BY public.vinculos.codigo_vinculo;


--
-- Name: visitas; Type: TABLE; Schema: public; Owner: devsicovi
--

CREATE TABLE public.visitas (
    codigo_visita integer NOT NULL,
    nom_nombres character varying(100) NOT NULL,
    nom_apellidos character varying(100) NOT NULL,
    dni character varying(100) NOT NULL,
    edad smallint NOT NULL,
    telefono character varying(100) NOT NULL,
    barrio character varying(100) NOT NULL,
    calle character varying(100) NOT NULL,
    tiempo_conocimiento character varying(100) NOT NULL,
    responsable_registro smallint NOT NULL,
    suspension smallint,
    categoria smallint NOT NULL,
    vinculo smallint NOT NULL,
    departamento smallint NOT NULL,
    fecha_nacimiento date
);


ALTER TABLE public.visitas OWNER TO devsicovi;

--
-- Name: visitas_codigo_visita_seq; Type: SEQUENCE; Schema: public; Owner: devsicovi
--

CREATE SEQUENCE public.visitas_codigo_visita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitas_codigo_visita_seq OWNER TO devsicovi;

--
-- Name: visitas_codigo_visita_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: devsicovi
--

ALTER SEQUENCE public.visitas_codigo_visita_seq OWNED BY public.visitas.codigo_visita;


--
-- Name: areas codigo_area; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.areas ALTER COLUMN codigo_area SET DEFAULT nextval('public.areas_codigo_area_seq'::regclass);


--
-- Name: categorias codigo_categoria; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.categorias ALTER COLUMN codigo_categoria SET DEFAULT nextval('public.categorias_codigo_categoria_seq'::regclass);


--
-- Name: departamentos codigo_departamento; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN codigo_departamento SET DEFAULT nextval('public.departamentos_codigo_departamento_seq'::regclass);


--
-- Name: estados_visita codigo_estadovisita; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.estados_visita ALTER COLUMN codigo_estadovisita SET DEFAULT nextval('public.estados_visita_codigo_estadovisita_seq'::regclass);


--
-- Name: implementador codigo_admin; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.implementador ALTER COLUMN codigo_admin SET DEFAULT nextval('public.implementador_codigo_admin_seq'::regclass);


--
-- Name: ingresos codigo_ingreso; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.ingresos ALTER COLUMN codigo_ingreso SET DEFAULT nextval('public.ingresos_codigo_ingreso_seq'::regclass);


--
-- Name: internos codigo_interno; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos ALTER COLUMN codigo_interno SET DEFAULT nextval('public.internos_codigo_interno_seq'::regclass);


--
-- Name: jerarquias codigo_jerarquia; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.jerarquias ALTER COLUMN codigo_jerarquia SET DEFAULT nextval('public.jerarquias_codigo_jerarquia_seq'::regclass);


--
-- Name: paises codigo_pais; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.paises ALTER COLUMN codigo_pais SET DEFAULT nextval('public.paises_codigo_pais_seq'::regclass);


--
-- Name: provincias codigo_provincia; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.provincias ALTER COLUMN codigo_provincia SET DEFAULT nextval('public.provincias_codigo_provincia_seq'::regclass);


--
-- Name: suspensiones codigo_suspension; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.suspensiones ALTER COLUMN codigo_suspension SET DEFAULT nextval('public.suspensiones_codigo_suspension_seq'::regclass);


--
-- Name: unidades codigo_unidad; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.unidades ALTER COLUMN codigo_unidad SET DEFAULT nextval('public.unidades_codigo_unidad_seq'::regclass);


--
-- Name: usuarios codigo_usuario; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN codigo_usuario SET DEFAULT nextval('public.usuarios_codigo_usuario_seq'::regclass);


--
-- Name: vinculos codigo_vinculo; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.vinculos ALTER COLUMN codigo_vinculo SET DEFAULT nextval('public.vinculos_codigo_vinculo_seq'::regclass);


--
-- Name: visitas codigo_visita; Type: DEFAULT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas ALTER COLUMN codigo_visita SET DEFAULT nextval('public.visitas_codigo_visita_seq'::regclass);


--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.areas (codigo_area, nombre, unidad) FROM stdin;
1	Direccion	1
3	Visita	3
2	Requisa	2
\.


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.categorias (codigo_categoria, tipo) FROM stdin;
1	Consolidación familiar
2	Entre internos
3	Exepcionales
4	Extraordinaria
5	Ordinaria
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.departamentos (codigo_departamento, nombre, provincia) FROM stdin;
1	Adolfo Alsina	1
2	Adolfo Gonzales Chaves	1
3	Alberti	1
4	Almirante Brown	1
5	Arrecifes	1
6	Avellaneda	1
7	Ayacucho	1
8	Azul	1
9	Bahía Blanca	1
10	Balcarce	1
11	Baradero	1
12	Benito Juárez	1
13	Berazategui	1
14	Berisso	1
15	Bolívar	1
16	Bragado	1
17	Brandsen	1
18	Campana	1
19	Cañuelas	1
20	Capitán Sarmiento Carlos	1
21	Carlos Casares	1
22	Carlos Tejedor	1
23	Carmen de Areco	1
24	Castelli	1
25	Chacabuco	1
26	Chascomús	1
27	Chivilcoy	1
28	Colón	1
29	Coronel de Marina Leonardo Rosales	1
30	Coronel Dorrego	1
31	Coronel Pringles	1
32	Coronel Suárez	1
33	Daireaux	1
34	Dolores	1
35	Ensenada	1
36	Escobar	1
37	Esteban Echeverría	1
38	Exaltación de la Cruz	1
39	Ezeiza	1
40	Florencio Varela	1
41	Florentino Ameghino	1
42	General Alvarado	1
43	General Alvear	1
44	General Arenales	1
45	General Belgrano	1
46	General Guido	1
47	General Juan Madariaga	1
48	General La Madrid	1
49	General Las Heras	1
50	General Lavalle	1
51	General Paz	1
52	General Pinto	1
53	General Pueyrredón	1
54	General Rodríguez	1
55	General San Martín	1
56	General Viamonte	1
57	General Villegas	1
58	Guaminí	1
59	Hipólito Yrigoyen	1
60	Hurlingham	1
61	Ituzaingó	1
62	José C. Paz	1
63	Junín	1
64	La Costa	1
65	La Matanza	1
66	Lanús	1
67	La Plata	1
68	Laprida	1
69	Las Flores	1
70	Leandro N. Alem	1
71	Lincoln	1
72	Lobería	1
73	Lobos	1
74	Lomas de Zamora	1
75	Luján	1
76	Magdalena	1
77	Maipú	1
78	Malvinas Argentinas	1
79	Mar Chiquita	1
80	Marcos Paz	1
81	Mercedes	1
82	Merlo	1
83	Monte	1
84	Monte Hermoso	1
85	Moreno	1
86	Morón	1
87	Navarro	1
88	Necochea	1
89	Nueve de Julio (9 de Julio)	1
90	Olavarría	1
91	Patagones	1
92	Pehuajó	1
93	Pellegrini	1
94	Pergamino	1
95	Pila	1
96	Pilar	1
97	Pinamar	1
98	Presidente Perón	1
99	Puan	1
100	Punta Indio	1
101	Quilmes	1
102	Ramallo	1
103	Rauch	1
104	Rivadavia	1
105	Rojas	1
106	Roque Pérez	1
107	Saavedra	1
108	Saladillo	1
109	Salliqueló	1
110	Salto	1
111	San Andrés de Giles	1
112	San Antonio de Areco	1
113	San Cayetano	1
114	San Fernando	1
115	San Isidro	1
116	San Miguel	1
117	San Nicolás	1
118	San Pedro	1
119	San Vicente	1
120	Suipacha	1
121	Tandil	1
122	Tapalqué	1
123	Tigre	1
124	Tordillo	1
125	Tornquist	1
126	Trenque Lauquen	1
127	Tres Arroyos	1
128	Tres de Febrero	1
129	Tres Lomas	1
130	Veinticinco de Mayo (25 de Mayo)	1
131	Vicente López	1
132	Villa Gesell	1
133	Villarino	1
134	Zárate	1
135	Ambato	2
136	Ancasti	2
137	Andalgalá	2
138	Antofagasta de la Sierra	2
139	Belén	2
140	Capayán	2
141	Capital	2
142	El Alto	2
143	Fray Mamerto Esquiú	2
144	La Paz	2
145	Paclín	2
146	Pomán	2
147	Santa María	2
148	Santa Rosa	2
149	Tinogasta	2
150	Valle Viejo	2
151	Almirante Brown	3
152	Bermejo	3
153	Chacabuco	3
154	Comandante Fernández	3
155	Doce de Octubre (12 de Octubre)	3
156	Dos de Abril (2 de Abril)	3
157	Fray Justo Santa María de Oro	3
158	General Belgrano	3
159	General Donovan	3
160	General Güemes	3
161	Independencia	3
162	Libertad	3
163	Libertador General San Martín	3
164	Maipú	3
165	Mayor Luis Jorge Fontana	3
166	Nueve de Julio (9 de Julio)	3
167	OHiggins	3
168	Presidencia de la Plaza	3
169	Primero de Mayo (1º de Mayo)	3
170	Quitilipi	3
171	San Fernando	3
172	San Lorenzo	3
173	Sargento Cabral	3
174	Tapenagá	3
175	Veinticinco de Mayo (25 de Mayo)	3
176	Biedma	4
177	Cushamen	4
178	Escalante	4
179	Florentino Ameghino	4
180	Futaleufú	4
181	Gaiman	4
182	Gastre	4
183	Languiñeo	4
184	Mártires	4
185	Paso de Indios	4
186	Rawson	4
187	Río Senguer	4
188	Sarmiento	4
189	Tehuelches	4
190	Telsen	4
191	Constitución	5
192	Monserrat	5
193	Puerto Madero (incl. Área Reserva Ecológica)	5
194	Retiro	5
195	San Nicolás	5
196	San Telmo	5
197	Recoleta	5
198	Balvanera	5
199	San Cristóbal	5
200	Barracas	5
201	La Boca	5
202	Nueva Pompeya	5
203	Parque Patricios	5
204	Almagro	5
205	Boedo	5
206	Caballito	5
207	Flores	5
208	Parque Chacabuco	5
209	Villa Lugano	5
210	Villa Riachuelo	5
211	Villa Soldati	5
212	Liniers	5
213	Mataderos	5
214	Parque Avellaneda	5
215	Floresta	5
216	Monte Castro	5
217	Vélez Sársfield	5
218	Versalles	5
219	Villa Luro	5
220	Villa Real	5
221	Villa del Parque	5
222	Villa Devoto	5
223	Villa General Mitre	5
224	Villa Santa Rita	5
225	Coghlan	5
226	Saavedra	5
227	Villa Pueyrredón	5
228	Villa Urquiza	5
229	Belgrano	5
230	Colegiales	5
231	Núñez	5
232	Palermo	5
233	Agronomía (incl. Parque Chas)	5
234	Chacarita	5
235	La Paternal	5
236	Villa Crespo	5
237	Villa Ortúzar	5
238	Calamuchita	6
239	Capital	6
240	Colón	6
241	Cruz del Eje	6
242	General Roca	6
243	General San Martín	6
244	Ischilín	6
245	Juárez Celman	6
246	Marcos Juárez	6
247	Minas	6
248	Pocho	6
249	Presidente Roque Sáenz Peña	6
250	Punilla	6
251	Río Cuarto	6
252	Río Primero	6
253	Río Seco	6
254	Río Segundo	6
255	San Alberto	6
256	San Javier	6
257	San Justo	6
258	Santa María	6
259	Sobremonte	6
260	Tercero Arriba	6
261	Totoral	6
262	Tulumba	6
263	Unión	6
264	Bella Vista	7
265	Berón de Astrada	7
266	Capital	7
267	Concepción	7
268	Curuzú Cuatiá	7
269	Empedrado	7
270	Esquina	7
271	General Alvear	7
272	General Paz	7
273	Goya	7
274	Itatí	7
275	Ituzaingó	7
276	Lavalle	7
277	Mburucuyá	7
278	Mercedes	7
279	Monte Caseros	7
280	Paso de los Libres	7
281	Saladas	7
282	San Cosme	7
283	San Luis del Palmar	7
284	San Martín	7
285	San Miguel	7
286	San Roque	7
287	Santo Tomé	7
288	Sauce	7
289	Colón	8
290	Concordia	8
291	Diamante	8
292	Federación	8
293	Federal	8
294	Feliciano	8
295	Gualeguay	8
296	Gualeguaychú	8
297	Islas del Ibicuy	8
298	La Paz	8
299	Nogoyá	8
300	Paraná	8
301	San Salvador	8
302	Tala	8
303	Uruguay	8
304	Victoria	8
305	Villaguay	8
306	Bermejo	9
307	Formosa	9
308	Laishi	9
309	Matacos	9
310	Patiño	9
311	Pilagás	9
312	Pilcomayo	9
313	Pirané	9
314	Ramón Lista	9
315	Cochinoca	10
316	Doctor Manuel Belgrano	10
317	El Carmen	10
318	Humahuaca	10
319	Ledesma	10
320	Palpalá	10
321	Rinconada	10
322	San Antonio	10
323	San Pedro	10
324	Santa Bárbara	10
325	Santa Catalina	10
326	Susques	10
327	Tilcara	10
328	Tumbaya	10
329	Valle Grande	10
330	Yavi	10
331	Atreucó	11
332	Caleu Caleu	11
333	Capital	11
334	Catriló	11
335	Chalileo	11
336	Chapaleufú	11
337	Chical Co	11
338	Conhelo	11
339	Curacó	11
340	Guatraché	11
341	Hucal	11
342	Lihuel Calel	11
343	Limay Mahuida	11
344	Loventué	11
345	Maracó	11
346	Puelén	11
347	Quemú Quemú	11
348	Rancul	11
349	Realicó	11
350	Toay	11
351	Trenel	11
352	Utracán	11
353	Arauco	12
354	Capital	12
355	Castro Barros	12
356	Chamical	12
357	Chilecito	12
358	Coronel Felipe Varela	12
359	Famatina	12
360	General Ángel V. Peñaloza	12
361	General Belgrano	12
362	General Juan Facundo Quiroga	12
363	General Lamadrid	12
364	General Ocampo	12
365	General San Martín	12
366	Independencia	12
367	Rosario Vera Peñaloza	12
368	Sanagasta	12
369	San Blas de los Sauces	12
370	Vinchina	12
371	Capital	13
372	General Alvear	13
373	Godoy Cruz	13
374	Guaymallén	13
375	Junín	13
376	La Paz	13
377	Las Heras	13
378	Lavalle	13
379	Luján de Cuyo	13
380	Maipú	13
381	Malargüe	13
382	Rivadavia	13
383	San Carlos	13
384	San Martín	13
385	San Rafael	13
386	Santa Rosa	13
387	Tunuyán	13
388	Tupungato	13
389	Apóstoles	14
390	Cainguás	14
391	Candelaria	14
392	Capital	14
393	Concepción	14
394	Eldorado	14
395	General Manuel Belgrano	14
396	Guaraní	14
397	Iguazú	14
398	Leandro N. Alem	14
399	Libertador General San Martín	14
400	Montecarlo	14
401	Oberá	14
402	San Ignacio	14
403	San Javier	14
404	San Pedro	14
405	Veinticinco de Mayo (25 de Mayo)	14
406	Aluminé	15
407	Añelo	15
408	Catán Lil	15
409	Chos Malal	15
410	Collón Curá	15
411	Confluencia	15
412	Huiliches	15
413	Lácar	15
414	Loncopué	15
415	Los Lagos	15
416	Minas	15
417	Ñorquín	15
418	Pehuenches	15
419	Picunches	15
420	Picún Leufú	15
421	Zapala	15
422	Adolfo Alsina	16
423	Avellaneda	16
424	Bariloche	16
425	Conesa	16
426	El Cuy	16
427	General Roca	16
428	Ñorquincó	16
429	Nueve de Julio (9 de Julio)	16
430	Pichi Mahuida	16
431	Pilcaniyeu	16
432	San Antonio	16
433	Valcheta	16
434	Veinticinco de Mayo (25 de Mayo)	16
435	Anta	17
436	Cachi	17
437	Cafayate	17
438	Capital	17
439	Cerrillos	17
440	Chicoana	17
441	General Güemes	17
442	General José de San Martín	17
443	Guachipas	17
444	Iruya	17
445	La Caldera	17
446	La Candelaria	17
447	La Poma	17
448	La Viña	17
449	Los Andes	17
450	Metán	17
451	Molinos	17
452	Orán	17
453	Rivadavia	17
454	Rosario de la Frontera	17
455	Rosario de Lerma	17
456	San Carlos	17
457	Santa Victoria	17
458	Albardón	18
459	Angaco	18
460	Calingasta	18
461	Capital	18
462	Caucete	18
463	Chimbas	18
464	Iglesia	18
465	Jáchal	18
466	Nueve de Julio (9 de Julio)	18
467	Pocito	18
468	Rawson	18
469	Rivadavia	18
470	San Martín	18
471	Santa Lucía	18
472	Sarmiento	18
473	Ullum	18
474	Valle Fértil	18
475	Veinticinco de Mayo (25 de Mayo)	18
476	Zonda	18
477	Ayacucho	19
478	Belgrano	19
479	Chacabuco	19
480	Coronel Pringles	19
481	General Pedernera	19
482	Gobernador Dupuy	19
483	Junín	19
484	La Capital (Juan Martín de Pueyrredón)	19
485	Libertador General San Martín	19
486	Corpen Aike	20
487	Deseado	20
488	Güer Aike	20
489	Lago Argentino	20
490	Lago Buenos Aires	20
491	Magallanes	20
492	Río Chico	20
493	Belgrano	21
494	Caseros	21
495	Castellanos	21
496	Constitución	21
497	Garay	21
498	General López	21
499	General Obligado	21
500	Iriondo	21
501	La Capital	21
502	Las Colonias	21
503	Nueve de Julio (9 de Julio)	21
504	Rosario	21
505	San Cristóbal	21
506	San Javier	21
507	San Jerónimo	21
508	San Justo	21
509	San Lorenzo	21
510	San Martín	21
511	Vera	21
512	Aguirre	22
513	Alberdi	22
514	Atamisqui	22
515	Avellaneda	22
516	Banda	22
517	Belgrano	22
518	Capital	22
519	Choya	22
520	Copo	22
521	Figueroa	22
522	General Taboada	22
523	Guasayán	22
524	Jiménez	22
525	Juan F. Ibarra	22
526	Loreto	22
527	Mitre	22
528	Moreno	22
529	Ojo de Agua	22
530	Pellegrini	22
531	Quebrachos	22
532	Río Hondo	22
533	Rivadavia	22
534	Robles	22
535	Salavina	22
536	San Martín	22
537	Sarmiento	22
538	Silípica	22
539	Antártida Argentina	23
540	Islas del Atlántico Sur	23
541	Río Grande	23
542	Ushuaia	23
543	Burruyacú	24
544	Capital	24
545	Chicligasta	24
546	Cruz Alta	24
547	Famaillá	24
548	Graneros	24
549	Juan Bautista Alberdi	24
550	La Cocha	24
551	Leales	24
552	Lules	24
553	Monteros	24
554	Río Chico	24
555	Simoca	24
556	Tafí del Valle	24
557	Tafí Viejo	24
558	Trancas	24
559	Yerba Buena	24
560	Departamento extranjero	25
561	Departamento extranjero	26
562	Departamento extranjero	27
563	Departamento extranjero	28
564	Departamento extranjero	29
565	Departamento extranjero	30
566	Departamento extranjero	31
567	Departamento extranjero	32
568	Departamento extranjero	33
\.


--
-- Data for Name: estados_visita; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.estados_visita (codigo_estadovisita, tipo) FROM stdin;
1	Autorizado/a
2	En espera
3	Renunciado/a
4	Suspendido/a
5	No Autorizado/a
\.


--
-- Data for Name: implementador; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.implementador (codigo_admin, usuario, contrasena) FROM stdin;
1	sicovi-admin	sicovi-admin-190
\.


--
-- Data for Name: ingresos; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.ingresos (codigo_ingreso, fecha, hora, imcumplimiento_regla, responsable_registro, visita, interno) FROM stdin;
\.


--
-- Data for Name: internos; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.internos (codigo_interno, nom_nombres, nom_apellidos, dni, barrio, calle, causa, telefono, estado, responsable_registro, departamento, horarios, dias, pabellon) FROM stdin;
\.


--
-- Data for Name: internos_visitas; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.internos_visitas (interno, visita, estado_visita, privada) FROM stdin;
\.


--
-- Data for Name: jerarquias; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.jerarquias (codigo_jerarquia, tipo) FROM stdin;
1	Adjuntor
2	Adjuntor Principal
3	Alcalde 
4	Alcalde Mayor
5	Ayudante de Cuarta
6	Ayudante de Primera
7	Ayudante de Quinta
8	Ayudante de Segunda
9	Ayudante de Tercera
10	Ayudante Mayor
11	Ayudante Principal
12	Inspector General
13	Prefecto
14	Subadjuntor
15	Subalcalde
16	Subayudante
17	Subprefecto
\.


--
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.paises (codigo_pais, nombre) FROM stdin;
1	Argentina
2	Bolivia
3	Brasil
4	Chile
5	Colombia
6	Ecuador
7	Paraguay
8	Peru
9	Uruguay
10	Venezuela
\.


--
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.provincias (codigo_provincia, nombre, pais) FROM stdin;
1	Buenos Aires	1
2	Catamarca	1
3	Chaco	1
4	Chubut	1
5	Ciudad Autónoma de Buenos Aires	1
6	Córdoba	1
7	Corrientes	1
8	Entre Ríos	1
9	Formosa	1
10	Jujuy	1
11	La Pampa	1
12	La Rioja	1
13	Mendoza	1
14	Misiones	1
15	Neuquén	1
16	Río Negro	1
17	Salta	1
18	San Juan	1
19	San Luis	1
20	Santa Cruz	1
21	Santa Fe	1
22	Santiago del Estero	1
23	Tierra del Fuego, Antártida e Islas del Atlántico Sur	1
24	Tucumán	1
25	Provincia extranjera	2
26	Provincia extranjera	3
27	Provincia extranjera	4
28	Provincia extranjera	5
29	Provincia extranjera	6
30	Provincia extranjera	7
31	Provincia extranjera	8
32	Provincia extranjera	9
33	Provincia extranjera	10
\.


--
-- Data for Name: responsables; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.responsables (visita_mayor, visita_menor) FROM stdin;
\.


--
-- Data for Name: suspensiones; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.suspensiones (codigo_suspension, fecha_inicio, fecha_fin, causa, visita) FROM stdin;
\.


--
-- Data for Name: unidades; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.unidades (codigo_unidad, nombre) FROM stdin;
1	Direccion
2	Seguridad
3	Tratamiento y Rehabilitación
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.usuarios (codigo_usuario, nom_nombres, nom_apellidos, dni, telefono, contrasena, estado, autorizacion, area, jerarquia) FROM stdin;
\.


--
-- Data for Name: vinculos; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.vinculos (codigo_vinculo, tipo) FROM stdin;
1	Abuelo/a
2	Amigo/a
3	Concubino/a
4	Esposo/a
5	Hermano/a
6	Hijo/a
7	Madre
8	Padre
9	Sobrino/a
10	Tio/a
11	Otro
\.


--
-- Data for Name: visitas; Type: TABLE DATA; Schema: public; Owner: devsicovi
--

COPY public.visitas (codigo_visita, nom_nombres, nom_apellidos, dni, edad, telefono, barrio, calle, tiempo_conocimiento, responsable_registro, suspension, categoria, vinculo, departamento, fecha_nacimiento) FROM stdin;
\.


--
-- Name: areas_codigo_area_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.areas_codigo_area_seq', 3, true);


--
-- Name: categorias_codigo_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.categorias_codigo_categoria_seq', 5, true);


--
-- Name: departamentos_codigo_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.departamentos_codigo_departamento_seq', 568, true);


--
-- Name: estados_visita_codigo_estadovisita_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.estados_visita_codigo_estadovisita_seq', 5, true);


--
-- Name: implementador_codigo_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.implementador_codigo_admin_seq', 1, true);


--
-- Name: ingresos_codigo_ingreso_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.ingresos_codigo_ingreso_seq', 1, false);


--
-- Name: internos_codigo_interno_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.internos_codigo_interno_seq', 1, true);


--
-- Name: jerarquias_codigo_jerarquia_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.jerarquias_codigo_jerarquia_seq', 17, true);


--
-- Name: paises_codigo_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.paises_codigo_pais_seq', 10, true);


--
-- Name: provincias_codigo_provincia_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.provincias_codigo_provincia_seq', 33, true);


--
-- Name: suspensiones_codigo_suspension_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.suspensiones_codigo_suspension_seq', 1, false);


--
-- Name: unidades_codigo_unidad_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.unidades_codigo_unidad_seq', 3, true);


--
-- Name: usuarios_codigo_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.usuarios_codigo_usuario_seq', 3, true);


--
-- Name: vinculos_codigo_vinculo_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.vinculos_codigo_vinculo_seq', 11, true);


--
-- Name: visitas_codigo_visita_seq; Type: SEQUENCE SET; Schema: public; Owner: devsicovi
--

SELECT pg_catalog.setval('public.visitas_codigo_visita_seq', 5, true);


--
-- Name: areas pk_areas; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT pk_areas PRIMARY KEY (codigo_area);


--
-- Name: categorias pk_categorias; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT pk_categorias PRIMARY KEY (codigo_categoria);


--
-- Name: departamentos pk_departamentos; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT pk_departamentos PRIMARY KEY (codigo_departamento);


--
-- Name: estados_visita pk_estadosvisita; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.estados_visita
    ADD CONSTRAINT pk_estadosvisita PRIMARY KEY (codigo_estadovisita);


--
-- Name: ingresos pk_ingresos; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.ingresos
    ADD CONSTRAINT pk_ingresos PRIMARY KEY (codigo_ingreso);


--
-- Name: internos pk_internos; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos
    ADD CONSTRAINT pk_internos PRIMARY KEY (codigo_interno);


--
-- Name: internos_visitas pk_internosvisitas; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos_visitas
    ADD CONSTRAINT pk_internosvisitas PRIMARY KEY (interno, visita);


--
-- Name: jerarquias pk_jerarquias; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.jerarquias
    ADD CONSTRAINT pk_jerarquias PRIMARY KEY (codigo_jerarquia);


--
-- Name: paises pk_paises; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.paises
    ADD CONSTRAINT pk_paises PRIMARY KEY (codigo_pais);


--
-- Name: provincias pk_provincias; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT pk_provincias PRIMARY KEY (codigo_provincia);


--
-- Name: responsables pk_responsables; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT pk_responsables PRIMARY KEY (visita_mayor, visita_menor);


--
-- Name: suspensiones pk_suspensiones; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.suspensiones
    ADD CONSTRAINT pk_suspensiones PRIMARY KEY (codigo_suspension);


--
-- Name: unidades pk_unidades; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT pk_unidades PRIMARY KEY (codigo_unidad);


--
-- Name: usuarios pk_usuarios; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (codigo_usuario);


--
-- Name: vinculos pk_vinculos; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.vinculos
    ADD CONSTRAINT pk_vinculos PRIMARY KEY (codigo_vinculo);


--
-- Name: visitas pk_visitas; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT pk_visitas PRIMARY KEY (codigo_visita);


--
-- Name: internos uq_internos; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos
    ADD CONSTRAINT uq_internos UNIQUE (dni);


--
-- Name: usuarios uq_usuarios; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT uq_usuarios UNIQUE (dni);


--
-- Name: visitas uq_visitas; Type: CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT uq_visitas UNIQUE (dni);


--
-- Name: areas fk_areas_unidades; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT fk_areas_unidades FOREIGN KEY (unidad) REFERENCES public.unidades(codigo_unidad) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: departamentos fk_departamentos_provincias; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT fk_departamentos_provincias FOREIGN KEY (provincia) REFERENCES public.provincias(codigo_provincia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ingresos fk_ingresos_usuario; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.ingresos
    ADD CONSTRAINT fk_ingresos_usuario FOREIGN KEY (responsable_registro) REFERENCES public.usuarios(codigo_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ingresos fk_ingresos_visitas; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.ingresos
    ADD CONSTRAINT fk_ingresos_visitas FOREIGN KEY (visita) REFERENCES public.visitas(codigo_visita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: internos fk_internos_departamentos; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos
    ADD CONSTRAINT fk_internos_departamentos FOREIGN KEY (departamento) REFERENCES public.departamentos(codigo_departamento) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: internos_visitas fk_internos_estadovisita; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos_visitas
    ADD CONSTRAINT fk_internos_estadovisita FOREIGN KEY (estado_visita) REFERENCES public.estados_visita(codigo_estadovisita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: internos fk_internos_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos
    ADD CONSTRAINT fk_internos_usuarios FOREIGN KEY (responsable_registro) REFERENCES public.usuarios(codigo_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: internos_visitas fk_internosvisitas_internos; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos_visitas
    ADD CONSTRAINT fk_internosvisitas_internos FOREIGN KEY (interno) REFERENCES public.internos(codigo_interno) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: internos_visitas fk_internosvisitas_visitas; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.internos_visitas
    ADD CONSTRAINT fk_internosvisitas_visitas FOREIGN KEY (visita) REFERENCES public.visitas(codigo_visita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: provincias fk_provincias_paises; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT fk_provincias_paises FOREIGN KEY (pais) REFERENCES public.paises(codigo_pais) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: responsables fk_responsable_visitasmayor; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT fk_responsable_visitasmayor FOREIGN KEY (visita_mayor) REFERENCES public.visitas(codigo_visita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: responsables fk_responsable_visitasmenor; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.responsables
    ADD CONSTRAINT fk_responsable_visitasmenor FOREIGN KEY (visita_menor) REFERENCES public.visitas(codigo_visita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: suspensiones fk_suspensiones_visitas; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.suspensiones
    ADD CONSTRAINT fk_suspensiones_visitas FOREIGN KEY (visita) REFERENCES public.visitas(codigo_visita) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: usuarios fk_usuarios_areas; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuarios_areas FOREIGN KEY (area) REFERENCES public.areas(codigo_area) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: usuarios fk_usuarios_jerarquias; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuarios_jerarquias FOREIGN KEY (jerarquia) REFERENCES public.jerarquias(codigo_jerarquia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visitas fk_visitas_categorias; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_visitas_categorias FOREIGN KEY (categoria) REFERENCES public.categorias(codigo_categoria) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visitas fk_visitas_departamentos; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_visitas_departamentos FOREIGN KEY (departamento) REFERENCES public.departamentos(codigo_departamento) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visitas fk_visitas_suspensiones; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_visitas_suspensiones FOREIGN KEY (suspension) REFERENCES public.suspensiones(codigo_suspension) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visitas fk_visitas_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_visitas_usuarios FOREIGN KEY (responsable_registro) REFERENCES public.usuarios(codigo_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visitas fk_visitas_vinculos; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.visitas
    ADD CONSTRAINT fk_visitas_vinculos FOREIGN KEY (vinculo) REFERENCES public.vinculos(codigo_vinculo) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: ingresos ingresos_internos; Type: FK CONSTRAINT; Schema: public; Owner: devsicovi
--

ALTER TABLE ONLY public.ingresos
    ADD CONSTRAINT ingresos_internos FOREIGN KEY (interno) REFERENCES public.internos(codigo_interno) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

