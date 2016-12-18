create user tripbook identified by 1234;
alter user tripbook account unlock;
grant connect, resource to tripbook;
grant create sequence to tripbook;


CREATE TABLE user_table
(  
	id VARCHAR2(50) primary key, --아이디(이메일)
	password VARCHAR2(20) NOT NULL, -- 비밀번호
	name VARCHAR2(18) NOT NULL, -- 이름
	age NUMBER(3) NOT NULL, -- 나이
	gender VARCHAR2(1) check (gender in ('0','1')), -- 성별(0,1)
	register_date DATE NOT NULL , -- 가입일
	update_date DATE, -- 수정일
	file_name VARCHAR2(250), -- 프로필 사진
	state VARCHAR2(1) default '0' -- 계정 상태(0 : 일반,1 : 관리자,2 : 계정 탈퇴 예정)
);
select * from user_table;
insert into user_table(id,password,name,age,gender,register_date,state) values('admin@tripbook.com','admin','관리자',20,'0',sysdate,'1');
insert into user_table(id,password,name,age,gender,register_date,state) values('user@test.com','user','유저',27,'0',sysdate,'0');
select name from user_table where id = 'admin@tripbook.com';
		select id,name,age,gender,file_name from user_table where (name like '%%')

create sequence friend_sequence nocache;
CREATE TABLE friend_table
(  
	friend_no NUMBER primary key, -- 시퀀스
	state VARCHAR2(1) default '0' check (state in ('0','1')), -- 친구 상태(0:친구 신청,1:서로 친구)
	friend_id1 VARCHAR2(50) references user_table(id), -- 아이디 1
	friend_id2 VARCHAR2(50) references user_table(id) -- 아이디 2
);

create sequence schedule_sequence nocache;
CREATE TABLE schedule_table
(  
	schedule_no NUMBER primary key, -- 시퀀스
	subject VARCHAR2(100) NOT NULL, -- 제목
	start_date DATE NOT NULL, -- 시작일
	end_date DATE NULL, -- 종료일
	write_date DATE NOT NULL, -- 작성일
	state number NOT NULL, -- 상태(권한 부여)
	writer VARCHAR2(50) references user_table(id) not null -- 작성자
);

select * from schedule_table;

create sequence board_sequence nocache;
drop table reply_table;
drop table board_picture_table;
drop table grade_table;
drop table board_table;
drop table keyword_table;
select b.board_no,REPLACE(b.content,CHR(13)||CHR(10),'\\n') content,b.write_date,b.trip_date,b.location,b.location_lat,b.location_lng,b.writer,b.state,b.schedule_no
,u.id,u.name,u.file_name,bp.board_Picture_no,bp.file_name,bp.board_no,r.reply_no,r.writer,r.writer_date
from board_table b join user_table u on b.writer=u.id
left join board_picture_table bp on b.board_no=bp.board_no
left join reply_table r join user_table ru on r.writer = ru.id on r.board_no = b.board_no

where (b.writer='test3@test.com') or ((b.state='1' or b.state='0') 
and b.writer in ('test4@test.com', 'test2@test.com', 'kwi1222@naver.com', 'yoo@tripbook.com', 'jisu2@test.com'))
or (b.state in (6,7,12))
select b.board_no,REPLACE(b.content,CHR(13)||CHR(10),'\\n') b.content,b.write_date,b.trip_date,b.location,b.location_lat,b.location_lng,b.writer,u.id,u.name,u.file_name,b.state,
		bp.board_picture_no,bp.file_name,r.reply_no,r.content,r.writer_date,r.writer,ru.id,ru.name,ru.file_name
		from board_table b 
		left join board_picture_table bp on b.board_no=bp.board_no
		left join reply_table r on b.board_no= r.board_no
		join user_table u on b.writer= u.id
		join user_table ru on r.writer = ru.id
		where (b.writer=#{userId})

CREATE TABLE board_table
(  
	board_no NUMBER primary key, -- 시퀀스
	content VARCHAR2(4000) NULL, -- 내용
	write_date DATE NOT NULL , -- 작성일
	trip_date DATE, -- 시행일
	location VARCHAR2(1), -- 위치(0:국내,1:국외)
	location_lat NUMBER(24,20), -- 위도
	location_lng NUMBER(24,20), -- 경도
	writer VARCHAR2(50) references user_table(id) not null, -- 작성자
	state NUMBER not null, --권한
	schedule_no references schedule_table(schedule_no) on delete cascade -- 여행 시퀀스
);
create sequence board_picture_sequence nocache;
CREATE TABLE board_picture_table
(  
	board_picture_no NUMBER primary key, -- 시퀀스
	file_name VARCHAR2(250) NOT NULL, -- 파일 이름
	board_no NUMBER references board_table(board_no) on delete cascade not null -- 게시글 시퀀스
);

create sequence grade_sequence nocache;
CREATE TABLE grade_table
(  
	grade_no NUMBER primary key, -- 시퀀스
	grade NUMBER(2) NOT NULL, -- 점수
	id VARCHAR2(50) references user_table(id) not null, -- 아이디
	board_no NUMBER references board_table(board_no) on delete cascade not null -- 게시글
);

create sequence group_sequence nocache;
CREATE TABLE group_table
(  
	group_no NUMBER primary key, --시퀀스
	group_name VARCHAR2(100) NOT NULL -- 그룹 이름
);

select * from group_member_table;
insert into group_table(group_no,group_name) values(group_sequence.nextval,'전체공개');
insert into group_table(group_no,group_name) values(group_sequence.nextval,'친구공개');
insert into group_table(group_no,group_name) values(group_sequence.nextval,'비공개');

create sequence group_member_sequence nocache;
CREATE TABLE group_member_table
(  
	group_member_no NUMBER primary key, -- 시퀀스
	id VARCHAR2(50) references user_table(id) not null, -- 멤버 아이디
	group_no references group_table(group_no) not null -- 그룹 시퀀스
);

create sequence keyword_sequence nocache;
CREATE TABLE keyword_table
(  
	keyword_no NUMBER primary key, --시퀀스
	keyword VARCHAR2(100) NOT NULL, -- 키워드
	schedule_no NUMBER references schedule_table(schedule_no) on delete cascade NOT NULL -- 여행 시퀀스
);

create sequence notice_sequence nocache;
CREATE TABLE notice_table
(  
	notice_no NUMBER primary key, -- 시퀀스
	state VARCHAR2(1) NOT NULL, --(0:친구, 1:그룹, 2:공지, 3:게시물, 4:메세지 5:댓글)
	sender VARCHAR2(50) references user_table(id) not null, -- 보내는 사람
	receiver VARCHAR2(50) references user_table(id), -- 받는 사람
	send_date DATE NOT NULL, -- 보낸 날짜
	content VARCHAR2(4000),
	check_state VARCHAR2(1) NOT NULL -- 읽음 유무(0:읽지 않음,1:읽음)
);
drop table notice_table;
drop table notice_content_table
create sequence reply_sequence nocache;
CREATE TABLE reply_table
(  
	reply_no NUMBER primary key,
	content VARCHAR2(200) NOT NULL ,
	writer_date DATE NOT NULL,
	writer VARCHAR2(50) references user_table(id),
	board_no NUMBER references board_table(board_no) on delete cascade
);
select * from notice_table;
delete from group_table;

select schedule_no,subject,to_char(start_date,'YYYY-MM-DD') start_date,to_char(end_date-1,'YYYY-MM-DD') end_date,state,writer
		from schedule_table;
