USE MYDB;
SELECT * FROM EMPLOYEES; -- * shows all column
select first_name, last_name from employees; -- shows only first_name and last name column
select * from employees where employee_id = 1; -- where helps to extract more specific data
select * from employees where employee_id = 2;
select * from employees where first_name = "Ojaswat";
select * from employees where hourly_pay >= 260;
select * from employees where hire_date <= "2022-01-01";
select * from employees where employee_id != 1;
select * from employees where hire_date is NULL; -- we use 'is' instead '=' for null
select * from employees where hire_date is not NULL;