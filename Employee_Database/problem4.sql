-- 4. Write a query in SQL to list the emp_name and salary is increased by 15% and expressed as no.of Dollars.

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT emp_name,CONCAT('$ ', salary * 1.15) AS Salary 
    FROM employees

-- Method-2

    SELECT emp_name,
        to_char(1.15*salary,'$99,999') AS "Salary"
    FROM employees;

-- Output

    --     emp_name |  Salary
    -- ----------+----------
    --  KAYLING  | $  6,900
    --  BLAZE    | $  3,163
    --  CLARE    | $  2,933
    --  JONAS    | $  3,401
