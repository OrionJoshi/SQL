-- 5. Write a SQL statement to find the list of customers who appointed a salesman for their jobs who does
--  not live in the same city where their customer lives, and gets a commission is above 12% .   

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

--Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
 
-- Solution

-- Method-1

    SELECT c.cust_name FROM customer c,salesman s
    WHERE c.salesman_id=s.salesman_id AND c.city<>s.city 
    AND s.commission > 0.12

-- Method-2

    SELECT a.cust_name AS "Customer Name", 
    a.city, b.name AS "Salesman", b.city,b.commission  
    FROM customer a  
    INNER JOIN salesman b  
    ON a.salesman_id=b.salesman_id 
    WHERE b.commission>.12 
    AND a.city<>b.city;

-- Output

    --     Customer Name	city		Salesman	city	commission
    -- Graham Zusi	California	Nail Knite	Paris	0.13
    -- Julian Green	London		Nail Knite	Paris	0.13
    -- Jozy Altidor	Moscow		Paul Adam	Rome	0.13