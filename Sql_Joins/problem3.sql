-- 3. Write a SQL statement to know which salesman are working for which customer.


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

    SELECT a.cust_name AS "Customer Name", 
    a.city, b.name AS "Salesman", b.commission 
    FROM customer a 
    INNER JOIN salesman b 
    ON a.salesman_id=b.salesman_id;

-- Method-2

    SELECT customer.cust_name AS "Customer Name",
    customer.city, salesman.name AS "Salesman Name", salesman.commission
    FROM customer, salesman
    WHERE customer.salesman_id = salesman.salesman_id

-- Output

    --     Customer Name	city		Salesman	commission
    -- Nick Rimando	New York	James Hoog	0.15
    -- Brad Davis	New York	James Hoog	0.15
    -- Graham Zusi	California	Nail Knite	0.13