-- 9. Write a query to display all the information of the employees whose salary is 
-- within the range 1000 and 3000.

-- Sample table: employees

-- Table

    -- ---------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
-- |         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
-- AND so on

-- Solution

-- Method-1

    SELECT * FROM employees WHERE salary BETWEEN (SELECT 1000) AND (SELECT 3000);

-- Method-2

    SELECT * FROM employees 
    WHERE salary BETWEEN 1000 and 3000;

-- Method-3

    SELECT *
    FROM employees
    WHERE (salary>=1000 and salary<=3000);

-- Output

-- employee_id	first_name	last_name	email	phone_number	hire_date	job_id	salary	commission_pct	manager_id	department_id
-- 116		Shelli		Baida		SBAIDA	515.127.4563	2005-12-24	PU_CLERK	2900.00	0.00	114		30
-- 117		Sigal		Tobias		STOBIAS	515.127.4564	2005-07-24	PU_CLERK	2800.00	0.00	114		30
-- 118		Guy		Himuro		GHIMURO	515.127.4565	2006-11-15	PU_CLERK	2600.00	0.00	114		30
-- 119		Karen		Colmenares	KCOLMENA515.127.4566	2007-08-10	PU_CLERK	2500.00	0.00	114		30
-- 126		Irene		Mikkilineni	IMIKKILI650.124.1224	2006-09-28	ST_CLERK	2700.00	0.00	120		50

