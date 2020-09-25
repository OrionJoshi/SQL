-- 9. Write a SQL statement to find that customer with all information whose name begin with the letter 'B'.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002

-- Solutions

-- Method-1

    SELECT *
    FROM customer
    WHERE cust_name LIKE 'B%';

-- Method-2

    SELECT *
    FROM customer
    WHERE left(cust_name, 1) = 'B';

-- Output


-- customer_id	cust_name	city		grade	salesman_id
-- 3007		Brad Davis	New York	200	5001
-- 3001		Brad Guzan	London			5005
