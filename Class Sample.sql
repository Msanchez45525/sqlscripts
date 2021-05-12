Select o.Id 'Orderid', o.Date, o.Description, c.name 'Customer',
concat(c.city, ', ', c.state) 'location', ol.Product, ol.Description, ol.Quantity, ol.Price, ol.Quantity * ol.Price
'Line Total'
	From Orders o
	join Customers c 
		on o.CustomerId = c.Id
	join OrderLines ol 
		on o.Id = ol.OrdersId
		where c.City = 'cleveland' or c.City = 'cincinnati'
