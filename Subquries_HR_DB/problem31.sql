-- 31. Write a query which is looking for the names of all employees whose salary is 
-- greater than 50% of their department’s total salary bill


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

    SELECT first_name, last_name 
    FROM employees e WHERE 
    salary > (SELECT 0.5 * SUM(salary) FROM employees es 
    GROUP BY department_id HAVING es.department_id = e.department_id);

-- Method-2

    SELECT first_name, last_name 
    FROM employees em JOIN (SELECT department_id , 0.5 * SUM(salary)
    AS half_salary FROM employees e GROUP BY department_id) temp 
    ON em.department_id = temp.department_id WHERE em.salary > temp.half_salary

-- Output

-- first_name	last_name
-- Kimberely	Grant
-- Jennifer	Whalen
-- Michael		Hartstein
-- Susan		Mavris

