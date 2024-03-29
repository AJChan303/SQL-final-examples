		USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[EJListSearch]    Script Date: 7/18/2019 12:20:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[EJListSearch]
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