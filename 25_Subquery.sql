-- subquery
-- a query within another query
-- query(subquery)

SELECT first_name, last_name, hourly_pay,
	(SELECT avg(hourly_pay) FROM employees) as avg_pay from employees;
-- to find employees that have hourly pay >= average pay
SELECT first_name, last_name, hourly_pay from employees where hourly_pay>=(SELECT avg(hourly_pay) from employees);
SELECT * FROM employees;

-- example 2
select * FROM transactions;
SELECT first_name, last_name from customers where customer_id IN (SELECT DISTINCT customer_id from transactions where customer_id is Not NULL);
SELECT first_name, last_name from customers where customer_id NOT IN (1,2,3); -- subquery in our example returns (1,2,3)