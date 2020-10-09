-- 9. Write a command that produces the name and number of each salesman and each customer
--  with more than one current order. Put the results in alphabetical order. 




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


    SELECT customer_id,  cust_name
	FROM customer a
	WHERE 
		(SELECT COUNT (*)
		   FROM orders b
		   WHERE a.customer_id = b.customer_id) > 1
    UNION
    (SELECT salesman_id, name
        FROM salesman a
        WHERE
            (SELECT COUNT (*)
            FROM orders b
            WHERE  a.salesman_id = b.salesman_id) > 1)
    ORDER BY 2

-- Output 

    -- customer_id	cust_name
    -- 3009		Geoff Cameron
    -- 3005		Graham Zusi