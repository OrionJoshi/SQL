-- 25. Write a query in SQL to find the number of employees in each department along with the department code.

-- Sample table: emp_details

--     EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57
--    328717 Jhon            Snares                  63
--    444527 Joseph          Dosni                   47

-- Solution

-- Method-1

    SELECT emp_dept, COUNT(*)
    FROM emp_details
    GROUP BY emp_dept;

-- Output

-- emp_dept		count
-- 27			2
-- 57			5
-- 47			3
-- 63			3
