-- 11. Write a query in SQL to obtain the name of the physicians who are not a specialized physician.
-- Sample table: physician

--      employeeid |       name        |           position           |    ssn
-- ------------+-------------------+------------------------------+-----------
--           1 | John Dorian       | Staff Internist              | 111111111
--           2 | Elliot Reid       | Attending Physician          | 222222222
--           3 | Christopher Turk  | Surgical Attending Physician | 333333333
--           4 | Percival Cox      | Senior Attending Physician   | 444444444
--           5 | Bob Kelso         | Head Chief of Medicine       | 555555555

-- Sample table: trained_in

--      physician | treatment | certificationdate | certificationexpires
-- -----------+-----------+-------------------+----------------------
--          3 |         1 | 2008-01-01        | 2008-12-31
--          3 |         2 | 2008-01-01        | 2008-12-31
--          3 |         5 | 2008-01-01        | 2008-12-31

-- Solutions

-- Method-1

    SELECT p.name AS "Physician",p.position "Designation"
    FROM physician p
    LEFT JOIN trained_in t ON p.employeeid=t.physician
    WHERE t.treatment IS NULL
    ORDER BY employeeid;

-- Output

--          Physician     |        Designation
-- -------------------+----------------------------
--  John Dorian       | Staff Internist
--  Elliot Reid       | Attending Physician
--  Percival Cox      | Senior Attending Physician



