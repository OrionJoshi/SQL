-- 17. Write a query in SQL to find the name of the patients who taken the appointment on the 25th of April
-- at 10 am, and also display their physician, assisting nurses and room no.
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

        SELECT t.name AS "Name of the patient",
        n.name AS "Name of the Nurse assisting the physician",
        p.name AS "Name of the physician",
        a.examinationroom AS "Room No.",
        a.start_dt_time
        FROM patient t
        JOIN appointment a ON a.patient=t.ssn
        JOIN nurse n ON a.prepnurse=n.employeeid
        JOIN physician p ON a.physician=p.employeeid
        WHERE start_dt_time='2008-04-25 10:00:00';

-- Method-2

        SELECT t.name AS "Name of the patient",
        n.name AS "Name of the Nurse assisting the physician",
        p.name AS "Name of the physician",
        a.examinationroom AS "Room No.",
        a.start_dt_time
        FROM patient t, appointment a, nurse n, physician p 
        WHERE a.patient=t.ssn
            AND a.prepnurse=n.employeeid
            AND a.physician=p.employeeid
            AND start_dt_time='2008-04-25 10:00:00';

-- Output

    --     Name of the patient | Name of the Nurse assisting the physician | Name of the physician | Room No. |    start_dt_time
    -- ---------------------+-------------------------------------------+-----------------------+----------+---------------------
    --  John Smith          | Laverne Roberts                           | John Dorian           | A        | 2008-04-25 10:00:00
    --  Dennis Doe          | Paul Flowers                              | Percival Cox          | B        | 2008-04-25 10:00:00


