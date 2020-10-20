-- 7. Write a query in SQL to list the employees with Hire date in the format like February 22, 1991. 

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

        SELECT emp_name, TO_CHAR(hire_date, 'Month DD, YYYY') AS hire_date 
        FROM employees

-- Output

-- emp_name	hire_date
-- KAYLING	November 18, 1991
-- BLAZE	May 01, 1991
-- CLARE	June 09, 1991
-- JONAS	April 02, 1991