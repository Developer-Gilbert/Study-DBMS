
/* 데이터베이스 연결 */
use eatsTime;

/* 판매 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_sale(
	sale_id int unsigned auto_increment primary key,
	member_id int unsigned not null,
	product_id int unsigned not null,
	sale_title varchar(500) not null,
	sale_content varchar(2000) not null,
	sale_date datetime default current_timestamp()
);

select * from tbl_sale;

drop table tbl_sale;

delete from tbl_sale;


/* 판매 테이블 외래키 제약조건 추가 */

/*member_id 컬럼 fk 추가 */
alter table tbl_sale add constraint fk_sale_member_id foreign key(member_id)
references tbl_member(member_id) on delete cascade;

/*product_id 컬럼 fk 추가 */
alter table tbl_sale add constraint fk_sale_product_id foreign key(product_id)
references tbl_product(product_id) on delete cascade;


/* 판매 테이블 더미 데이터 */

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 1, '멸치액젓', '감칠맛 풍부', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 2, '오징어튀김', '바삭바삭 신선한 오징어 튀김', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 3, '불고기', '맛있는 불고기', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 4, '차돌된장찌개', '구수한 맛', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 5, '두부', '고소한 두부', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 6, '생언어', '신선한 노르웨이 연어', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 7, '육수한알', '깊은 맛', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 8, '사과', '꿀박힌 사과', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 9, '계란', '신선한 계란', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 10, '바나나', '야미 바나나', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 11, '샐러드6종', '다이어트 1일차', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 12, '닭갈비', '닭갈비 맛있어요', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(13, 13, '치킨', '바삭바삭 치킨', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(13, 14, '월남쌈', '뇸뇸굿', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(8, 15, '닭정육', '순살이 좋아', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(8, 16, '비빔국수', '새콤닭콤 국수', CURRENT_TIMESTAMP);

insert into tbl_sale
(member_id, product_id, sale_title, sale_content, sale_date)
values(2, 17, '닭가슴살', '다이어트', CURRENT_TIMESTAMP);

/* ------------------------------------------------------------------------------------------------------------- */




