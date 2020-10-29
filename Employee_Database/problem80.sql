-- 80. Write a query in SQL to list the employee id, name, hire_date, current date and 
-- experience of the employees in ascending order on their experiences.
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

    -- SELECT emp_id, emp_name, 
    --     hire_date, CURRENT_DATE, AGE(CURRENT_DATE, hire_date) AS Experience 
    -- FROM employees 
    -- ORDER BY Experience ASC

-- Output

    --      emp_id | emp_name | hire_date  |    date    |           exp
    -- --------+----------+------------+------------+-------------------------
    --   68736 | ADNRES   | 1997-05-23 | 2018-02-01 | 20 years 8 mons 9 days
    --   67858 | SCARLET  | 1997-04-19 | 2018-02-01 | 20 years 9 mons 12 days
    --   69324 | MARKER   | 1992-01-23 | 2018-02-01 | 26 years 9 days
    --   69062 | FRANK    | 1991-12-03 | 2018-02-01 | 26 years 1 mon 29 days



