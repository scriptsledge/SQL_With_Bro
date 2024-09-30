-- ON DELETE SET NULL = When a FK is deleted, replace FK with NULL
-- ON DELETE CASCADE = When a FK is deleted, delete row

SELECT * FROM transactions;
SELECT * FROM customers;
DELETE FROM customers WHERE customer_id = 4;
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM customers WHERE customer_id = 4;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO customers VALUES (4, "Nikhil", "Kachua", 2, "kachuanik@email.com");

-- On Delete set NULL
-- if we were to create a new table
/*
CREATE TABLE transactions (
	transaction_id INT PRIMARY KEY,
    amount DECIMAL(5,2),
    customer_id INT,
	order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE SET NULL
);
*/
-- TO UPDATE ALREADY EXISTING TABLE WITH ON DELETE CLAUSE
ALTER TABLE transactions drop FOREIGN KEY fk_customer_id;
ALTER TABLE transactions ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES
customers(customer_id) ON DELETE SET NULL;

DELETE FROM customers WHERE customer_id = 4;
SELECT * FROM transactions;

INSERT INTO customers VALUES (4, "Nikhil", "Kachua", 2, "kachuanik@email.com");

ALTER TABLE transactions drop FOREIGN KEY fk_customer_id;
ALTER TABLE transactions ADD CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES
customers(customer_id) ON DELETE CASCADE;

UPDATE transactions SET customer_id = 4 WHERE transaction_id = 1005;
DELETE FROM customers WHERE customer_id = 4;
SELECT * FROM transactions;
SELECT * FROM customers;