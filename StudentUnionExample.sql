-- sort students as ABC based on SAT score
select 'A' as 'ABC',* 
	from student s
	where SAT > 1200
	union
	Select 'B' as 'ABC',* 
	from Student
	where SAT <= 1200 and SAT > 1000
	union
	Select 'C' as 'ABC',* 
	from Student
	where SAT <= 1000
