-- foreign key is like primary key for one table that can be found on different table
-- using foreign key we can establish a link between two tables
drop table customers;
create table customers (
	customer_id int PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
insert into customers (first_name, last_name) values
	("Asmit", "Bhai"),
	("Divyansh", "Suni"),
    ("Ojaswat", "Digit")
;
delete from customers;
select * from customers;
drop table transactions;
create table transactions (
	transaction_id INT PRIMARY key AUTO_INCREMENT,
    amount DECIMAL(5,2),
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
select * from transactions;
-- to drop a foreign key
alter table transactions DROP FOREIGN KEY transactions_ibfk_1;
-- we can also give foreign key a neme
alter table transactions add constraint fk_customer_id
foreign key (customer_id) REFERENCES customers(customer_id);

delete from transactions;
select * from transactions;
alter table transactions AUTO_INCREMENT = 1000;
insert into transactions (amount, customer_id) VALUEs
	(4.99, 3),
    (2.89, 2),
    (3.38, 3),
    (4.99, 1);
select * from transactions;
DELETE from customers WHERE customer_id = 3; -- will give error, cause it will break the link between tables