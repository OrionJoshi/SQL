-- 6. Write a SQL statement to display the customer name, city, and grade, etc. and the display
--  will be arranged according to the smallest customer ID.

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
    ORDER BY customer_id;

-- Output

-- cust_name	city		grade
-- Brad Guzan	London	
-- Nick Rimando	New York	100
-- Jozy Altidor	Moscow		200
-- Fabian Johnson	Paris		300
