-- 22. Write a SQL query to find the number of products with a price more than or equal to Rs.350.

-- Sample table: item_mast

--     PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16
--     105 Monitor                         5000         11

-- Solutions

-- Method-1

    SELECT COUNT(*) AS "Number of Products" 
    FROM item_mast 
    WHERE pro_price >= 350;

-- Output

-- Number of Products
-- 8