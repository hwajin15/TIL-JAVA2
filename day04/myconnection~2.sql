select * from EMP_1;
select * from agency;

select e.name, e.sql, a.AGENCY_NAME 
from EMP_1 e, agency a
where e.agency_id =a.agency_id;

select * from LOC_1
;
select employee_id, first_name , job_id ,job_title
from EMPLOYEES NATURAL join jobs;

select department_id, department_name, location_id ,city
from DEPARTMENTS
NATURAL join LOCATIONS 
where department_id in(20,50);

select * from EMPLOYEES join departments
using (department_id);
/*using 절에서 alias 를 사용하면 안됨*/
select l.city ,d.department_name
from locations l join departments d
using (location_id) where location_id =1400;
/*d.location x*/

select d.manager_id from EMPLOYEES e join departments d
using (department_id)
where department_id=50;


select d.manager_id from EMPLOYEES e join departments d
on e.DEPARTMENT_ID =d.DEPARTMENT_ID
join locations l 
on d.location_id =l.location_id;


select d.manager_id from EMPLOYEES e join departments d
on e.DEPARTMENT_ID =d.DEPARTMENT_ID
join locations l 
on d.location_id =l.location_id
and e.manager_id=149;

select * from EMPLOYEES worker ,EMPLOYEES manager 
where worker.manager_id= manager.EMPLOYEE_ID;

select * from EMPLOYEES e left outer join departments d
on e.DEPARTMENT_ID =d.DEPARTMENT_ID;

select DEPT.DEPTNO ,DEPT.DNAME, EMP.ENAME,EMP.SAL
from DEPT ,EMP 
where DEPT.DEPTNO = EMP.DEPTNO
AND
EMP.JOB='MANAGER';

SELECT e.last_name, d.department_id, d.DEPARTMENT_NAME
from employees e , departments d
where e.department_id(+)= d.department_id;

SELECT e.last_name, d.department_id, d.DEPARTMENT_NAME
from employees e full outer join departments d
on e.department_id= d.department_id;

SELECT * FROM EMP_1 NATURAL JOIN AGENCY;

SELECT e.empno,e.ename, m.ename
from EMP_1 e ,EMP_1 m 
where e.MENTO_ID=m.MENTO_ID;

SELECT e.ename, e.agengy_id, a.agency_id, a.agency_name
FROM EMP_1 e right outer join agency a
where e.agency_id(+) = a.AGENCY_ID;


SELECT e.ename, e.agency_id, a.agency_id, a.agency_name
FROM EMP_1 e full outer join agency a
where e.agency_id(+) = a.AGENCY_ID;

select e.ename, e.agency_id, a.loc_id, e.sal
from EMP_1 e , AGENCY a 
where e.AGENCY_ID =a.AGENCY_ID
and a.AGENCY_NAME='나무엑터스';