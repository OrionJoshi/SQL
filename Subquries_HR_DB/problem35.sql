-- 35. Write a query in SQL to display the department code and 
-- name for all departments which located in the city London

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |
-- |            40 | Human Resources      |        203 |        2400 |
-- |            50 | Shipping             |        121 |        1500 |

-- Sample table: locations

--     +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- | LOCATION_ID | STREET_ADDRESS                           | POSTAL_CODE | CITY                | STATE_PROVINCE    | COUNTRY_ID |
-- +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- |        1000 | 1297 Via Cola di Rie                     | 989         | Roma                |                   | IT         |
-- |        1100 | 93091 Calle della Testa                  | 10934       | Venice              |                   | IT         |
-- |        1200 | 2017 Shinjuku-ku                         | 1689        | Tokyo               | Tokyo Prefecture  | JP         |
-- |        1300 | 9450 Kamiya-cho                          | 6823        | Hiroshima           |                   | JP         |
-- |        1400 | 2014 Jabberwocky Rd                      | 26192       | Southlake           | Texas             | US         |

-- Solutions

-- Method-1

    SELECT department_id, department_name 
    FROM departments 
    WHERE location_id = (SELECT location_id FROM locations WHERE city = 'London')

-- Method-2

    SELECT department_id, department_name 
    FROM departments d JOIN locations l
    ON d.location_id = l.location_id WHERE l.city = 'London'

-- Output

-- department_id	department_name
-- 40		        Human Resources


