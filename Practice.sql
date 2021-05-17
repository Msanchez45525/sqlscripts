use EdDb
/* DECLARE @MinGPA int;
DECLARE @MAXGPA int;
set @MinGPA = 2.0
set @MAXGPA = 2.9

select * from Student
where gpa >= @MinGPA and gpa <=@MAXGPA
order by gpa desc


Select Firstname + ' ' + Lastname as 'FullName', GPA, SAT  
From Student
order by GPA Desc
*/

-- list of students lastname and Major who live in Michigan.. students Null listed as undeclared 

/*
select Lastname, ISNULL(m.description, 'Undeclared') as 'Major' 
From Student s
Left Join Major m on m.Id = s.MajorId
Where StateCode = 'MI'

select * 
from Major


	Insert Student (Firstname, Lastname, StateCode, SAT, GPA, MajorId)
	Values ('Noah', 'Pense', 'GA', 1235, 3.15, (Select id from Major where Description = 'MATH'))

	Select * from Student



-- list of students lastname and Major who live in Michigan.. students Null listed as undeclared 
*/



use Master;
Create Database BcDB;
Use BcDB;

create table Customer (

Id Int Primary Key Identity (1,1),
Code varchar(10) Not null Unique,
Name varchar(30) not null ,
Sales Decimal(9,2) not null Default 0,
Active bit not null default 1,
Created datetime not null default GetDate()
);

select * From Customer