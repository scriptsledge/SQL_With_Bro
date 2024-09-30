-- rollup, extension of the group by clause
-- produces another row and shows the grand total (super-aggregate value)

SELECT SUM(amount), order_date from transactions GROUP BY order_date with ROLLUP;
SELECT COUNT(amount), order_date from transactions GROUP BY order_date with ROLLUP;

SELECT COUNT(transaction_id) AS "# of orders", customer_id from transactions GROUP BY customer_id with ROLLUP;
SELECT * FROM employees;
SELECT SUM(hourly_pay), employee_id AS 'hourly pay' FROM employees GROUP BY employee_id WITH ROLLUP;