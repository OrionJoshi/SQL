-- 99. Write a query in SQL to display the Grade, Number of employees, and maximum salary of each grade.
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

    SELECT s.grade,count(e.emp_name) AS "no. of employees",MAX(e.salary)
    FROM employees e, salary_grade s
    WHERE e.salary BETWEEN s.min_sal AND s.max_sal
    GROUP BY 1;

-- Method-2

    SELECT s.grade,
        count(*),
        max(salary)
    FROM employees e,
        salary_grade s
    WHERE e.salary BETWEEN s.min_sal AND s.max_sal
    GROUP BY s.grade;

-- Output

    --      grade | count |   max
    -- -------+-------+---------
    --      4 |     5 | 3100.00
    --      1 |     3 | 1200.00
    --      5 |     1 | 6000.00
