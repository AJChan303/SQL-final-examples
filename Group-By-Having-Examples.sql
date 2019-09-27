--Join view Employee/Job showing salary
--Sorting by salary and last name
--Group by/Having which is kinda like where statement.
Select Description, Count(*) as 'Count', Format(sum(Salary), 'C') as 'Total Salary'
from Employee
join job
on JobID = Job.Id
Group By Description
Having sum(Salary) <= 250000
order by 'Total salary' desc