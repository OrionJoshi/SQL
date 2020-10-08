-- 2. Write a query to display distinct salesman and their cities.

-- Sample table: Salesman

    --     salesman_id |    name    |   city   | commission 
    -- -------------+------------+----------+------------
    --         5001 | James Hoog | New York |       0.15
    --         5002 | Nail Knite | Paris    |       0.13
    --         5005 | Pit Alex   | London   |       0.11

-- Sample table: Customer

    --     customer_id |   cust_name    |    city    | grade | salesman_id 
    -- -------------+----------------+------------+-------+-------------
    --         3002 | Nick Rimando   | New York   |   100 |        5001
    --         3007 | Brad Davis     | New York   |   200 |        5001
    --         3005 | Graham Zusi    | California |   200 |        5002
    --         3008 | Julian Green   | London     |   300 |        5002

-- Solutions

-- Method-1

    SELECT salesman_id, city
    FROM customer
    UNION
    (SELECT salesman_id, city
    FROM salesman)

-- Output

    --     salesman_id	city
    -- 5001	    New York
    -- 5002	    London
    -- 5002	    California