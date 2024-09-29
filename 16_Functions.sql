-- a function is a stored program that we can pass parameters to return a value
-- if we have to find number of transactions in a particular date
select count(amount) from transactions;
-- we could give column an alias
select count(first_name) as Grahak FROM customers;
SELECT max(amount) as maximum from transactions;
SELECT min(amount) as manimum from transactions;
SELECT avg(amount) as average from transactions;
SELECT sum(amount) as sum from transactions;
select concat(first_name, " ", last_name) as fullName from employees;