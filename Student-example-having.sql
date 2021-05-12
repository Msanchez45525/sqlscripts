-- Display states & number of students in each/

select Statecode , count(*) 'Count'
	from Student s
		where SAT < 1000 
		group by StateCode
		having count(*) >1
		order by Count (*) desc