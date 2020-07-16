select department_id from DEPARTMENTS 
minus
select department_id from EMPLOYEES
where job_id='ST_CLERK';

SELECT country_id,country_name
FROM countries
MINUS
select l.country_id ,c.country_name 
FROM locations l join COUNTRIES c 
on (l.country_id = c.country_id)
join  departments d
on d.location_id=l.location_id;

SELECT country_id,country_name
FROM countries
MINUS
SELECT l.country_id,c.country_name
FROM locations l JOIN countries c
ON (l.country_id = c.country_id)
JOIN departments d
ON d.location_id=l.location_id;

select employee_id , job_id , department_id from EMPLOYEES where 
department_id =50 or department_id=80;


select employee_id , job_id , department_id from EMPLOYEES where 
department_id =50
UNION 
select employee_id , job_id , department_id from EMPLOYEES where 
department_id =80;

SELECT employee_id from EMPLOYEES 
where job_id='SA_REP' 
INTERSECT
SELECT employee_id from EMPLOYEES 
where department_id= 80; 
