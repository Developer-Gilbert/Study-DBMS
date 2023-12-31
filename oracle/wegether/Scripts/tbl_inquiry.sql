/*문의 테이블 생성*/

CREATE SEQUENCE SEQ_INQUIRY;

CREATE TABLE TBL_INQUIRY(
	ID NUMBER CONSTRAINT PK_INQUIRY PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	INQUIRY_TITLE VARCHAR2(1000) NOT NULL,
	INQUIRY_CONTENT VARCHAR2(1000) NOT NULL,
	INQUIRY_STATUS CHAR(1) DEFAULT '1'
	CONSTRAINT CHECK_INQUIRY_STATUS CHECK(INQUIRY_STATUS IN ('0', '1')),
	INQUIRY_REGISTER_DATE DATE DEFAULT SYSDATE
);

SELECT * FROM TBL_INQUIRY;

DROP TABLE TBL_INQUIRY;

/*TBL_INQUIRY 테이블 FK 설정*/
	ALTER TABLE TBL_INQUIRY ADD CONSTRAINT FK_INQUIRY_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);