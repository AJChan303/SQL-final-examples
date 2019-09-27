select E.lastname, E.firstname, J.Description, J.Salary, E.Jobid
from Employee E
outer join Job J
on E.JobID = Job.ID
Where Salary < 120000