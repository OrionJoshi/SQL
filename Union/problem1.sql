-- 1. Write a query to display all salesmen and customer located in London.

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

    SELECT salesman_id "ID", name, 'Salesman'
    FROM salesman
    WHERE city='London'
    UNION
    (SELECT customer_id "ID", cust_name, 'Customer'
    FROM customer
    WHERE city='London')

-- Output

    --     ID	name	?column?
    -- 3001	Brad Guzan	Customer
    -- 3008	Julian Green	Customer
    -- 5005	Pit Alex	Salesman

