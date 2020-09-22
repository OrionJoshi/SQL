-- 27. Write a SQL query to find the item name and price in Rs.


-- Sample table: item_mast

-- PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Soutions

-- Method-1

    SELECT pro_name as "Item Name", CONCAT('Rs',' ',pro_price) AS "Price"
    FROM item_mast;

-- Method-2

    SELECT pro_name as "Item Name", pro_price AS "Price in Rs."
    FROM item_mast;

-- Output

-- Item Name	Price
-- Mother Board	Rs 3200.00
-- Key Board	Rs 450.00
-- ZIP drive	Rs 250.00