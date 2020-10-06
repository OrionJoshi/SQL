-- 16. Write a SQL statement to make a report with customer name, city, order no. order date,
-- purchase amount for only those customers on the list who must have a grade and placed one
-- or more orders or which order(s) have been placed by the customer who is neither in the list
-- not have a grade.

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
 
-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT a.cust_name,a.city, b.ord_no, b.ord_date,b.purch_amt AS "Order Amount" 
    FROM customer a 
    RIGHT JOIN orders b
         ON a.customer_id=b.customer_id 
         WHERE a.grade IS NOT NULL 
    ORDER BY b.ord_no

-- Method-2

    SELECT a.cust_name,a.city, b.ord_no,
    b.ord_date,b.purch_amt AS "Order Amount" 
    FROM customer a 
    FULL OUTER JOIN orders b 
        ON a.customer_id=b.customer_id 
        WHERE a.grade IS NOT NULL;