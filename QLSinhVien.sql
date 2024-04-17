 create table Subject
(
	SubjectID char(3) primary key,
	SubjectName varchar (30),
	Units int
)
insert into Subject
values ('S01', 'Database' ,3),
		('S02','AI',3),
		('S03','Python',2),
		('S04', 'DB Design',3),
		('S05','Math 2',2)
delete from subject

select * from subject

drop table Classes
create table Classes
(
	ClassesID char (3) primary key,
	ClassesName varchar (30),
	ClassesYear varchar (30)
)
insert into Classes
values('C01', 'HT22','2022-2026'),
	('C02','DL22','2022-2026'),
	('C03','NA22','2022-2026')
delete from classes

select * from classes

delete from student
drop table Student
create table Student
(
	StudentID char (3) primary key,
	StudentName varchar (30),
	StudentAddress varchar (30),
	ClassesID char(3)
)
insert into student
values('T01','Ha Lam Truong Giang','Ben Tre', 'C01'),
('T02','Huynh Tan Manh','Tp HCM','C01'),
('T03', 'Bui Thanh Thi','Ca Mau','C01'),
('T04', 'Huynh Thai Duong', 'Phu Yen', 'C01'),
('T05', 'Tran Chi Tam', 'Vinh Long', 'C01'),
('T06', 'Vo Quang Dat', 'Phu Yen', 'C01'),
('T07', 'Huynh Tan Phuc', 'Tien Giang', 'C02'),
('T08', 'Nguyen Thi Thu Hien', 'Nghe An', 'C02'),
('T09', 'Huynh Anh Minh', 'Long An', 'C02'),
('T10', 'Huynh Minh Nghia', 'Phu Quoc','C02'),
('T11', 'Manh Huynh', 'Phu Yen', 'C02'),
('T12', 'Trang Huynh', 'TP HCM','C02'),
('T13', 'Thi Thi', 'Ca Mau','C03'),
('T14', 'Manh Manh', 'TP HCM', 'C03'),
('T15', 'Duong Duong', 'Long An', 'C03'),
('T16', 'Giang Giang','Ben Tre','C03'),
('T17', 'Thy Thy', 'Ben Tre', 'C03'),
('T18', 'Phuc Phuc', 'Dong Thap', 'C03'),
('T19', 'Huynh Manh Huynh', 'Dong Thap','C03'),
('T20', 'Truong Giang', 'TPHCM', 'C03')
 select * from student
 
 select *
 from Student
 Where ClassID not in
 (select ClassID from Classes)
 
 drop table StudentGrades
 create table StudentGrades
 (
	 StudentID char (3),
	 SubjectID char (3),
	 Grades float,
	 primary key (StudentID, SubjectID)
 )
 insert into StudentGrades
 values ('T01' , 'S01' , 9),
 ('T01','S02', 7),
 ('T01','S03', 8.8),
 ('T01','S04',5),
 ('T01','S05',8),
 
 ('T02', 'S01' , 5),
 ('T02','S02',5),
 ('T02','S03',8),
 ('T02','S04', 7),
 ('T02', 'S05',1),
 
 ('T03', 'S01', 2),
 ('T03', 'S02', 7),
 
 ('T04', 'S03', 9),
 ('T04', 'S05', 1.5),
 ('T04', 'S01',2),
 
 ('T05' , 'S01 ',1),
 ('T05' , 'S02',4.5),
 ('T05' , 'S04',4),
 ('T05' , 'S05',4),
 
 ('T06' , 'S02 ', 2.5),
 
 ('T07', 'S02 ', 3),
 
 ('T08', 'S05', 2),
 
 ('T09','S02 ', 4.5),
 
 ('T15','S02 ', 9.5)
 select * from StudentGrades
 
 Select *
 From StudentGrades
 Where StudentID not in 
 (select StudentID
  From Student)
 or StudentID not in
 (Select SubjectID From Subject)
 
 Select StudentID, Count (*)
 From StudentGrades
 Group by StudentID
 order by StudentID
 
 drop table R1
 create table R1
 (
	 A int,
	 B int
 )
 insert into R1
 values (1,2),
 		(3,4)
delete from R1
Select * from R1

drop table R2
create table R2
 (
	 B int,
	 C int
 )
 insert into R2
 values (2,3),
 		(5,6)
delete from R2
Select * from R2

