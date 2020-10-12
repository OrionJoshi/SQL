--27. Write a query in SQL to display the details of jobs in descending sequence on job title. 

--Sample table : jobs

--     +------------+---------------------------------+------------+------------+
-- | JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
-- +------------+---------------------------------+------------+------------+
-- | AD_PRES    | President                       |      20080 |      40000 |
-- | AD_VP      | Administration Vice President   |      15000 |      30000 |
-- | AD_ASST    | Administration Assistant        |       3000 |       6000 |

-- Solutions

-- Method-1

    SELECT * 
	FROM jobs 
	ORDER BY job_title DESC;

-- Output

-- job_id    |job_title                      |min_salary|max_salary|
-- ----------|-------------------------------|----------|----------|
-- ST_MAN    |Stock Manager                  |      5500|      8500|
-- ST_CLERK  |Stock Clerk                    |      2000|      5000|

