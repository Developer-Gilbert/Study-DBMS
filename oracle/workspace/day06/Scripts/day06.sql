/*JOIN
 * 
 * 여러 테이블에 흩어져 있는 정보 중
 * 사용자가 필요한 정보만 가져와서 가상의 테이블처럼 만들고 결과를 보여주는 것.
 * 정규화를 통해 조회 테이블이 너무 많이 쪼개져 있으면 작업이 불편하기 때문에
 * 입력, 수정, 삭제의 성능을 향상시키기 위해서 JOIN을 통해 합친 후 사용한다.
 * 
 */

/*EMP 테이블 사원번호로 DEPT 테이블의 지역 검색*/

SELECT * FROM EMP;
SELECT * FROM DEPT;

SELECT ENAME, LOC 
FROM DEPT D JOIN EMP E
ON D.DEPTNO = E.DEPTNO;

/*SQL 실행 순서*/
/*FROM > ON > JOIN > WHERE > GROUP BY > HAVING > SELECT > ORDER BY*/

/*PLAYER 테이블에서 송종국 선수가 속한 팀의 전화번호 검색하기*/
SELECT PLAYER_NAME, P.TEAM_ID, TEL 
FROM TEAM T JOIN PLAYER P
ON T.TEAM_ID = P.TEAM_ID AND PLAYER_NAME = '송종국';

/*JOBS 테이블에서 JOB_ID로 직원들의 JOB_TITLE, EMAIL, 성, 이름 검색*/
SELECT * FROM JOBS;
SELECT * FROM EMPLOYEES;

SELECT JOB_TITLE, EMAIL, LAST_NAME, FIRST_NAME  
FROM JOBS J JOIN EMPLOYEES E 
ON J.JOB_ID = E.JOB_ID;

/*EMP 테이블의 SAL을 SALGRADE 테이블의 등급으로 나누기*/
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

SELECT E.ENAME, GRADE
FROM SALGRADE S JOIN EMP E
ON E.SAL BETWEEN S.LOSAL AND S.HISAL;

ALTER TABLE SALGRADE RENAME COLUMN GRADE TO "LEVEL";
SELECT * FROM SALGRADE;

/*EMPLOYEES 테이블에서 HIREDATE가 2003~2005년까지인 사원의 정보와 부서명 검색*/
SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT E.*, DEPARTMENT_NAME FROM 
DEPARTMENTS D JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID AND TO_CHAR(HIRE_DATE, 'YYYY') BETWEEN '2003' AND '2005';

SELECT E.*, DEPARTMENT_NAME FROM 
DEPARTMENTS D JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID AND HIRE_DATE BETWEEN '2003-01-01' AND '2005-12-31';

/*TO_DATE를 사용할 때에 년도만 설정하면, 월은 SYSDATE의 월, 일은 01로 자동 설정된다.*/
SELECT TO_DATE('2003', 'YYYY') FROM DUAL;
SELECT TO_DATE('2005', 'YYYY') FROM DUAL;

/*정확한 결과가 나오지 않는다.*/
SELECT E.*, DEPARTMENT_NAME FROM 
DEPARTMENTS D JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID AND HIRE_DATE BETWEEN TO_DATE('2003', 'YYYY') AND TO_DATE('2005', 'YYYY');

SELECT E.*, DEPARTMENT_NAME FROM 
DEPARTMENTS D JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID 
AND HIRE_DATE BETWEEN TO_DATE('2003-01-01', 'YYYY-MM-DD') AND TO_DATE('2005-12-31', 'YYYY-MM-DD');

/*JOB_TITLE 중 'Manager'라는 문자열이 포함된 직업들의 평균 연봉을 JOB_TITLE별로 검색*/
SELECT * FROM JOBS WHERE JOB_TITLE LIKE '%Manager%';
SELECT * FROM EMPLOYEES;

SELECT JOB_TITLE, AVG(SALARY) 
FROM JOBS J JOIN EMPLOYEES E
ON JOB_TITLE LIKE '%Manager%' AND J.JOB_ID = E.JOB_ID
GROUP BY JOB_TITLE;

/*EMP 테이블에서 ENAME에 L이 있는 사원들의 DNAME과 LOC 검색*/
SELECT * FROM EMP WHERE ENAME LIKE '%L%';
SELECT * FROM DEPT;

SELECT ENAME, DNAME, LOC FROM DEPT D JOIN EMP E
ON ENAME LIKE '%L%' AND D.DEPTNO = E.DEPTNO;

/*축구 선수들 중에서 각 팀별로 키가 가장 큰 선수들 전체 정보 검색*/
SELECT P1.TEAM_ID, HEIGHT, WEIGHT, PLAYER_NAME 
FROM 
(
   SELECT TEAM_ID, MAX(HEIGHT) H FROM PLAYER
   GROUP BY TEAM_ID
) P1
JOIN
PLAYER P2
ON P1.TEAM_ID = P2.TEAM_ID AND P1.H = P2.HEIGHT
ORDER BY TEAM_ID;

/*팀 별 최대 키 선수 정보 조회, 최대키가 같으면 최대 몸무게로 조회*/
SELECT *
FROM
(
   SELECT P2.TEAM_ID, HEIGHT, MAX(WEIGHT) W
   FROM 
   (
      SELECT TEAM_ID, MAX(HEIGHT) H, MAX(WEIGHT) W FROM PLAYER
      GROUP BY TEAM_ID
   ) P1
   JOIN
   PLAYER P2
   ON P1.TEAM_ID = P2.TEAM_ID AND P1.H = P2.HEIGHT
   GROUP BY P2.TEAM_ID, HEIGHT
) P1
JOIN PLAYER P2
ON P1.TEAM_ID = P2.TEAM_ID AND P1.HEIGHT = P2.HEIGHT AND P1.W = P2.WEIGHT
ORDER BY P2.TEAM_ID;

/*팀 별 최대 키 선수가 2명 이상인 팀 조회*/
SELECT *
FROM 
(
   SELECT TEAM_ID, COUNT(HEIGHT) H, HEIGHT
   FROM
   (
      SELECT P1.TEAM_ID, HEIGHT
      FROM 
      (
         SELECT TEAM_ID, MAX(HEIGHT) H FROM PLAYER
         GROUP BY TEAM_ID
      ) P1
      JOIN
      PLAYER P2
      ON P1.TEAM_ID = P2.TEAM_ID AND P1.H = P2.HEIGHT
   )
   GROUP BY TEAM_ID, HEIGHT
)
WHERE H > 1;

/*EMP 테이블에서 사원의 이름과 매니저 이름을 검색*/
SELECT * FROM EMP;

SELECT E1.ENAME 사원,  E2.ENAME 매니저 
FROM EMP E1 JOIN EMP E2
ON E1.MGR = E2.EMPNO;









