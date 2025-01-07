use office;
 create table company(
 first_name varchar(50),
 last_name varchar(50),
 title varchar(50),
 age int,
 salary int
 );
 
insert into company values('john','Doe','mr','30','1000');
insert into company values('avatar','angel','miss','28','1500');
insert into company values('tinubu','jagaban','mr','35','2000');
insert into company values('joy','favor','mrs','25','1200');

-- select (DqL)
 select * from company;
 select title,first_name,last_name from company;
--  we want to filter those older than 25 using the where clause
 select * from company where age >25;
 -- we want to filter those with salary more than or with 1500
 select * from company where salary >=1500;
 select first_name,last_name from company;
--  concatinating and using the as alias
 select concat(first_name,' ',last_name) as full_name from company;
 
 
 -- ALter table (DDL)
 -- if you are using the add clause you must include the column datatype
 alter table company 
 add staff_id int; 
 
 -- using the drop clause to drop a column
 -- Note: if you are using the drop clause you do not need to include the column datatype
 alter table company
 drop column salary;
 
 -- Drop table(DDL)
 drop table company;
 