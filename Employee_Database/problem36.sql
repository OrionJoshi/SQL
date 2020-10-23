-- 36. Write a query in SQL to list the employees of department id 3001 or 1001 joined in the year 1991. 


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
    WHERE dep_id 
        IN(3001, 1001) AND hire_date BETWEEN '1991-01-01' AND '1991-12-12'

-- Method-2

    SELECT * 
    FROM employees 
    WHERE (dep_id = 3001 OR dep_id = 1001) 
            AND 
            hire_date BETWEEN '1991-01-01' AND '1991-12-12'

-- Method-3

    SELECT * 
    FROM employees 
    WHERE to_char(hire_date,'YYYY') = '1991' AND dep_id IN(3001, 1001)

-- Method-4

    SELECT *
    FROM employees
    WHERE to_char (hire_date,'YYYY') IN ('1991')
    AND (dep_id = 3001
        OR dep_id =1001) ;

