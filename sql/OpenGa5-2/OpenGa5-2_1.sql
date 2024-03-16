DROP TABLE student;

CREATE TABLE student (
    id INTEGER PRIMARY KEY ,
    name CHAR(20),
    age INTEGER
);

INSERT INTO student VALUES (1,'bob',20);
INSERT INTO student VALUES (2,'lily',21);
INSERT INTO student VALUES (3,'marry',19);

DELETE FROM student WHERE name = 'lily';