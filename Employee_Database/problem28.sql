-- 28. Write a query in SQL to list the id, name, salry, and experiences of all the employees working for the manger 68319.


-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- -- Method-1

    -- SELECT emp_id, emp_name, salary, 
    --         AGE(CURRENT_DATE, hire_date) AS Experience 
    -- FROM employees

-- Output

    --      emp_id | emp_name | salary  |       Experience
    -- --------+----------+---------+-------------------------
    --   66928 | BLAZE    | 2750.00 | 26 years 8 mons 29 days
    --   67832 | CLARE    | 2550.00 | 26 years 7 mons 21 days
    --   65646 | JONAS    | 2957.00 | 26 years 9 mons 28 days

