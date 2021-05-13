-- Add Noah Phence as a new Math Major who recently moved from GA, GPA 3.5 SAT 1235
-- Change Noahs GPA to 3.51 and change major to Accounting

select * from Student
select * from major

/*
Insert into Student(firstname, lastname, statecode, SAT, GPA, Majorid)
	values ('Noah', 'Phense', 'GA', 1235, 3.15, (select id from Major where description = 'math' ));
*/

Update Student SET 
	gpa = 3.51,
	MajorId = (SELECT id from Major where code = 'ACCT')
	Where Firstname = 'Noah' and Lastname = 'Phense' and GPA = 3.15

	select * from Student

	Delete from student	
		where firstname = 'Noah' and lastname = 'Phense'
