CREATE SCHEMA new_schema AUTHORIZATION gaussdb;

CREATE TABLE new_schema.mytable (
    my_id INT,
    my_info VARCHAR(36)
);

ALTER SCHEMA new_schema RENAME TO dc_tcpp;

ALTER SCHEMA dc_tcpp OWNER TO omm;

CREATE USER jackson IDENTIFIED BY 'jackson@123';
GRANT USAGE ON SCHEMA dc_tcpp TO jackson;