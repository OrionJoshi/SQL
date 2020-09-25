-- 15. Write a SQL statement to find those rows from the table testtable which does not contain 
-- the escape character ( / ) in its column 'col1'.

-- Sample table: testtable


-- col1
-- --------------------------
-- A001/DJ-402\44_/100/2015
-- A001_\DJ-402\44_/100/2015
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015
-- A001/DJ_401

-- Solutions

-- Method-1

    SELECT *
    FROM testtable
    WHERE col1 NOT LIKE '%//%' ESCAPE '/';

-- Output

--     col1
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015