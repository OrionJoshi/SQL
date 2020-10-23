-- 39. Write a query in SQL to list the ID, name, salary, and job_name of the employees for
-- 1. Annual salary is below 34000 but receiving some commission which should not be more than the salary,
-- 2. And designation is SALESMAN and working for department 3001.

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT emp_id, emp_name, salary, job_name 
    FROM employees 
    WHERE ( salary + commission)*12 < 34000 
            AND commission IS NOT NULL 
            AND commission < salary 
            AND job_name = 'SALESMAN' 
            AND dep_id = 3001

-- Output

    --     emp_id | emp_name | salary  | job_name
    -- --------+----------+---------+----------
    --   64989 | ADELYN   | 1700.00 | SALESMAN
    --   65271 | WADE     | 1350.00 | SALESMAN
    --   68454 | TUCKER   | 1600.00 | SALESMAN

