-- 35. Write a query in SQL to display job Title, the difference between minimum and maximum salaries
--  for those jobs which max salary within the range 12000 to 18000.

--Sample table : jobs

--     +------------+---------------------------------+------------+------------+
-- | JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
-- +------------+---------------------------------+------------+------------+
-- | AD_PRES    | President                       |      20080 |      40000 |
-- | AD_VP      | Administration Vice President   |      15000 |      30000 |
-- | AD_ASST    | Administration Assistant        |       3000 |       6000 |

-- Solutions

-- Method-1

    SELECT job_title, (max_salary-min_salary) AS salary_differences 
	FROM jobs 
	WHERE max_salary BETWEEN 12000 AND 18000;

-- Output

    --       job_title       | salary_differences
    -- ----------------------+--------------------
    --  Finance Manager      |               7800
    --  Accounting Manager   |               7800
    --  Sales Representative |               6000

