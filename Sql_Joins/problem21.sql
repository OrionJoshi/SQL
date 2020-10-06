-- 21. Write a SQL query to display all the data from the item_mast, including all the data
--  for each item's producer company.

-- Sample table: company_mast

--     COM_ID COM_NAME
-- ------ -------------
--     11 Samsung
--     12 iBall
--     13 Epsion
--     14 Zebronics
--     15 Asus
--     16 Frontech

-- Sample table: item_mast 

--     PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Solution

-- Method-1

   SELECT *
   FROM item_mast 
   INNER JOIN company_mast
        ON item_mast.pro_com= company_mast.com_id;

-- Output

    --     pro_id	pro_name		pro_price	pro_com	com_id	com_name
    -- 101	Mother Board		3200.00		15	15	Asus
    -- 102	Key Board		450.00		16	16	Frontech
    -- 103	ZIP drive		250.00		14	14	Zebronics

