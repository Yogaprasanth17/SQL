CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE EMP_DTL (
	EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(30),
    EMP_DEPT VARCHAR(20),
    EMP_AGE INT,
    EMP_SALARY INT
);
 
INSERT INTO EMP_DTL
VALUES ('1','PRADEEP','H.R',36,200000),
('2','ASHOK','MANAGER',28,300000),
('3','PAVAN KUMAR','ASST MANAGER',28,45000),
('4','SANTHOSH','STORE MANAGER',25,12999),
('5','THAMAN','GENERAL MANAGER',26,122000);

SELECT * 
FROM EMP_DTL
WHERE EMP_NAME = 'PRADEEP';

SELECT *   -- NOT EQUAL TO 
FROM EMP_DTL
WHERE EMP_NAME <> 'PRADEEP';

SELECT *  -- 'IN' IS LIKE 'OR', 'IN' IS USED TO RETRIVE MULTIPLE DATA 
FROM EMP_DTL
WHERE EMP_DEPT IN ('H.R','MANAGER');

SELECT *  -- 'NOT IN' IS USED TO RETRIVE THE DATA EXCEPT THE GIVEN ONE
FROM EMP_DTL
WHERE EMP_DEPT NOT IN ('H.R','MANAGER');

SELECT *  -- 'BETWEEN' IS USED TO SET THE RANGE
FROM EMP_DTL
WHERE EMP_SALARY BETWEEN 200000 AND 300000;

SELECT *  -- 'LIMIT' IS USED TO RETRIVE LIMITED NO.OF DATA
FROM EMP_DTL
LIMIT 3;

-- x------------x-----------x--------------------x------------------x------------

-- LIKE
-- WILDCARD % (ZERO OR MORE CHARACTERS), _ (ONE CHARACTER)
SELECT * -- TO GET NAME WHICH HAS 'FIRST' LETTER AS 'A'
FROM EMP_DTL
WHERE EMP_NAME LIKE 'A%';

SELECT * -- TO GET NAME WHICH HAS 'MIDDLE' LETTER AS 'A'
FROM EMP_DTL
WHERE EMP_NAME LIKE '%A%';

SELECT * -- TO GET THE NAME WHICH STARTS AND ENDS WITH 'P'
FROM EMP_DTL
WHERE EMP_NAME LIKE 'P%P';

SELECT * -- TO GET THE NAME WHICH THIRD LETTER IS 'A' (OR) TO RETRIVE THE NAME BY LETTER POSITION 
FROM EMP_DTL
WHERE EMP_NAME LIKE'__A%';

UPDATE EMP_DTL -- TO UPDATE THE EXISTING TABLE USING WHERE CLAUSE 
SET EMP_DEPT = 'HR'
WHERE EMP_ID = 1;

DELETE FROM EMP_DTL
WHERE EMP_ID = 2;

-- x------------x-----------x--------------------x------------------x------------
-- ORDER BY

SELECT *   -- IT IS USED TO SORT THE SALARY AND NAME WHICH HAS A SAME SALARY TYPE 
FROM EMP_DTL 
ORDER BY EMP_SALARY,EMP_NAME

SELECT *
FROM EMP_DTL
ORDER BY ( CASE EMP_DEPT
WHEN 'GENERAL MANAGER' THEN 1
WHEN 'ASST MANAGER' THEN 2
WHEN 'STORE MANAGER' THEN 3
ELSE 100 END
), EMP_NAME;

-- x------------x-----------x--------------------x------------------x------------

