Create Procedure InsEmployee
	@Firstname nvarchar(30), @Lastname nvarchar(30), @Jobid int
as
Begin
	Insert into employee
	(Firstname, Lastname, Jobid)
	Values (@Firstname, @Lastname, @Jobid)
end