DROP DATABASE MyDb;

CREATE DATABASE MyDb;

USE MyDb;

CREATE TABLE t_user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(32) UNIQUE NOT NULL ,
    sex VARCHAR(4) DEFAULT '男'
);