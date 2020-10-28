--65. Write a query in SQL to list the employees in department PRODUCTION or AUDIT who joined after 1991
-- and they are not MARKER or ADELYN to their name.
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
    JOIN department d ON e.dep_id = d.dep_id 
    WHERE d.dep_name IN ('PRODUCTION', 'AUDIT') 
        AND to_char(e.hire_date, 'YYYY') > '1991' 
        AND e.emp_name NOT IN ('MARKER', 'ADELYN');

-- Method-2

    SELECT * 
    FROM employees e 
    JOIN department d ON e.dep_id = d.dep_id 
    WHERE d.dep_name IN ('PRODUCTION', 'AUDIT') 
        AND hire_date > '1991-12-31' 
        AND e.emp_name NOT IN ('MARKER', 'ADELYN');

-- Output

        
    -- emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id	dep_name	dep_location
    -- 68736	ADNRES	CLERK	67858	1997-05-23	1200.00		2001	AUDIT	MELBOURNE
    -- 67858	SCARLET	ANALYST	65646	1997-04-19	3100.00		2001	AUDIT	ME