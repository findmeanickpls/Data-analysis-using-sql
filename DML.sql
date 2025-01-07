use office ;


-- Update (DmL)
update employee
set age =25        -- use the set clause to specify the column you want to update
where last='Smith'; 

-- Delete (Dml)      
delete from employee 
where first like 'Mary%';

set sql_safe_updates=0;