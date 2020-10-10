-- 15. Write a query in SQL to display all the information from Employees table for those employees 
-- who was hired before June 21st, 2002.

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
    WHERE hire_date < '2002-06-21';

-- Output

    --     employee_id | first_name | last_name |  email   | phone_number | hire_date  |   job_id   |  salary  | commission_pct | manager_id | department_id
    -- -------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------
    --          102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90
    --          203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 2002-06-07 | HR_REP     |  6500.00 |           0.00 |        101 |            40
    --          204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 2002-06-07 | PR_REP     | 10000.00 |           0.00 |        101 |            70
    
