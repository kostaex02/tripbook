create user tripbook identified by 1234;
alter user tripbook account unlock;
grant connect, resource to tripbook;
grant create sequence to tripbook;

CREATE TABLE user_table
(  
	id VARCHAR2(50) primary key, --���̵�(�̸���)
	password VARCHAR2(20) NOT NULL, -- ��й�ȣ
	name VARCHAR2(18) NOT NULL, -- �̸�
	age NUMBER(3) NOT NULL, -- ����
	gender VARCHAR2(1) check (gender in ('0','1')), -- ����(0,1)
	register_date DATE NOT NULL , -- ������
	update_date DATE, -- ������
	file_name VARCHAR2(250), -- ������ ����
	state VARCHAR2(1) default '0' -- ���� ����(0 : �Ϲ�,1 : ������,2 : ���� Ż�� ����)
);
select * from user_table;
insert into user_table(id,password,name,age,gender,register_date,file_name,state) values('admin@tripbook.com','admin','������',20,'0',sysdate,'1');
insert into user_table(id,password,name,age,gender,register_date,state) values('user@test.com','user','����',27,'0',sysdate,'0');

create sequence friend_sequence nocache;
CREATE TABLE friend_table
(  
	friend_no NUMBER primary key, -- ������
	state VARCHAR2(1) default '0' check (state in ('0','1')), -- ģ�� ����(0:ģ�� ��û,1:���� ģ��)
	friend_id1 VARCHAR2(50) references user_table(id), -- ���̵� 1
	friend_id2 VARCHAR2(50) references user_table(id) -- ���̵� 2
);

create sequence schedule_sequence nocache;
CREATE TABLE schedule_table
(  
	schedule_no NUMBER primary key, -- ������
	subject VARCHAR2(100) NOT NULL, -- ����
	start_date DATE NOT NULL, -- ������
	end_date DATE NULL, -- ������
	write_date DATE NOT NULL, -- �ۼ���
	state number NOT NULL, -- ����(���� �ο�)
	writer VARCHAR2(50) references user_table(id) not null -- �ۼ���
);

create sequence board_sequence nocache;
CREATE TABLE board_table
(  
	board_no NUMBER primary key, -- ������
	content VARCHAR2(4000) NULL, -- ����
	write_date DATE NOT NULL , -- �ۼ���
	trip_date DATE, -- ������
	location VARCHAR2(1), -- ��ġ(0:����,1:����)
	location_lat NUMBER(4,16), -- ����
	location_lng NUMBER(4,16), -- �浵
	writer VARCHAR2(50) references user_table(id) not null, -- �ۼ���
	state NUMBER not null, --����
	schedule_no references schedule_table(schedule_no) not null -- ���� ������
);

create sequence board_picture_sequence nocache;
CREATE TABLE board_picture_table
(  
	board_picture_no NUMBER primary key, -- ������
	file_name VARCHAR2(250) NOT NULL, -- ���� �̸�
	board_no NUMBER references schedule_table(schedule_no) not null -- �Խñ� ������
);

create sequence grade_sequence nocache;
CREATE TABLE grade_table
(  
	grade_no NUMBER primary key, -- ������
	grade NUMBER(2) NOT NULL, -- ����
	id VARCHAR2(50) references user_table(id) not null, -- ���̵�
	board_no NUMBER references board_table(board_no) not null -- �Խñ�
);

create sequence group_sequence nocache;
CREATE TABLE group_table
(  
	group_no NUMBER primary key, --������
	group_name VARCHAR2(100) NOT NULL -- �׷� �̸�
);

select * from group_table;
insert into group_table(group_no,group_name) values(group_sequence.nextval,'��ü����');
insert into group_table(group_no,group_name) values(group_sequence.nextval,'ģ������');
insert into group_table(group_no,group_name) values(group_sequence.nextval,'�����');

create sequence group_member_sequence nocache;
CREATE TABLE group_member_table
(  
	group_member_no NUMBER primary key, -- ������
	id VARCHAR2(50) references user_table(id) not null, -- ��� ���̵�
	group_no references group_table(group_no) not null -- �׷� ������
);

create sequence keyword_sequence nocache;
CREATE TABLE keyword_table
(  
	keyword_no NUMBER primary key, --������
	keyword VARCHAR2(100) NOT NULL, -- Ű����
	schedule_no NUMBER NOT NULL -- ���� ������
);

create sequence notice_sequence nocache;
CREATE TABLE notice_table
(  
	notice_no NUMBER primary key, -- ������
	state VARCHAR2(1) NOT NULL, --(0:ģ��, 1:�׷�, 2:����, 3:�Խù�)
	sender VARCHAR2(50) references user_table(id) not null, -- ������ ���
	receiver VARCHAR2(50) references user_table(id) not null, -- �޴� ���
	send_date DATE NOT NULL, -- ���� ��¥
	check_state VARCHAR2(1) NOT NULL -- ���� ����(0:���� ����,1:����)
);

CREATE TABLE notice_content_table
(  
	content VARCHAR2(4000) NOT NULL ,
	notice_no NUMBER references notice_table(notice_no) unique
);

create sequence reply_sequence nocache;
CREATE TABLE reply_table
(  
	reply_no NUMBER primary key,
	content VARCHAR2(200) NOT NULL ,
	writer_date DATE NOT NULL,
	writer VARCHAR2(50) references user_table(id),
	board_no NUMBER references board_table(board_no)
);

