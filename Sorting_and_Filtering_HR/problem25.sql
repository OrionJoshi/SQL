-- 25. Write a query in SQL to display the country ID and number of cities in that country we have.

-- Sample table : locations

--     +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- | LOCATION_ID | STREET_ADDRESS                           | POSTAL_CODE | CITY                | STATE_PROVINCE    | COUNTRY_ID |
-- +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- |        1000 | 1297 Via Cola di Rie                     | 989         | Roma                |                   | IT         |
-- |        1100 | 93091 Calle della Testa                  | 10934       | Venice              |                   | IT         |


-- Solution

-- Output

    SELECT country_id,  COUNT(*)  
	FROM locations 
	GROUP BY country_id;

-- Output

    --      country_id | count
    -- ------------+-------
    --  CH         |     2
    --  "          |     1
    --  US         |     4
