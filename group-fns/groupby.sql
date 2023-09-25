SELECT
	JOB,
	COUNT(ENAME) "NUMBER OF EMPLOYEES"
FROM
	EMP
GROUP BY
	JOB;

SELECT
	JOB,
	COUNT(ENAME),
	TO_CHAR(ROUND(AVG(SAL), 2), '$9,999.99') AS "AVERAGE SALARY"
FROM
	EMP
GROUP BY
	JOB;

SELECT
	JOB
FROM
	EMP
GROUP BY
	JOB;

-- above query is same as the one below

SELECT
	DISTINCT JOB
FROM
	EMP;

SELECT
	COUNT(*),
	JOB
FROM
	EMP
GROUP BY
	JOB;

SELECT
	MAX(SAL) "MAX SALARY",
	JOB
FROM
	EMP
GROUP BY
	JOB;

-- no Group functions in where clause

SELECT
	JOB
FROM
	EMP
GROUP BY
	JOB
HAVING
	COUNT(EMPNO) = 2;

--department number that have at least four or more emps working in them
SELECT
	DEPTNO
FROM
	EMP
GROUP BY
	DEPTNO
HAVING
	COUNT(DEPTNO) > 3;

SELECT
	E.DEPTNO,
	D.DNAME,
	COUNT(*)
FROM
	EMP  E,
	DEPT D
WHERE
	E.DEPTNO = D.DEPTNO
GROUP BY
	E.DEPTNO, D.DNAME
HAVING
	COUNT(*) > 3;

SELECT
	*
FROM
	DEPT;

SELECT
	*
FROM
	EMP;