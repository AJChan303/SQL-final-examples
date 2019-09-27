Select Concat(Lastname, ', ', Firstname), Description, Salary
From Employee
join Job
on JobId = Job.ID
Where Salary > (
				Select Avg(Salary) as 'Salary'
				from Employee
				Join Job 
				on JobID = Job.ID)