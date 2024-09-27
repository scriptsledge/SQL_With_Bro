create database mydb;
use mydb;
Create table employees (
	employee_id INt,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay decimal(5,2),
    hire_date date
);
select * from employees;
rename table employees to workers;
rename table workers to employees;
alter table employees add phone_number varchar(15);
select * from employees;
alter table employees rename column phone_number to email;
select * from employees;
alter table employees modify column email varchar(100);
alter table employees modify email varchar(100) after last_name;
select * from employees;
alter table employees modify email varchar(100) first;
select * from employees;
alter table employees drop column email;
select * from employees;