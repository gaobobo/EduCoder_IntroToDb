
DROP DATABASE accessdb;

CREATE DATABASE accessdb OWNER gaussdb TEMPLATE template0;

ALTER DATABASE accessdb RENAME TO human_tpcds;