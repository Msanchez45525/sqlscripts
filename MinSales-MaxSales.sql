use SalesDb;

DECLARE @MinSales int;
DECLARE @MaxSales int;
SET @MinSales = 25000;
Set @MaxSales = 40000;

select * from Customers
--where sales >=? and sales <?

Where sales >= @MinSales and sales <= @MaxSales

DECLARE @MinSales int = 30000;
DECLARE @MaxSales int = 50000;

select * from Customers
--where sales >=? and sales <?

Where sales >= @MinSales and sales <= @MaxSales

