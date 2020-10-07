-- 27. Write a query in SQL to display the first name and last name of each employee, along with the name
--  and sanction amount for their department.

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

    SELECT ed.emp_fname AS "First Name", ed.emp_lname AS "Last Name", 
    e.dpt_name AS "Department", 
     e.dpt_allotment AS "Amount Allotted"
       FROM emp_details ed
         INNER JOIN emp_department e
           ON ed.emp_dept = e.dpt_code;

-- Output

    -- First Name	Last Name	Department	Amount Allotted
    -- Alan		Snappy		RD		55000
    -- Maria		Foster		IT		65000
    -- Michale		Robbin		IT		65000