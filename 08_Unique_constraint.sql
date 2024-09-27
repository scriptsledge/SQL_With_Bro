create table products (
	product_id int,
    product_name varchar(25) unique,
    price decimal(4.2)
);
delete from products;
alter table products add constraint unique(product_name);
Insert into products values
	(1, 'macbook', 100),
    (2, 'iphone', 150),
    (3, 'airpod', 25.99),
    (4, 'ipad', 75.99)
;
/* insert into products value (5, 'iphone', 100); */ -- this will give error as iphone is already in product_name
select * from products;