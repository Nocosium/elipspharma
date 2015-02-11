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
-- Name: acl_essai; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE acl_essai (
    id_personne bigint NOT NULL,
    id_essai bigint NOT NULL
);


ALTER TABLE public.acl_essai OWNER TO postgres;

--
-- Name: acl_pharmacie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE acl_pharmacie (
    id_pharmacie bigint NOT NULL,
    id_personne bigint NOT NULL
);


ALTER TABLE public.acl_pharmacie OWNER TO postgres;

--
-- Name: arc_investigateur_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE arc_investigateur_sigrec (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    intervenantid integer,
    numadeli character varying(255),
    titre character varying(255),
    id_contact bigint,
    id_centre bigint,
    id_essai bigint
);


ALTER TABLE public.arc_investigateur_sigrec OWNER TO postgres;

--
-- Name: arc_investigateur_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE arc_investigateur_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.arc_investigateur_sigrec_id_seq OWNER TO postgres;

--
-- Name: arc_investigateur_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE arc_investigateur_sigrec_id_seq OWNED BY arc_investigateur_sigrec.id;


--
-- Name: arc_promoteur_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE arc_promoteur_sigrec (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    intervenantid integer,
    numadeli character varying(255),
    titre character varying(255),
    id_contact bigint,
    id_promoteur bigint
);


ALTER TABLE public.arc_promoteur_sigrec OWNER TO postgres;

--
-- Name: arc_promoteur_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE arc_promoteur_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.arc_promoteur_sigrec_id_seq OWNER TO postgres;

--
-- Name: arc_promoteur_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE arc_promoteur_sigrec_id_seq OWNED BY arc_promoteur_sigrec.id;


--
-- Name: arcinvestigateur_service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE arcinvestigateur_service (
    id_arcinvestigateur bigint NOT NULL,
    id_service bigint NOT NULL
);


ALTER TABLE public.arcinvestigateur_service OWNER TO postgres;

--
-- Name: assurance_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE assurance_sigrec (
    id bigint NOT NULL,
    version bigint,
    datedebutvalidite timestamp without time zone,
    datefinvalidite timestamp without time zone,
    numerocontrat character varying(255),
    id_contact bigint,
    id_essai bigint
);


ALTER TABLE public.assurance_sigrec OWNER TO postgres;

--
-- Name: assurance_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE assurance_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assurance_sigrec_id_seq OWNER TO postgres;

--
-- Name: assurance_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE assurance_sigrec_id_seq OWNED BY assurance_sigrec.id;


--
-- Name: bras; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE bras (
    id bigint NOT NULL,
    version bigint,
    description text,
    nom character varying(255),
    type character varying(255),
    id_detail_design bigint NOT NULL,
    id_bras_parent bigint
);


ALTER TABLE public.bras OWNER TO postgres;

--
-- Name: bras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE bras_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bras_id_seq OWNER TO postgres;

--
-- Name: bras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE bras_id_seq OWNED BY bras.id;


--
-- Name: categorie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE categorie (
    id bigint NOT NULL,
    version bigint,
    acte character varying(255),
    libelle character varying(255),
    id_theme bigint NOT NULL
);


ALTER TABLE public.categorie OWNER TO postgres;

--
-- Name: categorie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categorie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorie_id_seq OWNER TO postgres;

--
-- Name: categorie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categorie_id_seq OWNED BY categorie.id;


--
-- Name: centre_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE centre_sigrec (
    id bigint NOT NULL,
    version bigint,
    idcentre character varying(255),
    nom character varying(255),
    numero character varying(255),
    numerofiness character varying(255),
    id_contact bigint
);


ALTER TABLE public.centre_sigrec OWNER TO postgres;

--
-- Name: centre_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE centre_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.centre_sigrec_id_seq OWNER TO postgres;

--
-- Name: centre_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE centre_sigrec_id_seq OWNED BY centre_sigrec.id;


--
-- Name: co_investigateur_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE co_investigateur_sigrec (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    intervenantid integer,
    numadeli character varying(255),
    titre character varying(255),
    id_contact bigint,
    id_centre bigint,
    id_essai bigint
);


ALTER TABLE public.co_investigateur_sigrec OWNER TO postgres;

--
-- Name: co_investigateur_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE co_investigateur_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_investigateur_sigrec_id_seq OWNER TO postgres;

--
-- Name: co_investigateur_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE co_investigateur_sigrec_id_seq OWNED BY co_investigateur_sigrec.id;


--
-- Name: conditionnement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE conditionnement (
    id bigint NOT NULL,
    version bigint,
    contenance numeric(19,2),
    dosage numeric(19,2),
    forme character varying(255),
    libelle character varying(255) NOT NULL,
    modeprescription character varying(255),
    nbuniteprescription numeric(19,2),
    quantiteparpatient integer,
    unitecontenance character varying(255),
    unitedosage character varying(255),
    unitegestion character varying(255),
    uniteprescription character varying(255),
    voieadministration character varying(255),
    id_produit bigint
);


ALTER TABLE public.conditionnement OWNER TO postgres;

--
-- Name: conditionnement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE conditionnement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conditionnement_id_seq OWNER TO postgres;

--
-- Name: conditionnement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE conditionnement_id_seq OWNED BY conditionnement.id;


--
-- Name: contact_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contact_sigrec (
    id bigint NOT NULL,
    version bigint,
    adresse character varying(255),
    civilite character varying(255),
    codepostal character varying(255),
    email character varying(255),
    fax character varying(255),
    nom character varying(255),
    prenom character varying(255),
    raisonsociale character varying(255),
    telephone character varying(255),
    ville character varying(255)
);


ALTER TABLE public.contact_sigrec OWNER TO postgres;

--
-- Name: contact_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contact_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_sigrec_id_seq OWNER TO postgres;

--
-- Name: contact_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contact_sigrec_id_seq OWNED BY contact_sigrec.id;


--
-- Name: cro_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cro_sigrec (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    id_contact bigint,
    id_essai bigint
);


ALTER TABLE public.cro_sigrec OWNER TO postgres;

--
-- Name: cro_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cro_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cro_sigrec_id_seq OWNER TO postgres;

--
-- Name: cro_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cro_sigrec_id_seq OWNED BY cro_sigrec.id;


--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE databasechangelog (
    id character varying(63) NOT NULL,
    author character varying(63) NOT NULL,
    filename character varying(200) NOT NULL,
    dateexecuted timestamp with time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20)
);


ALTER TABLE public.databasechangelog OWNER TO postgres;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp with time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO postgres;

--
-- Name: dispensation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dispensation (
    id bigint NOT NULL,
    version bigint,
    commentaire text,
    datedispensation timestamp without time zone,
    dispense boolean,
    numordonnancier integer,
    id_ordonnancier bigint,
    id_pharmacie bigint NOT NULL,
    id_prescription bigint NOT NULL
);


ALTER TABLE public.dispensation OWNER TO postgres;

--
-- Name: dispensation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dispensation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dispensation_id_seq OWNER TO postgres;

--
-- Name: dispensation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dispensation_id_seq OWNED BY dispensation.id;


--
-- Name: dispositif_medical; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dispositif_medical (
    classe character varying(255),
    codelogiciel character varying(255),
    codelppr character varying(255),
    fournisseur character varying(255),
    marquagece boolean,
    modele character varying(255),
    nature character varying(255),
    nomenclature character varying(255),
    numeromarche character varying(255),
    randomisation boolean,
    statutlpp character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.dispositif_medical OWNER TO postgres;

--
-- Name: donnees_prevision; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE donnees_prevision (
    id bigint NOT NULL,
    version bigint,
    nbannees integer,
    nbapprovisionnements integer,
    nbaudits integer,
    nbdestructions integer,
    nbdispensations integer,
    nbdispensationsrenouvellement integer,
    nbinclusions integer,
    nbpreparationsnonsteriles integer,
    nbpreparationssteriles integer,
    nbprescriptions integer,
    nbreetiquetages integer,
    nbvisitemonitoring integer,
    id_detail_surcout bigint
);


ALTER TABLE public.donnees_prevision OWNER TO postgres;

--
-- Name: donnees_prevision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE donnees_prevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donnees_prevision_id_seq OWNER TO postgres;

--
-- Name: donnees_prevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE donnees_prevision_id_seq OWNED BY donnees_prevision.id;


--
-- Name: dotation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dotation (
    id bigint NOT NULL,
    version bigint,
    commentaire text,
    datedemande timestamp without time zone NOT NULL,
    quantite integer NOT NULL,
    traitee boolean NOT NULL,
    id_conditionnement bigint NOT NULL,
    id_essai bigint NOT NULL,
    id_personne bigint NOT NULL,
    id_pharmacie bigint NOT NULL,
    id_produit bigint NOT NULL,
    id_service bigint NOT NULL
);


ALTER TABLE public.dotation OWNER TO postgres;

--
-- Name: dotation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dotation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dotation_id_seq OWNER TO postgres;

--
-- Name: dotation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dotation_id_seq OWNED BY dotation.id;


--
-- Name: element_to_check; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE element_to_check (
    id bigint NOT NULL,
    version bigint,
    checked boolean,
    commentaire text,
    datechecked timestamp without time zone,
    nomchamps character varying(255),
    numordonnancier integer,
    type character varying(255),
    id_personne bigint,
    id_dispensation bigint NOT NULL,
    id_ordonnancier bigint,
    id_produitprescrit bigint NOT NULL
);


ALTER TABLE public.element_to_check OWNER TO postgres;

--
-- Name: element_to_check_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE element_to_check_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.element_to_check_id_seq OWNER TO postgres;

--
-- Name: element_to_check_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE element_to_check_id_seq OWNED BY element_to_check.id;


--
-- Name: essai; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai (
    id bigint NOT NULL,
    version bigint,
    alerteactive boolean,
    anneecreation integer,
    codepromoteur character varying(255),
    conv_date timestamp without time zone,
    dci character varying(255),
    emplacementdossier character varying(255),
    etat character varying(255),
    libelleproduitevalue character varying(255),
    nom character varying(255),
    numinterne character varying(255),
    typepromoteur character varying(255),
    id_pharma bigint NOT NULL,
    id_promoteur bigint NOT NULL
);


ALTER TABLE public.essai OWNER TO postgres;

--
-- Name: essai_commentaire_detail_administratif_archi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_commentaire_detail_administratif_archi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    libelle text NOT NULL,
    id_detailadministratif bigint NOT NULL
);


ALTER TABLE public.essai_commentaire_detail_administratif_archi OWNER TO postgres;

--
-- Name: essai_commentaire_detail_administratif_archi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_commentaire_detail_administratif_archi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_commentaire_detail_administratif_archi_id_seq OWNER TO postgres;

--
-- Name: essai_commentaire_detail_administratif_archi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_commentaire_detail_administratif_archi_id_seq OWNED BY essai_commentaire_detail_administratif_archi.id;


--
-- Name: essai_commentaire_detail_faisabilite; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_commentaire_detail_faisabilite (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    libelle text NOT NULL,
    id_detailfaisabilite bigint NOT NULL
);


ALTER TABLE public.essai_commentaire_detail_faisabilite OWNER TO postgres;

--
-- Name: essai_commentaire_detail_faisabilite_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_commentaire_detail_faisabilite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_commentaire_detail_faisabilite_id_seq OWNER TO postgres;

--
-- Name: essai_commentaire_detail_faisabilite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_commentaire_detail_faisabilite_id_seq OWNED BY essai_commentaire_detail_faisabilite.id;


--
-- Name: essai_commentaire_detail_recherche; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_commentaire_detail_recherche (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    libelle text NOT NULL,
    id_detailrecherche bigint NOT NULL
);


ALTER TABLE public.essai_commentaire_detail_recherche OWNER TO postgres;

--
-- Name: essai_commentaire_detail_recherche_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_commentaire_detail_recherche_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_commentaire_detail_recherche_id_seq OWNER TO postgres;

--
-- Name: essai_commentaire_detail_recherche_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_commentaire_detail_recherche_id_seq OWNED BY essai_commentaire_detail_recherche.id;


--
-- Name: essai_detail_administratif; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_administratif (
    id bigint NOT NULL,
    version bigint,
    ac_accord boolean,
    ac_date timestamp without time zone,
    ac_docsdosspapier boolean,
    ac_nom character varying(255),
    ac_numident character varying(255),
    ac_type character varying(255),
    arc_date timestamp without time zone,
    arc_duree integer,
    arc_ident character varying(255),
    arc_lieu character varying(255),
    assur_code_postal character varying(255),
    assur_date_debut_validite timestamp without time zone,
    assur_date_fin_validite timestamp without time zone,
    assur_docsdosspapier boolean,
    assur_nom_compagnie character varying(255),
    assur_numero_avenant character varying(255),
    assur_numero_contrat character varying(255),
    assur_ville character varying(255),
    autorisationdistribution_docsdosspapier boolean,
    autorisationimportation_docsdosspapier boolean,
    bropro_docsdosspapier boolean,
    cpp_accord boolean,
    cpp_date timestamp without time zone,
    cpp_docsdosspapier boolean,
    cpp_nom character varying(255),
    conv_signee boolean,
    conv_docsdosspapier boolean,
    proto_docsdosspapier boolean,
    id_essai bigint
);


ALTER TABLE public.essai_detail_administratif OWNER TO postgres;

--
-- Name: essai_detail_administratif_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_administratif_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_administratif_id_seq OWNER TO postgres;

--
-- Name: essai_detail_administratif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_administratif_id_seq OWNED BY essai_detail_administratif.id;


--
-- Name: essai_detail_administratif_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_administratif_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_administratif bigint NOT NULL
);


ALTER TABLE public.essai_detail_administratif_suivi OWNER TO postgres;

--
-- Name: essai_detail_administratif_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_administratif_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_administratif_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_administratif_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_administratif_suivi_id_seq OWNED BY essai_detail_administratif_suivi.id;


--
-- Name: essai_detail_autres_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_autres_documents (
    id bigint NOT NULL,
    version bigint,
    id_essai bigint
);


ALTER TABLE public.essai_detail_autres_documents OWNER TO postgres;

--
-- Name: essai_detail_autres_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_autres_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_autres_documents_id_seq OWNER TO postgres;

--
-- Name: essai_detail_autres_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_autres_documents_id_seq OWNED BY essai_detail_autres_documents.id;


--
-- Name: essai_detail_autres_documents_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_autres_documents_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_autres_documents bigint NOT NULL
);


ALTER TABLE public.essai_detail_autres_documents_suivi OWNER TO postgres;

--
-- Name: essai_detail_autres_documents_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_autres_documents_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_autres_documents_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_autres_documents_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_autres_documents_suivi_id_seq OWNED BY essai_detail_autres_documents_suivi.id;


--
-- Name: essai_detail_contacts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_contacts (
    id bigint NOT NULL,
    version bigint,
    id_essai bigint
);


ALTER TABLE public.essai_detail_contacts OWNER TO postgres;

--
-- Name: essai_detail_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_contacts_id_seq OWNER TO postgres;

--
-- Name: essai_detail_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_contacts_id_seq OWNED BY essai_detail_contacts.id;


--
-- Name: essai_detail_contacts_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_contacts_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_contacts bigint NOT NULL
);


ALTER TABLE public.essai_detail_contacts_suivi OWNER TO postgres;

--
-- Name: essai_detail_contacts_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_contacts_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_contacts_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_contacts_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_contacts_suivi_id_seq OWNED BY essai_detail_contacts_suivi.id;


--
-- Name: essai_detail_dates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_dates (
    id bigint NOT NULL,
    version bigint,
    activation timestamp without time zone,
    activationprev timestamp without time zone,
    cloture timestamp without time zone,
    debutetude timestamp without time zone,
    debutetudeprev timestamp without time zone,
    debutinclusion timestamp without time zone,
    debutinclusionprev timestamp without time zone,
    findispensations timestamp without time zone,
    finetude timestamp without time zone,
    finetudeprev timestamp without time zone,
    fininclusion timestamp without time zone,
    fininclusionprev timestamp without time zone,
    precloture timestamp without time zone,
    datereception timestamp without time zone,
    id_essai bigint
);


ALTER TABLE public.essai_detail_dates OWNER TO postgres;

--
-- Name: essai_detail_dates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_dates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_dates_id_seq OWNER TO postgres;

--
-- Name: essai_detail_dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_dates_id_seq OWNED BY essai_detail_dates.id;


--
-- Name: essai_detail_dates_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_dates_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_dates bigint NOT NULL
);


ALTER TABLE public.essai_detail_dates_suivi OWNER TO postgres;

--
-- Name: essai_detail_dates_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_dates_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_dates_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_dates_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_dates_suivi_id_seq OWNED BY essai_detail_dates_suivi.id;


--
-- Name: essai_detail_design; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_design (
    id bigint NOT NULL,
    version bigint,
    typedesign character varying(255),
    id_essai bigint
);


ALTER TABLE public.essai_detail_design OWNER TO postgres;

--
-- Name: essai_detail_design_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_design_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_design_id_seq OWNER TO postgres;

--
-- Name: essai_detail_design_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_design_id_seq OWNED BY essai_detail_design.id;


--
-- Name: essai_detail_design_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_design_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_design bigint NOT NULL
);


ALTER TABLE public.essai_detail_design_suivi OWNER TO postgres;

--
-- Name: essai_detail_design_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_design_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_design_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_design_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_design_suivi_id_seq OWNED BY essai_detail_design_suivi.id;


--
-- Name: essai_detail_etat; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_etat (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    commentaire text,
    etat character varying(255) NOT NULL,
    id_essai bigint NOT NULL
);


ALTER TABLE public.essai_detail_etat OWNER TO postgres;

--
-- Name: essai_detail_etat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_etat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_etat_id_seq OWNER TO postgres;

--
-- Name: essai_detail_etat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_etat_id_seq OWNED BY essai_detail_etat.id;


--
-- Name: essai_detail_faisabilite; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_faisabilite (
    id bigint NOT NULL,
    version bigint,
    concl_convsignee boolean,
    concl_date timestamp without time zone,
    concl_favorable boolean,
    etude_accordpharmacentrale boolean,
    etude_achatspui boolean,
    etude_circuitdef boolean,
    etude_conditionnement boolean,
    etude_dmdimportation boolean,
    etude_disppossible boolean,
    etude_distribautrespharmas boolean,
    etude_donneesstabilite boolean,
    etude_etiquetages boolean,
    etude_gestionaveugle boolean,
    etude_preparations boolean,
    etude_prestapharma boolean,
    etude_randompharma boolean,
    etude_randomengarde boolean,
    etude_reconstitutions boolean,
    etude_referencement boolean,
    etude_soctranspdef boolean,
    etude_suivistocks boolean,
    etude_suivitemp boolean,
    id_essai bigint
);


ALTER TABLE public.essai_detail_faisabilite OWNER TO postgres;

--
-- Name: essai_detail_faisabilite_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_faisabilite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_faisabilite_id_seq OWNER TO postgres;

--
-- Name: essai_detail_faisabilite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_faisabilite_id_seq OWNED BY essai_detail_faisabilite.id;


--
-- Name: essai_detail_faisabilite_service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_faisabilite_service (
    id_essai bigint NOT NULL,
    id_service bigint NOT NULL
);


ALTER TABLE public.essai_detail_faisabilite_service OWNER TO postgres;

--
-- Name: essai_detail_faisabilite_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_faisabilite_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_faisabilite bigint NOT NULL
);


ALTER TABLE public.essai_detail_faisabilite_suivi OWNER TO postgres;

--
-- Name: essai_detail_faisabilite_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_faisabilite_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_faisabilite_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_faisabilite_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_faisabilite_suivi_id_seq OWNED BY essai_detail_faisabilite_suivi.id;


--
-- Name: essai_detail_pharma; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_pharma (
    id bigint NOT NULL,
    version bigint,
    formationspecifique boolean,
    envoistraitement boolean,
    gestionretour character varying(255),
    modalitedestruction text,
    modalitereception text,
    responsabilitecommande character varying(255),
    responsabiliteinsu character varying(255),
    responsabiliterandomisation character varying(255),
    typeretour character varying(255),
    aidedispensation text,
    conseilpatient text,
    contreetiquette text,
    destinataireinvestigateur boolean,
    destinatairepatient boolean,
    destinataireservice boolean,
    informationconditionnement text,
    numerotationconditionnement text,
    tracabilitepatient boolean,
    typedispensation character varying(255),
    dureetotalepatientprevue numeric(19,2),
    dureetotaleprevue numeric(19,2),
    nbcentresprevus integer,
    nbpatientsprevus integer,
    nbpatientsprevustotal integer,
    numerocentre character varying(255),
    qualiteinsu integer,
    typeproduitevalue character varying(255),
    unitedureetotalepatientprevue character varying(255),
    unitedureetotaleprevue character varying(255),
    id_essai bigint
);


ALTER TABLE public.essai_detail_pharma OWNER TO postgres;

--
-- Name: essai_detail_pharma_etablissement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_pharma_etablissement (
    id_detail_pharma bigint NOT NULL,
    id_etablissement bigint NOT NULL
);


ALTER TABLE public.essai_detail_pharma_etablissement OWNER TO postgres;

--
-- Name: essai_detail_pharma_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_pharma_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_pharma_id_seq OWNER TO postgres;

--
-- Name: essai_detail_pharma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_pharma_id_seq OWNED BY essai_detail_pharma.id;


--
-- Name: essai_detail_pharma_pharmacie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_pharma_pharmacie (
    id_detail_pharma bigint NOT NULL,
    id_pharmacie bigint NOT NULL
);


ALTER TABLE public.essai_detail_pharma_pharmacie OWNER TO postgres;

