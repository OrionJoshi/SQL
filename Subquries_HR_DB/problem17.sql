-- 17. Write a query to display the employee number, name( first name and last name ) and 
-- job title for all employees whose salary is smaller than any salary of those employees 
-- whose job title is MK_MAN. 

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

-- Solution

-- Method-1

    SELECT first_name, last_name, employee_id, job_id FROM employees WHERE salary < ANY (SELECT salary FROM employees WHERE job_id = 'MK_MAN')

-- Method-2

    SELECT employee_id, first_name, last_name, job_id
    FROM employees
    WHERE salary <
    (SELECT MIN(salary)
    FROM employees
    WHERE job_id = 'MK_MAN')
    
-- Output

-- employee_id	first_name	last_name	job_id
-- 103		Alexander	Hunold		IT_PROG
-- 104		Bruce		Ernst		IT_PROG
-- 105		David		Austin		IT_PROG
-- 106		Valli		Pataballa	IT_PROG
-- 107		Diana		Lorentz		IT_PROG