drop table R3
create table R3
 (
	 C int,
	 D int
 )
 insert into R3
 values (3,4),
 		(7,8)
delete from R3
 Select * from R3
 
select *
from R1,R2
where R1.B =R2.B

Select * 
From R1,R2,R3

select * from R1,R2,R3 
Where 
R1.B=R2.B and R2.C=R3.C

select *
from R1 join R2 on R1.B=R2.B

select *
from R1 join R2 on R1.B=R2.B join R3 on R2.C=R3.C

select *
from student
where classID = 'C02'

select student.*
 from student ,  Classes 
 where student.Classesid= Classes.Classesid And ClassesName='HT22'
 
 select *
 From R1
 Where B Not in (Select B From R2)
 
 Select *
 From Subject
 Where SubjectID Not in 
 (Select SubjectID
  From StudentGrades
  Where StudentID ='T03')

create table R
 (
 A int,
	 B int,
	 C int)
 insert into R
 values 
 (1,1,1),
 (1,2,2),
 (2,2,3),
 (3,2,4),
 (3,1,5)
 select * from R
 
Select A,B 
From R
Group by A,B
Order by A,B
 
Select A, Sum(B),Max(B),Min(B),Avg(B), Count (*)
From R
Group by A

Select ClassesID, count (*) as SS
From Student
Group by ClassesID

Select count (*) as SS01
From Student
Where ClassesID ='C01'

Select StudentID, AVG(grades) as DTB
From StudentGrades
Group by StudentID

Select ClassesID, AVG(grades) as DTB
From StudentGrades A, Student B
Where A.StudentID = B.StudentID
Group by ClassesID

Select A, Sum(B)
From R
Group by A
Having Sum(B)=3

Select A, Sum(B)
From R
Group by A
Having Sum(B) >= All(Select Sum (B) From R Group by A)
					
select ClassesID ,Count(*) As SS
from Student
group by ClassesID
Having Count(*) >= All  (select Count(*)
from student
group by classesID)

Bai tap de cuong
5.8
select classesID,count(*) 
from student
group by classesID

5.9
select classesid, count (*) as ss
from student
group by classesid
having count(classesid) >= all
(select count (*) as ss
from student
group by classesid)

5.10
select studentID, avg(grades) as GPA
from studentgrades
where studentID='T02'
group by studentID

5.11
select studentID, avg(grades) as GPA
from studentgrades
group by studentID

5.12
Select avg(Grades) 
From Student A, StudentGrades B
Where A.StudentID = B.StudentID and ClassesID = 'C02'

5.13
select  classes.classesid,Avg(Grades)
from classes
join student on
classes.classesid=student.classesid
join studentgrades on student.studentid=studentgrades.studentid
group by classes.classesid

5.14
select studentID, avg (grades) as GPA 
from studentgrades
group by studentID
having avg(grades) >= all
(select avg (grades) as GPA
from studentgrades
group by studentID)

5.15
select  student.studentID,studentName,Avg(Grades) as GPA
from student
join studentgrades on student.studentid=studentgrades.studentid
group by student.studentID,studentName
having avg(grades)>= all
(select avg(grades) as GPA
from studentgrades
group by studentID)


5.16
select  classes.classesID,ClassesName,Avg(Grades) as GPA
from student
join studentgrades on student.studentid=studentgrades.studentid
group by student.studentID,studentName
having avg(grades)>= all
(select avg(grades) as GPA
from studentgrades
group by studentID)

insert into Subject
Values ('S07')

delete from subject
where subjectID='S07'

Create table Subject
(SubjectID char(3),
 SubjectName varchar(30)
 Not null,
 units int
)

alter table subject
alter column subjectname
set not null

insert into Subject
Values ('S07')

select * from Subject

alter table subject
add Constraint CSDL
Unique (SubjectName)

Insert into subject
values ('S08','AI',3)

alter table StudentGrades
add constraint T01
check (grades >= 0
	  and Grades <=10)
	  
Insert into studentgrades
values ('T01','S02',-3)

Insert into student
values ('T01','S02',-3)
delete from student
where studentID = 'T21'


alter table student
add Constraint classesID_FK
Foreign key (classesID)
References classes(classesID)

alter table studentgrades
add Constraint studentID_FK
Foreign key (studentID)
References studentgrades(studentID)

alter table studentgrades
add Constraint subjectID_FK
Foreign key (subjectID)
References studentgrades(subjectID)
