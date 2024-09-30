/* Group by = aggeate all rows by a specific column often used with
			aggregate funtions.
            e.g., SUM(), MAX(), MIN(), AVG(), COUNT() */
SELECT * FROM transactions;
ALTER TABLE transactions ADD order_date DATE;
update transactions set order_date = "2023-01-01" where transaction_id = 1000;
update transactions set order_date = "2023-01-01" where transaction_id = 1001;
update transactions set order_date = "2023-01-02" where transaction_id = 1002;
update transactions set order_date = "2023-01-02" where transaction_id = 1003;
update transactions set order_date = "2023-01-03" where transaction_id = 1004;
INSERT INTO transactions (amount, customer_id, order_date) values (2.49, 4, "2023-01-03");
INSERT INTO transactions (amount, order_date) values (5.48, "2023-01-03");

-- we can use group by clause to find how much money is made on each day
SELECT sum(amount), order_date from transactions GROUP BY order_date;
SELECT max(amount), order_date from transactions GROUP BY order_date;
SELECT min(amount), order_date from transactions GROUP BY order_date;
SELECT avg(amount), order_date from transactions GROUP BY order_date;
SELECT count(amount), order_date from transactions GROUP BY order_date;

-- how much has each customer has spent in total
SELECT customer_id, sum(amount) from transactions GROUP BY customer_id;
SELECT customer_id, max(amount) from transactions GROUP BY customer_id;
SELECT customer_id, min(amount) from transactions GROUP BY customer_id;
SELECT customer_id, avg(amount) from transactions GROUP BY customer_id;
SELECT customer_id, count(amount) from transactions GROUP BY customer_id;

-- using where along with group by clause normally does't work
-- that's where we use having
-- to find customers who have puchased more than ones in our organization
SELECT customer_id, count(amount) from transactions GROUP BY customer_id HAVING count(amount)>1 AND customer_id is NOT NULL;
