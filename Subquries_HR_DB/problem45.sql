-- 45. Write a query in SQL to display the first and last name, salary, 
-- and department ID for those employees who earn less than the average salary, 
-- and also work at the department where the employee Laura is working as a first name holder. 

-- Sample table: employees

-- Table

-- ---------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
-- |         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 2005-06-25 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
-- AND so on

-- Solutions

-- Method-1

    SELECT e.first_name, e.last_name, e.salary, e.department_id 
    FROM employees e WHERE salary < (SELECT AVG(salary) FROM employees) 
    AND (e.department_id = (SELECT department_id FROM employees WHERE first_name = 'Laura'))


-- Output

-- first_name	last_name	salary	department_id
-- Kevin		Mourgos		5800.00	50
-- Julia		Nayer		3200.00	50
-- Irene		Mikkilineni	2700.00	50
-- James		Landry		2400.00	50
-- Steven		Markle		2200.00	50
