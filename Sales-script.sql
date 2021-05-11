select City, sum(sales) 'sales'
	from customers
	group by City
	having sum(sales) > 600000
	order by sales desc;