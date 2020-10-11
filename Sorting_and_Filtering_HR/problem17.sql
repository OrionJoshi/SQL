-- 17. Write a query in SQL to display all the information for all employees who have the letters D, S, or N
-- in their first name and also arrange the result in descending order by salary.

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

    SELECT *
    FROM employees
    WHERE first_name LIKE '%D%'
    OR first_name LIKE '%S%'
    OR first_name LIKE '%N%'
    ORDER BY salary DESC;

-- Method-2

    -- SELECT* FROM employees
    -- WHERE first_name SIMILAR TO 'D%|S%|N%'
    -- ORDER BY salary desc;

-- Output

    --     employee_id | first_name | last_name |  email   |    phone_number    | hire_date  |   job_id   |  salary  | commission_pct | manager_id | department_id
    -- -------------+------------+-----------+----------+--------------------+------------+------------+----------+----------------+------------+---------------
    --          100 | Steven     | King      | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90
    --          101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90
    --          205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080       | 2002-06-07 | AC_MGR     | 12000.00 |           0.00 |        101 |           110
    --          108 | Nancy      | Greenberg | NGREENBE | 515.124.4569       | 2002-08-17 | FI_MGR     | 12000.00 |           0.00 |        101 |           100
    --          114 | Den        | Raphaely  | DRAPHEAL | 515.127.4561       | 2002-12-07 | PU_MAN     | 11000.00 |           0.00 |        100 |            30



