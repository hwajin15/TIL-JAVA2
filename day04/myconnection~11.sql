select max(salary)as maximum, min(salary) as minimum, sum(salary) as sum,round( avg(salary),0)as average 
from EMPLOYEES;

select job_id, max(salary)as maximum, min(salary) as minimum, sum(salary) as sum,round( avg(salary),0)as average 
from EMPLOYEES
group by job_id;

select job_id , count(*) from EMPLOYEES
group by job_id;

select count(manager_id)as "Number Of Manager" from EMPLOYEES;

select max(salary) - min(salary) as DIFFERENCE FROM EMPLOYEES;

SELECT MANAGER_ID, MIN(Salary) from EMPLOYEES
where manager_id is not null
group by manager_id
having min(salary)>=6000
order by(min(SALARY))DESC
;

SELECT COUNT(*) total,
 SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2005,1,0))"2005",
 SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2006,1,0))"2006",
 SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2007,1,0))"2007",
 SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2008,1,0))"2008"
FROM employees;