-- 20. Write a SQL statement to find that customer with all information who does not get any grade except NULL.

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
    WHERE grade IS NULL;

-- Output

-- customer_id	cust_name	city	grade	salesman_id
-- 3001		Brad Guzan	London		5005
