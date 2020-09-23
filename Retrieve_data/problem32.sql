-- 32. Write a query in SQL to find the data of employees whose last name is 'Snares'.

-- Sample table: emp_details

--     EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57
--    328717 Jhon            Snares                  63


-- Soutions

-- Method-1

    SELECT * 
    FROM emp_details 
    WHERE emp_lname= 'Snares';

-- Solutions

-- emp_idno	emp_fname	emp_lname	emp_dept
-- 526689		Carlos		Snares		63
-- 328717		Jhon		Snares		63