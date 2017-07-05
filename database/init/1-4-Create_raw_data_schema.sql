﻿CREATE SCHEMA raw_data;

SET SEARCH_PATH = raw_data, public;

--
-- WARNING: The DATASET_ID, PROVIDER_ID columns are used by the system and should keep their names.
--

-- Sequence: raw_data.jdd_id_seq

-- DROP SEQUENCE raw_data.jdd_id_seq;

CREATE SEQUENCE raw_data.jdd_id_seq
INCREMENT 1
MINVALUE 1
MAXVALUE 9223372036854775807
START 5
CACHE 1;
ALTER TABLE raw_data.jdd_id_seq
	OWNER TO admin;
GRANT ALL ON SEQUENCE raw_data.jdd_id_seq TO admin;
GRANT ALL ON SEQUENCE raw_data.jdd_id_seq TO ogam;


-- Table: raw_data.jdd

-- DROP TABLE raw_data.jdd;

CREATE TABLE raw_data.jdd
(
	id integer NOT NULL DEFAULT nextval('jdd_id_seq'::regclass), -- Technical id of the jdd
	status character varying(16) NOT NULL, -- jdd status, can be 'active' or 'deleted' (deleted, but the row is kept)
	provider_id character varying(36), -- The data provider identifier (country code or organisation name)
	user_login character varying(50), -- The login of the user doing the submission
	model_id character varying(19), -- Id of the data model in which the jdd is delivered
	created_at timestamp without time zone DEFAULT now(), -- jdd creation timestamp (delivery timestamp is in submission._creationdt)
	data_updated_at timestamp without time zone DEFAULT now(), -- DATA last edition timestamp
	CONSTRAINT pk_jdd_id PRIMARY KEY (id),

	CONSTRAINT fk_provider_id FOREIGN KEY (provider_id)
	REFERENCES website.providers (id) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE SET NULL ,

	CONSTRAINT fk_user_login FOREIGN KEY (user_login)
	REFERENCES website.users (user_login) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE SET NULL,

	CONSTRAINT fk_model_id FOREIGN KEY (model_id)
	REFERENCES metadata.model (id) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE SET NULL
)
WITH (
OIDS=FALSE
);
ALTER TABLE raw_data.jdd
	OWNER TO admin;

GRANT ALL ON TABLE raw_data.jdd TO admin;
GRANT ALL ON TABLE raw_data.jdd TO ogam;

COMMENT ON COLUMN raw_data.jdd.id IS 'Technical id of the jdd';
COMMENT ON COLUMN raw_data.jdd.status IS 'jdd status, can be ''empty'' (jdd created and active, no DSR nor DEE), ''active'' (at least the DSR or the DEE is created), ''deleted'' (deleted, but the row is kept)';
COMMENT ON COLUMN raw_data.jdd.provider_id IS 'The data provider identifier (country code or organisation name)';
COMMENT ON COLUMN raw_data.jdd.user_login IS 'The login of the user who created the jdd';
COMMENT ON COLUMN raw_data.jdd.model_id IS 'Id of the data model in which the jdd is delivered';
COMMENT ON COLUMN raw_data.jdd.created_at IS 'jdd creation timestamp (delivery timestamp is in submission._creationdt)';
COMMENT ON COLUMN raw_data.jdd.data_updated_at IS 'DATA last edition timestamp';


-- Table: raw_data.jdd_field

-- DROP TABLE raw_data.jdd_field;

CREATE TABLE raw_data.jdd_field
(
	jdd_id integer NOT NULL, -- foreign key to the jdd
	key character varying(255) NOT NULL, -- key for the field
	type character varying(20) NOT NULL, -- type of the data stored
	value_string character varying(255), -- value if of type string
	value_text text, -- value if of type text
	value_integer integer, -- value if of type integer
	value_float double precision, -- value if of type float
	CONSTRAINT pk_jdd_field_id PRIMARY KEY (jdd_id, key),

	CONSTRAINT fk_jdd_id FOREIGN KEY (jdd_id)
	REFERENCES raw_data.jdd (id) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
OIDS=FALSE
);
ALTER TABLE raw_data.jdd_field
	OWNER TO admin;

GRANT ALL ON TABLE raw_data.jdd_field TO admin;
GRANT ALL ON TABLE raw_data.jdd_field TO ogam;

