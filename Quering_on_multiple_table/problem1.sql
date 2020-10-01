-- 1. Write a query to find those customers with their name and those salesmen with their name 
-- and city who lives in the same city.

-- Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11

-- -- Sample table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002

-- Solution

-- Method-1

    SELECT customer.cust_name,
    salesman.name, salesman.city
    FROM salesman, customer
    WHERE salesman.city = customer.city;

-- Method-2

    SELECT s.name, s.city, c.cust_name
    FROM salesman AS s
    JOIN customer AS c
    ON s.city=c.city;

-- Output

-- cust_name	name		city
-- Nick Rimando	James Hoog	New York
-- Brad Davis	James Hoog	New York
