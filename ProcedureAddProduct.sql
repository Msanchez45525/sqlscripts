create or alter procedure AddProduct
@PartNbr varchar(30) = null,
@name varchar(30) = null
@Price decimal(11,2) = not null,
@Unit varchar(10) = not null,
@Photopath varchar(255) = null,
@Vendorname varchar(30)= null
as 
begin
if @vendorname = null
	begin
	Print 'Vendor Name Required';
	end;
	Declare @Vendorid int = 0;
	Select top 1 @Vendorid = Id from Vendors where name like '%@VendorName%';
	Insert into Products (PartNbr, Name, Price, Unit, PhotoPath, VendorId)
		Values(@Partnbr, @name, @price, @Unit, @photopath, @Vendorid);
	if @@rowcount <> 1
	begin
		Print 'Error: Insert Failed';
		return -1;
	end;
	return 0;
end;


exec AddProduct 'Watch', 'Sieko Watch', 100, 'Each', null, 'Kroger';