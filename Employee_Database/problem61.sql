-- 61. Write a query in SQL to list the employees along with their location who belongs to SYDNEY, MELBOURNE
-- with a salary range between 2000 and 5000 and joined in 1991. 

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
    FROM employees e 
    JOIN department d ON e.dep_id=d.dep_id 
    WHERE dep_location IN('SYDNEY','MELBOURNE') 
        AND (salary BETWEEN 2000 AND 5000) 
        AND (hire_date BETWEEN '1991-01-01' AND '1991-12-31')

-- Method-2

    SELECT e.emp_id,
       e.emp_name,
       e.dep_id,
       e.salary,
       d.dep_location
    FROM employees e,
     department d
    WHERE e.dep_id = d.dep_id
    AND d.dep_location IN ('SYDNEY',
                         'MELBOURNE')
    AND to_char(e.hire_date,'YY') = '91'
    AND e.salary BETWEEN 2000 AND 5000;
