-- 47. Write a query in SQL to list the employees who joined after the month JUNE in the year 1991.
-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT *
    FROM employees
    WHERE hire_date BETWEEN '01-JUL-91' AND '31-DEC-92';

-- Output

    --     emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+-----------+------------+------------+---------+------------+--------
    --   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
    --   69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001

