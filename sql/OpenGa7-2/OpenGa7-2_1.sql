
DROP USER jackson;

CREATE USER jackson PASSWORD 'jackson@123';

ALTER USER jackson IDENTIFIED BY 'Abcd@123' REPLACE 'jackson@123';