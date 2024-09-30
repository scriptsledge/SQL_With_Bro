-- a virtual table is based on the result-set of an sql statement
-- the fields in a view are fields from one or more real tables in the database
-- they are not real TABLE but they can be intracted with as if they were
select * from employees;

CREATE VIEW employee_attendence as
SELECT first_name, last_name from employees;

select * from employee_attendence ORDER BY last_name ASC;
drop view employee_attendence;

-- example 2
select * from customers;
alter table customers add COLUMN email varchar(50);
UPDATE customers SET email = "asmitbhai@email.com" where customer_id = 1;
UPDATE customers SET email = "divyanshsuni@email.com" where customer_id = 2;
UPDATE customers SET email = "ojaswatdigit@email.com" where customer_id = 3;
UPDATE customers SET email = "kachuanikhil@email.com" where customer_id = 4;

CREATE VIEW customer_emails as SELECT email FROM customers;
select * from customer_emails;

INSERT into customers values (5, "Vedansh", "Rasia", NULL, "vedia@email.com");
select * from customers;
select * from customer_emails;