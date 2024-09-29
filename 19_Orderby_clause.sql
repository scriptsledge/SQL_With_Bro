SELECT * from employees ORDER BY last_name;
SELECT * from employees ORDER BY last_name DESC;
SELECT * from employees ORDER BY last_name ASC; -- we don't need to explicitly write ASC
SELECT * from employees ORDER BY first_name;
SELECT * from employees ORDER BY first_name DESC;
SELECT * from employees ORDER BY hire_date;
SELECT * from employees ORDER BY hire_date DESC;
SELECT * from transactions ORDER BY amount;
SELECT * from transactions ORDER BY amount DESC, customer_id ASC;