create database vegitable;

create table vegitables(
Vegitable_ID int,
V_Name nvarchar(100),
Priceperkg decimal(10,2),
Discount decimal(5,2),
primary key(Vegitable_ID)
);

CREATE TABLE BulkPurchases (
PurchaseID INT PRIMARY KEY IDENTITY(1,1),
PurchaseDate varchar(100) NOT NULL,
TotalWeight DECIMAL(10, 2) NOT NULL,
TotalCost DECIMAL(10, 2) NOT NULL
);

CREATE TABLE BulkPurchaseDetails (
DetailID INT PRIMARY KEY IDENTITY(1,1),
PurchaseID INT FOREIGN KEY REFERENCES BulkPurchases(PurchaseID),
Vegitable_ID INT FOREIGN KEY REFERENCES vegitables(Vegitable_ID),
V_Name NVARCHAR(100) NOT NULL,
WholesalePricePerKg DECIMAL(10, 2) NOT NULL,
WeightPurchased DECIMAL(10, 2) NOT NULL,
TotalPrice DECIMAL(10, 2),
StockRemaining DECIMAL(10, 2) NOT NULL,
Sold DECIMAL(10, 2) NOT NULL
);

CREATE TABLE RetailSales (
SaleID INT PRIMARY KEY IDENTITY(1,1),
SaleDate DATETIME NOT NULL,
DetailID INT FOREIGN KEY REFERENCES BulkPurchaseDetails(DetailID),
Vegitable_ID INT FOREIGN KEY REFERENCES vegitables(Vegitable_ID),
V_Name nvarchar (100) NOT NULL,
WeightSold DECIMAL(10, 2) NOT NULL,
PricePerKg DECIMAL(10, 2) NOT NULL,
Discount DECIMAL(5, 2) NOT NULL,
ActualPrice DECIMAL(10, 2) NOT NULL,
TotalAmount DECIMAL(10, 2) NOT NULL,
User_N NVARCHAR (100) NOT NULL
);














