--Subselect
--Finding avg salary
--121346
Select Firstname, lastname, description, Salary
from Employee
Join Job on job.ID = JobID
Where salary > (
				Select Avg(Salary) as 'salary'
				from Employee
				Join Job on job.ID = JobID)
