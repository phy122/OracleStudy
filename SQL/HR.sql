
--1. 시스템 계정 접속
conn system/123456;


--2. ALL_USERS 에서 HR 계정 조회
SELECT user_id, username
FROM ALL_USERS
WHERE username = 'HR';

-- 3. emplotees 테이블 구조를 조회하는 명령 (HR)
DESC employees;

-- * employees 테이블의 employee_id, first_name 조회
SELECT employee_id, first_name
FROM employees;

-- 4. employees 테이블에서 사원번호, 이름, 성, 이메일, 전화번호, 입사일자, 급여로 조회
-- AS (alias) : 출력되는 컬럼명에 별명을 짓는 명령어
-- * 생략가능
-- as 사원번호 : 별칭 그대로 작성
-- as "사원번호" : 띄어쓰기가 있으면 ""로 감싸서 작성
-- as '사원번호' : (에러)
SELECT employee_id AS "사원번호"
      ,first_name AS 이름
      ,last_name AS 성
      ,email AS 이메일
      ,phone_number 전화번호
      ,hire_date AS 입사일자
      ,salary 급여
FROM employees;  


-- 모든 컬럼(속성) 조회 : (*) 에스터리크
SELECT *
FROM employees;

SELECT job_id
FROM employees;

-- 6.
-- 테이블 EMPLOYEES 의 SALARY(급여)가 6000을 초과하는 사원의 모든 컬럼을 
-- 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE salary > 6000;

-- 7.
-- 테이블 EMPLOYEES 의 SALARY(급여)가 10000인 사원의 모든 컬럼을 
-- 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE salary = 10000;

-- 8.
-- 테이블 EMPLOYEES 의 모든 속성들을 
-- SALARY 를 기준으로 내림차순 정렬하고, 
-- FIRST_NAME 을 기준으로 오름차순 정렬하여 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
ORDER BY salary DESC, first_name ASC;

-- 정렬
-- ORDER BY 컬럼명 [ASC/DESC];
-- * ASC : 오름차순
-- * DESC : 내림차순
-- * (생략) : 오름차순이 기본값

-- 9.
-- 테이블 EMPLOYEES 의 JOB_ID가 ‘FI_ACCOUNT’ 이거나 ‘IT_PROG’ 인 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
-- or 연산 : ~또는, ~이거나
-- where a or b
SELECT *
FROM employees
WHERE job_id = 'FI_ACCOUNT'
    OR job_id = 'IT_PROG'
    ;

-- 10.
-- 테이블 EMPLOYEES 의 JOB_ID가 ‘FI_ACCOUNT’ 이거나 ‘IT_PROG’ 인 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
-- 단, IN 키워드를 사용하시오.
SELECT *
FROM employees
WHERE job_id IN('FI_ACCOUNT','IT_PROG');

-- 11.
-- 테이블 EMPLOYEES 의 JOB_ID가 ‘FI_ACCOUNT’ 이거나 ‘IT_PROG’ 아닌
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
-- 단, IN 키워드를 사용하시오.
SELECT *
FROM employees
WHERE job_id NOT IN('FI_ACCOUNT','IT_PROG')
;

-- 12.
-- 테이블 EMPLOYEES 의 JOB_ID가 ‘IT_PROG’ 이면서 SALARY 가 6000 이상인 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE job_id = 'IT_PROG' AND salary >= 6000;

-- 13.
-- 테이블 EMPLOYEES 의 FIRST_NAME 이 ‘S’로 시작하는 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE first_name LIKE 'S%';
-- LIKE '';
-- % : 빈 문자열, 1글자 이상의 문자열 대체
-- _ : 1글자 대체

-- 14.
-- 's' 로 끝나는
SELECT *
FROM employees
WHERE first_name LIKE '%s';

-- 15.
-- 's' 가 포함되는
SELECT *
FROM employees
WHERE first_name LIKE '%s%';

-- 16.
-- 테이블 EMPLOYEES 의 FIRST_NAME 이 5글자인 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
-- 1) LIKE 키워드 사용
SELECT *
FROM employees
WHERE first_name LIKE '_____';
-- 2) LENGTH()
--   * LENGTH(컬럼명) : 글자 수를 반환하는 함수
SELECT *
FROM employees
WHERE LENGTH(first_name) = 5;

-- 17.
-- 테이블 EMPLOYEES 의 COMMISSION_PCT가 NULL 인 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE commission_pct IS NULL;

-- 18.
-- 테이블 EMPLOYEES 의 COMMISSION_PCT가 NULL 이 아닌 
-- 사원의 모든 컬럼을 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE commission_pct IS NOT NULL;

-- 19.
-- 테이블 EMPLOYEES 의 사원의 HIRE_DATE가 04년 이상인
-- 모든 컬럼을 조회하는 SQL 문을 작성하시오.

-- 1) 문자열 --> 암시적 형변환하여 조회
SELECT *
FROM employees
WHERE hire_date >= '04/01/01';

-- 2) TO_DATE 함수로 변환하여 조회
SELECT *
FROM employees
WHERE hire_date >= TO_DATE('04/01/01', 'YY/MM/DD');

-- 20.
-- 테이블 EMPLOYEES 의 사원의 HIRE_DATE가 04년도부터 05년도인 
-- 모든 컬럼을 조회하는 SQL 문을 작성하시오.
SELECT *
FROM employees
WHERE hire_date >= '04/01/01' AND hire_date <= '05/12/31';

SELECT *
FROM employees
WHERE hire_date >= TO_DATE('04/01/01', 'YY/MM/DD') 
 AND hire_date <= TO_DATE('05/12/31', 'YY/MM/DD');


SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 100;



