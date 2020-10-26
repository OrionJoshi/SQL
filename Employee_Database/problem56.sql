-- 56. Write a query in SQL to list the grade, employee name for the department id 1001 or 3001 
--but salary grade is not 4 while they joined the company before 1992-12-31.

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

    SELECT s.grade,e.emp_name 
    FROM employees e , salary_grade s 
    WHERE e.salary BETWEEN s.min_sal AND s.max_sal 
        AND e.dep_id IN (1001, 3001) 
        AND s.grade <> 4 
        AND e.hire_date < '1992-12-31' ORDER BY s.grade

-- Method-2

    SELECT grade, emp_name 
    FROM employees e 
    JOIN salary_grade s ON e.salary BETWEEN s.min_sal AND s.max_sal 
    WHERE dep_id IN ( 1001, 3001) AND grade <>4 AND hire_date<'1992-12-31'