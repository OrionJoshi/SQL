-- 33. Write a query in SQL to display all the data of employees that work in the department 57.

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
    WHERE emp_dept= 57;

-- Output

-- emp_idno	emp_fname	emp_lname	emp_dept
-- 839139		Maria		Foster		57
-- 127323		Michale		Robbin		57
-- 843795		Enric		Dosio		57
