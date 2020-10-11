-- 20. Write a query in SQL to display the employee ID, first name, job id, and department number 
-- for those employees who is working except the departments 50,30 and 80.

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

    SELECT employee_id, first_name, job_id, department_id
    FROM employees
    WHERE department_id NOT IN (50, 30, 80);

-- Output

--  employee_id | first_name  |   job_id   | department_id
-- -------------+-------------+------------+---------------
--          100 | Steven      | AD_PRES    |            90
--          101 | Neena       | AD_VP      |            90
--          102 | Lex         | AD_VP      |            90
