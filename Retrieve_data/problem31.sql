-- 31. Write a query in SQL to find the last name of all employees, without duplicates.

-- Sample table: emp_details

--     EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57
--    328717 Jhon            Snares                  63


-- Soutions

-- Method-1

    SELECT DISTINCT emp_lname
    FROM emp_details;

-- Ouptut

-- emp_lname
-- Saule
-- Robbin
-- Sitaraman
-- Mardy

