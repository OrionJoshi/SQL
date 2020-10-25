-- 50. Write a query in SQL to list the employees, joined in the month FEBRUARY 
--with a salary range between 1001 to 2000.

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT *
    FROM employees
    WHERE extract(month from hire_date)= '02'
    AND salary between 1001 and 2001;

-- Method-2

    SELECT *
    FROM employees
    WHERE to_char(hire_date,'MON') = 'FEB'
    AND salary BETWEEN 1000 AND 2000;

-- Output

    --      emp_id | emp_name | job_name | manager_id | hire_date  | salary  | commission | dep_id
    -- --------+----------+----------+------------+------------+---------+------------+--------
    --   64989 | ADELYN   | SALESMAN |      66928 | 1991-02-20 | 1700.00 |     400.00 |   3001
    --   65271 | WADE     | SALESMAN |      66928 | 1991-02-22 | 1350.00 |     600.00 |   3001


