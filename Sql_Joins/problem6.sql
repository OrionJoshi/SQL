-- 6. Write a SQL statement to find the details of a order i.e. order number, order date,
--  amount of order, which customer gives the order and which salesman works for that customer
--   and how much commission he gets for an order.


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

    SELECT a.ord_no,a.ord_date,a.purch_amt,
    b.cust_name AS "Customer Name", b.grade, 
    c.name AS "Salesman", c.commission 
    FROM orders a 
    INNER JOIN customer b 
    ON a.customer_id=b.customer_id 
    INNER JOIN salesman c 
    ON a.salesman_id=c.salesman_id;

-- Method-2

    SELECT o.ord_no,o.ord_date,o.purch_amt,c.cust_name, s.name AS "Salesman Name",s.commission
    FROM orders AS o, customer AS c, salesman AS s
    WHERE o.customer_id=c.customer_id
    AND c.salesman_id = s.salesman_id