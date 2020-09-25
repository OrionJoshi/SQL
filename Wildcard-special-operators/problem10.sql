-- 10. Write a SQL statement to find all those customers with all information 
-- whose names are ending with the letter 'n'. 

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
    WHERE cust_name LIKE '%n';

-- Method-2

    SELECT *
    FROM customer
    WHERE right(cust_name, 1) = 'n';

-- Output

    

    -- customer_id	cust_name		city	grade	salesman_id
    -- 3008		Julian Green		London	300	5002
    -- 3004		Fabian Johnson		Paris	300	5006
    -- 3009		Geoff Cameron		Berlin	100	5003
    -- 3001		Brad Guzan		London		5005
