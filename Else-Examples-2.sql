Declare @job nvarchar(30) = 'Directar'
If Exists (Select ID from job Where description = @Job)
Begin
	Print 'That Job Exists.'
End
ELse
Begin 
	Print 'You are Dumb'
End