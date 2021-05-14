-- Show Students with GPA > 3 and SAT > 1200 with parameters

Declare @GPA decimal (5,2) = 3.0;
Declare @SAT int = 1200;


Select * 
	from Student
	where gpa >= @GPA and sat >= @SAT

-- select top 4 students by SAT

select * from student 
	Order by SAT desc





	Declare @abc int;
	set @abc = convert(int, '123')

	Print @abc


