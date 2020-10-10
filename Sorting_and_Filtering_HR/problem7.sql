-- 7. Write a query in SQL to display all the information of employees whose salary is
-- in the range of 8000 and 12000 and commission is not null or department number
--  is except the number 40, 120 and 70 and they have been hired before June 5th, 1987.


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
    WHERE salary BETWEEN 8000 AND 12000 
    AND commission_pct IS NOT NULL
    OR  department_id NOT IN (40 , 120 , 70)
    AND   hire_date < '1987-06-05'

-- Output

    --     employee_id | first_name  | last_name  |  email   |    phone_number    | hire_date  |   job_id   |  salary  | commission_pct | manager_id | department_id
    -- -------------+-------------+------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------
    --          103 | Alexander   | Hunold     | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60
    --          108 | Nancy       | Greenberg  | NGREENBE | 515.124.4569       | 2002-08-17 | FI_MGR     | 12000.00 |           0.00 |        101 |           100
    --          109 | Daniel      | Faviet     | DFAVIET  | 515.124.4169       | 2002-08-16 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100

