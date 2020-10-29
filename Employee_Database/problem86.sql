-- 86. Write a query in SQL to list the employee ID, name, salary, department, grade, experience,
-- and annual salary of employees working for department 1001 or 2001.
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

    -- SELECT 
    --     emp_id, 
    --     emp_name, 
    --     salary, 
    --     dep_name,
    --     grade, 
    --     salary*12 as "Annual salary",
    --     age(current_date,hire_date) 
    -- FROM employees e 
    -- JOIN department d ON e.dep_id=d.dep_id 
    -- JOIN salary_grade s ON e.salary BETWEEN s.min_sal AND s.max_sal 
    -- WHERE e.dep_id IN (1001,2001)

-- Metod-2

    -- SELECT e.emp_id,
    --        e.emp_name,
    --        e.salary,
    --        s.grade,
    --        d.dep_name,
    --        age(CURRENT_DATE, hire_date) AS "Experience",
    --        12 * e.salary "Annual Salary"
    -- FROM employees e,
    --      department d,
    --      salary_grade s
    -- WHERE e.dep_id IN (1001,
    --                    2001)
    --   AND e.dep_id = d.dep_id
    --   AND e.salary BETWEEN s.min_sal AND s.max_sal ;