USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[InsEmployee]    Script Date: 7/18/2019 12:20:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[InsEmployee]
	@Firstname nvarchar(30), @Lastname nvarchar(30), @Job nvarchar(30)
as
Begin
	Declare @JobID int;
	
	Select @jobid = id from job where description = @Job;

	Insert into employee
	(Firstname, Lastname, Jobid)
	Values (@Firstname, @Lastname, @Jobid)
end
Go
Exec InsEmployee @firstname ='Peter', @Lastname = 'Parker', @job = 'Director'