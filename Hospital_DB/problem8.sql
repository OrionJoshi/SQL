-- 8. Write a query in SQL to obtain the name of the physician and the departments they are affiliated with.
-- Sample table: physician
-- employeeid |       name        |           position           |    ssn
-- ------------+-------------------+------------------------------+-----------
--           1 | John Dorian       | Staff Internist              | 111111111
--           2 | Elliot Reid       | Attending Physician          | 222222222
--           3 | Christopher Turk  | Surgical Attending Physician | 333333333
--           4 | Percival Cox      | Senior Attending Physician   | 444444444

-- Sample table: department
-- departmentid |       name       | head
-- --------------+------------------+------
--             1 | General Medicine |    4
--             2 | Surgery          |    7
 
-- Sample table: affiliated_with

--  physician | department | primaryaffiliation
-- -----------+------------+--------------------
--          1 |          1 | t
--          2 |          1 | t
--          3 |          1 | f

-- Solutions

-- Method-1

    SELECT p.name AS "Physician",d.name AS "Department"
    FROM physician p 
    JOIN department d 
        ON p.employeeid=a.physician
    JOIN affiliated_with a
        ON  a.department=d.departmentid;

-- Method-2

    SELECT p.name AS "Physician",d.name AS "Department"
    FROM physician p,department d, affiliated_with a
    WHERE p.employeeid=a.physician
    AND a.department=d.departmentid;

-- Output

    --          Physician     |    Department
    -- -------------------+------------------
    --  John Dorian       | General Medicine
    --  Elliot Reid       | General Medicine
    --  Christopher Turk  | General Medicine


