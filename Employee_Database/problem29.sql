-- 29. Write a query in SQL to list the id, name, salary, and experience of all the employees
-- who earn more than 100 as daily salary. 

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
        -- WHERE (salary/30) > 100
    
-- Output

    --     emp_id | emp_name | salary  |       Experience
    -- --------+----------+---------+-------------------------
    --   68319 | KAYLING  | 6000.00 | 26 years 2 mons 12 days
    --   67858 | SCARLET  | 3100.00 | 20 years 9 mons 11 days
    --   69062 | FRANK    | 3100.00 | 26 years 1 mon 27 days
