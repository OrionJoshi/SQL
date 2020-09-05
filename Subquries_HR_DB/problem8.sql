-- 8. Display all the information of an employee whose id is any of the number 134, 159 and 183.    

-- Sample table: employees

-- Table

        --     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
-- |         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |

-- Solutions

-- Method-1

    SELECT * FROM employees WHERE employee_id  IN (134,159,183);


-- Method-2

    -- SELECT * FROM employees WHERE employee_id  = ANY (134,159,183);

-- Method-3

    SELECT *
    FROM employees
    WHERE EMPLOYEE_ID = 134 OR EMPLOYEE_ID = 159 OR EMPLOYEE_ID = 183;

-- Output

-- employee_id	first_name	last_name	email	phone_number 		hire_date	job_id 	salary commission_pct	manager_id	department_id
-- 134		Michael		Rogers		MROGERS	650.127.1834		2006-08-26	ST_CLERK	2900.00	  0.00		122		50
-- 159		Lindsey		Smith		LSMITH	011.44.1345.729268	2005-03-10	SA_REP		8000.00   0.30		146		80
-- 183		Girard		Geoni		GGEONI	650.507.9879		2008-02-03	SH_CLERK	2800.00	  0.00		120		50

