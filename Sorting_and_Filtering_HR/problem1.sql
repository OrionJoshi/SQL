-- 1. Write a query in SQL to display the full name (first and last name), and salary for those employees
-- who earn below 6000.

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

    SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) AS NAME,
    SALARY
    FROM employees
    WHERE SALARY<6000;

-- Method-2

    -- SELECT first_name ||' '||last_name AS Full_Name, salary
    -- FROM employees
    -- WHERE salary < 6000;

-- Output

    --          full_name     | salary
    -- -------------------+---------
    --  David Austin      | 4800.00
    --  Valli Pataballa   | 4800.00
    --  Diana Lorentz     | 4200.00
