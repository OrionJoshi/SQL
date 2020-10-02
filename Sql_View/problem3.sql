-- 3. Write a query to find the salesmen of the city New York who achieved the commission more than 13%.

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Solution

-- Method-1

    CREATE VIEW newyorkstaff
    AS SELECT *
    FROM salesman
    WHERE city = 'New York' AND commission > .13;

-- Output

--      salesman_id | name       |   city   | commission
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15

