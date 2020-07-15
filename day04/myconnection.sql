select avg(salary), max(salary), min(salary) ,sum(salary) 
from EMPLOYEES 
where job_id like '%REP%';

select min(hire_date), max(hire_date) from EMPLOYEES;

select count(*) from EMPLOYEES where department_id=50;

select count(*) from EMPLOYEES;

select count(commission_pct) from EMPLOYEES where department_id=50;

select  DISTINCT department_id FROM EMPLOYEES;

select COUNT (DISTINCT department_id) FROM EMPLOYEES;

select count(manager_id) from EMPLOYEES;

select count(DISTINCT manager_id) from EMPLOYEES;

select count(*) from EMPLOYEES where manager_id is null;

select avg(commission_pct) from EMPLOYEES;

select avg(nvl(commission_pct,0)) from EMPLOYEES;

select avg(salary) from EMPLOYEES group by department_id;

select department_id,job_id ,sum(salary) from employees where department_id >40
group by department_id,job_id
order by department_id;

select department_id, avg(salary) from employees group by DEPARTMENT_ID;


select department_id, avg(salary) from employees  group by DEPARTMENT_ID
having avg(salary) >8000 ;

select job_id, sum(salary) PAYROLL
FROM EMPLOYEES
WHERE JOB_ID NOT like '%rep%' 
group by job_id
having sum(salary)> 13000
order by sum(salary);

select manager_id, min(salary)
from employees
where MANAGER_ID is not null
group by MANAGER_ID
having min(salary) >=4000
order BY min(salary)
DESC;