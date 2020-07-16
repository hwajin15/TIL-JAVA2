create table dept80
as select employee_id, last_name,
salary*12 ANNSAL,
hire_date 
from employees 
where department_id =80;

select * from dept80;

alter table dept80
add(job_id varchar2(9));