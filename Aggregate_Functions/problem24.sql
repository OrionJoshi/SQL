-- 24. Write a query in SQL to find the sum of the allotment amount of all departments.

-- Sample table: emp_department

-- DPT_CODE DPT_NAME        DPT_ALLOTMENT
-- -------- --------------- -------------
--       57 IT                      65000
--       63 Finance                 15000
--       47 HR                     240000
--       27 RD                      55000

-- Solution

-- Method-1

    SELECT SUM(dpt_allotment) 
    FROM emp_department;

-- Output

-- sum
-- 450000
