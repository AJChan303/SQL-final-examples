Create Procedure EJListSearch
	@search nvarchar(30)
as
Begin
	Set @Search =Concat('%', @search, '%');
	Select Concat(Lastname, ', ', Firstname) 'Name', Description 'Job', Format(Salary, 'c') Salary
	From Employee
	join Job
	on Jobid = Job.id
	Where Lastname Like @search or Firstname Like @search or Job.Description like @search
	Order by Lastname; 
End