-- 28. Write a query in SQL to find the first name and last name of employees working for departments
-- with a budget more than Rs. 50000.

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

    SELECT emp_details.emp_fname AS "First Name", emp_lname AS "Last Name"
    FROM emp_details 
    INNER JOIN emp_department
        ON emp_details.emp_dept = emp_department.dpt_code
        AND emp_department.dpt_allotment > 50000;

-- Output

    --  First Name	Last Name
    -- Alan		    Snappy
    -- Maria		Foster
    -- Michale		Robbin
