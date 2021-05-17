


as 
begin
if not exists (select 1 from Vendors where id = @id)
begin
print 'Vendor not found';
	return -1;
	end
Update Vendor Set
	Code = @Code,
	Name =
	address =
	city -
	state



------------------------------------------------------------------------------------------------

Create or aler Procedure DeleteVendor
	@id int = 0
as
begin
if not exists (select 1 from Vendors where id = @id)
begin
print 'Vendor not found';
return -1;
Delete from Vendors
	where  Id = @id;
	return 0;
	end ;

	go
Exec DeleteVendors 1