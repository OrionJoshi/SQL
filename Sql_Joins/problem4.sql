-- 4. Write a SQL statement to find the list of customers who appointed a salesman for their jobs
--  who gets a commission from the company is more than 12%.


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
    ON a.salesman_id=b.salesman_id 
    WHERE b.commission>.12;

-- Method-2

    SELECT a.cust_name AS "Customer Name", 
    a.city, b.name AS "Salesman", b.commission 
    FROM customer a , salesman b
    WHERE c.salesman_id=s.salesman_id AND s.commission > 0.12