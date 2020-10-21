-- 19. Write a query in SQL to list the name of employees and their manager separated by the string 'works for'.

-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Solutions

-- Method-1

    SELECT CONCAT(e.emp_name ,' Work For ', m.emp_name) 
    FROM employees e, employees m 
    WHERE e.manager_id = m.emp_id

-- Method-2

    -- SELECT a.emp_name|| ' Works for ' || b.emp_name 
    -- FROM employees a 
    -- JOIN employees b ON a.manager_id= b.emp_id;

-- Output

    --             ?column?
    -- --------------------------
    --  BLAZE works for KAYLING
    --  CLARE works for KAYLING
    --  JONAS works for KAYLING
    --  SCARLET works for JONAS
    --  FRANK works for JONAS



