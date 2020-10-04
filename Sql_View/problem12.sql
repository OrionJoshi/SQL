-- 12. Write a query to create a view that shows each salesman with more than one customers.
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

    CREATE VIEW customer
    AS SELECT *
    FROM salesman a
    WHERE (SELECT COUNT(*)
        FROM customer b
        WHERE a.salesman_id = b.salesman_id) > 1;

-- Output

--     salesman_id |     name     |   city   | commission
-- -------------+--------------+----------+------------
--         5002 | Nail Knite   | Paris    |       0.13
--         5001 | James Hoog   | New York |       0.15


