-- 23. Write a query in SQL to display the employee ID, job name, number of days 
-- worked in for all those jobs in department 80.

-- Sample table: jobs

--     +------------+---------------------------------+------------+------------+
-- | JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
-- +------------+---------------------------------+------------+------------+
-- | AD_PRES    | President                       |      20080 |      40000 |
-- | AD_VP      | Administration Vice President   |      15000 |      30000 |
-- | AD_ASST    | Administration Assistant        |       3000 |       6000 |

-- Sample table: job_history

--     +-------------+------------+------------+------------+---------------+
-- | EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
-- +-------------+------------+------------+------------+---------------+
-- |         102 | 2001-01-13 | 2006-07-24 | IT_PROG    |            60 |
-- |         101 | 1997-09-21 | 2001-10-27 | AC_ACCOUNT |           110 |
-- |         101 | 2001-10-28 | 2005-03-15 | AC_MGR     |           110 |


-- Solutions

-- Method-1

    SELECT j.employee_id, js.job_title, j.end_date - j.start_date AS num_days 
    FROM job_history j JOIN jobs js ON j.job_id = js.job_id WHERE j.department_id = 80 

-- Method-2

    SELECT employee_id, job_title, end_date-start_date DAYS 
	FROM job_history jh
	JOIN jobs j ON j.job_id = jh.job_id
	WHERE department_id=80;
