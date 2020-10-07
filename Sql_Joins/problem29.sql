-- 29. Write a query in SQL to find the names of departments where more than two employees are working.

-- Sample table: emp_department

    -- DPT_CODE DPT_NAME        DPT_ALLOTMENT
    -- -------- --------------- -------------
    --       57 IT                      65000
    --       63 Finance                 15000
    --       47 HR                     240000
    --       27 RD                      55000

-- Sample table: emp_details 

    --     EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
    -- --------- --------------- --------------- ----------
    --    127323 Michale         Robbin                  57
    --    526689 Carlos          Snares                  63
    --    843795 Enric           Dosio                   57
    --    328717 Jhon            Snares                  63

-- Solutions

    SELECT emp_department.dpt_name
    FROM emp_details 
    INNER JOIN emp_department
       ON emp_dept =dpt_code
    GROUP BY emp_department.dpt_name
    HAVING COUNT(*) > 2;
