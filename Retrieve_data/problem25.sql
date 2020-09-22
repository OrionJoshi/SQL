-- 25. Write a SQL query to find all the products with a price between Rs.200 and Rs.600. 

-- Sample table: item_mast

-- PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Soutions

-- Method-1

    SELECT * FROM item_mast
    WHERE pro_price BETWEEN 200 AND 600;

-- Method-2

    SELECT *
    FROM item_mast
    WHERE Pro_Price>= 200 AND Pro_Price<=600
    
-- Output

-- pro_id		pro_name	pro_price	pro_com
-- 102		Key Board	450.00		16
-- 103		ZIP drive	250.00		14
-- 104		Speaker		550.00		16
