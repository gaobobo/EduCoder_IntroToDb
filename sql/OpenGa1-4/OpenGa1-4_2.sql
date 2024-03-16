CREATE TABLE t_user (
    id SERIAL,
    username VARCHAR(32) NOT NULL UNIQUE ,
    sex VARCHAR(4) DEFAULT '男',
    PRIMARY KEY (id)
);