--
-- Name: essai_detail_pharma_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_pharma_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_pharma bigint NOT NULL
);


ALTER TABLE public.essai_detail_pharma_suivi OWNER TO postgres;

--
-- Name: essai_detail_pharma_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_pharma_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_pharma_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_pharma_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_pharma_suivi_id_seq OWNED BY essai_detail_pharma_suivi.id;


--
-- Name: essai_detail_produit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_produit (
    id bigint NOT NULL,
    version bigint,
    id_essai bigint
);


ALTER TABLE public.essai_detail_produit OWNER TO postgres;

--
-- Name: essai_detail_produit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_produit_id_seq OWNER TO postgres;

--
-- Name: essai_detail_produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_produit_id_seq OWNED BY essai_detail_produit.id;


--
-- Name: essai_detail_produit_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_produit_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_produit bigint NOT NULL
);


ALTER TABLE public.essai_detail_produit_suivi OWNER TO postgres;

--
-- Name: essai_detail_produit_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_produit_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_produit_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_produit_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_produit_suivi_id_seq OWNED BY essai_detail_produit_suivi.id;


--
-- Name: essai_detail_recherche; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_recherche (
    id bigint NOT NULL,
    version bigint,
    motscles character varying(255),
    naturerecherche character varying(255),
    numenregistrement character varying(255),
    objetrecherche character varying(255),
    phaserecherche character varying(255),
    thematique character varying(255),
    titreprotocole text,
    typerecherche character varying(255),
    id_essai bigint
);


ALTER TABLE public.essai_detail_recherche OWNER TO postgres;

--
-- Name: essai_detail_recherche_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_recherche_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_recherche_id_seq OWNER TO postgres;

--
-- Name: essai_detail_recherche_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_recherche_id_seq OWNED BY essai_detail_recherche.id;


--
-- Name: essai_detail_recherche_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_recherche_sigrec (
    id bigint NOT NULL,
    version bigint,
    naturerecherche character varying(255),
    numenregistrement character varying(255),
    objetrecherche character varying(255),
    phaserecherche character varying(255),
    qualiteinsu character varying(255),
    titreprotocole text,
    typerecherche character varying(255),
    id_essai bigint
);


ALTER TABLE public.essai_detail_recherche_sigrec OWNER TO postgres;

--
-- Name: essai_detail_recherche_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_recherche_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_recherche_sigrec_id_seq OWNER TO postgres;

--
-- Name: essai_detail_recherche_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_recherche_sigrec_id_seq OWNED BY essai_detail_recherche_sigrec.id;


--
-- Name: essai_detail_recherche_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_recherche_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_recherche bigint NOT NULL
);


ALTER TABLE public.essai_detail_recherche_suivi OWNER TO postgres;

--
-- Name: essai_detail_recherche_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_recherche_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_recherche_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_recherche_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_recherche_suivi_id_seq OWNED BY essai_detail_recherche_suivi.id;


--
-- Name: essai_detail_surcout; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_surcout (
    id bigint NOT NULL,
    version bigint,
    id_essai bigint
);


ALTER TABLE public.essai_detail_surcout OWNER TO postgres;

--
-- Name: essai_detail_surcout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_surcout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_surcout_id_seq OWNER TO postgres;

--
-- Name: essai_detail_surcout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_surcout_id_seq OWNED BY essai_detail_surcout.id;


--
-- Name: essai_detail_surcout_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_detail_surcout_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_detail_surcout bigint NOT NULL
);


ALTER TABLE public.essai_detail_surcout_suivi OWNER TO postgres;

--
-- Name: essai_detail_surcout_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_detail_surcout_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_detail_surcout_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_detail_surcout_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_detail_surcout_suivi_id_seq OWNED BY essai_detail_surcout_suivi.id;


--
-- Name: essai_document_detail_administratif; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_document_detail_administratif (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    commentaire text,
    typedocumentprotocole character varying(255),
    version_doc character varying(255),
    typedocumentbrochure character varying(255),
    id_detailadministratif bigint NOT NULL
);


ALTER TABLE public.essai_document_detail_administratif OWNER TO postgres;

--
-- Name: essai_document_detail_administratif_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_document_detail_administratif_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_document_detail_administratif_id_seq OWNER TO postgres;

--
-- Name: essai_document_detail_administratif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_document_detail_administratif_id_seq OWNED BY essai_document_detail_administratif.id;


--
-- Name: essai_document_detail_autres_documents; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_document_detail_autres_documents (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    commentaire text,
    type character varying(255) NOT NULL,
    id_detail_autres_documents bigint NOT NULL
);


ALTER TABLE public.essai_document_detail_autres_documents OWNER TO postgres;

--
-- Name: essai_document_detail_autres_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_document_detail_autres_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_document_detail_autres_documents_id_seq OWNER TO postgres;

--
-- Name: essai_document_detail_autres_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_document_detail_autres_documents_id_seq OWNED BY essai_document_detail_autres_documents.id;


--
-- Name: essai_document_detail_pharma; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_document_detail_pharma (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    commentaire text,
    id_detail_pharma bigint NOT NULL
);


ALTER TABLE public.essai_document_detail_pharma OWNER TO postgres;

--
-- Name: essai_document_detail_pharma_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_document_detail_pharma_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_document_detail_pharma_id_seq OWNER TO postgres;

--
-- Name: essai_document_detail_pharma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_document_detail_pharma_id_seq OWNED BY essai_document_detail_pharma.id;


--
-- Name: essai_document_detail_surcout; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_document_detail_surcout (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    commentaire text,
    id_detailsurcout bigint NOT NULL
);


ALTER TABLE public.essai_document_detail_surcout OWNER TO postgres;

--
-- Name: essai_document_detail_surcout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_document_detail_surcout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_document_detail_surcout_id_seq OWNER TO postgres;

--
-- Name: essai_document_detail_surcout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_document_detail_surcout_id_seq OWNED BY essai_document_detail_surcout.id;


--
-- Name: essai_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_id_seq OWNER TO postgres;

--
-- Name: essai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_id_seq OWNED BY essai.id;


--
-- Name: essai_service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_service (
    id_essai bigint NOT NULL,
    id_service bigint NOT NULL
);


ALTER TABLE public.essai_service OWNER TO postgres;

--
-- Name: essai_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_sigrec (
    id bigint NOT NULL,
    version bigint,
    codepromoteur character varying(255),
    multicentrique boolean,
    nbcentres integer,
    nom character varying(255),
    numidentac character varying(255),
    typepromoteur character varying(255),
    id_investigateurprincipal bigint,
    id_promoteur bigint
);


ALTER TABLE public.essai_sigrec OWNER TO postgres;

--
-- Name: essai_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_sigrec_id_seq OWNER TO postgres;

--
-- Name: essai_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_sigrec_id_seq OWNED BY essai_sigrec.id;


--
-- Name: essai_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE essai_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_essai bigint NOT NULL
);


ALTER TABLE public.essai_suivi OWNER TO postgres;

--
-- Name: essai_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE essai_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.essai_suivi_id_seq OWNER TO postgres;

--
-- Name: essai_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE essai_suivi_id_seq OWNED BY essai_suivi.id;


--
-- Name: etablissement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE etablissement (
    id bigint NOT NULL,
    version bigint,
    adressedirection text,
    codepostal character varying(255),
    fax character varying(255),
    mail character varying(255),
    nom character varying(255) NOT NULL,
    pays character varying(255),
    telephone character varying(255),
    ville character varying(255)
);


ALTER TABLE public.etablissement OWNER TO postgres;

--
-- Name: etablissement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE etablissement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etablissement_id_seq OWNER TO postgres;

--
-- Name: etablissement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE etablissement_id_seq OWNED BY etablissement.id;


--
-- Name: etablissement_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE etablissement_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_etablissement bigint NOT NULL
);


ALTER TABLE public.etablissement_suivi OWNER TO postgres;

--
-- Name: etablissement_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE etablissement_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etablissement_suivi_id_seq OWNER TO postgres;

--
-- Name: etablissement_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE etablissement_suivi_id_seq OWNED BY etablissement_suivi.id;


--
-- Name: evenement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE evenement (
    id bigint NOT NULL,
    version bigint,
    arc character varying(255),
    commentaire character varying(255),
    datedebut timestamp without time zone NOT NULL,
    datefin timestamp without time zone NOT NULL,
    datereception timestamp without time zone,
    destinataire character varying(255),
    heuredebut character varying(255),
    heurefin character varying(255),
    journee boolean,
    libelle character varying(255),
    nombre integer,
    personnelpharmacie text,
    realisepar character varying(255),
    resultatvisite character varying(255),
    typeevenement character varying(255) NOT NULL,
    typevisite character varying(255),
    validation character varying(255),
    id_essai bigint,
    id_personne bigint
);


ALTER TABLE public.evenement OWNER TO postgres;

--
-- Name: evenement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evenement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evenement_id_seq OWNER TO postgres;

--
-- Name: evenement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evenement_id_seq OWNED BY evenement.id;


--
-- Name: evenement_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE evenement_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_evenement bigint NOT NULL
);


ALTER TABLE public.evenement_suivi OWNER TO postgres;

--
-- Name: evenement_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evenement_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evenement_suivi_id_seq OWNER TO postgres;

--
-- Name: evenement_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evenement_suivi_id_seq OWNED BY evenement_suivi.id;


--
-- Name: grille; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE grille (
    id bigint NOT NULL,
    version bigint,
    id_detail_surcout bigint,
    id_grille_modele bigint NOT NULL
);


ALTER TABLE public.grille OWNER TO postgres;

--
-- Name: grille_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE grille_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grille_id_seq OWNER TO postgres;

--
-- Name: grille_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE grille_id_seq OWNED BY grille.id;


--
-- Name: grille_modele; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE grille_modele (
    id bigint NOT NULL,
    version bigint,
    datecreation timestamp without time zone,
    datedebut timestamp without time zone,
    datefin timestamp without time zone,
    nom character varying(255)
);


ALTER TABLE public.grille_modele OWNER TO postgres;

--
-- Name: grille_modele_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE grille_modele_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grille_modele_id_seq OWNER TO postgres;

--
-- Name: grille_modele_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE grille_modele_id_seq OWNED BY grille_modele.id;


--
-- Name: habilitation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE habilitation (
    id bigint NOT NULL,
    version bigint,
    active boolean NOT NULL,
    creepar character varying(255) NOT NULL,
    desactivepar character varying(255),
    creele timestamp without time zone NOT NULL,
    desactivele timestamp without time zone,
    desactivable boolean NOT NULL,
    droit character varying(255) NOT NULL,
    id_detail_contacts bigint NOT NULL,
    id_personne bigint NOT NULL
);


ALTER TABLE public.habilitation OWNER TO postgres;

--
-- Name: habilitation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE habilitation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habilitation_id_seq OWNER TO postgres;

--
-- Name: habilitation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE habilitation_id_seq OWNED BY habilitation.id;


--
-- Name: historique_patient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE historique_patient (
    id bigint NOT NULL,
    version bigint,
    commentaire text,
    date timestamp without time zone,
    poid double precision,
    surfacecorporelle double precision,
    taille double precision,
    id_patient bigint NOT NULL
);


ALTER TABLE public.historique_patient OWNER TO postgres;

--
-- Name: historique_patient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE historique_patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historique_patient_id_seq OWNER TO postgres;

--
-- Name: historique_patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE historique_patient_id_seq OWNED BY historique_patient.id;


--
-- Name: incident; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE incident (
    id bigint NOT NULL,
    version bigint,
    commentaire text,
    date timestamp without time zone NOT NULL,
    libelle character varying(255) NOT NULL,
    id_essai bigint NOT NULL
);


ALTER TABLE public.incident OWNER TO postgres;

--
-- Name: incident_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE incident_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incident_id_seq OWNER TO postgres;

--
-- Name: incident_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE incident_id_seq OWNED BY incident.id;


--
-- Name: incident_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE incident_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_incident bigint NOT NULL
);


ALTER TABLE public.incident_suivi OWNER TO postgres;

--
-- Name: incident_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE incident_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incident_suivi_id_seq OWNER TO postgres;

--
-- Name: incident_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE incident_suivi_id_seq OWNED BY incident_suivi.id;


--
-- Name: inclusion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE inclusion (
    id bigint NOT NULL,
    version bigint,
    actif boolean,
    datedesinclusion timestamp without time zone,
    dateinclusion timestamp without time zone,
    numinclusion character varying(255),
    numrandomisation character varying(255),
    id_essai bigint NOT NULL,
    id_patient bigint NOT NULL
);


ALTER TABLE public.inclusion OWNER TO postgres;

--
-- Name: inclusion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inclusion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inclusion_id_seq OWNER TO postgres;

--
-- Name: inclusion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE inclusion_id_seq OWNED BY inclusion.id;


--
-- Name: investigateur_service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE investigateur_service (
    id_investigateur bigint NOT NULL,
    id_service bigint NOT NULL
);


ALTER TABLE public.investigateur_service OWNER TO postgres;

--
-- Name: investigateur_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE investigateur_sigrec (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    intervenantid integer,
    numadeli character varying(255),
    titre character varying(255),
    id_contact bigint,
    id_centre bigint
);


ALTER TABLE public.investigateur_sigrec OWNER TO postgres;

--
-- Name: investigateur_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE investigateur_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.investigateur_sigrec_id_seq OWNER TO postgres;

--
-- Name: investigateur_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE investigateur_sigrec_id_seq OWNED BY investigateur_sigrec.id;


