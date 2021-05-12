-- show sales that are above the average sales

select * 
from Customers c
where c.Sales > (Select avg(sales)from customers)
order by c.sales desc
