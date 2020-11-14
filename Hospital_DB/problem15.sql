-- 15. Write a query in SQL to find the name of the patients and the number of the room
-- where they have to go for their treatment. 
-- Sample table: patient

--         ssn    |       name        |      address       |  phone   | insuranceid | pcp
-- -----------+-------------------+--------------------+----------+-------------+-----
--  100000001 | John Smith        | 42 Foobar Lane     | 555-0256 |    68476213 |   1
--  100000002 | Grace Ritchie     | 37 Snafu Drive     | 555-0512 |    36546321 |   2

-- Sample table: appointment

--      appointmentid |  patient  | prepnurse | physician |    start_dt_time    |     end_dt_time     | examinationroom
-- ---------------+-----------+-----------+-----------+---------------------+---------------------+-----------------
--       13216584 | 100000001 |       101 |         1 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | A
--       26548913 | 100000002 |       101 |         2 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | B
--       36549879 | 100000001 |       102 |         1 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | A
--       46846589 | 100000004 |       103 |         4 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | B

-- Solutions

-- Method-1
       SELECT p.name AS "Patient",
        a.examinationroom AS "Room No.",
        a.start_dt_time AS "Date and Time of appointment"
    FROM patient p, appointment a WHERE p.ssn=a.patient;
       
-- Method-2

         SELECT p.name AS "Patient",
        a.examinationroom AS "Room No.",
        a.start_dt_time AS "Date and Time of appointment"
    FROM patient p
    JOIN appointment a ON p.ssn=a.patient;

-- Output

--          Patient      | Room No. | Date and Time of appointment
-- -------------------+----------+------------------------------
--  John Smith        | A        | 2008-04-24 10:00:00
--  Grace Ritchie     | B        | 2008-04-24 10:00:00
--  John Smith        | A        | 2008-04-25 10:00:00



