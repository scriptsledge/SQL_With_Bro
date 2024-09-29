-- self Join joins another copy of a table to itself, used to compare rows of the same table
-- helps to display a heirarchy of data
alter table customers add referral_id int;
update customers set referral_id = 1 where customer_id = 2;
update customers set referral_id = 2 where customer_id = 3;
update customers set referral_id = 2 where customer_id = 4;
SELECT a.customer_id, a.first_name, a.last_name, CONCAT(b.first_name, " ", b.last_name) as referred_by
from customers AS a LEFT JOIN customers AS b ON a.referral_id = b.customer_id;
select * from customers;

select * from employees;
alter table employees add supervisor_id int;
update employees set supervisor_id = 5 where job = "cook" OR job = "cashier" OR job = "janitor";
update employees set supervisor_id = 1 where job = "asst. manager" OR job = "supplier";
SELECT a.first_name, a.last_name, CONCAT(b.first_name, ' ', b.last_name) AS "reports to"
FROM employees AS a
INNER JOIN employees AS b ON a.supervisor_id = b.employee_id;
SELECT a.first_name, a.last_name, CONCAT(b.first_name, ' ', b.last_name) AS "reports to"
FROM employees AS a
LEFT JOIN employees AS b ON a.supervisor_id = b.employee_id;