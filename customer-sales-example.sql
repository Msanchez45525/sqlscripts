-- list customers with sales less than the average of all customer sales
-- first Select avg(sales) from customers


select * 
	from Customers c
	where c.sales < (select avg(sales)from customers);

	select*
	from customers c
	where c.sales <(select avg(sales)
	from Customers)