
alter session set nls_language ='American';
alter session set nls_date_format ='DD-MON-RR';
select * from nls_session_parameters where parameter like '%date%';
select last_name , hire_Date from EMPLOYEES order by hire_date;
select sysdate from dual;
select employee_id, to_char(hire_date,'mm/yy') Month_hired from employees where last_name ='Higgins';
select employee_id, to_char(hire_date,'year') Month_hired from employees where last_name ='Higgins';
select employee_id, hire_date from employees where hire_date < '11-dec-08';
select employee_id, to_char(hire_date,'DD-MON-RR') Month_hired from employees where hire_date < '11-dec-08';
select employee_id, to_char(hire_date,'fmDD Month YYYY') AS HIREDATE from employees;

select last_name, TO_CHAR(hire_date,'fmDdspth "of" MONTH YYYY fmHH:MI:SS AM') HIREDATE from EMPLOYEES;
select salary, TO_CHAR(salary, '$99,999.00') salary from EMPLOYEES where last_name ='Ernst';

select last_name, hire_date from employees where hire_date = TO_DATE('May   24,2007','fxMonth   DD, YYYY');
select last_name, hire_date from employees where hire_date = TO_DATE('May   24,2007','Month DD, YYYY');




