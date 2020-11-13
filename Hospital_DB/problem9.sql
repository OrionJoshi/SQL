-- 9. Write a query in SQL to obtain the name of the physicians who are trained for a special treatement. 
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

    -- SELECT p.name AS Physician, pr.name AS Treatment 
    -- FROM physician p 
    -- INNER JOIN trained_in t 
    --     ON p.employeeid=t.physician 
    -- INNER JOIN procedure pr 
    -- ON t.treatment=pr.code

-- Method-2

    -- SELECT p.name AS "Physician",c.name AS "Treatement"
    -- FROM physician p,
    --     PROCEDURE c,
    --     trained_in t
    -- WHERE t.physician=p.employeeid
    --     AND t.treatment=c.code;

-- Output

--       Physician     |           Treatement
-- ------------------+--------------------------------
--  Christopher Turk | Reverse Rhinopodoplasty
--  Christopher Turk | Obtuse Pyloric Recombobulation



