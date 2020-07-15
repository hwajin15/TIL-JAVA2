SELECT ename,to_char(hiredate,'DD-MON-YYYY')
FROM EMP 
WHERE hiredate < TO_DATE('01-JAN-81','DD-MON-RR');

select ename,hiredate from emp order by 2;

select * from emp where TO_DATE(hiredate, 'DD-MON-yy') > '01-JAN-81';

select to_char(sysdate,'DDth') from dual;
select to_char(sysdate,'fmDDth') from dual;

select to_char(sysdate,'DDsp') from dual;
select to_char(sysdate,'DDspth') from dual;

select to_char(sysdate,'DD "of" MM year') from dual;

select to_char(sysdate ,'ddd') from dual;
select to_char(sysdate ,'dd') from dual;
select to_char(sysdate ,'day') from dual;
select to_char(sysdate ,'DY') from dual;
select to_char(sysdate ,'d') from dual;  
select tRUNC(sysdate ,'d') from dual; 
select to_char(sysdate ,'Q')AS "QUARTER" from dual;


// 연도 월 /일 요일 분기 

SELECT EMPNO ,ENAME, TO_CHAR(HIREDATE,'YYYY')AS year ,TO_CHAR(HIREDATE,'DAY') AS DAY ,TO_CHAR(HIREDATE,'Q') AS QUARTER FROM EMP
order by to_char(hiredate-1,'D');

select commission_pct,NVL(commission_pct,0) from employees;

select hire_date,NVL(hire_date,'01-JAN-97') FROM EMPLOYEES;

SELECT JOB_ID,NVL(job_id,'NO JOB YET') FROM EMPLOYEES;
