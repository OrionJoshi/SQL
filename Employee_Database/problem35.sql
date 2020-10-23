-- 35. List the employees who are SALESMAN and gathered an experience which month portion is more than 10.

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    -- SELECT * FROM employees 
    -- WHERE job_name = 'SALESMAN' AND EXTRACT(MONTH FROM age(CURRENT_DATE, hire_date)) > 10;

-- Method-2

    -- here DATEDIFF function return the diiference between two date in days
    -- SELECT * FROM employees 
    -- WHERE DATEDIFF(CURRENT_DATE, hire_date)> (10*30) ;  
    


-- Output

    --      emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+----------+------------+------------+---------+------------+--------
    --   64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
    --   65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001
