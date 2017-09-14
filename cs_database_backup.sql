--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: ExecPos; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE "ExecPos" (
    id integer NOT NULL,
    pos_id integer NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    image character varying(128)
);


ALTER TABLE "ExecPos" OWNER TO computingsociety;

--
-- Name: about; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE about (
    id integer NOT NULL,
    mission text NOT NULL
);


ALTER TABLE about OWNER TO computingsociety;

--
-- Name: about_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE about_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE about_id_seq OWNER TO computingsociety;

--
-- Name: about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE about_id_seq OWNED BY about.id;


--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE alembic_version OWNER TO computingsociety;

--
-- Name: carousel; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE carousel (
    id integer NOT NULL,
    name character varying(70),
    description text NOT NULL,
    image character varying(128)
);


ALTER TABLE carousel OWNER TO computingsociety;

--
-- Name: carousel_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE carousel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE carousel_id_seq OWNER TO computingsociety;

--
-- Name: carousel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE carousel_id_seq OWNED BY carousel.id;


--
-- Name: developers; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE developers (
    id integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    pro_id integer
);


ALTER TABLE developers OWNER TO computingsociety;

--
-- Name: developers_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE developers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE developers_id_seq OWNER TO computingsociety;

--
-- Name: developers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE developers_id_seq OWNED BY developers.id;


