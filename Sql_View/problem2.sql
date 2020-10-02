-- 2. Write a query to create a view for all salesmen with columns salesman_id, name, and city.

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Solution

-- Method-1

    CREATE VIEW salesman_view
    AS SELECT salesman_id, name, city
    FROM salesman;

-- Output

--      salesman_id |     name     |   city
-- -------------+--------------+----------
--         5002 | Nail Knite   | Paris
--         5005 | Pit Alex     | London
--         5006 | Mc Lyon      | Paris