-- 11. Write a query in SQL to find the data of employees whose last name is Dosni or Mardy.

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
    WHERE emp_lname ='Dosni' OR emp_lname= 'Mardy';

-- Method-2

    SELECT *
    FROM emp_details
    WHERE emp_lname IN ('dosni','mardy');
