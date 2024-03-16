DROP ROLE test_role;

CREATE ROLE test_role  IDENTIFIED BY 'test@123';

ALTER ROLE test_role SYSADMIN;