-- 53. Write a query in SQL to list the name, job name, annual salary, department id, department name 
-- and grade of the employees who earn 60000 in a year or not working as an ANALYST.


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

    SELECT emp_name, job_name, e.dep_id, dep_name, salary*12 as Annual_salary, grade 
    FROM employees e 
    JOIN department d ON e.dep_id=d.dep_id 
    JOIN salary_grade s ON e.salary BETWEEN s.min_sal AND s.max_sal WHERE salary*12>=60000 or job_name<>'ANALYST'

-- Method-2

    SELECT e.emp_name,
       e.job_name,
       (12*e.salary)"Annual Salary",
       e.dep_id,
       d.dep_name,
       s.grade
    FROM employees e,
     department d,
     salary_grade s
    WHERE e.dep_id = d.dep_id
    AND e.salary BETWEEN s.min_sal AND s.max_sal
    AND (((12*e.salary)>= 60000)
       OR (e.job_name != 'ANALYST'))

