SELECT last_name , salary, NVL(commission_pct,0),
salary*12 +(salary*12 *NVL(commission_pct,0)) from employees;

SELECT LAST_NAME , SALARY ,COMMISSION_PCT, NVL2(commission_pct,'sal+comm','sal')income from EMPLOYEES
where department_id in(50,80);

select first_name , Length(first_name) "expr1",last_name, Length(Last_name) "expt2"
,NULLIF(LENGTH(first_name),LENGTH(last_name)) result from employees;

select last_name , salary, commission_pct, 
coalesce ((salary+(commission_pct*salary)), salary+
2000) "new salary" from employees;

select last_name,job_id,salary ,
case job_id when 'IT_PROG' THEN 1.10*salary 
WHEN 'ST_CLERK' THEN 1.15*salary
ELSE SALARY END "REVISED_Salary"
from employees;


select last_name, salary, 
case when salary <5000 then 'low'
when salary <10000 then 'medium'
when salary< 20000 then 'good'
else 'excellent'
end qualified_salary from EMPLOYEES;


select last_name, salary, 
decode(job_id,'IT_PROG',1.10*salary,
'ST_CLERK',1.15*salary, 
salary)REVISED_Salary
from employees;

select last_name , hire_date ,add_months(HIRE_DATE,6) as review from employees;

SELECT last_name, hire_date,
 TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'MONDAY'),
 'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW
FROM employees; 


select last_name, NVL
(TO_CHAR(commission_pct),'NO COMMISSION') from EMPLOYEES;


select JOB_ID,
case JOB_ID
when 'AD_PRES' then 'A'
when 'ST_MAN' then 'B'
when 'IT_PROG' then 'C'
when 'SA_REP' then 'D'
when 'ST_CLERK' then 'E'
ELSE '0' END GRADE 
from EMPLOYEES;

select JOB_ID, 
decode(job_id,
'AD_PRES','A',
'ST_MAN' ,'B',
'IT_PROG' , 'C',
'SA_REP' , 'D',
'ST_CLERK' , 'E',
 '0' )FROM EMPLOYEES
