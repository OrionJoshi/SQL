-- 85. Write a query in SQL to list the name, job name, salary, grade and department name of employees
-- except CLERK and sort result set on the basis of highest salary.
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

    SELECT e.emp_name,
        e.job_name,
        e.salary,
        s.grade,
        d.dep_name
    FROM employees e,
        department d,
        salary_grade s
    WHERE e.dep_id = d.dep_id
    AND e.salary BETWEEN s.min_sal AND s.max_sal
    AND e.job_name NOT IN('CLERK')
    ORDER BY e.salary DESC;

-- Method-2

    SELECT emp_name, job_name, salary, grade,dep_name 
    FROM employees e 
    JOIN department d ON e.dep_id=d.dep_id 
    JOIN salary_grade s ON e.salary BETWEEN s.min_sal AND s.max_sal 
    WHERE job_name NOT IN ('CLERK') ORDER BY 3 

-- Output

    --     emp_name | job_name  | salary  | grade | dep_name
    -- ----------+-----------+---------+-------+-----------
    --  KAYLING  | PRESIDENT | 6000.00 |     5 | FINANCE
    --  FRANK    | ANALYST   | 3100.00 |     4 | AUDIT
    --  SCARLET  | ANALYST   | 3100.00 |     4 | AUDIT

