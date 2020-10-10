-- 6. Write a query in SQL to display the full name (first and last), hire date, salary, and department number
-- for those employees whose first name does not containing the letter M and make the result set in 
-- ascending order by department number.

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

    SELECT CONCAT(first_name,' ', last_name) as Full_Name, hire_date,  
    salary,  department_id
    FROM employees
    WHERE first_name NOT LIKE '%M%'
    ORDER BY department_id;

--Method-2

    -- SELECT first_name || ' ' || last_name as Full_Name, hire_date,  
    -- salary,  department_id
    -- FROM employees
    -- WHERE first_name NOT LIKE '%M%'
    -- ORDER BY department_id;

-- Output

    --      full_name     | hire_date  |  salary  | department_id
    -- -------------------+------------+----------+---------------
    --  Kimberely Grant   | 2007-05-24 |  7000.00 |             0
    --  Jennifer Whalen   | 2003-09-17 |  4400.00 |            10
    --  Pat Fay           | 2005-08-17 |  6000.00 |            20

