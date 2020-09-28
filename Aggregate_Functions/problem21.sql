-- 21. Write a SQL query to calculate the average price of all the products.

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

    SELECT AVG(pro_price) AS "Average Price" 
    FROM item_mast;


-- Output

--     Average Price
-- 1435.0000000000000000

