
/* 데이터베이스 연결 */
use eatsTime;

/* 답변 게시판 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_answerboard(
	ansb_id int unsigned auto_increment primary key,
	inqb_id int unsigned not null,
	ansb_title varchar(500) not null,
	ansb_content varchar(2000) not null,
	ansb_date datetime default current_timestamp()
);

select * from tbl_answerboard;

drop table tbl_answerboard;

delete from tbl_answerboard;


/* 문의사항 게시판 테이블 외래키 제약조건 추가 */

/*inqb_id 컬럼 fk 추가 */
alter table tbl_answerboard add constraint fk_answerboard_inqb_id foreign key(inqb_id)
references tbl_inquireboard(inqb_id) on delete cascade;


/* 문의사항 게시판 테이블 더미 데이터(페이징 처리 관련하여 문제가 있으므로 더미 데이터가 아닌 실제 데이터 입력으로 진행) */

insert into tbl_answerboard
(inqb_id, ansb_title, ansb_content, ansb_date)
values(1, '문의 답변 드립니다.', '■  상품에 문제가 있는 경우


- 받으신 상품이 표시·광고 내용 또는 계약 내용과 다른 경우에는 상품을 받은 날부터 1개월 이내, 그 사실을 알게 된 날부터 3일 이내에 교환 및 환불을 요청하실 수 있습니다.

- 상품의 정확한 상태를 확인할 수 있도록 사진을 함께 보내주시면 더 빠른 상담이 가능합니다.


※ 상품에 문제가 있는 것으로 확인되면 배송비는 컬리가 부담합니다.', CURRENT_TIMESTAMP);

insert into tbl_answerboard
(inqb_id, ansb_title, ansb_content, ansb_date)
values(2, '문의 답변 드립니다.', '공동현관 출입/자택 앞으로 배송 불가 한 경우 최대한 상품을 안전히 배송해드리고자 공동현관 앞/경비실 앞으로 대응배송을 진행하고 있습니다.', CURRENT_TIMESTAMP);

/* ------------------------------------------------------------------------------------------------------------- */










