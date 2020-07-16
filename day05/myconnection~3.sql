CREATE TABLE my_employee
 (id NUMBER(4) CONSTRAINT my_employee_id_pk PRIMARY Key,
 last_name VARCHAR2(25),
 first_name VARCHAR2(25),
 userid VARCHAR2(8),
 salary NUMBER(9,2));
 
 DESCRIBE my_employee
 
 INSERT INTO my_employee
 VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);
 INSERT INTO my_employee (id, last_name, first_name,
 userid, salary)
 VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);
 
 SELECT *
FROM my_employee;

INSERT INTO my_employee
VALUES (&p_id, '&p_last_name', '&p_first_name',
 '&p_userid', &p_salary);
 
COMMIT;

UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;

UPDATE my_employee
SET salary = 1000
WHERE salary < 900;

DELETE
FROM my_employee
WHERE last_name = 'Dancs';

SELECT * FROM MY_EMPLOYEE;

commit;

INSERT INTO my_employee
VALUES (&p_id, '&p_last_name', '&p_first_name',
 '&p_userid', &p_salary);

SELECT *
FROM my_employee; 

SAVEPOINT step_17;

DELETE
FROM my_employee;

rollback to step_17;

commit;

create table dept_test
(deptno number(2),
dname VARCHAR2(14),
loc VARCHAR2(13),
create_date DATE DEFAULT SYSDATE);

DESCRIBE dept_test;

select table_name from user_tables;

create table hire_dates
(id number(8),
hire_date DATE DEFAULT SYSDATE);

insert into hire_dates values (45,null);
insert into hire_dates(id) values (35);

select * from hire_dates;

create table employees_test(
employee_id NUMBER(6)
constraint emptest_emp_id_pk PRIMARY key,
last_name varchar2(25) not null,
email varchar2(25),
salary NUMBER(8,2),
commission_pct number(2,2),
hire_date DATE NOT NULL,
JOB_ID VARCHAR2(10) not null);

select * from EMPLOYEES_TEST;
DESCRIBE EMPLOYEES_TEST
/*parent key not found*/
update employees 
set department_id =55
where department_id =110;
/*child key not found*/
DELETE from departments where department_id =60;
/* 부서 70 에 사원이 없기 때문에 실행*/
delete from departments where department_id =70;

select * from departments;