DROP DATABASE MyDb;

CREATE DATABASE MyDb;

USE MyDb;

CREATE TABLE t_class (
    id INT PRIMARY KEY ,
    name VARCHAR(22)
);

CREATE TABLE t_student (
    id INT PRIMARY KEY ,
    name VARCHAR(22),
    classId INT,
    CONSTRAINT fk_stu_class1 FOREIGN KEY (classId) REFERENCES t_class(id)
);