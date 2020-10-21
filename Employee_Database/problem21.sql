-- 21. Write a query in SQL to list the employees whose experience is more than 27 years.   


-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- -- Method-1

--     SELECT * FROM employees 
--     WHERE EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM hire_date)> 27

-- Method-2

    -- SELECT *
    -- FROM employees
    -- WHERE EXTRACT(YEAR
    --             FROM age(CURRENT_DATE, hire_date)) > 27;
