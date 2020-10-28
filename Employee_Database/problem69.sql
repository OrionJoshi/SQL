-- 69. Write a query in SQL to list the id, name, monthly salary, daily salary of all the employees 
-- in the ascending order of their annual salary.
-- Sample table: employees

--  emp_id | emp_name | job_name  | manager_id | hire_date  | salary  | commission | dep_id
-- --------+----------+-----------+------------+------------+---------+------------+--------
--   68319 | KAYLING  | PRESIDENT |            | 1991-11-18 | 6000.00 |            |   1001
--   66928 | BLAZE    | MANAGER   |      68319 | 1991-05-01 | 2750.00 |            |   3001
--   67832 | CLARE    | MANAGER   |      68319 | 1991-06-09 | 2550.00 |            |   1001
--   65646 | JONAS    | MANAGER   |      68319 | 1991-04-02 | 2957.00 |            |   2001

-- Sample table: department

--     dep_id |  dep_name  | dep_location
-- --------+------------+--------------
--    1001 | FINANCE    | SYDNEY
--    2001 | AUDIT      | MELBOURNE
--    3001 | MARKETING  | PERTH
--    4001 | PRODUCTION | BRISBANE

-- Sample table: salary_grade

--      grade | min_sal | max_sal
-- -------+---------+---------
--      1 |     800 |    1300
--      2 |    1301 |    1500
--      3 |    1501 |    2100
--      4 |    2101 |    3100
--      5 |    3101 |    9999
-- Solutions

-- Method-1

    SELECT emp_id,emp_name, 
        salary AS monthly_salary,salary/30 Daily_Salary,(12*salary) AS Annual_Salary 
    FROM employees
    ORDER BY Annual_Salary

-- Output

    --      emp_id | emp_name | monthly_salary |     daily_salary     | anual_salary
    -- --------+----------+----------------+----------------------+--------------
    --   63679 | SANDRINE |         900.00 |  30.0000000000000000 |     10800.00
    --   69000 | JULIUS   |        1050.00 |  35.0000000000000000 |     12600.00
    --   68736 | ADNRES   |        1200.00 |  40.0000000000000000 |     14400.00
    --   65271 | WADE     |        1350.00 |  45.0000000000000000 |     16200.00
