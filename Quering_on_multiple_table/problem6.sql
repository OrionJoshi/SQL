-- 6. Write a query that produces all customers with their name, city, salesman and commission,
--  who served by a salesman and the salesman works at a rate of the commission within 12% to 14%. 

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

    SELECT c.cust_name,c.city,c.grade,s.name AS salesman,s.commission
    FROM customer c JOIN salesman s
    ON c.salesman_id = s.salesman_id
    WHERE
    s.commission BETWEEN 0.12 AND 0.14

-- Method-2

        SELECT customer.cust_name AS "Customer",
    customer.city AS "City",
    salesman.name AS "Salesman",
    salesman.commission
    FROM customer,salesman
    WHERE customer.salesman_id = salesman.salesman_id
    AND salesman.commission
    BETWEEN .12 AND .14;

-- Output

-- Customer	City		Salesman	commission
-- Graham Zusi	California	Nail Knite	0.13
-- Julian Green	London		Nail Knite	0.13
-- Fabian Johnson	Paris		Mc Lyon		0.14