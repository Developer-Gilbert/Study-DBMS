
/* 데이터베이스 연결 */
use eatsTime;

/* 회원 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_member(
	member_id int unsigned auto_increment primary key,
	member_identification varchar(500) not null unique,
	member_pw varchar(500) not null,
	member_name varchar(500) not null,
	member_email varchar(500) not null unique,
	member_phone_number varchar(500) not null,
	member_address varchar(500) not null,
	member_address_detail varchar(500) not null,
	member_gender varchar(500) not null,
	member_birthday datetime not null,
	member_grade varchar(500) not null,
	member_joined_date datetime default current_timestamp(),
	member_status char(10) default 1,
	constraint ch_member_gender check (member_gender in('MALE', 'FEMALE', 'NONE')),
	constraint ch_member_grade check (member_grade in('PURCHASER', 'SELLER', 'ADMIN')),
	constraint ch_member_status check (member_status in('1', '0'))
);

select * from tbl_member;

drop table tbl_member;

delete from tbl_member;

/* 회원 테이블 더미 데이터 */

/* 계정 정리 */

/*
관리자: admin // eatstime123!!!
판매자: seller // eatstime123!!!
구매자: purchaser // eatstime123!!!
*/


/* 관리자 */
insert into tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('admin', 'eatstime123!!!', '관리자', 'abc@naver.com', '010-1234-1234', 'address', 'address-detail', 'MALE', '20201010', 'ADMIN', CURRENT_TIMESTAMP, '1');

/* 판매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('seller', 'eatstime123!!!', '김인진', 'seller1@naver.com', '010-1111-1111', '충북 청주시 청원구 내수읍 충청대로 330-35', '401호', 'MALE', '20201010', 'SELLER', CURRENT_TIMESTAMP, '1');

/* 판매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('qwer0000', 'eatstime123!!!', '김치윤', 'seller2@naver.com', '010-1111-1111', '서울 송파구 석촌동 221 153', '101호', 'FEMALE', '20201010', 'SELLER', CURRENT_TIMESTAMP, '1');

/* 구매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('purchaser', 'eatstime123!!!', '이종문', 'purchaser1@naver.com', '010-2222-2222', '서울 관악구 봉천동 1540-2', '202호', 'MALE', '20201010', 'PURCHASER', CURRENT_TIMESTAMP, '1');

/* 구매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('asdf0002', 'asdf123!!!', '조세연', 'purchaser2@naver.com', '010-2222-2222', '서울 강남구 자곡로 21 (세곡푸르지오)', '202호', 'FEMALE', '20201010', 'PURCHASER', CURRENT_TIMESTAMP, '1');

/* 판매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('qwer0003', 'qwer123!!!', '이기철', 'seller3@naver.com', '010-1111-1111', '서울 서초구 강남대로 477', '1', 'FEMALE', '20201010', 'SELLER', CURRENT_TIMESTAMP, '1');

/* 구매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('asdf0003', 'asdf123!!!', '문소영', 'purchaser3@naver.com', '010-2222-2222', '서울 서초구 강남대로 483 (청호빌딩)', '122호', 'FEMALE', '20201010', 'PURCHASER', CURRENT_TIMESTAMP, '1');

/* 판매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('qwer0004', 'qwer123!!!', '박유미', 'seller4@naver.com', '010-1111-1111', '서울 서초구 강남대로 487 (원빌딩)', '201호', 'MALE', '20201010', 'SELLER', CURRENT_TIMESTAMP, '1');

/* 구매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('asdf0004', 'asdf123!!!', '한동석', 'purchaser4@naver.com', '010-2222-2222', '서울 서초구 강남대로 503 (청하빌딩)', '3', 'FEMALE', '20201010', 'PURCHASER', CURRENT_TIMESTAMP, '1');

/* 구매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('asdf0005', 'asdf123!!!', '김태중', 'purchaser5@naver.com', '010-2222-2222', '서울 서초구 강남대로 513 (엘지패션 논현프라자)', '1102호', 'FEMALE', '20201010', 'PURCHASER', CURRENT_TIMESTAMP, '1');

/* 판매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('qwer0005', 'qwer123!!!', '고성진', 'seller5@naver.com', '010-1111-1111', '강원 삼척시 강원남부로 4414-13', '1', 'MALE', '20201010', 'SELLER', CURRENT_TIMESTAMP, '1');

/* 구매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('asdf0006', 'asdf123!!!', '김유진', 'purchaser6@naver.com', '010-2222-2222', '충북 청주시 청원구 내수읍 충청대로 327-18 (주1동)', '4', 'FEMALE', '20201010', 'PURCHASER', CURRENT_TIMESTAMP, '1');

/* 판매자 */
INSERT INTO tbl_member
(member_identification, member_pw, member_name, member_email, member_phone_number, member_address, member_address_detail, member_gender, member_birthday, member_grade, member_joined_date, member_status)
VALUES('qwer0006', 'qwer123!!!', '신주경', 'seller6@naver.com', '010-1111-1111', '경기 광주시 123-1', '301호', 'FEMALE', '20201010', 'SELLER', CURRENT_TIMESTAMP, '1');

/* ------------------------------------------------------------------------------------------------------------- */










