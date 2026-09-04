CREATE TABLE CATEGORIES
(
    CategoryID INT IDENTITY(1,1) NOT NULL,
    CategoryName NVARCHAR(100) NOT NULL,
    DistanceKM DECIMAL(6,2) NOT NULL,
    ActivityType NVARCHAR(30) NOT NULL,
    Description NVARCHAR(500) NOT NULL,

    CONSTRAINT PK_CATEGORIES PRIMARY KEY (CategoryID),
    CONSTRAINT UQ_CATEGORIES_Name_Distance
        UNIQUE (CategoryName, DistanceKM)
);
