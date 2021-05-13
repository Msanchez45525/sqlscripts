
Begin Transaction;

Insert Major (Code, Description, MinSAT) values ('UWBW', 'Basket Weaving', 400);
Insert Major (Code, Description, MinSAT) values ('COW', 'Cow Tipping', 200);

rollback;

Select * from Major;


Delete from Major
	Where code = 'UWBW'
