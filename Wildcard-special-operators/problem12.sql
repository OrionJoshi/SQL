-- 12. Write a SQL statement to find those rows from the table testtable which contain the escape
-- character underscore ( _ ) in its column 'col1'.

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
    WHERE col1 LIKE '%/_%' ESCAPE '/';

-- Method-2

    -- Select * from tblTesttable where col1 like '%[_]%;

-- Output

--     col1
-- A001/DJ-402\44_/100/2015
-- A001_\DJ-402\44_/100/2015
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015
