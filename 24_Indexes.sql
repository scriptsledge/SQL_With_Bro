-- Index (BTree data structure)
-- Indexes are used to find VALUES within a specific column more quickly
-- MySQL normally searches sequentially through a column
-- the longer the column, the more expensive the operation is
-- UPDATE takes more time, SELECT takes less time

SHOW INDEXES FROM customers;
CREATE INDEX last_name_idx ON customers(last_name);
SELECT * FROM customers WHERE last_name = "digit"; -- not noticible difference

-- multicolumn index
CREATE INDEX last_name_first_name_idx on customers(last_name, first_name);
SHOW INDEXES FROM customers;

SELECT * FROM customers WHERE last_name = "Kachua";
SELECT * FROM customers WHERE last_name = "Kachua" AND first_name = "Nikhil";
/* will get indexing benefit on both of above select queries but not on query below*/
SELECT * FROM customers WHERE first_name = "Nikhil";

ALTER TABLE customers drop INDEX last_name_idx;
select * from customers;