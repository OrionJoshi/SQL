-- 18. Write a query in SQL to find the name of patients and their physicians who does not require any assistance of a nurse.
-- Sample table: patient
-- Sample table: nurse

--      employeeid |      name       |  position  | registered |    ssn
-- ------------+-----------------+------------+------------+-----------
--         101 | Carla Espinosa  | Head Nurse | t          | 111111110
--         102 | Laverne Roberts | Nurse      | t          | 222222220
--         103 | Paul Flowers    | Nurse      | f          | 333333330

-- Sample table: appointment

--     appointmentid |  patient  | prepnurse | physician |    start_dt_time    |     end_dt_time     | examinationroom
-- ---------------+-----------+-----------+-----------+---------------------+---------------------+-----------------
--       13216584 | 100000001 |       101 |         1 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | A
--       26548913 | 100000002 |       101 |         2 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | B
--       36549879 | 100000001 |       102 |         1 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | A
--       46846589 | 100000004 |       103 |         4 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | B

-- Solutions

-- Method-1

    SELECT t.name AS "Name of the patient", p.name AS "Name of the physician", a.examinationroom AS "Room No."
    FROM patient t
    JOIN appointment a ON a.patient=t.ssn
    JOIN physician p ON a.physician=p.employeeid
    WHERE a.prepnurse IS NULL;

-- Method-2

    SELECT t.name AS "Name of the patient", p.name AS "Name of the physician", a.examinationroom AS "Room No."
    FROM patient t, appointment a, physician p 
    WHERE a.patient=t.ssn
    AND a.physician=p.employeeid
    AND a.prepnurse IS NULL;

