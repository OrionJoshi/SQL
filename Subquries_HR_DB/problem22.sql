-- 22. Write a query to display the department id and the total salary for those departments 
-- which contains at least one employee.   

-- Sample table: employees

-- Tables

--     -------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
-- |         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 2007-05-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |
-- |            40 | Human Resources      |        203 |        2400 |

-- Solution

-- Method-1

    SELECT department_id, SUM(salary) FROM employees e 
    GROUP BY department_id HAVING department_id = ANY(SELECT department_id  
    FROM departments d WHERE exists(SELECT * FROM employees e WHERE e.department_id = d.department_id)) 
    ORDER BY department_id;

-- Method-2

    SELECT department_id, SUM(salary) FROM 
    employees e GROUP BY department_id HAVING department_id = ANY(SELECT DISTINCT department_id 
    FROM departments d JOIN employees es ON d.department_id = es.department_id) ORDER BY department_id

-- Method-3

    SELECT departments.department_id, result1.total_amt 
    FROM departments,  
    ( SELECT employees.department_id, SUM(employees.salary) total_amt  
    FROM employees  
    GROUP BY department_id) result1 
    WHERE result1.department_id = departments.department_id;


-- Output

-- employee_id	first_name	last_name	salarydrawn	avgcompare	salarystatus
-- 100		Steven		King		24000.00	17538.32	HIGH
-- 101		Neena		Kochhar		17000.00	10538.32	HIGH
-- 102		Lex		    De Haan		17000.00	10538.32	HIGH
-- 103		Alexander	Hunold		9000.00		2538.32		HIGH
-- 104		Bruce		Ernst		6000.00		-461.68		LOW


