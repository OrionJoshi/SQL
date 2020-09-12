-- 25. Write a query to display the employee id, name ( first name and last name ),
-- SalaryDrawn, AvgCompare (salary - the average salary of all employees) and 
-- the SalaryStatus column with a title HIGH and LOW respectively for those employees 
-- whose salary is more than and less than the average salary of all employees.

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

    SELECT employee_id, first_name, last_name,salary AS salaryDrawn,(salary - (SELECT AVG(salary) FROM employees)) AS AvgCompare,
    CASE
    WHEN salary >= (SELECT AVG(salary) FROM employees) THEN 'High'
    ELSE 'Low'
    END AS salaryStatus
    FROM employees

-- Method-2

    SELECT employee_id, first_name, last_name,salary,'High' AS salaryStatus,(salary -(SELECT AVG(salary) FROM employees)) AS AvgCompare FROM employees WHERE salary > (SELECT AVG(salary) FROM employees)
    UNION
    SELECT employee_id, first_name, last_name,salary,'Low' AS salaryStatus,(salary - (SELECT AVG(salary) FROM employees)) AS AvgCompare FROM employees WHERE salary < (SELECT AVG(salary) FROM employees) ORDER BY employee_id

-- Output

-- employee_id	first_name	last_name	salarydrawn	avgcompare	salarystatus
-- 100		Steven		King		24000.00	17538.32	HIGH
-- 101		Neena		Kochhar		17000.00	10538.32	HIGH
-- 102		Lex		    De Haan		17000.00	10538.32	HIGH
-- 103		Alexander	Hunold		9000.00		2538.32		HIGH
-- 104		Bruce		Ernst		6000.00		-461.68		LOW
-- 105		David		Austin		4800.00		-1661.68	LOW