
/* 데이터베이스 연결 */
use eatsTime;

/* 주문 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_purchase(
	pur_id int unsigned auto_increment primary key,
	member_id int unsigned not null,
	product_id int unsigned not null,
	pur_date datetime default current_timestamp(),
	pur_name varchar(500) not null,
	pur_phone_number varchar(500) not null,
	pur_address varchar(500) not null,
	pur_address_detail varchar(500) not null,
	pur_location varchar(500) not null,
	pur_pw varchar(500) not null,
	pur_total_price int not null
);

drop table tbl_purchase;

delete from tbl_purchase;

select * from tbl_purchase;

/* 주문 테이블 외래키 제약조건 추가 */

/*member_id 컬럼 fk 추가 */
alter table tbl_purchase add constraint fk_purchase_member_id foreign key(member_id)
references tbl_member(member_id) on delete cascade;

/*product_id 컬럼 fk 추가 */
alter table tbl_purchase add constraint fk_purchase_product_id foreign key(product_id)
references tbl_product(product_id) on delete cascade;

/* 주문 테이블 더미 데이터 */

insert into tbl_purchase
(member_id, product_id, pur_date, pur_name, pur_phone_number, pur_address, pur_address_detail, pur_location, pur_pw, pur_total_price)
values(4, 15, CURRENT_TIMESTAMP, '이종문', '01040733327', '서울 송파구 양산로', '거여아파트', '문앞', '자유출입', '5000');

insert into tbl_purchase
(member_id, product_id, pur_date, pur_name, pur_phone_number, pur_address, pur_address_detail, pur_location, pur_pw, pur_total_price)
values(4, 9, CURRENT_TIMESTAMP, '이종문', '01040733327', '서울 송파구 양산로', '거여아파트', '주소지', '자유출입', '9900');

insert into tbl_purchase
(member_id, product_id, pur_date, pur_name, pur_phone_number, pur_address, pur_address_detail, pur_location, pur_pw, pur_total_price)
values(4, 2, CURRENT_TIMESTAMP, '김치윤', '01012341234', '경기도', '광주시', '문앞', '자유출입', '12000');

insert into tbl_purchase
(member_id, product_id, pur_date, pur_name, pur_phone_number, pur_address, pur_address_detail, pur_location, pur_pw, pur_total_price)
values(4, 1, CURRENT_TIMESTAMP, '김인진', '01012341234', '서울특별시', '아파트', '문앞', '자유출입', '15000');

/* ------------------------------------------------------------------------------------------------------------- */

