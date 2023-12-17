
/* 데이터베이스 연결 */
use eatsTime;

/* 이미지 파일 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_file(
	file_id int unsigned auto_increment primary key,
	product_id int unsigned not null,
	file_name varchar(500) not null unique,
	file_original_name varchar(500) not null,
	file_size varchar(500) not null
);

select * from tbl_file;

drop table tbl_file;

delete table tbl_file;



/* 이미지 파일 테이블 외래키 제약조건 추가 */

/*product_id 컬럼 fk 추가 */
alter table tbl_file add constraint fk_file_product_id foreign key(product_id)
references tbl_product(product_id) on delete cascade;


/* 이미지 파일 테이블 더미 데이터 */
INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(1, 'product1.jpg', 'product1.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(2, 'product2.jpg', 'product2.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(3, 'product3.jpg', 'product3.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(4, 'product4.jpg', 'product4.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(5, 'product5.jpg', 'product5.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(6, 'product6.jpg', 'product6.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(7, 'product7.jpg', 'product7.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(8, 'product8.jpg', 'product8.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(9, 'product9.jpg', 'product9.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(10, 'product10.jpg', 'product10.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(11, 'product11.jpg', 'product11.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(12, 'product12.jpg', 'product12.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(13, 'product13.jpg', 'product13.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(14, 'product14.jpg', 'product14.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(15, 'product15.jpg', 'product15.jpg', '파일크기');

INSERT INTO tbl_file
(product_id, file_name, file_original_name, file_size)
VALUES(16, 'product16.jpg', 'product16.jpg', '파일크기');

/* ------------------------------------------------------------------------------------------------------------- */










