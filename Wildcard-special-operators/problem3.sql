-- 3. Write a query to produce a list of salesman_id, name, city and commission of each salesman 
-- who live in cities other than Paris and Rome.

-- Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14


-- Solutions

-- Method-1

    SELECT * 
    FROM salesman 
    WHERE city NOT IN('Paris','Rome');

-- Method-2

    SELECT *
    FROM salesman
    WHERE city <> 'Paris' OR city <> 'Rome';