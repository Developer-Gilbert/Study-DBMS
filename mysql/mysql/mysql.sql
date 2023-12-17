/*데이터베이스 생성*/
create database test;
/*여기까지 입력해주어야 데이터베이스를 사용할 수 있다.*/
use test;

create table tbl_guest(
/*unsigned: 음수를 양수로 뒤집어 양수에 합친다.
 * 이에따라 가용한 양수 정수의 최대 값이 두 배 증가한다.*/
	guest_id int unsigned auto_increment primary key,
	guest_email varchar(500) not null unique,
	guest_password varchar(500) not null,
	guest_age tinyint unsigned,
	constraint fk_guest_table foreign key
	references tbl_table()
);

select * from tbl_guest;

alter table tbl_guest add column(birth date);

insert int tbl_guest(guest_email, guest_password, guest_age)
values('cldbs8921@gmail.com', '1234', 20);

/*연결*/
select concat(guest_age, '살') from tbl_guest;

/*현재 시간*/
select current_timestamp() from dual;

/*형식 변경*/
select date_format(current_timestamp(), '%Y년 %m월 %d일 %H:%i%s') from dual;

select guest_email, ifnull(birth, current_timestamp()) birth from tbl_guest;