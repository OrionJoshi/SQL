-- 11. Write a query to display all the information of the employees who does not 
-- work in those departments where some employees works whose manager id within the range 100 and 200.

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
-- |            50 | Shipping             |        121 |        1500 |
-- |            60 | IT                   |        103 |        1400 |

-- Solution

-- Method-1

    Select * From employees 
    WHERE department_id 
    NOT IN (SELECT DISTINCT(department_id) 
    FROM departments 
    where manager_id 
    BETWEEN 100 AND 200)


-- Output

-- employee_id	first_name	last_name	email	phone_number		hire_date	job_id	salary	commission_pct	manager_id	department_id
-- 178		Kimberely	Grant		KGRANT	011.44.1644.429263 	2007-05-24	SA_REP	7000.00		0.15	149		0
-- 201		Michael		Hartstein	MHARTSTE515.123.5555		2004-02-17	MK_MAN	13000.00	0.00	100		20
-- 202		Pat		Fay		PFAY	603.123.6666		2005-08-17	MK_REP	6000.00		0.00	201		20
-- 203		Susan		Mavris		SMAVRIS	515.123.7777		2002-06-07	HR_REP	6500.00		0.00	101		40
-- 204		Hermann		Baer		HBAER	515.123.8888		2002-06-07	PR_REP	10000.00	0.00	101		70
