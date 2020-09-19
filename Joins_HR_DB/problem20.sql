-- 20. Write a query in SQL to display the details of jobs which was done by any 
-- of the employees who is presently earning a salary on and above 12000. 

-- Sample table: employees

--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |

-- Sample table: job_history

--     +-------------+------------+------------+------------+---------------+
-- | EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
-- +-------------+------------+------------+------------+---------------+
-- |         102 | 2001-01-13 | 2006-07-24 | IT_PROG    |            60 |
-- |         101 | 1997-09-21 | 2001-10-27 | AC_ACCOUNT |           110 |

-- Solutions

-- Method-1

    SELECT * FROM jobs j JOIN (SELECT J.job_id, E.employee_id 
    FROM employees E JOIN job_history J ON E.employee_id = J.employee_id 
    WHERE E.salary >= 12000) temp ON j.job_id = temp.job_id

-- Method-2

    SELECT a.* FROM  job_history a 
    JOIN employees m ON (a.employee_id = m.employee_id) WHERE salary >= 12000;

-- Output

-- employee_id	start_date	end_date	job_id	department_id
-- 101		1997-09-21	2001-10-27	AC_ACCOUNT	110
-- 101		2001-10-28	2005-03-15	AC_MGR		110
-- 102		2001-01-13	2006-07-24	IT_PROG		60
-- 201		2004-02-17	2007-12-19	MK_REP		20


