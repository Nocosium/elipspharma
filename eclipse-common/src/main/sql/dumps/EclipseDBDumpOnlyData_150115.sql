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

--
-- Data for Name: acl_essai; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO acl_essai (id_personne, id_essai) VALUES (3, 1);
INSERT INTO acl_essai (id_personne, id_essai) VALUES (3, 2);


--
-- Data for Name: acl_pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO acl_pharmacie (id_pharmacie, id_personne) VALUES (2, 3);
INSERT INTO acl_pharmacie (id_pharmacie, id_personne) VALUES (3, 3);
INSERT INTO acl_pharmacie (id_pharmacie, id_personne) VALUES (4, 3);
INSERT INTO acl_pharmacie (id_pharmacie, id_personne) VALUES (5, 3);
INSERT INTO acl_pharmacie (id_pharmacie, id_personne) VALUES (1, 3);


--
-- Data for Name: contact_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (1, NULL, 'adresse', NULL, 'code postal', 'email', 'fax', NULL, NULL, 'Promoteur 1 (Sigrec)', 'telephone', 'ville');
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (2, NULL, NULL, 'MR', NULL, NULL, NULL, 'nom : Arc promoteur', 'prenom', NULL, NULL, NULL);
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (3, NULL, 'Adresse centre 1 ', NULL, '44000', 'mail centre 1', 'fax ', NULL, NULL, 'organisation', 'telephone', 'Nantes');
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (4, NULL, NULL, 'MR', NULL, NULL, NULL, 'nom investigateur ARC', 'prenom investigateur ARC', NULL, NULL, NULL);
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (5, NULL, NULL, 'MME', NULL, NULL, NULL, 'nom investigateur ASSO', 'prenom investigateur ASSO', NULL, NULL, NULL);
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (6, NULL, NULL, 'MLLE', NULL, NULL, NULL, 'nom investigateur co', 'prenom investigateur co', NULL, NULL, NULL);
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (7, NULL, NULL, 'MLLE', NULL, NULL, NULL, 'nom investigateur principal', 'prenom investigateur principal', NULL, NULL, NULL);
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (8, NULL, 'adresse assurance', NULL, '44100', NULL, NULL, NULL, NULL, 'nom assurance', NULL, 'Nantes');
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (9, NULL, 'adresse assurance 2', NULL, '44100', NULL, NULL, NULL, NULL, 'nom assurance 2', NULL, 'Nantes');
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (10, NULL, 'Adresse 1 cro', NULL, '44100', NULL, NULL, 'Nom cro 1', NULL, 'Nom cro 1', NULL, 'Nantes');
INSERT INTO contact_sigrec (id, version, adresse, civilite, codepostal, email, fax, nom, prenom, raisonsociale, telephone, ville) VALUES (11, NULL, 'Adresse 2 cro', NULL, '44100', NULL, NULL, 'Nom cro 2', NULL, 'Nom cro 2', NULL, 'Nantes');


--
-- Data for Name: centre_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO centre_sigrec (id, version, idcentre, nom, numero, numerofiness, id_contact) VALUES (1, NULL, NULL, 'nom centre', 'nombre 1', 'numero finess', 3);


--
-- Data for Name: investigateur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre) VALUES (1, NULL, '101', 10, 'numero adeli investigateur principal', 'titre principal', 7, 1);


--
-- Data for Name: promoteur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO promoteur_sigrec (id, version, identifiant, type, id_contact) VALUES (1, NULL, 'identifiant promoteur 1', 'ACADEMIQUE', 1);


--
-- Data for Name: essai_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_sigrec (id, version, codepromoteur, multicentrique, nbcentres, nom, numidentac, typepromoteur, id_investigateurprincipal, id_promoteur) VALUES (1, NULL, 'num_interne/codePromoteur', NULL, 10, 'Titre abrege', 'EDRACT number', 'ACADEMIQUE', 1, 1);


--
-- Data for Name: arc_investigateur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO arc_investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre, id_essai) VALUES (1, NULL, '104', 10, 'numero adeli investigateur ARC', 'titre ARC', 4, 1, 1);


--
-- Name: arc_investigateur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('arc_investigateur_sigrec_id_seq', 100000, false);


--
-- Data for Name: arc_promoteur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO arc_promoteur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_promoteur) VALUES (1, NULL, 'idArcPromoteur', 2, 'numadeli', 'titre', 2, 1);


--
-- Name: arc_promoteur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('arc_promoteur_sigrec_id_seq', 100000, false);


--
-- Data for Name: etablissement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO etablissement (id, version, adressedirection, codepostal, fax, mail, nom, pays, telephone, ville) VALUES (1, NULL, '', '44000', '', '', 'CHU Nantes', 'France', '', 'Nantes');


