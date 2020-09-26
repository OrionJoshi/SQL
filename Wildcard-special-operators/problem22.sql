-- 22. Write a query in SQL to display all the data of employees whose last name begins with an 'D'.

-- Sample table: emp_details

--     EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57

-- Solutions

-- Method-1

    SELECT * 
    FROM emp_details
    WHERE emp_lname LIKE 'D%';

-- Method-2

    SELECT * FROM emp_details WHERE LEFT(emp_lname, 1) = 'D';

-- Output

-- emp_idno	emp_fname	emp_lname	emp_dept
-- 843795		Enric		Dosio		57
-- 444527		Joseph		Dosni		47