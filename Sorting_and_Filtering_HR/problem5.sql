-- 5. Write a query in SQL to display all the information about the department Marketing. 

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |

-- Solutions

-- Method-1

    SELECT *
    FROM  departments
    WHERE department_name = 'Marketing';

-- Output

    --  department_id | department_name | manager_id | location_id
    -- ---------------+-----------------+------------+-------------
    --             20 | Marketing       |        201 |        1800
