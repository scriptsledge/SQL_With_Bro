-- the auto-increment attribute can be applied to a column that is set as a key
-- whenever we insert a new row our primary key can be populate automatically
drop table transactions;
create table transactions (
	transaction_id int primary key auto_increment,
    amount decimal(5,2)
);
insert into transactions (amount) values
	(30),
    (234),
    (89.6),
    (999.9)
;
select * from transactions;
-- to set primary key begin at different VALUE, default is 1
alter TABLE transactions AUTO_INCREMENT = 1000;
delete from transactions;
insert into transactions (amount) values
	(30),
    (234),
    (89.6),
    (999.9)
;
select * from transactions;