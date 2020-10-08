-- 3. Write a query to display all the salesmen and customer involved in this inventory management system.

-- Sample table: orders

    --     ord_no      purch_amt   ord_date    customer_id  salesman_id
    -- ----------  ----------  ----------  -----------  -----------
    -- 70001       150.5       2012-10-05  3005         5002
    -- 70009       270.65      2012-09-10  3001         5005
    -- 70002       65.26       2012-10-05  3002         5001
    -- 70004       110.5       2012-08-17  3009         5003


-- Sample table: Customer

    --     customer_id |   cust_name    |    city    | grade | salesman_id 
    -- -------------+----------------+------------+-------+-------------
    --         3002 | Nick Rimando   | New York   |   100 |        5001
    --         3007 | Brad Davis     | New York   |   200 |        5001
    --         3005 | Graham Zusi    | California |   200 |        5002
    --         3008 | Julian Green   | London     |   300 |        5002

-- Solutions

-- Method-1

    SELECT salesman_id, customer_id
    FROM customer
    UNION 
    (SELECT salesman_id, customer_id
    FROM orders)

-- Output

    -- salesman_id	customer_id
    -- 5005		3001
    -- 5007		3003
    -- 5001		3007
