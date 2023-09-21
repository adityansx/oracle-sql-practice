SELECT
    DNAME AS "Department Name",
    LOC   AS "Location"
FROM
    DEPT;

-- unique records

SELECT
    DISTINCT JOB
FROM
    EMP;

-- WHERE clause

SELECT
    *
FROM
    EMP
WHERE
    JOB = 'MANAGER';

-- combining conditions with AND

SELECT
    *
FROM
    EMP
WHERE
    JOB = 'SALESMAN'
    AND SAL = 1600;

-- AND COMM = 500;

-- Operators

SELECT
    *
FROM
    EMP
WHERE
    DEPTNO != 20
    AND SAL > 1500;

SELECT
    *
FROM
    EMP
WHERE
    JOB != 'SALESMAN'
    AND SAL <= 2450;

-- get the record where employee is getting higher commission than salary
SELECT
    *
FROM
    EMP
WHERE
    COMM > SAL;

-- not MANAGERs, SAL > 2500, from DEPTNO 20
SELECT
    *
FROM
    EMP
WHERE
    JOB != 'MANAGER'
    AND SAL > 2500
    AND DEPTNO = 20;

SELECT
    *
FROM
    EMP
WHERE
    JOB = 'CLERK'
    OR JOB = 'SALESMAN'
ORDER BY
    DEPTNO;

-- names of those employees that are not MANAGERs nor SALESMAN
-- and have a salary greater than or equal to 2000
SELECT
    ENAME
FROM
    EMP
WHERE
    JOB != 'MANAGER'
    AND JOB != 'SALESMAN'
    AND SAL >= 2000;

-- names and hire date of those employees that work in
-- Dallas or Chicago
SELECT
    ENAME,
    HIREDATE
FROM
    EMP
WHERE
    DEPTNO IN (20, 30);

-- or
SELECT
    ENAME,
    HIREDATE
FROM
    EMP
WHERE
    DEPTNO = 20
    OR DEPTNO = 30;

-- BETWEEN is inclusive of the values specified
SELECT
    *
FROM
    EMP
WHERE
    SAL BETWEEN 1000 AND 2000;

SELECT
    *
FROM
    EMP
WHERE
    HIREDATE NOT BETWEEN '01-JAN-81' AND '01-JAN-82';

SELECT
    *
FROM
    EMP
WHERE
    HIREDATE BETWEEN '01-JAN-81' AND '01-JAN-82'
    AND COMM IS NOT NULL
    AND COMM != 0;

-- employees that dont make any commission and have a salary
-- greater than 1100 but less than 5000. Exclude those
-- employees that have a salary equal to 3000.
SELECT
    *
FROM
    EMP
WHERE
    (COMM IS NULL
    OR COMM = 0)
    AND (SAL > 1100
    AND SAL < 5000
    AND SAL != 3000);

-- group your ANDs together to prevent interruption
-- in logic flow
-- e.g.,
-- WHERE COMM IS NULL AND SAL > 1100 AND SAL < 5000
-- OR COMM = 0
-- AND SAL != 3000
--
-- Interpreter checks whether the records have
-- a) comm as null and 1100 < sal < 5000
--                  or
-- b) sal < 5000 and not equal to 3000


-- Return those employees that are SALESMAN and that make
-- either 300$ in commission or greater than 1000$ in commission
SELECT
    *
FROM
    EMP
WHERE
    JOB = 'SALESMAN'
    AND (COMM = 300
    OR COMM > 1000);

SELECT
    *
FROM
    EMP
WHERE
    JOB LIKE 'SALES%';

-- alias

-- aliases use double quotes for aliases with spaces in them
-- comparison operation requires strings to be wrapped with
-- single quotes

SELECT
    ENAME "EMPLOYEE NAME",
    SAL   SALARY,
    COMM  AS COMMISSION -- oracle allows omission of 'AS' for alias
FROM
    EMP;

SELECT
    ENAME
    ||' makes $'
    ||SAL
    ||' per month' AS "SALARY REPORT"
FROM
    EMP;