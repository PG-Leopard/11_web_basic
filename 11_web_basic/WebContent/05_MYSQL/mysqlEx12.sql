/*

	# 조인(JOIN) 
    
		- 조인은 두 개 이상의 테이블을 결합하는 연산이다(같은 변수명을 기준으로 결합)
		- 각 테이블은 각자에 맞는 데이터를 저장하고 있는데, 서로 다른 테이블에서 데이터를 가져오려면 조인 연산을 해야 한다.
		- 주로 주키(PRIMARY KEY)와 참조키(FOREIGN KEY)를 기준으로 테이블을 결합한다.
        - 대표적인 조인은 INNER , LEFT(LEFT OUTER), RIGHT(RIGHT OUTER) 조인이 있다.
		- 주로 테이블명은 별칭을 사용한다.
        - INNER JOIN은 INNER를 생략한 JOIN으로 사용가능하다.        Ex) INNER JOIN , JOIN
          INNER JOIN은 겹치는 것을 기준으로 전부 
        - LEFT JOIN은 OUTER를 생략한 LEFT JOIN으로 사용가능하다.    Ex) LEFT OUTER JOIN , LEFT JOIN
		  LEFT JOIN은 겹치는 것과 LEFT에만 해당하는 것만 출력
        - RIGHT JOIN은 OUTER를 생략한 RIGHT JOIN으로 사용가능하다.  Ex) RIGHT OUTER JOIN , RIGHT JOIN
		  RIGHT JOIN은 겹치는 것과 RIGHT에만 해당하는 것만 출력
   
		[형식]
		
		SELECT
				*
		FROM
				TABLE1 ALIAS
			INNER(LEFT,RIGHT) JOIN TABLE2 ALIAS
					ON 조건

	
*/


# INNER JOIN , LEFT JOIN , RIGHT JOIN 테스트를 위한 데이터 셋업
CREATE TABLE T_BANK (
	BANK_CD VARCHAR(10),
    BANK_NM VARCHAR(10)
);


CREATE TABLE T_TAX (
    IDX 		 INT,
	BANK_CD 	 VARCHAR(10),
    TAX 		 INT,
    DEPOSIT_DATE VARCHAR(20)
);

INSERT INTO T_BANK VALUES("SH" , "신한은행");
INSERT INTO T_BANK VALUES("NH" , "농협은행");
INSERT INTO T_BANK VALUES("KB" , "국민은행");
INSERT INTO T_BANK VALUES("WR" , "우리은행");
INSERT INTO T_BANK VALUES("HN" , "하나은행");


INSERT INTO T_TAX VALUES(1  ,"SH" , 5000000 , '2020-12-12');
INSERT INTO T_TAX VALUES(2 , "NH" , 3000000 , '2020-12-23');
INSERT INTO T_TAX VALUES(3 , "KB" , 7000000 , '2020-12-30');
INSERT INTO T_TAX VALUES(4 , "ETC" , 10000 , '2020-12-31');

SELECT
		*
FROM 
		T_BANK;


# WHERE절을 이용한 두 테이블의 join
SELECT
		*
FROM
		T_BANK,
        T_TAX
WHERE
		T_BANK.BANK_CD = T_TAX.BANK_CD;

# 별칭을 추가 
SELECT	
		B.BANK_CD		AS BANK_CD,	# alias는 주로 실무에서 관리적 차원으로 사용된다.
        B.BANK_NM		AS BANK_NM,
		T.TAX			TAX,		# SELECT에도 AS를 생략해서 사용하는 곳도 있다고 함.
        T.DEPOSIT_DATE	DEPOSIT_DATE
FROM
		T_BANK B,					# 실무에서 테이블명은 이런 식으로 알파벳 하나로 줄여서 쓰고 있음. 또한 FROM 에는 AS를 생략해서 쓰고 있음.
        T_TAX  T
WHERE
		B.BANK_CD = T.BANK_CD;
        
# INNER JOIN 사용예시(위의 WHERE를 사용한 결합과 기능 같음. 실무에선 이걸 사용)
SELECT
		*
FROM
		T_BANK B
	INNER JOIN T_TAX AS T				# INNER JOIN 앞과 뒤를 결합한다.
			ON T.BANK_CD = B.BANK_CD	# ON 뒤는 기준
		   AND T.BANK_CD = 'SH';		# T.BANK_CD가 SH인 것만 가져온다.
 
SELECT
		*
FROM
		T_BANK B
		  JOIN T_TAX T					# INNER 키워드는 생략 가능
			ON T.BANK_CD = B.BANK_CD;	
            
# LEFT JOIN 사용예시
SELECT
		*
FROM
			 T_BANK B			# LEFT JOIN 왼쪽에 써진게 당연 LEFT 판정됨
	LEFT OUTER JOIN T_TAX AS T	
				 ON T.BANK_CD = B.BANK_CD;

SELECT
		*
FROM
			 T_BANK B			
	LEFT JOIN T_TAX AS T		# LEFT OUTER JOIN에서 OUTER는 생략 가능				
				 ON T.BANK_CD = B.BANK_CD;
            
# RIGHT 조인 사용 예시
SELECT
		*
FROM
			 T_BANK B			# RIGHT JOIN 왼쪽에 써진게 당연 RIGHT 판정됨
   RIGHT OUTER JOIN T_TAX AS T				
				 ON T.BANK_CD = B.BANK_CD;	
                 
SELECT
		*
FROM
			 T_BANK B
   RIGHT JOIN T_TAX AS T		# RIGHT OUTER JOIN에서 OUTER는 생략 가능					
				 ON T.BANK_CD = B.BANK_CD;	