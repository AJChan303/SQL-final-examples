--Join view Employee/Job showing salary
--Sorting by salary and last name
Select Concat(Lastname, ', ', Firstname) as 'Name', Description , Format(Salary, 'C') as 'Salary'
from Employee
join job
	on JobID = Job.Id
	order by job.salary desc, name;


