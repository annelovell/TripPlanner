CREATE TABLE UserTable (
[Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
[UserName] NVARCHAR(50),
[Address] NVARCHAR(75) NOT NULL, 
[PhoneNumber] INT NOT NULL,
[DateOfBirth] DATE,
);
GO

CREATE TABLE Passport (
[PassportNumber] INT NOT NULL PRIMARY KEY,
[ExpirationDate] DATE,
[PassportAddress] NVARCHAR(75),
[UserId] INT NOT NULL FOREIGN KEY REFERENCES UserTable(Id)
);
GO

CREATE TABLE Trip (
[Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
[TripName] NVARCHAR(50),
[Budget] Float NOT NULL,
[StartingDestination] NVARCHAR(30) NOT NULL,
[EndingDestination] NVARCHAR(30) NOT NULL,
[TravelMode] NVARCHAR(30) NOT NULL,
[StartDate] DATE,
[EndDate] DATE,
);
GO
CREATE TABLE Hotel (
[Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
[HotelName] NVARCHAR(50) NOT NULL,
[Address] NVARCHAR(75) NOT NULL, 
[PhoneNumber] INT NOT NULL,
[CheckInDate] DATE,
[CheckOutDate] DATE,
[CostPerNight] FLOAT NOT NULL
);
GO


CREATE TABLE Trip_Hotel(
[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
[HotelId] INT NOT NULL FOREIGN KEY REFERENCES Hotel(Id),
[TripId] INT NOT NULL FOREIGN KEY REFERENCES Trip(Id)
);
