-- 23. Write a query to display the employee id, name ( first name and last name ) 
-- and the job id column with a modified title SALESMAN for those employees whose job title is ST_MAN
-- and DEVELOPER for whose job title is IT_PROG.   

-- Sample table: employees

-- Tables

--     -------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |

-- Solutions

-- Method-1

    SELECT employee_id, first_name, last_name,
    CASE job_id 
    WHEN 'ST_MAN' THEN 'SALESMAN'
    WHEN 'IT_PROG' THEN 'DEVELOPER'
    ELSE job_id
    END 
    FROM employees

-- Output

-- employee_id	first_name	last_name	designation	salary
-- 100		Steven		King		AD_PRES		24000.00
-- 101		Neena		Kochhar		AD_VP		17000.00
-- 102		Lex		    De Haan		AD_VP		17000.00
-- 103		Alexander	Hunold		DEVELOPER	9000.00
-- 104		Bruce		Ernst		DEVELOPER	6000.00
-- 105		David		Austin		DEVELOPER	4800.00
