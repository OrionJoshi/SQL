-- 13. Write a query in SQL to find the name of the patients and the number of physicians 
--they have taken appointment. 
-- Sample table: appointment

--      appointmentid |  patient  | prepnurse | physician |    start_dt_time    |     end_dt_time     | examinationroom
-- ---------------+-----------+-----------+-----------+---------------------+---------------------+-----------------
--       13216584 | 100000001 |       101 |         1 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | A
--       26548913 | 100000002 |       101 |         2 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | B
--       36549879 | 100000001 |       102 |         1 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | A
--       46846589 | 100000004 |       103 |         4 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | B

-- Sample table: patient

--        ssn    |       name        |      address       |  phone   | insuranceid | pcp
-- -----------+-------------------+--------------------+----------+-------------+-----
--  100000001 | John Smith        | 42 Foobar Lane     | 555-0256 |    68476213 |   1
--  100000002 | Grace Ritchie     | 37 Snafu Drive     | 555-0512 |    36546321 |   2

-- Solutions

-- Method-1

    SELECT p.name "Patient",count(t.patient) "Appointment for No. of Physicians"
    FROM appointment t
    JOIN patient p ON t.patient=p.ssn
    GROUP BY p.name
    HAVING count(t.patient)>=1;

-- Output

--           Patient      | Appointment for No. of Physicians
-- -------------------+-----------------------------------
--  Grace Ritchie     |                                 2
--  John Smith        |                                 3  


