-- 26. Write a query in SQL to display all the data of employees including their department. 

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

    SELECT emp_idno, A.emp_fname AS "First Name", emp_lname AS "Last Name",
    B.dpt_name AS "Department", emp_dept, dpt_code,  dpt_allotment
     FROM emp_details A 
      INNER JOIN emp_department B
        ON A.emp_dept = B.dpt_code;

-- Output

    --     emp_idno	First Name	Last Name	Department	emp_dept	dpt_code	dpt_allotment
    -- 631548		Alan		Snappy		RD		27		27		55000
    -- 839139		Maria		Foster		IT		57		57		65000
    -- 127323		Michale		Robbin		IT		57		57		65000

