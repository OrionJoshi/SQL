-- 18. Write a query in SQL to display the full name (first name and last name), hire date,
-- commission percentage, email and telephone separated by '-', and salary for those employees
--  who earn the salary above 11000 or the seventh digit in their phone number equals 3 and
-- make the result set in a descending order by the first name.

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

    SELECT CONCAT(first_name, ' ', last_name) AS Full_Name, hire_date , 
    commission_pct, CONCAT(email, ' -  ', phone_number) AS Contact_Details, salary 
    FROM employees 
    WHERE salary > 11000
    OR phone_number LIKE '______3%'
    ORDER BY first_name DESC;

-- Output

    --     full_name     | hire_date  | commission_pct |        contact_details         |  salary
    -- -------------------+------------+----------------+--------------------------------+----------
    --  William Gietz     | 2002-06-07 |           0.00 | WGIETZ -  515.123.8181         |  8300.00
    --  Valli Pataballa   | 2006-02-05 |           0.00 | VPATABAL -  590.423.4560       |  4800.00
    --  Susan Mavris      | 2002-06-07 |           0.00 | SMAVRIS -  515.123.7777        |  6500.00

