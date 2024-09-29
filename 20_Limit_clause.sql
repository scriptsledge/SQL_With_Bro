-- Limit clause is used to limit the number of records
-- can be used to display a large data on pages (pagination)
select * from customers limit 2;
select * from customers limit 3;
select * from customers ORDER BY last_name LIMIT 1;
select * from customers ORDER BY last_name DESC LIMIT 1;
select * from customers LIMIT 3, 1;