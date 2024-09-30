/* Trigger = When an event happens, do something
e.g. (INSERT, UPDATE, DELETE)
checks data, handles errors, auditing tables */

ALTER TABLE employees MODIFY salary DOUBLE(10,2) AFTER hourly_pay;
SELECT * FROM employees;
UPDATE employees SET SALARY = HOURLY_PAY * 2080;

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);
show TRIGGERS;

UPDATE employees SET hourly_pay = 400 WHERE employee_id = 3;
SELECT * FROM employees;
UPDATE employees SET hourly_pay = hourly_pay + 1 WHERE NOT employee_id = 4;
SELECT * FROM employees;

DELETE from employees WHERE employee_id = 6;
CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay) * 2080;

INSERT INTO employees VALUES
(6, "Priyansh", "Suni", 10, NULL, "Janito", "2023-01-07", 5);
SELECT * FROM employees;

-- another example
DROP TABLE expenses;
CREATE TABLE expenses(
	expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    expense_total DECIMAL(15, 2)
);
INSERT INTO expenses VALUES
	(1, "salaries", 0),
    (2, "supplies", 0),
    (3,"taxes", 0);
    
UPDATE expenses SET expense_total = (SELECT SUM(SALARY) FROM EMPLOYEES)
WHERE expense_name = 'salaries';
SELECT * FROM expenses;

-- trigger for whenever we delete an employee we update total salary expense
CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = 'salaries';
SELECT * from employees;
DELETE FROM employees WHERE employee_id = 6;
SELECT * FROM expenses;

-- TRIGGER that will update the salaries expense
-- whenever we insert a new employee
CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = 'salaries';

INSERT INTO employees VALUES
(6, "Yuvraj", "Asur", 10, NULL, "Janitor", "2023-05-14", 5);
SELECT * FROM expenses;

-- trigger for when we change an employee salary
CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = 'salaries';

SELECT * FROM expenses;
UPDATE employees SET HOURLY_PAY = 100
WHERE employee_ID = 1;