create table test (
	my_date date,
	my_time time,
    my_datetime datetime
);
Insert into test values (current_date(), current_time(), now());
Insert into test values (null, null, now());
select * from test;
drop table test;