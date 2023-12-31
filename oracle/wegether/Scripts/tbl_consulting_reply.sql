/*상담 댓글 테이블 생성*/

CREATE SEQUENCE SEQ_CONSULTING_REPLY;

CREATE TABLE TBL_CONSULTING_REPLY(
	ID NUMBER CONSTRAINT PK_CONSULTING_REPLY PRIMARY KEY,
	MEMBER_ID NUMBER NOT NULL,
	CONSULTING_ID NUMBER NOT NULL
);

SELECT * FROM TBL_CONSULTING_REPLY;

DROP TABLE TBL_CONSULTING_REPLY;

/*TBL_CONSULTING_REPLY 테이블 FK 설정*/
	ALTER TABLE TBL_CONSULTING_REPLY ADD CONSTRAINT FK_CONSULTING_REPLY_REPLY FOREIGN KEY(ID)
	REFERENCES TBL_REPLY(ID);

	ALTER TABLE TBL_CONSULTING_REPLY ADD CONSTRAINT FK_CONSULTING_REPLY_MEMBER FOREIGN KEY(MEMBER_ID)
	REFERENCES TBL_MEMBER(ID);

	ALTER TABLE TBL_CONSULTING_REPLY ADD CONSTRAINT FK_CONSULTING_REPLY_CONSULTING FOREIGN KEY(CONSULTING_ID)
	REFERENCES TBL_CONSULTING(ID);
	