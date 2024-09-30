/* Stored procedure = is prepared SQL code that you can save
great if there's a query that you write often */

SELECT DISTINCT first_name, last_name FROM transactions INNER JOIN customers
on transactions.customer_id = customers.customer_id;

DELIMITER $$
CREATE PROCEDURE get_customers()
BEGIN
	SELECT * FROM customers;
END $$
DELIMITER ;

call get_customers();
DROP PROCEDURE get_customers;

-- parameterised procedure
DELIMITER ??
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
	SELECT * FROM customers WHERE customer_id = id;
END ??
DELIMITER ;

CALL find_customer(2);
CALL find_customer(5);
DROP PROCEDURE find_customer;

DELIMITER ?
CREATE PROCEDURE find_customer(IN f_name VARCHAR(50), IN l_name VARCHAR(50))
BEGIN
	SELECT * FROM customers WHERE first_name = f_name AND last_name = l_name;
END?
DELIMITER ;

CALL find_customer("Vedansh", "Rasia");

/* stored procedures
- reduces network traffic
- increases performance
- secure, admin can grant permission to use
- increases memory usage of every connection */