CREATE TABLE test_table (
    test_id INTEGER NOT NULL ,
    test_info CHAR(36)
);

ALTER TABLE test_table
    ALTER COLUMN test_id DROP NOT NULL ;

ALTER TABLE test_table
    ADD timestamp INTEGER NOT NULL ;