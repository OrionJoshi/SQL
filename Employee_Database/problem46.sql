-- 46. Write a query in SQL to list the employees working under the managers 63679,68319,66564,69000

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
    WHERE manager_id IN (63679,68319,66564,69000);

-- Method-2

    SELECT *
    FROM employees
    WHERE manager_id = 63679 OR manager_id = 68319 OR manager_id = 66564 OR manager_id = 69000

-- Output

    --      emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+----------+------------+------------+---------+------------+--------
    --   66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
    --   67832 | CLARE    | MANAGER  |      68319 | 1991-06-09 | 2550.00 |            |   1001
    --   65646 | JONAS    | MANAGER  |      68319 | 1991-04-02 | 2957.00 |            |   2001


