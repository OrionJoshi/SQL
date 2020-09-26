-- 5. Write a SQL statement find the number of customers who gets at least a gradation for 
-- his/her performance. 

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002


-- Solutions

-- Method-1

    SELECT COUNT (Cust_name)
    FROM customer
    WHERE grade IS NOT NULL

-- Method-2

    SELECT COUNT(*) 
    FROM CUSTOMER
    WHERE GRADE IS NOT NULL;

-- Output

    -- count
    -- 7