
/* 데이터베이스 연결 */
use eatsTime;

/* 상품 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_product(
	product_id int unsigned auto_increment primary key,
	member_id int unsigned not null,
	product_category char(10) not null default 1,
	product_name varchar(500) not null,
	product_price int not null,
	product_date datetime not null default current_timestamp(),
	product_expiration_date datetime not null,
 	product_stock int not null,
	product_address varchar(500) not null,
	product_address_detail varchar(500) not null,
	constraint ch_product_category check (product_category in('1', '0'))
);

select * from tbl_product;

drop table tbl_product;

delete from tbl_product;


/* 상품 테이블 외래키 제약조건 추가 */

/*member_id 컬럼 fk 추가 */
alter table tbl_product add constraint fk_product_member_id foreign key(member_id)
references tbl_member(member_id) on delete cascade;


/* 상품 테이블 더미 데이터 */

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '1', '멸치액젓', 15000, CURRENT_TIMESTAMP, '20230501', 5, '경기 용인시 처인구', '경안천로 2');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '1', '오징어튀김', 12000, CURRENT_TIMESTAMP, '20230501', 5, '울산 울주군', '언양읍 반곡리 898-9');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '1', '차돌된장찌개', 10000, CURRENT_TIMESTAMP, '20230501', 5, '경기 광주시', '오포로 111');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '1', '불고기', 12000, CURRENT_TIMESTAMP, '20230502', 5, '서울 강남구', '테헤란로5길 11');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '1', '두부', 1000, CURRENT_TIMESTAMP, '20230502', 5, '강원 강릉시', '성산면 갈매간길 5');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '1', '생연어', 21000, CURRENT_TIMESTAMP, '20230502', 5, '충북 청주시', '내수읍 충청대로');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '육수한알', 2000, CURRENT_TIMESTAMP, '20230502', 5, '강원 동해시', '단봉동 453-12');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '사과', 2500, CURRENT_TIMESTAMP, '20230502', 5, '대구 북구', '문주길 2');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '계란', 9900, CURRENT_TIMESTAMP, '20230502', 5, '경기 의왕시', '전주남이길 1');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '바나나', 1500, CURRENT_TIMESTAMP, '20230502', 5, '경기 여주시', '금사면 전북2길');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '샐러드6종', 1700, CURRENT_TIMESTAMP, '20230515', 5, '부산 기장군', '일광읍 이천1길 2');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '닭갈비', 17000, CURRENT_TIMESTAMP, '20230512', 10, '부산 강서구', '가달1로 7');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(13, '1', '치킨', 19000, CURRENT_TIMESTAMP, '20230511', 11, '서울 금천구', '가산디지털2로 1');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(13, '1', '월남쌈', 20000, CURRENT_TIMESTAMP, '20230511', 9, '서울 강남구', '역삼로1길 17');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(8, '0', '정육', 8000, CURRENT_TIMESTAMP, '20230509', 2, '경기 의정부시', '가능로 70');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(8, '0', '비빔국수', 18000, CURRENT_TIMESTAMP, '20230508', 20, '광주 남구', '수원지길 1');

insert into tbl_product
(member_id, product_category, product_name, product_price, product_date, product_expiration_date, product_stock, product_address, product_address_detail)
values(2, '0', '닭가슴살', 5000, CURRENT_TIMESTAMP, '20230507', 20, '광주 동구', '경양로 211');

/* ------------------------------------------------------------------------------------------------------------- */






