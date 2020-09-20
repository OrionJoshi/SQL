-- 25. Write a query in SQL to display full name(first and last name), 
-- job title, starting and ending date of last jobs for those employees with worked
-- without a commission percentage.  

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

    SELECT e.employee_id, e.first_name, e.last_name, js.job_title, j.start_date, j.end_date
    FROM employees e JOIN job_history j 
    ON e.employee_id = j.employee_id 
    JOIN jobs js ON js.job_id = j.job_id WHERE e.commission_pct = 0.00

-- Method-2

    SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_name,
       j.job_title,
       h.*
    FROM employees e
    JOIN
  (SELECT MAX(start_date),
          MAX(end_date),
          employee_id
   FROM job_history
   GROUP BY employee_id) h ON e.employee_id=h.employee_id
    JOIN jobs j ON j.job_id=e.job_id
    WHERE e.commission_pct = 0;
 

