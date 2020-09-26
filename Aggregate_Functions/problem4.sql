-- 4. Write a SQL statement know how many customer have listed their names.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002


-- Solutions

-- Method-1

    SELECT COUNT(*) 
    FROM customer;

-- Method-2

    SELECT COUNT(DISTINCT(CUST_NAME)) 
    FROM CUSTOMER;
