Select concat(Lastname, ', ', Firstname), Description, Salary
from Employee
Join Job
on jobid = job.Id