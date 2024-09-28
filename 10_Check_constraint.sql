-- if we were to create employees table with check constraint
/* create table employees(
	employee_id INt,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay decimal(5,2),
    hire_date date,
    constraint chk_hourly_pay check(hourly_pay>=100)
); */
-- for already existing table
alter table employees add constraint
chk_hourly_pay check(hourly_pay >= 100);
insert into employees values (6, "Priyansh", "Soni", 99.999999, "2021-05-03");
select * from employees;
-- to delete a check
alter table employees drop check chk_hourly_pay;
-- check constraint is use to limit what value can be placed to column