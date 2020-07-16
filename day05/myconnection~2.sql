alter session set nls_language ='American';
alter session set nls_data_format ='DD-MON-RR';


create table test_1 
(id number , name varchar(20) );

select  * from test_1;

insert into test_1 values(11,'test');
insert into test_1 values(12,'');
insert into test_1 values(13,null);
insert into test_1 (id,name) values(14,null);

insert into test_1 (id) values(15);

insert into test_1 (id,name) values( &test_id, '&test_name
');

create table copy_dept as select * from departments;
select * from copy_dept;
select  * from test_1;

rollback;

insert into copy_dept
values (1100, 'finance', null,null);


insert into copy_dept
values (1200, '', null,null);
desc copy_dept

create table copy_emp
as select * from emp;

select * from copy_emp;

insert into copy_emp
values (114,'den','sa_rep',null, TO_DATE('FEB 3,2003', 'MON DD, YYYY'),
1100, NULL, 60);

INSERT INTO copy_emp 
select * from emp;

select * from copy_emp;

update copy_emp set sal=50 
where empno =114;

update copy_emp set deptno=( select deptno from emp 
where empno=7876) 
where job=(select job from emp where empno=7698);

rollback;

DELETE from copy_dept 
where dpartment_name ='FINANACE';

DELETE FROM COPY_EMP;

SELECT * FROM COPY_EMP;

TRUNCATE TABLE copy_emp;
select * from copy_emp;
rollback;

select * from EMP_1;
insert INTO EMP_1 VALUES (601,'À¯¾ÆÀÎ',38,305,TO_DATE('17-DEC-2010','DD-MON-YYYY'),3000,10);

SAVEPOINT test_A;

insert INTO EMP_1 VALUES (602,'ÀÌ¹ÎÈ£',38,305,TO_DATE('17-DEC-2010','DD-MON-YYYY'),3000,10);

SAVEPOINT test_B;

insert INTO EMP_1 VALUES (603,'±è°íÀº',38,305,TO_DATE('17-DEC-2010','DD-MON-YYYY'),3000,10);

SAVEPOINT test_C;
insert INTO EMP_1 VALUES (604,'¹Ú½ÅÇý',38,305,TO_DATE('17-DEC-2010','DD-MON-YYYY'),3000,10);

SAVEPOINT test_D;

ROLLBACK TO SAVEPOINT test_B;
ROLLBACK TO SAVEPOINT test_C;

