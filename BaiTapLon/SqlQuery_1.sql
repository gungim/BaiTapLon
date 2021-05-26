﻿create database quanlyhocsinhcap2


create table Class(
	ClassId varchar(100) primary key,
	ClassName varchar(100)
)

insert into Class values
('lop1','Lớp 1'),
('lop2','Lớp 2'),
('lop3','Lớp 3'),
('lop4','Lớp 4')

create table Student(
	id int identity,
	StudentId varchar(100) primary key,
	StudentName varchar(200),
	Gender varchar(10),
	StudentAddress varchar(300),
	Birthday Datetime,
	ClassId varchar(100),
	PhoneNumber varchar(100),
	StuImage varchar(300),
	constraint fk1 foreign key (ClassId) references Class(ClassId)  
)

create table giaovien(
magv varchar(100) primary key,
tengv varchar(100),
taikhoan varchar(100),
matkhau varchar(100),
quyen varchar(20)
)

insert into giaovien values
('1','a','a','a','cn')


create table Subjects(
	SubId varchar(100) primary key,
	SubName varchar(200)
)

create table ScoreList(
	ScoreId int identity,
	ScoreSementer varchar(100) ,
	ScoreOral varchar(100)  ,
	ScoreMedium varchar(100) ,
	StudentId varchar(100),
	SubId varchar(100),
	constraint fk3 foreign key (SubId) references Subjects(SubId),
	constraint fk4 foreign key (StudentId) references Student(StudentId),
)

---drop table ScoreList

insert into Subjects values
('dialy','Địa lý'),
('lichsu','lịch sử'),
('gdcd','Giáo dục công dân'),
('toan001','Toan'),
('van001','Van'),
('anh001','anh')



insert into ScoreList( StudentId,SubId,ScoreMedium,ScoreOral,ScoreSementer) values
('9393939','toan001', '.' , '.' , '.'),
('9393939','van001',8,8,8),
('9393939','anh001',7,7,7)

delete  from ScoreList where ScoreId = '1'

drop table ScoreList
select * from Class
select * from Subjects
select * from Student
select * from ScoreList


