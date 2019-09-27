/*
Create Procedure PhoneEmailUpdate 
@Firstname nvarchar(30), @Lastname nvarchar(30), @Phone nvarchar(15), @email nvarChar(255) 
as
Begin
Update Students Set
	Phone = @Phone,
	Email = @Email
	Where Firstname = @Firstname and Lastname = @Lastname
End
*/
Exec PhoneEmailUpdate Titus, moore, 9374741083, 'tmoore@gmaedgewebware.com'