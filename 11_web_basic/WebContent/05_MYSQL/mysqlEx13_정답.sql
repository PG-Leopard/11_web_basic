# 문제 1) 사원들의 사원번호 , 부서번호 , 근무 부서 이름을 가져오기.
SELECT
		DE.EMP_NO,
        DE.DEPT_NO,
        DM.DEPT_NAME
FROM 
		DEPT_EMP DE
	  INNER JOIN DEPARTMENTS DM
			  ON DE.DEPT_NO = DM.DEPT_NO;


# 문제 2) 직원의 사원번호 , 이름(first,last) , 및 업무를 조회하기.
SELECT
		E.EMP_NO,
        E.FIRST_NAME,
        E.LAST_NAME,
        T.TITLE
FROM
		EMPLOYEES E
	   INNER JOIN TITLES T
			   ON E.EMP_NO = T.EMP_NO;

    
# 문제 3) 사원번호 , 사원이름(first_name,last_name) , 부서번호 , 부서이름을 조회하기.
SELECT
		E.EMP_NO,
        E.FIRST_NAME,
        E.LAST_NAME,
        D.DEPT_NO,
        D.DEPT_NAME
FROM
		EMPLOYEES E
	   INNER JOIN DEPT_EMP DE
			   ON E.EMP_NO = DE.EMP_NO
	   INNER JOIN DEPARTMENTS D
			   ON DE.DEPT_NO = D.DEPT_NO;
			   
# 문제 4) 각사원들의 사원번호 , 이름(first,last) , 부서 번호를 조회하기. 
SELECT
		E.EMP_NO,
        E.FIRST_NAME,
        E.LAST_NAME,
        D.DEPT_NO
FROM
		EMPLOYEES E
	   INNER JOIN DEPT_EMP D
			   ON E.EMP_NO = D.EMP_NO;

# 문제 5) 사원들의 사원번호 , 이름 , 근무 부서 이름을 조회하기.
SELECT
		E.EMP_NO,
        E.FIRST_NAME,
        E.LAST_NAME,
        D.DEPT_NAME
FROM
		EMPLOYEES E
	   INNER JOIN DEPT_EMP DE
			   ON E.EMP_NO = DE.EMP_NO
	   INNER JOIN DEPARTMENTS D
			   ON DE.DEPT_NO = D.DEPT_NO;

# 문제 6) 부서별로 그룹화하고 부서이름 , 부서번호 , 직원수를 조회하고 직원수가 많은 곳부터 조회하기. 
SELECT
		D.DEPT_NAME,
        D.DEPT_NO,
        COUNT(DE.EMP_NO)
FROM
		  DEPT_EMP DE
        INNER JOIN DEPARTMENTS D
			    ON DE.DEPT_NO = D.DEPT_NO
GROUP BY
		D.DEPT_NAME
ORDER BY
		COUNT(DE.EMP_NO) DESC;

# 문제 7) 부서별로 그룹화하고 부서별안에 성별을 그룹화하여 직원 수를 조회하기. 
SELECT
		DEPT_NO,
		GENDER,
		COUNT(E.EMP_NO)
FROM
		 EMPLOYEES E
		INNER JOIN DEPT_EMP DE
				ON E.EMP_NO = DE.EMP_NO
GROUP BY
		DE.DEPT_NO,
        E.GENDER
ORDER BY
		DE.DEPT_NO ASC;