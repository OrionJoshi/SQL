-- 28. Write a SQL query to display the name and price of all the items with a price is 
-- equal or more than Rs.250, and the list contain the larger price first and then by name
-- in ascending order.  


-- Sample table: item_mast

-- PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Soutions

-- Method-1

    SELECT pro_name, pro_price 
    FROM item_mast
    WHERE pro_price >= 250
    ORDER BY pro_price DESC, pro_name;

-- Output

-- pro_name	   pro_price
-- Monitor	        5000.00
-- Mother Board	3200.00
-- Printer	        2600.00