--
-- Name: item; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE item (
    id bigint NOT NULL,
    version bigint,
    acte character varying(255),
    categorie character varying(255),
    theme character varying(255),
    id_grille bigint NOT NULL
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_id_seq OWNER TO postgres;

--
-- Name: item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE item_id_seq OWNED BY item.id;


--
-- Name: item_regle; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE item_regle (
    id_item bigint NOT NULL,
    id_regle bigint NOT NULL
);


ALTER TABLE public.item_regle OWNER TO postgres;

--
-- Name: lignestock; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lignestock (
    id bigint NOT NULL,
    version bigint,
    approapprouve boolean,
    dateperemption timestamp without time zone,
    numlot character varying(255),
    numtraitement character varying(255),
    quantite_dispensation_en_stock integer NOT NULL,
    quantite_global integer NOT NULL,
    stockage character varying(255),
    id_conditionnement bigint NOT NULL,
    id_essai bigint NOT NULL,
    id_pharmacie bigint NOT NULL,
    id_produit bigint NOT NULL
);


ALTER TABLE public.lignestock OWNER TO postgres;

--
-- Name: lignestock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lignestock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lignestock_id_seq OWNER TO postgres;

--
-- Name: lignestock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lignestock_id_seq OWNED BY lignestock.id;


--
-- Name: medicament; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE medicament (
    conditionnement boolean,
    dci character varying(255),
    etiquetage boolean,
    fabrication boolean,
    mds boolean,
    nature character varying(255),
    reconstitutionpsm boolean,
    reconstitutionsimple boolean,
    stupefiant boolean,
    id bigint NOT NULL
);


ALTER TABLE public.medicament OWNER TO postgres;

--
-- Name: mvt_approvisionnement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_approvisionnement (
    commentaireextensionperemption text,
    commentairerefus text,
    datearriveecolis date,
    dateperemption date,
    datereception timestamp without time zone,
    extensionperemption boolean,
    historiqueextensionperemption text,
    motifrefus character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.mvt_approvisionnement OWNER TO postgres;

--
-- Name: mvt_autre_sortie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_autre_sortie (
    commentaire text,
    commentaireraison text,
    raisonsortie character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.mvt_autre_sortie OWNER TO postgres;

--
-- Name: mvt_cession_pui; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_cession_pui (
    commentaire text,
    commentaireraison text,
    raisonsortie character varying(255),
    id bigint NOT NULL,
    id_pharmaciedest bigint
);


ALTER TABLE public.mvt_cession_pui OWNER TO postgres;

--
-- Name: mvt_destruction; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_destruction (
    commentaire text,
    commentaireraison text,
    raisonsortie character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.mvt_destruction OWNER TO postgres;

--
-- Name: mvt_dispensation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_dispensation (
    id bigint NOT NULL,
    id_dispensation bigint NOT NULL,
    id_produitprescrit bigint NOT NULL
);


ALTER TABLE public.mvt_dispensation OWNER TO postgres;

--
-- Name: mvt_dispensation_globale; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_dispensation_globale (
    quantitedispensee integer,
    id bigint NOT NULL,
    id_dotation bigint NOT NULL
);


ALTER TABLE public.mvt_dispensation_globale OWNER TO postgres;

--
-- Name: mvt_preparation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_preparation (
    id bigint NOT NULL
);


ALTER TABLE public.mvt_preparation OWNER TO postgres;

--
-- Name: mvt_preparationentree; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_preparationentree (
    composition text,
    datefabrication timestamp without time zone,
    numordonnancier integer,
    sterile boolean,
    id bigint NOT NULL,
    id_ordonnancier bigint
);


ALTER TABLE public.mvt_preparationentree OWNER TO postgres;

--
-- Name: mvt_retour_promoteur; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvt_retour_promoteur (
    commentaire text,
    commentaireraison text,
    nomsocietetransport character varying(255),
    raisonsortie character varying(255),
    referenceenvoi character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.mvt_retour_promoteur OWNER TO postgres;

--
-- Name: mvtstock; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvtstock (
    id bigint NOT NULL,
    version bigint,
    approapprouve boolean NOT NULL,
    datecreation timestamp without time zone NOT NULL,
    dateperemption timestamp without time zone,
    numlot character varying(255) NOT NULL,
    numtraitement character varying(255),
    quantite integer NOT NULL,
    type character varying(255),
    id_conditionnement bigint NOT NULL,
    id_essai bigint NOT NULL,
    id_personne bigint NOT NULL,
    id_pharmacie bigint NOT NULL,
    id_produit bigint NOT NULL
);


ALTER TABLE public.mvtstock OWNER TO postgres;

--
-- Name: mvtstock_document; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mvtstock_document (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    id_mvtstock bigint NOT NULL
);


ALTER TABLE public.mvtstock_document OWNER TO postgres;

--
-- Name: mvtstock_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mvtstock_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mvtstock_document_id_seq OWNER TO postgres;

--
-- Name: mvtstock_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mvtstock_document_id_seq OWNED BY mvtstock_document.id;


--
-- Name: mvtstock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mvtstock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mvtstock_id_seq OWNER TO postgres;

--
-- Name: mvtstock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mvtstock_id_seq OWNED BY mvtstock.id;


--
-- Name: ordonnancier_dispensation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordonnancier_dispensation (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    datedebut date NOT NULL,
    datefin date NOT NULL,
    id_pharma bigint NOT NULL
);


ALTER TABLE public.ordonnancier_dispensation OWNER TO postgres;

--
-- Name: ordonnancier_dispensation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ordonnancier_dispensation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordonnancier_dispensation_id_seq OWNER TO postgres;

--
-- Name: ordonnancier_dispensation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ordonnancier_dispensation_id_seq OWNED BY ordonnancier_dispensation.id;


--
-- Name: ordonnancier_fab_reconst; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordonnancier_fab_reconst (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    datedebut date NOT NULL,
    datefin date NOT NULL,
    id_pharma bigint NOT NULL
);


ALTER TABLE public.ordonnancier_fab_reconst OWNER TO postgres;

--
-- Name: ordonnancier_fab_reconst_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ordonnancier_fab_reconst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordonnancier_fab_reconst_id_seq OWNER TO postgres;

--
-- Name: ordonnancier_fab_reconst_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ordonnancier_fab_reconst_id_seq OWNED BY ordonnancier_fab_reconst.id;


--
-- Name: patient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patient (
    id bigint NOT NULL,
    version bigint,
    adresse text,
    civilite character varying(255),
    codepostal character varying(255),
    datenaissance timestamp without time zone,
    initiales character varying(255),
    mail character varying(255),
    nom character varying(255),
    nomjeunefille character varying(255),
    numeroipp character varying(255),
    numerosejour character varying(255),
    prenom character varying(255),
    telephone character varying(255),
    ville character varying(255)
);


ALTER TABLE public.patient OWNER TO postgres;

--
-- Name: patient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_id_seq OWNER TO postgres;

--
-- Name: patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE patient_id_seq OWNED BY patient.id;


--
-- Name: patient_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE patient_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_patient bigint NOT NULL
);


ALTER TABLE public.patient_suivi OWNER TO postgres;

--
-- Name: patient_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patient_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patient_suivi_id_seq OWNER TO postgres;

--
-- Name: patient_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE patient_suivi_id_seq OWNED BY patient_suivi.id;


--
-- Name: personne; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE personne (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    adresse text,
    codepostal character varying(255),
    fax character varying(255),
    isadmin boolean,
    login character varying(255),
    mail character varying(255),
    nom character varying(255) NOT NULL,
    password character varying(255),
    prenom character varying(255),
    telephone character varying(255),
    telephoneportable character varying(255),
    ville character varying(255),
    nomsociete character varying(255),
    titre character varying(255),
    datearriveeservice timestamp without time zone,
    datedepartservice timestamp without time zone,
    datevalidationformation timestamp without time zone,
    typepharmacien character varying(255),
    id_promoteur bigint
);


ALTER TABLE public.personne OWNER TO postgres;

--
-- Name: personne_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE personne_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personne_id_seq OWNER TO postgres;

--
-- Name: personne_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE personne_id_seq OWNED BY personne.id;


--
-- Name: personne_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE personne_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_personne bigint NOT NULL
);


ALTER TABLE public.personne_suivi OWNER TO postgres;

--
-- Name: personne_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE personne_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personne_suivi_id_seq OWNER TO postgres;

--
-- Name: personne_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE personne_suivi_id_seq OWNED BY personne_suivi.id;


--
-- Name: pharmacie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pharmacie (
    id bigint NOT NULL,
    version bigint,
    adresse character varying(255),
    adresselivraison character varying(255),
    fax character varying(255),
    nom character varying(255) NOT NULL,
    numordonnancierdisp integer NOT NULL,
    numordonnancierfab integer NOT NULL,
    responsableprincipal character varying(255),
    telephone character varying(255),
    id_etablissement bigint NOT NULL
);


ALTER TABLE public.pharmacie OWNER TO postgres;

--
-- Name: pharmacie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pharmacie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pharmacie_id_seq OWNER TO postgres;

--
-- Name: pharmacie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pharmacie_id_seq OWNED BY pharmacie.id;


--
-- Name: pharmacie_site; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pharmacie_site (
    id_pharmacie bigint NOT NULL,
    id_site bigint NOT NULL
);


ALTER TABLE public.pharmacie_site OWNER TO postgres;

--
-- Name: pharmacie_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pharmacie_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_pharmacie bigint NOT NULL
);


ALTER TABLE public.pharmacie_suivi OWNER TO postgres;

--
-- Name: pharmacie_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pharmacie_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pharmacie_suivi_id_seq OWNER TO postgres;

--
-- Name: pharmacie_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pharmacie_suivi_id_seq OWNED BY pharmacie_suivi.id;


--
-- Name: pharmacien_document_pharmacien; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pharmacien_document_pharmacien (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    id_pharmacien bigint NOT NULL
);


ALTER TABLE public.pharmacien_document_pharmacien OWNER TO postgres;

--
-- Name: pharmacien_document_pharmacien_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pharmacien_document_pharmacien_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pharmacien_document_pharmacien_id_seq OWNER TO postgres;

--
-- Name: pharmacien_document_pharmacien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pharmacien_document_pharmacien_id_seq OWNED BY pharmacien_document_pharmacien.id;


--
-- Name: pharmacien_pharmacie; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pharmacien_pharmacie (
    id_pharmacien bigint NOT NULL,
    id_pharmacie bigint NOT NULL
);


ALTER TABLE public.pharmacien_pharmacie OWNER TO postgres;

--
-- Name: pole; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pole (
    id bigint NOT NULL,
    version bigint,
    nom character varying(255) NOT NULL,
    id_etablissement bigint NOT NULL
);


ALTER TABLE public.pole OWNER TO postgres;

--
-- Name: pole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pole_id_seq OWNER TO postgres;

--
-- Name: pole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pole_id_seq OWNED BY pole.id;


--
-- Name: pole_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pole_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_pole bigint NOT NULL
);


ALTER TABLE public.pole_suivi OWNER TO postgres;

--
-- Name: pole_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pole_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pole_suivi_id_seq OWNER TO postgres;

--
-- Name: pole_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pole_suivi_id_seq OWNED BY pole_suivi.id;


--
-- Name: preparation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE preparation (
    id bigint NOT NULL
);


ALTER TABLE public.preparation OWNER TO postgres;

--
-- Name: prescription; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prescription (
    id bigint NOT NULL,
    version bigint,
    commentaire text,
    datedebuttraitement timestamp without time zone,
    dateprescription timestamp without time zone,
    dispense boolean,
    numprescription integer,
    numvisite character varying(255),
    id_inclusion bigint NOT NULL,
    id_investigateur bigint NOT NULL,
    id_sequence bigint,
    id_service bigint NOT NULL
);


ALTER TABLE public.prescription OWNER TO postgres;

--
-- Name: prescription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prescription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prescription_id_seq OWNER TO postgres;

--
-- Name: prescription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prescription_id_seq OWNED BY prescription.id;


--
-- Name: prescription_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prescription_type (
    id bigint NOT NULL,
    version bigint,
    nb_debut integer,
    unite_debut character varying(255),
    description text,
    dosage numeric(19,2),
    nb_duree integer,
    unite_duree character varying(255),
    nbfrequence integer,
    nbunitetempsfrequence integer,
    typeregularite character varying(255),
    unitefrequence character varying(255),
    nbunitedosage numeric(19,2),
    id_conditionnement bigint,
    id_produit bigint,
    id_sequence bigint
);


ALTER TABLE public.prescription_type OWNER TO postgres;

--
-- Name: prescription_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prescription_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prescription_type_id_seq OWNER TO postgres;

--
-- Name: prescription_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prescription_type_id_seq OWNED BY prescription_type.id;


--
-- Name: prevision_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prevision_sigrec (
    id bigint NOT NULL,
    version bigint,
    datedebut timestamp without time zone,
    datefin timestamp without time zone,
    dureetotale integer,
    nbcentres integer,
    id_essai bigint
);


ALTER TABLE public.prevision_sigrec OWNER TO postgres;

--
-- Name: prevision_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE prevision_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prevision_sigrec_id_seq OWNER TO postgres;

--
-- Name: prevision_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE prevision_sigrec_id_seq OWNED BY prevision_sigrec.id;


--
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit (
    id bigint NOT NULL,
    version bigint,
    alerteactive boolean NOT NULL,
    classetherapeutique character varying(255),
    code character varying(255),
    conseils text,
    denomination character varying(255) NOT NULL,
    imputationuf boolean,
    type character varying(255),
    id_detailproduit bigint NOT NULL
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- Name: produit_detail_logistique; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_detail_logistique (
    id bigint NOT NULL,
    version bigint,
    abrilumiere boolean,
    comptabiliteretour boolean,
    conditionconservation character varying(255),
    delaialerteavtdateexpiration integer,
    miseadispo boolean,
    produitnonfourni boolean,
    quantiteautorise integer,
    stockseuil integer,
    id_produit bigint
);


ALTER TABLE public.produit_detail_logistique OWNER TO postgres;

--
-- Name: produit_detail_logistique_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produit_detail_logistique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_detail_logistique_id_seq OWNER TO postgres;

--
-- Name: produit_detail_logistique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produit_detail_logistique_id_seq OWNED BY produit_detail_logistique.id;


--
-- Name: produit_detail_stockage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_detail_stockage (
    id bigint NOT NULL,
    version bigint,
    identifiantstockage character varying(255),
    type character varying(255),
    id_detail_logistique bigint,
    id_pharmacie bigint,
    id_stockage bigint
);


ALTER TABLE public.produit_detail_stockage OWNER TO postgres;

--
-- Name: produit_detail_stockage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produit_detail_stockage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_detail_stockage_id_seq OWNER TO postgres;

--
-- Name: produit_detail_stockage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produit_detail_stockage_id_seq OWNED BY produit_detail_stockage.id;


--
-- Name: produit_document_actes_pharma; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_document_actes_pharma (
    type character varying(31) NOT NULL,
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    nomdisque character varying(255),
    nomuser character varying(255),
    id_produit bigint NOT NULL
);


ALTER TABLE public.produit_document_actes_pharma OWNER TO postgres;

--
-- Name: produit_document_actes_pharma_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produit_document_actes_pharma_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_document_actes_pharma_id_seq OWNER TO postgres;

--
-- Name: produit_document_actes_pharma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produit_document_actes_pharma_id_seq OWNED BY produit_document_actes_pharma.id;


--
-- Name: produit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_id_seq OWNER TO postgres;

--
-- Name: produit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produit_id_seq OWNED BY produit.id;


--
-- Name: produit_prescrit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_prescrit (
    id bigint NOT NULL,
    version bigint,
    adispenser boolean,
    nb_debut integer,
    unite_debut character varying(255),
    description text,
    dispense boolean,
    dosage numeric(19,2),
    nb_duree integer,
    unite_duree character varying(255),
    nbfrequence integer,
    nbunitetempsfrequence integer,
    typeregularite character varying(255),
    unitefrequence character varying(255),
    nbunitedosage numeric(19,2),
    numtraitement character varying(255),
    id_conditionnement bigint NOT NULL,
    id_prescription bigint NOT NULL,
    id_produit bigint NOT NULL
);


ALTER TABLE public.produit_prescrit OWNER TO postgres;

--
-- Name: produit_prescrit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produit_prescrit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_prescrit_id_seq OWNER TO postgres;

--
-- Name: produit_prescrit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produit_prescrit_id_seq OWNED BY produit_prescrit.id;


--
-- Name: produit_service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_service (
    id_produit bigint NOT NULL,
    id_service bigint NOT NULL
);


ALTER TABLE public.produit_service OWNER TO postgres;

--
-- Name: produit_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_produit bigint NOT NULL
);


ALTER TABLE public.produit_suivi OWNER TO postgres;

--
-- Name: produit_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE produit_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_suivi_id_seq OWNER TO postgres;

--
-- Name: produit_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE produit_suivi_id_seq OWNED BY produit_suivi.id;


--
-- Name: produit_therapeutique; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE produit_therapeutique (
    conditionnement boolean,
    etiquetage boolean,
    fabrication boolean,
    mds boolean,
    nature character varying(255),
    reconstitutionpsm boolean,
    reconstitutionsimple boolean,
    stupefiant boolean,
    typeproduittherapeutique character varying(255),
    id bigint NOT NULL
);


ALTER TABLE public.produit_therapeutique OWNER TO postgres;

--
-- Name: promoteur; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE promoteur (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    raisonsociale character varying(255) NOT NULL,
    type character varying(255) NOT NULL
);


ALTER TABLE public.promoteur OWNER TO postgres;

--
-- Name: promoteur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE promoteur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promoteur_id_seq OWNER TO postgres;

--
-- Name: promoteur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE promoteur_id_seq OWNED BY promoteur.id;


--
-- Name: promoteur_sigrec; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE promoteur_sigrec (
    id bigint NOT NULL,
    version bigint,
    identifiant character varying(255),
    type character varying(255),
    id_contact bigint
);


ALTER TABLE public.promoteur_sigrec OWNER TO postgres;

--
-- Name: promoteur_sigrec_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE promoteur_sigrec_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promoteur_sigrec_id_seq OWNER TO postgres;

--
-- Name: promoteur_sigrec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE promoteur_sigrec_id_seq OWNED BY promoteur_sigrec.id;


--
-- Name: promoteur_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE promoteur_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_promoteur bigint NOT NULL
);


ALTER TABLE public.promoteur_suivi OWNER TO postgres;

--
-- Name: promoteur_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE promoteur_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promoteur_suivi_id_seq OWNER TO postgres;

--
-- Name: promoteur_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE promoteur_suivi_id_seq OWNED BY promoteur_suivi.id;


--
-- Name: regle_surcout; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE regle_surcout (
    id bigint NOT NULL,
    version bigint,
    anneessuivantes numeric(19,2),
    max integer,
    min integer,
    mode character varying(255),
    montant numeric(19,2),
    perimetre character varying(255),
    premiereannee numeric(19,2),
    type character varying(255),
    id_categorie bigint,
    id_theme bigint
);


ALTER TABLE public.regle_surcout OWNER TO postgres;

--
-- Name: regle_surcout_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE regle_surcout_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regle_surcout_id_seq OWNER TO postgres;

--
-- Name: regle_surcout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE regle_surcout_id_seq OWNED BY regle_surcout.id;


--
-- Name: reprise_passif; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE reprise_passif (
    id bigint NOT NULL,
    version bigint,
    numero_ordonnancier character varying(255) NOT NULL,
    date_dispensation timestamp with time zone,
    initiales_patient character varying(255),
    essai_promoteur character varying(255),
    numlot_traitement character varying(255),
    produits character varying(255),
    dispense_par character varying(255)
);


ALTER TABLE public.reprise_passif OWNER TO postgres;

--
-- Name: retour_patient; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE retour_patient (
    id bigint NOT NULL,
    version bigint,
    commentaire text,
    commentaireentame text,
    commentaireetat text,
    date timestamp without time zone,
    dateetat timestamp without time zone,
    etat character varying(255),
    numlot character varying(255),
    numordonnancier integer,
    numtraitement character varying(255),
    quantite integer,
    type character varying(255),
    id_conditionnement bigint NOT NULL,
    id_detailstockage bigint NOT NULL,
    id_essai bigint NOT NULL,
    id_patient bigint,
    id_personne bigint NOT NULL,
    id_produit bigint NOT NULL
);


ALTER TABLE public.retour_patient OWNER TO postgres;

--
-- Name: retour_patient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE retour_patient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.retour_patient_id_seq OWNER TO postgres;

--
-- Name: retour_patient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE retour_patient_id_seq OWNED BY retour_patient.id;


--
-- Name: sequence; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sequence (
    id bigint NOT NULL,
    version bigint,
    nb_debut integer,
    unite_debut character varying(255),
    description text,
    nb_fin integer,
    unite_fin character varying(255),
    nb_duree integer,
    nom character varying(255),
    type character varying(255),
    unite_duree character varying(255),
    id_bras_sequence bigint
);


ALTER TABLE public.sequence OWNER TO postgres;

--
-- Name: sequence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sequence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sequence_id_seq OWNER TO postgres;

--
-- Name: sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sequence_id_seq OWNED BY sequence.id;


--
-- Name: service; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE service (
    id bigint NOT NULL,
    version bigint,
    nom character varying(255) NOT NULL,
    id_pole bigint,
    id_site bigint
);


ALTER TABLE public.service OWNER TO postgres;

--
-- Name: service_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_id_seq OWNER TO postgres;

--
-- Name: service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE service_id_seq OWNED BY service.id;


--
-- Name: service_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE service_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_service bigint
);


ALTER TABLE public.service_suivi OWNER TO postgres;

--
-- Name: service_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE service_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_suivi_id_seq OWNER TO postgres;

--
-- Name: service_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE service_suivi_id_seq OWNED BY service_suivi.id;


--
-- Name: site; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site (
    id bigint NOT NULL,
    version bigint,
    adresse text,
    code character varying(255) NOT NULL,
    codepostal character varying(255),
    nom character varying(255) NOT NULL,
    ville character varying(255),
    id_etablissement bigint NOT NULL
);


ALTER TABLE public.site OWNER TO postgres;

--
-- Name: site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_id_seq OWNER TO postgres;

--
-- Name: site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_id_seq OWNED BY site.id;


--
-- Name: site_suivi; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_suivi (
    id bigint NOT NULL,
    version bigint,
    datemaj timestamp without time zone NOT NULL,
    majpar character varying(255) NOT NULL,
    id_site bigint
);


ALTER TABLE public.site_suivi OWNER TO postgres;

--
-- Name: site_suivi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_suivi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_suivi_id_seq OWNER TO postgres;

--
-- Name: site_suivi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_suivi_id_seq OWNED BY site_suivi.id;


--
-- Name: stockage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE stockage (
    id bigint NOT NULL,
    version bigint,
    conservation character varying(255),
    identifiantenregistreurtemp character varying(255),
    identifiantsondetemp character varying(255),
    identifiantstockage character varying(255),
    nom character varying(255) NOT NULL,
    id_stockage_parent bigint,
    id_pharmacie bigint NOT NULL
);


ALTER TABLE public.stockage OWNER TO postgres;

--
-- Name: stockage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE stockage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stockage_id_seq OWNER TO postgres;

--
-- Name: stockage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE stockage_id_seq OWNED BY stockage.id;


--
-- Name: theme; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE theme (
    id bigint NOT NULL,
    version bigint,
    libelle character varying(255),
    id_grille_modele bigint NOT NULL
);


ALTER TABLE public.theme OWNER TO postgres;

--
-- Name: theme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE theme_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_id_seq OWNER TO postgres;

