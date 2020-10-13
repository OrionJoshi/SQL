-- 32. Write a query in SQL to display the employee ID and the date on which he ended his previous job. 

-- Sample table : job_history

--     +-------------+------------+------------+------------+---------------+
-- | EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
-- +-------------+------------+------------+------------+---------------+
-- |         102 | 2001-01-13 | 2006-07-24 | IT_PROG    |            60 |
-- |         101 | 1997-09-21 | 2001-10-27 | AC_ACCOUNT |           110 |
-- |         101 | 2001-10-28 | 2005-03-15 | AC_MGR     |           110 |

-- Solutions

-- Method-1

    SELECT employee_id , MAX(end_date)
    FROM job_history
    WHERE employee_id IN (SELECT employee_id
    FROM job_history
    GROUP BY 1
    HAVING COUNT(employee_id) > 1)
    GROUP BY 1

-- Output

--     employee_id |    max
-- -------------+------------
--          101 | 2005-03-15
--          200 | 2006-12-31
--          176 | 2007-12-31