--
-- Data for Name: promoteur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (1, NULL, '', 'AMGEN', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (2, NULL, '', 'ANRS', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (3, NULL, '', 'AP-HP', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (4, NULL, '', 'ASTRAZENECA', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (5, NULL, '', 'BAYER Santé', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (6, NULL, '', 'BIOGEN IDEC', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (7, NULL, '', 'BMS', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (8, NULL, '', 'BOEHRINGER INGELHEIM', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (9, NULL, '', 'CELGENE', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (10, NULL, '', 'CH LENS', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (11, NULL, '', 'CH VERSAILLES', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (12, NULL, '', 'CHU ANGERS', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (13, NULL, '', 'CHU BESANCON', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (14, NULL, '', 'CHU BORDEAUX', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (15, NULL, '', 'CHU BREST', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (16, NULL, '', 'CHU LILLE', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (17, NULL, '', 'CHU MONTPELLIER', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (18, NULL, '', 'CHU NANTES', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (19, NULL, '', 'CHU NICE', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (20, NULL, '', 'CHU RENNES', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (21, NULL, '', 'CHU ROUEN', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (22, NULL, '', 'CHU SAINT-ETIENNE', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (23, NULL, '', 'CHU STRASBOURG', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (24, NULL, '', 'CHU TOULOUSE', 'ETABLISSEMENT_SOINS');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (25, NULL, '', 'CNRS', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (26, NULL, '', 'ERYTECH Pharma', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (27, NULL, '', 'EUSA Pharma', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (28, NULL, '', 'GALDERMA', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (29, NULL, '', 'GENENTECH', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (30, NULL, '', 'GENFIT', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (31, NULL, '', 'GERCOR', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (32, NULL, '', 'GETAID', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (33, NULL, '', 'GFM Groupe Français des Myelodysplasies', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (34, NULL, '', 'GILEAD', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (35, NULL, '', 'GOELAMS', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (36, NULL, '', 'GSK', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (37, NULL, '', 'HOSPICES CIVILS DE LYON', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (38, NULL, '', 'IFM', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (39, NULL, '', 'INRA', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (40, NULL, '', 'INSTITUT CURIE', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (41, NULL, '', 'INSTITUT GUSTAVE ROUSSY', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (42, NULL, '', 'INSTITUT PAOLI CALMETTE', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (43, NULL, '', 'IPSEN', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (44, NULL, '', 'IRIS SERVIER', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (45, NULL, '', 'JOHNSON&JOHNSON  JANSSEN-CILAG', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (46, NULL, '', 'LA ROCHE POSAY', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (47, NULL, '', 'LACTALIS', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (48, NULL, '', 'LILLY', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (49, NULL, '', 'MAUNA KEA TECHNOLOGIES', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (50, NULL, '', 'MERCK SERONO', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (51, NULL, '', 'MILLENNIUM PHARMACEUTICALS', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (52, NULL, '', 'MSD', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (53, NULL, '', 'MUNDIPHARMA', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (54, NULL, '', 'NOVARTIS', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (55, NULL, '', 'NOVIMMUNE', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (56, NULL, '', 'NOVO NORDISK', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (57, NULL, '', 'PFIZER', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (58, NULL, '', 'PIERRE FABRE', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (59, NULL, '', 'PTC Therapeutics', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (60, NULL, '', 'ROCHE', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (61, NULL, '', 'SANOFI AVENTIS', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (62, NULL, '', 'SCHERING-PLOUGH', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (63, NULL, '', 'SOCIETE FRANCAISE DE CARDIOLOGIE', 'ACADEMIQUE');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (64, NULL, '', 'UCB Pharma', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (65, NULL, '', 'WYETH', 'INDUSTRIEL');
INSERT INTO promoteur (id, version, identifiant, raisonsociale, type) VALUES (66, NULL, 'identifiant promoteur 1', 'Promoteur 1 (SIGREC)', 'INDUSTRIEL');


--
-- Data for Name: personne; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('INVESTIGATEUR', 1, NULL, '', '', '0967654345', false, 'thierry.biais', 'pierre.durand@eclipse.fr', 'Durand', NULL, 'Pierre', '0987656565', NULL, '', '', 'Docteur', NULL, NULL, NULL, NULL, NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('ARC_PROMOTEUR', 2, NULL, '', '', '0967654345', false, 'jean.dupont', 'jean.dupont@eclipse.fr', 'Dupont', NULL, 'Jean', '0987656565', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('ARC_INVESTIGATEUR', 4, NULL, '', '', '', false, NULL, '', 'Ronald', NULL, 'Vincent', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('CRO', 5, NULL, '', '', '', false, NULL, '', 'QUINTILES', NULL, '', '', NULL, '', 'QUINTILES', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('PROMOTEUR', 6, NULL, '', '', '', false, NULL, '', 'nom du contact promoteur 1', NULL, 'prénom du contact promoteur 1', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('CRO', 7, NULL, '', '', '', false, NULL, '', 'QUINTILES 2', NULL, '', '', NULL, '', 'QUINTILES 2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('CRO', 8, NULL, '', '', '', false, NULL, '', 'QUINTILES 3', NULL, '', '', NULL, '', 'QUINTILES 3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('PROMOTEUR', 9, NULL, '', '', '', false, NULL, '', 'nom du contact promoteur 2', NULL, 'prénom du contact promoteur 2', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('PHARMACIEN', 10, NULL, '', '', '', false, 'pharmacien', '', 'pharmacien', NULL, 'pharmacien', '', NULL, '', '', NULL, NULL, NULL, NULL, 'TITULAIRE', NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('PHARMACIEN', 11, NULL, '', '', '', true, 'administrateur', '', 'administrateur', 'ea617e2de44cac984883b76bd81092b6', 'administrateur', '', NULL, '', '', NULL, NULL, NULL, NULL, 'TITULAIRE', NULL);
INSERT INTO personne (type, id, version, adresse, codepostal, fax, isadmin, login, mail, nom, password, prenom, telephone, telephoneportable, ville, nomsociete, titre, datearriveeservice, datedepartservice, datevalidationformation, typepharmacien, id_promoteur) VALUES ('PHARMACIEN', 3, NULL, '', '', '', true, 'admin', '', 'admin', 'ea617e2de44cac984883b76bd81092b6', 'admin', '', NULL, '', '', NULL, NULL, NULL, NULL, 'TITULAIRE', NULL);


--
-- Data for Name: pole; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pole (id, version, nom, id_etablissement) VALUES (1, NULL, 'IMAD-Institut des maladies de l''appareil digestif', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (2, NULL, 'Institut de Transplantations, Urologie, Néphrologie', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (3, NULL, 'Institut du Thorax', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (4, NULL, 'Pôle Anesthésie-Réanimations', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (5, NULL, 'Pôle Gérontologie Clinique', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (6, NULL, 'Pôle Imageries & Explorations Fonctionnelles', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (7, NULL, 'Pôle Médecine Cancérologie Hématologie', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (8, NULL, 'Pôle Medecine Physique & Réadaptation/Soins de suite', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (9, NULL, 'Pôle Mère Enfant', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (10, NULL, 'Pôle Neurosciences', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (11, NULL, 'Pôle Ostéo-Articulaire', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (12, NULL, 'Pôle Psychiatries', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (13, NULL, 'Pôle Tête & Cou', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (14, NULL, 'Pôle Urgences', 1);
INSERT INTO pole (id, version, nom, id_etablissement) VALUES (15, NULL, 'Recherche-CIC', 1);


--
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO site (id, version, adresse, code, codepostal, nom, ville, id_etablissement) VALUES (1, NULL, '', 'HD/HME', '', 'Hôpital Hôtel-Dieu/Mère Enfant', '', 1);
INSERT INTO site (id, version, adresse, code, codepostal, nom, ville, id_etablissement) VALUES (2, NULL, '', 'HGRL', '', 'Hôpital Guillaume/René Laennec', '', 1);
INSERT INTO site (id, version, adresse, code, codepostal, nom, ville, id_etablissement) VALUES (3, NULL, '', 'HSJ', '', 'Hôpital Saint-Jacques', '', 1);


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (1, NULL, 'GASTRO-ENTEROLOGIE-HEPATOLOGIE', 1, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (2, NULL, 'HEMATOLOGIE', 7, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (3, NULL, 'ONCOLOGIE PEDIATRIQUE', 7, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (4, NULL, 'DERMATOLOGIE', 7, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (5, NULL, 'MEDECINE INTERNE', 7, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (6, NULL, 'CIC GASTRO-ENTEROLOGIE /NUTRITION', 15, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (7, NULL, 'ANESTHESIE HD/JEAN MONNET/HME', 4, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (8, NULL, 'GYNECOLOGIE & OBSTETRIQUE', 9, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (9, NULL, 'MALADIES INFECTIEUSES ET TROPICALES', 7, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (10, NULL, 'NEPHROLOGIE', 2, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (11, NULL, 'OPHTALMOLOGIE', 13, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (12, NULL, 'PEDIATRIE', 9, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (13, NULL, 'RHUMATOLOGIE', 11, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (14, NULL, 'UROLOGIE', 2, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (15, NULL, 'URGENCES', 14, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (16, NULL, 'CTCV Réanimation Chirurgie Thoracique Cardiaque et Vasculaire', 4, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (17, NULL, 'PNEUMOLOGIE', 3, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (18, NULL, 'NEUROLOGIE', 10, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (19, NULL, 'EXPLORATIONS FONCTIONNELLES', 6, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (20, NULL, 'ENDOCRINOLOGIE', 3, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (21, NULL, 'MEDECINE AIGUE GERIATRIQUE', 5, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (22, NULL, 'PSYCHIATRIE 1', 12, NULL);
INSERT INTO service (id, version, nom, id_pole, id_site) VALUES (23, NULL, 'MEDECINE DU SPORT ET DE L''EFFORT', 8, NULL);


--
-- Data for Name: arcinvestigateur_service; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: assurance_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO assurance_sigrec (id, version, datedebutvalidite, datefinvalidite, numerocontrat, id_contact, id_essai) VALUES (1, NULL, '2010-02-02 00:00:00', '2010-03-02 00:00:00', 'numero contrat assurance', 8, 1);
INSERT INTO assurance_sigrec (id, version, datedebutvalidite, datefinvalidite, numerocontrat, id_contact, id_essai) VALUES (2, NULL, '2010-02-02 00:00:00', '2010-03-02 00:00:00', 'numero contrat assurance2 2', 9, 1);


--
-- Name: assurance_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('assurance_sigrec_id_seq', 100000, false);


--
-- Data for Name: pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pharmacie (id, version, adresse, adresselivraison, fax, nom, numordonnancierdisp, numordonnancierfab, responsableprincipal, telephone, id_etablissement) VALUES (1, NULL, '', '', '', 'PUI HOTEL-DIEU RDJ', 0, 0, '', '', 1);
INSERT INTO pharmacie (id, version, adresse, adresselivraison, fax, nom, numordonnancierdisp, numordonnancierfab, responsableprincipal, telephone, id_etablissement) VALUES (2, NULL, '', '', '', 'PUI HOTEL-DIEU UPCO', 0, 0, '', '', 1);
INSERT INTO pharmacie (id, version, adresse, adresselivraison, fax, nom, numordonnancierdisp, numordonnancierfab, responsableprincipal, telephone, id_etablissement) VALUES (3, NULL, '', '', '', 'PUI HGRL', 0, 0, '', '', 1);
INSERT INTO pharmacie (id, version, adresse, adresselivraison, fax, nom, numordonnancierdisp, numordonnancierfab, responsableprincipal, telephone, id_etablissement) VALUES (4, NULL, '', '', '', 'PUI St JACQUES', 0, 0, '', '', 1);
INSERT INTO pharmacie (id, version, adresse, adresselivraison, fax, nom, numordonnancierdisp, numordonnancierfab, responsableprincipal, telephone, id_etablissement) VALUES (5, NULL, '', '', '', 'ARSENAL St JACQUES', 0, 0, '', '', 1);


--
-- Data for Name: essai; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai (id, version, alerteactive, anneecreation, codepromoteur, conv_date, dci, emplacementdossier, etat, libelleproduitevalue, nom, numinterne, typepromoteur, id_pharma, id_promoteur) VALUES (1, 0, true, 2010, 'P01-C', NULL, 'n/a', 'Armoire du fond', 'EN_EVALUATION', 'n/a', 'Essai 1', '2010-01', 'ACADEMIQUE', 1, 1);
INSERT INTO essai (id, version, alerteactive, anneecreation, codepromoteur, conv_date, dci, emplacementdossier, etat, libelleproduitevalue, nom, numinterne, typepromoteur, id_pharma, id_promoteur) VALUES (2, 0, true, 2010, 'P01-C', NULL, 'n/a', 'Meuble de devant', 'EN_COURS', 'n/a', 'Essai 2', '2010-02', 'ACADEMIQUE', 2, 10);


--
-- Data for Name: essai_detail_design; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_design (id, version, typedesign, id_essai) VALUES (1, 0, NULL, 1);
INSERT INTO essai_detail_design (id, version, typedesign, id_essai) VALUES (2, 0, NULL, 2);


--
-- Data for Name: bras; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO bras (id, version, description, nom, type, id_detail_design, id_bras_parent) VALUES (1, NULL, NULL, 'bras n°1', 'BRAS', 1, NULL);
INSERT INTO bras (id, version, description, nom, type, id_detail_design, id_bras_parent) VALUES (3, NULL, NULL, 'Sous-bras 1-1', 'BRAS', 1, 1);
INSERT INTO bras (id, version, description, nom, type, id_detail_design, id_bras_parent) VALUES (4, NULL, NULL, 'Sous-bras 1-2', 'BRAS', 1, 1);


--
-- Name: bras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('bras_id_seq', 100000, false);


--
-- Data for Name: grille_modele; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO grille_modele (id, version, datecreation, datedebut, datefin, nom) VALUES (1, NULL, '2010-10-01 00:00:00', NULL, NULL, 'grille 1');


--
-- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO theme (id, version, libelle, id_grille_modele) VALUES (1, NULL, 'Prestation standard', 1);
INSERT INTO theme (id, version, libelle, id_grille_modele) VALUES (2, NULL, 'Actes pharmaceutiques supplémentaires', 1);
INSERT INTO theme (id, version, libelle, id_grille_modele) VALUES (3, NULL, 'Frais spécifiques (18)', 1);


--
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (1, NULL, 'AUCUN', 'Forfait pharmaceutique (7)', 1);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (2, NULL, 'DISPENSATION', 'Forfait dispensation nominative (8) par ordonnance : Nouvelle', 1);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (3, NULL, 'AUCUN', 'Forfait dispensation nominative (8) par ordonnance : Renouvellement ou fractionnée', 1);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (4, NULL, 'DESTRUCTION', 'Destruction (9)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (5, NULL, 'RECONSTITUTION', 'Reconstitution (10)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (6, NULL, 'AUCUN', 'Conditions particulières de conservation (11)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (7, NULL, 'REETIQUETAGE', 'Ré-étiquetage (12)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (8, NULL, 'AUCUN', 'Visite supplémentaire de suivi (de monitoring) (13)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (9, NULL, 'AUCUN', 'Réception / Livraison de produits supplémentaires (14) Actes IVRS ou @VRS (14 bis)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (10, NULL, 'AUCUN', 'Traçabilité spécifique (15) : MDS et DMI', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (11, NULL, 'PRESCRIPTION', 'Attribution d’un traitement au patient (appel d’un serveur vocal – IVRS) ', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (12, NULL, 'AUCUN', 'Audits (16)', 2);
INSERT INTO categorie (id, version, acte, libelle, id_theme) VALUES (13, NULL, 'AUCUN', 'Autres (17)', 2);


--
-- Name: categorie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('categorie_id_seq', 100000, false);


--
-- Name: centre_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('centre_sigrec_id_seq', 100000, false);


--
-- Data for Name: co_investigateur_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO co_investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre, id_essai) VALUES (1, NULL, '103', 12, 'numero adeli investigateur ASSO', 'titre ASSO', 5, 1, 1);
INSERT INTO co_investigateur_sigrec (id, version, identifiant, intervenantid, numadeli, titre, id_contact, id_centre, id_essai) VALUES (2, NULL, '102', 11, 'numero adeli investigateur co', 'titre co', 6, 1, 1);


--
-- Name: co_investigateur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('co_investigateur_sigrec_id_seq', 100000, false);


--
-- Data for Name: essai_detail_produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_produit (id, version, id_essai) VALUES (1, 0, 1);
INSERT INTO essai_detail_produit (id, version, id_essai) VALUES (2, 0, 2);


--
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO produit (id, version, alerteactive, classetherapeutique, code, conseils, denomination, imputationuf, type, id_detailproduit) VALUES (1, NULL, true, 'classe 2', 'prod1', NULL, 'Produit 1', NULL, 'MEDICAMENT', 1);


--
-- Data for Name: conditionnement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO conditionnement (id, version, contenance, dosage, forme, libelle, modeprescription, nbuniteprescription, quantiteparpatient, unitecontenance, unitedosage, unitegestion, uniteprescription, voieadministration, id_produit) VALUES (1, NULL, NULL, NULL, NULL, 'conditionnement num traitement', 'NUM_TRAITEMENT', 2.00, NULL, NULL, 'MILLIGRAMME', NULL, NULL, NULL, 1);
INSERT INTO conditionnement (id, version, contenance, dosage, forme, libelle, modeprescription, nbuniteprescription, quantiteparpatient, unitecontenance, unitedosage, unitegestion, uniteprescription, voieadministration, id_produit) VALUES (2, NULL, NULL, NULL, NULL, 'conditionnement dose', 'DOSE', 2.00, NULL, NULL, 'MILLILITRE', NULL, NULL, NULL, 1);


--
-- Name: conditionnement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('conditionnement_id_seq', 100000, false);


--
-- Name: contact_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contact_sigrec_id_seq', 100000, false);


--
-- Data for Name: cro_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cro_sigrec (id, version, identifiant, id_contact, id_essai) VALUES (1, NULL, '1', 10, 1);
INSERT INTO cro_sigrec (id, version, identifiant, id_contact, id_essai) VALUES (2, NULL, '2', 11, 1);


--
-- Name: cro_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cro_sigrec_id_seq', 100000, false);


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) VALUES ('create_database_1.31', 'SGL', 'classpath:liquibase/db-changelog.xml', '2015-01-09 15:34:33.117+01', 1, 'EXECUTED', '7:44139d93dbde33df0557d64ab16a9ab6', 'The ''sqlFile'' tag allows you to specify any sql statements and have it stored external in a file. It is useful for complex changes that are not supported through LiquiBase''s automated refactoring tags such as stored procedures.

The sqlFile refact...', 'A sample change log', NULL, '3.0.0-SNP');
INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) VALUES ('create_table_reprise_passif', 'SGL', 'classpath:liquibase/db-changelog.xml', '2015-01-09 15:34:33.556+01', 2, 'EXECUTED', '7:b4c47d489fcc63f729de1c16f4e2796c', 'Create Table, Adds a not-null constraint to an existing table. If a defaultNullValue attribute is passed, all null values for the column will be updated to the passed value before the constraint is applied.', 'Creation de la table reprise_passif', NULL, '3.0.0-SNP');
INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase) VALUES ('upgrade_1.30_vers_1.31', 'SGL', 'classpath:liquibase/db-changelog.xml', '2015-01-12 17:44:55.112+01', 3, 'MARK_RAN', '7:47e853315595994f805062a20b4b2bd7', 'The ''sqlFile'' tag allows you to specify any sql statements and have it stored external in a file. It is useful for complex changes that are not supported through LiquiBase''s automated refactoring tags such as stored procedures.

The sqlFile refact...', 'A sample change log', NULL, '3.0.0-SNP');


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO databasechangeloglock (id, locked, lockgranted, lockedby) VALUES (1, false, NULL, NULL);


--
-- Data for Name: patient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO patient (id, version, adresse, civilite, codepostal, datenaissance, initiales, mail, nom, nomjeunefille, numeroipp, numerosejour, prenom, telephone, ville) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dupond', NULL, 'ipp1', NULL, 'Marcel', NULL, NULL);
INSERT INTO patient (id, version, adresse, civilite, codepostal, datenaissance, initiales, mail, nom, nomjeunefille, numeroipp, numerosejour, prenom, telephone, ville) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Durand', NULL, 'ipp2', NULL, 'Jean', NULL, NULL);


--
-- Data for Name: inclusion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO inclusion (id, version, actif, datedesinclusion, dateinclusion, numinclusion, numrandomisation, id_essai, id_patient) VALUES (1, NULL, true, NULL, '2010-01-01 00:00:00', '1', '1', 1, 1);


--
-- Data for Name: ordonnancier_dispensation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ordonnancier_dispensation (id, version, datemaj, majpar, datedebut, datefin, id_pharma) VALUES (1, 0, '2015-01-14 11:09:52.896', 'netapsys', '2012-01-01', '2012-12-31', 1);


--
-- Data for Name: sequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sequence (id, version, nb_debut, unite_debut, description, nb_fin, unite_fin, nb_duree, nom, type, unite_duree, id_bras_sequence) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sequence 1', 'SEQUENCE', NULL, 4);


--
-- Data for Name: prescription; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prescription (id, version, commentaire, datedebuttraitement, dateprescription, dispense, numprescription, numvisite, id_inclusion, id_investigateur, id_sequence, id_service) VALUES (1, NULL, NULL, '2010-01-01 00:00:00', '2010-01-01 00:00:00', false, 1, NULL, 1, 1, 1, 1);


--
-- Data for Name: dispensation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dispensation (id, version, commentaire, datedispensation, dispense, numordonnancier, id_ordonnancier, id_pharmacie, id_prescription) VALUES (1, 0, NULL, NULL, false, 1, 1, 1, 1);


--
-- Name: dispensation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dispensation_id_seq', 100000, false);


--
-- Data for Name: dispositif_medical; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: essai_detail_surcout; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_surcout (id, version, id_essai) VALUES (1, 0, 1);
INSERT INTO essai_detail_surcout (id, version, id_essai) VALUES (2, 0, 2);


--
-- Data for Name: donnees_prevision; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO donnees_prevision (id, version, nbannees, nbapprovisionnements, nbaudits, nbdestructions, nbdispensations, nbdispensationsrenouvellement, nbinclusions, nbpreparationsnonsteriles, nbpreparationssteriles, nbprescriptions, nbreetiquetages, nbvisitemonitoring, id_detail_surcout) VALUES (1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO donnees_prevision (id, version, nbannees, nbapprovisionnements, nbaudits, nbdestructions, nbdispensations, nbdispensationsrenouvellement, nbinclusions, nbpreparationsnonsteriles, nbpreparationssteriles, nbprescriptions, nbreetiquetages, nbvisitemonitoring, id_detail_surcout) VALUES (2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Name: donnees_prevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('donnees_prevision_id_seq', 100000, false);


--
-- Data for Name: dotation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dotation (id, version, commentaire, datedemande, quantite, traitee, id_conditionnement, id_essai, id_personne, id_pharmacie, id_produit, id_service) VALUES (1, NULL, NULL, '2011-01-01 00:00:00', 2, false, 1, 1, 1, 1, 1, 1);


--
-- Name: dotation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dotation_id_seq', 100000, false);


--
-- Data for Name: ordonnancier_fab_reconst; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: produit_prescrit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO produit_prescrit (id, version, adispenser, nb_debut, unite_debut, description, dispense, dosage, nb_duree, unite_duree, nbfrequence, nbunitetempsfrequence, typeregularite, unitefrequence, nbunitedosage, numtraitement, id_conditionnement, id_prescription, id_produit) VALUES (1, NULL, NULL, 0, 'JOUR', NULL, true, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 1);


--
-- Data for Name: element_to_check; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: element_to_check_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('element_to_check_id_seq', 100000, false);


--
-- Data for Name: essai_detail_administratif; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_administratif (id, version, ac_accord, ac_date, ac_docsdosspapier, ac_nom, ac_numident, ac_type, arc_date, arc_duree, arc_ident, arc_lieu, assur_code_postal, assur_date_debut_validite, assur_date_fin_validite, assur_docsdosspapier, assur_nom_compagnie, assur_numero_avenant, assur_numero_contrat, assur_ville, autorisationdistribution_docsdosspapier, autorisationimportation_docsdosspapier, bropro_docsdosspapier, cpp_accord, cpp_date, cpp_docsdosspapier, cpp_nom, conv_signee, conv_docsdosspapier, proto_docsdosspapier, id_essai) VALUES (1, 0, NULL, NULL, true, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, false, NULL, NULL, '', NULL, false, false, false, NULL, NULL, false, '', false, false, true, 1);
INSERT INTO essai_detail_administratif (id, version, ac_accord, ac_date, ac_docsdosspapier, ac_nom, ac_numident, ac_type, arc_date, arc_duree, arc_ident, arc_lieu, assur_code_postal, assur_date_debut_validite, assur_date_fin_validite, assur_docsdosspapier, assur_nom_compagnie, assur_numero_avenant, assur_numero_contrat, assur_ville, autorisationdistribution_docsdosspapier, autorisationimportation_docsdosspapier, bropro_docsdosspapier, cpp_accord, cpp_date, cpp_docsdosspapier, cpp_nom, conv_signee, conv_docsdosspapier, proto_docsdosspapier, id_essai) VALUES (2, 0, NULL, NULL, false, '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, true, NULL, NULL, '', NULL, false, false, true, NULL, NULL, true, '', true, false, false, 2);


--
-- Data for Name: essai_commentaire_detail_administratif_archi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_commentaire_detail_administratif_archi (id, version, datemaj, majpar, libelle, id_detailadministratif) VALUES (1, 0, '2010-11-01 00:00:00', 'SRM', 'Commentaire archivage n°1.', 1);


--
-- Name: essai_commentaire_detail_administratif_archi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_commentaire_detail_administratif_archi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_faisabilite; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_faisabilite (id, version, concl_convsignee, concl_date, concl_favorable, etude_accordpharmacentrale, etude_achatspui, etude_circuitdef, etude_conditionnement, etude_dmdimportation, etude_disppossible, etude_distribautrespharmas, etude_donneesstabilite, etude_etiquetages, etude_gestionaveugle, etude_preparations, etude_prestapharma, etude_randompharma, etude_randomengarde, etude_reconstitutions, etude_referencement, etude_soctranspdef, etude_suivistocks, etude_suivitemp, id_essai) VALUES (1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO essai_detail_faisabilite (id, version, concl_convsignee, concl_date, concl_favorable, etude_accordpharmacentrale, etude_achatspui, etude_circuitdef, etude_conditionnement, etude_dmdimportation, etude_disppossible, etude_distribautrespharmas, etude_donneesstabilite, etude_etiquetages, etude_gestionaveugle, etude_preparations, etude_prestapharma, etude_randompharma, etude_randomengarde, etude_reconstitutions, etude_referencement, etude_soctranspdef, etude_suivistocks, etude_suivitemp, id_essai) VALUES (2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: essai_commentaire_detail_faisabilite; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) VALUES ('FAISABILITE_CONCL', 1, 0, '2010-11-15 00:00:00', 'SRM', 'Mon premier commentaire sur la conclusion.', 1);
INSERT INTO essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) VALUES ('FAISABILITE_CONCL', 2, 0, '2010-11-16 00:00:00', 'SRM', 'Mon deuxieme commentaire sur la conclusion.', 1);
INSERT INTO essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) VALUES ('FAISABILITE_CONCL', 3, 0, '2010-11-10 00:00:00', 'SRM', 'Mon premier commentaire sur la conclusion.', 2);
INSERT INTO essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) VALUES ('FAISABILITE_ACHAT_PROD', 4, 0, '2010-11-10 00:00:00', 'SRM', 'Mon premier commentaire sur les achats produits.', 1);
INSERT INTO essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) VALUES ('FAISABILITE_DISTRIB_PHARMA', 5, 0, '2010-11-10 00:00:00', 'SRM', 'Mon premier commentaire sur les distributions aux autres pharmacies.', 1);
INSERT INTO essai_commentaire_detail_faisabilite (type, id, version, datemaj, majpar, libelle, id_detailfaisabilite) VALUES ('FAISABILITE_ETUDE', 6, 0, '2010-11-10 00:00:00', 'SRM', 'Mon premier commentaire global sur l étude de faisabilité.', 1);


--
-- Name: essai_commentaire_detail_faisabilite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_commentaire_detail_faisabilite_id_seq', 100000, false);


--
-- Data for Name: essai_detail_recherche; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_recherche (id, version, motscles, naturerecherche, numenregistrement, objetrecherche, phaserecherche, thematique, titreprotocole, typerecherche, id_essai) VALUES (1, 0, 'motClé1, motClé2, motClé3', 'PHARMACOLOGIE', 'SIGREC-001', 'IMAGERIE', 'I', 'UROLOGIE', 'Mon premier protocole.', 'OBSERVATIONNELLE', 1);
INSERT INTO essai_detail_recherche (id, version, motscles, naturerecherche, numenregistrement, objetrecherche, phaserecherche, thematique, titreprotocole, typerecherche, id_essai) VALUES (2, 0, 'motClé2', 'PHARMACOLOGIE', 'SIGREC-001', 'IMAGERIE', 'III', 'UROLOGIE', 'Mon deuxième protocole.', 'OBSERVATIONNELLE', 2);


--
-- Data for Name: essai_commentaire_detail_recherche; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_commentaire_detail_recherche (id, version, datemaj, majpar, libelle, id_detailrecherche) VALUES (1, 0, '2010-10-01 00:00:00', 'SRM', 'Commentaire n°1.', 1);
INSERT INTO essai_commentaire_detail_recherche (id, version, datemaj, majpar, libelle, id_detailrecherche) VALUES (2, 0, '2010-11-01 00:00:00', 'SRM', 'Commentaire n°2.', 1);
INSERT INTO essai_commentaire_detail_recherche (id, version, datemaj, majpar, libelle, id_detailrecherche) VALUES (3, 0, '2010-01-01 00:00:00', 'SRM', 'Commentaire création.', 2);


--
-- Name: essai_commentaire_detail_recherche_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_commentaire_detail_recherche_id_seq', 100000, false);


--
-- Name: essai_detail_administratif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_administratif_id_seq', 100000, false);


--
-- Data for Name: essai_detail_administratif_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_administratif_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_administratif_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_autres_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_autres_documents (id, version, id_essai) VALUES (1, 0, 1);
INSERT INTO essai_detail_autres_documents (id, version, id_essai) VALUES (2, 0, 2);


--
-- Name: essai_detail_autres_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_autres_documents_id_seq', 100000, false);


--
-- Data for Name: essai_detail_autres_documents_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_autres_documents_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_autres_documents_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_contacts (id, version, id_essai) VALUES (1, 0, 1);
INSERT INTO essai_detail_contacts (id, version, id_essai) VALUES (2, 0, 2);


--
-- Name: essai_detail_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_contacts_id_seq', 100000, false);


--
-- Data for Name: essai_detail_contacts_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_contacts_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_contacts_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_dates; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_dates (id, version, activation, activationprev, cloture, debutetude, debutetudeprev, debutinclusion, debutinclusionprev, findispensations, finetude, finetudeprev, fininclusion, fininclusionprev, precloture, datereception, id_essai) VALUES (1, 0, NULL, NULL, NULL, NULL, '2010-01-01 00:00:00', NULL, NULL, NULL, NULL, '2011-01-31 00:00:00', NULL, NULL, NULL, NULL, 1);
INSERT INTO essai_detail_dates (id, version, activation, activationprev, cloture, debutetude, debutetudeprev, debutinclusion, debutinclusionprev, findispensations, finetude, finetudeprev, fininclusion, fininclusionprev, precloture, datereception, id_essai) VALUES (2, 0, NULL, NULL, NULL, NULL, '2010-11-01 00:00:00', NULL, NULL, NULL, NULL, '2011-06-30 00:00:00', NULL, NULL, NULL, NULL, 2);


--
-- Name: essai_detail_dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_dates_id_seq', 100000, false);


--
-- Data for Name: essai_detail_dates_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_dates_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_dates_suivi_id_seq', 100000, false);


--
-- Name: essai_detail_design_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_design_id_seq', 100000, false);


--
-- Data for Name: essai_detail_design_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_design_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_design_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_etat; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_etat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_etat_id_seq', 100000, false);


--
-- Name: essai_detail_faisabilite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_faisabilite_id_seq', 100000, false);


--
-- Data for Name: essai_detail_faisabilite_service; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: essai_detail_faisabilite_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_faisabilite_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_faisabilite_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_detail_pharma; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_pharma (id, version, formationspecifique, envoistraitement, gestionretour, modalitedestruction, modalitereception, responsabilitecommande, responsabiliteinsu, responsabiliterandomisation, typeretour, aidedispensation, conseilpatient, contreetiquette, destinataireinvestigateur, destinatairepatient, destinataireservice, informationconditionnement, numerotationconditionnement, tracabilitepatient, typedispensation, dureetotalepatientprevue, dureetotaleprevue, nbcentresprevus, nbpatientsprevus, nbpatientsprevustotal, numerocentre, qualiteinsu, typeproduitevalue, unitedureetotalepatientprevue, unitedureetotaleprevue, id_essai) VALUES (1, 0, NULL, NULL, NULL, NULL, 'aucune', NULL, NULL, NULL, NULL, NULL, 'aucun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NOMINATIVE', NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO essai_detail_pharma (id, version, formationspecifique, envoistraitement, gestionretour, modalitedestruction, modalitereception, responsabilitecommande, responsabiliteinsu, responsabiliterandomisation, typeretour, aidedispensation, conseilpatient, contreetiquette, destinataireinvestigateur, destinatairepatient, destinataireservice, informationconditionnement, numerotationconditionnement, tracabilitepatient, typedispensation, dureetotalepatientprevue, dureetotaleprevue, nbcentresprevus, nbpatientsprevus, nbpatientsprevustotal, numerocentre, qualiteinsu, typeproduitevalue, unitedureetotalepatientprevue, unitedureetotaleprevue, id_essai) VALUES (2, 0, NULL, NULL, NULL, NULL, 'aucune', NULL, NULL, NULL, NULL, NULL, 'aucun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GLOBALE', NULL, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: essai_detail_pharma_etablissement; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_pharma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_pharma_id_seq', 100000, false);


--
-- Data for Name: essai_detail_pharma_pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_pharma_pharmacie (id_detail_pharma, id_pharmacie) VALUES (1, 2);
INSERT INTO essai_detail_pharma_pharmacie (id_detail_pharma, id_pharmacie) VALUES (2, 3);


--
-- Data for Name: essai_detail_pharma_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_pharma_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_pharma_suivi_id_seq', 100000, false);


--
-- Name: essai_detail_produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_produit_id_seq', 100000, false);


--
-- Data for Name: essai_detail_produit_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_produit_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_produit_suivi_id_seq', 100000, false);


--
-- Name: essai_detail_recherche_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_recherche_id_seq', 100000, false);


--
-- Data for Name: essai_detail_recherche_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO essai_detail_recherche_sigrec (id, version, naturerecherche, numenregistrement, objetrecherche, phaserecherche, qualiteinsu, titreprotocole, typerecherche, id_essai) VALUES (1, NULL, 'DEPISTAGE', 'num_sigrec', 'IMAGERIE', 'IIa', 'ESSAI_DOUBLE_AVEUGLE', 'Titre complet', 'OBSERVATIONNELLE', 1);


--
-- Name: essai_detail_recherche_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_recherche_sigrec_id_seq', 100000, false);


--
-- Data for Name: essai_detail_recherche_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_recherche_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_recherche_suivi_id_seq', 100000, false);


--
-- Name: essai_detail_surcout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_surcout_id_seq', 100000, false);


--
-- Data for Name: essai_detail_surcout_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_detail_surcout_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_detail_surcout_suivi_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_administratif; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_document_detail_administratif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_administratif_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_autres_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_document_detail_autres_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_autres_documents_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_pharma; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_document_detail_pharma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_document_detail_pharma_id_seq', 100000, false);


--
-- Data for Name: essai_document_detail_surcout; Type: TABLE DATA; Schema: public; Owner: postgres
--



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

INSERT INTO essai_service (id_essai, id_service) VALUES (1, 1);


--
-- Name: essai_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_sigrec_id_seq', 100000, false);


--
-- Data for Name: essai_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: essai_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('essai_suivi_id_seq', 100000, false);


--
-- Name: etablissement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('etablissement_id_seq', 100004, true);


--
-- Data for Name: etablissement_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: etablissement_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('etablissement_suivi_id_seq', 100001, true);


--
-- Data for Name: evenement; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: evenement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evenement_id_seq', 100000, false);


--
-- Data for Name: evenement_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: evenement_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evenement_suivi_id_seq', 100000, false);


--
-- Data for Name: grille; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: grille_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grille_id_seq', 100000, false);


--
-- Name: grille_modele_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grille_modele_id_seq', 100000, false);


--
-- Data for Name: habilitation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO habilitation (id, version, active, creepar, desactivepar, creele, desactivele, desactivable, droit, id_detail_contacts, id_personne) VALUES (1, NULL, true, 'SRM', NULL, '2010-11-01 00:00:00', NULL, false, 'PHARMACIEN_TITULAIRE', 1, 3);
INSERT INTO habilitation (id, version, active, creepar, desactivepar, creele, desactivele, desactivable, droit, id_detail_contacts, id_personne) VALUES (2, NULL, true, 'SRM', NULL, '2010-12-03 00:00:00', NULL, true, 'ARC_PROMOTEUR', 1, 2);
INSERT INTO habilitation (id, version, active, creepar, desactivepar, creele, desactivele, desactivable, droit, id_detail_contacts, id_personne) VALUES (3, NULL, true, 'SRM', NULL, '2010-12-03 00:00:00', NULL, true, 'CRO', 1, 5);
INSERT INTO habilitation (id, version, active, creepar, desactivepar, creele, desactivele, desactivable, droit, id_detail_contacts, id_personne) VALUES (4, NULL, true, 'SLB', NULL, '2010-12-03 00:00:00', NULL, true, 'INVESTIGATEUR_PRINCIPAL', 1, 1);


--
-- Name: habilitation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('habilitation_id_seq', 100000, false);


--
-- Data for Name: historique_patient; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: historique_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('historique_patient_id_seq', 100000, false);


--
-- Data for Name: incident; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: incident_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('incident_id_seq', 100000, false);


--
-- Data for Name: incident_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: incident_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('incident_suivi_id_seq', 100000, false);


--
-- Name: inclusion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inclusion_id_seq', 100000, false);


--
-- Data for Name: investigateur_service; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: investigateur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('investigateur_sigrec_id_seq', 100000, false);


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('item_id_seq', 100000, false);


--
-- Data for Name: regle_surcout; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: item_regle; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: lignestock; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: lignestock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lignestock_id_seq', 1, false);


--
-- Data for Name: medicament; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO medicament (conditionnement, dci, etiquetage, fabrication, mds, nature, reconstitutionpsm, reconstitutionsimple, stupefiant, id) VALUES (NULL, 'paracetamol', NULL, NULL, false, NULL, NULL, NULL, true, 1);


--
-- Data for Name: mvtstock; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_approvisionnement; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_autre_sortie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_cession_pui; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_destruction; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_dispensation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_dispensation_globale; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_preparation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_preparationentree; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvt_retour_promoteur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: mvtstock_document; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: mvtstock_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mvtstock_document_id_seq', 100000, false);


--
-- Name: mvtstock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mvtstock_id_seq', 100000, true);


--
-- Name: ordonnancier_dispensation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ordonnancier_dispensation_id_seq', 100000, false);


--
-- Name: ordonnancier_fab_reconst_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ordonnancier_fab_reconst_id_seq', 100000, false);


--
-- Name: patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_id_seq', 100000, false);


--
-- Data for Name: patient_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: patient_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patient_suivi_id_seq', 100000, false);


--
-- Name: personne_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('personne_id_seq', 100000, true);


--
-- Data for Name: personne_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: personne_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('personne_suivi_id_seq', 100000, false);


--
-- Name: pharmacie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pharmacie_id_seq', 100021, true);


--
-- Data for Name: pharmacie_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pharmacie_site (id_pharmacie, id_site) VALUES (1, 1);
INSERT INTO pharmacie_site (id_pharmacie, id_site) VALUES (2, 1);
INSERT INTO pharmacie_site (id_pharmacie, id_site) VALUES (3, 2);
INSERT INTO pharmacie_site (id_pharmacie, id_site) VALUES (4, 3);
INSERT INTO pharmacie_site (id_pharmacie, id_site) VALUES (5, 3);


--
-- Data for Name: pharmacie_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pharmacie_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pharmacie_suivi_id_seq', 100101, true);


--
-- Data for Name: pharmacien_document_pharmacien; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pharmacien_document_pharmacien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pharmacien_document_pharmacien_id_seq', 1, false);


--
-- Data for Name: pharmacien_pharmacie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pharmacien_pharmacie (id_pharmacien, id_pharmacie) VALUES (3, 1);


--
-- Name: pole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pole_id_seq', 100003, true);


--
-- Data for Name: pole_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: pole_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pole_suivi_id_seq', 100000, true);


--
-- Data for Name: preparation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: prescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prescription_id_seq', 100000, false);


--
-- Data for Name: prescription_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prescription_type (id, version, nb_debut, unite_debut, description, dosage, nb_duree, unite_duree, nbfrequence, nbunitetempsfrequence, typeregularite, unitefrequence, nbunitedosage, id_conditionnement, id_produit, id_sequence) VALUES (1, NULL, 3, 'JOUR', NULL, NULL, 2, 'SEMAINE', 0, NULL, NULL, NULL, NULL, 1, 1, 1);


--
-- Name: prescription_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prescription_type_id_seq', 100000, false);


--
-- Data for Name: prevision_sigrec; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prevision_sigrec (id, version, datedebut, datefin, dureetotale, nbcentres, id_essai) VALUES (1, NULL, '2010-10-08 00:00:00', '2010-10-10 00:00:00', 10, 10, 1);


--
-- Name: prevision_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prevision_sigrec_id_seq', 100000, false);


--
-- Data for Name: produit_detail_logistique; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO produit_detail_logistique (id, version, abrilumiere, comptabiliteretour, conditionconservation, delaialerteavtdateexpiration, miseadispo, produitnonfourni, quantiteautorise, stockseuil, id_produit) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Name: produit_detail_logistique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_detail_logistique_id_seq', 100000, false);


--
-- Data for Name: stockage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (1, NULL, NULL, NULL, NULL, NULL, 'Armoire A', NULL, 1);
INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (2, NULL, NULL, NULL, NULL, NULL, 'Armoire A1', 1, 1);
INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (3, NULL, NULL, NULL, NULL, NULL, 'Armoire A2', 1, 1);
INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (4, NULL, NULL, NULL, NULL, NULL, 'Armoire A21', 3, 1);
INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (5, NULL, NULL, NULL, NULL, NULL, 'Armoire A22', 3, 1);
INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (6, NULL, NULL, NULL, NULL, NULL, 'Armoire B', NULL, 1);
INSERT INTO stockage (id, version, conservation, identifiantenregistreurtemp, identifiantsondetemp, identifiantstockage, nom, id_stockage_parent, id_pharmacie) VALUES (7, NULL, NULL, NULL, NULL, NULL, 'Armoire B1', 6, 1);


--
-- Data for Name: produit_detail_stockage; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO produit_detail_stockage (id, version, identifiantstockage, type, id_detail_logistique, id_pharmacie, id_stockage) VALUES (1, NULL, 'id stock', 'STOCK', 1, 1, 1);


--
-- Name: produit_detail_stockage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_detail_stockage_id_seq', 100000, false);


--
-- Data for Name: produit_document_actes_pharma; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: produit_document_actes_pharma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_document_actes_pharma_id_seq', 100000, false);


--
-- Name: produit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_id_seq', 100000, false);


--
-- Name: produit_prescrit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_prescrit_id_seq', 100000, false);


--
-- Data for Name: produit_service; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: produit_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: produit_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('produit_suivi_id_seq', 100000, false);


--
-- Data for Name: produit_therapeutique; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: promoteur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promoteur_id_seq', 100000, false);


--
-- Name: promoteur_sigrec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promoteur_sigrec_id_seq', 100000, false);


--
-- Data for Name: promoteur_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: promoteur_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('promoteur_suivi_id_seq', 100000, false);


--
-- Name: regle_surcout_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('regle_surcout_id_seq', 100000, false);


--
-- Data for Name: reprise_passif; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: retour_patient; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: retour_patient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('retour_patient_id_seq', 100000, false);


--
-- Name: sequence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sequence_id_seq', 100000, false);


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_id_seq', 100002, true);


--
-- Data for Name: service_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: service_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('service_suivi_id_seq', 100001, true);


--
-- Name: site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_id_seq', 100003, true);


--
-- Data for Name: site_suivi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: site_suivi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_suivi_id_seq', 100003, true);


--
-- Name: stockage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stockage_id_seq', 100000, false);


--
-- Name: theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('theme_id_seq', 100000, false);


--
-- PostgreSQL database dump complete
--

