/* 
DECLARE @idx int =0;
while @idx <10 begin
	Print @idx;
	Set @idx = @idx + 1;
end
Print 'Done'


DECLARE @idx int = 3;

While @idx < 33 begin
	print @idx;
	set @idx = @idx +3;
end

print 'Done...'


----

declare @idx int = 0;
declare @nbr int = 3;
WHile @idx < 10 begin
	print @nbr;
		set @nbr = @nbr + 3;
		set @idx = @idx + 1;
end
print 'done'

*/


/*
Declare @nbr int = 3;
while 1=1 begin
	print @nbr;
		set @nbr = @nbr + 3;
		if @nbr > 100 begin
			break;
			end;
		end;
		print 'Done...'
		*/

--5%2 = 1
--6%2 = 0
--n% 9 = 0    9

-- exclude all even divisibly by 9

Declare @nbr int = 3;
while 1=1 begin
	if @nbr % 9 = 0 begin
		Set @nbr = @nbr + 3;
		continue;
	end
	print @nbr;
		set @nbr = @nbr + 3;
		if @nbr > 100 begin
			break;
			end;
		end;
		print 'Done...'


