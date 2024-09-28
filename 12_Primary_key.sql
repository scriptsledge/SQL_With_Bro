-- primary key while creating table
create table transactions(
	transaction_id int primary key,
    amount decimal(5,2)
);
delete from transactions;
-- for already existing table
/* alter table transactions add constraint primary key (transaction_id); */
insert into transactions values (1000, 100);
insert into transactions values (1001, 150);
insert into transactions values (1001, 50); -- will give error, primary key should be unique
insert into transactions values (null, 100); -- will give error, primary key cannot be null
insert into transactions values (1002, 100);
-- if a customer comes for refund we can easily check amount
select amount from transactions where transaction_id = 1001;
select * from transactions;
-- there can only be one primary key for a table