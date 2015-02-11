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
-- Name: annuaire; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA annuaire;


ALTER SCHEMA annuaire OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = annuaire, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: personne; Type: TABLE; Schema: annuaire; Owner: postgres; Tablespace: 
--

CREATE TABLE personne (
    per_id integer NOT NULL,
    per_login character varying(255),
    per_password character varying(255),
    per_salt character varying(255),
    per_nom character varying(255) NOT NULL,
    per_prenom character varying(255),
    per_mail character varying(255)
);


ALTER TABLE annuaire.personne OWNER TO postgres;

--
-- Data for Name: personne; Type: TABLE DATA; Schema: annuaire; Owner: postgres
--

COPY personne (per_id, per_login, per_password, per_salt, per_nom, per_prenom, per_mail) FROM stdin;
\.


--
-- Name: personne_pkey; Type: CONSTRAINT; Schema: annuaire; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personne
    ADD CONSTRAINT personne_pkey PRIMARY KEY (per_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

