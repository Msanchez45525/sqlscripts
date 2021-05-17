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

select Lastname, ISNULL(m.description, 'Undeclared') as 'Major' 
From Student s
Left Join Major m on m.Id = s.MajorId
Where StateCode = 'MI'

select * 
from Major








-- list of students lastname and Major who live in Michigan.. students Null listed as undeclared 