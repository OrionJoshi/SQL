-- 5. Write a query to make a report of which salesman produce the largest and smallest orders
--  on each date and arranged the orders number in smallest to the largest number.


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

    SELECT a.salesman_id, name, ord_no, 'highest on', ord_date
    FROM salesman a, orders b
    WHERE a.salesman_id =b.salesman_id
    AND b.purch_amt=
        (SELECT MAX (purch_amt)
        FROM orders c
        WHERE c.ord_date = b.ord_date)

    UNION
    
    (SELECT a.salesman_id, name, ord_no, 'lowest on', ord_date
    FROM salesman a, orders b
    WHERE a.salesman_id =b.salesman_id
    AND b.purch_amt=
        (SELECT MIN (purch_amt)
        FROM orders c
        WHERE c.ord_date = b.ord_date))
    ORDER BY ord_no