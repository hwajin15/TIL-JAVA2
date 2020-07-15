select last_name ,hire_date 
from EMPLOYEES
where hire_date >(select hire_date 
from EMPLOYEES
where last_name ='Davies');

select employee_id, last_name
from EMPLOYEES
where SALARY IN (select min(salary) from EMPLOYEES
group by department_id);

select employee_id, last_name,job_id , salary
from EMPLOYEES
where SALARY <ANY
(SELECT salary from EMPLOYEES where job_id='IT_PROG')
AND job_id <> 'IT_PROG';
/*>ANY �ִ밪���� ����
*/
select employee_id, last_name,job_id , salary
from EMPLOYEES
where SALARY <ALL
(SELECT salary from EMPLOYEES where job_id='IT_PROG')
AND job_id <> 'IT_PROG';
/*>ALL  �� �ִ밪���� ŭ <ALL �� �ּҰ����� ������ �ǹ� */

SELECT EMP.LAST_NAME FROM EMPLOYEES EMP
WHERE EMP.EMPLOYEE_ID NOT IN 
(SELECT mgr.manager_id from EMPLOYEES mgr);
/*���߿� �ϳ��� ������ �ȵ� not in null �� ������ �񱳰� �ȵǼ� �ƹ��͵� ������� */

select last_name from EMPLOYEES 
where EMPLOYEE_ID not in
(select MANAGER_ID from EMPLOYEES where manager_id is not null);

select * from EMP_1 where hiredate
>(select hiredate from EMP_1 where ename='���߱�');

select * from EMP_1 where age = (select age from EMP_1 where ename ='�տ���') and ENAME<> '�տ���';

select * from EMP_1 where AGENCY_ID = (select AGENCY_ID from EMP_1 where ename ='�ڹο�') and SAL > (select SAL from EMP_1 where ename ='�ڹο�');

select e.ename ,e.mento_id from EMP_1 e 
where e.EMPNO not in(select m.mento_id from EMP_1 m where mento_id is not null);

select * from EMP_1 where sal >(select avg(sal) from EMP_1 where AGENCY_id =20);