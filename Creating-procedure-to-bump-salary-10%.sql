-- Update salary field using job desc inc by 10%
Create Procedure Sbump @bump Nvarchar(30)
as
Begin
	Update Job set
	Salary = Salary * 1.1
	Where Description = @bump;
End
go
Exec Sbump President
