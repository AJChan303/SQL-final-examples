USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[EmpNameSearch]    Script Date: 7/18/2019 2:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[EmpNameSearch] @first Nvarchar(10)
as
begin
	Set @first = Concat('%', @first, '%')
	Select Concat(Lastname, ', ', Firstname) Name
	From Employee
	Where Firstname like @First
end
