set autocommit = off; -- by default autocommit is set to on
commit; -- just like creating a restore point in windows
select * from employees;
delete from employees; -- in case we accidently delete something
select * from employees;
rollback; -- we can rollback to last commit
select * from employees;