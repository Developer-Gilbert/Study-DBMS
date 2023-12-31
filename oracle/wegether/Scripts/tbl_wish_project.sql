/*프로젝트 찜목록 테이블 생성*/

CREATE SEQUENCE SEQ_WISH_PROJECT;

DROP TABLE TBL_WISH_PROJECT;

CREATE TABLE TBL_WISH_PROJECT(
	ID NUMBER CONSTRAINT PK_WISH_PROJECT PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	PROJECT_ID NUMBER NOT NULL
);

SELECT * FROM TBL_WISH_PROJECT;


/*DATA 테이블 FK 설정*/
	ALTER TABLE TBL_WISH_PROJECT ADD CONSTRAINT FK_WISH_PROJECT_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);

	ALTER TABLE TBL_WISH_PROJECT ADD CONSTRAINT FK_WISH_PROJECT_PROJECT FOREIGN KEY(PROJECT_ID)
	REFERENCES TBL_PROJECT(ID);
	

