
/* 데이터베이스 연결 */
use eatsTime;

/* 문의사항 게시판 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_inquireboard(
	inqb_id int unsigned auto_increment primary key,
	product_id int unsigned,
	member_id int unsigned not null,
	inqb_title varchar(500) not null,
	inqb_content varchar(2000) not null,
	inqb_date datetime default current_timestamp(),
	inqb_complete char(10) default 1,
	constraint ch_inqb_complete check (inqb_complete in('1', '0'))
);

select * from tbl_inquireboard;

drop table tbl_inquireboard;

delete from tbl_inquireboard;


/* 문의사항 게시판 외래키 제약조건 추가 */

/*member_id 컬럼 fk 추가 */
alter table tbl_inquireboard add constraint fk_inquireboard_member_id foreign key(member_id)
references tbl_member(member_id) on delete cascade;

/*product_id 컬럼 fk 추가 */
alter table tbl_inquireboard add constraint fk_inquireboard_product_id foreign key(product_id)
references tbl_product(product_id) on delete cascade;


/* 문의사항 게시판 테이블 더미 데이터(페이징 처리 관련하여 문제가 있으므로 더미 데이터가 아닌 실제 데이터 입력으로 진행) */

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(2, 1, '문의글1', '문의글내용1', CURRENT_TIMESTAMP, '1');

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(3, 1, '교환(반품)', '상품불량인 경우, 교환(반품) 기준이 궁금합니다.', CURRENT_TIMESTAMP, '1');

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(5, 1, '배송', '집 앞이 아니라 공동현관/경비실 앞에 배송되었어요.', CURRENT_TIMESTAMP, '1');

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(2, 1, '교환/반품', '교환(반품) 진행 시, 배송비가 부과 되나요?', CURRENT_TIMESTAMP, '1');

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(5, 1, '서비스 이용', '이츠타임은 어떤 회사인가요?', CURRENT_TIMESTAMP, '1');

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(4, 1, '주문', '주문 시 배송비가 부과되나요?', CURRENT_TIMESTAMP, '1');

insert into tbl_inquireboard
(product_id, member_id, inqb_title, inqb_content, inqb_date, inqb_complete)
values(3, 1, '픽업문의', '픽업 서비스는 어떻게 주문하나요?', CURRENT_TIMESTAMP, '1');

/* ------------------------------------------------------------------------------------------------------------- */










