-- displat Orders, orderlines and customer but dont display PK or FK
Select c.name 'customer', o.Description 'order', ol.Description 'Product', ol.Quantity, ol.price, ol.quantity * ol.price 'line total'
	from orders o
	join orderlines ol
		on o.id = ol.ordersid
		join Customers c
		on o.CustomerId = c.id
	order by c.name