use office;
create table Employee(
first varchar(100),
last varchar(100),
id int,
age int,
city varchar(100),
state varchar(100),
primary key(id)
);



insert into employee values('John','Jones',99980,45,'Payson','Arizona');
insert into employee values('Mary','Jones',99982,25,'Payson','Arizona');
insert into employee values('Eric','Edwards',88232,32,'San Diego','California');
insert into employee values('Mary Ann','Edwards',88233,32,'Phoenix','Arizona');
insert into employee values('Ginger','Howell',98002,42,'Cottonwood','Arizona');
insert into employee values('Sebastian','Smith',92001,23,'Glia Bend','Arizona');
insert into employee values('GUS','Gray',22322,35,'Bagdad','Arizona');
insert into employee values('Mary Ann','May',32326,52,'Tucson','Arizona');


select * from employee;

-- Exercise
-- 1. list all employees staying in arizona
select * from employee where state='Arizona';

-- 2 find the total count of employee staying in arizona
select count(id) from employee where state='Arizona';

-- 3 list number of employees whose firstnames starts with 'M'
select * from employee where first like 'M%';

-- 4 find all the employees that are staying in arizona and age >30
select * from employee where state ='Arizona' and age>30;

-- 5 find all employess that their first and last names starts with 'j', include all other details except age and id
select first,last,city,state from employee where first like 'J%';

-- 6 find all employess that their last names starts with 'Ed', include all other details except age and id
select first,last,city,state from employee where last like 'Ed%';

-- 7 find all the employees that are staying in califonia 
select * from employee where state='California';