-- 1. Write a SQL statement to prepare a list with salesman name, customer name and their cities
--  for the salesmen and customer who belongs to the same city.


-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

--Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
 
-- Solution

-- Method-1

    SELECT s.name AS "Salesman",
    c.cust_name AS "CustomerName", c.city AS "City"
    FROM salesman s
    JOIN customer c
    ON salesman.city=customer.city;

-- Method-2

    SELECT salesman.name AS "Salesman",
    customer.cust_name, customer.city 
    FROM salesman,customer 
    WHERE salesman.city=customer.city;

-- Output

    --     Salesman	cust_name	city
    -- James Hoog	Nick Rimando	New York
    -- James Hoog	Brad Davis	New York
    -- Pit Alex	Julian Green	London