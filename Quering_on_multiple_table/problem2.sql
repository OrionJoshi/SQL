-- 2. Write a SQL statement to find the names of all customers along with the salesmen who works for them.


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

    SELECT customer.cust_name, salesman.name
    FROM customer,salesman
    WHERE salesman.salesman_id = customer.salesman_id;

-- Method-2

    SELECT customer.cust_name, salesman_name
    FROM customer
    JOIN salesman
    ON customer.salesman_id = salesman.salesman_id;
