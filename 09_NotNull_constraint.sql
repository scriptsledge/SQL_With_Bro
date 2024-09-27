-- to create table with not null constraint
/* create table products (
	product_id int,
    product_name varchar(25),
    product_price decimal(4,2) not null
); */
-- for already existing table
alter table products modify price decimal(4,2) not null;
select * from products;