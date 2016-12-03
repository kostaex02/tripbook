
CREATE TABLE board_picture_table
(  
	board_picture_no      NUMBER     NOT NULL ,
	file_name             VARCHAR2(250)     NOT NULL ,
	board_no              NUMBER     NOT NULL ,
   CONSTRAINT   R_20 PRIMARY KEY (  board_no)   ,
   CONSTRAINT   _XPKboard_picture_table PRIMARY KEY (  board_picture_no)
);


CREATE TABLE board_table
(  
	board_no              NUMBER     NOT NULL ,
	content               VARCHAR2(4000)     NULL ,
	write_date            DATE     NOT NULL ,
	location_lat          NUMBER(4,16)     NULL ,
	location_lng          NUMBER(4,16)     NULL ,
	writer                VARCHAR2(50)     NOT NULL ,
	state                 NUMBER     SORT ,
	schedule_no           NUMBER     NULL ,
	location              VARCHAR2(1)     NULL ,
       CONSTRAINT   R_15 PRIMARY KEY (  writer)   ,
   CONSTRAINT   R_24 PRIMARY KEY (  schedule_no)   ,
   CONSTRAINT   _XPKboard_table PRIMARY KEY (  board_no),
   ypes
)  ;

CREATE TABLE friend_table
(  
	state                 VARCHAR2(1)     NOT NULL ,
	friend_no             NUMBER     NOT NULL ,
	friend_id1            VARCHAR2(50)     NOT NULL ,
	friend_id2            VARCHAR2(50)     NOT NULL ,
   CONSTRAINT   friend_table PRIMARY KEY (  friend_id1)   ,
   CONSTRAINT   R_26 PRIMARY KEY (  friend_id2)   ,
   CONSTRAINT   _XPKfriend_table PRIMARY KEY (  friend_no),
   ypes
)  ;



CREATE TABLE grade_table
(  
	grade_no              NUMBER     NOT NULL ,
	grade                 NUMBER(2)     NOT NULL ,
	id                    VARCHAR2(50)     NOT NULL ,
	board_no              NUMBER     NOT NULL ,
       CONSTRAINT   R_30 PRIMARY KEY (  id)   ,
   CONSTRAINT   R_31 PRIMARY KEY (  board_no)   ,
   CONSTRAINT   _XPKgrade_table PRIMARY KEY (  grade_no),
   ypes
)  ;



ALTER TABLE  grade_table 
	ADD  ;



CREATE TABLE group_member_table
(  
	group_member_no       NUMBER     NOT NULL ,
	id                    VARCHAR2(50)     NOT NULL ,
	group_no              NUMBER     NOT NULL ,
       CONSTRAINT   R_22 PRIMARY KEY (  id)   ,
   CONSTRAINT   R_23 PRIMARY KEY (  group_no)   ,
   CONSTRAINT   _XPKgroup_member_table PRIMARY KEY (  group_member_no),
   ypes
)  ;



ALTER TABLE  group_member_table 
	ADD  ;



CREATE TABLE group_table
(  
	group_no              NUMBER     NOT NULL ,
	group_name            VARCHAR2(100)     NOT NULL ,
       CONSTRAINT   _XPKgroup_table PRIMARY KEY (  group_no),
   ypes
)  ;



ALTER TABLE  group_table 
	ADD  ;



CREATE TABLE keyword_table
(  
	keyword_no            NUMBER     NOT NULL ,
	keyword               VARCHAR2(100)     NOT NULL ,
	schedule_no           NUMBER     NOT NULL ,
       CONSTRAINT   R_32 PRIMARY KEY (  schedule_no)   ,
   CONSTRAINT   _XPKkeyword_table PRIMARY KEY (  keyword_no),
   ypes
)  ;



ALTER TABLE  keyword_table 
	ADD  ;



CREATE TABLE notice_content_table
(  
	content               VARCHAR2(4000)     NOT NULL ,
	notice_no             NUMBER     NOT NULL ,
       CONSTRAINT   R_29 PRIMARY KEY (  notice_no)   ,
   CONSTRAINT   _XPKnotice_content_table PRIMARY KEY (  notice_no),
   ypes
)  ;



ALTER TABLE  notice_content_table 
	ADD  ;



CREATE TABLE notice_table
(  
	notice_no             NUMBER     NOT NULL ,
	state                 VARCHAR2(1)     NOT NULL ,
	sender                VARCHAR2(50)     NOT NULL ,
	receiver              VARCHAR2(50)     NOT NULL ,
	send_date             DATE     NOT NULL ,
	check_state           VARCHAR2(1)     NOT NULL ,
       CONSTRAINT   R_27 PRIMARY KEY (  sender)   ,
   CONSTRAINT   R_28 PRIMARY KEY (  receiver)   ,
   CONSTRAINT   _XPKnotice_table PRIMARY KEY (  notice_no),
   ypes
)  ;



ALTER TABLE  notice_table 
	ADD  ;



CREATE TABLE reply_table
(  
	reply_no              NUMBER     NOT NULL ,
	content               VARCHAR2(200)     NOT NULL ,
	writer_date           DATE     NOT NULL ,
	writer                VARCHAR2(50)     NOT NULL ,
	board_no              NUMBER     NOT NULL ,
       CONSTRAINT   R_16 PRIMARY KEY (  writer)   ,
   CONSTRAINT   R_17 PRIMARY KEY (  board_no)   ,
   CONSTRAINT   _XPKreply_table PRIMARY KEY (  reply_no),
   ypes
)  ;



ALTER TABLE  reply_table 
	ADD  ;



CREATE TABLE schedule_table
(  
	schedule_no           NUMBER     NOT NULL ,
	subject               VARCHAR2(100)     NOT NULL ,
	start_date            DATE     NOT NULL ,
	end_date              DATE     NULL ,
	write_date            DATE     NOT NULL ,
	state                 NUMBER     NOT NULL ,
	writer                VARCHAR2(50)     NOT NULL ,
       CONSTRAINT   R_19 PRIMARY KEY (  writer)   ,
   CONSTRAINT   _XPKschedule_table PRIMARY KEY (  schedule_no),
   ypes
)  ;



ALTER TABLE  schedule_table 
	ADD  ;



CREATE TABLE user_table
(  
	id                    VARCHAR2(50)     NOT NULL ,
	password              VARCHAR2(20)     NOT NULL ,
	name                  VARCHAR2(18)     NOT NULL ,
	age                   NUMBER(3)     NOT NULL ,
	gender                VARCHAR2(1)     NOT NULL ,
	register_date         DATE     NOT NULL ,
	update_date           DATE     NULL ,
	state                 VARCHAR2(1)     NOT NULL ,
       CONSTRAINT   _XPKuser_table PRIMARY KEY (  id),
   ypes
)  ;
