-- UNDEFINE 명령을 실행하여 변수를 제거합니다.
UNDEFINE Enter_name

-- 아래 SELECT 문을 실행하여 employees 테이블의 값을 검색합니다.
SELECT last_name, hire_date
FROM employees
WHERE department_id = (SELECT department_id
 FROM employees
 WHERE last_name = '&&Enter_name')
AND last_name <> '&Enter_name';

select employee_id , last_name ,salary FROM EMPLOYEES where SALARY>
(select avg(SALARY) from EMPLOYEES)
order by SALARY;

select employee_id,last_name FROM employees
where department_id IN (SELECT department_ID FROM EMPLOYEES  where LAST_NAME like '%u%');

Select last_name, department_id, job_id from EMPLOYEES where 
department_id in(select department_id from DEPARTMENTS where location_id=1700);

select last_name , salary from EMPLOYEES where manager_id  in(select MANAGER_ID from EMPLOYEES where last_name='King');

select department_id, last_name, job_id 
from EMPLOYEES where department_id in
(select department_id 
from departments 
where department_name='Executive'

);
select last_name from EMPLOYEES where SALARY
> ANY(select salary from EMPLOYEES where department_id=60);

select employee_id, last_name, salary from EMPLOYEES where DEPARTMENT_ID
 IN(select department_id from EMPLOYEES where last_name like '%u%')and
SALARY> (SELECT avg(salary) from EMPLOYEES );