-- Write a query to display salesman_id, order date, order no, and purchase amount from orders table.

-- Sample table : orders

    -- ord_no      purch_amt   ord_date    customer_id  salesman_id
    -- ----------  ----------  ----------  -----------  -----------
    -- 70001       150.5       2012-10-05  3005         5002
    -- 70009       270.65      2012-09-10  3001         5005
    -- 70002       65.26       2012-10-05  3002         5001
    -- 70004       110.5       2012-08-17  3009         5003
    -- 70007       948.5       2012-09-10  3005         5002

-- Solution

-- Method-1

    SELECT salesman_id, ord_date, ord_no, purch_amt FROM orders;

-- Output

    --      salesman_id	    ord_date	ord_no	purch_amt
    --      5005	        2012-09-10	70009	270.65
    --      5001	        2012-10-05	70002	65.26
    --      5003	        2012-08-17	70004	110.50
    --      5001	        2012-07-27	70005	2400.60
    --      5001	        2012-09-10	70008	5760.00