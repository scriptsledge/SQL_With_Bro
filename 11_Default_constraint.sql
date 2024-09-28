insert into products values
	(5, "Magic Keyboard", 0.00),
    (6, "Mac Mini", 0.00),
    (7, "Apple Watch", 0.00),
    (8, "iPad pro", 0.00)
;
select * from products;
delete from products where product_id >= 5;
-- if we were to recreate this table with default constraint
/* create table products (
	 product_id int,
     product_name varchar(25),
     price decimal(4,2) default 0
); */
-- for already existing table
alter table products alter price SET DEFAULT 0;
select * from products;
insert into products (product_id, product_name) values
	(5, "Magic Keyboard"),
    (6, "Mac Mini"),
    (7, "Apple Watch"),
    (8, "iPad pro")
;
select * from products;

-- another example
create table transactions(
	transaction_id int,
    amount decimal (5,2),
    transaction_date datetime default now()
);
insert into transactions (transaction_id, amount)
values (1, 50.3);
select * from transactions;
insert into transactions (transaction_id, amount)
values (2, 10.00);
select * from transactions;
insert into transactions (transaction_id, amount)
values (3, 200.78);
select * from transactions;
drop table transactions;