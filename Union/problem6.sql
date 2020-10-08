-- 6. Write a query to list all the salesmen, and indicate those who do not have customers in their cities,
--  as well as whose who do.


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

    SELECT salesman.salesman_id, name, cust_name, commission
    FROM salesman, customer
    WHERE salesman.city = customer.city
    UNION
    (SELECT salesman_id, name, 'NO MATCH', commission
    FROM salesman
    WHERE NOT city = ANY
        (SELECT city
            FROM customer))
    ORDER BY 2 DESC

-- Output

    --     salesman_id	name		cust_name		commission
    -- 5005		Pit Alex	Julian Green		0.11
    -- 5005		Pit Alex	Brad Guzan		0.11
    -- 5007		Paul Adam	NO MATCH		0.13