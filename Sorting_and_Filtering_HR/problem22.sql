--22. Write a query in SQL to display the ID for those employees who did two or more jobs in the past.

-- Sample table : job_history

--     +-------------+------------+------------+------------+---------------+
-- | EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
-- +-------------+------------+------------+------------+---------------+
-- |         102 | 2001-01-13 | 2006-07-24 | IT_PROG    |            60 |
-- |         101 | 1997-09-21 | 2001-10-27 | AC_ACCOUNT |           110 |
-- |         101 | 2001-10-28 | 2005-03-15 | AC_MGR     |           110 |

-- Solutions

-- Method-1

    SELECT employee_id 
	FROM job_history 
	GROUP BY employee_id 
		HAVING COUNT(*) >=2;

-- Output

    --     employee_id
    -- -------------
    --          101
    --          176
    --          200

