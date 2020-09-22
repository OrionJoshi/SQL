-- 26. Write a SQL query to calculate the average price of all products of the manufacturer which code is 16. 

-- Sample table: item_mast

-- PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Soutions

-- Method-1

    SELECT AVG(pro_price) 
    FROM item_mast 
    WHERE pro_com=16;

-- Output

    -- avg
    -- 500.00