--
-- Name: theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE theme_id_seq OWNED BY theme.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_investigateur_sigrec ALTER COLUMN id SET DEFAULT nextval('arc_investigateur_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_promoteur_sigrec ALTER COLUMN id SET DEFAULT nextval('arc_promoteur_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY assurance_sigrec ALTER COLUMN id SET DEFAULT nextval('assurance_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bras ALTER COLUMN id SET DEFAULT nextval('bras_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categorie ALTER COLUMN id SET DEFAULT nextval('categorie_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY centre_sigrec ALTER COLUMN id SET DEFAULT nextval('centre_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_investigateur_sigrec ALTER COLUMN id SET DEFAULT nextval('co_investigateur_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conditionnement ALTER COLUMN id SET DEFAULT nextval('conditionnement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contact_sigrec ALTER COLUMN id SET DEFAULT nextval('contact_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cro_sigrec ALTER COLUMN id SET DEFAULT nextval('cro_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dispensation ALTER COLUMN id SET DEFAULT nextval('dispensation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY donnees_prevision ALTER COLUMN id SET DEFAULT nextval('donnees_prevision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation ALTER COLUMN id SET DEFAULT nextval('dotation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY element_to_check ALTER COLUMN id SET DEFAULT nextval('element_to_check_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai ALTER COLUMN id SET DEFAULT nextval('essai_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_commentaire_detail_administratif_archi ALTER COLUMN id SET DEFAULT nextval('essai_commentaire_detail_administratif_archi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_commentaire_detail_faisabilite ALTER COLUMN id SET DEFAULT nextval('essai_commentaire_detail_faisabilite_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_commentaire_detail_recherche ALTER COLUMN id SET DEFAULT nextval('essai_commentaire_detail_recherche_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_administratif ALTER COLUMN id SET DEFAULT nextval('essai_detail_administratif_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_administratif_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_administratif_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_autres_documents ALTER COLUMN id SET DEFAULT nextval('essai_detail_autres_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_autres_documents_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_autres_documents_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_contacts ALTER COLUMN id SET DEFAULT nextval('essai_detail_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_contacts_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_contacts_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_dates ALTER COLUMN id SET DEFAULT nextval('essai_detail_dates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_dates_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_dates_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_design ALTER COLUMN id SET DEFAULT nextval('essai_detail_design_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_design_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_design_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_etat ALTER COLUMN id SET DEFAULT nextval('essai_detail_etat_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_faisabilite ALTER COLUMN id SET DEFAULT nextval('essai_detail_faisabilite_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_faisabilite_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_faisabilite_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma ALTER COLUMN id SET DEFAULT nextval('essai_detail_pharma_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_pharma_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_produit ALTER COLUMN id SET DEFAULT nextval('essai_detail_produit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_produit_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_produit_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_recherche ALTER COLUMN id SET DEFAULT nextval('essai_detail_recherche_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_recherche_sigrec ALTER COLUMN id SET DEFAULT nextval('essai_detail_recherche_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_recherche_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_recherche_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_surcout ALTER COLUMN id SET DEFAULT nextval('essai_detail_surcout_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_surcout_suivi ALTER COLUMN id SET DEFAULT nextval('essai_detail_surcout_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_administratif ALTER COLUMN id SET DEFAULT nextval('essai_document_detail_administratif_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_autres_documents ALTER COLUMN id SET DEFAULT nextval('essai_document_detail_autres_documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_pharma ALTER COLUMN id SET DEFAULT nextval('essai_document_detail_pharma_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_surcout ALTER COLUMN id SET DEFAULT nextval('essai_document_detail_surcout_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_sigrec ALTER COLUMN id SET DEFAULT nextval('essai_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_suivi ALTER COLUMN id SET DEFAULT nextval('essai_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY etablissement ALTER COLUMN id SET DEFAULT nextval('etablissement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY etablissement_suivi ALTER COLUMN id SET DEFAULT nextval('etablissement_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evenement ALTER COLUMN id SET DEFAULT nextval('evenement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evenement_suivi ALTER COLUMN id SET DEFAULT nextval('evenement_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grille ALTER COLUMN id SET DEFAULT nextval('grille_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grille_modele ALTER COLUMN id SET DEFAULT nextval('grille_modele_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY habilitation ALTER COLUMN id SET DEFAULT nextval('habilitation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historique_patient ALTER COLUMN id SET DEFAULT nextval('historique_patient_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident ALTER COLUMN id SET DEFAULT nextval('incident_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_suivi ALTER COLUMN id SET DEFAULT nextval('incident_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inclusion ALTER COLUMN id SET DEFAULT nextval('inclusion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY investigateur_sigrec ALTER COLUMN id SET DEFAULT nextval('investigateur_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item ALTER COLUMN id SET DEFAULT nextval('item_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lignestock ALTER COLUMN id SET DEFAULT nextval('lignestock_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock ALTER COLUMN id SET DEFAULT nextval('mvtstock_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock_document ALTER COLUMN id SET DEFAULT nextval('mvtstock_document_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordonnancier_dispensation ALTER COLUMN id SET DEFAULT nextval('ordonnancier_dispensation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordonnancier_fab_reconst ALTER COLUMN id SET DEFAULT nextval('ordonnancier_fab_reconst_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patient ALTER COLUMN id SET DEFAULT nextval('patient_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patient_suivi ALTER COLUMN id SET DEFAULT nextval('patient_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personne ALTER COLUMN id SET DEFAULT nextval('personne_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personne_suivi ALTER COLUMN id SET DEFAULT nextval('personne_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacie ALTER COLUMN id SET DEFAULT nextval('pharmacie_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacie_suivi ALTER COLUMN id SET DEFAULT nextval('pharmacie_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacien_document_pharmacien ALTER COLUMN id SET DEFAULT nextval('pharmacien_document_pharmacien_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pole ALTER COLUMN id SET DEFAULT nextval('pole_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pole_suivi ALTER COLUMN id SET DEFAULT nextval('pole_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription ALTER COLUMN id SET DEFAULT nextval('prescription_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription_type ALTER COLUMN id SET DEFAULT nextval('prescription_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prevision_sigrec ALTER COLUMN id SET DEFAULT nextval('prevision_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit ALTER COLUMN id SET DEFAULT nextval('produit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_detail_logistique ALTER COLUMN id SET DEFAULT nextval('produit_detail_logistique_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_detail_stockage ALTER COLUMN id SET DEFAULT nextval('produit_detail_stockage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_document_actes_pharma ALTER COLUMN id SET DEFAULT nextval('produit_document_actes_pharma_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_prescrit ALTER COLUMN id SET DEFAULT nextval('produit_prescrit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_suivi ALTER COLUMN id SET DEFAULT nextval('produit_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promoteur ALTER COLUMN id SET DEFAULT nextval('promoteur_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promoteur_sigrec ALTER COLUMN id SET DEFAULT nextval('promoteur_sigrec_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promoteur_suivi ALTER COLUMN id SET DEFAULT nextval('promoteur_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regle_surcout ALTER COLUMN id SET DEFAULT nextval('regle_surcout_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient ALTER COLUMN id SET DEFAULT nextval('retour_patient_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sequence ALTER COLUMN id SET DEFAULT nextval('sequence_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service ALTER COLUMN id SET DEFAULT nextval('service_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service_suivi ALTER COLUMN id SET DEFAULT nextval('service_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site ALTER COLUMN id SET DEFAULT nextval('site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_suivi ALTER COLUMN id SET DEFAULT nextval('site_suivi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stockage ALTER COLUMN id SET DEFAULT nextval('stockage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY theme ALTER COLUMN id SET DEFAULT nextval('theme_id_seq'::regclass);


--
-- Data for Name: acl_essai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY acl_essai (id_personne, id_essai) FROM stdin;
3	1
3	2
\.


--
-- Data for Name: acl_pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY acl_pharmacie (id_pharmacie, id_personne) FROM stdin;
2	3
3	3
4	3
5	3
1	3
\.


--
-- Data for Name: arc_investigateur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY arc_investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre, id_essai) FROM stdin;
1	\N	104	10	numero adeli investigateur ARC	titre ARC	4	1	1
\.


--
-- Name: arc_investigateur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('arc_investigateur_sigrec_id_seq', 100000, false);


--
-- Data for Name: arc_promoteur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY arc_promoteur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_promoteur) FROM stdin;
1	\N	idArcPromoteur	2	numadeli	titre	2	1
\.


--
-- Name: arc_promoteur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('arc_promoteur_sigrec_id_seq', 100000, false);


--
-- Data for Name: arcinvestigateur_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY arcinvestigateur_service (id_arcinvestigateur, id_service) FROM stdin;
\.


--
-- Data for Name: assurance_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY assurance_sigrec (id, version, datedebutvalidite, datefinvalidite, numerocontrat, id_contact, id_essai) FROM stdin;
1	\N	2010-02-02 00:00:00	2010-03-02 00:00:00	numero contrat assurance	8	1
2	\N	2010-02-02 00:00:00	2010-03-02 00:00:00	numero contrat assurance2 2	9	1
\.


--
-- Name: assurance_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assurance_sigrec_id_seq', 100000, false);


--
-- Data for Name: bras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY bras (id, version, description, nom, type, id_detail_design, id_bras_parent) FROM stdin;
1	\N	\N	bras n°1	BRAS	1	\N
3	\N	\N	Sous-bras 1-1	BRAS	1	1
4	\N	\N	Sous-bras 1-2	BRAS	1	1
\.


--
-- Name: bras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bras_id_seq', 100000, false);


--
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY categorie (id, version, acte, libelle, id_theme) FROM stdin;
1	\N	AUCUN	Forfait pharmaceutique (7)	1
2	\N	DISPENSATION	Forfait dispensation nominative (8) par ordonnance : Nouvelle	1
3	\N	AUCUN	Forfait dispensation nominative (8) par ordonnance : Renouvellement ou fractionnée	1
4	\N	DESTRUCTION	Destruction (9)	2
5	\N	RECONSTITUTION	Reconstitution (10)	2
6	\N	AUCUN	Conditions particulières de conservation (11)	2
7	\N	REETIQUETAGE	Ré-étiquetage (12)	2
8	\N	AUCUN	Visite supplémentaire de suivi (de monitoring) (13)	2
9	\N	AUCUN	Réception / Livraison de produits supplémentaires (14) Actes IVRS ou @VRS (14 bis)	2
10	\N	AUCUN	Traçabilité spécifique (15) : MDS et DMI	2
11	\N	PRESCRIPTION	Attribution d’un traitement au patient (appel d’un serveur vocal – IVRS) 	2
12	\N	AUCUN	Audits (16)	2
13	\N	AUCUN	Autres (17)	2
\.


--
-- Name: categorie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorie_id_seq', 100000, false);


--
-- Data for Name: centre_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY centre_sigrec (id, version, idcentre, nom, numero, numerofiness, id_contact) FROM stdin;
1	\N	\N	nom centre	nombre 1	numero finess	3
\.


--
-- Name: centre_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('centre_sigrec_id_seq', 100000, false);


--
-- Data for Name: co_investigateur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY co_investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre, id_essai) FROM stdin;
1	\N	103	12	numero adeli investigateur ASSO	titre ASSO	5	1	1
2	\N	102	11	numero adeli investigateur co	titre co	6	1	1
\.


--
-- Name: co_investigateur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_investigateur_sigrec_id_seq', 100000, false);


--
-- Data for Name: conditionnement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY conditionnement (id, version, contenance, dosage, forme, libelle, modeprescription, nbuniteprescription, quantiteparpatient, unitecontenance, unitedosage, unitegestion, uniteprescription, voieadministration, id_produit) FROM stdin;
1	\N	\N	\N	\N	conditionnement num traitement	NUM_TRAITEMENT	2.00	\N	\N	MILLIGRAMME	\N	\N	\N	1
2	\N	\N	\N	\N	conditionnement dose	DOSE	2.00	\N	\N	MILLILITRE	\N	\N	\N	1
\.


--
-- Name: conditionnement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('conditionnement_id_seq', 100000, false);


--
-- Data for Name: contact_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) FROM stdin;
1	\N	adresse	\N	code postal	email	fax	\N	\N	Promoteur 1 (Sigrec)	telephone	ville
2	\N	\N	MR	\N	\N	\N	nom : Arc promoteur	prenom	\N	\N	\N
3	\N	Adresse centre 1 	\N	44000	mail centre 1	fax 	\N	\N	organisation	telephone	Nantes
4	\N	\N	MR	\N	\N	\N	nom investigateur ARC	prenom investigateur ARC	\N	\N	\N
5	\N	\N	MME	\N	\N	\N	nom investigateur ASSO	prenom investigateur ASSO	\N	\N	\N
6	\N	\N	MLLE	\N	\N	\N	nom investigateur co	prenom investigateur co	\N	\N	\N
7	\N	\N	MLLE	\N	\N	\N	nom investigateur principal	prenom investigateur principal	\N	\N	\N
8	\N	adresse assurance	\N	44100	\N	\N	\N	\N	nom assurance	\N	Nantes
9	\N	adresse assurance 2	\N	44100	\N	\N	\N	\N	nom assurance 2	\N	Nantes
10	\N	Adresse 1 cro	\N	44100	\N	\N	Nom cro 1	\N	Nom cro 1	\N	Nantes
11	\N	Adresse 2 cro	\N	44100	\N	\N	Nom cro 2	\N	Nom cro 2	\N	Nantes
\.


--
-- Name: contact_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contact_sigrec_id_seq', 100000, false);


--
-- Data for Name: cro_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cro_sigrec (id, version, identifiant, id_contact, id_essai) FROM stdin;
1	\N	1	10	1
2	\N	2	11	1
\.


--
-- Name: cro_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cro_sigrec_id_seq', 100000, false);


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) FROM stdin;
create_database_1.31	SGL	classpath:liquibase/db-changelog.xml	2015-01-09 15:34:33.117+01	1	EXECUTED	7:44139d93dbde33df0557d64ab16a9ab6	The 'sqlFile' tag allows you to specify any sql statements and have it stored external in a file. It is useful for complex changes that are not supported through LiquiBase's automated refactoring tags such as stored procedures.\n\nThe sqlFile refact...	A sample change log	\N	3.0.0-SNP
create_table_reprise_passif	SGL	classpath:liquibase/db-changelog.xml	2015-01-09 15:34:33.556+01	2	EXECUTED	7:b4c47d489fcc63f729de1c16f4e2796c	Create Table, Adds a not-null constraint to an existing table. If a defaultNullValue attribute is passed, all null values for the column will be updated to the passed value before the constraint is applied.	Creation de la table reprise_passif	\N	3.0.0-SNP
upgrade_1.30_vers_1.31	SGL	classpath:liquibase/db-changelog.xml	2015-01-12 17:44:55.112+01	3	MARK_RAN	7:47e853315595994f805062a20b4b2bd7	The 'sqlFile' tag allows you to specify any sql statements and have it stored external in a file. It is useful for complex changes that are not supported through LiquiBase's automated refactoring tags such as stored procedures.\n\nThe sqlFile refact...	A sample change log	\N	3.0.0-SNP
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- Data for Name: dispensation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dispensation (id, version, commentaire, datedispensation, dispense, numordonnancier, id_ordonnancier, id_pharmacie, id_prescription) FROM stdin;
1	0	\N	\N	f	1	1	1	1
\.


--
-- Name: dispensation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dispensation_id_seq', 100000, false);


--
-- Data for Name: dispositif_medical; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dispositif_medical (classe, codelogiciel, codelppr, fournisseur, marquagece, modele, nature, nomenclature, numeromarche, randomisation, statutlpp, id) FROM stdin;
\.


--
-- Data for Name: donnees_prevision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY donnees_prevision (id, version, nbannees, nbapprovisionnements, nbaudits, nbdestructions, nbdispensations, nbdispensationsrenouvellement, nbinclusions, nbpreparationsnonsteriles, nbpreparationssteriles, nbprescriptions, nbreetiquetages, nbvisitemonitoring, id_detail_surcout) FROM stdin;
1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
2	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
\.


--
-- Name: donnees_prevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('donnees_prevision_id_seq', 100000, false);


--
-- Data for Name: dotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dotation (id, version, commentaire, datedemande, quantite, traitee, id_conditionnement, id_essai, id_personne, id_pharmacie, id_produit, id_service) FROM stdin;
1	\N	\N	2011-01-01 00:00:00	2	f	1	1	1	1	1	1
\.


--
-- Name: dotation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dotation_id_seq', 100000, false);


--
-- Data for Name: element_to_check; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY element_to_check (id, version, checked, commentaire, datechecked, nomchamps, numordonnancier, type, id_personne, id_dispensation, id_ordonnancier, id_produitprescrit) FROM stdin;
\.


--
-- Name: element_to_check_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('element_to_check_id_seq', 100000, false);


--
-- Data for Name: essai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai (id, version, alerteactive, anneecreation, codepromoteur, conv_date, dci, emplacementdossier, etat, libelleproduitevalue, nom, numinterne, typepromoteur, id_pharma, id_promoteur) FROM stdin;
1	0	t	2010	P01-C	\N	n/a	Armoire du fond	EN_EVALUATION	n/a	Essai 1	2010-01	ACADEMIQUE	1	1
2	0	t	2010	P01-C	\N	n/a	Meuble de devant	EN_COURS	n/a	Essai 2	2010-02	ACADEMIQUE	2	10
\.


--
-- Data for Name: essai_commentaire_detail_administratif_archi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_commentaire_detail_administratif_archi (id, version, datemaj, majpar, libelle, id_detailadministratif) FROM stdin;
1	0	2010-11-01 00:00:00	SRM	Commentaire archivage n°1.	1
\.


--
-- Name: essai_commentaire_detail_administratif_archi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_commentaire_detail_administratif_archi_id_seq', 100000, false);


--
-- Data for Name: essai_commentaire_detail_faisabilite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) FROM stdin;
FAISABILITE_CONCL	1	0	2010-11-15 00:00:00	SRM	Mon premier commentaire sur la conclusion.	1
FAISABILITE_CONCL	2	0	2010-11-16 00:00:00	SRM	Mon deuxieme commentaire sur la conclusion.	1
FAISABILITE_CONCL	3	0	2010-11-10 00:00:00	SRM	Mon premier commentaire sur la conclusion.	2
FAISABILITE_ACHAT_PROD	4	0	2010-11-10 00:00:00	SRM	Mon premier commentaire sur les achats produits.	1
FAISABILITE_DISTRIB_PHARMA	5	0	2010-11-10 00:00:00	SRM	Mon premier commentaire sur les distributions aux autres pharmacies.	1
FAISABILITE_ETUDE	6	0	2010-11-10 00:00:00	SRM	Mon premier commentaire global sur l étude de faisabilité.	1
\.


--
-- Name: essai_commentaire_detail_faisabilite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_commentaire_detail_faisabilite_id_seq', 100000, false);


--
-- Data for Name: essai_commentaire_detail_recherche; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_commentaire_detail_recherche (id, version, datemaj, majpar, libelle, id_detailrecherche) FROM stdin;
1	0	2010-10-01 00:00:00	SRM	Commentaire n°1.	1
2	0	2010-11-01 00:00:00	SRM	Commentaire n°2.	1
3	0	2010-01-01 00:00:00	SRM	Commentaire création.	2
\.


--
-- Name: essai_commentaire_detail_recherche_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_commentaire_detail_recherche_id_seq', 100000, false);


--
-- Data for Name: essai_detail_administratif; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_administratif (id, version, ac_accord, ac_date, ac_docsdosspapier, ac_nom, ac_numident, ac_type, arc_date, arc_duree, arc_ident, arc_lieu, assur_code_postal, assur_date_debut_validite, assur_date_fin_validite, assur_docsdosspapier, assur_nom_compagnie, assur_numero_avenant, assur_numero_contrat, assur_ville, autorisationdistribution_docsdosspapier, autorisationimportation_docsdosspapier, bropro_docsdosspapier, cpp_accord, cpp_date, cpp_docsdosspapier, cpp_nom, conv_signee, conv_docsdosspapier, proto_docsdosspapier, id_essai) FROM stdin;
1	0	\N	\N	t		\N	\N	\N	\N		\N	\N	\N	\N	f	\N	\N		\N	f	f	f	\N	\N	f		f	f	t	1
2	0	\N	\N	f		\N	\N	\N	\N		\N	\N	\N	\N	t	\N	\N		\N	f	f	t	\N	\N	t		t	f	f	2
\.


--
-- Name: essai_detail_administratif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_administratif_id_seq', 100000, false);


--
-- Data for Name: essai_detail_administratif_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_administratif_suivi (id, version, datemaj, majpar, id_detail_administratif) FROM stdin;
\.


--
-- Name: essai_detail_administratif_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_administratif_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_autres_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_autres_documents (id, version, id_essai) FROM stdin;
1	0	1
2	0	2
\.


--
-- Name: essai_detail_autres_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_autres_documents_id_seq', 100000, false);


--
-- Data for Name: essai_detail_autres_documents_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_autres_documents_suivi (id, version, datemaj, majpar, id_detail_autres_documents) FROM stdin;
\.


--
-- Name: essai_detail_autres_documents_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_autres_documents_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_contacts (id, version, id_essai) FROM stdin;
1	0	1
2	0	2
\.


--
-- Name: essai_detail_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_contacts_id_seq', 100000, false);


--
-- Data for Name: essai_detail_contacts_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_contacts_suivi (id, version, datemaj, majpar, id_detail_contacts) FROM stdin;
\.


--
-- Name: essai_detail_contacts_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_contacts_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_dates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_dates (id, version, activation, activationprev, cloture, debutetude, debutetudeprev, debutinclusion, debutinclusionprev, findispensations, finetude, finetudeprev, fininclusion, fininclusionprev, precloture, datereception, id_essai) FROM stdin;
1	0	\N	\N	\N	\N	2010-01-01 00:00:00	\N	\N	\N	\N	2011-01-31 00:00:00	\N	\N	\N	\N	1
2	0	\N	\N	\N	\N	2010-11-01 00:00:00	\N	\N	\N	\N	2011-06-30 00:00:00	\N	\N	\N	\N	2
\.


--
-- Name: essai_detail_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_dates_id_seq', 100000, false);


--
-- Data for Name: essai_detail_dates_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_dates_suivi (id, version, datemaj, majpar, id_detail_dates) FROM stdin;
\.


--
-- Name: essai_detail_dates_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_dates_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_design; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_design (id, version, typedesign, id_essai) FROM stdin;
1	0	\N	1
2	0	\N	2
\.


--
-- Name: essai_detail_design_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_design_id_seq', 100000, false);


--
-- Data for Name: essai_detail_design_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_design_suivi (id, version, datemaj, majpar, id_detail_design) FROM stdin;
\.


--
-- Name: essai_detail_design_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_design_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_etat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_etat (id, version, datemaj, majpar, commentaire, etat, id_essai) FROM stdin;
\.


--
-- Name: essai_detail_etat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_etat_id_seq', 100000, false);


--
-- Data for Name: essai_detail_faisabilite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_faisabilite (id, version, concl_convsignee, concl_date, concl_favorable, etude_accordpharmacentrale, etude_achatspui, etude_circuitdef, etude_conditionnement, etude_dmdimportation, etude_disppossible, etude_distribautrespharmas, etude_donneesstabilite, etude_etiquetages, etude_gestionaveugle, etude_preparations, etude_prestapharma, etude_randompharma, etude_randomengarde, etude_reconstitutions, etude_referencement, etude_soctranspdef, etude_suivistocks, etude_suivitemp, id_essai) FROM stdin;
1	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
2	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
\.


--
-- Name: essai_detail_faisabilite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_faisabilite_id_seq', 100000, false);


--
-- Data for Name: essai_detail_faisabilite_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_faisabilite_service (id_essai, id_service) FROM stdin;
\.


--
-- Data for Name: essai_detail_faisabilite_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_faisabilite_suivi (id, version, datemaj, majpar, id_detail_faisabilite) FROM stdin;
\.


--
-- Name: essai_detail_faisabilite_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_faisabilite_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_pharma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_pharma (id, version, formationspecifique, envoistraitement, gestionretour, modalitedestruction, modalitereception, responsabilitecommande, responsabiliteinsu, responsabiliterandomisation, typeretour, aidedispensation, conseilpatient, contreetiquette, destinataireinvestigateur, destinatairepatient, destinataireservice, informationconditionnement, numerotationconditionnement, tracabilitepatient, typedispensation, dureetotalepatientprevue, dureetotaleprevue, nbcentresprevus, nbpatientsprevus, nbpatientsprevustotal, numerocentre, qualiteinsu, typeproduitevalue, unitedureetotalepatientprevue, unitedureetotaleprevue, id_essai) FROM stdin;
1	0	\N	\N	\N	\N	aucune	\N	\N	\N	\N	\N	aucun	\N	\N	\N	\N	\N	\N	\N	NOMINATIVE	\N	1.00	\N	\N	\N	\N	\N	\N	\N	\N	1
2	0	\N	\N	\N	\N	aucune	\N	\N	\N	\N	\N	aucun	\N	\N	\N	\N	\N	\N	\N	GLOBALE	\N	1.00	\N	\N	\N	\N	\N	\N	\N	\N	2
\.


--
-- Data for Name: essai_detail_pharma_etablissement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_pharma_etablissement (id_detail_pharma, id_etablissement) FROM stdin;
\.


--
-- Name: essai_detail_pharma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_pharma_id_seq', 100000, false);


--
-- Data for Name: essai_detail_pharma_pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_pharma_pharmacie (id_detail_pharma, id_pharmacie) FROM stdin;
1	2
2	3
\.


--
-- Data for Name: essai_detail_pharma_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_pharma_suivi (id, version, datemaj, majpar, id_detail_pharma) FROM stdin;
\.


--
-- Name: essai_detail_pharma_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_pharma_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_produit (id, version, id_essai) FROM stdin;
1	0	1
2	0	2
\.


--
-- Name: essai_detail_produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_produit_id_seq', 100000, false);


--
-- Data for Name: essai_detail_produit_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_produit_suivi (id, version, datemaj, majpar, id_detail_produit) FROM stdin;
\.


--
-- Name: essai_detail_produit_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_produit_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_recherche; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_recherche (id, version, motscles, naturerecherche, numenregistrement, objetrecherche, phaserecherche, thematique, titreprotocole, typerecherche, id_essai) FROM stdin;
1	0	motClé1, motClé2, motClé3	PHARMACOLOGIE	SIGREC-001	IMAGERIE	I	UROLOGIE	Mon premier protocole.	OBSERVATIONNELLE	1
2	0	motClé2	PHARMACOLOGIE	SIGREC-001	IMAGERIE	III	UROLOGIE	Mon deuxième protocole.	OBSERVATIONNELLE	2
\.


--
-- Name: essai_detail_recherche_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_recherche_id_seq', 100000, false);


--
-- Data for Name: essai_detail_recherche_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_recherche_sigrec (id, version, naturerecherche, numenregistrement, objetrecherche, phaserecherche, qualiteinsu, titreprotocole, typerecherche, id_essai) FROM stdin;
1	\N	DEPISTAGE	num_sigrec	IMAGERIE	IIa	ESSAI_DOUBLE_AVEUGLE	Titre complet	OBSERVATIONNELLE	1
\.


--
-- Name: essai_detail_recherche_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_recherche_sigrec_id_seq', 100000, false);


--
-- Data for Name: essai_detail_recherche_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_recherche_suivi (id, version, datemaj, majpar, id_detail_recherche) FROM stdin;
\.


--
-- Name: essai_detail_recherche_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_recherche_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_surcout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_surcout (id, version, id_essai) FROM stdin;
1	0	1
2	0	2
\.


--
-- Name: essai_detail_surcout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_surcout_id_seq', 100000, false);


--
-- Data for Name: essai_detail_surcout_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_detail_surcout_suivi (id, version, datemaj, majpar, id_detail_surcout) FROM stdin;
\.


--
-- Name: essai_detail_surcout_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_surcout_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_administratif; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_document_detail_administratif (type, id, version, datemaj, majpar, nomdisque, nomuser, commentaire, typedocumentprotocole, version_doc, typedocumentbrochure, id_detailadministratif) FROM stdin;
\.


--
-- Name: essai_document_detail_administratif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_administratif_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_autres_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_document_detail_autres_documents (id, version, datemaj, majpar, nomdisque, nomuser, commentaire, type, id_detail_autres_documents) FROM stdin;
\.


--
-- Name: essai_document_detail_autres_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_autres_documents_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_pharma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_document_detail_pharma (type, id, version, datemaj, majpar, nomdisque, nomuser, commentaire, id_detail_pharma) FROM stdin;
\.


--
-- Name: essai_document_detail_pharma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_pharma_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_surcout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_document_detail_surcout (type, id, version, datemaj, majpar, nomdisque, nomuser, commentaire, id_detailsurcout) FROM stdin;
\.


--
-- Name: essai_document_detail_surcout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_surcout_id_seq', 100000, false);


--
-- Name: essai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_id_seq', 100000, false);


--
-- Data for Name: essai_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_service (id_essai, id_service) FROM stdin;
1	1
\.


--
-- Data for Name: essai_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_sigrec (id, version, codepromoteur, multicentrique, nbcentres, nom, numidentac, typepromoteur, id_investigateurprincipal, id_promoteur) FROM stdin;
1	\N	num_interne/codePromoteur	\N	10	Titre abrege	EDRACT number	ACADEMIQUE	1	1
\.


--
-- Name: essai_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_sigrec_id_seq', 100000, false);


--
-- Data for Name: essai_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY essai_suivi (id, version, datemaj, majpar, id_essai) FROM stdin;
\.


--
-- Name: essai_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_suivi_id_seq', 100000, false);


--
-- Data for Name: etablissement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY etablissement (id, version, adressedirection, codepostal, fax, mail, nom, pays, telephone, ville) FROM stdin;
1	\N		44000			CHU Nantes	France		Nantes
\.


--
-- Name: etablissement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('etablissement_id_seq', 100004, true);


--
-- Data for Name: etablissement_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY etablissement_suivi (id, version, datemaj, majpar, id_etablissement) FROM stdin;
\.


--
-- Name: etablissement_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('etablissement_suivi_id_seq', 100001, true);


--
-- Data for Name: evenement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY evenement (id, version, arc, commentaire, datedebut, datefin, datereception, destinataire, heuredebut, heurefin, journee, libelle, nombre, personnelpharmacie, realisepar, resultatvisite, typeevenement, typevisite, validation, id_essai, id_personne) FROM stdin;
\.


--
-- Name: evenement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evenement_id_seq', 100000, false);


--
-- Data for Name: evenement_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY evenement_suivi (id, version, datemaj, majpar, id_evenement) FROM stdin;
\.


--
-- Name: evenement_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evenement_suivi_id_seq', 100000, false);


--
-- Data for Name: grille; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grille (id, version, id_detail_surcout, id_grille_modele) FROM stdin;
\.


--
-- Name: grille_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grille_id_seq', 100000, false);


--
-- Data for Name: grille_modele; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grille_modele (id, version, datecreation, datedebut, datefin, nom) FROM stdin;
1	\N	2010-10-01 00:00:00	\N	\N	grille 1
\.


--
-- Name: grille_modele_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grille_modele_id_seq', 100000, false);


--
-- Data for Name: habilitation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY habilitation (id, version, active, creepar, desactivepar, creele, desactivele, desactivable, droit, id_detail_contacts, id_personne) FROM stdin;
1	\N	t	SRM	\N	2010-11-01 00:00:00	\N	f	PHARMACIEN_TITULAIRE	1	3
2	\N	t	SRM	\N	2010-12-03 00:00:00	\N	t	ARC_PROMOTEUR	1	2
3	\N	t	SRM	\N	2010-12-03 00:00:00	\N	t	CRO	1	5
4	\N	t	SLB	\N	2010-12-03 00:00:00	\N	t	INVESTIGATEUR_PRINCIPAL	1	1
\.


--
-- Name: habilitation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('habilitation_id_seq', 100000, false);


--
-- Data for Name: historique_patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY historique_patient (id, version, commentaire, date, poid, surfacecorporelle, taille, id_patient) FROM stdin;
\.


--
-- Name: historique_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('historique_patient_id_seq', 100000, false);


--
-- Data for Name: incident; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY incident (id, version, commentaire, date, libelle, id_essai) FROM stdin;
\.


--
-- Name: incident_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('incident_id_seq', 100000, false);


--
-- Data for Name: incident_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY incident_suivi (id, version, datemaj, majpar, id_incident) FROM stdin;
\.


--
-- Name: incident_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('incident_suivi_id_seq', 100000, false);


--
-- Data for Name: inclusion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY inclusion (id, version, actif, datedesinclusion, dateinclusion, numinclusion, numrandomisation, id_essai, id_patient) FROM stdin;
1	\N	t	\N	2010-01-01 00:00:00	1	1	1	1
\.


--
-- Name: inclusion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inclusion_id_seq', 100000, false);


--
-- Data for Name: investigateur_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY investigateur_service (id_investigateur, id_service) FROM stdin;
\.


--
-- Data for Name: investigateur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre) FROM stdin;
1	\N	101	10	numero adeli investigateur principal	titre principal	7	1
\.


--
-- Name: investigateur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('investigateur_sigrec_id_seq', 100000, false);


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY item (id, version, acte, categorie, theme, id_grille) FROM stdin;
\.


--
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('item_id_seq', 100000, false);


--
-- Data for Name: item_regle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY item_regle (id_item, id_regle) FROM stdin;
\.


--
-- Data for Name: lignestock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lignestock (id, version, approapprouve, dateperemption, numlot, numtraitement, quantite_dispensation_en_stock, quantite_global, stockage, id_conditionnement, id_essai, id_pharmacie, id_produit) FROM stdin;
\.


--
-- Name: lignestock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lignestock_id_seq', 1, false);


--
-- Data for Name: medicament; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY medicament (conditionnement, dci, etiquetage, fabrication, mds, nature, reconstitutionpsm, reconstitutionsimple, stupefiant, id) FROM stdin;
\N	paracetamol	\N	\N	f	\N	\N	\N	t	1
\.


--
-- Data for Name: mvt_approvisionnement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_approvisionnement (commentaireextensionperemption, commentairerefus, datearriveecolis, dateperemption, datereception, extensionperemption, historiqueextensionperemption, motifrefus, id) FROM stdin;
\.


--
-- Data for Name: mvt_autre_sortie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_autre_sortie (commentaire, commentaireraison, raisonsortie, id) FROM stdin;
\.


--
-- Data for Name: mvt_cession_pui; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_cession_pui (commentaire, commentaireraison, raisonsortie, id, id_pharmaciedest) FROM stdin;
\.


--
-- Data for Name: mvt_destruction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_destruction (commentaire, commentaireraison, raisonsortie, id) FROM stdin;
\.


--
-- Data for Name: mvt_dispensation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_dispensation (id, id_dispensation, id_produitprescrit) FROM stdin;
\.


--
-- Data for Name: mvt_dispensation_globale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_dispensation_globale (quantitedispensee, id, id_dotation) FROM stdin;
\.


--
-- Data for Name: mvt_preparation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_preparation (id) FROM stdin;
\.


--
-- Data for Name: mvt_preparationentree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_preparationentree (composition, datefabrication, numordonnancier, sterile, id, id_ordonnancier) FROM stdin;
\.


--
-- Data for Name: mvt_retour_promoteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvt_retour_promoteur (commentaire, commentaireraison, nomsocietetransport, raisonsortie, referenceenvoi, id) FROM stdin;
\.


--
-- Data for Name: mvtstock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvtstock (id, version, approapprouve, datecreation, dateperemption, numlot, numtraitement, quantite, type, id_conditionnement, id_essai, id_personne, id_pharmacie, id_produit) FROM stdin;
\.


--
-- Data for Name: mvtstock_document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mvtstock_document (type, id, version, datemaj, majpar, nomdisque, nomuser, id_mvtstock) FROM stdin;
\.


--
-- Name: mvtstock_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mvtstock_document_id_seq', 100000, false);


--
-- Name: mvtstock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mvtstock_id_seq', 100000, true);


--
-- Data for Name: ordonnancier_dispensation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ordonnancier_dispensation (id, version, datemaj, majpar, datedebut, datefin, id_pharma) FROM stdin;
1	0	2015-01-14 11:09:52.896	netapsys	2012-01-01	2012-12-31	1
\.


--
-- Name: ordonnancier_dispensation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ordonnancier_dispensation_id_seq', 100000, false);


--
-- Data for Name: ordonnancier_fab_reconst; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ordonnancier_fab_reconst (id, version, datemaj, majpar, datedebut, datefin, id_pharma) FROM stdin;
\.


--
-- Name: ordonnancier_fab_reconst_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ordonnancier_fab_reconst_id_seq', 100000, false);


--
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patient (id, version, adresse, civilite, codepostal, datenaissance, initiales, mail, nom, nomjeunefille, numeroipp, numerosejour, prenom, telephone, ville) FROM stdin;
1	\N	\N	\N	\N	\N	\N	\N	Dupond	\N	ipp1	\N	Marcel	\N	\N
2	\N	\N	\N	\N	\N	\N	\N	Durand	\N	ipp2	\N	Jean	\N	\N
\.


--
-- Name: patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_id_seq', 100000, false);


--
-- Data for Name: patient_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patient_suivi (id, version, datemaj, majpar, id_patient) FROM stdin;
\.


--
-- Name: patient_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_suivi_id_seq', 100000, false);


--
-- Data for Name: personne; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) FROM stdin;
INVESTIGATEUR	1	\N			0967654345	f	thierry.biais	pierre.durand@eclipse.fr	Durand	\N	Pierre	0987656565	\N			Docteur	\N	\N	\N	\N	\N
ARC_PROMOTEUR	2	\N			0967654345	f	jean.dupont	jean.dupont@eclipse.fr	Dupont	\N	Jean	0987656565	\N			\N	\N	\N	\N	\N	1
ARC_INVESTIGATEUR	4	\N				f	\N		Ronald	\N	Vincent		\N			\N	\N	\N	\N	\N	\N
CRO	5	\N				f	\N		QUINTILES	\N			\N		QUINTILES	\N	\N	\N	\N	\N	\N
PROMOTEUR	6	\N				f	\N		nom du contact promoteur 1	\N	prénom du contact promoteur 1		\N			\N	\N	\N	\N	\N	1
CRO	7	\N				f	\N		QUINTILES 2	\N			\N		QUINTILES 2	\N	\N	\N	\N	\N	\N
CRO	8	\N				f	\N		QUINTILES 3	\N			\N		QUINTILES 3	\N	\N	\N	\N	\N	\N
PROMOTEUR	9	\N				f	\N		nom du contact promoteur 2	\N	prénom du contact promoteur 2		\N			\N	\N	\N	\N	\N	1
PHARMACIEN	10	\N				f	pharmacien		pharmacien	\N	pharmacien		\N			\N	\N	\N	\N	TITULAIRE	\N
PHARMACIEN	11	\N				t	administrateur		administrateur	ea617e2de44cac984883b76bd81092b6	administrateur		\N			\N	\N	\N	\N	TITULAIRE	\N
PHARMACIEN	3	\N				t	admin		admin	ea617e2de44cac984883b76bd81092b6	admin		\N			\N	\N	\N	\N	TITULAIRE	\N
\.


--
-- Name: personne_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('personne_id_seq', 100000, true);


--
-- Data for Name: personne_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY personne_suivi (id, version, datemaj, majpar, id_personne) FROM stdin;
\.


--
-- Name: personne_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('personne_suivi_id_seq', 100000, false);


--
-- Data for Name: pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pharmacie (id, version, adresse, adresselivraison, fax, nom, numordonnancierdisp, numordonnancierfab, responsableprincipal, telephone, id_etablissement) FROM stdin;
1	\N				PUI HOTEL-DIEU RDJ	0	0			1
2	\N				PUI HOTEL-DIEU UPCO	0	0			1
3	\N				PUI HGRL	0	0			1
4	\N				PUI St JACQUES	0	0			1
5	\N				ARSENAL St JACQUES	0	0			1
\.


--
-- Name: pharmacie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pharmacie_id_seq', 100021, true);


--
-- Data for Name: pharmacie_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pharmacie_site (id_pharmacie, id_site) FROM stdin;
1	1
2	1
3	2
4	3
5	3
\.


--
-- Data for Name: pharmacie_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pharmacie_suivi (id, version, datemaj, majpar, id_pharmacie) FROM stdin;
\.


--
-- Name: pharmacie_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pharmacie_suivi_id_seq', 100101, true);


--
-- Data for Name: pharmacien_document_pharmacien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pharmacien_document_pharmacien (type, id, version, datemaj, majpar, nomdisque, nomuser, id_pharmacien) FROM stdin;
\.


--
-- Name: pharmacien_document_pharmacien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pharmacien_document_pharmacien_id_seq', 1, false);


--
-- Data for Name: pharmacien_pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pharmacien_pharmacie (id_pharmacien, id_pharmacie) FROM stdin;
3	1
\.


--
-- Data for Name: pole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pole (id, version, nom, id_etablissement) FROM stdin;
1	\N	IMAD-Institut des maladies de l'appareil digestif	1
2	\N	Institut de Transplantations, Urologie, Néphrologie	1
3	\N	Institut du Thorax	1
4	\N	Pôle Anesthésie-Réanimations	1
5	\N	Pôle Gérontologie Clinique	1
6	\N	Pôle Imageries & Explorations Fonctionnelles	1
7	\N	Pôle Médecine Cancérologie Hématologie	1
8	\N	Pôle Medecine Physique & Réadaptation/Soins de suite	1
9	\N	Pôle Mère Enfant	1
10	\N	Pôle Neurosciences	1
11	\N	Pôle Ostéo-Articulaire	1
12	\N	Pôle Psychiatries	1
13	\N	Pôle Tête & Cou	1
14	\N	Pôle Urgences	1
15	\N	Recherche-CIC	1
\.


--
-- Name: pole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pole_id_seq', 100003, true);


--
-- Data for Name: pole_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pole_suivi (id, version, datemaj, majpar, id_pole) FROM stdin;
\.


--
-- Name: pole_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pole_suivi_id_seq', 100000, true);


--
-- Data for Name: preparation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY preparation (id) FROM stdin;
\.


--
-- Data for Name: prescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prescription (id, version, commentaire, datedebuttraitement, dateprescription, dispense, numprescription, numvisite, id_inclusion, id_investigateur, id_sequence, id_service) FROM stdin;
1	\N	\N	2010-01-01 00:00:00	2010-01-01 00:00:00	f	1	\N	1	1	1	1
\.


--
-- Name: prescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prescription_id_seq', 100000, false);


--
-- Data for Name: prescription_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prescription_type (id, version, nb_debut, unite_debut, description, dosage, nb_duree, unite_duree, nbfrequence, nbunitetempsfrequence, typeregularite, unitefrequence, nbunitedosage, id_conditionnement, id_produit, id_sequence) FROM stdin;
1	\N	3	JOUR	\N	\N	2	SEMAINE	0	\N	\N	\N	\N	1	1	1
\.


--
-- Name: prescription_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prescription_type_id_seq', 100000, false);


--
-- Data for Name: prevision_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY prevision_sigrec (id, version, datedebut, datefin, dureetotale, nbcentres, id_essai) FROM stdin;
1	\N	2010-10-08 00:00:00	2010-10-10 00:00:00	10	10	1
\.


--
-- Name: prevision_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prevision_sigrec_id_seq', 100000, false);


--
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit (id, version, alerteactive, classetherapeutique, code, conseils, denomination, imputationuf, type, id_detailproduit) FROM stdin;
1	\N	t	classe 2	prod1	\N	Produit 1	\N	MEDICAMENT	1
\.


--
-- Data for Name: produit_detail_logistique; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_detail_logistique (id, version, abrilumiere, comptabiliteretour, conditionconservation, delaialerteavtdateexpiration, miseadispo, produitnonfourni, quantiteautorise, stockseuil, id_produit) FROM stdin;
1	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
\.


--
-- Name: produit_detail_logistique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_detail_logistique_id_seq', 100000, false);


--
-- Data for Name: produit_detail_stockage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_detail_stockage (id, version, identifiantstockage, type, id_detail_logistique, id_pharmacie, id_stockage) FROM stdin;
1	\N	id stock	STOCK	1	1	1
\.


--
-- Name: produit_detail_stockage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_detail_stockage_id_seq', 100000, false);


--
-- Data for Name: produit_document_actes_pharma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_document_actes_pharma (type, id, version, datemaj, majpar, nomdisque, nomuser, id_produit) FROM stdin;
\.


--
-- Name: produit_document_actes_pharma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_document_actes_pharma_id_seq', 100000, false);


--
-- Name: produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_id_seq', 100000, false);


--
-- Data for Name: produit_prescrit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_prescrit (id, version, adispenser, nb_debut, unite_debut, description, dispense, dosage, nb_duree, unite_duree, nbfrequence, nbunitetempsfrequence, typeregularite, unitefrequence, nbunitedosage, numtraitement, id_conditionnement, id_prescription, id_produit) FROM stdin;
1	\N	\N	0	JOUR	\N	t	\N	\N	\N	0	\N	\N	\N	\N	\N	1	1	1
\.


--
-- Name: produit_prescrit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_prescrit_id_seq', 100000, false);


--
-- Data for Name: produit_service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_service (id_produit, id_service) FROM stdin;
\.


--
-- Data for Name: produit_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_suivi (id, version, datemaj, majpar, id_produit) FROM stdin;
\.


--
-- Name: produit_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_suivi_id_seq', 100000, false);


--
-- Data for Name: produit_therapeutique; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produit_therapeutique (conditionnement, etiquetage, fabrication, mds, nature, reconstitutionpsm, reconstitutionsimple, stupefiant, typeproduittherapeutique, id) FROM stdin;
\.


--
-- Data for Name: promoteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY promoteur (id, version, identifiant, raisonsociale, type) FROM stdin;
1	\N		AMGEN	INDUSTRIEL
2	\N		ANRS	ACADEMIQUE
3	\N		AP-HP	ACADEMIQUE
4	\N		ASTRAZENECA	INDUSTRIEL
5	\N		BAYER Santé	INDUSTRIEL
6	\N		BIOGEN IDEC	INDUSTRIEL
7	\N		BMS	INDUSTRIEL
8	\N		BOEHRINGER INGELHEIM	INDUSTRIEL
9	\N		CELGENE	INDUSTRIEL
10	\N		CH LENS	ETABLISSEMENT_SOINS
11	\N		CH VERSAILLES	ETABLISSEMENT_SOINS
12	\N		CHU ANGERS	ETABLISSEMENT_SOINS
13	\N		CHU BESANCON	ETABLISSEMENT_SOINS
14	\N		CHU BORDEAUX	ETABLISSEMENT_SOINS
15	\N		CHU BREST	ETABLISSEMENT_SOINS
16	\N		CHU LILLE	ETABLISSEMENT_SOINS
17	\N		CHU MONTPELLIER	ETABLISSEMENT_SOINS
18	\N		CHU NANTES	ETABLISSEMENT_SOINS
19	\N		CHU NICE	ETABLISSEMENT_SOINS
20	\N		CHU RENNES	ETABLISSEMENT_SOINS
21	\N		CHU ROUEN	ETABLISSEMENT_SOINS
22	\N		CHU SAINT-ETIENNE	ETABLISSEMENT_SOINS
23	\N		CHU STRASBOURG	ETABLISSEMENT_SOINS
24	\N		CHU TOULOUSE	ETABLISSEMENT_SOINS
25	\N		CNRS	ACADEMIQUE
26	\N		ERYTECH Pharma	INDUSTRIEL
27	\N		EUSA Pharma	INDUSTRIEL
28	\N		GALDERMA	INDUSTRIEL
29	\N		GENENTECH	INDUSTRIEL
30	\N		GENFIT	INDUSTRIEL
31	\N		GERCOR	INDUSTRIEL
32	\N		GETAID	ACADEMIQUE
33	\N		GFM Groupe Français des Myelodysplasies	ACADEMIQUE
34	\N		GILEAD	INDUSTRIEL
35	\N		GOELAMS	ACADEMIQUE
36	\N		GSK	INDUSTRIEL
37	\N		HOSPICES CIVILS DE LYON	ACADEMIQUE
38	\N		IFM	ACADEMIQUE
39	\N		INRA	ACADEMIQUE
40	\N		INSTITUT CURIE	ACADEMIQUE
41	\N		INSTITUT GUSTAVE ROUSSY	ACADEMIQUE
42	\N		INSTITUT PAOLI CALMETTE	ACADEMIQUE
43	\N		IPSEN	INDUSTRIEL
44	\N		IRIS SERVIER	INDUSTRIEL
45	\N		JOHNSON&JOHNSON  JANSSEN-CILAG	INDUSTRIEL
46	\N		LA ROCHE POSAY	INDUSTRIEL
47	\N		LACTALIS	INDUSTRIEL
48	\N		LILLY	INDUSTRIEL
49	\N		MAUNA KEA TECHNOLOGIES	INDUSTRIEL
50	\N		MERCK SERONO	INDUSTRIEL
51	\N		MILLENNIUM PHARMACEUTICALS	INDUSTRIEL
52	\N		MSD	INDUSTRIEL
53	\N		MUNDIPHARMA	INDUSTRIEL
54	\N		NOVARTIS	INDUSTRIEL
55	\N		NOVIMMUNE	INDUSTRIEL
56	\N		NOVO NORDISK	INDUSTRIEL
57	\N		PFIZER	INDUSTRIEL
58	\N		PIERRE FABRE	INDUSTRIEL
59	\N		PTC Therapeutics	INDUSTRIEL
60	\N		ROCHE	INDUSTRIEL
61	\N		SANOFI AVENTIS	INDUSTRIEL
62	\N		SCHERING-PLOUGH	INDUSTRIEL
63	\N		SOCIETE FRANCAISE DE CARDIOLOGIE	ACADEMIQUE
64	\N		UCB Pharma	INDUSTRIEL
65	\N		WYETH	INDUSTRIEL
66	\N	identifiant promoteur 1	Promoteur 1 (SIGREC)	INDUSTRIEL
\.


--
-- Name: promoteur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promoteur_id_seq', 100000, false);


--
-- Data for Name: promoteur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY promoteur_sigrec (id, version, identifiant, type, id_contact) FROM stdin;
1	\N	identifiant promoteur 1	ACADEMIQUE	1
\.


--
-- Name: promoteur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promoteur_sigrec_id_seq', 100000, false);


--
-- Data for Name: promoteur_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY promoteur_suivi (id, version, datemaj, majpar, id_promoteur) FROM stdin;
\.


--
-- Name: promoteur_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promoteur_suivi_id_seq', 100000, false);


--
-- Data for Name: regle_surcout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY regle_surcout (id, version, anneessuivantes, max, min, mode, montant, perimetre, premiereannee, type, id_categorie, id_theme) FROM stdin;
\.


--
-- Name: regle_surcout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('regle_surcout_id_seq', 100000, false);


--
-- Data for Name: reprise_passif; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reprise_passif (id, version, numero_ordonnancier, date_dispensation, initiales_patient, essai_promoteur, numlot_traitement, produits, dispense_par) FROM stdin;
\.


--
-- Data for Name: retour_patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY retour_patient (id, version, commentaire, commentaireentame, commentaireetat, date, dateetat, etat, numlot, numordonnancier, numtraitement, quantite, type, id_conditionnement, id_detailstockage, id_essai, id_patient, id_personne, id_produit) FROM stdin;
\.


--
-- Name: retour_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('retour_patient_id_seq', 100000, false);


--
-- Data for Name: sequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sequence (id, version, nb_debut, unite_debut, description, nb_fin, unite_fin, nb_duree, nom, type, unite_duree, id_bras_sequence) FROM stdin;
1	\N	\N	\N	\N	\N	\N	\N	sequence 1	SEQUENCE	\N	4
\.


--
-- Name: sequence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sequence_id_seq', 100000, false);


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY service (id, version, nom, id_pole, id_site) FROM stdin;
1	\N	GASTRO-ENTEROLOGIE-HEPATOLOGIE	1	\N
2	\N	HEMATOLOGIE	7	\N
3	\N	ONCOLOGIE PEDIATRIQUE	7	\N
4	\N	DERMATOLOGIE	7	\N
5	\N	MEDECINE INTERNE	7	\N
6	\N	CIC GASTRO-ENTEROLOGIE /NUTRITION	15	\N
7	\N	ANESTHESIE HD/JEAN MONNET/HME	4	\N
8	\N	GYNECOLOGIE & OBSTETRIQUE	9	\N
9	\N	MALADIES INFECTIEUSES ET TROPICALES	7	\N
10	\N	NEPHROLOGIE	2	\N
11	\N	OPHTALMOLOGIE	13	\N
12	\N	PEDIATRIE	9	\N
13	\N	RHUMATOLOGIE	11	\N
14	\N	UROLOGIE	2	\N
15	\N	URGENCES	14	\N
16	\N	CTCV Réanimation Chirurgie Thoracique Cardiaque et Vasculaire	4	\N
17	\N	PNEUMOLOGIE	3	\N
18	\N	NEUROLOGIE	10	\N
19	\N	EXPLORATIONS FONCTIONNELLES	6	\N
20	\N	ENDOCRINOLOGIE	3	\N
21	\N	MEDECINE AIGUE GERIATRIQUE	5	\N
22	\N	PSYCHIATRIE 1	12	\N
23	\N	MEDECINE DU SPORT ET DE L'EFFORT	8	\N
\.


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_id_seq', 100002, true);


--
-- Data for Name: service_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY service_suivi (id, version, datemaj, majpar, id_service) FROM stdin;
\.


--
-- Name: service_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_suivi_id_seq', 100001, true);


--
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site (id, version, adresse, code, codepostal, nom, ville, id_etablissement) FROM stdin;
1	\N		HD/HME		Hôpital Hôtel-Dieu/Mère Enfant		1
2	\N		HGRL		Hôpital Guillaume/René Laennec		1
3	\N		HSJ		Hôpital Saint-Jacques		1
\.


--
-- Name: site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_id_seq', 100003, true);


--
-- Data for Name: site_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_suivi (id, version, datemaj, majpar, id_site) FROM stdin;
\.


--
-- Name: site_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_suivi_id_seq', 100003, true);


--
-- Data for Name: stockage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) FROM stdin;
1	\N	\N	\N	\N	\N	Armoire A	\N	1
2	\N	\N	\N	\N	\N	Armoire A1	1	1
3	\N	\N	\N	\N	\N	Armoire A2	1	1
4	\N	\N	\N	\N	\N	Armoire A21	3	1
5	\N	\N	\N	\N	\N	Armoire A22	3	1
6	\N	\N	\N	\N	\N	Armoire B	\N	1
7	\N	\N	\N	\N	\N	Armoire B1	6	1
\.


--
-- Name: stockage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stockage_id_seq', 100000, false);


--
-- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY theme (id, version, libelle, id_grille_modele) FROM stdin;
1	\N	Prestation standard	1
2	\N	Actes pharmaceutiques supplémentaires	1
3	\N	Frais spécifiques (18)	1
\.


--
-- Name: theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('theme_id_seq', 100000, false);


--
-- Name: acl_essai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY acl_essai
    ADD CONSTRAINT acl_essai_pkey PRIMARY KEY (id_personne, id_essai);


--
-- Name: acl_pharmacie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY acl_pharmacie
    ADD CONSTRAINT acl_pharmacie_pkey PRIMARY KEY (id_pharmacie, id_personne);


--
-- Name: arc_investigateur_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY arc_investigateur_sigrec
    ADD CONSTRAINT arc_investigateur_sigrec_pkey PRIMARY KEY (id);


--
-- Name: arc_promoteur_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY arc_promoteur_sigrec
    ADD CONSTRAINT arc_promoteur_sigrec_pkey PRIMARY KEY (id);


--
-- Name: arcinvestigateur_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY arcinvestigateur_service
    ADD CONSTRAINT arcinvestigateur_service_pkey PRIMARY KEY (id_arcinvestigateur, id_service);


--
-- Name: assurance_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY assurance_sigrec
    ADD CONSTRAINT assurance_sigrec_pkey PRIMARY KEY (id);


--
-- Name: bras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bras
    ADD CONSTRAINT bras_pkey PRIMARY KEY (id);


--
-- Name: categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categorie
    ADD CONSTRAINT categorie_pkey PRIMARY KEY (id);


--
-- Name: centre_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY centre_sigrec
    ADD CONSTRAINT centre_sigrec_pkey PRIMARY KEY (id);


--
-- Name: co_investigateur_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY co_investigateur_sigrec
    ADD CONSTRAINT co_investigateur_sigrec_pkey PRIMARY KEY (id);


--
-- Name: conditionnement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conditionnement
    ADD CONSTRAINT conditionnement_pkey PRIMARY KEY (id);


--
-- Name: contact_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contact_sigrec
    ADD CONSTRAINT contact_sigrec_pkey PRIMARY KEY (id);


--
-- Name: cro_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cro_sigrec
    ADD CONSTRAINT cro_sigrec_pkey PRIMARY KEY (id);


--
-- Name: dispensation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dispensation
    ADD CONSTRAINT dispensation_pkey PRIMARY KEY (id);


--
-- Name: dispositif_medical_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dispositif_medical
    ADD CONSTRAINT dispositif_medical_pkey PRIMARY KEY (id);


--
-- Name: donnees_prevision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY donnees_prevision
    ADD CONSTRAINT donnees_prevision_pkey PRIMARY KEY (id);


--
-- Name: dotation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT dotation_pkey PRIMARY KEY (id);


--
-- Name: element_to_check_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY element_to_check
    ADD CONSTRAINT element_to_check_pkey PRIMARY KEY (id);


--
-- Name: essai_commentaire_detail_administratif_archi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_commentaire_detail_administratif_archi
    ADD CONSTRAINT essai_commentaire_detail_administratif_archi_pkey PRIMARY KEY (id);


--
-- Name: essai_commentaire_detail_faisabilite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_commentaire_detail_faisabilite
    ADD CONSTRAINT essai_commentaire_detail_faisabilite_pkey PRIMARY KEY (id);


--
-- Name: essai_commentaire_detail_recherche_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_commentaire_detail_recherche
    ADD CONSTRAINT essai_commentaire_detail_recherche_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_administratif_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_administratif
    ADD CONSTRAINT essai_detail_administratif_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_administratif_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_administratif_suivi
    ADD CONSTRAINT essai_detail_administratif_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_autres_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_autres_documents
    ADD CONSTRAINT essai_detail_autres_documents_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_autres_documents_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_autres_documents_suivi
    ADD CONSTRAINT essai_detail_autres_documents_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_contacts
    ADD CONSTRAINT essai_detail_contacts_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_contacts_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_contacts_suivi
    ADD CONSTRAINT essai_detail_contacts_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_dates
    ADD CONSTRAINT essai_detail_dates_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_dates_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_dates_suivi
    ADD CONSTRAINT essai_detail_dates_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_design_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_design
    ADD CONSTRAINT essai_detail_design_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_design_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_design_suivi
    ADD CONSTRAINT essai_detail_design_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_etat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_etat
    ADD CONSTRAINT essai_detail_etat_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_faisabilite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_faisabilite
    ADD CONSTRAINT essai_detail_faisabilite_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_faisabilite_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_faisabilite_service
    ADD CONSTRAINT essai_detail_faisabilite_service_pkey PRIMARY KEY (id_essai, id_service);


--
-- Name: essai_detail_faisabilite_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_faisabilite_suivi
    ADD CONSTRAINT essai_detail_faisabilite_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_pharma_etablissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_pharma_etablissement
    ADD CONSTRAINT essai_detail_pharma_etablissement_pkey PRIMARY KEY (id_detail_pharma, id_etablissement);


--
-- Name: essai_detail_pharma_pharmacie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_pharma_pharmacie
    ADD CONSTRAINT essai_detail_pharma_pharmacie_pkey PRIMARY KEY (id_detail_pharma, id_pharmacie);


--
-- Name: essai_detail_pharma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_pharma
    ADD CONSTRAINT essai_detail_pharma_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_pharma_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_pharma_suivi
    ADD CONSTRAINT essai_detail_pharma_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_produit
    ADD CONSTRAINT essai_detail_produit_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_produit_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_produit_suivi
    ADD CONSTRAINT essai_detail_produit_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_recherche_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_recherche
    ADD CONSTRAINT essai_detail_recherche_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_recherche_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_recherche_sigrec
    ADD CONSTRAINT essai_detail_recherche_sigrec_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_recherche_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_recherche_suivi
    ADD CONSTRAINT essai_detail_recherche_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_surcout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_surcout
    ADD CONSTRAINT essai_detail_surcout_pkey PRIMARY KEY (id);


--
-- Name: essai_detail_surcout_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_detail_surcout_suivi
    ADD CONSTRAINT essai_detail_surcout_suivi_pkey PRIMARY KEY (id);


--
-- Name: essai_document_detail_administratif_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_document_detail_administratif
    ADD CONSTRAINT essai_document_detail_administratif_pkey PRIMARY KEY (id);


--
-- Name: essai_document_detail_autres_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_document_detail_autres_documents
    ADD CONSTRAINT essai_document_detail_autres_documents_pkey PRIMARY KEY (id);


--
-- Name: essai_document_detail_pharma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_document_detail_pharma
    ADD CONSTRAINT essai_document_detail_pharma_pkey PRIMARY KEY (id);


--
-- Name: essai_document_detail_surcout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_document_detail_surcout
    ADD CONSTRAINT essai_document_detail_surcout_pkey PRIMARY KEY (id);


--
-- Name: essai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai
    ADD CONSTRAINT essai_pkey PRIMARY KEY (id);


--
-- Name: essai_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_service
    ADD CONSTRAINT essai_service_pkey PRIMARY KEY (id_essai, id_service);


--
-- Name: essai_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_sigrec
    ADD CONSTRAINT essai_sigrec_pkey PRIMARY KEY (id);


--
-- Name: essai_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY essai_suivi
    ADD CONSTRAINT essai_suivi_pkey PRIMARY KEY (id);


--
-- Name: etablissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY etablissement
    ADD CONSTRAINT etablissement_pkey PRIMARY KEY (id);


--
-- Name: etablissement_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY etablissement_suivi
    ADD CONSTRAINT etablissement_suivi_pkey PRIMARY KEY (id);


--
-- Name: evenement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evenement
    ADD CONSTRAINT evenement_pkey PRIMARY KEY (id);


--
-- Name: evenement_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evenement_suivi
    ADD CONSTRAINT evenement_suivi_pkey PRIMARY KEY (id);


--
-- Name: grille_modele_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grille_modele
    ADD CONSTRAINT grille_modele_pkey PRIMARY KEY (id);


--
-- Name: grille_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grille
    ADD CONSTRAINT grille_pkey PRIMARY KEY (id);


--
-- Name: habilitation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY habilitation
    ADD CONSTRAINT habilitation_pkey PRIMARY KEY (id);


--
-- Name: historique_patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY historique_patient
    ADD CONSTRAINT historique_patient_pkey PRIMARY KEY (id);


--
-- Name: incident_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY incident
    ADD CONSTRAINT incident_pkey PRIMARY KEY (id);


--
-- Name: incident_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY incident_suivi
    ADD CONSTRAINT incident_suivi_pkey PRIMARY KEY (id);


--
-- Name: inclusion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY inclusion
    ADD CONSTRAINT inclusion_pkey PRIMARY KEY (id);


--
-- Name: investigateur_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY investigateur_service
    ADD CONSTRAINT investigateur_service_pkey PRIMARY KEY (id_investigateur, id_service);


--
-- Name: investigateur_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY investigateur_sigrec
    ADD CONSTRAINT investigateur_sigrec_pkey PRIMARY KEY (id);


--
-- Name: item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- Name: item_regle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item_regle
    ADD CONSTRAINT item_regle_pkey PRIMARY KEY (id_item, id_regle);


--
-- Name: lignestock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lignestock
    ADD CONSTRAINT lignestock_pkey PRIMARY KEY (id);


--
-- Name: medicament_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY medicament
    ADD CONSTRAINT medicament_pkey PRIMARY KEY (id);


--
-- Name: mvt_approvisionnement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_approvisionnement
    ADD CONSTRAINT mvt_approvisionnement_pkey PRIMARY KEY (id);


--
-- Name: mvt_autre_sortie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_autre_sortie
    ADD CONSTRAINT mvt_autre_sortie_pkey PRIMARY KEY (id);


--
-- Name: mvt_cession_pui_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_cession_pui
    ADD CONSTRAINT mvt_cession_pui_pkey PRIMARY KEY (id);


--
-- Name: mvt_destruction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_destruction
    ADD CONSTRAINT mvt_destruction_pkey PRIMARY KEY (id);


--
-- Name: mvt_dispensation_globale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_dispensation_globale
    ADD CONSTRAINT mvt_dispensation_globale_pkey PRIMARY KEY (id);


--
-- Name: mvt_dispensation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_dispensation
    ADD CONSTRAINT mvt_dispensation_pkey PRIMARY KEY (id);


--
-- Name: mvt_preparation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_preparation
    ADD CONSTRAINT mvt_preparation_pkey PRIMARY KEY (id);


--
-- Name: mvt_preparationentree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_preparationentree
    ADD CONSTRAINT mvt_preparationentree_pkey PRIMARY KEY (id);


--
-- Name: mvt_retour_promoteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvt_retour_promoteur
    ADD CONSTRAINT mvt_retour_promoteur_pkey PRIMARY KEY (id);


--
-- Name: mvtstock_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvtstock_document
    ADD CONSTRAINT mvtstock_document_pkey PRIMARY KEY (id);


--
-- Name: mvtstock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mvtstock
    ADD CONSTRAINT mvtstock_pkey PRIMARY KEY (id);


--
-- Name: ordonnancier_dispensation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordonnancier_dispensation
    ADD CONSTRAINT ordonnancier_dispensation_pkey PRIMARY KEY (id);


--
-- Name: ordonnancier_fab_reconst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordonnancier_fab_reconst
    ADD CONSTRAINT ordonnancier_fab_reconst_pkey PRIMARY KEY (id);


--
-- Name: patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);


--
-- Name: patient_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY patient_suivi
    ADD CONSTRAINT patient_suivi_pkey PRIMARY KEY (id);


--
-- Name: personne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personne
    ADD CONSTRAINT personne_pkey PRIMARY KEY (id);


--
-- Name: personne_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY personne_suivi
    ADD CONSTRAINT personne_suivi_pkey PRIMARY KEY (id);


--
-- Name: pharmacie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pharmacie
    ADD CONSTRAINT pharmacie_pkey PRIMARY KEY (id);


--
-- Name: pharmacie_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pharmacie_site
    ADD CONSTRAINT pharmacie_site_pkey PRIMARY KEY (id_pharmacie, id_site);


--
-- Name: pharmacie_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pharmacie_suivi
    ADD CONSTRAINT pharmacie_suivi_pkey PRIMARY KEY (id);


--
-- Name: pharmacien_document_pharmacien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pharmacien_document_pharmacien
    ADD CONSTRAINT pharmacien_document_pharmacien_pkey PRIMARY KEY (id);


--
-- Name: pharmacien_pharmacie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pharmacien_pharmacie
    ADD CONSTRAINT pharmacien_pharmacie_pkey PRIMARY KEY (id_pharmacien, id_pharmacie);


--
-- Name: pk_databasechangelog; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY databasechangelog
    ADD CONSTRAINT pk_databasechangelog PRIMARY KEY (id, author, filename);


--
-- Name: pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


--
-- Name: pole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pole
    ADD CONSTRAINT pole_pkey PRIMARY KEY (id);


--
-- Name: pole_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pole_suivi
    ADD CONSTRAINT pole_suivi_pkey PRIMARY KEY (id);


--
-- Name: preparation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY preparation
    ADD CONSTRAINT preparation_pkey PRIMARY KEY (id);


--
-- Name: prescription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prescription
    ADD CONSTRAINT prescription_pkey PRIMARY KEY (id);


--
-- Name: prescription_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prescription_type
    ADD CONSTRAINT prescription_type_pkey PRIMARY KEY (id);


--
-- Name: prevision_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prevision_sigrec
    ADD CONSTRAINT prevision_sigrec_pkey PRIMARY KEY (id);


--
-- Name: produit_detail_logistique_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_detail_logistique
    ADD CONSTRAINT produit_detail_logistique_pkey PRIMARY KEY (id);


--
-- Name: produit_detail_stockage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_detail_stockage
    ADD CONSTRAINT produit_detail_stockage_pkey PRIMARY KEY (id);


--
-- Name: produit_document_actes_pharma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_document_actes_pharma
    ADD CONSTRAINT produit_document_actes_pharma_pkey PRIMARY KEY (id);


--
-- Name: produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id);


--
-- Name: produit_prescrit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_prescrit
    ADD CONSTRAINT produit_prescrit_pkey PRIMARY KEY (id);


--
-- Name: produit_service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_service
    ADD CONSTRAINT produit_service_pkey PRIMARY KEY (id_produit, id_service);


--
-- Name: produit_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_suivi
    ADD CONSTRAINT produit_suivi_pkey PRIMARY KEY (id);


--
-- Name: produit_therapeutique_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produit_therapeutique
    ADD CONSTRAINT produit_therapeutique_pkey PRIMARY KEY (id);


--
-- Name: promoteur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY promoteur
    ADD CONSTRAINT promoteur_pkey PRIMARY KEY (id);


--
-- Name: promoteur_sigrec_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY promoteur_sigrec
    ADD CONSTRAINT promoteur_sigrec_pkey PRIMARY KEY (id);


--
-- Name: promoteur_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY promoteur_suivi
    ADD CONSTRAINT promoteur_suivi_pkey PRIMARY KEY (id);


--
-- Name: regle_surcout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY regle_surcout
    ADD CONSTRAINT regle_surcout_pkey PRIMARY KEY (id);


--
-- Name: reprise_passif_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reprise_passif
    ADD CONSTRAINT reprise_passif_pk PRIMARY KEY (id);


--
-- Name: retour_patient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT retour_patient_pkey PRIMARY KEY (id);


--
-- Name: sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sequence
    ADD CONSTRAINT sequence_pkey PRIMARY KEY (id);


--
-- Name: service_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


--
-- Name: service_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY service_suivi
    ADD CONSTRAINT service_suivi_pkey PRIMARY KEY (id);


--
-- Name: site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- Name: site_suivi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_suivi
    ADD CONSTRAINT site_suivi_pkey PRIMARY KEY (id);


--
-- Name: stockage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY stockage
    ADD CONSTRAINT stockage_pkey PRIMARY KEY (id);


--
-- Name: theme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY theme
    ADD CONSTRAINT theme_pkey PRIMARY KEY (id);


--
-- Name: acl_essai_id_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX acl_essai_id_essai ON acl_essai USING btree (id_essai);


--
-- Name: acl_essai_id_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX acl_essai_id_personne ON acl_essai USING btree (id_personne);


--
-- Name: acl_pharmacie_id_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX acl_pharmacie_id_personne ON acl_pharmacie USING btree (id_personne);


--
-- Name: acl_pharmacie_id_pharmacie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX acl_pharmacie_id_pharmacie ON acl_pharmacie USING btree (id_pharmacie);


--
-- Name: idx_arc_investigateur_essai_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_arc_investigateur_essai_sigrec ON arc_investigateur_sigrec USING btree (id_essai);


--
-- Name: idx_bras_sequence; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_bras_sequence ON sequence USING btree (id_bras_sequence);


--
-- Name: idx_brase_parent; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_brase_parent ON bras USING btree (id_bras_parent);


--
-- Name: idx_categorie_regle; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_categorie_regle ON regle_surcout USING btree (id_categorie);


--
-- Name: idx_co_investigateur_essai_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_co_investigateur_essai_sigrec ON co_investigateur_sigrec USING btree (id_essai);


--
-- Name: idx_conditionnement_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_conditionnement_produit ON conditionnement USING btree (id_produit);


--
-- Name: idx_conditionnement_produit_prescrit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_conditionnement_produit_prescrit ON produit_prescrit USING btree (id_conditionnement);


--
-- Name: idx_conditionnement_retourpatient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_conditionnement_retourpatient ON retour_patient USING btree (id_conditionnement);


--
-- Name: idx_contact_assurance_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_contact_assurance_sigrec ON assurance_sigrec USING btree (id_contact);


--
-- Name: idx_contact_centre_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_contact_centre_sigrec ON centre_sigrec USING btree (id_contact);


--
-- Name: idx_contact_cro_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_contact_cro_sigrec ON cro_sigrec USING btree (id_contact);


--
-- Name: idx_contact_promoteur_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_contact_promoteur_sigrec ON promoteur_sigrec USING btree (id_contact);


--
-- Name: idx_detail_contacts_habilitation; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_detail_contacts_habilitation ON habilitation USING btree (id_detail_contacts);


--
-- Name: idx_detail_design_bras; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_detail_design_bras ON bras USING btree (id_detail_design);


--
-- Name: idx_detail_etat_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_detail_etat_essai ON essai_detail_etat USING btree (id_essai);


--
-- Name: idx_detail_stockage_detail_logistique; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_detail_stockage_detail_logistique ON produit_detail_stockage USING btree (id_detail_logistique);


--
-- Name: idx_detailstockage_retourpatient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_detailstockage_retourpatient ON retour_patient USING btree (id_detailstockage);


--
-- Name: idx_disp_globale_dotation; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_disp_globale_dotation ON mvt_dispensation_globale USING btree (id_dotation);


--
-- Name: idx_disp_ordon; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_disp_ordon ON dispensation USING btree (id_ordonnancier);


--
-- Name: idx_disp_pharmacie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_disp_pharmacie ON dispensation USING btree (id_pharmacie);


--
-- Name: idx_dispensation_dispensation_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dispensation_dispensation_produit ON mvt_dispensation USING btree (id_dispensation);


--
-- Name: idx_dispensation_elementtocheck; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dispensation_elementtocheck ON element_to_check USING btree (id_dispensation);


--
-- Name: idx_dotation_cond; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dotation_cond ON dotation USING btree (id_conditionnement);


--
-- Name: idx_dotation_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dotation_essai ON dotation USING btree (id_essai);


--
-- Name: idx_dotation_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dotation_personne ON dotation USING btree (id_personne);


--
-- Name: idx_dotation_pharma; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dotation_pharma ON dotation USING btree (id_pharmacie);


--
-- Name: idx_dotation_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dotation_produit ON dotation USING btree (id_produit);


--
-- Name: idx_dotation_service; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_dotation_service ON dotation USING btree (id_service);


--
-- Name: idx_elementtocheck_ordon; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_elementtocheck_ordon ON element_to_check USING btree (id_ordonnancier);


--
-- Name: idx_elementtocheck_ordon2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_elementtocheck_ordon2 ON mvt_preparationentree USING btree (id_ordonnancier);


--
-- Name: idx_eltcheck_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_eltcheck_personne ON element_to_check USING btree (id_personne);


--
-- Name: idx_essai_commentaire_detail_administratif; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_commentaire_detail_administratif ON essai_commentaire_detail_administratif_archi USING btree (id_detailadministratif);


--
-- Name: idx_essai_commentaire_detail_faisabilite; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_commentaire_detail_faisabilite ON essai_commentaire_detail_faisabilite USING btree (id_detailfaisabilite);


--
-- Name: idx_essai_commentaire_detail_recherche; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_commentaire_detail_recherche ON essai_commentaire_detail_recherche USING btree (id_detailrecherche);


--
-- Name: idx_essai_cro_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_cro_sigrec ON cro_sigrec USING btree (id_essai);


--
-- Name: idx_essai_document_detail_administratif; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_document_detail_administratif ON essai_document_detail_administratif USING btree (id_detailadministratif);


--
-- Name: idx_essai_document_detail_surcout; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_document_detail_surcout ON essai_document_detail_surcout USING btree (id_detailsurcout);


--
-- Name: idx_essai_evenement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_evenement ON evenement USING btree (id_essai);


--
-- Name: idx_essai_incident; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_incident ON incident USING btree (id_essai);


--
-- Name: idx_essai_inclusion; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_inclusion ON inclusion USING btree (id_essai);


--
-- Name: idx_essai_produit_detail_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_produit_detail_produit ON produit USING btree (id_detailproduit);


--
-- Name: idx_essai_retourpatient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_essai_retourpatient ON retour_patient USING btree (id_essai);


--
-- Name: idx_etab_pharma; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_etab_pharma ON pharmacie USING btree (id_etablissement);


--
-- Name: idx_etab_pole; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_etab_pole ON pole USING btree (id_etablissement);


--
-- Name: idx_etab_site; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_etab_site ON site USING btree (id_etablissement);


--
-- Name: idx_evenement_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_evenement_personne ON evenement USING btree (id_personne);


--
-- Name: idx_grille_item; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_grille_item ON item USING btree (id_grille);


--
-- Name: idx_grille_modele_grille; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_grille_modele_grille ON grille USING btree (id_grille_modele);


--
-- Name: idx_grille_modele_theme; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_grille_modele_theme ON theme USING btree (id_grille_modele);


--
-- Name: idx_inclusion_prescription; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_inclusion_prescription ON prescription USING btree (id_inclusion);


--
-- Name: idx_investigateur_prescription; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_investigateur_prescription ON prescription USING btree (id_investigateur);


--
-- Name: idx_investigateur_principal_essai_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_investigateur_principal_essai_sigrec ON essai_sigrec USING btree (id_investigateurprincipal);


--
-- Name: idx_lignestock_conditionnement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lignestock_conditionnement ON lignestock USING btree (id_conditionnement);


--
-- Name: idx_lignestock_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lignestock_essai ON lignestock USING btree (id_essai);


--
-- Name: idx_lignestock_pharmacie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lignestock_pharmacie ON lignestock USING btree (id_pharmacie);


--
-- Name: idx_lignestock_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_lignestock_produit ON lignestock USING btree (id_produit);


--
-- Name: idx_mvtstock_conditionnement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_mvtstock_conditionnement ON mvtstock USING btree (id_conditionnement);


--
-- Name: idx_mvtstock_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_mvtstock_essai ON mvtstock USING btree (id_essai);


--
-- Name: idx_mvtstock_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_mvtstock_personne ON mvtstock USING btree (id_personne);


--
-- Name: idx_mvtstock_pharmacie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_mvtstock_pharmacie ON mvtstock USING btree (id_pharmacie);


--
-- Name: idx_mvtstock_pharmaciedest; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_mvtstock_pharmaciedest ON mvt_cession_pui USING btree (id_pharmaciedest);


--
-- Name: idx_mvtstock_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_mvtstock_produit ON mvtstock USING btree (id_produit);


--
-- Name: idx_patient_historique_patient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_patient_historique_patient ON historique_patient USING btree (id_patient);


--
-- Name: idx_patient_inclusion; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_patient_inclusion ON inclusion USING btree (id_patient);


--
-- Name: idx_patient_retourpatient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_patient_retourpatient ON retour_patient USING btree (id_patient);


--
-- Name: idx_personne_habilitation; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_personne_habilitation ON habilitation USING btree (id_personne);


--
-- Name: idx_personne_retourpatient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_personne_retourpatient ON retour_patient USING btree (id_personne);


--
-- Name: idx_pharma_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pharma_essai ON essai USING btree (id_pharma);


--
-- Name: idx_pharmacie_stockage; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pharmacie_stockage ON stockage USING btree (id_pharmacie);


--
-- Name: idx_pharmacien_document_pharmacien; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pharmacien_document_pharmacien ON pharmacien_document_pharmacien USING btree (id_pharmacien);


--
-- Name: idx_pole_service; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_pole_service ON service USING btree (id_pole);


--
-- Name: idx_prescription_conditionnement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_prescription_conditionnement ON prescription_type USING btree (id_conditionnement);


--
-- Name: idx_prescription_dispensation; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_prescription_dispensation ON dispensation USING btree (id_prescription);


--
-- Name: idx_prescription_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_prescription_produit ON prescription_type USING btree (id_produit);


--
-- Name: idx_prescription_produit_prescrit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_prescription_produit_prescrit ON produit_prescrit USING btree (id_prescription);


--
-- Name: idx_prescription_sequence; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_prescription_sequence ON prescription_type USING btree (id_sequence);


--
-- Name: idx_produit_pharmacie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_produit_pharmacie ON produit_detail_stockage USING btree (id_pharmacie);


--
-- Name: idx_produit_prescrit_dispensation_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_produit_prescrit_dispensation_produit ON mvt_dispensation USING btree (id_produitprescrit);


--
-- Name: idx_produit_prescrit_elementtocheck; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_produit_prescrit_elementtocheck ON element_to_check USING btree (id_produitprescrit);


--
-- Name: idx_produit_produit_prescrit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_produit_produit_prescrit ON produit_prescrit USING btree (id_produit);


--
-- Name: idx_produit_retourpatient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_produit_retourpatient ON retour_patient USING btree (id_produit);


--
-- Name: idx_produit_stockage; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_produit_stockage ON produit_detail_stockage USING btree (id_stockage);


--
-- Name: idx_promo_arcpromo; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_promo_arcpromo ON personne USING btree (id_promoteur);


--
-- Name: idx_promo_contactpromo; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_promo_contactpromo ON personne USING btree (id_promoteur);


--
-- Name: idx_promo_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_promo_essai ON essai USING btree (id_promoteur);


--
-- Name: idx_promo_essai_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_promo_essai_sigrec ON essai_sigrec USING btree (id_promoteur);


--
-- Name: idx_promoteur_arc_promoteur_sigrec; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_promoteur_arc_promoteur_sigrec ON arc_promoteur_sigrec USING btree (id_promoteur);


--
-- Name: idx_sequence_prescriptin; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_sequence_prescriptin ON prescription USING btree (id_sequence);


--
-- Name: idx_service_prescription; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_service_prescription ON prescription USING btree (id_service);


--
-- Name: idx_site_service; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_site_service ON service USING btree (id_site);


--
-- Name: idx_stockage_parent; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_stockage_parent ON stockage USING btree (id_stockage_parent);


--
-- Name: idx_suivi_detail_administratif; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_administratif ON essai_detail_administratif_suivi USING btree (id_detail_administratif);


--
-- Name: idx_suivi_detail_autres_documents; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_autres_documents ON essai_detail_autres_documents_suivi USING btree (id_detail_autres_documents);


--
-- Name: idx_suivi_detail_contacts; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_contacts ON essai_detail_contacts_suivi USING btree (id_detail_contacts);


--
-- Name: idx_suivi_detail_dates; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_dates ON essai_detail_dates_suivi USING btree (id_detail_dates);


--
-- Name: idx_suivi_detail_design; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_design ON essai_detail_design_suivi USING btree (id_detail_design);


--
-- Name: idx_suivi_detail_faisabilite; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_faisabilite ON essai_detail_faisabilite_suivi USING btree (id_detail_faisabilite);


--
-- Name: idx_suivi_detail_pharma; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_pharma ON essai_detail_pharma_suivi USING btree (id_detail_pharma);


--
-- Name: idx_suivi_detail_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_produit ON essai_detail_produit_suivi USING btree (id_detail_produit);


--
-- Name: idx_suivi_detail_recherche; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_recherche ON essai_detail_recherche_suivi USING btree (id_detail_recherche);


--
-- Name: idx_suivi_detail_surcout; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_detail_surcout ON essai_detail_surcout_suivi USING btree (id_detail_surcout);


--
-- Name: idx_suivi_essai; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_essai ON essai_suivi USING btree (id_essai);


--
-- Name: idx_suivi_etablissement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_etablissement ON etablissement_suivi USING btree (id_etablissement);


--
-- Name: idx_suivi_evenement; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_evenement ON evenement_suivi USING btree (id_evenement);


--
-- Name: idx_suivi_incident; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_incident ON incident_suivi USING btree (id_incident);


--
-- Name: idx_suivi_patient; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_patient ON patient_suivi USING btree (id_patient);


--
-- Name: idx_suivi_personne; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_personne ON personne_suivi USING btree (id_personne);


--
-- Name: idx_suivi_pharmacie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_pharmacie ON pharmacie_suivi USING btree (id_pharmacie);


--
-- Name: idx_suivi_pole; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_pole ON pole_suivi USING btree (id_pole);


--
-- Name: idx_suivi_produit; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_produit ON produit_suivi USING btree (id_produit);


--
-- Name: idx_suivi_promoteur; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_promoteur ON promoteur_suivi USING btree (id_promoteur);


--
-- Name: idx_suivi_service; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_service ON service_suivi USING btree (id_service);


--
-- Name: idx_suivi_site; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_suivi_site ON site_suivi USING btree (id_site);


--
-- Name: idx_theme_categorie; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_theme_categorie ON categorie USING btree (id_theme);


--
-- Name: idx_theme_regle; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX idx_theme_regle ON regle_surcout USING btree (id_theme);


--
-- Name: fk1174a6939fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evenement
    ADD CONSTRAINT fk1174a6939fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk1174a698800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evenement
    ADD CONSTRAINT fk1174a698800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fk12c037c73a903eb7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordonnancier_fab_reconst
    ADD CONSTRAINT fk12c037c73a903eb7 FOREIGN KEY (id_pharma) REFERENCES pharmacie(id);


--
-- Name: fk17e192d939fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma
    ADD CONSTRAINT fk17e192d939fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk187831f539fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lignestock
    ADD CONSTRAINT fk187831f539fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk187831f54de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lignestock
    ADD CONSTRAINT fk187831f54de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk187831f59d7535de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lignestock
    ADD CONSTRAINT fk187831f59d7535de FOREIGN KEY (id_conditionnement) REFERENCES conditionnement(id);


--
-- Name: fk187831f5a1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lignestock
    ADD CONSTRAINT fk187831f5a1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fk1a6a27cc4285b151; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personne
    ADD CONSTRAINT fk1a6a27cc4285b151 FOREIGN KEY (id_promoteur) REFERENCES promoteur(id);


--
-- Name: fk1b6fa41a1cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription
    ADD CONSTRAINT fk1b6fa41a1cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fk1b6fa41a807681fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription
    ADD CONSTRAINT fk1b6fa41a807681fd FOREIGN KEY (id_sequence) REFERENCES sequence(id);


--
-- Name: fk1b6fa41adb692012; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription
    ADD CONSTRAINT fk1b6fa41adb692012 FOREIGN KEY (id_inclusion) REFERENCES inclusion(id);


--
-- Name: fk1b6fa41aea08da8f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription
    ADD CONSTRAINT fk1b6fa41aea08da8f FOREIGN KEY (id_investigateur) REFERENCES personne(id);


--
-- Name: fk1df3b08e91ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_promoteur_sigrec
    ADD CONSTRAINT fk1df3b08e91ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fk1df3b08ed4112aed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_promoteur_sigrec
    ADD CONSTRAINT fk1df3b08ed4112aed FOREIGN KEY (id_promoteur) REFERENCES promoteur_sigrec(id);


--
-- Name: fk1eabc02f24482761; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacien_pharmacie
    ADD CONSTRAINT fk1eabc02f24482761 FOREIGN KEY (id_pharmacien) REFERENCES personne(id);


--
-- Name: fk1eabc02f4de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacien_pharmacie
    ADD CONSTRAINT fk1eabc02f4de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk20a01eebb314ca7e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_administratif
    ADD CONSTRAINT fk20a01eebb314ca7e FOREIGN KEY (id_detailadministratif) REFERENCES essai_detail_administratif(id);


--
-- Name: fk24399e3f3233d23a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_surcout
    ADD CONSTRAINT fk24399e3f3233d23a FOREIGN KEY (id_detailsurcout) REFERENCES essai_detail_surcout(id);


--
-- Name: fk2694c8427aad8e07; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_suivi
    ADD CONSTRAINT fk2694c8427aad8e07 FOREIGN KEY (id_site) REFERENCES site(id);


--
-- Name: fk2a86a3aa27453d52; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_contacts_suivi
    ADD CONSTRAINT fk2a86a3aa27453d52 FOREIGN KEY (id_detail_contacts) REFERENCES essai_detail_contacts(id);


--
-- Name: fk2e4482387f8764; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bras
    ADD CONSTRAINT fk2e4482387f8764 FOREIGN KEY (id_detail_design) REFERENCES essai_detail_design(id);


--
-- Name: fk2e44824d844dbc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY bras
    ADD CONSTRAINT fk2e44824d844dbc FOREIGN KEY (id_bras_parent) REFERENCES bras(id);


--
-- Name: fk2eaeffed4de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dispensation
    ADD CONSTRAINT fk2eaeffed4de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk2eaeffed87ff1713; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dispensation
    ADD CONSTRAINT fk2eaeffed87ff1713 FOREIGN KEY (id_prescription) REFERENCES prescription(id);


--
-- Name: fk2eaeffedb539f569; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dispensation
    ADD CONSTRAINT fk2eaeffedb539f569 FOREIGN KEY (id_ordonnancier) REFERENCES ordonnancier_dispensation(id);


--
-- Name: fk2fee5dbe27453d52; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY habilitation
    ADD CONSTRAINT fk2fee5dbe27453d52 FOREIGN KEY (id_detail_contacts) REFERENCES essai_detail_contacts(id);


--
-- Name: fk2fee5dbe8800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY habilitation
    ADD CONSTRAINT fk2fee5dbe8800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fk317b13976c82de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item
    ADD CONSTRAINT fk317b13976c82de FOREIGN KEY (id_grille) REFERENCES grille(id);


--
-- Name: fk345311a39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_design
    ADD CONSTRAINT fk345311a39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk3497b8cd45a413; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pole
    ADD CONSTRAINT fk3497b8cd45a413 FOREIGN KEY (id_etablissement) REFERENCES etablissement(id);


--
-- Name: fk35df47cd45a413; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site
    ADD CONSTRAINT fk35df47cd45a413 FOREIGN KEY (id_etablissement) REFERENCES etablissement(id);


--
-- Name: fk40b816e0ae5cce6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dispositif_medical
    ADD CONSTRAINT fk40b816e0ae5cce6 FOREIGN KEY (id) REFERENCES produit(id);


--
-- Name: fk414415ea389dcf45; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_preparationentree
    ADD CONSTRAINT fk414415ea389dcf45 FOREIGN KEY (id) REFERENCES mvt_approvisionnement(id);


--
-- Name: fk414415ea97d4f410; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_preparationentree
    ADD CONSTRAINT fk414415ea97d4f410 FOREIGN KEY (id_ordonnancier) REFERENCES ordonnancier_fab_reconst(id);


--
-- Name: fk46e35c70a1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conditionnement
    ADD CONSTRAINT fk46e35c70a1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fk47ad8dfd24482761; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacien_document_pharmacien
    ADD CONSTRAINT fk47ad8dfd24482761 FOREIGN KEY (id_pharmacien) REFERENCES personne(id);


--
-- Name: fk4c82a77539fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_autres_documents
    ADD CONSTRAINT fk4c82a77539fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk4d5ce8dd4de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacie_suivi
    ADD CONSTRAINT fk4d5ce8dd4de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk4e973f7e39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_etat
    ADD CONSTRAINT fk4e973f7e39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk4f489b4c1cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT fk4f489b4c1cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fk4f489b4c39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT fk4f489b4c39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk4f489b4c4de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT fk4f489b4c4de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk4f489b4c8800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT fk4f489b4c8800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fk4f489b4c9d7535de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT fk4f489b4c9d7535de FOREIGN KEY (id_conditionnement) REFERENCES conditionnement(id);


--
-- Name: fk4f489b4ca1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dotation
    ADD CONSTRAINT fk4f489b4ca1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fk507077c145975293; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sequence
    ADD CONSTRAINT fk507077c145975293 FOREIGN KEY (id_bras_sequence) REFERENCES bras(id);


--
-- Name: fk52f44d239fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident
    ADD CONSTRAINT fk52f44d239fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk547c5a9a8897241c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_commentaire_detail_faisabilite
    ADD CONSTRAINT fk547c5a9a8897241c FOREIGN KEY (id_detailfaisabilite) REFERENCES essai_detail_faisabilite(id);


--
-- Name: fk55375893a81b195e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prevision_sigrec
    ADD CONSTRAINT fk55375893a81b195e FOREIGN KEY (id_essai) REFERENCES essai_sigrec(id);


--
-- Name: fk5a8d447539fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_faisabilite
    ADD CONSTRAINT fk5a8d447539fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk5b30998db77789cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_suivi
    ADD CONSTRAINT fk5b30998db77789cb FOREIGN KEY (id_incident) REFERENCES incident(id);


--
-- Name: fk5b85a4f55c631481; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_investigateur_sigrec
    ADD CONSTRAINT fk5b85a4f55c631481 FOREIGN KEY (id_centre) REFERENCES centre_sigrec(id);


--
-- Name: fk5b85a4f591ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_investigateur_sigrec
    ADD CONSTRAINT fk5b85a4f591ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fk5b85a4f5a81b195e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY co_investigateur_sigrec
    ADD CONSTRAINT fk5b85a4f5a81b195e FOREIGN KEY (id_essai) REFERENCES essai_sigrec(id);


--
-- Name: fk5c5486d3a903eb7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai
    ADD CONSTRAINT fk5c5486d3a903eb7 FOREIGN KEY (id_pharma) REFERENCES pharmacie(id);


--
-- Name: fk5c5486d4285b151; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai
    ADD CONSTRAINT fk5c5486d4285b151 FOREIGN KEY (id_promoteur) REFERENCES promoteur(id);


--
-- Name: fk5c79a91f39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_recherche
    ADD CONSTRAINT fk5c79a91f39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk5d54e13740161942; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categorie
    ADD CONSTRAINT fk5d54e13740161942 FOREIGN KEY (id_theme) REFERENCES theme(id);


--
-- Name: fk5f43710391ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY centre_sigrec
    ADD CONSTRAINT fk5f43710391ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fk60fd9078800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY personne_suivi
    ADD CONSTRAINT fk60fd9078800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fk61102bfd3e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_retour_promoteur
    ADD CONSTRAINT fk61102bfd3e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fk658922294de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stockage
    ADD CONSTRAINT fk658922294de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk65892229b4ed4491; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stockage
    ADD CONSTRAINT fk65892229b4ed4491 FOREIGN KEY (id_stockage_parent) REFERENCES stockage(id);


--
-- Name: fk66a8bf19d08532d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_pharma
    ADD CONSTRAINT fk66a8bf19d08532d FOREIGN KEY (id_detail_pharma) REFERENCES essai_detail_pharma(id);


--
-- Name: fk67c907da3e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_autre_sortie
    ADD CONSTRAINT fk67c907da3e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fk69375c9195ade5f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY theme
    ADD CONSTRAINT fk69375c9195ade5f FOREIGN KEY (id_grille_modele) REFERENCES grille_modele(id);


--
-- Name: fk697c8a0b39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock
    ADD CONSTRAINT fk697c8a0b39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk697c8a0b4de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock
    ADD CONSTRAINT fk697c8a0b4de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fk697c8a0b8800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock
    ADD CONSTRAINT fk697c8a0b8800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fk697c8a0b9d7535de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock
    ADD CONSTRAINT fk697c8a0b9d7535de FOREIGN KEY (id_conditionnement) REFERENCES conditionnement(id);


--
-- Name: fk697c8a0ba1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock
    ADD CONSTRAINT fk697c8a0ba1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fk698a35f0ec2855a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_autres_documents_suivi
    ADD CONSTRAINT fk698a35f0ec2855a FOREIGN KEY (id_detail_autres_documents) REFERENCES essai_detail_autres_documents(id);


--
-- Name: fk6b5fd01a1cf64d65; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_recherche_suivi
    ADD CONSTRAINT fk6b5fd01a1cf64d65 FOREIGN KEY (id_detail_recherche) REFERENCES essai_detail_recherche(id);


--
-- Name: fk6bdaed84285b151; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promoteur_suivi
    ADD CONSTRAINT fk6bdaed84285b151 FOREIGN KEY (id_promoteur) REFERENCES promoteur(id);


--
-- Name: fk6e9d2d16a1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_detail_logistique
    ADD CONSTRAINT fk6e9d2d16a1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fk71236ceb1cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_faisabilite_service
    ADD CONSTRAINT fk71236ceb1cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fk71236ceb3607a129; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_faisabilite_service
    ADD CONSTRAINT fk71236ceb3607a129 FOREIGN KEY (id_essai) REFERENCES essai_detail_faisabilite(id);


--
-- Name: fk75589534f5ae6985; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY donnees_prevision
    ADD CONSTRAINT fk75589534f5ae6985 FOREIGN KEY (id_detail_surcout) REFERENCES essai_detail_surcout(id);


--
-- Name: fk7643c6b57aaafee9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service
    ADD CONSTRAINT fk7643c6b57aaafee9 FOREIGN KEY (id_pole) REFERENCES pole(id);


--
-- Name: fk7643c6b57aad8e07; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service
    ADD CONSTRAINT fk7643c6b57aad8e07 FOREIGN KEY (id_site) REFERENCES site(id);


--
-- Name: fk77228d19ae5cce6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY medicament
    ADD CONSTRAINT fk77228d19ae5cce6 FOREIGN KEY (id) REFERENCES produit(id);


--
-- Name: fk7a6b12f0530f1de7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_faisabilite_suivi
    ADD CONSTRAINT fk7a6b12f0530f1de7 FOREIGN KEY (id_detail_faisabilite) REFERENCES essai_detail_faisabilite(id);


--
-- Name: fk7c0dd1e41aeddf50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evenement_suivi
    ADD CONSTRAINT fk7c0dd1e41aeddf50 FOREIGN KEY (id_evenement) REFERENCES evenement(id);


--
-- Name: fk7c4c166aa1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_document_actes_pharma
    ADD CONSTRAINT fk7c4c166aa1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fk800c37c11a1781c6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_dispensation
    ADD CONSTRAINT fk800c37c11a1781c6 FOREIGN KEY (id_dispensation) REFERENCES dispensation(id);


--
-- Name: fk800c37c13e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_dispensation
    ADD CONSTRAINT fk800c37c13e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fk800c37c16d6ee647; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_dispensation
    ADD CONSTRAINT fk800c37c16d6ee647 FOREIGN KEY (id_produitprescrit) REFERENCES produit_prescrit(id);


--
-- Name: fk823d05e4b314ca7e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_commentaire_detail_administratif_archi
    ADD CONSTRAINT fk823d05e4b314ca7e FOREIGN KEY (id_detailadministratif) REFERENCES essai_detail_administratif(id);


--
-- Name: fk833c86321cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY investigateur_service
    ADD CONSTRAINT fk833c86321cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fk833c8632ea08da8f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY investigateur_service
    ADD CONSTRAINT fk833c8632ea08da8f FOREIGN KEY (id_investigateur) REFERENCES personne(id);


--
-- Name: fk843a3ba939fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_dates
    ADD CONSTRAINT fk843a3ba939fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk8449a7f37aaafee9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pole_suivi
    ADD CONSTRAINT fk8449a7f37aaafee9 FOREIGN KEY (id_pole) REFERENCES pole(id);


--
-- Name: fk8529d883aedb3264; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historique_patient
    ADD CONSTRAINT fk8529d883aedb3264 FOREIGN KEY (id_patient) REFERENCES patient(id);


--
-- Name: fk869711473e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_approvisionnement
    ADD CONSTRAINT fk869711473e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fk8a0ab6487dbf9eef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_produit_suivi
    ADD CONSTRAINT fk8a0ab6487dbf9eef FOREIGN KEY (id_detail_produit) REFERENCES essai_detail_produit(id);


--
-- Name: fk8b91f4e11622e8a9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_regle
    ADD CONSTRAINT fk8b91f4e11622e8a9 FOREIGN KEY (id_regle) REFERENCES regle_surcout(id);


--
-- Name: fk8b91f4e1e0ff5276; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_regle
    ADD CONSTRAINT fk8b91f4e1e0ff5276 FOREIGN KEY (id_item) REFERENCES item(id);


--
-- Name: fk92053556ae5cce6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_therapeutique
    ADD CONSTRAINT fk92053556ae5cce6 FOREIGN KEY (id) REFERENCES produit(id);


--
-- Name: fk93a102d0cd45a413; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma_etablissement
    ADD CONSTRAINT fk93a102d0cd45a413 FOREIGN KEY (id_etablissement) REFERENCES etablissement(id);


--
-- Name: fk93a102d0d08532d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma_etablissement
    ADD CONSTRAINT fk93a102d0d08532d FOREIGN KEY (id_detail_pharma) REFERENCES essai_detail_pharma(id);


--
-- Name: fk9506d324a7a1603; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_dates_suivi
    ADD CONSTRAINT fk9506d324a7a1603 FOREIGN KEY (id_detail_dates) REFERENCES essai_detail_dates(id);


--
-- Name: fk966f83b5ec2855a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_document_detail_autres_documents
    ADD CONSTRAINT fk966f83b5ec2855a FOREIGN KEY (id_detail_autres_documents) REFERENCES essai_detail_autres_documents(id);


--
-- Name: fk98df0126bf757d89; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_administratif_suivi
    ADD CONSTRAINT fk98df0126bf757d89 FOREIGN KEY (id_detail_administratif) REFERENCES essai_detail_administratif(id);


--
-- Name: fk9946e5301cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY service_suivi
    ADD CONSTRAINT fk9946e5301cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fk9a1b427f39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_surcout
    ADD CONSTRAINT fk9a1b427f39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fk9b1204844dc45cda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_commentaire_detail_recherche
    ADD CONSTRAINT fk9b1204844dc45cda FOREIGN KEY (id_detailrecherche) REFERENCES essai_detail_recherche(id);


--
-- Name: fk9c00e17af5ae6985; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_surcout_suivi
    ADD CONSTRAINT fk9c00e17af5ae6985 FOREIGN KEY (id_detail_surcout) REFERENCES essai_detail_surcout(id);


--
-- Name: fk9ea891de3a903eb7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordonnancier_dispensation
    ADD CONSTRAINT fk9ea891de3a903eb7 FOREIGN KEY (id_pharma) REFERENCES pharmacie(id);


--
-- Name: fka145932b39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_administratif
    ADD CONSTRAINT fka145932b39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fka30ce23c4de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma_pharmacie
    ADD CONSTRAINT fka30ce23c4de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fka30ce23cd08532d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma_pharmacie
    ADD CONSTRAINT fka30ce23cd08532d FOREIGN KEY (id_detail_pharma) REFERENCES essai_detail_pharma(id);


--
-- Name: fka6cdb91c39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inclusion
    ADD CONSTRAINT fka6cdb91c39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fka6cdb91caedb3264; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inclusion
    ADD CONSTRAINT fka6cdb91caedb3264 FOREIGN KEY (id_patient) REFERENCES patient(id);


--
-- Name: fka9985b025c631481; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY investigateur_sigrec
    ADD CONSTRAINT fka9985b025c631481 FOREIGN KEY (id_centre) REFERENCES centre_sigrec(id);


--
-- Name: fka9985b0291ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY investigateur_sigrec
    ADD CONSTRAINT fka9985b0291ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fkafea0d444de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacie_site
    ADD CONSTRAINT fkafea0d444de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fkafea0d447aad8e07; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacie_site
    ADD CONSTRAINT fkafea0d447aad8e07 FOREIGN KEY (id_site) REFERENCES site(id);


--
-- Name: fkb01e8d80aedb3264; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patient_suivi
    ADD CONSTRAINT fkb01e8d80aedb3264 FOREIGN KEY (id_patient) REFERENCES patient(id);


--
-- Name: fkb1982697ae5cce6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY preparation
    ADD CONSTRAINT fkb1982697ae5cce6 FOREIGN KEY (id) REFERENCES produit(id);


--
-- Name: fkb63afd47195ade5f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grille
    ADD CONSTRAINT fkb63afd47195ade5f FOREIGN KEY (id_grille_modele) REFERENCES grille_modele(id);


--
-- Name: fkb63afd47f5ae6985; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grille
    ADD CONSTRAINT fkb63afd47f5ae6985 FOREIGN KEY (id_detail_surcout) REFERENCES essai_detail_surcout(id);


--
-- Name: fkb8bc0654d08532d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_pharma_suivi
    ADD CONSTRAINT fkb8bc0654d08532d FOREIGN KEY (id_detail_pharma) REFERENCES essai_detail_pharma(id);


--
-- Name: fkbe86243f807681fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription_type
    ADD CONSTRAINT fkbe86243f807681fd FOREIGN KEY (id_sequence) REFERENCES sequence(id);


--
-- Name: fkbe86243f9d7535de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription_type
    ADD CONSTRAINT fkbe86243f9d7535de FOREIGN KEY (id_conditionnement) REFERENCES conditionnement(id);


--
-- Name: fkbe86243fa1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY prescription_type
    ADD CONSTRAINT fkbe86243fa1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fkc171821f1cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_service
    ADD CONSTRAINT fkc171821f1cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fkc171821fa1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_service
    ADD CONSTRAINT fkc171821fa1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fkc1e4e524a1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_suivi
    ADD CONSTRAINT fkc1e4e524a1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fkc343fea43e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_dispensation_globale
    ADD CONSTRAINT fkc343fea43e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fkc343fea464b18985; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_dispensation_globale
    ADD CONSTRAINT fkc343fea464b18985 FOREIGN KEY (id_dotation) REFERENCES dotation(id);


--
-- Name: fkc38b7dd139fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT fkc38b7dd139fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fkc38b7dd18800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT fkc38b7dd18800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fkc38b7dd19d7535de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT fkc38b7dd19d7535de FOREIGN KEY (id_conditionnement) REFERENCES conditionnement(id);


--
-- Name: fkc38b7dd1a1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT fkc38b7dd1a1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fkc38b7dd1aedb3264; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT fkc38b7dd1aedb3264 FOREIGN KEY (id_patient) REFERENCES patient(id);


--
-- Name: fkc38b7dd1d8bb7cd7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retour_patient
    ADD CONSTRAINT fkc38b7dd1d8bb7cd7 FOREIGN KEY (id_detailstockage) REFERENCES produit_detail_stockage(id);


--
-- Name: fkcaf42771cd45a413; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY etablissement_suivi
    ADD CONSTRAINT fkcaf42771cd45a413 FOREIGN KEY (id_etablissement) REFERENCES etablissement(id);


--
-- Name: fkcd5e3ce839fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_suivi
    ADD CONSTRAINT fkcd5e3ce839fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fkce7075e087ff1713; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_prescrit
    ADD CONSTRAINT fkce7075e087ff1713 FOREIGN KEY (id_prescription) REFERENCES prescription(id);


--
-- Name: fkce7075e09d7535de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_prescrit
    ADD CONSTRAINT fkce7075e09d7535de FOREIGN KEY (id_conditionnement) REFERENCES conditionnement(id);


--
-- Name: fkce7075e0a1ddf650; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_prescrit
    ADD CONSTRAINT fkce7075e0a1ddf650 FOREIGN KEY (id_produit) REFERENCES produit(id);


--
-- Name: fkd04e1a4191ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY promoteur_sigrec
    ADD CONSTRAINT fkd04e1a4191ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fkd0e894cf2bee4c2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvtstock_document
    ADD CONSTRAINT fkd0e894cf2bee4c2b FOREIGN KEY (id_mvtstock) REFERENCES mvtstock(id);


--
-- Name: fkd387012940161942; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regle_surcout
    ADD CONSTRAINT fkd387012940161942 FOREIGN KEY (id_theme) REFERENCES theme(id);


--
-- Name: fkd387012961ea981e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY regle_surcout
    ADD CONSTRAINT fkd387012961ea981e FOREIGN KEY (id_categorie) REFERENCES categorie(id);


--
-- Name: fkd3f3f8e31cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_service
    ADD CONSTRAINT fkd3f3f8e31cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fkd3f3f8e339fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_service
    ADD CONSTRAINT fkd3f3f8e339fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fkd4e62fd5387f8764; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_design_suivi
    ADD CONSTRAINT fkd4e62fd5387f8764 FOREIGN KEY (id_detail_design) REFERENCES essai_detail_design(id);


--
-- Name: fkdb9e6f7191ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY assurance_sigrec
    ADD CONSTRAINT fkdb9e6f7191ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fkdb9e6f71a81b195e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY assurance_sigrec
    ADD CONSTRAINT fkdb9e6f71a81b195e FOREIGN KEY (id_essai) REFERENCES essai_sigrec(id);


--
-- Name: fkddbf4e314614c469; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_sigrec
    ADD CONSTRAINT fkddbf4e314614c469 FOREIGN KEY (id_investigateurprincipal) REFERENCES investigateur_sigrec(id);


--
-- Name: fkddbf4e31d4112aed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_sigrec
    ADD CONSTRAINT fkddbf4e31d4112aed FOREIGN KEY (id_promoteur) REFERENCES promoteur_sigrec(id);


--
-- Name: fkdfdef25e3e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_destruction
    ADD CONSTRAINT fkdfdef25e3e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fke2c002cf5c631481; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_investigateur_sigrec
    ADD CONSTRAINT fke2c002cf5c631481 FOREIGN KEY (id_centre) REFERENCES centre_sigrec(id);


--
-- Name: fke2c002cf91ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_investigateur_sigrec
    ADD CONSTRAINT fke2c002cf91ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fke2c002cfa81b195e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arc_investigateur_sigrec
    ADD CONSTRAINT fke2c002cfa81b195e FOREIGN KEY (id_essai) REFERENCES essai_sigrec(id);


--
-- Name: fke55d5022cd45a413; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pharmacie
    ADD CONSTRAINT fke55d5022cd45a413 FOREIGN KEY (id_etablissement) REFERENCES etablissement(id);


--
-- Name: fke7ea68af39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_contacts
    ADD CONSTRAINT fke7ea68af39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fked8dcda9ba4507a4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit
    ADD CONSTRAINT fked8dcda9ba4507a4 FOREIGN KEY (id_detailproduit) REFERENCES essai_detail_produit(id);


--
-- Name: fkef34b7c14de40194; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_detail_stockage
    ADD CONSTRAINT fkef34b7c14de40194 FOREIGN KEY (id_pharmacie) REFERENCES pharmacie(id);


--
-- Name: fkef34b7c1a24a8716; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_detail_stockage
    ADD CONSTRAINT fkef34b7c1a24a8716 FOREIGN KEY (id_detail_logistique) REFERENCES produit_detail_logistique(id);


--
-- Name: fkef34b7c1d78f7902; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produit_detail_stockage
    ADD CONSTRAINT fkef34b7c1d78f7902 FOREIGN KEY (id_stockage) REFERENCES stockage(id);


--
-- Name: fkf50b7c271a1781c6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY element_to_check
    ADD CONSTRAINT fkf50b7c271a1781c6 FOREIGN KEY (id_dispensation) REFERENCES dispensation(id);


--
-- Name: fkf50b7c276d6ee647; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY element_to_check
    ADD CONSTRAINT fkf50b7c276d6ee647 FOREIGN KEY (id_produitprescrit) REFERENCES produit_prescrit(id);


--
-- Name: fkf50b7c278800c21; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY element_to_check
    ADD CONSTRAINT fkf50b7c278800c21 FOREIGN KEY (id_personne) REFERENCES personne(id);


--
-- Name: fkf50b7c2797d4f410; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY element_to_check
    ADD CONSTRAINT fkf50b7c2797d4f410 FOREIGN KEY (id_ordonnancier) REFERENCES ordonnancier_fab_reconst(id);


--
-- Name: fkf5281d5e91ecd533; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cro_sigrec
    ADD CONSTRAINT fkf5281d5e91ecd533 FOREIGN KEY (id_contact) REFERENCES contact_sigrec(id);


--
-- Name: fkf5281d5ea81b195e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cro_sigrec
    ADD CONSTRAINT fkf5281d5ea81b195e FOREIGN KEY (id_essai) REFERENCES essai_sigrec(id);


--
-- Name: fkf62049cd39fd10dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_produit
    ADD CONSTRAINT fkf62049cd39fd10dc FOREIGN KEY (id_essai) REFERENCES essai(id);


--
-- Name: fkfa113201cf65f51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arcinvestigateur_service
    ADD CONSTRAINT fkfa113201cf65f51 FOREIGN KEY (id_service) REFERENCES service(id);


--
-- Name: fkfa11320dde432bd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY arcinvestigateur_service
    ADD CONSTRAINT fkfa11320dde432bd FOREIGN KEY (id_arcinvestigateur) REFERENCES personne(id);


--
-- Name: fkfd557b77382dd136; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_cession_pui
    ADD CONSTRAINT fkfd557b77382dd136 FOREIGN KEY (id_pharmaciedest) REFERENCES pharmacie(id);


--
-- Name: fkfd557b773e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_cession_pui
    ADD CONSTRAINT fkfd557b773e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fkfe8aa4433e8f1c97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mvt_preparation
    ADD CONSTRAINT fkfe8aa4433e8f1c97 FOREIGN KEY (id) REFERENCES mvtstock(id);


--
-- Name: fkfff0213fa81b195e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY essai_detail_recherche_sigrec
    ADD CONSTRAINT fkfff0213fa81b195e FOREIGN KEY (id_essai) REFERENCES essai_sigrec(id);


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

