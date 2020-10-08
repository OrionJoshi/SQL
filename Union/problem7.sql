-- 7. Write a query to that appends strings to the selected fields, indicating whether or not
--  a specified salesman was matched to a customer in his city



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

    SELECT a.salesman_id, name, a.city, 'MATCHED'
    FROM salesman a, customer b
    WHERE a.city = b.city

    UNION

    (SELECT salesman_id, name, city, 'NO MATCH'
    FROM salesman
    WHERE NOT city = ANY
        (SELECT city
            FROM customer))
    
