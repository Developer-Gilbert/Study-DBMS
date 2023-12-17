
/* 데이터베이스 연결 */
use eatsTime;

/* 공지사항 게시판 테이블 생성(PK, UK, DEFAULT, CHECK, NULL 값 여부) */
create table tbl_notificationboard(
	notb_id int unsigned auto_increment primary key,
	member_id int unsigned not null,
	notb_title varchar(500) not null,
	notb_content varchar(2000) not null,
	notb_date datetime default current_timestamp(),
	notb_hit int not null default 0
);

select * from tbl_notificationboard;

drop table tbl_notificationboard;

delete from tbl_notificationboard;


/* 공지사항 게시판 외래키 제약조건 추가 */

/*member_id 컬럼 fk 추가 */
alter table tbl_notificationboard add constraint fk_notificationboard_member_id foreign key(member_id)
references tbl_member(member_id) on delete cascade;


/* 공지사항 게시판 테이블 더미 데이터 */

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트1', '공지사항 테스트입니다1.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트2', '공지사항 테스트입니다2.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트3', '공지사항 테스트입니다3.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트4', '공지사항 테스트입니다4.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트5', '공지사항 테스트입니다5.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트6', '공지사항 테스트입니다6.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트7', '공지사항 테스트입니다7.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트8', '공지사항 테스트입니다8.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트9', '공지사항 테스트입니다9.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트10', '공지사항 테스트입니다10.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트11', '공지사항 테스트입니다11.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트12', '공지사항 테스트입니다1.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트13', '공지사항 테스트입니다13.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트14', '공지사항 테스트입니다14.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트15', '공지사항 테스트입니다15.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트16', '공지사항 테스트입니다16.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트17', '공지사항 테스트입니다17.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트18', '공지사항 테스트입니다18.', CURRENT_TIMESTAMP, 0);

insert into tbl_notificationboard
(member_id, notb_title, notb_content, notb_date, notb_hit)
values(1, '공지사항 테스트19', '공지사항 테스트입니다19.', CURRENT_TIMESTAMP, 0);

/* ------------------------------------------------------------------------------------------------------------- */









