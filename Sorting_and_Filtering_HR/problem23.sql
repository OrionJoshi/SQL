-- 23. Write a query in SQL to display job ID, number of employees, sum of salary, and difference between
--  highest salary and lowest salary for a job.

-- Sample table: employees

--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |

-- Solutions

-- Method-1

    SELECT job_id, COUNT(*), SUM(salary), 
	MAX(salary)-MIN(salary) AS salary_difference 
	FROM employees 
	GROUP BY job_id;

-- Output

--    job_id   | count |    sum    | salary_difference
-- ------------+-------+-----------+-------------------
--  AC_ACCOUNT |     1 |   8300.00 |              0.00
--  ST_MAN     |     5 |  36400.00 |           2400.00
--  IT_PROG    |     5 |  28800.00 |           4800.00