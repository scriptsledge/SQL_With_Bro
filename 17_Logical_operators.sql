-- can be understood as keywords used to combine more than one conditions
alter TABLE employees add COLUMN job VARCHAR(25) AFTER hourly_pay;
UPDATE employees SET job = "manager" where employee_id = 1;
UPDATE employees SET job = "cashier" where employee_id = 2;
UPDATE employees SET job = "cook" where employee_id = 3;
UPDATE employees SET job = "cook" where employee_id = 4;
UPDATE employees SET job = "asst. manager" where employee_id = 5;
UPDATE employees SET job = "janitor" where employee_id = 6;
select * from employees;

-- AND
select * from employees where hire_date < "2021-01-01" and job = "cook";

-- OR
select * from employees where job = "cook" OR job = "cashier";

-- NOT
select * from employees where not job = "manager" and not job = "asst. manager";

-- BETWEEN
select * from employees where hire_date BETWEEN "2021-01-01" AND "2023-01-01";

-- IN
select * from employees WHERE job in ("cook", "cashier", "janitor");