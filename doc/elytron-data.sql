--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-22 11:29:55

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

--
-- TOC entry 196 (class 1259 OID 61537)
-- Name: systemuser; Type: TABLE; Schema: public; Owner: pzoli
--

CREATE TABLE public.systemuser (
    id bigint NOT NULL,
    username character varying(255),
    password character varying(255),
    role character varying(10)
);


ALTER TABLE public.systemuser OWNER TO pzoli;

--
-- TOC entry 2147 (class 0 OID 61537)
-- Dependencies: 196
-- Data for Name: systemuser; Type: TABLE DATA; Schema: public; Owner: pzoli
--

COPY public.systemuser (id, username, password, role) FROM stdin;
1	a@b.hu	jjXCzTv2ZBvbDiBQt2kyy7LmA0oN2swdm+qCprpX988=	ROLE_ADMIN
\.


--
-- TOC entry 2023 (class 2606 OID 61544)
-- Name: systemuser systemuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pzoli
--

ALTER TABLE ONLY public.systemuser
    ADD CONSTRAINT systemuser_pkey PRIMARY KEY (id);


--
-- TOC entry 2025 (class 2606 OID 61546)
-- Name: systemuser systemuser_username_key; Type: CONSTRAINT; Schema: public; Owner: pzoli
--

ALTER TABLE ONLY public.systemuser
    ADD CONSTRAINT systemuser_username_key UNIQUE (username);


-- Completed on 2024-07-22 11:29:55

--
-- PostgreSQL database dump complete
--

