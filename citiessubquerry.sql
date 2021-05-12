--subquery for data in parentheses
-- distinct want values but no more than 1; look at all rows get rid of duplicates 

select * 
	from customers c 
	where city in (select distinct city
from customers
where city like 'Cin%' or city like 'Col%')