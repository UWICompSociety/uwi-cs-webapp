--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

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
    description character varying(255),
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
-- Name: news; Type: TABLE; Schema: public; Owner: computingsociety
--

CREATE TABLE news (
    id integer NOT NULL,
    title character varying(70),
    detail character varying(255),
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
    name character varying(30)
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
    detail character varying(255),
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
-- Name: carousel id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY carousel ALTER COLUMN id SET DEFAULT nextval('carousel_id_seq'::regclass);


--
-- Name: image id; Type: DEFAULT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY image ALTER COLUMN id SET DEFAULT nextval('image_id_seq'::regclass);


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
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY alembic_version (version_num) FROM stdin;
\.


--
-- Data for Name: carousel; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY carousel (id, name, description, image) FROM stdin;
1	Cloud Computing	It's the new 'in' thing.	img2.jpg
3	Quantum Computing	It is coming sooner than expected.	IBM-Quantum.jpg
2	Making Moves	UWI Computing Society partners with Palisadoes.	Calico-Palisadoes-Foundation.jpg
\.


--
-- Name: carousel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('carousel_id_seq', 3, true);


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
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY news (id, title, detail, image) FROM stdin;
3	Want to Hack Google ?	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \ttempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \tconsequat.	hacking.jpg
2	Version Control	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \ttempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \tconsequat.	git.jpg
1	Interest In Computing	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \ttempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \tconsequat.	circuit.jpg
4	New Logo	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \ttempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \tconsequat.	logo.jpg
5	Dummy News	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \ttempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \tquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \tconsequat.	\N
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('news_id_seq', 5, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY person (id, name) FROM stdin;
\.


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('person_id_seq', 1, false);


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: computingsociety
--

COPY project (id, pro_name, detail, image) FROM stdin;
1	Girl	she is awesome	pro_pic5.jpg
\.


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: computingsociety
--

SELECT pg_catalog.setval('project_id_seq', 1, true);


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
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: computingsociety
--

ALTER TABLE ONLY image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


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
-- PostgreSQL database dump complete
--

