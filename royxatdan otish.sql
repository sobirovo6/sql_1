--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15
-- Dumped by pg_dump version 14.15

-- Started on 2024-12-18 17:35:12

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
-- TOC entry 210 (class 1259 OID 16402)
-- Name: royxatdan_otish; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.royxatdan_otish (
    id bigint NOT NULL,
    toliq_ism character varying(30) NOT NULL,
    tugilgan_sana date NOT NULL,
    yosh integer NOT NULL,
    jinsi public.gender_type NOT NULL,
    pasport_raqami character varying(9) NOT NULL,
    telefon_raqami bigint NOT NULL,
    yashash_manzili character varying(100) NOT NULL,
    emaill character varying(100),
    sugurta character varying(50),
    kasallik_tarixi character varying(100),
    shikoyatlar character varying(100) NOT NULL,
    qon_guruhi integer NOT NULL,
    favqulotda_holatlar_telefon_raqami bigint NOT NULL
);


ALTER TABLE public.royxatdan_otish OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16401)
-- Name: royxatdan_otish_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.royxatdan_otish_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.royxatdan_otish_id_seq OWNER TO postgres;

--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 209
-- Name: royxatdan_otish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.royxatdan_otish_id_seq OWNED BY public.royxatdan_otish.id;


--
-- TOC entry 3165 (class 2604 OID 16405)
-- Name: royxatdan_otish id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.royxatdan_otish ALTER COLUMN id SET DEFAULT nextval('public.royxatdan_otish_id_seq'::regclass);


--
-- TOC entry 3310 (class 0 OID 16402)
-- Dependencies: 210
-- Data for Name: royxatdan_otish; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.royxatdan_otish (id, toliq_ism, tugilgan_sana, yosh, jinsi, pasport_raqami, telefon_raqami, yashash_manzili, emaill, sugurta, kasallik_tarixi, shikoyatlar, qon_guruhi, favqulotda_holatlar_telefon_raqami) FROM stdin;
\.


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 209
-- Name: royxatdan_otish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.royxatdan_otish_id_seq', 1, false);


--
-- TOC entry 3167 (class 2606 OID 16411)
-- Name: royxatdan_otish royxatdan_otish_pasport_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.royxatdan_otish
    ADD CONSTRAINT royxatdan_otish_pasport_number_key UNIQUE (pasport_raqami);


--
-- TOC entry 3169 (class 2606 OID 16409)
-- Name: royxatdan_otish royxatdan_otish_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.royxatdan_otish
    ADD CONSTRAINT royxatdan_otish_pkey PRIMARY KEY (id);


-- Completed on 2024-12-18 17:35:13

--
-- PostgreSQL database dump complete
--

