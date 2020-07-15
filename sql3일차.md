substr(ename,3)

concat ||

instr(ename,'a')

lpad ,rpad

lpad(ename,12,*) left

rpad(ename,12,*) right



숫자함수

​	-ROUND 반올림

​	-TRUNC

​	-CELL 올림

​	-FLOOR  버림

​	-MOD

```sql
SELECT ROUND(45.923,2), ROUND(45.923,0), //45.93 ,46
ROUND(45.923,-1) /50 -> 소수점 왼쪽 첫번쨰
FROM DUAL;
```

```sql
SELECT TRUNC(45.923,2), TRUNC(45.923),
TRUNC(45.923,-1) //소수점 왼쪽에서 버림
FROM DUAL;
```

- sysdate ,current_date, current_timestamp 

- 20/07/14	20/07/14	20/07/14 10:41:26.000000000 ASIA/SEOUL

  ​	sysdate 와 current_date 차이 

  	- sysdate - > DB가 존재하는 OS 시간
  	- current_date -> 현재 Session 이 존재하는 환경시간

  ```sql
  
  alter session set nls_language ='American';
  alter session set nls_date_format ='DD-MON=RR';
  
  SELECT last_name, hire_date
  from employees 
  where hire_date <'01-FEB-2008';
  ```

  - 암시적 변환 -> varchar char -> number /varchar char -> date
  - 명시적 변환 -> 

  fmDD 채워진 공백을 채움 

  fmDdspth 서수 

  fxMonth / Month  차이 

- TO_CHAR 와 TO_DATE 차이

  - ```SQL
    
    select * from emp where TO_DATE(hiredate, 'DD-MON-YY') < '01-JAN-81'; //YY 로 하면 2081년으로 데이터가 나오지 않는다
    ```

    DDth ->04

    fmDDth ->4 // fm 은 앞의 0을 지워줌

    ```SQL
    select to_char(sysdate ,'d') from dual;  일요일 1 
    select tRUNC(sysdate ,'d') from dual;  //일주일의 시작 7.12
    ```

    ```sql
    select commission_pct,NVL(commission_pct,0) from employees;  //0 값이 null
    
    ```

    NVL(A,B)  A가 NULL 이면 B

    NVL(A,B,C)  A가 NULL 이면 C 아니면 B

    NULLIF(A,B) A=B 이면 NULL,  아니면 A

    COALESCE(A,B,C,D...) A가 NULL 이면 B ,B가 NULL 이면 C,,,

    

    