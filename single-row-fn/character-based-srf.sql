-- single row functions can be used with WHERE clauses

SELECT
	*
FROM
	EMP
WHERE
	LOWER(JOB) = 'manager';

SELECT
	INITCAP(ENAME) AS NAME,
	LENGTH(ENAME) AS NAME_LENGTH
FROM
	EMP;

SELECT
	INITCAP(ENAME)
FROM
	EMP
WHERE
	LENGTH(ENAME) >= 6;

SELECT
	SUBSTR('My name is', 4, 4)
FROM
	DUAL;

SELECT
	LPAD('Hello', 11, 69)
FROM
	DUAL;

SELECT
	LPAD('Hello', 11, 'A')
FROM
	DUAL;

SELECT
	LPAD('Hello', 11),
	LENGTH(LPAD('Hello', 11))
FROM
	DUAL;