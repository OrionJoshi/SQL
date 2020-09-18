-- 17. Write a query in SQL to display the name of the country, city, and 
-- the departments which are running there.

-- Sample table: countries

--     +------------+--------------------------+-----------+
-- | COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
-- +------------+--------------------------+-----------+
-- | AR         | Argentina                |         2 |
-- | AU         | Australia                |         3 |
-- | BE         | Belgium                  |         1 |
-- | BR         | Brazil                   |         2 |

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |

-- Sample table: locations

--     +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- | LOCATION_ID | STREET_ADDRESS                           | POSTAL_CODE | CITY                | STATE_PROVINCE    | COUNTRY_ID |
-- +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- |        1000 | 1297 Via Cola di Rie                     | 989         | Roma                |                   | IT         |
-- |        1100 | 93091 Calle della Testa                  | 10934       | Venice              |                   | IT         |
-- |        1200 | 2017 Shinjuku-ku                         | 1689        | Tokyo               | Tokyo Prefecture  | JP         |


-- Solutions

-- Method-1

    SELECT c.country_name, l.city, d.department_name 
    FROM departments d JOIN locations l ON d.location_id = l.location_id 
    JOIN countries c ON c.country_id = l.country_id

-- Output

-- country_name			city		department_name
-- Canada				    Toronto		Marketing
-- Germany				    Munich		Public Relations
-- United Kingdom			London		Human Resources
-- United States of America	Seattle		Payroll



