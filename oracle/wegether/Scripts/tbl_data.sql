/*자료 테이블 생성*/

CREATE SEQUENCE SEQ_DATA;

CREATE TABLE TBL_DATA(
	ID NUMBER CONSTRAINT PK_DATA PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	DATA_TITLE VARCHAR2(1000) NOT NULL,
	DATA_CONTENT VARCHAR2(1000) NOT NULL,
	DATA_PRICE NUMBER DEFAULT 0,
	DATA_SCHOOL VARCHAR2(1000) NOT NULL,
	DATA_MAJOR VARCHAR2(1000) NOT NULL,
	DATA_READ_COUNT NUMBER DEFAULT 0,
	DATA_REGISTER_DATE DATE DEFAULT SYSDATE,
	DATA_UPDATE_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_DATA;

DROP TABLE TBL_DATA;

/*TBL_DATA 테이블 FK 설정*/
	ALTER TABLE TBL_DATA ADD CONSTRAINT FK_DATA_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);