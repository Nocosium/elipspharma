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

