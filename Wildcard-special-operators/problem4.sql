-- 4. Write a query to sort out those customers with all information whose ID 
-- value is within any of 3007, 3008 and 3009. 

-- Sample table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002

-- Solutions

-- Method-1

    SELECT * 
    FROM customer 
    WHERE customer_id IN (3007,3008,3009);

-- Method-2

    SELECT * 
    FROM CUSTOMER
    WHERE CUSTOMER_ID 
    BETWEEN 3007 AND 3009; 

-- Output

-- customer_id	cust_name	 city		grade	salesman_id
-- 3007		Brad Davis	 New York	200		5001
-- 3008		Julian Green   London		300		5002
-- 3009		Geoff Cameron	Berlin		100		5003


