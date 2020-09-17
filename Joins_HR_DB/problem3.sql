-- 3. Write a query in SQL to display the first name, last name, salary, and job grade for all employees.  

-- Sample table: employees

--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |

-- Sample table: job_grades

-- GRADE_LEVEL  LOWEST_SAL HIGHEST_SAL
-- ------------ ---------- -----------
-- A              1000        2999
-- B              3000        5999
-- C              6000        9999

-- Solutions

-- Method-1

    SELECT e.first_name, e.last_name, e.salary, 
    (SELECT j.grade_level FROM job_grades j WHERE e.salary BETWEEN j.lowest_sal 
    AND j.highest_sal) FROM employees e

-- Method-2

    SELECT e.first_name, e.last_name, e.salary, j.grade_level 
    FROM employees e JOIN job_grades j ON e.salary BETWEEN j.lowest_sal AND j.highest_sal

