-- 38. Write a query in SQL to display the department name and 
-- Id for all departments where they located, that Id is equal to 
-- the Id for the location where department number 30 is located.


-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |
-- |            40 | Human Resources      |        203 |        2400 |
-- |            50 | Shipping             |        121 |        1500 |

-- Solutions

-- Method-1

    SELECT department_id, department_name 
    FROM departments WHERE location_id = (SELECT location_id FROM departments WHERE department_id = 30)

-- Output

-- department_name	department_id
-- Administration	10
-- Purchasing		30
-- Executive		90
-- Finance			100
-- Accounting		110
-- Treasury		    120
