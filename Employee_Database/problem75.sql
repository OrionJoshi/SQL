-- 75. Write a query in SQL to list the employees in ascending order on job name and descending order on employee id.
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

    SELECT *
    FROM employees 
    ORDER BY job_name ASC,
            emp_id DESC ;

-- Output

    --     emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+-----------+------------+------------+---------+------------+--------
    --   69062 | FRANK    | ANALYST   |      65646 | 1991-12-03 | 3100.00 |            |   2001
    --   67858 | SCARLET  | ANALYST   |      65646 | 1997-04-19 | 3100.00 |            |   2001
    --   69324 | MARKER   | CLERK     |      67832 | 1992-01-23 | 1400.00 |            |   1001
