-- 12. Write a query in SQL to obtain the name of the patients with their physicians
-- by whom they got their preliminary treatement.
-- Sample table: patient

--         ssn    |       name        |      address       |  phone   | insuranceid | pcp
-- -----------+-------------------+--------------------+----------+-------------+-----
--  100000001 | John Smith        | 42 Foobar Lane     | 555-0256 |    68476213 |   1
--  100000002 | Grace Ritchie     | 37 Snafu Drive     | 555-0512 |    36546321 |   2

-- Sample table: physician

--  employeeid |       name        |           position           |    ssn
-- ------------+-------------------+------------------------------+-----------
--           1 | John Dorian       | Staff Internist              | 111111111
--           2 | Elliot Reid       | Attending Physician          | 222222222
--           3 | Christopher Turk  | Surgical Attending Physician | 333333333


-- Solutions

-- Method-1

    SELECT p.pname AS"physician", pa.name AS"patient", pa.address AS"addresss"
    FROM physician p, patient pa
    WHERE p.employeeid=pa.pcp;

-- Method-2

    SELECT t.name AS "Patient", t.address AS "Address",p.name AS "Physician"
    FROM patient t
    JOIN physician p ON t.pcp=p.employeeid;

-- Output

    --           Patient      |      Address       |    Physician
    -- -------------------+--------------------+------------------
    --  John Smith        | 42 Foobar Lane     | John Dorian
    --  Grace Ritchie     | 37 Snafu Drive     | Elliot Reid

