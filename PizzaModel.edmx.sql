
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/02/2023 10:46:30
-- Generated from EDMX file: C:\Users\s0301750\source\repos\Needyplz\Software-project\PizzaModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SessionTable_ToCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SessionTable] DROP CONSTRAINT [FK_SessionTable_ToCustomer];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer];
GO
IF OBJECT_ID(N'[dbo].[EmployersTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployersTable];
GO
IF OBJECT_ID(N'[dbo].[Order]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order];
GO
IF OBJECT_ID(N'[dbo].[SessionTable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SessionTable];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [CustomerID] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(50)  NULL,
    [SecondName] varchar(50)  NULL,
    [DOB] datetime  NULL
);
GO

-- Creating table 'EmployersTables'
CREATE TABLE [dbo].[EmployersTables] (
    [Id] int  NOT NULL,
    [Payment_method] varchar(50)  NULL,
    [Total] decimal(10,4)  NULL,
    [OrderID] int  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [OrderID] int IDENTITY(1,1) NOT NULL,
    [Price] varchar(50)  NULL,
    [Name] varchar(50)  NULL,
    [CollectionTime_] datetime  NULL
);
GO

-- Creating table 'SessionTables'
CREATE TABLE [dbo].[SessionTables] (
    [UsernameID] int IDENTITY(1,1) NOT NULL,
    [PasswordID] varchar(50)  NULL,
    [CustomerID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CustomerID] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([CustomerID] ASC);
GO

-- Creating primary key on [Id] in table 'EmployersTables'
ALTER TABLE [dbo].[EmployersTables]
ADD CONSTRAINT [PK_EmployersTables]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [OrderID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([OrderID] ASC);
GO

-- Creating primary key on [UsernameID] in table 'SessionTables'
ALTER TABLE [dbo].[SessionTables]
ADD CONSTRAINT [PK_SessionTables]
    PRIMARY KEY CLUSTERED ([UsernameID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerID] in table 'SessionTables'
ALTER TABLE [dbo].[SessionTables]
ADD CONSTRAINT [FK_SessionTable_ToCustomer]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customers]
        ([CustomerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SessionTable_ToCustomer'
CREATE INDEX [IX_FK_SessionTable_ToCustomer]
ON [dbo].[SessionTables]
    ([CustomerID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------