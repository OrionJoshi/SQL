-- 8. Write a SQL statement to display customer name, city and grade in such a manner that, the customer
--  holding highest grade will come first.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002

-- Solution

-- Method-1

    SELECT cust_name,city,grade 
    FROM customer 
    ORDER BY 3 DESC;

-- Method-2

    SELECT cust_name,city,grade 
    FROM customer 
    ORDER BY grade DESC;