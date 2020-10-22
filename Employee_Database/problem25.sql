-- 25. Write a query in SQL to list the name, id, hire_date, and salary of all the employees joined before 1 apr 91.

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- -- Method-1

    SELECT emp_id, emp_name, hire_date, salary FROM employees WHERE hire_date < '1991-04-01'

-- Method-2

    select * from employees where hire_date< to_date('1991-04-01', 'YYYY-MM-DD')

-- Output

    --     emp_id | emp_name | hire_date  | salary
    -- --------+----------+------------+---------
    --   63679 | SANDRINE | 1990-12-18 |  900.00
    --   64989 | ADELYN   | 1991-02-20 | 1700.00
    --   65271 | WADE     | 1991-02-22 | 1350.00

