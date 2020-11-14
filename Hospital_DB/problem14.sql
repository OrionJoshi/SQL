-- 14. Write a query in SQL to count number of unique patients who got an appointment for examination room C.
-- Sample table: appointment

--     appointmentid |  patient  | prepnurse | physician |    start_dt_time    |     end_dt_time     | examinationroom
-- ---------------+-----------+-----------+-----------+---------------------+---------------------+-----------------
--       13216584 | 100000001 |       101 |         1 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | A
--       26548913 | 100000002 |       101 |         2 | 2008-04-24 10:00:00 | 2008-04-24 11:00:00 | B
--       36549879 | 100000001 |       102 |         1 | 2008-04-25 10:00:00 | 2008-04-25 11:00:00 | A

-- Solutions

-- Method-1

    SELECT count(DISTINCT patient) AS "No. of patients got appointment for room C"
    FROM appointment
    WHERE examinationroom='C';

-- Output

    --     No. of patients got appointment for room C 
    -- --------------------------------------------
    --                                           3
