create table Users
(
Id int PRIMARY Key IDENTITY(1,1) NOT NULL,
Email nvarchar(100) UNIQUE NOT NULL,
Password nvarchar(64) NOT NULL,
FName nvarchar(100) NOT NULL,
MName nvarchar(100) NULL,
LName nvarchar(100) NOT NULL,
PAN nvarchar(100) NOT NULL,
Under_UserId int NOT NULL,
LegId int NOT NULL
);

create table AdminUsers
(
Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Email nvarchar(100) NOT NULL,
Password nvarchar(64) NOT NULL
);

create table PinRequest
(
Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Email nvarchar(100) NOT NULL,
Amount float NOT NULL,
RequestDate datetime NOT NULL,DEFAULT(NOW),
Status nvarchar(5) NOT NULL,DEFAULT('open')
);

create table PinList
(
Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
Email nvarchar(100) NOT NULL,
Pin nvarchar(100) NOT NULL,
Status nvarchar(5) NOT NULL DEFAULT('open')
);

create table Leg
(
Id int PRIMARY Key IDENTITY(1,1) NOT NULL,
Title nvarchar(100) NOT NULL
);

create table City
(
Id int PRIMARY Key IDENTITY(1,1) NOT NULL,
City_Name nvarchar(100) NOT NULL,
Country nvarchar(100) NOT NULL
);

create table Wallets
(
Id int PRIMARY Key IDENTITY(1,1) NOT NULL,
EmailId nvarchar(100) NOT NULL,
Balance float NOT NULL DEFAULT(100)
);

create table Transactions
(
Id int PRIMARY Key IDENTITY(1,1) NOT NULL,
TransactionDate datetime NOT NULL DEFAULT(datetime(NOW)),
FromWallet nvarchar(100) NOT NULL, 
ToWallet nvarchar(100) NOT NULL,
TransactionType bit NOT NULL
);

create table Orders
(
Id int Primary Key Identity(1,1) NOT NULL,
OrderDate datetime NOT NULL DEFAULT(datetime(Now)),
OrderAmount float NOT NULL
);

create table Products
(
Id int Primary Key Identity(1,1) NOT NULL,
ProductName nvarchar(100) UNIQUE NOT NULL,
ProductCost float NOT NULL
AvalableQYT int NOT NULL DEFAULT(0)
);

create table OrderProduct
(
Id int PRIMARY Key IDENTITY(1,1) NOT NULL,
FK_OrderId int foreign Key REFERENCES Orders(Id),
FK_ProductId int foreign key REFERENCES Products(Id),
QTY int NOT NULL DEFAULT(1),
Amount float NOT NULL
);

create table tree
(
id int primary Key IDENTITY(1,1) NOT NULL,
userId nvarchar(100) NOT NULL,
TLeft nvarchar(100) NULL,
TRight nvarchar(100) NULL
);

create table PointLedge
(
id int Primary Key IDENTITY(1,1) NOT NULL,
EmailId nvarchar(255) NOT NULL,
PointsSoFar float NOT NULL
);

create table PointLogger
(
id int Primary Key IDENTITY(1,1) NOT NULL,
PointDate datetime Default(datetime(Now)) NOT NULL,
EmailId nvarchar(255) NOT NULL,
PointsToAdd float NOT NULL DEFAULT(1)
);

