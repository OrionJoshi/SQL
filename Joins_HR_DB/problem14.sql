-- 14. Write a query in SQL to display job title, full name (first and last name ) 
-- of employee, and the difference between maximum salary for the job and salary of the employee.

-- Sample table: employees

--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |

-- Sample table: jobs

--     +------------+---------------------------------+------------+------------+
-- | JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
-- +------------+---------------------------------+------------+------------+
-- | AD_PRES    | President                       |      20080 |      40000 |
-- | AD_VP      | Administration Vice President   |      15000 |      30000 |
-- | AD_ASST    | Administration Assistant        |       3000 |       6000 |


-- Solutions

-- Method-1

    SELECT j.job_title, e.first_name, e.last_name, (j.max_salary - e.salary) AS diff_salary 
    FROM employees e JOIN jobs j ON e.job_id = j.job_id 

-- Method-2

    SELECT j.job_title, CONCAT(e.first_name,' ', e.last_name) AS Employee_name, 
	j.max_salary - e.salary AS salary_difference 
	FROM employees e
	JOIN jobs j ON e.job_id = j.job_id