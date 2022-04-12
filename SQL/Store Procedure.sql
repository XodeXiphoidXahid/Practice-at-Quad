/****** Script for SelectTopNRows command from SSMS  ******/


 insert into Employee(Id, Name, Gender) values(2, 'Hasib', 'Female')

Create Procedure spGetEmployee
As
Begin
	select Name, Gender from Employee
End

spGetEmployee

Create Proc spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int output
as
Begin
	select @EmployeeCount= count(Id)
	from Employee where Gender=@Gender
End

Declare @TotalEmployee int
Execute spGetEmployeeByGender 'Male',  @TotalEmployee Output