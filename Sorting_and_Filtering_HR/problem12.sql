-- 12. Write a query in SQL to display the full name (first and last), job id and date of hire for 
-- those employees who was hired during November 5th, 2007 and July 5th, 2009.

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

    SELECT CONCAT(first_name, ' ', last_name) AS Full_Name, 
    job_id, hire_date 
    FROM employees 
    WHERE hire_date 
    BETWEEN '2007-11-05' AND '2009-07-05';

-- Output

    --     full_name     |   job_id   | hire_date
    -- ------------------+------------+------------
    --  Luis Popp        | FI_ACCOUNT | 2007-12-07
    --  Kevin Mourgos    | ST_MAN     | 2007-11-16
    --  Steven Markle    | ST_CLERK   | 2008-03-08
