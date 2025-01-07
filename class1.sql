create database office;
use office;
create table employee(
empid int ,
first_name varchar(100),
last_name varchar(100),
dptid int,
primary key (empid),
foreign key (dptid) references department(dptid)
);

create table department(
dptid int,
dpt_name varchar(200),
dptadd varchar(100),
primary key (dptid)
);


insert into employee values(1,'john','doe');
insert into employee values(2,'joy','favor');
insert into employee values(3,'hassan','ola');



select * from employee;

show tables; 