DROP DATABASE TestDb;

CREATE DATABASE TestDb;

USE TestDb;

CREATE TABLE t_emp (
    id INT,
    name VARCHAR(32),
    deptId INT,
    salary FLOAT
);