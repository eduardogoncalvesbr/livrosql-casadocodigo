--drop user tsql
--/
create user tsql identified by tsql
/
grant connect, resource to tsql
/
grant create table to tsql
/
grant create view to tsql
/