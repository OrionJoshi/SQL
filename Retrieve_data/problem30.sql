-- 30. Write a SQL query to find the name and price of the cheapest item(s). 

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
    WHERE pro_price = 
    (SELECT MIN(pro_price) FROM item_mast);

-- Method-2
    
    -- SELECT pro_name, pro_price
    -- FROM item_mast
    -- ORDER BY pro_price
    -- LIMIT 1

-- Output

-- pro_name	pro_price
-- ZIP drive	250.00
-- Mouse	    250.00