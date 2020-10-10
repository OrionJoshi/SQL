-- 9. Write a query in SQL to display the full name (first and last), the phone number and email separated
--  by hyphen, and salary, for those employees whose salary is within the range of 9000 and 17000.
--   The column headings assign with Full_Name, Contact_Details and Remuneration respectively.

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

    SELECT CONCAT(first_name,' ',last_name) AS Full_Name,
       CONCAT(phone_number,' - ', email) AS Contact_Details,
       salary  AS Remuneration
    FROM employees
    WHERE salary BETWEEN 9000 AND 17000;

-- Output

    --     full_name     |        contact_details        | remuneration
    -- -------------------+-------------------------------+--------------
    -- Neena Kochhar     | 515.123.4568 - NKOCHHAR       |     17000.00
    -- Lex De Haan       | 515.123.4569 - LDEHAAN        |     17000.00
    -- Alexander Hunold  | 590.423.4567 - AHUNOLD        |      9000.00
