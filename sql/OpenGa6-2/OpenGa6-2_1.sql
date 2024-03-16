DROP TABLESPACE fastspace;

CREATE TABLESPACE fastspace OWNER omm RELATIVE LOCATION 'tablespace/tablespace_1';

ALTER TABLESPACE fastspace
        RENAME TO fspace;

ALTER TABLESPACE fspace
    OWNER TO gaussdb;