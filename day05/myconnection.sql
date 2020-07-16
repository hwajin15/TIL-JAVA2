select job_id, department_id from EMPLOYEES 
union all 
select job_id, department_id 
from RETIRED_EMPLOYEES 
order by job_id;

select job_id, department_id from EMPLOYEES 
intersect 
select job_id, department_id 
from RETIRED_EMPLOYEES 
order by job_id;

-- minus 현재90 ,예전90번 부서
select job_id, department_id from EMPLOYEES 
minus 
select job_id, department_id 
from RETIRED_EMPLOYEES 
order by job_id;

select location_id, department_name, TO_CHAR(NULL) 
from departments union 
select location_id,TO_CHAR(NULL) state_province
from locations;

select department_id, job_id 
from employees union SELECT department_id, to_char(null)
from departments;

select e.ename , e.agency_id, a.agency_name from 
emp_1 e, agency a
where e.agency_id(+) = a.AGENCY_ID
union

select e.ename , e.agency_id, a.agency_name from 
emp_1 e, agency a
where e.agency_id = a.AGENCY_ID(+);