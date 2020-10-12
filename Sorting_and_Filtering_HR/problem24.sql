-- 24. Write a query in SQL to display job ID for those jobs that were done by two or
--  more for more than 300 days.

-- Sample table : job_history

--     +-------------+------------+------------+------------+---------------+
-- | EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
-- +-------------+------------+------------+------------+---------------+
-- |         102 | 2001-01-13 | 2006-07-24 | IT_PROG    |            60 |
-- |         101 | 1997-09-21 | 2001-10-27 | AC_ACCOUNT |           110 |
-- |         101 | 2001-10-28 | 2005-03-15 | AC_MGR     |           110 |

-- Solutions

-- Method-1

    SELECT job_id 
	FROM job_history 
	WHERE end_date-start_date >300 
	GROUP BY job_id 
	HAVING COUNT(*)>=2;

-- Output

    --      job_id
    -- ------------
    --  AC_ACCOUNT
    --  ST_CLERK
