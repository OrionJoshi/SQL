-- 5. Write a query in SQL to produce the output of employees name and job name as a fromat of "Employee & Job".
-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT CONCAT(emp_name, ' ', job_name) AS 'Employee & Job' 
    FROM employees

-- Method-2

    -- SELECT emp_name|| '   ' ||job_name AS "Employee & Job"
    -- FROM employees ;

-- Output

    --      Employee & Job
    -- ---------------------
    --  KAYLING   PRESIDENT
    --  BLAZE   MANAGER
    --  CLARE   MANAGER
    --  JONAS   MANAGER
