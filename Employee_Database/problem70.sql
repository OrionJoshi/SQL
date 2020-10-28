-- 70. Write a query in SQL to list the employees in descending order who are either 'CLERK' or 'ANALYST'.
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
    WHERE job_name IN ('CLERK','ANALYST') 
    ORDER BY 1 DESC

-- Method-2

    SELECT emp_name 
    FROM employees 
    WHERE job_name IN ('CLERK','ANALYST') 
    ORDER BY emp_name DESC

-- Method-3

    SELECT emp_name 
    FROM employees 
    WHERE job_name = 'CLERK' OR job_name = 'ANALYST'
    ORDER BY emp_name DESC

-- Output

    -- emp_name
    -- SCARLET
    -- SANDRINE
    -- MARKER
    -- JULIUS
