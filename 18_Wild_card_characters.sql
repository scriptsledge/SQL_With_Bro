-- wild card characters % _
-- used to substitute one or more characters in a string

SELECT * FROM employees where first_name LIKE "s%";
SELECT * FROM employees where hire_date LIKE "2023%";
SELECT * FROM employees where last_name LIKE "%t";
SELECT * FROM employees where first_name LIKE "pr%";
SELECT * FROM employees where job LIKE "_ook";
SELECT * FROM employees where hire_date LIKE "____-05-__";
SELECT * FROM employees where hire_date LIKE "____-__-23";
SELECT * FROM employees where job LIKE "_a%";