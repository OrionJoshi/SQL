-- 8. Write a SQL statement which selects the highest grade for each of the cities of the customers. 

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002


-- Solutions

-- Method-1

    SELECT city,MAX(grade) 
    FROM customer 
    GROUP BY city;

-- Method-2

    SELECT CITY, MAX(GRADE) 
    FROM CUSTOMER
    GROUP BY 1; 

-- Output

-- city		max
-- London		300
-- Paris		300
-- New York	200
-- California	200
-- Berlin		100
-- Moscow		200
