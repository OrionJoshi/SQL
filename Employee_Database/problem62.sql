-- 62. Write a query in SQL to list the employees with their location and grade for MARKETING department
--  who comes from MELBOURNE or PERTH within the grade 3 to 5 and experience over 5 years
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

    -- select * 
    -- from employees e 
    -- join department d on e.dep_id=d.dep_id 
    -- join salary_grade s on e.salary between s.min_sal and s.max_sal 
    -- and dep_name='MARKETING' 
    -- and dep_location in ('MELBOURNE','PERTH') 
    -- and grade in (3,4,5) and age(current_date,hire_date)>'5 years'

-- Method-2

--         SELECT e.dep_id,
--         e.emp_id,
--         e.emp_name,
--         e.salary,
--         d.dep_name,
--         d.dep_location,
--         s.grade
--     FROM employees e,
--         salary_grade s,
--         department d
--     WHERE e.dep_id = d.dep_id
--     AND e.salary BETWEEN s.min_sal AND s.max_sal
--     AND s.grade IN (3,4,
--                     5)
--     AND EXTRACT(YEAR
--                 FROM age(CURRENT_DATE, hire_date)) > 5
--     AND (d.dep_name = 'MARKETING'
--         AND D.dep_location IN ('MELBOURNE',
--                                 'PERTH'));
