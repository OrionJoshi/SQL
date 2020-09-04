-- 6. Write a query to display the department number, name ( first name and last name ), 
-- job and department name for all employees in the Finance department.   

-- Sample table: employees


--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
-- |         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |

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

    SELECT * from employees WHERE department_id = 
    (SELECT department_id FROM departments WHERE department_name = 'Finance');

-- Method-2

    SELECT e.department_id, e.first_name, e.job_id , d.department_name  
    FROM employees e , departments d  
    WHERE e.department_id = d.department_id  
    AND  d.department_name = 'Finance';

-- Method-3

    SELECT e.department_id, e.first_name, e.job_id , d.department_name 
    FROM employees e 
    JOIN  departments d 
    ON e.department_id = d.department_id
    WHERE  d.department_name = 'Finance';

-- Output

-- department_id	first_name	job_id	department_name
-- 100		        Nancy		FI_MGR			Finance
-- 100		        Daniel		FI_ACCOUNT		Finance
-- 100		        John		FI_ACCOUNT		Finance
-- 100		        Ismael		FI_ACCOUNT		Finance
-- 100		        Jose Manuel	FI_ACCOUNT		Finance
-- 100		        Luis		FI_ACCOUNT		Finance