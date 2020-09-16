-- 49. Write a query in SQL to display the detail information of those 
-- departments which starting salary is at least 8000.

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

-- Sample table: job_history

--     +-------------+------------+------------+------------+---------------+
-- | EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
-- +-------------+------------+------------+------------+---------------+
-- |         102 | 2001-01-13 | 2006-07-24 | IT_PROG    |            60 |
-- |         101 | 1997-09-21 | 2001-10-27 | AC_ACCOUNT |           110 |
-- |         101 | 2001-10-28 | 2005-03-15 | AC_MGR     |           110 |
-- |         201 | 2004-02-17 | 2007-12-19 | MK_REP     |            20 |

-- Solutions

-- Method-1

    SELECT * 
    FROM departments 
    WHERE department_id = ANY (SELECT DISTINCT department_id FROM employees WHERE salary >= 8000)

-- Output

-- department_id	department_name	manager_id	location_id
-- 70		        Public Relations	204		2700
-- 90		        Executive		    100		1700
-- 110		        Accounting		    205		1700
