use office;
show tables;
select * from employee;
select * from project;


insert into employee values('deen','sheriff',98003,42,'Cottonwood','Arizona');
insert into employee values('angel','favor',98005,42,'Cottonwood','Arizona');
insert into employee values('joseph','joy',98006,42,'Cottonwood','Arizona');



create table project(
project_id int,
project_name varchar(200),
student_id int
);

insert into project values(1,'Data Science',92001);
insert into project values(2,'Data Science',22322);
insert into project values(4,'Data Science',98002);
insert into project values(2,'Data Science',22322);
insert into project values(1,'Data Science',92001);
insert into project values(3,'Data Science',88232);
insert into project values(3,'Data Science',11121);
insert into project values(3,'Data Science',11123);
insert into project values(3,'Data Science',11125);

select distinct student_id from project;


-- RIGHT JOIN
select a.*, b.*
from employee a right join project b
on a.id = b.student_id;

select a.first,a.id, b.project_name,b.student_id
from employee a right join project b
on a.id = b.student_id;

-- Left Join
select a.*,b.*
from employee a left join project b
on a.id = b.student_id;

select a.first,a.id, b.project_name,b.student_id
from employee a left join project b
on a.id = b.student_id;

-- inner join
select a.*,b.*
from employee a inner join project b
on a.id = b.student_id;

select a.first,a.id, b.project_name,b.student_id
from employee a inner join project b
on a.id = b.student_id;

-- outer join
select a.first,a.id, b.project_name,b.student_id
from employee a right join project b
on a.id = b.student_id

union

select a.first,a.id, b.project_name,b.student_id
from employee a left join project b
on a.id = b.student_id;





-- select a.first,a.id, b.project_name,b.student_id
-- from employee a join project b
-- on a.id = b.student_id;