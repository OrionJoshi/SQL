-- 8. Create a union of two queries that shows the names, cities, and ratings of all customers.
--  Those with a rating of 200 or greater will also have the words "High Rating", while the others
--   will have the words "Low Rating". 


-- Sample table: Customer

    --     customer_id |   cust_name    |    city    | grade | salesman_id 
    -- -------------+----------------+------------+-------+-------------
    --         3002 | Nick Rimando   | New York   |   100 |        5001
    --         3007 | Brad Davis     | New York   |   200 |        5001
    --         3005 | Graham Zusi    | California |   200 |        5002
    --         3008 | Julian Green   | London     |   300 |        5002

-- Solutions

-- Method-1

    SELECT customer_id, city, grade, 'High Rating'
    FROM customer
    WHERE grade >= 300
    UNION
    (SELECT customer_id, city, grade, 'Low Rating'
    FROM customer
    WHERE grade < 300)

-- Method-2

    SELECT cust_name, city, grade,
    CASE WHEN grade >= 200 THEN 'High Rating'
    WHEN grade < 200 THEN 'Low Rating'
    ELSE 'N/A'
    END AS rating
    FROM Customer

-- Output


    -- customer_id	city		grade		?column?
    -- 3002		New York	100		Low Rating
    -- 3003		Moscow		200		Low Rating
    -- 3004		Paris		300		High Rating
    -- 3008		London		300		High Rating