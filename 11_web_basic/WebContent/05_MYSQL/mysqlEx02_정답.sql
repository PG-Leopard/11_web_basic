
/*
	1-1) RENTCAR 데이터베이스를 생성하기.
*/    
CREATE DATABASE RENTCAR;

USE RENTCAR;

/*    
	1-2) CAR 테이블을 생성하기.
    
		[ 컬럼명 ] 
		NO         (숫자)
		NAME       (글자 20)
		RENT_PRICE (숫자)
		COMPANY    (글자50)
		INFO       (글자500)
*/
CREATE TABLE CAR(
	NO INT,
    NAME VARCHAR(20),
    RENT_PRICE INT,
    COMPANY VARCHAR(50),
    INFO VARCHAR(500)
);

DESC CAR;

/*
	1-3) CAR테이블에 데이터 삽입하기.

		1, '아반떼',  20000, '현대', '아반떼 자동차 입니다.'
		2, '아이오닉', 23000, '현대', '아이오닉 자동차 입니다.'
		3, '쏘나타',  30000, '현대', '쏘나타 자동차 입니다.'
		4, '그랜저',  35000, '현대', '그랜저 자동차 입니다.'
		5, '스타렉스',  30000, '현대', '스타렉스 자동차 입니다.'
		6, '제네시스', 45000, '현대', '제네시스 자동차 입니다.'
		7, 'k3', 18000, '기아', 'k3 자동차 입니다.'
		8, '모닝',  12000, '현대', '모닝 자동차 입니다.'
		9, 'k5', 28000, '기아', 'k5 자동차 입니다.'
		10, 'k7', 35000, '기아', 'k7 자동차 입니다.'
		11, 'k9', 75000, '기아', 'k9 자동차 입니다.'
		12, '레이', 14000, '기아', '레이 자동차 입니다.'
		13, '스포티지',  28000, '기아', '스포티지 자동차 입니다.'
		14, '카니발', 38000, '기아', '카니발 자동차 입니다.'
		15, 'SM5', 21000, '삼성', 'SM5 자동차 입니다.'
		16, 'SM6', 28000, '삼성', 'SM6 자동차 입니다.'
		17, 'QM6', 30000, '삼성', 'QM6 자동차 입니다.'
		18, '렉스턴', 42000, '쌍용', '렉스턴 자동차 입니다.'
		19, '티볼리', 24000, '쌍용', '티볼리 자동차 입니다.'
		20, '코란도', 28000, '쌍용', '코란도 자동차 입니다.'
*/
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES	
		   (1, '아반떼',  20000, '현대', '아반떼 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES	
		   (2, '아이오닉', 23000, '현대', '아이오닉 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES	
		   (3, '쏘나타',  30000, '현대', '쏘나타 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES	
		   (4, '그랜저',  35000, '현대', '그랜저 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (5, '스타렉스',  30000, '현대', '스타렉스 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (6, '제네시스', 45000, '현대', '제네시스 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (7, 'k3', 18000, '기아', 'k3 자동차 입니다.');  
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (7, 'k3', 18000, '기아', 'k3 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (8, '모닝',  12000, '현대', '모닝 자동차 입니다.');           
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (9, 'k5', 28000, '기아', 'k5 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (10, 'k7', 35000, '기아', 'k7 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (11, 'k9', 75000, '기아', 'k9 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (12, '레이', 14000, '기아', '레이 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (13, '스포티지',  28000, '기아', '스포티지 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (14, '카니발', 38000, '기아', '카니발 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (15, 'SM5', 21000, '삼성', 'SM5 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (16, 'SM6', 28000, '삼성', 'SM6 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (17, 'QM6', 30000, '삼성', 'QM6 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (18, '렉스턴', 42000, '쌍용', '렉스턴 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (19, '티볼리', 24000, '쌍용', '티볼리 자동차 입니다.');
INSERT INTO
		CAR(NO, NAME, RENT_PRICE, COMPANY, INFO)
VALUES
		   (20, '코란도', 28000, '쌍용', '코란도 자동차 입니다.');
/*
	1-4) 전체 데이터를 조회하기.
*/

SELECT
		*
FROM
		CAR;

/*
	1-5) 데이터를 수정하기. 
    
		 1-5-1) 제네시스 자동차의 COMPANY 를 '제네시스'로 변경하기.
		 1-5-2) k9 자동차의 렌트가격을 40000으로 변경하기.
		 1-5-3) 카니발 자동차의 렌트가격을 30000으로 변경하기.
		 1-5-4) 렉스턴 자동차의 가격을  32000으로 변경하기.
*/	

UPDATE
	CAR
SET
	COMPANY="제네시스"
WHERE
	NAME="제네시스";

UPDATE
	CAR
SET
	RENT_PRICE=40000
WHERE
	NAME="K9";
	
UPDATE
	CAR
SET
	RENT_PRICE=30000
WHERE
	NAME="카니발";

UPDATE
	CAR
SET
	RENT_PRICE=32000
WHERE
	NAME="렉스턴";


/*
	1-6) 데이터를 삭제하기.
    
		1-6-1) 모닝 관련 데이터를 삭제하기.
		1-6-2) 레이 관련 데이터를 삭제하기.
		1-6-3) 현대자동차의 데이터를 모두 삭제하기.
*/				
SELECT
		*
FROM
		CAR;
        
DELETE FROM
		CAR
WHERE
		NAME="모닝";

DELETE FROM
		CAR
WHERE
		NAME="레이";

DELETE FROM
		CAR
WHERE
		COMPANY="현대";
		

/*        
	1-7) CAR 테이블 삭제하기
*/

DROP TABLE CAR;

/*
	1-8) RENTCAR 데이터베이스 삭제하기    
*/
DROP DATABASE RENTCAR;

/*    
    2-1) BOOKSHOP 데이터베이스를 생성하기.
*/	

CREATE DATABASE	BOOKSHOP;

USE BOOKSHOP;
/*    
    2-2) MANAGER 테이블을 생성하기.
		MANAGER_ID (글자 20)
		MANAGER_PW (글자 20)
*/

CREATE TABLE MANAGER(
		MANAGER_ID VARCHAR(20),
        MANAGER_PW VARCHAR(20)
);


/*
	2-3) MANAGER테이블에 데이터 입력하기.
    
		'ADMIN1@SHOP.COM' , 'QWER1234'
		'ADMIN2@SHOP.COM' , '1111'
*/

INSERT INTO
		MANAGER(MANAGER_ID , MANAGER_PW)
VALUES
		('ADMIN@SHOP,COM' , 'QWER1234');

INSERT INTO
		MANAGER(MANAGER_ID , MANAGER_PW)
VALUES
		('ADMIN2@SHOP.COM' , '1111');


/*
	2-4) 데이터 조회하기.
*/    

SELECT
		MANAGER_ID,
        MANAGER_PW
FROM
		MANAGER;
        
/*  
    2-5) BOOK테이블 생성하기
		BOOK_ID    		숫자
		BOOK_TITLE 		글자(100)
		BOOK_PRICE 		숫자
		BOOK_COUNT 		숫자
		AUTHOR     		글자(40)
		PUBLISHING_COM 	글자(30)
		PUBLISHING_DATE 글자(15)
		BOOK_CONTENT 	글자(500)
		DISCOUNT_RATE 	숫자				
*/

CREATE TABLE BOOK(
		BOOK_ID INT,
        BOOK_TITLE VARCHAR(100), 		
		BOOK_PRICE  INT,
		BOOK_COUNT  INT,
		AUTHOR VARCHAR(40), 	
		PUBLISHING_COM VARCHAR(30), 	
		PUBLISHING_DATE VARCHAR(15), 	
		BOOK_CONTENT VARCHAR(500), 	
		DISCOUNT_RATE INT 	
);

/*
    2-6) 데이터 추가하기.
	
		1, '나미야 잡화점의 기적', 15000, 100, '히가시노 게이고', '현대문학', '2019-01-11', '일본을 대표하는 소설가 히가시노 게이고의 신작', 10
		2, '연필로 쓰기', 18000, 80, '김훈', '문학동네', '2018-02-14', '70대의 김훈이 연필로 꾹꾹 눌러쓴 산문의 진경', 5
		3, '인간 실격', 20000, 50, '다자이 오사무', '민음사', '2016-11-20', '2019 상반기 종합 베스트셀러', 15
		4, '기묘한 신혼여행', 12000, 30, '정태원', '문학의 문학', '2017-04-20', '13편의 추리문학 걸작선', 20
		5, '외국어 공부의 감각', 15000, 100, '아키야마 요헤이', '월북', '2011-03-11', '나는 어떻게 10개 국어를 말하게 되었나?', 25
		6, 'EBS 수능완성 고등 제2외국어', 28000, 200, 'EBS 편집부', 'EBS교육방송', '2014-08-14', '2014 학년도 수능 연계교재', 10
		7, '외국어 전파담', 23000, 70, '로버트 파우저', '혜화', '2012-10-03', '외국어는 어디에서 어디로', 10
		8, '아무튼,외국어', 22000, 50, '조지영', '위고', '2019-04-20', '모든 나라에는 철수와 영희가 있다', 10
		9, '컴퓨터 비전과 딥러닝', 35000, 700, '라쟈링가파 샨무갸마니', '에이콘', '2018-02-18', '텐서플로와 케라스를 사용한 전문 가이드', 5
		10, '쉽게 배우는 데이터 통신', 19000, 100, '박기현', '한빛아카데미', '2015-03-10', '데이터 통신과 컴퓨터 네트워크', 10
		11, '컴퓨터활용능력', 38000, 200, '이주희', '배움', '2012-09-24','컴퓨터 자격증', 20
		12, '초등학생이 알아야할 숫자', 22000, 0, '엘리스 제임스', '어스본코리아', '2013-06-12', '컴퓨터와 코디 100가지', 10
*/
INSERT INTO
		BOOK
VALUES
		(1, '나미야 잡화점의 기적', 15000, 100, '히가시노 게이고', '현대문학', '2019-01-11', '일본을 대표하는 소설가 히가시노 게이고의 신작', 10);
INSERT INTO
		BOOK
VALUES
		(2, '연필로 쓰기', 18000, 80, '김훈', '문학동네', '2018-02-14', '70대의 김훈이 연필로 꾹꾹 눌러쓴 산문의 진경', 5);
INSERT INTO
		BOOK
VALUES
		(3, '인간 실격', 20000, 50, '다자이 오사무', '민음사', '2016-11-20', '2019 상반기 종합 베스트셀러', 15);
INSERT INTO
		BOOK
VALUES
		(4, '기묘한 신혼여행', 12000, 30, '정태원', '문학의 문학', '2017-04-20', '13편의 추리문학 걸작선', 20);
INSERT INTO
		BOOK
VALUES
		(5, '외국어 공부의 감각', 15000, 100, '아키야마 요헤이', '월북', '2011-03-11', '나는 어떻게 10개 국어를 말하게 되었나?', 25);
INSERT INTO
		BOOK
VALUES
		(6, 'EBS 수능완성 고등 제2외국어', 28000, 200, 'EBS 편집부', 'EBS교육방송', '2014-08-14', '2014 학년도 수능 연계교재', 10);
INSERT INTO
		BOOK
VALUES
		(7, '외국어 전파담', 23000, 70, '로버트 파우저', '혜화', '2012-10-03', '외국어는 어디에서 어디로', 10);
INSERT INTO
		BOOK
VALUES
		(8, '아무튼,외국어', 22000, 50, '조지영', '위고', '2019-04-20', '모든 나라에는 철수와 영희가 있다', 10);
INSERT INTO
		BOOK
VALUES
		(9, '컴퓨터 비전과 딥러닝', 35000, 700, '라쟈링가파 샨무갸마니', '에이콘', '2018-02-18', '텐서플로와 케라스를 사용한 전문 가이드', 5);
INSERT INTO
		BOOK
VALUES
		(10, '쉽게 배우는 데이터 통신', 19000, 100, '박기현', '한빛아카데미', '2015-03-10', '데이터 통신과 컴퓨터 네트워크', 10);
INSERT INTO
		BOOK
VALUES
		(11, '컴퓨터활용능력', 38000, 200, '이주희', '배움', '2012-09-24','컴퓨터 자격증', 20);
INSERT INTO
		BOOK
VALUES
		(12, '초등학생이 알아야할 숫자', 22000, 0, '엘리스 제임스', '어스본코리아', '2013-06-12', '컴퓨터와 코디 100가지', 10);

/*
	2-7) 전체 데이터 조회하기.
*/    
  
SELECT
		*
FROM
		BOOK;
        
/*  
   2-8) 데이터 수정하기
		2-8-1) '나미야 잡화점의 기적' 의 할인률을 5로 변경하기.
		2-8-2) '인간 실격'의 재고를 0으로 변경하기.
		2-8-3) 할인률이 20이 넘은 데이터들의 할인률을 10으로 변경하기.
*/	
UPDATE
		BOOK
SET
		DISCOUNT_RATE=5
WHERE
		BOOK_TITLE="나미야 잡화점의 기적";
	
UPDATE
		BOOK
SET
		BOOK_COUNT=0
WHERE
		BOOK_TITLE="인간 실격";

UPDATE
		BOOK
SET
		DISCOUNT_RATE=10
WHERE
		DISCOUNT_RATE>=20;
  /*
    2-9) 데이터 삭제하기
		출판일이 2015년 이전의 데이터를 삭제하기
*/        
 
DELETE FROM
		BOOK
WHERE
		PUBLISHING_DATE<="2015-01-01";
 
 /*
	2-10) BOOK테이블 삭제하기
 */
 
 DROP TABLE BOOK;
 
 
 /*   
    2-11) BOOKSHOP데이터 베이스 삭제하기
    
*/  

DROP DATABASE BOOKSHOP;