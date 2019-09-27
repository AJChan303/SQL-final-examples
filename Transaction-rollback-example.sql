begin transaction;

insert into job (description, salary) values ('test', 1000000);

rollback

select * from job order by id desc;n