-- 106. Write a query in SQL to list the employees whose name is six characters in length
-- and third character must be 'R'.
-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Sample table: department

--     dep_id |  dep_name  | dep_location
-- --------+------------+--------------
--    1001 | FINANCE    | SYDNEY
--    2001 | AUDIT      | MELBOURNE
--    3001 | MARKETING  | PERTH
--    4001 | PRODUCTION | BRISBANE

-- Sample table: salary_grade

--      grade | min_sal | max_sal
-- -------+---------+---------
--      1 |     800 |    1300
--      2 |    1301 |    1500
--      3 |    1501 |    2100
--      4 |    2101 |    3100
--      5 |    3101 |    9999
-- Solutions

-- Method-1
    
    SELECT emp_name
    FROM employees
    WHERE emp_name LIKE '__R___';

-- Method-2

    SELECT *
    FROM employees
    WHERE length(emp_name)=6 AND emp_name LIKE '__R%';

-- Output

    --     emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+----------+------------+------------+---------+------------+--------
    --   69324 | MARKER   | CLERK    |      67832 | 1992-01-23 | 1400.00 |            |   1001


