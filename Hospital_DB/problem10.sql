-- 10. Write a query in SQL to obtain the name of the physicians with department who are yet to be affiliated.
-- Sample table: physician

--  employeeid |       name        |           position           |    ssn
-- ------------+-------------------+------------------------------+-----------
--           1 | John Dorian       | Staff Internist              | 111111111
--           2 | Elliot Reid       | Attending Physician          | 222222222
--           3 | Christopher Turk  | Surgical Attending Physician | 333333333
--           4 | Percival Cox      | Senior Attending Physician   | 444444444

-- Sample table: procedure

--     code |              name              | cost
-- ------+--------------------------------+-------
--     1 | Reverse Rhinopodoplasty        |  1500
--     2 | Obtuse Pyloric Recombobulation |  3750
--     3 | Folded Demiophtalmectomy       |  4500

-- Sample table: trained_in

--  physician | treatment | certificationdate | certificationexpires
-- -----------+-----------+-------------------+----------------------
--          3 |         1 | 2008-01-01        | 2008-12-31
--          3 |         2 | 2008-01-01        | 2008-12-31
--          3 |         5 | 2008-01-01        | 2008-12-31

-- Solutions

-- Method-1

    SELECT p.name AS "Physician", p.position, d.name AS "Department"
    FROM physician p
    JOIN affiliated_with a ON a.physician=p.employeeid
    JOIN department d ON a.department=d.departmentid
    WHERE primaryaffiliation='false';


-- Method-2

    
    SELECT p.name AS "Physician", p.position, d.name AS "Department"
    FROM physician p, affiliated_with a, department d 
    WHERE a.physician=p.employeeid
        AND a.department=d.departmentid
        AND primaryaffiliation='false';

-- Output

    --        Physician     |           position           |    Department
    -- ------------------+------------------------------+------------------
    --  Christopher Turk | Surgical Attending Physician | General Medicine
    --  John Wen         | Surgical Attending Physician | General Medicine


