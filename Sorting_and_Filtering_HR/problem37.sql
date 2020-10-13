-- 37. Write a query in SQL to display the details of jobs which minimum salary is greater than 9000.

-- Sample table : jobs

--     +------------+---------------------------------+------------+------------+
-- | JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
-- +------------+---------------------------------+------------+------------+
-- | AD_PRES    | President                       |      20080 |      40000 |
-- | AD_VP      | Administration Vice President   |      15000 |      30000 |

-- Solutions

-- Method-1

    SELECT * 
    FROM jobs 
    WHERE min_salary > 9000;

-- Output
        

    --  job_id  |           job_title           | min_salary | max_salary
    -- ---------+-------------------------------+------------+------------
    --  AD_PRES | President                     |      20000 |      40000
    --  AD_VP   | Administration Vice President |      15000 |      30000

