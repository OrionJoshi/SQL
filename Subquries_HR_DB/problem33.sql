-- 33. Write a query to get the details of employees who manage a department


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

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |
-- |            40 | Human Resources      |        203 |        2400 |


-- Solutions

-- Method-1

    SELECT * FROM employees WHERE employee_id IN (SELECT manager_id FROM departments)

-- Method-2

    SELECT * FROM employees WHERE employee_id = ANY (SELECT manager_id FROM departments)

-- Method-3

    SELECT * 
    FROM employees 
    WHERE EXISTS 
    (SELECT * 
    FROM departments 
    WHERE manager_id = employee_id);

-- Output

-- employee_id	first_name	last_name	email	phone_number	hire_date	job_id	salary	commission_pct	manager_id	department_id
-- 100		Steven		King		SKING	515.123.4567	2003-06-17	AD_PRES	24000.00	0.00	0		90
-- 103		Alexander	Hunold		AHUNOLD	590.423.4567	2006-01-03	IT_PROG	9000.00		0.00	102		60
-- 108		Nancy		Greenberg	NGREENBE515.124.4569	2002-08-17	FI_MGR	12000.00	0.00	101		100
-- 114		Den		    Raphaely	DRAPHEAL515.127.4561	2002-12-07	PU_MAN	11000.00	0.00	100		30