--
-- Name: execpos; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE execpos (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE execpos OWNER TO computingsociety;

--
-- Name: execpos_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE execpos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE execpos_id_seq OWNER TO computingsociety;

--
-- Name: execpos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE execpos_id_seq OWNED BY execpos.id;


--
-- Name: executives; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE executives (
    id integer NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    "position" character varying(255),
    image character varying(128)
);


ALTER TABLE executives OWNER TO computingsociety;

--
-- Name: executives_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE executives_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE executives_id_seq OWNER TO computingsociety;

--
-- Name: executives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE executives_id_seq OWNED BY executives.id;


--
-- Name: image; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE image (
    id integer NOT NULL,
    img_name character varying(70),
    path character varying(128)
);


ALTER TABLE image OWNER TO computingsociety;

--
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE image_id_seq OWNER TO computingsociety;

--
-- Name: image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE image_id_seq OWNED BY image.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE images (
    id integer NOT NULL,
    image character varying(128),
    pro_id integer
);


ALTER TABLE images OWNER TO computingsociety;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE images_id_seq OWNER TO computingsociety;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE images_id_seq OWNED BY images.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE news (
    id integer NOT NULL,
    title character varying(70),
    detail text NOT NULL,
    image character varying(128)
);


ALTER TABLE news OWNER TO computingsociety;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE news_id_seq OWNER TO computingsociety;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE person (
    id integer NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    email character varying(35),
    pass_num integer,
    pass_hash character varying(255),
    status character varying(6)
);


ALTER TABLE person OWNER TO computingsociety;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_id_seq OWNER TO computingsociety;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE project (
    id integer NOT NULL,
    pro_name character varying(70),
    detail text NOT NULL,
    github character varying(255),
    category character varying(255),
    image character varying(128)
);


ALTER TABLE project OWNER TO computingsociety;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: computingsociety
--

CREATE SEQUENCE project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE project_id_seq OWNER TO computingsociety;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: computingsociety
--

ALTER SEQUENCE project_id_seq OWNED BY project.id;


--
-- Name: about id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY about ALTER COLUMN id SET DEFAULT nextval('about_id_seq'::regclass);


--
-- Name: carousel id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY carousel ALTER COLUMN id SET DEFAULT nextval('carousel_id_seq'::regclass);


--
-- Name: developers id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY developers ALTER COLUMN id SET DEFAULT nextval('developers_id_seq'::regclass);


--
-- Name: execpos id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY execpos ALTER COLUMN id SET DEFAULT nextval('execpos_id_seq'::regclass);


--
-- Name: executives id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY executives ALTER COLUMN id SET DEFAULT nextval('executives_id_seq'::regclass);


--
-- Name: image id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY image ALTER COLUMN id SET DEFAULT nextval('image_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY images ALTER COLUMN id SET DEFAULT nextval('images_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: person id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY project ALTER COLUMN id SET DEFAULT nextval('project_id_seq'::regclass);


--
-- Data for Name: ExecPos; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY "ExecPos" (id, pos_id, firstname, lastname, image) FROM stdin;
\.


--
-- Data for Name: about; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY about (id, mission) FROM stdin;
1	To provide the necessary training, information and experience in Information Communications Technology (ICT) and Computer Science to our members enhancing their technical capabilities, capacities and leadership qualities with the aims of producing better IT and computer science professionals. 
\.


--
-- Name: about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('about_id_seq', 1, true);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY alembic_version (version_num) FROM stdin;
\.


--
-- Data for Name: carousel; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY carousel (id, name, description, image) FROM stdin;
1	Cloud Computing	It's something awesome	Calico-Palisadoes-Foundation.jpg
2	Cybersecurity	We hack shit	hacking.jpg
3	Mobile	We make cool apps	WhatsApp_Image_2017-09-13_at_7.01.33_PM.jpg
\.


--
-- Name: carousel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('carousel_id_seq', 3, true);


--
-- Data for Name: developers; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY developers (id, firstname, lastname, pro_id) FROM stdin;
1	Matthew	Stone	1
2	Romario	Maxwell	1
3	Matthew	Stone	6
4	Matthew	Stone	7
5	Andre	Vidal	7
6	Sanjay	Williams	2
7	Matthew	Stone	4
8	Romario	Maxwell	4
\.


--
-- Name: developers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('developers_id_seq', 8, true);


--
-- Data for Name: execpos; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY execpos (id, name) FROM stdin;
1	President
\.


--
-- Name: execpos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('execpos_id_seq', 1, true);


--
-- Data for Name: executives; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY executives (id, firstname, lastname, "position", image) FROM stdin;
1	Shanielle	Williams	President	\N
2	Brandon	Hinds	1st Vice President	\N
3	Kimberly	Simmonds	2nd Vice President	\N
4	Dayton	Allen	Technical Advisor	\N
5	Jhanelle	Thomas	Treasurer	\N
6	Renee	Duhaney	Secretary	\N
7	Komoy	Haye	Public Relations Officer	\N
8	Thecia	Roulston	Events Coordinator	\N
9	Dr. Gunjan	Mansingh	Club Advisor	\N
\.


--
-- Name: executives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('executives_id_seq', 9, true);


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY image (id, img_name, path) FROM stdin;
\.


--
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('image_id_seq', 1, false);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY images (id, image, pro_id) FROM stdin;
1	mock2.png	2
2	mock3.png	2
3	mock4.png	2
4	proj2.png	1
5	blog_list.PNG	5
6	create_account.PNG	5
7	edit_profile.PNG	5
8	members_list.PNG	5
9	nav_drawer.PNG	5
10	news_feed.PNG	5
11	projects_list.PNG	5
12	sign_in.PNG	5
13	user_profile.PNG	5
14	WhatsApp_Image_2017-09-13_at_5.18.29_PM.jpg	1
15	WhatsApp_Image_2017-09-13_at_5.18.35_PM.jpg	1
16	WhatsApp_Image_2017-09-13_at_5.18.39_PM.jpg	1
17	WhatsApp_Image_2017-09-13_at_5.37.21_PM.jpg	7
18	WhatsApp_Image_2017-09-13_at_5.37.23_PM.jpg	7
19	WhatsApp_Image_2017-09-13_at_5.37.26_PM.jpg	7
20	WhatsApp_Image_2017-09-13_at_5.37.28_PM.jpg	7
21	WhatsApp_Image_2017-09-13_at_5.39.14_PM.jpg	6
22	WhatsApp_Image_2017-09-13_at_5.39.16_PM.jpg	6
23	WhatsApp_Image_2017-09-13_at_5.39.17_PM.jpg	6
24	WhatsApp_Image_2017-09-13_at_5.39.19_PM.jpg	6
25	WhatsApp_Image_2017-09-13_at_6.37.56_PM.jpg	4
26	WhatsApp_Image_2017-09-13_at_6.38.10_PM.jpg	4
\.


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('images_id_seq', 26, true);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY news (id, title, detail, image) FROM stdin;
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('news_id_seq', 1, false);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY person (id, firstname, lastname, email, pass_num, pass_hash, status) FROM stdin;
1	Sanjay	Williams	williamsanjay77@gmail.com	93641538	e3e79a74d3d2e6726fb5fe0f4498c3ed	admin
2	Shanielle	Williams	rogue.serenity96@gmail.com	64006791	5b6d0938ec94e1ebb3d2afeae560a652	admin
3	Matthew	Stone	generalms16@gmail.com	95792334	16f179a66966d317e9e8399b57fc9f0f	admin
\.


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('person_id_seq', 3, true);


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY project (id, pro_name, detail, github, category, image) FROM stdin;
2	UWI Mona Computing Society's Web App	Detail	https://github.com/UWICompSociety/uwi-cs-webapp	Web-App	mock1.png
1	OurVLE Android App (Unofficial)	This is an unofficial app. The University of The West Indies is not affiliated with nor endorses this app. It is not meant to be used with a standard Moodle installation and is primarily meant for use by students of The University of The West Indies, Mona campus in Jamaica.\r\n\r\nThis app communicates with OurVLE which is a customised Moodle installation used by the University of the West Indies, Mona in Jamaica.	https://github.com/UWICompSociety/OurVLE/tree/master	Mobile-Web-App	WhatsApp_Image_2017-09-13_at_4.47.00_PM.jpg
3	Faculty of Science and Technology App  aka FSTApp, FSTGo	Mobile app for students of the University of The West Indies, Mona in Jamaica.	https://github.com/UWICompSociety/FSTApp	Mobile-Web-App	WhatsApp_Image_2017-09-13_at_4.46.36_PM.jpg
4	Drone	detail	https://github.com/UWICompSociety/UAV	Embedded-System	WhatsApp_Image_2017-09-13_at_4.53.58_PM.jpg
5	Computing Society app for Android	A companion project to the Computing Society Website\r\n\r\nThe Computing Society App for Android is a companion project of the Computing Society website and will support/mirror many of the same features. In light of this, the aim of the app is also to give a convenient outside view of the work of the Society as well as the people responsible.	https://github.com/UWICompSociety/uwicompsociety-android	Mobile-Web-App	logo.jpg
6	Octa	details	https://github.com/UWICompSociety/Octa	Game	WhatsApp_Image_2017-09-13_at_4.49.55_PM.jpg
7	Two Lanes	details	\N	Game	WhatsApp_Image_2017-09-13_at_4.50.06_PM.jpg
\.


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('project_id_seq', 7, true);


--
-- Name: ExecPos ExecPos_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY "ExecPos"
    ADD CONSTRAINT "ExecPos_pkey" PRIMARY KEY (id, pos_id);


--
-- Name: about about_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY about
    ADD CONSTRAINT about_pkey PRIMARY KEY (id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: carousel carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY carousel
    ADD CONSTRAINT carousel_pkey PRIMARY KEY (id);


--
-- Name: developers developers_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY developers
    ADD CONSTRAINT developers_pkey PRIMARY KEY (id);


--
-- Name: execpos execpos_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY execpos
    ADD CONSTRAINT execpos_pkey PRIMARY KEY (id);


--
-- Name: executives executives_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY executives
    ADD CONSTRAINT executives_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: ExecPos ExecPos_pos_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY "ExecPos"
    ADD CONSTRAINT "ExecPos_pos_id_fkey" FOREIGN KEY (pos_id) REFERENCES execpos(id);


--
-- Name: developers developers_pro_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY developers
    ADD CONSTRAINT developers_pro_id_fkey FOREIGN KEY (pro_id) REFERENCES project(id);


--
-- Name: images images_pro_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_pro_id_fkey FOREIGN KEY (pro_id) REFERENCES project(id);


--
-- PostgreSQL database dump complete
--

