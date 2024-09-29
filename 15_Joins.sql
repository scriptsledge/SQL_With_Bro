-- a join is a clause that is used to combine rows from two or more tables based on related columns between them such as foreign key
insert into transactions (amount, customer_id) VALUES
(1.00, NULL);
select * from transactions;
insert into customers (first_name, last_name) values
("Nikhil", "Kachua");
select * from customers;

-- INNER JOIN
select transaction_id, amount, first_name, last_name from transactions INNER JOIN customers
on transactions.customer_id = customers.customer_id;

-- LEFT JOIN
select * from transactions LEFT JOIN customers
on transactions.customer_id = customers.customer_id;

-- RIGHT JOIN
select * from transactions RIGHT JOIN customers
on transactions.customer_id = customers.customer_id;