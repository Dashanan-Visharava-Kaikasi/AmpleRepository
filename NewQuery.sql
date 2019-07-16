create table PointsTable
(
Id int primary key identity(1,1),
FStatus nvarchar(10) default('Del'),
UserId int foreign key References Users(Id),
Poinst float default(0)
);