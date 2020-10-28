-- 72. Write a query in SQL to list the employees in ascending order of seniority who joined on 1-MAY-91,
-- or 3-DEC-91, or 19-JAN-90.
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
    FROM  employees 
    WHERE hire_date IN ('1991-05-01', '1991-12-03', '1990-01-19') 
    ORDER BY hire_date ASC

-- Method-2

    SELECT emp_name 
    FROM employees 
    WHERE to_char(hire_date, 'DD-MM-YY') 
        IN ('01-05-91', '03-12-91', '19-01-90') 
    ORDER BY hire_date ASC


-- Output

    --      emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+----------+------------+------------+---------+------------+--------
    --   66928 | BLAZE    | MANAGER  |      68319 | 1991-05-01 | 2750.00 |            |   3001
    --   69062 | FRANK    | ANALYST  |      65646 | 1991-12-03 | 3100.00 |            |   2001
    --   69000 | JULIUS   | CLERK    |      66928 | 1991-12-03 | 1050.00 |            |   3001
