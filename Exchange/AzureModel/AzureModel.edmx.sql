
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/22/2020 16:05:52
-- Generated from EDMX file: F:\Previous Projects\ASP.NET\trustbtc\Exchange\AzureModel\AzureModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [exdb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_user_buyer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[trans_history] DROP CONSTRAINT [FK_user_buyer];
GO
IF OBJECT_ID(N'[dbo].[FK_user_seller]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[trans_history] DROP CONSTRAINT [FK_user_seller];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[shufti_log]', 'U') IS NOT NULL
    DROP TABLE [dbo].[shufti_log];
GO
IF OBJECT_ID(N'[dbo].[trans_history]', 'U') IS NOT NULL
    DROP TABLE [dbo].[trans_history];
GO
IF OBJECT_ID(N'[dbo].[user_table]', 'U') IS NOT NULL
    DROP TABLE [dbo].[user_table];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'shufti_log'
CREATE TABLE [dbo].[shufti_log] (
    [id] int IDENTITY(1,1) NOT NULL,
    [time] datetime  NULL,
    [status] varchar(50)  NULL,
    [declined_reason] varchar(50)  NULL,
    [first_name] varchar(50)  NULL,
    [last_name] varchar(50)  NULL,
    [birthday] varchar(50)  NULL,
    [document_number] varchar(50)  NULL,
    [expiry_date] varchar(50)  NULL,
    [issue_date] varchar(50)  NULL
);
GO

-- Creating table 'trans_history'
CREATE TABLE [dbo].[trans_history] (
    [id] int IDENTITY(1,1) NOT NULL,
    [buyer] int  NULL,
    [seller] int  NULL,
    [btc] float  NULL,
    [cash] float  NULL,
    [holdBTC] bit  NULL,
    [sentBTC] bit  NULL,
    [sentCash] bit  NULL,
    [recieveCash] bit  NULL,
    [holdTransID] varchar(50)  NULL,
    [sentTransID] varchar(50)  NULL,
    [status] varchar(50)  NULL,
    [holdWallet] varchar(50)  NULL,
    [buyerWallet] varchar(50)  NULL,
    [firstname_seller] varchar(50)  NULL,
    [lastname_seller] varchar(50)  NULL,
    [IBAN] varchar(50)  NULL,
    [SWIFT] varchar(50)  NULL,
    [REFERENCE] varchar(50)  NULL,
    [sellTime] datetime  NULL,
    [buyTime] datetime  NULL,
    [holdAmount] float  NULL
);
GO

-- Creating table 'user_table'
CREATE TABLE [dbo].[user_table] (
    [id] int IDENTITY(1,1) NOT NULL,
    [firstname] nvarchar(50)  NULL,
    [lastname] nvarchar(50)  NULL,
    [username] nvarchar(50)  NULL,
    [email] nvarchar(50)  NULL,
    [password] nvarchar(50)  NULL,
    [emailVerified] bit  NULL,
    [emailCode] uniqueidentifier  NULL,
    [IBAN] nvarchar(50)  NULL,
    [SWIFT] nvarchar(50)  NULL,
    [country] nvarchar(50)  NULL,
    [city] nvarchar(50)  NULL,
    [signup] datetime  NULL,
    [listme] bit  NULL,
    [qrkey] nvarchar(50)  NULL,
    [phone] nvarchar(50)  NULL,
    [phoneVerified] bit  NULL,
    [kycVerified] bit  NULL,
    [birthday] nvarchar(50)  NULL,
    [beneficiery] nvarchar(50)  NULL,
    [bank] nvarchar(50)  NULL,
    [check_btc] bit  NULL,
    [check_eth] bit  NULL,
    [btc_cash] bit  NULL,
    [eth_cash] bit  NULL,
    [btc_cash_com] float  NULL,
    [eth_cash_com] float  NULL,
    [btc_wire] bit  NULL,
    [eth_wire] bit  NULL,
    [btc_wire_com] float  NULL,
    [eth_wire_com] float  NULL,
    [from_cash] float  NULL,
    [to_cash] float  NULL,
    [qrScanned] bit  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'shufti_log'
ALTER TABLE [dbo].[shufti_log]
ADD CONSTRAINT [PK_shufti_log]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'trans_history'
ALTER TABLE [dbo].[trans_history]
ADD CONSTRAINT [PK_trans_history]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'user_table'
ALTER TABLE [dbo].[user_table]
ADD CONSTRAINT [PK_user_table]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [buyer] in table 'trans_history'
ALTER TABLE [dbo].[trans_history]
ADD CONSTRAINT [FK_user_buyer]
    FOREIGN KEY ([buyer])
    REFERENCES [dbo].[user_table]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_user_buyer'
CREATE INDEX [IX_FK_user_buyer]
ON [dbo].[trans_history]
    ([buyer]);
GO

-- Creating foreign key on [seller] in table 'trans_history'
ALTER TABLE [dbo].[trans_history]
ADD CONSTRAINT [FK_user_seller]
    FOREIGN KEY ([seller])
    REFERENCES [dbo].[user_table]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_user_seller'
CREATE INDEX [IX_FK_user_seller]
ON [dbo].[trans_history]
    ([seller]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------