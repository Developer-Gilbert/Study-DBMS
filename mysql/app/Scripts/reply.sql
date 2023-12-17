use app;

create table tbl_reply(
	reply_id int unsigned auto_increment primary key,
	reply_content varchar(1000),
	reply_register_date datetime default current_timestamp(),
	reply_updated_date datetime default current_timestamp(),
	member_id int unsigned,
	board_id int unsigned,
	constraint fk_reply_member foreign key(member_id)
	references tbl_member(member_id),
	constraint fk_reply_board foreign key(board_id)
	references tbl_board(board_id)
);

select * from tbl_reply order by 1 desc;

insert into tbl_reply
(reply_content, member_id, board_id)
values('테스트', 1, 1);


insert into tbl_reply
(reply_content, member_id, board_id)
(select reply_content, member_id, board_id from tbl_reply);

truncate tbl_reply
