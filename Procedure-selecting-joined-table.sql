Create Procedure EmployeeJobList
as
Begin
	Select Concat(Lastname, ', ', Firstname) 'Name', Description 'Job', Format(Salary, 'c') Salary
	From Employee
	join Job
	on Jobid = Job.id
	Order by Lastname; 
End