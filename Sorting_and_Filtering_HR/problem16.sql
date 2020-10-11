-- 16. Write a query in SQL to display the first and last name, email, salary and manager ID,
-- for those employees whose managers are hold the ID 120, 103 or 145.

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

    SELECT first_name, last_name, email, 
    salary, manager_id
    FROM employees
    WHERE manager_id IN (120 , 103 , 145);

-- Output

    -- first_name  |  last_name  |  email   |  salary  | manager_id
    -- -------------+-------------+----------+----------+------------
    -- Bruce       | Ernst       | BERNST   |  6000.00 |        103
    -- David       | Austin      | DAUSTIN  |  4800.00 |        103
    -- Valli       | Pataballa   | VPATABAL |  4800.00 |        103
    -- Diana       | Lorentz     | DLORENTZ |  4200.00 |        103
    -- Julia       | Nayer       | JNAYER   |  3200.00 |        120
