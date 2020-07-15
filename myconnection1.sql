select sysdate ,current_date, current_timestamp from dual;

alter session set nls_language ='American';
alter session set nls_date_format ='DD-MON-RR';

SELECT last_name, hire_date
from employees 
where hire_date <'01-FEB-2008';

select sysdate ,sessiontimezone,current_date, current_timestamp from dual;

select last_name ,(SYSDATE-hire_date)/7 as weeks
from employees
where department_id=90;

select months_between ('01-sep-05','11-jan-04') from dual; 

select add_months('31-jan-04',1) from dual;

select add_months('31-jan-01',1) from dual;


select next_day('01-sep-05','friday')from dual;


select last_Day('01-sep-05') from dual;

select employee_id, hire_date, MONTHS_BETWEEN (SYSDATE,hire_date) TENURE,

next_day('01-sep-05','friday'), add_months(hire_date,6),last_Day(hire_date) from employees
WHERE MONTHS_BETWEEN (SYSDATE, HIRE_DATE)<150; 

SELECT ROUND(SYSDATE,'YEAR') FROM DUAL;

Select round(TO_DATE('03-jul-18', 'DD-MON-RR'),'month') as month ,
round(to_date('03-jul-18', 'DD-MON-RR'),'year') as year
from dual;

select trunc(sysdate,'day') from dual;

select trunc(sysdate,'yyyy') from dual;

select round(4.56) from dual;
select trunc(4.56) from dual;

select sysdate +1 from dual;