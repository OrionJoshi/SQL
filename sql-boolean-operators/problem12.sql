-- 12. Write a query in SQL to display all the data of employees that work in department 47 or department 63.

-- Sample table : emp_details

--  EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57
--    328717 Jhon            Snares                  63

-- Solution

-- Method-1

    SELECT * 
    FROM emp_details
    WHERE emp_dept = 47 OR emp_dept = 63;

-- Method-2

    SELECT * FROM emp_details WHERE EMP_DEPT IN (47, 63);

-- Output

-- emp_idno	emp_fname	emp_lname	emp_dept
-- 526689		Carlos		Snares		63
-- 328717		Jhon		Snares		63
-- 444527		Joseph		Dosni		47
-- 659831		Zanifer		Emily		47
-- 748681		Henrey		Gabriel		47
-- 733843		Mario		Saule		63