COMMENT ON COLUMN raw_data.jdd_field.jdd_id IS 'foreign key to the jdd';
COMMENT ON COLUMN raw_data.jdd_field.key IS 'key for the field';
COMMENT ON COLUMN raw_data.jdd_field.type IS 'type of the data stored';
COMMENT ON COLUMN raw_data.jdd_field.value_string IS 'value if of type string';
COMMENT ON COLUMN raw_data.jdd_field.value_text IS 'value if of type text';
COMMENT ON COLUMN raw_data.jdd_field.value_integer IS  'value if of type integer';
COMMENT ON COLUMN raw_data.jdd_field.value_float IS  'value if of type float';




DROP TABLE IF EXISTS SUBMISSION_FILE CASCADE;
DROP TABLE IF EXISTS SUBMISSION CASCADE;
DROP SEQUENCE IF EXISTS submission_id_seq;
DROP TABLE IF EXISTS CHECK_ERROR CASCADE;


/*==============================================================*/
/* Sequence : SUBMISSION_ID                                     */
/*==============================================================*/

CREATE SEQUENCE submission_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;


/*==============================================================*/
/* Table : SUBMISSION                                           */
/*==============================================================*/
create table IF NOT EXISTS SUBMISSION (
SUBMISSION_ID        INT4                 not null default nextval('submission_id_seq'),
JDD_ID			INTEGER,
STEP		 		 VARCHAR(36)          null,
STATUS    			 VARCHAR(36)          null,
PROVIDER_ID          VARCHAR(36)          not null,
DATASET_ID           VARCHAR(36)          not null,
USER_LOGIN           VARCHAR(50)          not null,
_CREATIONDT          DATE                 null DEFAULT current_timestamp,
_VALIDATIONDT        DATE                 null DEFAULT current_timestamp,
constraint PK_SUBMISSION primary key (SUBMISSION_ID),
CONSTRAINT fk_jdd_id FOREIGN KEY (jdd_id)
REFERENCES raw_data.jdd (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT
);

COMMENT ON COLUMN SUBMISSION.SUBMISSION_ID IS 'The identifier of the submission';
COMMENT ON COLUMN SUBMISSION.JDD_ID IS 'Reference of the jdd of the submission';
COMMENT ON COLUMN SUBMISSION.STEP IS 'The submission step (INIT, INSERT, CHECK, VALIDATE, CANCEL)';
COMMENT ON COLUMN SUBMISSION.STATUS IS 'The submission status (OK, WARNING, ERROR, CRASH)';
COMMENT ON COLUMN SUBMISSION.PROVIDER_ID IS 'The data provider identifier (country code or organisation name)';
COMMENT ON COLUMN SUBMISSION.DATASET_ID IS 'The dataset identifier';
COMMENT ON COLUMN SUBMISSION.USER_LOGIN IS 'The login of the user doing the submission';
COMMENT ON COLUMN SUBMISSION._CREATIONDT IS 'The date of submission';
COMMENT ON COLUMN SUBMISSION._VALIDATIONDT IS 'The date of validation';

/*==============================================================*/
/* Table : SUBMISSION_FILE                                      */
/*==============================================================*/
create table SUBMISSION_FILE (
SUBMISSION_ID        INT4                 not null,
FILE_TYPE            VARCHAR(36)          not null,
FILE_NAME            VARCHAR(4000)         not null,
NB_LINE              INT4                 null,
constraint PK_SUBMISSION_FILE primary key (SUBMISSION_ID, FILE_TYPE)
);

COMMENT ON COLUMN SUBMISSION_FILE.SUBMISSION_ID IS 'The identifier of the submission';
COMMENT ON COLUMN SUBMISSION_FILE.FILE_TYPE IS 'The type of file (reference a DATASET_FILES.FORMAT)';
COMMENT ON COLUMN SUBMISSION_FILE.FILE_NAME IS 'The name of the file';
COMMENT ON COLUMN SUBMISSION_FILE.NB_LINE IS 'The number of lines of data in the file (excluding comment and empty lines)';


/*==============================================================*/
/* Table : CHECK_ERROR                                          */
/*==============================================================*/
create  table CHECK_ERROR (
CHECK_ERROR_ID       serial               not null,
CHECK_ID             INT4                 not null,
SUBMISSION_ID        INT4                 not null,
LINE_NUMBER          INT4                 not null,
SRC_FORMAT           VARCHAR(36)          null,
SRC_DATA             VARCHAR(36)          null,
PROVIDER_ID          VARCHAR(36)          null,
PLOT_CODE            VARCHAR(36)          null,
FOUND_VALUE          VARCHAR(255)         null,
EXPECTED_VALUE       VARCHAR(255)         null,
ERROR_MESSAGE        VARCHAR(4000)        null,
_CREATIONDT          DATE                 null  DEFAULT current_timestamp,
constraint PK_CHECK_ERROR primary key (CHECK_ID, SUBMISSION_ID, CHECK_ERROR_ID)
);

COMMENT ON COLUMN CHECK_ERROR.CHECK_ERROR_ID IS 'The identifier of the error (autoincrement)';
COMMENT ON COLUMN CHECK_ERROR.CHECK_ID IS 'The identifier of the check';
COMMENT ON COLUMN CHECK_ERROR.SUBMISSION_ID IS 'The identifier of the submission checked';
COMMENT ON COLUMN CHECK_ERROR.LINE_NUMBER IS 'The line number of the data in the original CSV file';
COMMENT ON COLUMN CHECK_ERROR.SRC_FORMAT IS 'The logical name the data source (CSV file or table name)';
COMMENT ON COLUMN CHECK_ERROR.SRC_DATA IS 'The logical name of the data (column)';
COMMENT ON COLUMN CHECK_ERROR.PROVIDER_ID IS 'The identifier of the data provider';
COMMENT ON COLUMN CHECK_ERROR.PLOT_CODE IS 'The identifier of the plot';
COMMENT ON COLUMN CHECK_ERROR.FOUND_VALUE IS 'The erroreous value (if available)';
COMMENT ON COLUMN CHECK_ERROR.EXPECTED_VALUE IS 'The expected value (if available)';
COMMENT ON COLUMN CHECK_ERROR.ERROR_MESSAGE IS 'The error message';
COMMENT ON COLUMN CHECK_ERROR._CREATIONDT IS 'The creation date';


GRANT ALL ON SCHEMA raw_data TO ogam;
GRANT ALL ON ALL TABLES IN SCHEMA raw_data TO ogam;
GRANT ALL ON TABLE raw_data.check_error_check_error_id_seq TO ogam;
GRANT ALL ON TABLE raw_data.submission_id_seq TO ogam;
GRANT SELECT, INSERT ON TABLE raw_data.check_error TO ogam;
GRANT ALL ON TABLE raw_data.submission TO ogam;
GRANT ALL ON TABLE raw_data.submission_file TO ogam;



-------------------------------------------------------------------------------
-- First sensitive trigger : in insert case (automatic sensitivity calculation)
-------------------------------------------------------------------------------
-- Function: raw_data.sensitive_automatic()
-- Sensitivity computation must be done after administrative linking.
-- Administrative linking is done after data integration with updates.
-- This trigger is then fired on updates and not inserts.
-------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION raw_data.sensitive_automatic()
  RETURNS trigger AS
$BODY$

	DECLARE
		rule referentiels.especesensible%ROWTYPE;
	BEGIN

	-- As users can update data with editor, one checks that there is realy something to do.
	-- If none of the fields used for sensitivity computation have been modified we leave.
	If (NEW.codedepartementcalcule is not distinct from OLD.codedepartementcalcule 
		AND NEW.cdnom is not distinct from OLD.cdnom 
		AND NEW.cdref is not distinct from OLD.cdref 
		AND NEW.jourdatefin is not distinct from OLD.jourdatefin 
		AND NEW.occstatutbiologique is not distinct from OLD.occstatutbiologique) Then
		RETURN NEW;
	End if;

	-- update dEEDateDerniereModification
	-- see #747 for discussion about when to update this date.
	NEW.deedatedernieremodification = now();

	-- by default a data is not sensitive
	NEW.sensible = '0';
	NEW.sensiniveau = '0';
	NEW.sensidateattribution = now();
	NEW.sensireferentiel = 'Référentiel de test (désignation indiquée en dur dans la fonction sensitive_automatic()).';
	NEW.sensiversionreferentiel = 'version 0.';
	NEW.sensimanuelle = '0';
	NEW.sensialerte = '0';
		
	-- Does the data deals with sensitive taxon for the departement and is under the sensitive duration ?
	SELECT * INTO rule
	FROM referentiels.especesensible
	WHERE 
		(CD_NOM = NEW.cdNom
		OR CD_NOM = NEW.cdRef
		OR CD_NOM = ANY (
			WITH RECURSIVE node_list( cd_nom, cd_taxsup, lb_nom, nom_vern) AS (
				SELECT cd_nom, cd_taxsup, lb_nom, nom_vern
				FROM referentiels.taxref
				WHERE cd_nom = NEW.cdnom
		
				UNION
		
				SELECT parent.cd_nom, parent.cd_taxsup, parent.lb_nom, parent.nom_vern
				FROM referentiels.taxref parent
				INNER JOIN node_list on node_list.cd_taxsup = parent.cd_nom
				WHERE node_list.cd_taxsup != '349525'
				)
			SELECT cd_taxsup
			FROM node_list
			ORDER BY cd_nom
			)
		)
		AND CD_DEPT = ANY (NEW.codedepartementcalcule)
		AND (DUREE IS NULL OR (NEW.jourdatefin::date + DUREE * '1 year'::INTERVAL > now()))
		AND (NEW.occstatutbiologique IN (NULL, '0', '1', '2') OR cd_occ_statut_biologique IS NULL OR NEW.occstatutbiologique = CAST(cd_occ_statut_biologique AS text))
	
	--  Quand on a plusieurs règles applicables il faut choisir la règle avec le codage le plus fort
	--  puis prendre en priorité une règle sans commentaire (rule.autre is null)
	ORDER BY codage DESC, autre ASC
	--  enfin, on prend la première.
	LIMIT 1;
		
		
	-- No rules found, the obs is not sensitive
	IF NOT FOUND THEN
		RETURN NEW;
	End if;
		
	-- A rule has been found, the obs is sensitive
	NEW.sensible = '1';
	NEW.sensiniveau = rule.codage;
		
	-- If there is a comment, sensitivity must be defined manually
	If (rule.autre IS NOT NULL) Then
		NEW.sensialerte = '1';
	End if ;
			
	RETURN NEW;
	END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION raw_data.sensitive_automatic()
  OWNER TO admin;

GRANT SELECT on table referentiels.taxref to ogam; --FIXME: why here?

-------------------------------------------------------------------------------
-- Second sensitive trigger : in update case (manual sensitivity)
-------------------------------------------------------------------------------
DROP FUNCTION IF EXISTS raw_data.sensitive_manual();
CREATE OR REPLACE FUNCTION raw_data.sensitive_manual()
  RETURNS trigger AS
$BODY$

  BEGIN
	  
	  -- sensitivity is has been changed manually if sensiniveau or sensimanuelle change
	  -- else the modifications do not concern sensitivity
	  IF (NEW.sensiniveau is not distinct from OLD.sensiniveau AND NEW.sensimanuelle is not distinct from OLD.sensimanuelle) Then
			RETURN NEW;
	  END IF;
	  
		NEW.sensidateattribution = now();
		NEW.sensimanuelle = '1';
		NEW.sensialerte = '0';

		--update dEEDateDerniereModification
		NEW.deedatedernieremodification = now();
		
		RETURN NEW;
  END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION raw_data.sensitive_manual()
  OWNER TO admin;
  
-------------------------------------------------------------------------------
-- Init trigger : Initialise update calculated fields
-------------------------------------------------------------------------------
  
DROP FUNCTION IF EXISTS raw_data.init_trigger();
CREATE OR REPLACE FUNCTION raw_data.init_trigger()
  RETURNS trigger AS
$BODY$

  BEGIN
	  	NEW.sensible = '0';
		NEW.sensiniveau = '0';
		NEW.deedatedernieremodification = now();
			
		RETURN NEW;
  END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION raw_data.init_trigger()
  OWNER TO admin;


-------------------------------------------------------------------------------
-- Table: raw_data.export_file
-------------------------------------------------------------------------------

-- DROP TABLE raw_data.export_file;

CREATE TABLE raw_data.export_file
(
	submission_id integer NOT NULL,
	user_login character varying(50),
	file_name character varying(500) NOT NULL,
	created_at timestamp without time zone DEFAULT now(),
	CONSTRAINT pk_submission_id PRIMARY KEY (submission_id),
	CONSTRAINT fk_job_id FOREIGN KEY (job_id)
	REFERENCES website.job_queue (id) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_submission_id FOREIGN KEY (submission_id)
	REFERENCES raw_data.submission (submission_id) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_user_login FOREIGN KEY (user_login)
	REFERENCES website.users (user_login) MATCH SIMPLE
	ON UPDATE CASCADE ON DELETE SET NULL
)
WITH (
OIDS=FALSE
);
ALTER TABLE raw_data.export_file
	OWNER TO admin;
GRANT ALL ON TABLE raw_data.export_file TO admin;
GRANT ALL ON TABLE raw_data.export_file TO ogam;
