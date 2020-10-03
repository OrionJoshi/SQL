-- 8. Write a query to create a view that finds the salesman who has the customer with the highest order
--  at least 3 times on a day.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

--Sample table: elitsalesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
 

-- Solution

-- Method-1

    CREATE VIEW sales_cust
    AS SELECT DISTINCT salesman_id, name
    FROM elitsalesman a
    WHERE
    (SELECT COUNT (*)
        FROM elitsalesman b
        WHERE a.salesman_id = b.salesman_id) >= 3;