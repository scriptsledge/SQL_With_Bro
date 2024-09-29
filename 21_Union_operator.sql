-- UNION combines the result of two or more select statements
CREATE table income (income_name varchar(25), amount DECIMAL(8,2));
insert into income values
	("orders", 100000.00),
    ("merchandise", 500000.00),
    ("services", 125000.00);
CREATE table expenses (expense_name varchar(25), amount DECIMAL(8,2));
insert into expenses values
	("wages", -250000.00),
    ("tax", -50000.00),
    ("repairs", -15000.00);
SELECT * FROM income UNION SELECT * FROM expenses;

drop table income;
drop table expenses;

-- in order to join two select statements together they need same number of columns
SELECT first_name, last_name FROM employees
UNION
SELECT first_name, last_name FROM customers;

INSERT INTO employees VALUES (7,"Nikhil", "Kachua", 300.00, "supplier", "2019-07-01");
select * from customers;
select * from employees;

SELECT first_name, last_name FROM employees
UNION ALL
SELECT first_name, last_name FROM customers;

DELETE FROM customers where customer_id = 7;