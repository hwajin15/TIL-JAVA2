create table dept80
as select employee_id, last_name,
salary*12 ANNSAL,
hire_date 
from employees 
where department_id =80;

select * from dept80;

alter table dept80
add(job_id varchar2(9));

ALTER table dept80 
modify(last_name varchar2(30));

desc dept80;

alter table dept80 
drop( job_id);

select * from dept80;

alter table dept80 set unused(hire_date);
select * from dept80;

alter table dept80
set unused(last_name);

alter table dept80
drop UNUSED COLUMNS;

alter table copy_emp read only;

select * from copy_emp;

drop table copy_emp;

drop table dept80;

select * from dept80;

flashback table dept80 to before drop;