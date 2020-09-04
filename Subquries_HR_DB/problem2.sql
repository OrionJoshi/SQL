-- 2. Write a query to display the name ( first name and last name ), salary, department id, 
-- job id for those employees who works in the same designation as the employee works whose id is 169.

-- Sample table: employees 

-- Table

--      EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
-- |         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |

-- Solution

    SELECT first_name, last_name,salary,department_id,job_id from employees WHERE job_id = (SELECT job_id FROM employees WHERE employee_id = 169)

-- Output

-- first_name	last_name	salary		department_id	job_id
-- Peter		Tucker		10000.00	80		SA_REP
-- David		Bernstein	9500.00		80		SA_REP
-- Peter		Hall		9000.00		80		SA_REP
-- Christopher	Olsen		8000.00		80		SA_REP
-- Nanette		Cambrault	7500.00		80		SA_REP